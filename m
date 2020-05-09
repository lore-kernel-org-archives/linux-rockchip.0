From: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
Subject: [PATCH v3 4/6] pci: Add Rockchip PCIe PHY controller driver
Date: Sat,  9 May 2020 22:26:22 +0530
Message-ID: <20200509165624.20791-5-jagan@amarulasolutions.com>
References: <20200509165624.20791-1-jagan@amarulasolutions.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane-mx.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <20200509165624.20791-1-jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane-mx.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Kever Yang <kever.yang-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, Simon Glass <sjg-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, Philipp Tomsich <philipp.tomsich-SN7IsUiht6C/RdPyistoZJqQE7yCjDx5@public.gmane.org>
Cc: patrick-Er2xLVyhcs+zQB+pC5nmwQ@public.gmane.org, u-boot-0aAXYlwwYIKGBzrmiIFOJg@public.gmane.org, shawn.lin-TNX95d0MmH7DzftRWevZcw@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>, sunil-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org, linux-amarula-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

Yes, it is possible to have a dedicated UCLASS PHY driver
for this Rockchip PCIe PHY but there are some issues on
Generic PHY framework to support the same.

The Generic PHY framework is unable to get the PHY if
the PHY parent is of a different uclass.

Say if we try to get the PCIe PHY then the phy-uclass
will look for PHY in the first instance if it is not
in the root node it will try to probe the parent by
assuming that the actual PHY is inside the parent PHY
of UCLASS_PHY. But, in rk3399 hardware representation
PHY like emmc, usb and pcie are part of syscon which
is completely a different of UCLASS_SYSCON.

Example:

grf: syscon@ff770000 {
   compatible = "rockchip,rk3399-grf", "syscon", "simple-mfd";
   reg = <0x0 0xff770000 0x0 0x10000>;
   #address-cells = <1>;
   #size-cells = <1>;

   pcie_phy: pcie-phy {
       compatible = "rockchip,rk3399-pcie-phy";
       clocks = <&cru SCLK_PCIEPHY_REF>;
       clock-names = "refclk";
       #phy-cells = <1>;
       resets = <&cru SRST_PCIEPHY>;
       drive-impedance-ohm = <50>;
       reset-names = "phy";
       status = "disabled";
   };
};

Due to this limitation, this patch adds a separate PHY
driver for Rockchip PCIe. This might be removed in future
once Generic PHY supports this limitation.

Signed-off-by: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
---
Changes for v3:
- none

 drivers/pci/Makefile            |   2 +-
 drivers/pci/pcie_rockchip.c     |  50 ++++++--
 drivers/pci/pcie_rockchip.h     |  63 ++++++++++
 drivers/pci/pcie_rockchip_phy.c | 205 ++++++++++++++++++++++++++++++++
 4 files changed, 306 insertions(+), 14 deletions(-)
 create mode 100644 drivers/pci/pcie_rockchip_phy.c

diff --git a/drivers/pci/Makefile b/drivers/pci/Makefile
index 493e9354dd..955351c5c2 100644
--- a/drivers/pci/Makefile
+++ b/drivers/pci/Makefile
@@ -43,4 +43,4 @@ obj-$(CONFIG_PCI_PHYTIUM) += pcie_phytium.o
 obj-$(CONFIG_PCIE_INTEL_FPGA) += pcie_intel_fpga.o
 obj-$(CONFIG_PCI_KEYSTONE) += pcie_dw_ti.o
 obj-$(CONFIG_PCIE_MEDIATEK) += pcie_mediatek.o
-obj-$(CONFIG_PCIE_ROCKCHIP) += pcie_rockchip.o
+obj-$(CONFIG_PCIE_ROCKCHIP) += pcie_rockchip.o pcie_rockchip_phy.o
diff --git a/drivers/pci/pcie_rockchip.c b/drivers/pci/pcie_rockchip.c
index 3f06f783ca..82a8396e42 100644
--- a/drivers/pci/pcie_rockchip.c
+++ b/drivers/pci/pcie_rockchip.c
@@ -159,6 +159,8 @@ static int rockchip_pcie_atr_init(struct rockchip_pcie *priv)
 static int rockchip_pcie_init_port(struct udevice *dev)
 {
 	struct rockchip_pcie *priv = dev_get_priv(dev);
+	struct rockchip_pcie_phy *phy = pcie_get_phy(priv);
+	struct rockchip_pcie_phy_ops *ops = phy_get_ops(phy);
 	u32 cr, val, status;
 	int ret;
 
@@ -183,29 +185,35 @@ static int rockchip_pcie_init_port(struct udevice *dev)
 		return ret;
 	}
 
