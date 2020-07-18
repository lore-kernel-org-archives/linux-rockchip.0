From: Kever Yang <kever.yang@rock-chips.com>
Subject: Re: [PATCH 1/3] phy: Add Rockchip PCIe PHY driver
Date: Sat, 18 Jul 2020 19:56:59 +0800
Message-ID: <894b97b9-f30d-ad3f-71cd-d2b2e691e762@rock-chips.com>
References: <20200709181103.89870-1-jagan@amarulasolutions.com>
 <20200709181103.89870-2-jagan@amarulasolutions.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Return-path: <u-boot-bounces@lists.denx.de>
In-Reply-To: <20200709181103.89870-2-jagan@amarulasolutions.com>
Content-Language: en-US
List-Unsubscribe: <https://lists.denx.de/options/u-boot>,
 <mailto:u-boot-request@lists.denx.de?subject=unsubscribe>
List-Archive: <https://lists.denx.de/pipermail/u-boot/>
List-Post: <mailto:u-boot@lists.denx.de>
List-Help: <mailto:u-boot-request@lists.denx.de?subject=help>
List-Subscribe: <https://lists.denx.de/listinfo/u-boot>,
 <mailto:u-boot-request@lists.denx.de?subject=subscribe>
Errors-To: u-boot-bounces@lists.denx.de
Sender: "U-Boot" <u-boot-bounces@lists.denx.de>
To: Jagan Teki <jagan@amarulasolutions.com>, Philipp Tomsich <philipp.tomsich@theobroma-systems.com>, Simon Glass <sjg@chromium.org>, Shawn Lin <shawn.lin@rock-chips.com>
Cc: Suniel Mahesh <sunil@amarulasolutions.com>, U-Boot-Denx <u-boot@lists.denx.de>, linux-rockchip@lists.infradead.org, linux-amarula <linux-amarula@amarulasolutions.com>
List-Id: linux-rockchip.vger.kernel.org


On 2020/7/10 上午2:11, Jagan Teki wrote:
> Add the Rockchip PCIe PHY driver as part of
> Generic PHY framework.
>
> Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
Reviewed-by: Kever Yang<kever.yang@rock-chips.com>

