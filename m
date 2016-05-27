From: William Wu <william.wu-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Subject: [PATCH v3 4/5] usb: dwc3: add dis_del_phy_power_chg_quirk
Date: Fri, 27 May 2016 19:28:07 +0800
Message-ID: <1464348488-20760-5-git-send-email-william.wu@rock-chips.com>
References: <1464348488-20760-1-git-send-email-william.wu@rock-chips.com>
Return-path: <linux-usb-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <1464348488-20760-1-git-send-email-william.wu-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Sender: linux-usb-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: gregkh-hQyY1W1yCW8ekmWlsbkhG0B+6BGkLq7r@public.gmane.org, balbi-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org, heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org
Cc: linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, briannorris-hpIqsD4AKlfQT0dZR+AlfA@public.gmane.org, dianders-hpIqsD4AKlfQT0dZR+AlfA@public.gmane.org, kever.yang-TNX95d0MmH7DzftRWevZcw@public.gmane.org, huangtao-TNX95d0MmH7DzftRWevZcw@public.gmane.org, frank.wang-TNX95d0MmH7DzftRWevZcw@public.gmane.org, eddie.cai-TNX95d0MmH7DzftRWevZcw@public.gmane.org, John.Youn-HKixBCOQz3hWk0Htik3J/w@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-usb-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, William Wu <william.wu-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

Add a quirk to clear the GUSB3PIPECTL.DELAYP1TRANS bit,
which specifies whether disable delay PHY power change
from P0 to P1/P2/P3 when link state changing from U0
to U1/U2/U3 respectively.

Signed-off-by: William Wu <william.wu-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
---
Changes in v3:
- None

Changes in v2:
- None

 Documentation/devicetree/bindings/usb/dwc3.txt | 2 ++
 drivers/usb/dwc3/core.c                        | 7 +++++++
 drivers/usb/dwc3/core.h                        | 3 +++
 drivers/usb/dwc3/platform_data.h               | 1 +
 4 files changed, 13 insertions(+)

diff --git a/Documentation/devicetree/bindings/usb/dwc3.txt b/Documentation/devicetree/bindings/usb/dwc3.txt
index 34d13a5..bd5bef0 100644
--- a/Documentation/devicetree/bindings/usb/dwc3.txt
+++ b/Documentation/devicetree/bindings/usb/dwc3.txt
@@ -42,6 +42,8 @@ Optional properties:
  - snps,dis_u2_freeclk_exists_quirk: when set, clear the u2_freeclk_exists
 			in GUSB2PHYCFG, specify that USB2 PHY doesn't provide
 			a free-running PHY clock.
+ - snps,dis_del_phy_power_chg_quirk: when set core will change PHY power
+			from P0 to P1/P2/P3 without delay.
  - snps,phyif_utmi_quirk: when set core will set phyif UTMI+ interface.
  - snps,phyif_utmi: the value to configure the core to support a UTMI+ PHY
 			with an 8- or 16-bit interface. Value 0 select 8-bit
diff --git a/drivers/usb/dwc3/core.c b/drivers/usb/dwc3/core.c
index d99c170..c06870c 100644
--- a/drivers/usb/dwc3/core.c
+++ b/drivers/usb/dwc3/core.c
@@ -451,6 +451,9 @@ static int dwc3_phy_setup(struct dwc3 *dwc)
 	if (dwc->dis_u3_susphy_quirk)
 		reg &= ~DWC3_GUSB3PIPECTL_SUSPHY;
 
+	if (dwc->dis_del_phy_power_chg_quirk)
+		reg &= ~DWC3_GUSB3PIPECTL_DEPOCHANGE;
+
 	dwc3_writel(dwc->regs, DWC3_GUSB3PIPECTL(0), reg);
 
 	reg = dwc3_readl(dwc->regs, DWC3_GUSB2PHYCFG(0));
@@ -920,6 +923,8 @@ static int dwc3_probe(struct platform_device *pdev)
 				"snps,dis_rxdet_inp3_quirk");
 	dwc->dis_u2_freeclk_exists_quirk = device_property_read_bool(dev,
 				"snps,dis_u2_freeclk_exists_quirk");
+	dwc->dis_del_phy_power_chg_quirk = device_property_read_bool(dev,
+				"snps,dis_del_phy_power_chg_quirk");
 
 	dwc->phyif_utmi_quirk = device_property_read_bool(dev,
 				"snps,phyif_utmi_quirk");
@@ -960,6 +965,8 @@ static int dwc3_probe(struct platform_device *pdev)
 		dwc->dis_rxdet_inp3_quirk = pdata->dis_rxdet_inp3_quirk;
 		dwc->dis_u2_freeclk_exists_quirk =
 					pdata->dis_u2_freeclk_exists_quirk;
+		dwc->dis_del_phy_power_chg_quirk =
+					pdata->dis_del_phy_power_chg_quirk;
 
 		dwc->phyif_utmi_quirk = pdata->phyif_utmi_quirk;
 		if (pdata->phyif_utmi)
diff --git a/drivers/usb/dwc3/core.h b/drivers/usb/dwc3/core.h
index e1fcae8..abed84f 100644
--- a/drivers/usb/dwc3/core.h
+++ b/drivers/usb/dwc3/core.h
@@ -780,6 +780,8 @@ struct dwc3_scratchpad_array {
  * @dis_u2_freeclk_exists_quirk : set if we clear u2_freeclk_exists
  *			in GUSB2PHYCFG, specify that USB2 PHY doesn't
  *			provide a free-running PHY clock.
+ * @dis_del_phy_power_chg_quirk: set if we disable delay phy power
+ *			change quirk.
  * @phyif_utmi_quirk: set if we enable phyif UTMI+ quirk
  * @phyif_utmi: UTMI+ PHY interface value
  *	0	- 8 bits
@@ -928,6 +930,7 @@ struct dwc3 {
 	unsigned		dis_enblslpm_quirk:1;
 	unsigned		dis_rxdet_inp3_quirk:1;
 	unsigned		dis_u2_freeclk_exists_quirk:1;
+	unsigned		dis_del_phy_power_chg_quirk:1;
 
 	unsigned		phyif_utmi_quirk:1;
 	unsigned		phyif_utmi:1;
diff --git a/drivers/usb/dwc3/platform_data.h b/drivers/usb/dwc3/platform_data.h
index b521565..ab45d91 100644
--- a/drivers/usb/dwc3/platform_data.h
+++ b/drivers/usb/dwc3/platform_data.h
@@ -44,6 +44,7 @@ struct dwc3_platform_data {
 	unsigned dis_enblslpm_quirk:1;
 	unsigned dis_rxdet_inp3_quirk:1;
 	unsigned dis_u2_freeclk_exists_quirk:1;
+	unsigned dis_del_phy_power_chg_quirk:1;
 
 	unsigned phyif_utmi_quirk:1;
 	unsigned phyif_utmi:1;
-- 
1.9.1


--
To unsubscribe from this list: send the line "unsubscribe linux-usb" in
the body of a message to majordomo-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