+	ret = ops->init(phy);
+	if (ret) {
+		dev_err(dev, "failed to init phy (ret=%d)\n", ret);
+		goto err_exit_phy;
+	}
+
 	ret = reset_assert(&priv->core_rst);
 	if (ret) {
 		dev_err(dev, "failed to assert core reset (ret=%d)\n", ret);
-		return ret;
+		goto err_exit_phy;
 	}
 
 	ret = reset_assert(&priv->mgmt_rst);
 	if (ret) {
 		dev_err(dev, "failed to assert mgmt reset (ret=%d)\n", ret);
-		return ret;
+		goto err_exit_phy;
 	}
 
 	ret = reset_assert(&priv->mgmt_sticky_rst);
 	if (ret) {
 		dev_err(dev, "failed to assert mgmt-sticky reset (ret=%d)\n",
 			ret);
-		return ret;
+		goto err_exit_phy;
 	}
 
 	ret = reset_assert(&priv->pipe_rst);
 	if (ret) {
 		dev_err(dev, "failed to assert pipe reset (ret=%d)\n", ret);
-		return ret;
+		goto err_exit_phy;
 	}
 
 	udelay(10);
@@ -213,19 +221,19 @@ static int rockchip_pcie_init_port(struct udevice *dev)
 	ret = reset_deassert(&priv->pm_rst);
 	if (ret) {
 		dev_err(dev, "failed to deassert pm reset (ret=%d)\n", ret);
-		return ret;
+		goto err_exit_phy;
 	}
 
 	ret = reset_deassert(&priv->aclk_rst);
 	if (ret) {
 		dev_err(dev, "failed to deassert aclk reset (ret=%d)\n", ret);
-		return ret;
+		goto err_exit_phy;
 	}
 
 	ret = reset_deassert(&priv->pclk_rst);
 	if (ret) {
 		dev_err(dev, "failed to deassert pclk reset (ret=%d)\n", ret);
-		return ret;
+		goto err_exit_phy;
 	}
 
 	/* Select GEN1 for now */
@@ -234,29 +242,35 @@ static int rockchip_pcie_init_port(struct udevice *dev)
 	cr |= PCIE_CLIENT_CONF_ENABLE | PCIE_CLIENT_MODE_RC;
 	writel(cr, priv->apb_base + PCIE_CLIENT_CONFIG);
 
+	ret = ops->power_on(phy);
+	if (ret) {
+		dev_err(dev, "failed to power on phy (ret=%d)\n", ret);
+		goto err_power_off_phy;
+	}
+
 	ret = reset_deassert(&priv->mgmt_sticky_rst);
 	if (ret) {
 		dev_err(dev, "failed to deassert mgmt-sticky reset (ret=%d)\n",
 			ret);
-		return ret;
+		goto err_power_off_phy;
 	}
 
 	ret = reset_deassert(&priv->core_rst);
 	if (ret) {
 		dev_err(dev, "failed to deassert core reset (ret=%d)\n", ret);
-		return ret;
+		goto err_power_off_phy;
 	}
 
 	ret = reset_deassert(&priv->mgmt_rst);
 	if (ret) {
 		dev_err(dev, "failed to deassert mgmt reset (ret=%d)\n", ret);
-		return ret;
+		goto err_power_off_phy;
 	}
 
 	ret = reset_deassert(&priv->pipe_rst);
 	if (ret) {
 		dev_err(dev, "failed to deassert pipe reset (ret=%d)\n", ret);
-		return ret;
+		goto err_power_off_phy;
 	}
 
 	/* Enable Gen1 training */
@@ -271,7 +285,7 @@ static int rockchip_pcie_init_port(struct udevice *dev)
 			status, PCIE_LINK_UP(status), 20, 500 * 1000);
 	if (ret) {
 		dev_err(dev, "PCIe link training gen1 timeout!\n");
-		return ret;
+		goto err_power_off_phy;
 	}
 
 	/* Initialize Root Complex registers. */