Thanks,
- Kever
> ---
>   drivers/phy/rockchip/Kconfig             |   7 +
>   drivers/phy/rockchip/Makefile            |   1 +
>   drivers/phy/rockchip/phy-rockchip-pcie.c | 271 +++++++++++++++++++++++
>   3 files changed, 279 insertions(+)
>   create mode 100644 drivers/phy/rockchip/phy-rockchip-pcie.c
>
> diff --git a/drivers/phy/rockchip/Kconfig b/drivers/phy/rockchip/Kconfig
> index 84cc7c876d..2318e71f35 100644
> --- a/drivers/phy/rockchip/Kconfig
> +++ b/drivers/phy/rockchip/Kconfig
> @@ -11,6 +11,13 @@ config PHY_ROCKCHIP_INNO_USB2
>   	help
>   	  Support for Rockchip USB2.0 PHY with Innosilicon IP block.
>   
> +config PHY_ROCKCHIP_PCIE
> +	bool "Rockchip PCIe PHY Driver"
> +	depends on ARCH_ROCKCHIP
> +	select PHY
> +	help
> +	  Enable this to support the Rockchip PCIe PHY.
> +
>   config PHY_ROCKCHIP_TYPEC
>   	bool "Rockchip TYPEC PHY Driver"
>   	depends on ARCH_ROCKCHIP
> diff --git a/drivers/phy/rockchip/Makefile b/drivers/phy/rockchip/Makefile
> index 95b2f8a3c0..44049154f9 100644
> --- a/drivers/phy/rockchip/Makefile
> +++ b/drivers/phy/rockchip/Makefile
> @@ -4,4 +4,5 @@
>   #
>   
>   obj-$(CONFIG_PHY_ROCKCHIP_INNO_USB2)	+= phy-rockchip-inno-usb2.o
> +obj-$(CONFIG_PHY_ROCKCHIP_PCIE)		+= phy-rockchip-pcie.o
>   obj-$(CONFIG_PHY_ROCKCHIP_TYPEC)	+= phy-rockchip-typec.o
> diff --git a/drivers/phy/rockchip/phy-rockchip-pcie.c b/drivers/phy/rockchip/phy-rockchip-pcie.c
> new file mode 100644
> index 0000000000..83928cffe0
> --- /dev/null
> +++ b/drivers/phy/rockchip/phy-rockchip-pcie.c
> @@ -0,0 +1,271 @@
> +// SPDX-License-Identifier: (GPL-2.0-only)
> +/*
> + * Rockchip PCIe PHY driver
> + *
> + * Copyright (C) 2020 Amarula Solutions(India)
> + * Copyright (C) 2016 Shawn Lin <shawn.lin@rock-chips.com>
> + * Copyright (C) 2016 ROCKCHIP, Inc.
> + */
> +
> +#include <common.h>
> +#include <clk.h>
> +#include <dm.h>
> +#include <dm/device_compat.h>
> +#include <generic-phy.h>
> +#include <reset.h>
> +#include <syscon.h>
> +#include <asm/gpio.h>
> +#include <asm/io.h>
> +#include <linux/iopoll.h>
> +#include <asm/arch-rockchip/clock.h>
> +
> +DECLARE_GLOBAL_DATA_PTR;
> +
> +/*
> + * The higher 16-bit of this register is used for write protection
> + * only if BIT(x + 16) set to 1 the BIT(x) can be written.
> + */
> +#define HIWORD_UPDATE(val, mask, shift) \
> +		((val) << (shift) | (mask) << ((shift) + 16))
> +
> +#define PHY_MAX_LANE_NUM      4
> +#define PHY_CFG_DATA_SHIFT    7
> +#define PHY_CFG_ADDR_SHIFT    1
> +#define PHY_CFG_DATA_MASK     0xf
> +#define PHY_CFG_ADDR_MASK     0x3f
> +#define PHY_CFG_RD_MASK       0x3ff
> +#define PHY_CFG_WR_ENABLE     1
> +#define PHY_CFG_WR_DISABLE    1
> +#define PHY_CFG_WR_SHIFT      0
> +#define PHY_CFG_WR_MASK       1
> +#define PHY_CFG_PLL_LOCK      0x10
> +#define PHY_CFG_CLK_TEST      0x10
> +#define PHY_CFG_CLK_SCC       0x12
> +#define PHY_CFG_SEPE_RATE     BIT(3)
> +#define PHY_CFG_PLL_100M      BIT(3)
> +#define PHY_PLL_LOCKED        BIT(9)
> +#define PHY_PLL_OUTPUT        BIT(10)
> +#define PHY_LANE_RX_DET_SHIFT 11
> +#define PHY_LANE_RX_DET_TH    0x1
> +#define PHY_LANE_IDLE_OFF     0x1
> +#define PHY_LANE_IDLE_MASK    0x1
> +#define PHY_LANE_IDLE_A_SHIFT 3
> +#define PHY_LANE_IDLE_B_SHIFT 4
> +#define PHY_LANE_IDLE_C_SHIFT 5
> +#define PHY_LANE_IDLE_D_SHIFT 6
> +
> +struct rockchip_pcie_phy_data {
> +	unsigned int pcie_conf;
> +	unsigned int pcie_status;
> +	unsigned int pcie_laneoff;
> +};
> +
> +struct rockchip_pcie_phy {
> +	void *reg_base;
> +	struct clk refclk;
> +	struct reset_ctl phy_rst;
> +	const struct rockchip_pcie_phy_data *data;
> +};
> +
> +static void phy_wr_cfg(struct rockchip_pcie_phy *priv, u32 addr, u32 data)
> +{
> +	u32 reg;
> +
> +	reg = HIWORD_UPDATE(data, PHY_CFG_DATA_MASK, PHY_CFG_DATA_SHIFT);
> +	reg |= HIWORD_UPDATE(addr, PHY_CFG_ADDR_MASK, PHY_CFG_ADDR_SHIFT);
> +	writel(reg, priv->reg_base + priv->data->pcie_conf);
> +
> +	udelay(1);
> +
> +	reg = HIWORD_UPDATE(PHY_CFG_WR_ENABLE,
> +			    PHY_CFG_WR_MASK,
> +			    PHY_CFG_WR_SHIFT);
> +	writel(reg, priv->reg_base + priv->data->pcie_conf);
> +
> +	udelay(1);
> +
> +	reg = HIWORD_UPDATE(PHY_CFG_WR_DISABLE,
> +			    PHY_CFG_WR_MASK,
> +			    PHY_CFG_WR_SHIFT);
> +	writel(reg, priv->reg_base + priv->data->pcie_conf);
> +}
> +
> +static int rockchip_pcie_phy_power_on(struct phy *phy)
> +{
> +	struct rockchip_pcie_phy *priv = dev_get_priv(phy->dev);
> +	int ret = 0;
> +	u32 reg, status;
> +
> +	ret = reset_deassert(&priv->phy_rst);
> +	if (ret) {
> +		dev_err(dev, "failed to assert phy reset\n");
> +		return ret;
> +	}
> +
> +	reg = HIWORD_UPDATE(PHY_CFG_PLL_LOCK,
> +			    PHY_CFG_ADDR_MASK,
> +			    PHY_CFG_ADDR_SHIFT);
> +	writel(reg, priv->reg_base + priv->data->pcie_conf);
> +
> +	reg = HIWORD_UPDATE(!PHY_LANE_IDLE_OFF,
> +			    PHY_LANE_IDLE_MASK,
> +			    PHY_LANE_IDLE_A_SHIFT);
> +	writel(reg, priv->reg_base + priv->data->pcie_laneoff);
> +
> +	ret = -EINVAL;
> +	ret = readl_poll_sleep_timeout(priv->reg_base + priv->data->pcie_status,
> +				       status,
> +				       status & PHY_PLL_LOCKED,
> +				       20 * 1000,
> +				       50);
> +	if (ret) {
> +		dev_err(&priv->dev, "pll lock timeout!\n");
> +		goto err_pll_lock;
> +	}
> +
> +	phy_wr_cfg(priv, PHY_CFG_CLK_TEST, PHY_CFG_SEPE_RATE);
> +	phy_wr_cfg(priv, PHY_CFG_CLK_SCC, PHY_CFG_PLL_100M);
> +
> +	ret = -ETIMEDOUT;
> +	ret = readl_poll_sleep_timeout(priv->reg_base + priv->data->pcie_status,
> +				       status,
> +				       !(status & PHY_PLL_OUTPUT),
> +				       20 * 1000,
> +				       50);
> +	if (ret) {
> +		dev_err(&priv->dev, "pll output enable timeout!\n");
> +		goto err_pll_lock;
> +	}
> +
> +	reg = HIWORD_UPDATE(PHY_CFG_PLL_LOCK,
> +			    PHY_CFG_ADDR_MASK,
> +			    PHY_CFG_ADDR_SHIFT);
> +	writel(reg, priv->reg_base + priv->data->pcie_conf);
> +
> +	ret = -EINVAL;
> +	ret = readl_poll_sleep_timeout(priv->reg_base + priv->data->pcie_status,
> +				       status,
> +				       status & PHY_PLL_LOCKED,
> +				       20 * 1000,
> +				       50);
> +	if (ret) {
> +		dev_err(&priv->dev, "pll relock timeout!\n");
> +		goto err_pll_lock;
> +	}
> +
> +	return 0;
> +
> +err_pll_lock:
> +	reset_assert(&priv->phy_rst);
> +	return ret;
> +}
> +
> +static int rockchip_pcie_phy_power_off(struct phy *phy)
> +{
> +	struct rockchip_pcie_phy *priv = dev_get_priv(phy->dev);
> +	int ret;
> +	u32 reg;
> +
> +	reg = HIWORD_UPDATE(PHY_LANE_IDLE_OFF,
> +			    PHY_LANE_IDLE_MASK,
> +			    PHY_LANE_IDLE_A_SHIFT);
> +	writel(reg, priv->reg_base + priv->data->pcie_laneoff);
> +
> +	ret = reset_assert(&priv->phy_rst);
> +	if (ret) {
> +		dev_err(dev, "failed to assert phy reset\n");
> +		return ret;
> +	}
> +
> +	return 0;
> +}
> +
> +static int rockchip_pcie_phy_init(struct phy *phy)
> +{
> +	struct rockchip_pcie_phy *priv = dev_get_priv(phy->dev);
> +	int ret;
> +
> +	ret = clk_enable(&priv->refclk);
> +	if (ret) {
> +		dev_err(dev, "failed to enable refclk clock\n");
> +		return ret;
> +	}
> +
> +	ret = reset_assert(&priv->phy_rst);
> +	if (ret) {
> +		dev_err(dev, "failed to assert phy reset\n");
> +		goto err_reset;
> +	}
> +
> +	return 0;
> +
> +err_reset:
> +	clk_disable(&priv->refclk);
> +	return ret;
> +}
> +
> +static int rockchip_pcie_phy_exit(struct phy *phy)
> +{
> +	struct rockchip_pcie_phy *priv = dev_get_priv(phy->dev);
> +
> +	clk_disable(&priv->refclk);
> +
> +	return 0;
> +}
> +
> +static struct phy_ops rockchip_pcie_phy_ops = {
> +	.init = rockchip_pcie_phy_init,
> +	.power_on = rockchip_pcie_phy_power_on,
> +	.power_off = rockchip_pcie_phy_power_off,
> +	.exit = rockchip_pcie_phy_exit,
> +};
> +
> +static int rockchip_pcie_phy_probe(struct udevice *dev)
> +{
> +	struct rockchip_pcie_phy *priv = dev_get_priv(dev);
> +	int ret;
> +
> +	priv->data = (const struct rockchip_pcie_phy_data *)
> +						dev_get_driver_data(dev);
> +	if (!priv->data)
> +		return -EINVAL;
> +
> +	priv->reg_base = syscon_get_first_range(ROCKCHIP_SYSCON_GRF);
> +
> +	ret = clk_get_by_name(dev, "refclk", &priv->refclk);
> +	if (ret) {
> +		dev_err(dev, "failed to get refclk clock phandle\n");
> +		return ret;
> +	}
> +
> +	ret = reset_get_by_name(dev, "phy", &priv->phy_rst);
> +	if (ret) {
> +		dev_err(dev, "failed to get phy reset phandle\n");
> +		return ret;
> +	}
> +
> +	return 0;
> +}
> +
> +static const struct rockchip_pcie_phy_data rk3399_pcie_data = {
> +	.pcie_conf = 0xe220,
> +	.pcie_status = 0xe2a4,
> +	.pcie_laneoff = 0xe214,
> +};
> +
> +static const struct udevice_id rockchip_pcie_phy_ids[] = {
> +	{
> +		.compatible = "rockchip,rk3399-pcie-phy",
> +		.data = (ulong)&rk3399_pcie_data,
> +	},
> +	{ /* sentile */ }
> +};
> +
> +U_BOOT_DRIVER(rockchip_pcie_phy) = {
> +	.name	= "rockchip_pcie_phy",
> +	.id	= UCLASS_PHY,
> +	.of_match = rockchip_pcie_phy_ids,
> +	.ops = &rockchip_pcie_phy_ops,
> +	.probe = rockchip_pcie_phy_probe,
> +	.priv_auto_alloc_size = sizeof(struct rockchip_pcie_phy),
> +};
