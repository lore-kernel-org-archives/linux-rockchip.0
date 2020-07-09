From: Jagan Teki <jagan@amarulasolutions.com>
Subject: [PATCH 2/3] pci: rockchip: Switch to generic-phy
Date: Thu,  9 Jul 2020 23:41:02 +0530
Message-ID: <20200709181103.89870-3-jagan@amarulasolutions.com>
References: <20200709181103.89870-1-jagan@amarulasolutions.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Return-path: <u-boot-bounces@lists.denx.de>
In-Reply-To: <20200709181103.89870-1-jagan@amarulasolutions.com>
List-Unsubscribe: <https://lists.denx.de/options/u-boot>,
 <mailto:u-boot-request@lists.denx.de?subject=unsubscribe>
List-Archive: <https://lists.denx.de/pipermail/u-boot/>
List-Post: <mailto:u-boot@lists.denx.de>
List-Help: <mailto:u-boot-request@lists.denx.de?subject=help>
List-Subscribe: <https://lists.denx.de/listinfo/u-boot>,
 <mailto:u-boot-request@lists.denx.de?subject=subscribe>
Errors-To: u-boot-bounces@lists.denx.de
Sender: "U-Boot" <u-boot-bounces@lists.denx.de>
To: Kever Yang <kever.yang@rock-chips.com>, Philipp Tomsich <philipp.tomsich@theobroma-systems.com>, Simon Glass <sjg@chromium.org>, Shawn Lin <shawn.lin@rock-chips.com>
Cc: Suniel Mahesh <sunil@amarulasolutions.com>, U-Boot-Denx <u-boot@lists.denx.de>, linux-rockchip@lists.infradead.org, linux-amarula <linux-amarula@amarulasolutions.com>, Jagan Teki <jagan@amarulasolutions.com>
List-Id: linux-rockchip.vger.kernel.org

Now, we have a PCIe PHY driver as part of the Generic
PHY framework. Let's use it instead of legacy PHY driver.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 drivers/pci/Kconfig         |  1 +
 drivers/pci/pcie_rockchip.c | 20 ++++++++++----------
 drivers/pci/pcie_rockchip.h |  5 +++++
 3 files changed, 16 insertions(+), 10 deletions(-)

diff --git a/drivers/pci/Kconfig b/drivers/pci/Kconfig
index 6d8c22aacf..58ca673e4b 100644
--- a/drivers/pci/Kconfig
+++ b/drivers/pci/Kconfig
@@ -200,6 +200,7 @@ config PCIE_MEDIATEK
 config PCIE_ROCKCHIP
 	bool "Enable Rockchip PCIe driver"
 	select DM_PCI
+	select PHY_ROCKCHIP_PCIE
 	default y if ROCKCHIP_RK3399
 	help
 	  Say Y here if you want to enable PCIe controller support on
diff --git a/drivers/pci/pcie_rockchip.c b/drivers/pci/pcie_rockchip.c
index 0edc2464a8..ce573aa4b4 100644
--- a/drivers/pci/pcie_rockchip.c
+++ b/drivers/pci/pcie_rockchip.c
@@ -159,8 +159,6 @@ static int rockchip_pcie_atr_init(struct rockchip_pcie *priv)
 static int rockchip_pcie_init_port(struct udevice *dev)
 {
 	struct rockchip_pcie *priv = dev_get_priv(dev);
-	struct rockchip_pcie_phy *phy = pcie_get_phy(priv);
-	struct rockchip_pcie_phy_ops *ops = phy_get_ops(phy);
 	u32 cr, val, status;
 	int ret;
 
@@ -185,7 +183,7 @@ static int rockchip_pcie_init_port(struct udevice *dev)
 		return ret;
 	}
 
-	ret = ops->init(phy);
+	ret = generic_phy_init(&priv->pcie_phy);
 	if (ret) {
 		dev_err(dev, "failed to init phy (ret=%d)\n", ret);
 		goto err_exit_phy;
@@ -242,7 +240,7 @@ static int rockchip_pcie_init_port(struct udevice *dev)
 	cr |= PCIE_CLIENT_CONF_ENABLE | PCIE_CLIENT_MODE_RC;
 	writel(cr, priv->apb_base + PCIE_CLIENT_CONFIG);
 
-	ret = ops->power_on(phy);
+	ret = generic_phy_power_on(&priv->pcie_phy);
 	if (ret) {
 		dev_err(dev, "failed to power on phy (ret=%d)\n", ret);
 		goto err_power_off_phy;
@@ -311,9 +309,9 @@ static int rockchip_pcie_init_port(struct udevice *dev)
 	return 0;
 
 err_power_off_phy:
-	ops->power_off(phy);
+	generic_phy_power_off(&priv->pcie_phy);
 err_exit_phy:
-	ops->exit(phy);
+	generic_phy_exit(&priv->pcie_phy);
 	return ret;
 }
 
@@ -443,6 +441,12 @@ static int rockchip_pcie_parse_dt(struct udevice *dev)
 		return ret;
 	}
 
+	ret = generic_phy_get_by_index(dev, 0, &priv->pcie_phy);
+	if (ret) {
+		dev_err(dev, "failed to get pcie-phy (ret=%d)\n", ret);
+		return ret;
+	}
+
 	return 0;
 }
 
@@ -460,10 +464,6 @@ static int rockchip_pcie_probe(struct udevice *dev)
 	if (ret)
 		return ret;
 
-	ret = rockchip_pcie_phy_get(dev);
-	if (ret)
-		return ret;
-
 	ret = rockchip_pcie_set_vpcie(dev);
 	if (ret)
 		return ret;
diff --git a/drivers/pci/pcie_rockchip.h b/drivers/pci/pcie_rockchip.h
index 845d5059e1..6d20d5232d 100644
--- a/drivers/pci/pcie_rockchip.h
+++ b/drivers/pci/pcie_rockchip.h
@@ -9,6 +9,8 @@
  *
  */
 
+#include <generic-phy.h>
+
 #define HIWORD_UPDATE(mask, val)        (((mask) << 16) | (val))
 #define HIWORD_UPDATE_BIT(val)          HIWORD_UPDATE(val, val)
 
@@ -126,6 +128,9 @@ struct rockchip_pcie {
 	struct udevice *vpcie3v3;
 	struct udevice *vpcie1v8;
 	struct udevice *vpcie0v9;
+
+	/* phy */
+	struct phy pcie_phy;
 };
 
 int rockchip_pcie_phy_get(struct udevice *dev);
-- 
2.25.1