@@ -291,10 +305,16 @@ static int rockchip_pcie_init_port(struct udevice *dev)
 	ret = rockchip_pcie_atr_init(priv);
 	if (ret) {
 		dev_err(dev, "PCIE-%d: ATR init failed\n", dev->seq);
-		return ret;
+		goto err_power_off_phy;
 	}
 
 	return 0;
+
+err_power_off_phy:
+	ops->power_off(phy);
+err_exit_phy:
+	ops->exit(phy);
+	return ret;
 }
 
 static int rockchip_pcie_set_vpcie(struct udevice *dev)
@@ -433,6 +453,10 @@ static int rockchip_pcie_probe(struct udevice *dev)
 	if (ret)
 		return ret;
 
+	ret = rockchip_pcie_phy_get(dev);
+	if (ret)
+		return ret;
+
 	ret = rockchip_pcie_set_vpcie(dev);
 	if (ret)
 		return ret;
diff --git a/drivers/pci/pcie_rockchip.h b/drivers/pci/pcie_rockchip.h
index 6ded5c9553..c3a0a2846d 100644
--- a/drivers/pci/pcie_rockchip.h
+++ b/drivers/pci/pcie_rockchip.h
@@ -53,11 +53,61 @@
 #define PCIE_ATR_OB_REGION0_SIZE	(32 * 1024 * 1024)
 #define PCIE_ATR_OB_REGION_SIZE		(1 * 1024 * 1024)
 
