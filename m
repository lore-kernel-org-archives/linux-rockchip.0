From: William Wu <william.wu@rock-chips.com>
Subject: [PATCH v3 3/5] usb: dwc3: add phyif_utmi_quirk
Date: Fri, 27 May 2016 19:28:06 +0800
Message-ID: <1464348488-20760-4-git-send-email-william.wu@rock-chips.com>
References: <1464348488-20760-1-git-send-email-william.wu@rock-chips.com>
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <1464348488-20760-1-git-send-email-william.wu@rock-chips.com>
Sender: linux-kernel-owner@vger.kernel.org
To: gregkh@linuxfoundation.org, balbi@kernel.org, heiko@sntech.de
Cc: linux-rockchip@lists.infradead.org, briannorris@google.com, dianders@google.com, kever.yang@rock-chips.com, huangtao@rock-chips.com, frank.wang@rock-chips.com, eddie.cai@rock-chips.com, John.Youn@synopsys.com, linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org, William Wu <william.wu@rock-chips.com>
List-Id: linux-rockchip.vger.kernel.org

Add a quirk to configure the core to support the
UTMI+ PHY with an 8- or 16-bit interface. UTMI+ PHY
interface is hardware property, and it's platform
dependent. Normall, the PHYIf can be configured
during coreconsultant. But for some specific usb
cores(e.g. rk3399 soc dwc3), the default PHYIf
configuration value is fault, so we need to
reconfigure it by software.

And refer to the dwc3 databook, the GUSB2PHYCFG.USBTRDTIM
must be set to the corresponding value according to
the UTMI+ PHY interface.

Signed-off-by: William Wu <william.wu@rock-chips.com>
---
Changes in v3:
- None

Changes in v2:
- add a quirk for phyif_utmi (Felipe)

 Documentation/devicetree/bindings/usb/dwc3.txt |  4 ++++
 drivers/usb/dwc3/core.c                        | 23 +++++++++++++++++++++++
 drivers/usb/dwc3/core.h                        | 12 ++++++++++++
 drivers/usb/dwc3/platform_data.h               |  2 ++
 4 files changed, 41 insertions(+)

diff --git a/Documentation/devicetree/bindings/usb/dwc3.txt b/Documentation/devicetree/bindings/usb/dwc3.txt
index 1ada121..34d13a5 100644
--- a/Documentation/devicetree/bindings/usb/dwc3.txt
+++ b/Documentation/devicetree/bindings/usb/dwc3.txt
@@ -42,6 +42,10 @@ Optional properties:
  - snps,dis_u2_freeclk_exists_quirk: when set, clear the u2_freeclk_exists
 			in GUSB2PHYCFG, specify that USB2 PHY doesn't provide
 			a free-running PHY clock.
+ - snps,phyif_utmi_quirk: when set core will set phyif UTMI+ interface.
+ - snps,phyif_utmi: the value to configure the core to support a UTMI+ PHY
+			with an 8- or 16-bit interface. Value 0 select 8-bit
+			interface, value 1 select 16-bit interface.
  - snps,is-utmi-l1-suspend: true when DWC3 asserts output signal
 			utmi_l1_suspend_n, false when asserts utmi_sleep_n
  - snps,hird-threshold: HIRD threshold
