From: Heiko Stuebner <heiko@sntech.de>
Subject: [PATCH 8/8] phy: rockchip-usb: add handler for usb-uart functionality
Date: Wed,  4 Nov 2015 22:44:14 +0100
Message-ID: <1446673454-9529-9-git-send-email-heiko@sntech.de>
References: <1446673454-9529-1-git-send-email-heiko@sntech.de>
Mime-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <1446673454-9529-1-git-send-email-heiko@sntech.de>
Sender: linux-kernel-owner@vger.kernel.org
To: kishon@ti.com, mturquette@baylibre.com, sboyd@codeaurora.org
Cc: linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, dianders@chromium.org, romain.perier@gmail.com, arnd@arndb.de, Heiko Stuebner <heiko@sntech.de>
List-Id: linux-rockchip.vger.kernel.org

Most newer Rockchip SoCs provide the possibility to use a usb-phy
as passthrough for the debug uart (uart2), making it possible to
for example get console output without needing to open the device.

This patch adds an early_initcall to enable this functionality
conditionally via the commandline and also disables the corresponding
usb controller in the devicetree.

Currently only data for the rk3288 is provided, but at least the
rk3188 and arm64 rk3368 also provide this functionality and will be
enabled later.

On a spliced usb cable the signals are tx on white wire(D+) and
rx on green wire(D-).

The one caveat is that currently the reconfiguration of the phy
happens as early_initcall, as the code depends on the unflattened
devicetree being available. Everything is fine if only a regular
console is active as the console-replay will happen after the
reconfiguation. But with earlycon active output up to smp-init
currently will get lost.

The phy is an optional property for the connected dwc2 controller,
so we still provide the phy device but fail all phy-ops with -EBUSY
to make sure the dwc2 does not try to transmit anything on the
repurposed phy.

Signed-off-by: Heiko Stuebner <heiko@sntech.de>
---
 Documentation/kernel-parameters.txt |   6 +
 drivers/phy/phy-rockchip-usb.c      | 231 ++++++++++++++++++++++++++++=
++------
 2 files changed, 201 insertions(+), 36 deletions(-)

diff --git a/Documentation/kernel-parameters.txt b/Documentation/kernel=
-parameters.txt
index c6dd5f3..8d9a86e 100644
--- a/Documentation/kernel-parameters.txt
+++ b/Documentation/kernel-parameters.txt
@@ -3370,6 +3370,12 @@ bytes respectively. Such letter suffixes can als=
o be entirely omitted.
=20
 	ro		[KNL] Mount root device read-only on boot
=20
+	rockchip.usb_uart
+			Enable the uart passthrough on the designated usb port
+			on Rockchip SoCs. When active, the signals of the
+			debug-uart get routed to the D+ and D- pins of the usb
+			port and the regular usb controller gets disabled.
+
 	root=3D		[KNL] Root filesystem
 			See name_to_dev_t comment in init/do_mounts.c.
=20
diff --git a/drivers/phy/phy-rockchip-usb.c b/drivers/phy/phy-rockchip-=
usb.c
index 509497b..4c2f5ee 100644
--- a/drivers/phy/phy-rockchip-usb.c
+++ b/drivers/phy/phy-rockchip-usb.c
@@ -30,21 +30,23 @@
 #include <linux/regmap.h>
 #include <linux/mfd/syscon.h>
=20
-/*
- * The higher 16-bit of this register is used for write protection
- * only if BIT(13 + 16) set to 1 the BIT(13) can be written.
- */
-#define SIDDQ_WRITE_ENA	BIT(29)
-#define SIDDQ_ON		BIT(13)
-#define SIDDQ_OFF		(0 << 13)
+static int enable_usb_uart;
+
+#define HIWORD_UPDATE(val, mask) \
+		((val) | (mask) << 16)
+
+#define UOC_CON0_SIDDQ BIT(13)
=20
 struct rockchip_usb_phys {
 	int reg;
 	const char *pll_name;
 };
=20
+struct rockchip_usb_phy_base;
 struct rockchip_usb_phy_pdata {
 	struct rockchip_usb_phys *phys;
+	int (*init_usb_uart)(struct regmap *grf);
+	int usb_uart_phy;
 };
