From: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
Subject: [RFC 1/7] phy: Add Rockchip PCIe PHY driver
Date: Fri,  1 May 2020 03:15:23 +0530
Message-ID: <20200430214529.18887-2-jagan@amarulasolutions.com>
References: <20200430214529.18887-1-jagan@amarulasolutions.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane-mx.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <20200430214529.18887-1-jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane-mx.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Kever Yang <kever.yang-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, Simon Glass <sjg-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, Philipp Tomsich <philipp.tomsich-SN7IsUiht6C/RdPyistoZJqQE7yCjDx5@public.gmane.org>, Tom Rini <trini-OWPKS81ov/FWk0Htik3J/w@public.gmane.org>, Frank Wang <frank.wang-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, William Wu <william.wu-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, Shawn Lin <shawn.lin-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, Patrice Chotard <patrice.chotard-qxv4g6HH51o@public.gmane.org>
Cc: u-boot-0aAXYlwwYIKGBzrmiIFOJg@public.gmane.org, linux-amarula-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org, Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

Add the Rockchip PCIe PHY driver as part of
Generic PHY framework.

Signed-off-by: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
---
 drivers/Kconfig                          |   2 +
 drivers/Makefile                         |   1 +
 drivers/phy/rockchip/Kconfig             |   9 +
 drivers/phy/rockchip/Makefile            |   6 +
 drivers/phy/rockchip/phy-rockchip-pcie.c | 271 +++++++++++++++++++++++
 5 files changed, 289 insertions(+)
 create mode 100644 drivers/phy/rockchip/Kconfig
 create mode 100644 drivers/phy/rockchip/Makefile
 create mode 100644 drivers/phy/rockchip/phy-rockchip-pcie.c

diff --git a/drivers/Kconfig b/drivers/Kconfig
index e34a22708c..2fe23f953c 100644
--- a/drivers/Kconfig
+++ b/drivers/Kconfig
@@ -76,6 +76,8 @@ source "drivers/phy/allwinner/Kconfig"
 
 source "drivers/phy/marvell/Kconfig"
 
+source "drivers/phy/rockchip/Kconfig"
+
 source "drivers/pinctrl/Kconfig"
 
 source "drivers/power/Kconfig"
diff --git a/drivers/Makefile b/drivers/Makefile
index 4208750428..94e8c5da17 100644
--- a/drivers/Makefile
+++ b/drivers/Makefile
@@ -91,6 +91,7 @@ obj-y += dfu/
 obj-$(CONFIG_PCH) += pch/
 obj-y += phy/allwinner/
 obj-y += phy/marvell/
+obj-y += phy/rockchip/
 obj-y += rtc/
 obj-y += scsi/
 obj-y += sound/