+/*
+ * The higher 16-bit of this register is used for write protection
+ * only if BIT(x + 16) set to 1 the BIT(x) can be written.
+ */
+#define HIWORD_UPDATE_MASK(val, mask, shift) \
+		((val) << (shift) | (mask) << ((shift) + 16))
+
+#define PHY_CFG_DATA_SHIFT    7
+#define PHY_CFG_ADDR_SHIFT    1
+#define PHY_CFG_DATA_MASK     0xf
+#define PHY_CFG_ADDR_MASK     0x3f
+#define PHY_CFG_RD_MASK       0x3ff
+#define PHY_CFG_WR_ENABLE     1
+#define PHY_CFG_WR_DISABLE    1
+#define PHY_CFG_WR_SHIFT      0
+#define PHY_CFG_WR_MASK       1
+#define PHY_CFG_PLL_LOCK      0x10
+#define PHY_CFG_CLK_TEST      0x10
+#define PHY_CFG_CLK_SCC       0x12
+#define PHY_CFG_SEPE_RATE     BIT(3)
+#define PHY_CFG_PLL_100M      BIT(3)
+#define PHY_PLL_LOCKED        BIT(9)
+#define PHY_PLL_OUTPUT        BIT(10)
+#define PHY_LANE_IDLE_OFF     0x1
+#define PHY_LANE_IDLE_MASK    0x1
+#define PHY_LANE_IDLE_A_SHIFT 3
+#define PHY_LANE_IDLE_B_SHIFT 4
+#define PHY_LANE_IDLE_C_SHIFT 5
+#define PHY_LANE_IDLE_D_SHIFT 6
+
+#define PCIE_PHY_CONF		0xe220
+#define PCIE_PHY_STATUS		0xe2a4
+#define PCIE_PHY_LANEOFF	0xe214
+
+struct rockchip_pcie_phy {
+	void *reg_base;
+	struct clk refclk;
+	struct reset_ctl phy_rst;
+	struct rockchip_pcie_phy_ops *ops;
+};
+
+struct rockchip_pcie_phy_ops {
+	int (*init)(struct rockchip_pcie_phy *phy);
+	int (*exit)(struct rockchip_pcie_phy *phy);
+	int (*power_on)(struct rockchip_pcie_phy *phy);
+	int (*power_off)(struct rockchip_pcie_phy *phy);
+};
+
 struct rockchip_pcie {
 	fdt_addr_t axi_base;
 	fdt_addr_t apb_base;
 	int first_busno;
 	struct udevice *dev;
+	struct rockchip_pcie_phy rk_phy;
+	struct rockchip_pcie_phy *phy;
 
 	/* resets */
 	struct reset_ctl core_rst;
@@ -77,3 +127,16 @@ struct rockchip_pcie {
 	struct udevice *vpcie1v8;
 	struct udevice *vpcie0v9;
 };
+
+int rockchip_pcie_phy_get(struct udevice *dev);
+
+inline struct rockchip_pcie_phy *pcie_get_phy(struct rockchip_pcie *pcie)
+{
+	return pcie->phy;
+}
+
+inline
+struct rockchip_pcie_phy_ops *phy_get_ops(struct rockchip_pcie_phy *phy)
+{
+	return (struct rockchip_pcie_phy_ops *)phy->ops;
+}
diff --git a/drivers/pci/pcie_rockchip_phy.c b/drivers/pci/pcie_rockchip_phy.c
new file mode 100644
index 0000000000..47f5d6c7e3
--- /dev/null
+++ b/drivers/pci/pcie_rockchip_phy.c
@@ -0,0 +1,205 @@
+// SPDX-License-Identifier: GPL-2.0+
+/*
+ * Rockchip PCIe PHY driver
+ *
+ * Copyright (c) 2016 Rockchip, Inc.
+ * Copyright (c) 2020 Amarula Solutions(India)
+ */
+
+#include <common.h>
+#include <clk.h>
+#include <dm.h>
+#include <dm/device_compat.h>
+#include <reset.h>
+#include <syscon.h>
+#include <asm/gpio.h>
+#include <asm/io.h>
+#include <linux/iopoll.h>
+#include <asm/arch-rockchip/clock.h>
+
+#include "pcie_rockchip.h"
+
+DECLARE_GLOBAL_DATA_PTR;
+
+static void phy_wr_cfg(struct rockchip_pcie_phy *phy, u32 addr, u32 data)
+{
+	u32 reg;
+
+	reg = HIWORD_UPDATE_MASK(data, PHY_CFG_DATA_MASK, PHY_CFG_DATA_SHIFT);
+	reg |= HIWORD_UPDATE_MASK(addr, PHY_CFG_ADDR_MASK, PHY_CFG_ADDR_SHIFT);
+	writel(reg, phy->reg_base + PCIE_PHY_CONF);
+
+	udelay(1);
+
+	reg = HIWORD_UPDATE_MASK(PHY_CFG_WR_ENABLE,
+				 PHY_CFG_WR_MASK,
+				 PHY_CFG_WR_SHIFT);
+	writel(reg, phy->reg_base + PCIE_PHY_CONF);
+
+	udelay(1);
+
+	reg = HIWORD_UPDATE_MASK(PHY_CFG_WR_DISABLE,
+				 PHY_CFG_WR_MASK,
+				 PHY_CFG_WR_SHIFT);
+	writel(reg, phy->reg_base + PCIE_PHY_CONF);
+}
+
+static int rockchip_pcie_phy_power_on(struct rockchip_pcie_phy *phy)
+{
+	int ret = 0;
+	u32 reg, status;
+
+	ret = reset_deassert(&phy->phy_rst);
+	if (ret) {
+		dev_err(dev, "failed to assert phy reset\n");
+		return ret;
+	}
+
+	reg = HIWORD_UPDATE_MASK(PHY_CFG_PLL_LOCK,
+				 PHY_CFG_ADDR_MASK,
+				 PHY_CFG_ADDR_SHIFT);
+	writel(reg, phy->reg_base + PCIE_PHY_CONF);
+
+	reg = HIWORD_UPDATE_MASK(!PHY_LANE_IDLE_OFF,
+				 PHY_LANE_IDLE_MASK,
+				 PHY_LANE_IDLE_A_SHIFT);
+	writel(reg, phy->reg_base + PCIE_PHY_LANEOFF);
+
+	ret = -EINVAL;
+	ret = readl_poll_sleep_timeout(phy->reg_base + PCIE_PHY_STATUS,
+				       status,
+				       status & PHY_PLL_LOCKED,
+				       20 * 1000,
+				       50);
+	if (ret) {
+		dev_err(&phy->dev, "pll lock timeout!\n");
+		goto err_pll_lock;
+	}
+
+	phy_wr_cfg(phy, PHY_CFG_CLK_TEST, PHY_CFG_SEPE_RATE);
+	phy_wr_cfg(phy, PHY_CFG_CLK_SCC, PHY_CFG_PLL_100M);
+
+	ret = -ETIMEDOUT;
+	ret = readl_poll_sleep_timeout(phy->reg_base + PCIE_PHY_STATUS,
+				       status,
+				       !(status & PHY_PLL_OUTPUT),
+				       20 * 1000,
+				       50);
+	if (ret) {
+		dev_err(&phy->dev, "pll output enable timeout!\n");
+		goto err_pll_lock;
+	}
+
+	reg = HIWORD_UPDATE_MASK(PHY_CFG_PLL_LOCK,
+				 PHY_CFG_ADDR_MASK,
+				 PHY_CFG_ADDR_SHIFT);
+	writel(reg, phy->reg_base + PCIE_PHY_CONF);
+
+	ret = -EINVAL;
+	ret = readl_poll_sleep_timeout(phy->reg_base + PCIE_PHY_STATUS,
+				       status,
+				       status & PHY_PLL_LOCKED,
+				       20 * 1000,
+				       50);
+	if (ret) {
+		dev_err(&phy->dev, "pll relock timeout!\n");
+		goto err_pll_lock;
+	}
+
+	return 0;
+
+err_pll_lock:
+	reset_assert(&phy->phy_rst);
+	return ret;
+}
+
+static int rockchip_pcie_phy_power_off(struct rockchip_pcie_phy *phy)
+{
+	int ret;
+	u32 reg;
+
+	reg = HIWORD_UPDATE_MASK(PHY_LANE_IDLE_OFF,
+				 PHY_LANE_IDLE_MASK,
+				 PHY_LANE_IDLE_A_SHIFT);
+	writel(reg, phy->reg_base + PCIE_PHY_LANEOFF);
+
+	ret = reset_assert(&phy->phy_rst);
+	if (ret) {
+		dev_err(dev, "failed to assert phy reset\n");
+		return ret;
+	}
+
+	return 0;
+}
+
+static int rockchip_pcie_phy_init(struct rockchip_pcie_phy *phy)
+{
+	int ret;
+
+	ret = clk_enable(&phy->refclk);
+	if (ret) {
+		dev_err(dev, "failed to enable refclk clock\n");
+		return ret;
+	}
+
+	ret = reset_assert(&phy->phy_rst);
+	if (ret) {
+		dev_err(dev, "failed to assert phy reset\n");
+		goto err_reset;
+	}
+
+	return 0;
+
+err_reset:
+	clk_disable(&phy->refclk);
+	return ret;
+}
+
+static int rockchip_pcie_phy_exit(struct rockchip_pcie_phy *phy)
+{
+	clk_disable(&phy->refclk);
+
+	return 0;
+}
+
+static struct rockchip_pcie_phy_ops pcie_phy_ops = {
+	.init = rockchip_pcie_phy_init,
+	.power_on = rockchip_pcie_phy_power_on,
+	.power_off = rockchip_pcie_phy_power_off,
+	.exit = rockchip_pcie_phy_exit,
+};
+
+int rockchip_pcie_phy_get(struct udevice *dev)
+{
+	struct rockchip_pcie *priv = dev_get_priv(dev);
+	struct rockchip_pcie_phy *phy_priv = &priv->rk_phy;
+	ofnode phy_node;
+	u32 phandle;
+	int ret;
+
+	phandle = dev_read_u32_default(dev, "phys", 0);
+	phy_node = ofnode_get_by_phandle(phandle);
+	if (!ofnode_valid(phy_node)) {
+		dev_err(dev, "failed to found pcie-phy\n");
+		return -ENODEV;
+	}
+
+	phy_priv->reg_base = syscon_get_first_range(ROCKCHIP_SYSCON_GRF);
+
+	ret = clk_get_by_index_nodev(phy_node, 0, &phy_priv->refclk);
+	if (ret) {
+		dev_err(dev, "failed to get refclk clock phandle\n");
+		return ret;
+	}
+
+	ret = reset_get_by_index_nodev(phy_node, 0, &phy_priv->phy_rst);
+	if (ret) {
+		dev_err(dev, "failed to get phy reset phandle\n");
+		return ret;
+	}
+
+	phy_priv->ops = &pcie_phy_ops;
+	priv->phy = phy_priv;
+
+	return 0;
+}
-- 
2.17.1