=20
 struct rockchip_usb_phy_base {
@@ -61,6 +63,7 @@ struct rockchip_usb_phy {
 	struct clk      *clk480m;
 	struct clk_hw	clk480m_hw;
 	struct phy	*phy;
+	bool		uart_enabled;
 };
=20
 /*
@@ -70,8 +73,9 @@ struct rockchip_usb_phy {
 static int rockchip_usb_phy_power(struct rockchip_usb_phy *phy,
 					   bool siddq)
 {
-	return regmap_write(phy->base->reg_base, phy->reg_offset,
-			    SIDDQ_WRITE_ENA | (siddq ? SIDDQ_ON : SIDDQ_OFF));
+	u32 val =3D HIWORD_UPDATE(siddq ? UOC_CON0_SIDDQ : 0, UOC_CON0_SIDDQ)=
;
+
+	return regmap_write(phy->base->reg_base, phy->reg_offset, val);
 }
=20
 static unsigned long rockchip_usb_phy480m_recalc_rate(struct clk_hw *h=
w,
@@ -110,7 +114,7 @@ static int rockchip_usb_phy480m_is_enabled(struct c=
lk_hw *hw)
 	if (ret < 0)
 		return ret;
=20
-	return (val & SIDDQ_ON) ? 0 : 1;
+	return (val & UOC_CON0_SIDDQ) ? 0 : 1;
 }
=20
 static const struct clk_ops rockchip_usb_phy480m_ops =3D {
@@ -124,6 +128,9 @@ static int rockchip_usb_phy_power_off(struct phy *_=
phy)
 {
 	struct rockchip_usb_phy *phy =3D phy_get_drvdata(_phy);
=20
+	if (phy->uart_enabled)
+		return -EBUSY;
+
 	clk_disable_unprepare(phy->clk480m);
=20
 	return 0;
@@ -133,6 +140,9 @@ static int rockchip_usb_phy_power_on(struct phy *_p=
hy)
 {
 	struct rockchip_usb_phy *phy =3D phy_get_drvdata(_phy);
=20
+	if (phy->uart_enabled)
+		return -EBUSY;
+
 	return clk_prepare_enable(phy->clk480m);
 }
=20
@@ -146,8 +156,10 @@ static void rockchip_usb_phy_action(void *data)
 {
 	struct rockchip_usb_phy *rk_phy =3D data;
=20
-	of_clk_del_provider(rk_phy->np);
-	clk_unregister(rk_phy->clk480m);
+	if (!rk_phy->uart_enabled) {
+		of_clk_del_provider(rk_phy->np);
+		clk_unregister(rk_phy->clk480m);
+	}
=20
 	if (rk_phy->clk)
 		clk_put(rk_phy->clk);
@@ -196,30 +208,35 @@ static int rockchip_usb_phy_init(struct rockchip_=
usb_phy_base *base,
 		return -EINVAL;
 	}
=20
-	if (rk_phy->clk) {
-		clk_name =3D __clk_get_name(rk_phy->clk);
-		init.flags =3D 0;
-		init.parent_names =3D &clk_name;
-		init.num_parents =3D 1;
+	if (enable_usb_uart && base->pdata->usb_uart_phy =3D=3D i) {
+		dev_dbg(base->dev, "phy%d used as uart output\n", i);
+		rk_phy->uart_enabled =3D true;
 	} else {
-		init.flags =3D CLK_IS_ROOT;
-		init.parent_names =3D NULL;
-		init.num_parents =3D 0;
-	}
+		if (rk_phy->clk) {
+			clk_name =3D __clk_get_name(rk_phy->clk);
+			init.flags =3D 0;
+			init.parent_names =3D &clk_name;
+			init.num_parents =3D 1;
+		} else {
+			init.flags =3D CLK_IS_ROOT;
+			init.parent_names =3D NULL;
+			init.num_parents =3D 0;
+		}
=20
-	init.ops =3D &rockchip_usb_phy480m_ops;
-	rk_phy->clk480m_hw.init =3D &init;
+		init.ops =3D &rockchip_usb_phy480m_ops;
+		rk_phy->clk480m_hw.init =3D &init;
=20
-	rk_phy->clk480m =3D clk_register(base->dev, &rk_phy->clk480m_hw);
-	if (IS_ERR(rk_phy->clk480m)) {
-		err =3D PTR_ERR(rk_phy->clk480m);
-		goto err_clk;
-	}
+		rk_phy->clk480m =3D clk_register(base->dev, &rk_phy->clk480m_hw);
+		if (IS_ERR(rk_phy->clk480m)) {
+			err =3D PTR_ERR(rk_phy->clk480m);
+			goto err_clk;
+		}
=20
-	err =3D of_clk_add_provider(child, of_clk_src_simple_get,
-				  rk_phy->clk480m);
-	if (err < 0)
-		goto err_clk_prov;
+		err =3D of_clk_add_provider(child, of_clk_src_simple_get,
+					rk_phy->clk480m);
+		if (err < 0)
+			goto err_clk_prov;
+	}
=20
 	err =3D devm_add_action(base->dev, rockchip_usb_phy_action, rk_phy);
 	if (err)
@@ -232,13 +249,21 @@ static int rockchip_usb_phy_init(struct rockchip_=
usb_phy_base *base,
 	}
 	phy_set_drvdata(rk_phy->phy, rk_phy);
=20
-	/* only power up usb phy when it use, so disable it when init*/
-	return rockchip_usb_phy_power(rk_phy, 1);
+	/*
+	 * When acting as uart-pipe, just keep clock on otherwise
+	 * only power up usb phy when it use, so disable it when init
+	 */
+	if (rk_phy->uart_enabled)
+		return clk_prepare_enable(rk_phy->clk);
+	else
+		return rockchip_usb_phy_power(rk_phy, 1);
=20
 err_devm_action:
-	of_clk_del_provider(child);
+	if (!rk_phy->uart_enabled)
+		of_clk_del_provider(child);
 err_clk_prov:
-	clk_unregister(rk_phy->clk480m);
+	if (!rk_phy->uart_enabled)
+		clk_unregister(rk_phy->clk480m);
 err_clk:
 	if (rk_phy->clk)
 		clk_put(rk_phy->clk);
@@ -261,6 +286,86 @@ static const struct rockchip_usb_phy_pdata rk3188_=
pdata =3D {
 	},
 };
