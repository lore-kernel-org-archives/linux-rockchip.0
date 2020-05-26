From: Frank Wang <frank.wang-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Subject: [PATCH v6 08/16] usb: dwc3: add dis_u2_freeclk_exists_quirk
Date: Tue, 26 May 2020 11:33:47 +0800
Message-ID: <20200526033355.20147-4-frank.wang@rock-chips.com>
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
Cc: jianing.ren-TNX95d0MmH7DzftRWevZcw@public.gmane.org, Frank Wang <frank.wang-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, marek.belisko-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org, wmc-TNX95d0MmH7DzftRWevZcw@public.gmane.org, u-boot-0aAXYlwwYIKGBzrmiIFOJg@public.gmane.org, william.wu-TNX95d0MmH7DzftRWevZcw@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-amarula-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org, chenjh-TNX95d0MmH7DzftRWevZcw@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

Add a quirk to clear the GUSB2PHYCFG.U2_FREECLK_EXISTS bit,
which specifies whether the USB2.0 PHY provides a free-running
PHY clock, which is active when the clock control input is active.

Refer to commit 27f83eeb6b42("usb: dwc3: add dis_u2_freeclk_exists_quirk")
in Linux Rockchip Kernel.

Signed-off-by: Frank Wang <frank.wang-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Reviewed-by: Kever Yang <kever.yang-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Reviewed-by: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
Tested-by: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
---
 drivers/usb/dwc3/core.c | 6 ++++++
 drivers/usb/dwc3/core.h | 2 ++
 include/dwc3-uboot.h    | 1 +
 3 files changed, 9 insertions(+)

diff --git a/drivers/usb/dwc3/core.c b/drivers/usb/dwc3/core.c
index 20be617fd4..3cb66515a2 100644
--- a/drivers/usb/dwc3/core.c
+++ b/drivers/usb/dwc3/core.c
@@ -401,6 +401,9 @@ static void dwc3_phy_setup(struct dwc3 *dwc)
 	if (dwc->dis_enblslpm_quirk)
 		reg &= ~DWC3_GUSB2PHYCFG_ENBLSLPM;
 
+	if (dwc->dis_u2_freeclk_exists_quirk)
+		reg &= ~DWC3_GUSB2PHYCFG_U2_FREECLK_EXISTS;
+
 	dwc3_writel(dwc->regs, DWC3_GUSB2PHYCFG(0), reg);
 
 	mdelay(100);
@@ -723,6 +726,7 @@ int dwc3_uboot_init(struct dwc3_device *dwc3_dev)
 	dwc->dis_u2_susphy_quirk = dwc3_dev->dis_u2_susphy_quirk;
 	dwc->dis_del_phy_power_chg_quirk = dwc3_dev->dis_del_phy_power_chg_quirk;
 	dwc->dis_enblslpm_quirk = dwc3_dev->dis_enblslpm_quirk;
+	dwc->dis_u2_freeclk_exists_quirk = dwc3_dev->dis_u2_freeclk_exists_quirk;
 
 	dwc->tx_de_emphasis_quirk = dwc3_dev->tx_de_emphasis_quirk;
 	if (dwc3_dev->tx_de_emphasis)
@@ -932,6 +936,8 @@ void dwc3_of_parse(struct dwc3 *dwc)
 				"snps,dis-del-phy-power-chg-quirk");
 	dwc->dis_enblslpm_quirk = dev_read_bool(dev,
 				"snps,dis_enblslpm_quirk");
+	dwc->dis_u2_freeclk_exists_quirk = dev_read_bool(dev,
+				"snps,dis-u2-freeclk-exists-quirk");
 	dwc->tx_de_emphasis_quirk = dev_read_bool(dev,
 				"snps,tx_de_emphasis_quirk");
 	tmp = dev_read_u8_array_ptr(dev, "snps,tx_de_emphasis", 1);
diff --git a/drivers/usb/dwc3/core.h b/drivers/usb/dwc3/core.h
index e76e357f1e..c5e656885a 100644
--- a/drivers/usb/dwc3/core.h
+++ b/drivers/usb/dwc3/core.h
@@ -161,6 +161,7 @@
 
 /* Global USB2 PHY Configuration Register */
 #define DWC3_GUSB2PHYCFG_PHYSOFTRST	(1 << 31)
+#define DWC3_GUSB2PHYCFG_U2_FREECLK_EXISTS	(1 << 30)
 #define DWC3_GUSB2PHYCFG_SUSPHY		(1 << 6)
 #define DWC3_GUSB2PHYCFG_ENBLSLPM	(1 << 8)
 #define DWC3_GUSB2PHYCFG_PHYIF(n)	((n) << 3)
@@ -824,6 +825,7 @@ struct dwc3 {
 	unsigned		dis_u2_susphy_quirk:1;
 	unsigned		dis_del_phy_power_chg_quirk:1;
 	unsigned		dis_enblslpm_quirk:1;
+	unsigned		dis_u2_freeclk_exists_quirk:1;
 
 	unsigned		tx_de_emphasis_quirk:1;
 	unsigned		tx_de_emphasis:2;
diff --git a/include/dwc3-uboot.h b/include/dwc3-uboot.h
index 98d51e05e1..193d225d31 100644
--- a/include/dwc3-uboot.h
+++ b/include/dwc3-uboot.h
@@ -35,6 +35,7 @@ struct dwc3_device {
 	unsigned dis_u2_susphy_quirk;
 	unsigned dis_del_phy_power_chg_quirk;
 	unsigned dis_enblslpm_quirk;
+	unsigned dis_u2_freeclk_exists_quirk;
 	unsigned tx_de_emphasis_quirk;
 	unsigned tx_de_emphasis;
 	int index;
-- 
2.17.1
