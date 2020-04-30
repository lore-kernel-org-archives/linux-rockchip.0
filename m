From: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
Subject: [RFC 7/7] pci: rockchip: Drop legacy PHY driver
Date: Fri,  1 May 2020 03:15:29 +0530
Message-ID: <20200430214529.18887-8-jagan@amarulasolutions.com>
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

Drop the legacy PHY driver and it's associated code since
the PHY handling driver now part of Generic PHY framework.

Signed-off-by: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
---
 drivers/pci/Makefile            |   2 +-
 drivers/pci/pcie_rockchip.c     |  75 +++++++++++-
 drivers/pci/pcie_rockchip.h     | 147 -----------------------
 drivers/pci/pcie_rockchip_phy.c | 205 --------------------------------
 4 files changed, 74 insertions(+), 355 deletions(-)
 delete mode 100644 drivers/pci/pcie_rockchip.h
 delete mode 100644 drivers/pci/pcie_rockchip_phy.c

diff --git a/drivers/pci/Makefile b/drivers/pci/Makefile
index 955351c5c2..493e9354dd 100644
--- a/drivers/pci/Makefile
+++ b/drivers/pci/Makefile
@@ -43,4 +43,4 @@ obj-$(CONFIG_PCI_PHYTIUM) += pcie_phytium.o
 obj-$(CONFIG_PCIE_INTEL_FPGA) += pcie_intel_fpga.o
 obj-$(CONFIG_PCI_KEYSTONE) += pcie_dw_ti.o
 obj-$(CONFIG_PCIE_MEDIATEK) += pcie_mediatek.o
-obj-$(CONFIG_PCIE_ROCKCHIP) += pcie_rockchip.o pcie_rockchip_phy.o
+obj-$(CONFIG_PCIE_ROCKCHIP) += pcie_rockchip.o
diff --git a/drivers/pci/pcie_rockchip.c b/drivers/pci/pcie_rockchip.c
index 3e4ba9635f..cf24479f85 100644
--- a/drivers/pci/pcie_rockchip.c
+++ b/drivers/pci/pcie_rockchip.c
@@ -15,6 +15,7 @@
 #include <clk.h>
 #include <dm.h>
 #include <dm/device_compat.h>
+#include <generic-phy.h>
 #include <pci.h>
 #include <power-domain.h>
 #include <power/regulator.h>
@@ -25,10 +26,80 @@
 #include <asm/arch-rockchip/clock.h>
 #include <linux/iopoll.h>
 
-#include "pcie_rockchip.h"
-
 DECLARE_GLOBAL_DATA_PTR;
 