=20
+#define RK3288_UOC0_CON0				0x320
+#define RK3288_UOC0_CON0_COMMON_ON_N			BIT(0)
+#define RK3288_UOC0_CON0_DISABLE			BIT(4)
+
+#define RK3288_UOC0_CON2				0x328
+#define RK3288_UOC0_CON2_SOFT_CON_SEL			BIT(2)
+
+#define RK3288_UOC0_CON3				0x32c
+#define RK3288_UOC0_CON3_UTMI_SUSPENDN			BIT(0)
+#define RK3288_UOC0_CON3_UTMI_OPMODE_NODRIVING		(1 << 1)
+#define RK3288_UOC0_CON3_UTMI_OPMODE_MASK		(3 << 1)
+#define RK3288_UOC0_CON3_UTMI_XCVRSEELCT_FSTRANSC	(1 << 3)
+#define RK3288_UOC0_CON3_UTMI_XCVRSEELCT_MASK		(3 << 3)
+#define RK3288_UOC0_CON3_UTMI_TERMSEL_FULLSPEED		BIT(5)
+#define RK3288_UOC0_CON3_BYPASSDMEN			BIT(6)
+#define RK3288_UOC0_CON3_BYPASSSEL			BIT(7)
+
+/*
+ * Enable the bypass of uart2 data through the otg usb phy.
+ * Original description in the TRM.
+ * 1. Disable the OTG block by setting OTGDISABLE0 to 1=E2=80=99b1.
+ * 2. Disable the pull-up resistance on the D+ line by setting
+ *    OPMODE0[1:0] to 2=E2=80=99b01.
+ * 3. To ensure that the XO, Bias, and PLL blocks are powered down in =
Suspend
+ *    mode, set COMMONONN to 1=E2=80=99b1.
+ * 4. Place the USB PHY in Suspend mode by setting SUSPENDM0 to 1=E2=80=
=99b0.
+ * 5. Set BYPASSSEL0 to 1=E2=80=99b1.
+ * 6. To transmit data, controls BYPASSDMEN0, and BYPASSDMDATA0.
+ * To receive data, monitor FSVPLUS0.
+ *
+ * The actual code in the vendor kernel does some things differently.
+ */
+static int __init rk3288_init_usb_uart(struct regmap *grf)
+{
+	u32 val;
+	int ret;
+
+	/*
+	 * COMMON_ON and DISABLE settings are described in the TRM,
+	 * but were not present in the original code.
+	 * Also disable the analog phy components to save power.
+	 */
+	val =3D HIWORD_UPDATE(RK3288_UOC0_CON0_COMMON_ON_N
+				| RK3288_UOC0_CON0_DISABLE
+				| UOC_CON0_SIDDQ,
+			    RK3288_UOC0_CON0_COMMON_ON_N
+				| RK3288_UOC0_CON0_DISABLE
+				| UOC_CON0_SIDDQ);
+	ret =3D regmap_write(grf, RK3288_UOC0_CON0, val);
+	if (ret)
+		return ret;
+
+	val =3D HIWORD_UPDATE(RK3288_UOC0_CON2_SOFT_CON_SEL,
+			    RK3288_UOC0_CON2_SOFT_CON_SEL);
+	ret =3D regmap_write(grf, RK3288_UOC0_CON2, val);
+	if (ret)
+		return ret;
+
+	val =3D HIWORD_UPDATE(RK3288_UOC0_CON3_UTMI_OPMODE_NODRIVING
+				| RK3288_UOC0_CON3_UTMI_XCVRSEELCT_FSTRANSC
+				| RK3288_UOC0_CON3_UTMI_TERMSEL_FULLSPEED,
+			    RK3288_UOC0_CON3_UTMI_SUSPENDN
+				| RK3288_UOC0_CON3_UTMI_OPMODE_MASK
+				| RK3288_UOC0_CON3_UTMI_XCVRSEELCT_MASK
+				| RK3288_UOC0_CON3_UTMI_TERMSEL_FULLSPEED);
+	ret =3D regmap_write(grf, RK3288_UOC0_CON3, val);
+	if (ret)
+		return ret;
+
+	val =3D HIWORD_UPDATE(RK3288_UOC0_CON3_BYPASSSEL
+				| RK3288_UOC0_CON3_BYPASSDMEN,
+			    RK3288_UOC0_CON3_BYPASSSEL
+				| RK3288_UOC0_CON3_BYPASSDMEN);
+	ret =3D regmap_write(grf, RK3288_UOC0_CON3, val);
+	if (ret)
+		return ret;
+
+	return 0;
+}
+
 static const struct rockchip_usb_phy_pdata rk3288_pdata =3D {
 	.phys =3D (struct rockchip_usb_phys[]){
 		{ .reg =3D 0x320, .pll_name =3D "sclk_otgphy0_480m" },
@@ -268,6 +373,8 @@ static const struct rockchip_usb_phy_pdata rk3288_p=
data =3D {
 		{ .reg =3D 0x348, .pll_name =3D "sclk_otgphy2_480m" },
 		{ /* sentinel */ }
 	},
+	.init_usb_uart =3D rk3288_init_usb_uart,
+	.usb_uart_phy =3D 0,
 };
=20
 static int rockchip_usb_phy_probe(struct platform_device *pdev)
@@ -328,6 +435,58 @@ static struct platform_driver rockchip_usb_driver =
=3D {
=20
 module_platform_driver(rockchip_usb_driver);
=20
+static int __init rockchip_init_usb_uart(void)
+{
+	const struct of_device_id *match;
+	const struct rockchip_usb_phy_pdata *data;
+	struct device_node *np;
+	struct regmap *grf;
+	int ret;
+
+	if (!enable_usb_uart)
+		return 0;
+
+	np =3D of_find_matching_node_and_match(NULL, rockchip_usb_phy_dt_ids,
+					     &match);
+	if (!np) {
+		pr_err("%s: failed to find usbphy node\n", __func__);
+		return -ENOTSUPP;
+	}
+
+	pr_debug("%s: using settings for %s\n", __func__, match->compatible);
+	data =3D match->data;
+
+	if (!data->init_usb_uart) {
+		pr_err("%s: usb-uart not available on %s\n",
+		       __func__, match->compatible);
+		return -ENOTSUPP;
+	}
+
+	grf =3D syscon_regmap_lookup_by_phandle(np, "rockchip,grf");
+	if (IS_ERR(grf)) {
+		pr_err("%s: Missing rockchip,grf property, %lu\n",
+		       __func__, PTR_ERR(grf));
+		return PTR_ERR(grf);
+	}
+
+	ret =3D data->init_usb_uart(grf);
+	if (ret) {
+		pr_err("%s: could not init usb_uart, %d\n", __func__, ret);
+		enable_usb_uart =3D 0;
+		return ret;
+	}
+
+	return 0;
+}
+early_initcall(rockchip_init_usb_uart);
+
+static int __init rockchip_usb_uart(char *buf)
+{
+	enable_usb_uart =3D true;
+	return 0;
+}
+early_param("rockchip.usb_uart", rockchip_usb_uart);
+
 MODULE_AUTHOR("Yunzhi Li <lyz@rock-chips.com>");
 MODULE_DESCRIPTION("Rockchip USB 2.0 PHY driver");
 MODULE_LICENSE("GPL v2");
--=20
2.6.2
