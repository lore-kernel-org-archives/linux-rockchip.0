From: Frank Wang <frank.wang-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Subject: [PATCH v6 09/16] usb: dwc3: Add disable u2mac linestate check quirk
Date: Tue, 26 May 2020 11:33:48 +0800
Message-ID: <20200526033355.20147-5-frank.wang@rock-chips.com>
References: <20200526033220.20047-1-frank.wang@rock-chips.com>
 <20200526033355.20147-1-frank.wang@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane-mx.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <20200526033355.20147-1-frank.wang-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane-mx.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org, marex-ynQEQJNshbs@public.gmane.org, bmeng.cn-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org, philipp.tomsich-SN7IsUiht6C/RdPyistoZJqQE7yCjDx5@public.gmane.org, klaus.goger-SN7IsUiht6C/RdPyistoZJqQE7yCjDx5@public.gmane.org, jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org, sjg-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org, kever.yang-TNX95d0MmH7DzftRWevZcw@public.gmane.org
Cc: jianing.ren-TNX95d0MmH7DzftRWevZcw@public.gmane.org, marek.belisko-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org, wmc-TNX95d0MmH7DzftRWevZcw@public.gmane.org, u-boot-0aAXYlwwYIKGBzrmiIFOJg@public.gmane.org, william.wu-TNX95d0MmH7DzftRWevZcw@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-amarula-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org, chenjh-TNX95d0MmH7DzftRWevZcw@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

From: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>

This patch adds a quirk to disable USB 2.0 MAC linestate check
during HS transmit. Refer the dwc3 databook, we can use it for
some special platforms if the linestate not reflect the expected
line state(J) during transmission.

When use this quirk, the controller implements a fixed 40-bit
TxEndDelay after the packet is given on UTMI and ignores the
linestate during the transmit of a token (during token-to-token
and token-to-data IPGAP).

On some rockchip platforms (e.g. rk3399), it requires to disable
the u2mac linestate check to decrease the SSPLIT token to SETUP
token inter-packet delay from 566ns to 466ns, and fix the issue
that FS/LS devices not recognized if inserted through USB 3.0 HUB.

Reference from below Linux commit,

commit <65db7a0c9816> ("usb: dwc3: add disable u2mac linestate
check quirk")

Cc: Marek Vasut <marex-ynQEQJNshbs@public.gmane.org>
Signed-off-by: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
Reviewed-by: Kever Yang <kever.yang-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
---
 drivers/usb/dwc3/core.c | 20 ++++++++++++++++++++
 drivers/usb/dwc3/core.h |  7 +++++++
 include/dwc3-uboot.h    |  1 +
 3 files changed, 28 insertions(+)

diff --git a/drivers/usb/dwc3/core.c b/drivers/usb/dwc3/core.c
index 3cb66515a2..dc92f471c1 100644
--- a/drivers/usb/dwc3/core.c
+++ b/drivers/usb/dwc3/core.c
@@ -725,6 +725,7 @@ int dwc3_uboot_init(struct dwc3_device *dwc3_dev)
 	dwc->dis_u3_susphy_quirk = dwc3_dev->dis_u3_susphy_quirk;
 	dwc->dis_u2_susphy_quirk = dwc3_dev->dis_u2_susphy_quirk;
 	dwc->dis_del_phy_power_chg_quirk = dwc3_dev->dis_del_phy_power_chg_quirk;
+	dwc->dis_tx_ipgap_linecheck_quirk = dwc3_dev->dis_tx_ipgap_linecheck_quirk;
 	dwc->dis_enblslpm_quirk = dwc3_dev->dis_enblslpm_quirk;
 	dwc->dis_u2_freeclk_exists_quirk = dwc3_dev->dis_u2_freeclk_exists_quirk;
 
@@ -934,6 +935,8 @@ void dwc3_of_parse(struct dwc3 *dwc)
 				"snps,dis_u2_susphy_quirk");
 	dwc->dis_del_phy_power_chg_quirk = dev_read_bool(dev,
 				"snps,dis-del-phy-power-chg-quirk");
