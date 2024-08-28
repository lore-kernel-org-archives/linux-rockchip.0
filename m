Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 584F9C54E71
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Aug 2024 10:19:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8t4EW2MPJ5Km9ol1qYqU0M15f2yvDozZvCv9PLGbLko=; b=nOAAyolWT6BpjV
	+cOVPxjip42MUaVWhuma/myxINF7sqoUCwnTHaqGRkbXXqXfNnsgGCy6cg94aaL5rg+1ItWGUu2on
	1uka4OuZgrk2T6JEhfx4A2AgFxpAzFFOplms+ip4SAVjt/hGig7YwB0Yiqd7NmT1oNbeYaYWU1QMt
	J8/rVWhHTv/f9hta56Kj0e1w8uSyLqfsdb+IcMr3TAmLVs1T9DwDIU/aD4PFfmtYHky1EX/VpHfA7
	5YQz6ZyCuxdTeuEUeo3DCwq8n10vxrcLcbQ542qkptJg4XvI1re8aPb85n/XTNv6wRCWACeKtqTjf
	3tOsAjEenzjrTnvl9f1Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sjFmK-0000000Eu9y-00uF;
	Wed, 28 Aug 2024 10:19:52 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sjFhy-0000000EsSL-2ciM;
	Wed, 28 Aug 2024 10:15:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:MIME-Version:References:
	In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=2vEIhifhCgUZJb7JLEMEs6FgsfJuYynN2BlO+zQ+JIg=; b=DXz8PeaaBwK3stcuG4xOq3+jEa
	t0pc4wEGkwsDwLAKzV7lSJllRe57nMtdiCu8loAHut3ETib8zEGPT1VmUWmKSfuh06Es7v/cJIyJp
	aolH63EZ8Zx2GpGoYoZrYSkzExaejScFlPgJ2FN1/f0jDQU/RIfMHFXob36O9yz+n++b5hJZtDb0x
	7wkpNlhiOAtSl2/3ZX1psHo9ou3cDlE4Be2q+5fpLb8i+hmxreufSrIs+iw8tNhO0QmS2ihSbOggv
	mnrXFDBHneFsq4xHenDLZGLg7IxZ2/lDnW/eD0Piy5DMsx1lbfVvVzWenqdE7UKtwdCZGHrWd3/bK
	TKAusGmw==;
