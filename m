From: William Wu <william.wu-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Subject: [PATCH v2 2/5] usb: dwc3: add dis_u2_freeclk_exists_quirk
Date: Fri, 13 May 2016 17:24:58 +0800
Message-ID: <1463131501-22551-3-git-send-email-william.wu@rock-chips.com>
References: <1462794377-6528-1-git-send-email-william.wu@rock-chips.com>
 <1463131501-22551-1-git-send-email-william.wu@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <1463131501-22551-1-git-send-email-william.wu-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: gregkh-hQyY1W1yCW8ekmWlsbkhG0B+6BGkLq7r@public.gmane.org, balbi-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org, heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org
Cc: huangtao-TNX95d0MmH7DzftRWevZcw@public.gmane.org, frank.wang-TNX95d0MmH7DzftRWevZcw@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-usb-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, kever.yang-TNX95d0MmH7DzftRWevZcw@public.gmane.org, dianders-hpIqsD4AKlfQT0dZR+AlfA@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, eddie.cai-TNX95d0MmH7DzftRWevZcw@public.gmane.org, William Wu <william.wu-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, briannorris-hpIqsD4AKlfQT0dZR+AlfA@public.gmane.org, John.Youn-HKixBCOQz3hWk0Htik3J/w@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

Add a quirk to clear the GUSB2PHYCFG.U2_FREECLK_EXISTS bit,
which specifies whether the USB2.0 PHY provides a free-running
PHY clock, which is active when the clock control input is active.

Signed-off-by: William Wu <william.wu-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
---
Changes in v2:
- None

 Documentation/devicetree/bindings/usb/dwc3.txt | 3 +++
 drivers/usb/dwc3/core.c                        | 7 +++++++
 drivers/usb/dwc3/core.h                        | 5 +++++
 drivers/usb/dwc3/platform_data.h               | 1 +
 4 files changed, 16 insertions(+)

diff --git a/Documentation/devicetree/bindings/usb/dwc3.txt b/Documentation/devicetree/bindings/usb/dwc3.txt
index 7d7ce08..1ada121 100644
--- a/Documentation/devicetree/bindings/usb/dwc3.txt
+++ b/Documentation/devicetree/bindings/usb/dwc3.txt
@@ -39,6 +39,9 @@ Optional properties:
 			disabling the suspend signal to the PHY.
  - snps,dis_rxdet_inp3_quirk: when set core will disable receiver detection
 			in PHY P3 power state.
+ - snps,dis_u2_freeclk_exists_quirk: when set, clear the u2_freeclk_exists
+			in GUSB2PHYCFG, specify that USB2 PHY doesn't provide
+			a free-running PHY clock.
  - snps,is-utmi-l1-suspend: true when DWC3 asserts output signal
 			utmi_l1_suspend_n, false when asserts utmi_sleep_n
  - snps,hird-threshold: HIRD threshold
diff --git a/drivers/usb/dwc3/core.c b/drivers/usb/dwc3/core.c
index a590cd2..8bcd3cc 100644
--- a/drivers/usb/dwc3/core.c
+++ b/drivers/usb/dwc3/core.c
@@ -502,6 +502,9 @@ static int dwc3_phy_setup(struct dwc3 *dwc)
 	if (dwc->dis_enblslpm_quirk)
 		reg &= ~DWC3_GUSB2PHYCFG_ENBLSLPM;
 
+	if (dwc->dis_u2_freeclk_exists_quirk)
+		reg &= ~DWC3_GUSB2PHYCFG_U2_FREECLK_EXISTS;
+
 	dwc3_writel(dwc->regs, DWC3_GUSB2PHYCFG(0), reg);
 
 	return 0;
@@ -901,6 +904,8 @@ static int dwc3_probe(struct platform_device *pdev)
 				"snps,dis_enblslpm_quirk");
 	dwc->dis_rxdet_inp3_quirk = device_property_read_bool(dev,
 				"snps,dis_rxdet_inp3_quirk");
+	dwc->dis_u2_freeclk_exists_quirk = device_property_read_bool(dev,
+				"snps,dis_u2_freeclk_exists_quirk");
 
 	dwc->tx_de_emphasis_quirk = device_property_read_bool(dev,
 				"snps,tx_de_emphasis_quirk");
@@ -935,6 +940,8 @@ static int dwc3_probe(struct platform_device *pdev)
 		dwc->dis_u2_susphy_quirk = pdata->dis_u2_susphy_quirk;
 		dwc->dis_enblslpm_quirk = pdata->dis_enblslpm_quirk;
 		dwc->dis_rxdet_inp3_quirk = pdata->dis_rxdet_inp3_quirk;
+		dwc->dis_u2_freeclk_exists_quirk =
+					pdata->dis_u2_freeclk_exists_quirk;
 
 		dwc->tx_de_emphasis_quirk = pdata->tx_de_emphasis_quirk;
 		if (pdata->tx_de_emphasis)
diff --git a/drivers/usb/dwc3/core.h b/drivers/usb/dwc3/core.h
index 7ddf944..ac2e6b5 100644
--- a/drivers/usb/dwc3/core.h
+++ b/drivers/usb/dwc3/core.h
@@ -196,6 +196,7 @@
 
 /* Global USB2 PHY Configuration Register */
 #define DWC3_GUSB2PHYCFG_PHYSOFTRST	(1 << 31)
+#define	DWC3_GUSB2PHYCFG_U2_FREECLK_EXISTS	(1 << 30)
 #define DWC3_GUSB2PHYCFG_SUSPHY		(1 << 6)
 #define DWC3_GUSB2PHYCFG_ULPI_UTMI	(1 << 4)
 #define DWC3_GUSB2PHYCFG_ENBLSLPM	(1 << 8)
@@ -770,6 +771,9 @@ struct dwc3_scratchpad_array {
  * @dis_u2_susphy_quirk: set if we disable usb2 suspend phy
  * @dis_enblslpm_quirk: set if we clear enblslpm in GUSB2PHYCFG,
  *                      disabling the suspend signal to the PHY.
+ * @dis_u2_freeclk_exists_quirk : set if we clear u2_freeclk_exists
+ *			in GUSB2PHYCFG, specify that USB2 PHY doesn't
+ *			provide a free-running PHY clock.
  * @tx_de_emphasis_quirk: set if we enable Tx de-emphasis quirk
  * @tx_de_emphasis: Tx de-emphasis value
  * 	0	- -6dB de-emphasis
@@ -913,6 +917,7 @@ struct dwc3 {
 	unsigned		dis_u2_susphy_quirk:1;
 	unsigned		dis_enblslpm_quirk:1;
 	unsigned		dis_rxdet_inp3_quirk:1;
+	unsigned		dis_u2_freeclk_exists_quirk:1;
 
 	unsigned		tx_de_emphasis_quirk:1;
 	unsigned		tx_de_emphasis:2;
diff --git a/drivers/usb/dwc3/platform_data.h b/drivers/usb/dwc3/platform_data.h
index 8826cca..e1a1631 100644
--- a/drivers/usb/dwc3/platform_data.h
+++ b/drivers/usb/dwc3/platform_data.h
@@ -43,6 +43,7 @@ struct dwc3_platform_data {
 	unsigned dis_u2_susphy_quirk:1;
 	unsigned dis_enblslpm_quirk:1;
 	unsigned dis_rxdet_inp3_quirk:1;
+	unsigned dis_u2_freeclk_exists_quirk:1;
 
 	unsigned tx_de_emphasis_quirk:1;
 	unsigned tx_de_emphasis:2;
-- 
1.9.1