+	dwc->dis_tx_ipgap_linecheck_quirk = dev_read_bool(dev,
+				"snps,dis-tx-ipgap-linecheck-quirk");
 	dwc->dis_enblslpm_quirk = dev_read_bool(dev,
 				"snps,dis_enblslpm_quirk");
 	dwc->dis_u2_freeclk_exists_quirk = dev_read_bool(dev,
@@ -954,6 +957,7 @@ void dwc3_of_parse(struct dwc3 *dwc)
 int dwc3_init(struct dwc3 *dwc)
 {
 	int ret;
+	u32 reg;
 
 	dwc3_cache_hwparams(dwc);
 
@@ -975,6 +979,22 @@ int dwc3_init(struct dwc3 *dwc)
 		goto event_fail;
 	}
 
+	if (dwc->revision >= DWC3_REVISION_250A) {
+		reg = dwc3_readl(dwc->regs, DWC3_GUCTL1);
+
+		/*
+		 * Enable hardware control of sending remote wakeup
+		 * in HS when the device is in the L1 state.
+		 */
+		if (dwc->revision >= DWC3_REVISION_290A)
+			reg |= DWC3_GUCTL1_DEV_L1_EXIT_BY_HW;
+
+		if (dwc->dis_tx_ipgap_linecheck_quirk)
+			reg |= DWC3_GUCTL1_TX_IPGAP_LINECHECK_DIS;
+
+		dwc3_writel(dwc->regs, DWC3_GUCTL1, reg);
+	}
+
 	ret = dwc3_core_init_mode(dwc);
 	if (ret)
 		goto mode_fail;
diff --git a/drivers/usb/dwc3/core.h b/drivers/usb/dwc3/core.h
index c5e656885a..b510d8a983 100644
--- a/drivers/usb/dwc3/core.h
+++ b/drivers/usb/dwc3/core.h
@@ -73,6 +73,7 @@
 #define DWC3_GCTL		0xc110
 #define DWC3_GEVTEN		0xc114
 #define DWC3_GSTS		0xc118
+#define DWC3_GUCTL1		0xc11c
 #define DWC3_GSNPSID		0xc120
 #define DWC3_GGPIO		0xc124
 #define DWC3_GUID		0xc128
@@ -159,6 +160,10 @@
 #define DWC3_GCTL_GBLHIBERNATIONEN	(1 << 1)
 #define DWC3_GCTL_DSBLCLKGTNG		(1 << 0)
 
+/* Global User Control 1 Register */
+#define DWC3_GUCTL1_TX_IPGAP_LINECHECK_DIS	BIT(28)
+#define DWC3_GUCTL1_DEV_L1_EXIT_BY_HW	BIT(24)
+
 /* Global USB2 PHY Configuration Register */
 #define DWC3_GUSB2PHYCFG_PHYSOFTRST	(1 << 31)
 #define DWC3_GUSB2PHYCFG_U2_FREECLK_EXISTS	(1 << 30)
@@ -771,6 +776,7 @@ struct dwc3 {
 #define DWC3_REVISION_260A	0x5533260a
 #define DWC3_REVISION_270A	0x5533270a
 #define DWC3_REVISION_280A	0x5533280a
+#define DWC3_REVISION_290A	0x5533290a
 
 	enum dwc3_ep0_next	ep0_next_event;
 	enum dwc3_ep0_state	ep0state;
@@ -824,6 +830,7 @@ struct dwc3 {
 	unsigned		dis_u3_susphy_quirk:1;
 	unsigned		dis_u2_susphy_quirk:1;
 	unsigned		dis_del_phy_power_chg_quirk:1;
+	unsigned		dis_tx_ipgap_linecheck_quirk:1;
 	unsigned		dis_enblslpm_quirk:1;
 	unsigned		dis_u2_freeclk_exists_quirk:1;
 
diff --git a/include/dwc3-uboot.h b/include/dwc3-uboot.h
index 193d225d31..e08530ec4e 100644
--- a/include/dwc3-uboot.h
+++ b/include/dwc3-uboot.h
@@ -34,6 +34,7 @@ struct dwc3_device {
 	unsigned dis_u3_susphy_quirk;
 	unsigned dis_u2_susphy_quirk;
 	unsigned dis_del_phy_power_chg_quirk;
+	unsigned dis_tx_ipgap_linecheck_quirk;
 	unsigned dis_enblslpm_quirk;
 	unsigned dis_u2_freeclk_exists_quirk;
 	unsigned tx_de_emphasis_quirk;
-- 
2.17.1
