From: Shawn Lin <shawn.lin-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Subject: [PATCH] PCI: rockchip: improve the training polling code
Date: Wed, 18 Jan 2017 16:29:15 +0800
Message-ID: <1484728155-72502-1-git-send-email-shawn.lin@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Bjorn Helgaas <bhelgaas-hpIqsD4AKlfQT0dZR+AlfA@public.gmane.org>
Cc: linux-pci-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, Shawn Lin <shawn.lin-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

Use the readl_poll_timeout instead of open coding them.

Signed-off-by: Shawn Lin <shawn.lin-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
---

 drivers/pci/host/pcie-rockchip.c | 52 +++++++++++++---------------------------
 1 file changed, 16 insertions(+), 36 deletions(-)

diff --git a/drivers/pci/host/pcie-rockchip.c b/drivers/pci/host/pcie-rockchip.c
index 0d6e8ee..17374a9 100644
--- a/drivers/pci/host/pcie-rockchip.c
+++ b/drivers/pci/host/pcie-rockchip.c
@@ -188,8 +188,11 @@
 	  (PCIE_ECAM_BUS(bus) | PCIE_ECAM_DEV(dev) | \
 	   PCIE_ECAM_FUNC(func) | PCIE_ECAM_REG(reg))
 #define PCIE_LINK_IS_L2(x) \
-		(((x) & PCIE_CLIENT_DEBUG_LTSSM_MASK) == \
-		 PCIE_CLIENT_DEBUG_LTSSM_L2)
+	(((x) & PCIE_CLIENT_DEBUG_LTSSM_MASK) == PCIE_CLIENT_DEBUG_LTSSM_L2)
+#define PCIE_LINK_UP(x) \
+	(((x) & PCIE_CLIENT_LINK_STATUS_MASK) == PCIE_CLIENT_LINK_STATUS_UP)
+#define PCIE_LINK_IS_GEN2(x) \
+	(((x) & PCIE_CORE_PL_CONF_SPEED_MASK) == PCIE_CORE_PL_CONF_SPEED_5G)
 
 #define RC_REGION_0_ADDR_TRANS_H		0x00000000
 #define RC_REGION_0_ADDR_TRANS_L		0x00000000
@@ -463,7 +466,6 @@ static int rockchip_pcie_init_port(struct rockchip_pcie *rockchip)
 	struct device *dev = rockchip->dev;
 	int err;
 	u32 status;
-	unsigned long timeout;
 
 	gpiod_set_value(rockchip->ep_gpio, 0);
 
@@ -604,23 +606,12 @@ static int rockchip_pcie_init_port(struct rockchip_pcie *rockchip)
 	gpiod_set_value(rockchip->ep_gpio, 1);
 
 	/* 500ms timeout value should be enough for Gen1/2 training */
-	timeout = jiffies + msecs_to_jiffies(500);
-
-	for (;;) {
-		status = rockchip_pcie_read(rockchip,
-					    PCIE_CLIENT_BASIC_STATUS1);
-		if ((status & PCIE_CLIENT_LINK_STATUS_MASK) ==
-		    PCIE_CLIENT_LINK_STATUS_UP) {
-			dev_dbg(dev, "PCIe link training gen1 pass!\n");
-			break;
-		}
-
-		if (time_after(jiffies, timeout)) {
-			dev_err(dev, "PCIe link training gen1 timeout!\n");
-			return -ETIMEDOUT;
-		}
-
-		msleep(20);
+	err = readl_poll_timeout(rockchip->apb_base + PCIE_CLIENT_BASIC_STATUS1,
+				 status, PCIE_LINK_UP(status), 20,
+				 500 * USEC_PER_MSEC);
+	if (err) {
+		dev_err(dev, "PCIe link training gen1 timeout!\n");
+		return -ETIMEDOUT;
 	}
 
 	if (rockchip->link_gen == 2) {
@@ -632,22 +623,11 @@ static int rockchip_pcie_init_port(struct rockchip_pcie *rockchip)
 		status |= PCI_EXP_LNKCTL_RL;
 		rockchip_pcie_write(rockchip, status, PCIE_RC_CONFIG_LCS);
 
-		timeout = jiffies + msecs_to_jiffies(500);
-		for (;;) {
-			status = rockchip_pcie_read(rockchip, PCIE_CORE_CTRL);
-			if ((status & PCIE_CORE_PL_CONF_SPEED_MASK) ==
-			    PCIE_CORE_PL_CONF_SPEED_5G) {
-				dev_dbg(dev, "PCIe link training gen2 pass!\n");
-				break;
-			}
-
-			if (time_after(jiffies, timeout)) {
-				dev_dbg(dev, "PCIe link training gen2 timeout, fall back to gen1!\n");
-				break;
-			}
-
-			msleep(20);
-		}
+		err = readl_poll_timeout(rockchip->apb_base + PCIE_CORE_CTRL,
+					 status, PCIE_LINK_IS_GEN2(status), 20,
+					 500 * USEC_PER_MSEC);
+		if (err)
+			dev_dbg(dev, "PCIe link training gen2 timeout, fall back to gen1!\n");
 	}
 
 	/* Check the final link width from negotiated lane counter from MGMT */
-- 
1.9.1