diff --git a/drivers/phy/rockchip/Kconfig b/drivers/phy/rockchip/Kconfig
new file mode 100644
index 0000000000..477c68920b
--- /dev/null
+++ b/drivers/phy/rockchip/Kconfig
@@ -0,0 +1,9 @@
+#
+# Phy drivers for Rockchip platforms
+#
+config PHY_ROCKCHIP_PCIE
+	bool "Rockchip PCIe PHY Driver"
+	depends on ARCH_ROCKCHIP
+	select PHY
+	help
+	  Enable this to support the Rockchip PCIe PHY.
diff --git a/drivers/phy/rockchip/Makefile b/drivers/phy/rockchip/Makefile
new file mode 100644
index 0000000000..4d19ccdfd0
--- /dev/null
+++ b/drivers/phy/rockchip/Makefile
@@ -0,0 +1,6 @@
+# SPDX-License-Identifier: GPL-2.0+
+#
+# Copyright (C) 2020 Amarula Solutions(India)
+#
+
+obj-$(CONFIG_PHY_ROCKCHIP_PCIE)		+= phy-rockchip-pcie.o
diff --git a/drivers/phy/rockchip/phy-rockchip-pcie.c b/drivers/phy/rockchip/phy-rockchip-pcie.c
new file mode 100644
index 0000000000..83928cffe0
--- /dev/null
+++ b/drivers/phy/rockchip/phy-rockchip-pcie.c
@@ -0,0 +1,271 @@
+// SPDX-License-Identifier: (GPL-2.0-only)
+/*
+ * Rockchip PCIe PHY driver
+ *
+ * Copyright (C) 2020 Amarula Solutions(India)
+ * Copyright (C) 2016 Shawn Lin <shawn.lin-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
+ * Copyright (C) 2016 ROCKCHIP, Inc.
+ */
+
+#include <common.h>
+#include <clk.h>
+#include <dm.h>
+#include <dm/device_compat.h>
+#include <generic-phy.h>
+#include <reset.h>
+#include <syscon.h>
+#include <asm/gpio.h>
+#include <asm/io.h>
+#include <linux/iopoll.h>
+#include <asm/arch-rockchip/clock.h>
+
+DECLARE_GLOBAL_DATA_PTR;
+
+/*
+ * The higher 16-bit of this register is used for write protection
+ * only if BIT(x + 16) set to 1 the BIT(x) can be written.
+ */
+#define HIWORD_UPDATE(val, mask, shift) \
+		((val) << (shift) | (mask) << ((shift) + 16))
+
+#define PHY_MAX_LANE_NUM      4
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
+#define PHY_LANE_RX_DET_SHIFT 11
+#define PHY_LANE_RX_DET_TH    0x1
+#define PHY_LANE_IDLE_OFF     0x1
+#define PHY_LANE_IDLE_MASK    0x1
+#define PHY_LANE_IDLE_A_SHIFT 3
+#define PHY_LANE_IDLE_B_SHIFT 4
+#define PHY_LANE_IDLE_C_SHIFT 5
+#define PHY_LANE_IDLE_D_SHIFT 6
+
+struct rockchip_pcie_phy_data {
+	unsigned int pcie_conf;
+	unsigned int pcie_status;
+	unsigned int pcie_laneoff;
+};
+
+struct rockchip_pcie_phy {
+	void *reg_base;
+	struct clk refclk;
+	struct reset_ctl phy_rst;
+	const struct rockchip_pcie_phy_data *data;
+};
+
+static void phy_wr_cfg(struct rockchip_pcie_phy *priv, u32 addr, u32 data)
+{
+	u32 reg;
+
+	reg = HIWORD_UPDATE(data, PHY_CFG_DATA_MASK, PHY_CFG_DATA_SHIFT);
+	reg |= HIWORD_UPDATE(addr, PHY_CFG_ADDR_MASK, PHY_CFG_ADDR_SHIFT);
+	writel(reg, priv->reg_base + priv->data->pcie_conf);
+
+	udelay(1);
+
+	reg = HIWORD_UPDATE(PHY_CFG_WR_ENABLE,
+			    PHY_CFG_WR_MASK,
+			    PHY_CFG_WR_SHIFT);
+	writel(reg, priv->reg_base + priv->data->pcie_conf);
+
+	udelay(1);
+
+	reg = HIWORD_UPDATE(PHY_CFG_WR_DISABLE,
+			    PHY_CFG_WR_MASK,
+			    PHY_CFG_WR_SHIFT);
+	writel(reg, priv->reg_base + priv->data->pcie_conf);
+}
+
+static int rockchip_pcie_phy_power_on(struct phy *phy)
+{
+	struct rockchip_pcie_phy *priv = dev_get_priv(phy->dev);
+	int ret = 0;
+	u32 reg, status;
+
+	ret = reset_deassert(&priv->phy_rst);
+	if (ret) {
+		dev_err(dev, "failed to assert phy reset\n");
+		return ret;
+	}
+
+	reg = HIWORD_UPDATE(PHY_CFG_PLL_LOCK,
+			    PHY_CFG_ADDR_MASK,
+			    PHY_CFG_ADDR_SHIFT);
+	writel(reg, priv->reg_base + priv->data->pcie_conf);
+
+	reg = HIWORD_UPDATE(!PHY_LANE_IDLE_OFF,
+			    PHY_LANE_IDLE_MASK,
+			    PHY_LANE_IDLE_A_SHIFT);
+	writel(reg, priv->reg_base + priv->data->pcie_laneoff);
+
+	ret = -EINVAL;
+	ret = readl_poll_sleep_timeout(priv->reg_base + priv->data->pcie_status,
+				       status,
+				       status & PHY_PLL_LOCKED,
+				       20 * 1000,
+				       50);
+	if (ret) {
+		dev_err(&priv->dev, "pll lock timeout!\n");
+		goto err_pll_lock;
+	}
+
+	phy_wr_cfg(priv, PHY_CFG_CLK_TEST, PHY_CFG_SEPE_RATE);
+	phy_wr_cfg(priv, PHY_CFG_CLK_SCC, PHY_CFG_PLL_100M);
+
+	ret = -ETIMEDOUT;
+	ret = readl_poll_sleep_timeout(priv->reg_base + priv->data->pcie_status,
+				       status,
+				       !(status & PHY_PLL_OUTPUT),
+				       20 * 1000,
+				       50);
+	if (ret) {
+		dev_err(&priv->dev, "pll output enable timeout!\n");
+		goto err_pll_lock;
+	}
+
+	reg = HIWORD_UPDATE(PHY_CFG_PLL_LOCK,
+			    PHY_CFG_ADDR_MASK,
+			    PHY_CFG_ADDR_SHIFT);
+	writel(reg, priv->reg_base + priv->data->pcie_conf);
+
+	ret = -EINVAL;
+	ret = readl_poll_sleep_timeout(priv->reg_base + priv->data->pcie_status,
+				       status,
+				       status & PHY_PLL_LOCKED,
+				       20 * 1000,
+				       50);
+	if (ret) {
+		dev_err(&priv->dev, "pll relock timeout!\n");
+		goto err_pll_lock;
+	}
+
+	return 0;
+
+err_pll_lock:
+	reset_assert(&priv->phy_rst);
+	return ret;
+}
+
+static int rockchip_pcie_phy_power_off(struct phy *phy)
+{
+	struct rockchip_pcie_phy *priv = dev_get_priv(phy->dev);
+	int ret;
+	u32 reg;
+
+	reg = HIWORD_UPDATE(PHY_LANE_IDLE_OFF,
+			    PHY_LANE_IDLE_MASK,
+			    PHY_LANE_IDLE_A_SHIFT);
+	writel(reg, priv->reg_base + priv->data->pcie_laneoff);
+
+	ret = reset_assert(&priv->phy_rst);
+	if (ret) {
+		dev_err(dev, "failed to assert phy reset\n");
+		return ret;
+	}
+
+	return 0;
+}
+
+static int rockchip_pcie_phy_init(struct phy *phy)
+{
+	struct rockchip_pcie_phy *priv = dev_get_priv(phy->dev);
+	int ret;
+
+	ret = clk_enable(&priv->refclk);
+	if (ret) {
+		dev_err(dev, "failed to enable refclk clock\n");
+		return ret;
+	}
+
+	ret = reset_assert(&priv->phy_rst);
+	if (ret) {
+		dev_err(dev, "failed to assert phy reset\n");
+		goto err_reset;
+	}
+
+	return 0;
+
+err_reset:
+	clk_disable(&priv->refclk);
+	return ret;
+}
+
+static int rockchip_pcie_phy_exit(struct phy *phy)
+{
+	struct rockchip_pcie_phy *priv = dev_get_priv(phy->dev);
+
+	clk_disable(&priv->refclk);
+
+	return 0;
+}
+
+static struct phy_ops rockchip_pcie_phy_ops = {
+	.init = rockchip_pcie_phy_init,
+	.power_on = rockchip_pcie_phy_power_on,
+	.power_off = rockchip_pcie_phy_power_off,
+	.exit = rockchip_pcie_phy_exit,
+};
+
+static int rockchip_pcie_phy_probe(struct udevice *dev)
+{
+	struct rockchip_pcie_phy *priv = dev_get_priv(dev);
+	int ret;
+
+	priv->data = (const struct rockchip_pcie_phy_data *)
+						dev_get_driver_data(dev);
+	if (!priv->data)
+		return -EINVAL;
+
+	priv->reg_base = syscon_get_first_range(ROCKCHIP_SYSCON_GRF);
+
+	ret = clk_get_by_name(dev, "refclk", &priv->refclk);
+	if (ret) {
+		dev_err(dev, "failed to get refclk clock phandle\n");
+		return ret;
+	}
+
+	ret = reset_get_by_name(dev, "phy", &priv->phy_rst);
+	if (ret) {
+		dev_err(dev, "failed to get phy reset phandle\n");
+		return ret;
+	}
+
+	return 0;
+}
+
+static const struct rockchip_pcie_phy_data rk3399_pcie_data = {
+	.pcie_conf = 0xe220,
+	.pcie_status = 0xe2a4,
+	.pcie_laneoff = 0xe214,
+};
+
+static const struct udevice_id rockchip_pcie_phy_ids[] = {
+	{
+		.compatible = "rockchip,rk3399-pcie-phy",
+		.data = (ulong)&rk3399_pcie_data,
+	},
+	{ /* sentile */ }
+};
+
+U_BOOT_DRIVER(rockchip_pcie_phy) = {
+	.name	= "rockchip_pcie_phy",
+	.id	= UCLASS_PHY,
+	.of_match = rockchip_pcie_phy_ids,
+	.ops = &rockchip_pcie_phy_ops,
+	.probe = rockchip_pcie_phy_probe,
+	.priv_auto_alloc_size = sizeof(struct rockchip_pcie_phy),
+};
-- 
2.17.1