+#define HIWORD_UPDATE(mask, val)        (((mask) << 16) | (val))
+#define HIWORD_UPDATE_BIT(val)          HIWORD_UPDATE(val, val)
+
+#define ENCODE_LANES(x)                 ((((x) >> 1) & 3) << 4)
+#define PCIE_CLIENT_BASE                0x0
+#define PCIE_CLIENT_CONFIG              (PCIE_CLIENT_BASE + 0x00)
+#define PCIE_CLIENT_CONF_ENABLE         HIWORD_UPDATE_BIT(0x0001)
+#define PCIE_CLIENT_LINK_TRAIN_ENABLE   HIWORD_UPDATE_BIT(0x0002)
+#define PCIE_CLIENT_MODE_RC             HIWORD_UPDATE_BIT(0x0040)
+#define PCIE_CLIENT_GEN_SEL_1           HIWORD_UPDATE(0x0080, 0)
+#define PCIE_CLIENT_BASIC_STATUS1	0x0048
+#define PCIE_CLIENT_LINK_STATUS_UP	GENMASK(21, 20)
+#define PCIE_CLIENT_LINK_STATUS_MASK	GENMASK(21, 20)
+#define PCIE_LINK_UP(x) \
+	(((x) & PCIE_CLIENT_LINK_STATUS_MASK) == PCIE_CLIENT_LINK_STATUS_UP)
+#define PCIE_RC_NORMAL_BASE		0x800000
+#define PCIE_LM_BASE			0x900000
+#define PCIE_LM_VENDOR_ID              (PCIE_LM_BASE + 0x44)
+#define PCIE_LM_VENDOR_ROCKCHIP		0x1d87
+#define PCIE_LM_RCBAR			(PCIE_LM_BASE + 0x300)
+#define PCIE_LM_RCBARPIE		BIT(19)
+#define PCIE_LM_RCBARPIS		BIT(20)
+#define PCIE_RC_BASE			0xa00000
+#define PCIE_RC_CONFIG_DCR		(PCIE_RC_BASE + 0x0c4)
+#define PCIE_RC_CONFIG_DCR_CSPL_SHIFT	18
+#define PCIE_RC_CONFIG_DCR_CPLS_SHIFT	26
+#define PCIE_RC_PCIE_LCAP		(PCIE_RC_BASE + 0x0cc)
+#define PCIE_RC_PCIE_LCAP_APMS_L0S	BIT(10)
+#define PCIE_ATR_BASE			0xc00000
+#define PCIE_ATR_OB_ADDR0(i)		(PCIE_ATR_BASE + 0x000 + (i) * 0x20)
+#define PCIE_ATR_OB_ADDR1(i)		(PCIE_ATR_BASE + 0x004 + (i) * 0x20)
+#define PCIE_ATR_OB_DESC0(i)		(PCIE_ATR_BASE + 0x008 + (i) * 0x20)
+#define PCIE_ATR_OB_DESC1(i)		(PCIE_ATR_BASE + 0x00c + (i) * 0x20)
+#define PCIE_ATR_IB_ADDR0(i)		(PCIE_ATR_BASE + 0x800 + (i) * 0x8)
+#define PCIE_ATR_IB_ADDR1(i)		(PCIE_ATR_BASE + 0x804 + (i) * 0x8)
+#define PCIE_ATR_HDR_MEM		0x2
+#define PCIE_ATR_HDR_IO			0x6
+#define PCIE_ATR_HDR_CFG_TYPE0		0xa
+#define PCIE_ATR_HDR_CFG_TYPE1		0xb
+#define PCIE_ATR_HDR_RID		BIT(23)
+
+#define PCIE_ATR_OB_REGION0_SIZE	(32 * 1024 * 1024)
+#define PCIE_ATR_OB_REGION_SIZE		(1 * 1024 * 1024)
+
+struct rockchip_pcie {
+	fdt_addr_t axi_base;
+	fdt_addr_t apb_base;
+	int first_busno;
+	struct udevice *dev;
+
+	/* resets */
+	struct reset_ctl core_rst;
+	struct reset_ctl mgmt_rst;
+	struct reset_ctl mgmt_sticky_rst;
+	struct reset_ctl pipe_rst;
+	struct reset_ctl pm_rst;
+	struct reset_ctl pclk_rst;
+	struct reset_ctl aclk_rst;
+
+	/* gpio */
+	struct gpio_desc ep_gpio;
+
+	/* vpcie regulators */
+	struct udevice *vpcie12v;
+	struct udevice *vpcie3v3;
+	struct udevice *vpcie1v8;
+	struct udevice *vpcie0v9;
+
+	/* phy */
+	struct phy pcie_phy;
+};
+
 static int rockchip_pcie_off_conf(pci_dev_t bdf, uint offset)
 {
 	unsigned int bus = PCI_BUS(bdf);
diff --git a/drivers/pci/pcie_rockchip.h b/drivers/pci/pcie_rockchip.h
deleted file mode 100644
index 4b06110bfe..0000000000
--- a/drivers/pci/pcie_rockchip.h
+++ /dev/null
@@ -1,147 +0,0 @@
-/* SPDX-License-Identifier: GPL-2.0+ */
-/*
- * Rockchip PCIe Headers
- *
- * Copyright (c) 2016 Rockchip, Inc.
- * Copyright (c) 2020 Amarula Solutions(India)
- * Copyright (c) 2020 Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
- * Copyright (c) 2019 Patrick Wildt <patrick-Er2xLVyhcs+zQB+pC5nmwQ@public.gmane.org>
- *
- */
-
-#include <generic-phy.h>
-
-#define HIWORD_UPDATE(mask, val)        (((mask) << 16) | (val))
-#define HIWORD_UPDATE_BIT(val)          HIWORD_UPDATE(val, val)
-
-#define ENCODE_LANES(x)                 ((((x) >> 1) & 3) << 4)
-#define PCIE_CLIENT_BASE                0x0
-#define PCIE_CLIENT_CONFIG              (PCIE_CLIENT_BASE + 0x00)
-#define PCIE_CLIENT_CONF_ENABLE         HIWORD_UPDATE_BIT(0x0001)
-#define PCIE_CLIENT_LINK_TRAIN_ENABLE   HIWORD_UPDATE_BIT(0x0002)
-#define PCIE_CLIENT_MODE_RC             HIWORD_UPDATE_BIT(0x0040)
-#define PCIE_CLIENT_GEN_SEL_1           HIWORD_UPDATE(0x0080, 0)
-#define PCIE_CLIENT_BASIC_STATUS1	0x0048
-#define PCIE_CLIENT_LINK_STATUS_UP	GENMASK(21, 20)
-#define PCIE_CLIENT_LINK_STATUS_MASK	GENMASK(21, 20)
-#define PCIE_LINK_UP(x) \
-	(((x) & PCIE_CLIENT_LINK_STATUS_MASK) == PCIE_CLIENT_LINK_STATUS_UP)
-#define PCIE_RC_NORMAL_BASE		0x800000
-#define PCIE_LM_BASE			0x900000
-#define PCIE_LM_VENDOR_ID              (PCIE_LM_BASE + 0x44)
-#define PCIE_LM_VENDOR_ROCKCHIP		0x1d87
-#define PCIE_LM_RCBAR			(PCIE_LM_BASE + 0x300)
-#define PCIE_LM_RCBARPIE		BIT(19)
-#define PCIE_LM_RCBARPIS		BIT(20)
-#define PCIE_RC_BASE			0xa00000
-#define PCIE_RC_CONFIG_DCR		(PCIE_RC_BASE + 0x0c4)
-#define PCIE_RC_CONFIG_DCR_CSPL_SHIFT	18
-#define PCIE_RC_CONFIG_DCR_CPLS_SHIFT	26
-#define PCIE_RC_PCIE_LCAP		(PCIE_RC_BASE + 0x0cc)
-#define PCIE_RC_PCIE_LCAP_APMS_L0S	BIT(10)
-#define PCIE_ATR_BASE			0xc00000
-#define PCIE_ATR_OB_ADDR0(i)		(PCIE_ATR_BASE + 0x000 + (i) * 0x20)
-#define PCIE_ATR_OB_ADDR1(i)		(PCIE_ATR_BASE + 0x004 + (i) * 0x20)
-#define PCIE_ATR_OB_DESC0(i)		(PCIE_ATR_BASE + 0x008 + (i) * 0x20)
-#define PCIE_ATR_OB_DESC1(i)		(PCIE_ATR_BASE + 0x00c + (i) * 0x20)
-#define PCIE_ATR_IB_ADDR0(i)		(PCIE_ATR_BASE + 0x800 + (i) * 0x8)
-#define PCIE_ATR_IB_ADDR1(i)		(PCIE_ATR_BASE + 0x804 + (i) * 0x8)
-#define PCIE_ATR_HDR_MEM		0x2
-#define PCIE_ATR_HDR_IO			0x6
-#define PCIE_ATR_HDR_CFG_TYPE0		0xa
-#define PCIE_ATR_HDR_CFG_TYPE1		0xb
-#define PCIE_ATR_HDR_RID		BIT(23)
-
-#define PCIE_ATR_OB_REGION0_SIZE	(32 * 1024 * 1024)
-#define PCIE_ATR_OB_REGION_SIZE		(1 * 1024 * 1024)
-
-/*
- * The higher 16-bit of this register is used for write protection
- * only if BIT(x + 16) set to 1 the BIT(x) can be written.
- */
-#define HIWORD_UPDATE_MASK(val, mask, shift) \
-		((val) << (shift) | (mask) << ((shift) + 16))
-
-#define PHY_CFG_DATA_SHIFT    7
-#define PHY_CFG_ADDR_SHIFT    1
-#define PHY_CFG_DATA_MASK     0xf
-#define PHY_CFG_ADDR_MASK     0x3f
-#define PHY_CFG_RD_MASK       0x3ff
-#define PHY_CFG_WR_ENABLE     1
-#define PHY_CFG_WR_DISABLE    1
-#define PHY_CFG_WR_SHIFT      0
-#define PHY_CFG_WR_MASK       1
-#define PHY_CFG_PLL_LOCK      0x10
-#define PHY_CFG_CLK_TEST      0x10
-#define PHY_CFG_CLK_SCC       0x12
-#define PHY_CFG_SEPE_RATE     BIT(3)
-#define PHY_CFG_PLL_100M      BIT(3)
-#define PHY_PLL_LOCKED        BIT(9)
-#define PHY_PLL_OUTPUT        BIT(10)
-#define PHY_LANE_IDLE_OFF     0x1
-#define PHY_LANE_IDLE_MASK    0x1
-#define PHY_LANE_IDLE_A_SHIFT 3
-#define PHY_LANE_IDLE_B_SHIFT 4
-#define PHY_LANE_IDLE_C_SHIFT 5
-#define PHY_LANE_IDLE_D_SHIFT 6
-
-#define PCIE_PHY_CONF		0xe220
-#define PCIE_PHY_STATUS		0xe2a4
-#define PCIE_PHY_LANEOFF	0xe214
-
-struct rockchip_pcie_phy {
-	void *reg_base;
-	struct clk refclk;
-	struct reset_ctl phy_rst;
-	struct rockchip_pcie_phy_ops *ops;
-};
-
-struct rockchip_pcie_phy_ops {
-	int (*init)(struct rockchip_pcie_phy *phy);
-	int (*exit)(struct rockchip_pcie_phy *phy);
-	int (*power_on)(struct rockchip_pcie_phy *phy);
-	int (*power_off)(struct rockchip_pcie_phy *phy);
-};
-
-struct rockchip_pcie {
-	fdt_addr_t axi_base;
-	fdt_addr_t apb_base;
-	int first_busno;
-	struct udevice *dev;
-	struct rockchip_pcie_phy rk_phy;
-	struct rockchip_pcie_phy *phy;
-
-	/* resets */
-	struct reset_ctl core_rst;
-	struct reset_ctl mgmt_rst;
-	struct reset_ctl mgmt_sticky_rst;
-	struct reset_ctl pipe_rst;
-	struct reset_ctl pm_rst;
-	struct reset_ctl pclk_rst;
-	struct reset_ctl aclk_rst;
-
-	/* gpio */
-	struct gpio_desc ep_gpio;
-
-	/* vpcie regulators */
-	struct udevice *vpcie12v;
-	struct udevice *vpcie3v3;
-	struct udevice *vpcie1v8;
-	struct udevice *vpcie0v9;
-
-	/* phy */
-	struct phy pcie_phy;
-};
-
-int rockchip_pcie_phy_get(struct udevice *dev);
-
-inline struct rockchip_pcie_phy *pcie_get_phy(struct rockchip_pcie *pcie)
-{
-	return pcie->phy;
-}
-
-inline
-struct rockchip_pcie_phy_ops *phy_get_ops(struct rockchip_pcie_phy *phy)
-{
-	return (struct rockchip_pcie_phy_ops *)phy->ops;
-}
diff --git a/drivers/pci/pcie_rockchip_phy.c b/drivers/pci/pcie_rockchip_phy.c
deleted file mode 100644
index 47f5d6c7e3..0000000000
--- a/drivers/pci/pcie_rockchip_phy.c
+++ /dev/null
@@ -1,205 +0,0 @@
-// SPDX-License-Identifier: GPL-2.0+
-/*
- * Rockchip PCIe PHY driver
- *
- * Copyright (c) 2016 Rockchip, Inc.
- * Copyright (c) 2020 Amarula Solutions(India)
- */
-
-#include <common.h>
-#include <clk.h>
-#include <dm.h>
-#include <dm/device_compat.h>
-#include <reset.h>
-#include <syscon.h>
-#include <asm/gpio.h>
-#include <asm/io.h>
-#include <linux/iopoll.h>
-#include <asm/arch-rockchip/clock.h>
-
-#include "pcie_rockchip.h"
-
-DECLARE_GLOBAL_DATA_PTR;
-
-static void phy_wr_cfg(struct rockchip_pcie_phy *phy, u32 addr, u32 data)
-{
-	u32 reg;
-
-	reg = HIWORD_UPDATE_MASK(data, PHY_CFG_DATA_MASK, PHY_CFG_DATA_SHIFT);
-	reg |= HIWORD_UPDATE_MASK(addr, PHY_CFG_ADDR_MASK, PHY_CFG_ADDR_SHIFT);
-	writel(reg, phy->reg_base + PCIE_PHY_CONF);
-
-	udelay(1);
-
-	reg = HIWORD_UPDATE_MASK(PHY_CFG_WR_ENABLE,
-				 PHY_CFG_WR_MASK,
-				 PHY_CFG_WR_SHIFT);
-	writel(reg, phy->reg_base + PCIE_PHY_CONF);
-
-	udelay(1);
-
-	reg = HIWORD_UPDATE_MASK(PHY_CFG_WR_DISABLE,
-				 PHY_CFG_WR_MASK,
-				 PHY_CFG_WR_SHIFT);
-	writel(reg, phy->reg_base + PCIE_PHY_CONF);
-}
-
-static int rockchip_pcie_phy_power_on(struct rockchip_pcie_phy *phy)
-{
-	int ret = 0;
-	u32 reg, status;
-
-	ret = reset_deassert(&phy->phy_rst);
-	if (ret) {
-		dev_err(dev, "failed to assert phy reset\n");
-		return ret;
-	}
-
-	reg = HIWORD_UPDATE_MASK(PHY_CFG_PLL_LOCK,
-				 PHY_CFG_ADDR_MASK,
-				 PHY_CFG_ADDR_SHIFT);
-	writel(reg, phy->reg_base + PCIE_PHY_CONF);
-
-	reg = HIWORD_UPDATE_MASK(!PHY_LANE_IDLE_OFF,
-				 PHY_LANE_IDLE_MASK,
-				 PHY_LANE_IDLE_A_SHIFT);
-	writel(reg, phy->reg_base + PCIE_PHY_LANEOFF);
-
-	ret = -EINVAL;
-	ret = readl_poll_sleep_timeout(phy->reg_base + PCIE_PHY_STATUS,
-				       status,
-				       status & PHY_PLL_LOCKED,
-				       20 * 1000,
-				       50);
-	if (ret) {
-		dev_err(&phy->dev, "pll lock timeout!\n");
-		goto err_pll_lock;
-	}
-
-	phy_wr_cfg(phy, PHY_CFG_CLK_TEST, PHY_CFG_SEPE_RATE);
-	phy_wr_cfg(phy, PHY_CFG_CLK_SCC, PHY_CFG_PLL_100M);
-
-	ret = -ETIMEDOUT;
-	ret = readl_poll_sleep_timeout(phy->reg_base + PCIE_PHY_STATUS,
-				       status,
-				       !(status & PHY_PLL_OUTPUT),
-				       20 * 1000,
-				       50);
-	if (ret) {
-		dev_err(&phy->dev, "pll output enable timeout!\n");
-		goto err_pll_lock;
-	}
-
-	reg = HIWORD_UPDATE_MASK(PHY_CFG_PLL_LOCK,
-				 PHY_CFG_ADDR_MASK,
-				 PHY_CFG_ADDR_SHIFT);
-	writel(reg, phy->reg_base + PCIE_PHY_CONF);
-
-	ret = -EINVAL;
-	ret = readl_poll_sleep_timeout(phy->reg_base + PCIE_PHY_STATUS,
-				       status,
-				       status & PHY_PLL_LOCKED,
-				       20 * 1000,
-				       50);
-	if (ret) {
-		dev_err(&phy->dev, "pll relock timeout!\n");
-		goto err_pll_lock;
-	}
-
-	return 0;
-
-err_pll_lock:
-	reset_assert(&phy->phy_rst);
-	return ret;
-}
-
-static int rockchip_pcie_phy_power_off(struct rockchip_pcie_phy *phy)
-{
-	int ret;
-	u32 reg;
-
-	reg = HIWORD_UPDATE_MASK(PHY_LANE_IDLE_OFF,
-				 PHY_LANE_IDLE_MASK,
-				 PHY_LANE_IDLE_A_SHIFT);
-	writel(reg, phy->reg_base + PCIE_PHY_LANEOFF);
-
-	ret = reset_assert(&phy->phy_rst);
-	if (ret) {
-		dev_err(dev, "failed to assert phy reset\n");
-		return ret;
-	}
-
-	return 0;
-}
-
-static int rockchip_pcie_phy_init(struct rockchip_pcie_phy *phy)
-{
-	int ret;
-
-	ret = clk_enable(&phy->refclk);
-	if (ret) {
-		dev_err(dev, "failed to enable refclk clock\n");
-		return ret;
-	}
-
-	ret = reset_assert(&phy->phy_rst);
-	if (ret) {
-		dev_err(dev, "failed to assert phy reset\n");
-		goto err_reset;
-	}
-
-	return 0;
-
-err_reset:
-	clk_disable(&phy->refclk);
-	return ret;
-}
-
-static int rockchip_pcie_phy_exit(struct rockchip_pcie_phy *phy)
-{
-	clk_disable(&phy->refclk);
-
-	return 0;
-}
-
-static struct rockchip_pcie_phy_ops pcie_phy_ops = {
-	.init = rockchip_pcie_phy_init,
-	.power_on = rockchip_pcie_phy_power_on,
-	.power_off = rockchip_pcie_phy_power_off,
-	.exit = rockchip_pcie_phy_exit,
-};
-
-int rockchip_pcie_phy_get(struct udevice *dev)
-{
-	struct rockchip_pcie *priv = dev_get_priv(dev);
-	struct rockchip_pcie_phy *phy_priv = &priv->rk_phy;
-	ofnode phy_node;
-	u32 phandle;
-	int ret;
-
-	phandle = dev_read_u32_default(dev, "phys", 0);
-	phy_node = ofnode_get_by_phandle(phandle);
-	if (!ofnode_valid(phy_node)) {
-		dev_err(dev, "failed to found pcie-phy\n");
-		return -ENODEV;
-	}
-
-	phy_priv->reg_base = syscon_get_first_range(ROCKCHIP_SYSCON_GRF);
-
-	ret = clk_get_by_index_nodev(phy_node, 0, &phy_priv->refclk);
-	if (ret) {
-		dev_err(dev, "failed to get refclk clock phandle\n");
-		return ret;
-	}
-
-	ret = reset_get_by_index_nodev(phy_node, 0, &phy_priv->phy_rst);
-	if (ret) {
-		dev_err(dev, "failed to get phy reset phandle\n");
-		return ret;
-	}
-
-	phy_priv->ops = &pcie_phy_ops;
-	priv->phy = phy_priv;
-
-	return 0;
-}
-- 
2.17.1
