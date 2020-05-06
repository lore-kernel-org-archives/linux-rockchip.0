From: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
Subject: [PATCH v2 7/7] usb: dwc3: add dis_del_phy_power_chg_quirk
Date: Wed,  6 May 2020 13:20:25 +0530
Message-ID: <20200506075025.1677-8-jagan@amarulasolutions.com>
References: <20200506075025.1677-1-jagan@amarulasolutions.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane-mx.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <20200506075025.1677-1-jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane-mx.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: kever.yang-TNX95d0MmH7DzftRWevZcw@public.gmane.org, philipp.tomsich-SN7IsUiht6C/RdPyistoZJqQE7yCjDx5@public.gmane.org, Simon Glass <sjg-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, Frank Wang <frank.wang-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, wmc-TNX95d0MmH7DzftRWevZcw@public.gmane.org, chenjh-TNX95d0MmH7DzftRWevZcw@public.gmane.org, heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org
Cc: Marek Vasut <marex-ynQEQJNshbs@public.gmane.org>, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, Belisko Marek <marek.belisko-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, u-boot-0aAXYlwwYIKGBzrmiIFOJg@public.gmane.org, Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>, linux-amarula-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

Add a quirk to clear the GUSB3PIPECTL.DELAYP1TRANS bit,
which specifies whether disable delay PHY power change
from P0 to P1/P2/P3 when link state changing from U0
to U1/U2/U3 respectively.

Reference from below Linux commit,

commit <00fe081dc3a3> ("usb: dwc3: add dis_del_phy_power_chg_quirk")

Cc: Marek Vasut <marex-ynQEQJNshbs@public.gmane.org>
Signed-off-by: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
---
Changes for v2:
- new patch

 drivers/usb/dwc3/core.c | 6 ++++++
 drivers/usb/dwc3/core.h | 1 +
 include/dwc3-uboot.h    | 1 +
 3 files changed, 8 insertions(+)

diff --git a/drivers/usb/dwc3/core.c b/drivers/usb/dwc3/core.c
index 4ec3f6df6a..6e438e5604 100644
--- a/drivers/usb/dwc3/core.c
+++ b/drivers/usb/dwc3/core.c
@@ -377,6 +377,9 @@ static void dwc3_phy_setup(struct dwc3 *dwc)
 	if (dwc->dis_u3_susphy_quirk)
 		reg &= ~DWC3_GUSB3PIPECTL_SUSPHY;
 
+	if (dwc->dis_del_phy_power_chg_quirk)
+		reg &= ~DWC3_GUSB3PIPECTL_DEPOCHANGE;
+
 	dwc3_writel(dwc->regs, DWC3_GUSB3PIPECTL(0), reg);
 
 	mdelay(100);
@@ -715,6 +718,7 @@ int dwc3_uboot_init(struct dwc3_device *dwc3_dev)
 	dwc->rx_detect_poll_quirk = dwc3_dev->rx_detect_poll_quirk;
 	dwc->dis_u3_susphy_quirk = dwc3_dev->dis_u3_susphy_quirk;
 	dwc->dis_u2_susphy_quirk = dwc3_dev->dis_u2_susphy_quirk;
+	dwc->dis_del_phy_power_chg_quirk = dwc3_dev->dis_del_phy_power_chg_quirk;
 
 	dwc->tx_de_emphasis_quirk = dwc3_dev->tx_de_emphasis_quirk;
 	if (dwc3_dev->tx_de_emphasis)
@@ -975,6 +979,8 @@ void dwc3_of_parse(struct dwc3 *dwc)
 				"snps,dis_u3_susphy_quirk");
 	dwc->dis_u2_susphy_quirk = dev_read_bool(dev,
 				"snps,dis_u2_susphy_quirk");
+	dwc->dis_del_phy_power_chg_quirk = dev_read_bool(dev,
+				"snps,dis-del-phy-power-chg-quirk");
 	dwc->tx_de_emphasis_quirk = dev_read_bool(dev,
 				"snps,tx_de_emphasis_quirk");
 	tmp = dev_read_u8_array_ptr(dev, "snps,tx_de_emphasis", 1);
diff --git a/drivers/usb/dwc3/core.h b/drivers/usb/dwc3/core.h
index 1c08a2c5b6..7f45a9c459 100644
--- a/drivers/usb/dwc3/core.h
+++ b/drivers/usb/dwc3/core.h
@@ -821,6 +821,7 @@ struct dwc3 {
 	unsigned		rx_detect_poll_quirk:1;
 	unsigned		dis_u3_susphy_quirk:1;
 	unsigned		dis_u2_susphy_quirk:1;
+	unsigned		dis_del_phy_power_chg_quirk:1;
 
 	unsigned		tx_de_emphasis_quirk:1;
 	unsigned		tx_de_emphasis:2;
diff --git a/include/dwc3-uboot.h b/include/dwc3-uboot.h
index 3c9e204cf0..f5086fb946 100644
--- a/include/dwc3-uboot.h
+++ b/include/dwc3-uboot.h
@@ -32,6 +32,7 @@ struct dwc3_device {
 	unsigned rx_detect_poll_quirk;
 	unsigned dis_u3_susphy_quirk;
 	unsigned dis_u2_susphy_quirk;
+	unsigned dis_del_phy_power_chg_quirk;
 	unsigned tx_de_emphasis_quirk;
 	unsigned tx_de_emphasis;
 	int index;
-- 
2.17.1