Received: from i5e8616cd.versanet.de ([94.134.22.205] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1sjFht-0004M3-OU; Wed, 28 Aug 2024 12:15:17 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: mturquette@baylibre.com,
	sboyd@kernel.org
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	linux-clk@vger.kernel.org,
	heiko@sntech.de,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: [PATCH v3 4/5] clk: clk-gpio: add driver for gated-fixed-clocks
Date: Wed, 28 Aug 2024 12:15:02 +0200
Message-ID: <20240828101503.1478491-5-heiko@sntech.de>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240828101503.1478491-1-heiko@sntech.de>
References: <20240828101503.1478491-1-heiko@sntech.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240828_031522_826689_047B5C3F 
X-CRM114-Status: GOOD (  23.03  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

In contrast to fixed clocks that are described as ungateable, boards
sometimes use additional oscillators for things like PCIe reference
clocks, that need actual supplies to get enabled and enable-gpios to be
toggled for them to work.

This adds a driver for those generic gated-fixed-clocks
that can show up in schematics looking like

         ----------------
Enable - | 100MHz,3.3V, | - VDD
         |    3225      |
   GND - |              | - OUT
         ----------------

The new driver gets grouped together with the existing gpio-gate and
gpio-mux, as it for one re-uses a lot of the gpio-gate functions
and also in it's core it's just another gpio-controlled clock, just
with a fixed rate and a regulator-supply added in.

The regulator-API provides function stubs for the !CONFIG_REGULATOR case,
so no special handling is necessary.

Signed-off-by: Heiko Stuebner <heiko@sntech.de>
---
 drivers/clk/clk-gpio.c | 182 +++++++++++++++++++++++++++++++++++++++++
 1 file changed, 182 insertions(+)

diff --git a/drivers/clk/clk-gpio.c b/drivers/clk/clk-gpio.c
index cda362a2eca0..8bcdef340b4c 100644
--- a/drivers/clk/clk-gpio.c
+++ b/drivers/clk/clk-gpio.c
@@ -17,6 +17,7 @@
 #include <linux/device.h>
 #include <linux/of.h>
 #include <linux/platform_device.h>
+#include <linux/regulator/consumer.h>
 
 /**
  * DOC: basic gpio gated clock which can be enabled and disabled
@@ -239,3 +240,184 @@ static struct platform_driver gpio_clk_driver = {
 	},
 };
 builtin_platform_driver(gpio_clk_driver);
+
+/**
+ * DOC: gated fixed clock, controlled with a gpio output and a regulator
+ * Traits of this clock:
+ * prepare - clk_prepare and clk_unprepare are function & control regulator
+ *           optionally a gpio that can sleep
+ * enable - clk_enable and clk_disable are functional & control gpio
+ * rate - rate is fixed and set on clock generation
+ * parent - fixed clock is a root clock and has no parent.
+ */
+
+/**
+ * struct clk_gate_fixed - gated-fixed-clock
+ *
+ * clk_gpio:	instance of clk_gpio for gate-gpio
+ * supply:	supply regulator
+ * rate:	fixed rate
+ */
+struct clk_gated_fixed {
+	struct clk_gpio clk_gpio;
+	struct regulator *supply;
+	u32 rate;
+};
+
+#define to_clk_gated_fixed(_clk_gpio) container_of(_clk_gpio, struct clk_gated_fixed, clk_gpio)
+
+static unsigned long clk_gated_fixed_recalc_rate(struct clk_hw *hw,
+						 unsigned long parent_rate)
+{
+	return to_clk_gated_fixed(to_clk_gpio(hw))->rate;
+}
+
+static int clk_gated_fixed_prepare(struct clk_hw *hw)
+{
+	struct clk_gated_fixed *clk = to_clk_gated_fixed(to_clk_gpio(hw));
+
+	if (!clk->supply)
+		return 0;
+
+	return regulator_enable(clk->supply);
+}
+
+static void clk_gated_fixed_unprepare(struct clk_hw *hw)
+{
+	struct clk_gated_fixed *clk = to_clk_gated_fixed(to_clk_gpio(hw));
+
+	if (!clk->supply)
+		return;
+
+	regulator_disable(clk->supply);
+}
+
+static int clk_gated_fixed_is_prepared(struct clk_hw *hw)
+{
+	struct clk_gated_fixed *clk = to_clk_gated_fixed(to_clk_gpio(hw));
+
+	if (!clk->supply)
+		return true;
+
+	return regulator_is_enabled(clk->supply);
+}
+
+/*
+ * Fixed gated clock with non-sleeping gpio.
+ *
+ * Prepare operation turns on the supply regulator
+ * and the enable operation switches the enable-gpio.
+ */
+const struct clk_ops clk_gated_fixed_ops = {
+	.prepare = clk_gated_fixed_prepare,
+	.unprepare = clk_gated_fixed_unprepare,
+	.is_prepared = clk_gated_fixed_is_prepared,
+	.enable = clk_gpio_gate_enable,
+	.disable = clk_gpio_gate_disable,
+	.is_enabled = clk_gpio_gate_is_enabled,
+	.recalc_rate = clk_gated_fixed_recalc_rate,
+};
+
+static int clk_sleeping_gated_fixed_prepare(struct clk_hw *hw)
+{
+	int ret;
+
+	ret = clk_gated_fixed_prepare(hw);
+	if (ret)
+		return ret;
+
+	ret = clk_sleeping_gpio_gate_prepare(hw);
+	if (ret)
+		clk_gated_fixed_unprepare(hw);
+
+	return ret;
+}
+
+static void clk_sleeping_gated_fixed_unprepare(struct clk_hw *hw)
+{
+	clk_gated_fixed_unprepare(hw);
+	clk_sleeping_gpio_gate_unprepare(hw);
+}
+
+/*
+ * Fixed gated clock with non-sleeping gpio.
+ *
+ * Enabling the supply regulator and switching the enable-gpio happens
+ * both in the prepare step.
+ * is_prepared only needs to check the gpio state, as toggling the
+ * gpio is the last step when preparing.
+ */
+const struct clk_ops clk_sleeping_gated_fixed_ops = {
+	.prepare = clk_sleeping_gated_fixed_prepare,
+	.unprepare = clk_sleeping_gated_fixed_unprepare,
+	.is_prepared = clk_sleeping_gpio_gate_is_prepared,
+	.recalc_rate = clk_gated_fixed_recalc_rate,
+};
+
+static int clk_gated_fixed_probe(struct platform_device *pdev)
+{
+	struct device *dev = &pdev->dev;
+	struct clk_gated_fixed *clk;
+	const struct clk_ops *ops;
+	const char *clk_name;
+	int ret;
+
+	clk = devm_kzalloc(dev, sizeof(*clk), GFP_KERNEL);
+	if (!clk)
+		return -ENOMEM;
+
+	if (device_property_read_u32(dev, "clock-frequency", &clk->rate))
+		return dev_err_probe(dev, -EIO, "failed to get clock-frequency");
+
+	ret = device_property_read_string(dev, "clock-output-names", &clk_name);
+	if (ret)
+		clk_name = fwnode_get_name(dev->fwnode);
+
+	clk->supply = devm_regulator_get_optional(dev, "vdd");
+	if (IS_ERR(clk->supply)) {
+		if (PTR_ERR(clk->supply) != -ENODEV)
+			return dev_err_probe(dev, PTR_ERR(clk->supply),
+					     "failed to get regulator\n");
+		clk->supply = NULL;
+	}
+
+	clk->clk_gpio.gpiod = devm_gpiod_get_optional(dev, "enable",
+						      GPIOD_OUT_LOW);
+	if (IS_ERR(clk->clk_gpio.gpiod))
+		return dev_err_probe(dev, PTR_ERR(clk->clk_gpio.gpiod),
+				     "failed to get gpio\n");
+
+	if (gpiod_cansleep(clk->clk_gpio.gpiod))
+		ops = &clk_sleeping_gated_fixed_ops;
+	else
+		ops = &clk_gated_fixed_ops;
+
+	clk->clk_gpio.hw.init = CLK_HW_INIT_NO_PARENT(clk_name, ops, 0);
+
+	/* register the clock */
+	ret = devm_clk_hw_register(dev, &clk->clk_gpio.hw);
+	if (ret)
+		return dev_err_probe(dev, ret,
+				     "failed to register clock\n");
+
+	ret = devm_of_clk_add_hw_provider(dev, of_clk_hw_simple_get,
+					  &clk->clk_gpio.hw);
+	if (ret)
+		return dev_err_probe(dev, ret,
+				     "failed to register clock provider\n");
+
+	return 0;
+}
+
+static const struct of_device_id gated_fixed_clk_match_table[] = {
+	{ .compatible = "gated-fixed-clock" },
+};
+
+static struct platform_driver gated_fixed_clk_driver = {
+	.probe		= clk_gated_fixed_probe,
+	.driver		= {
+		.name	= "gated-fixed-clk",
+		.of_match_table = gated_fixed_clk_match_table,
+	},
+};
+builtin_platform_driver(gated_fixed_clk_driver);
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