diff --git a/drivers/usb/dwc3/core.c b/drivers/usb/dwc3/core.c
index 8bcd3cc..d99c170 100644
--- a/drivers/usb/dwc3/core.c
+++ b/drivers/usb/dwc3/core.c
@@ -410,6 +410,7 @@ static void dwc3_cache_hwparams(struct dwc3 *dwc)
 static int dwc3_phy_setup(struct dwc3 *dwc)
 {
 	u32 reg;
+	u32 usbtrdtim;
 	int ret;
 
 	reg = dwc3_readl(dwc->regs, DWC3_GUSB3PIPECTL(0));
@@ -505,6 +506,15 @@ static int dwc3_phy_setup(struct dwc3 *dwc)
 	if (dwc->dis_u2_freeclk_exists_quirk)
 		reg &= ~DWC3_GUSB2PHYCFG_U2_FREECLK_EXISTS;
 
+	if (dwc->phyif_utmi_quirk) {
+		reg &= ~(DWC3_GUSB2PHYCFG_PHYIF_MASK |
+		       DWC3_GUSB2PHYCFG_USBTRDTIM_MASK);
+		usbtrdtim = dwc->phyif_utmi ? USBTRDTIM_UTMI_16_BIT :
+			    USBTRDTIM_UTMI_8_BIT;
+		reg |= DWC3_GUSB2PHYCFG_PHYIF(dwc->phyif_utmi) |
+		       DWC3_GUSB2PHYCFG_USBTRDTIM(usbtrdtim);
+	}
+
 	dwc3_writel(dwc->regs, DWC3_GUSB2PHYCFG(0), reg);
 
 	return 0;
@@ -800,6 +810,7 @@ static int dwc3_probe(struct platform_device *pdev)
 	struct resource		*res;
 	struct dwc3		*dwc;
 	u8			lpm_nyet_threshold;
+	u8			phyif_utmi;
 	u8			tx_de_emphasis;
 	u8			hird_threshold;
 	u32			fladj = 0;
@@ -857,6 +868,9 @@ static int dwc3_probe(struct platform_device *pdev)
 	/* default to highest possible threshold */
 	lpm_nyet_threshold = 0xff;
 
+	/* default to UTMI+ 8-bit interface */
+	phyif_utmi = 0;
+
 	/* default to -3.5dB de-emphasis */
 	tx_de_emphasis = 1;
 
@@ -907,6 +921,10 @@ static int dwc3_probe(struct platform_device *pdev)
 	dwc->dis_u2_freeclk_exists_quirk = device_property_read_bool(dev,
 				"snps,dis_u2_freeclk_exists_quirk");
 
+	dwc->phyif_utmi_quirk = device_property_read_bool(dev,
+				"snps,phyif_utmi_quirk");
+	device_property_read_u8(dev, "snps,phyif_utmi",
+				&phyif_utmi);
 	dwc->tx_de_emphasis_quirk = device_property_read_bool(dev,
 				"snps,tx_de_emphasis_quirk");
 	device_property_read_u8(dev, "snps,tx_de_emphasis",
@@ -943,6 +961,10 @@ static int dwc3_probe(struct platform_device *pdev)
 		dwc->dis_u2_freeclk_exists_quirk =
 					pdata->dis_u2_freeclk_exists_quirk;
 
+		dwc->phyif_utmi_quirk = pdata->phyif_utmi_quirk;
+		if (pdata->phyif_utmi)
+			phyif_utmi = pdata->phyif_utmi;
+
 		dwc->tx_de_emphasis_quirk = pdata->tx_de_emphasis_quirk;
 		if (pdata->tx_de_emphasis)
 			tx_de_emphasis = pdata->tx_de_emphasis;
@@ -952,6 +974,7 @@ static int dwc3_probe(struct platform_device *pdev)
 	}
 
 	dwc->lpm_nyet_threshold = lpm_nyet_threshold;
+	dwc->phyif_utmi = phyif_utmi;
 	dwc->tx_de_emphasis = tx_de_emphasis;
 
 	dwc->hird_threshold = hird_threshold
diff --git a/drivers/usb/dwc3/core.h b/drivers/usb/dwc3/core.h
index ac2e6b5..e1fcae8 100644
--- a/drivers/usb/dwc3/core.h
+++ b/drivers/usb/dwc3/core.h
@@ -200,6 +200,12 @@
 #define DWC3_GUSB2PHYCFG_SUSPHY		(1 << 6)
 #define DWC3_GUSB2PHYCFG_ULPI_UTMI	(1 << 4)
 #define DWC3_GUSB2PHYCFG_ENBLSLPM	(1 << 8)
+#define DWC3_GUSB2PHYCFG_PHYIF(n)	(n << 3)
+#define DWC3_GUSB2PHYCFG_PHYIF_MASK	DWC3_GUSB2PHYCFG_PHYIF(1)
+#define DWC3_GUSB2PHYCFG_USBTRDTIM(n)	(n << 10)
+#define DWC3_GUSB2PHYCFG_USBTRDTIM_MASK	DWC3_GUSB2PHYCFG_USBTRDTIM(0xf)
+#define USBTRDTIM_UTMI_8_BIT		9
+#define USBTRDTIM_UTMI_16_BIT		5
 
 /* Global USB2 PHY Vendor Control Register */
 #define DWC3_GUSB2PHYACC_NEWREGREQ	(1 << 25)
@@ -774,6 +780,10 @@ struct dwc3_scratchpad_array {
  * @dis_u2_freeclk_exists_quirk : set if we clear u2_freeclk_exists
  *			in GUSB2PHYCFG, specify that USB2 PHY doesn't
  *			provide a free-running PHY clock.
+ * @phyif_utmi_quirk: set if we enable phyif UTMI+ quirk
+ * @phyif_utmi: UTMI+ PHY interface value
+ *	0	- 8 bits
+ *	1	- 16 bits
  * @tx_de_emphasis_quirk: set if we enable Tx de-emphasis quirk
  * @tx_de_emphasis: Tx de-emphasis value
  * 	0	- -6dB de-emphasis
@@ -919,6 +929,8 @@ struct dwc3 {
 	unsigned		dis_rxdet_inp3_quirk:1;
 	unsigned		dis_u2_freeclk_exists_quirk:1;
 
+	unsigned		phyif_utmi_quirk:1;
+	unsigned		phyif_utmi:1;
 	unsigned		tx_de_emphasis_quirk:1;
 	unsigned		tx_de_emphasis:2;
 };
diff --git a/drivers/usb/dwc3/platform_data.h b/drivers/usb/dwc3/platform_data.h
index e1a1631..b521565 100644
--- a/drivers/usb/dwc3/platform_data.h
+++ b/drivers/usb/dwc3/platform_data.h
@@ -45,6 +45,8 @@ struct dwc3_platform_data {
 	unsigned dis_rxdet_inp3_quirk:1;
 	unsigned dis_u2_freeclk_exists_quirk:1;
 
+	unsigned phyif_utmi_quirk:1;
+	unsigned phyif_utmi:1;
 	unsigned tx_de_emphasis_quirk:1;
 	unsigned tx_de_emphasis:2;
 
-- 
1.9.1
