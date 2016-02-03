From: Kishon Vijay Abraham I <kishon-l0cyMroinI0@public.gmane.org>
Subject: Re: [PATCH v2 2/2] phy: add a driver for the Rockchip SoC internal
 eMMC PHY
Date: Wed, 3 Feb 2016 12:09:35 +0530
Message-ID: <56B1A0A7.7060109@ti.com>
References: <1451956034-24421-1-git-send-email-shawn.lin@rock-chips.com>
 <1451956081-24501-1-git-send-email-shawn.lin@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <1451956081-24501-1-git-send-email-shawn.lin-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Shawn Lin <shawn.lin-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Cc: linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

Hi,

On Tuesday 05 January 2016 06:38 AM, Shawn Lin wrote:
> This patch to add a generic PHY driver for ROCKCHIP eMMC PHY.
> Access the PHY via registers provided by GRF (general register
> files) module.
> 
> Signed-off-by: Shawn Lin <shawn.lin-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
> 
> ---
> 
> Changes in v2:
> - remove phy from rockchip_emmc_phy
> - remove state from rockchip_emmc_phy
> - remove on/off from init/exit
> 
>  drivers/phy/Kconfig             |   7 ++
>  drivers/phy/Makefile            |   1 +
>  drivers/phy/phy-rockchip-emmc.c | 241 ++++++++++++++++++++++++++++++++++++++++
>  3 files changed, 249 insertions(+)
>  create mode 100644 drivers/phy/phy-rockchip-emmc.c
> 
> diff --git a/drivers/phy/Kconfig b/drivers/phy/Kconfig
> index 03cb3ea..47d16e3 100644
> --- a/drivers/phy/Kconfig
> +++ b/drivers/phy/Kconfig
> @@ -320,6 +320,13 @@ config PHY_ROCKCHIP_USB
>  	help
>  	  Enable this to support the Rockchip USB 2.0 PHY.
>  
> +config PHY_ROCKCHIP_EMMC
> +	tristate "Rockchip EMMC PHY Driver"
> +	depends on ARCH_ROCKCHIP && OF
> +	select GENERIC_PHY
> +	help
> +	  Enable this to support the Rockchip EMMC PHY.
> +
>  config PHY_ST_SPEAR1310_MIPHY
>  	tristate "ST SPEAR1310-MIPHY driver"
>  	select GENERIC_PHY
> diff --git a/drivers/phy/Makefile b/drivers/phy/Makefile
> index 075db1a..ed8f175 100644
> --- a/drivers/phy/Makefile
> +++ b/drivers/phy/Makefile
> @@ -35,6 +35,7 @@ phy-exynos-usb2-$(CONFIG_PHY_S5PV210_USB2)	+= phy-s5pv210-usb2.o
>  obj-$(CONFIG_PHY_EXYNOS5_USBDRD)	+= phy-exynos5-usbdrd.o
>  obj-$(CONFIG_PHY_QCOM_APQ8064_SATA)	+= phy-qcom-apq8064-sata.o
>  obj-$(CONFIG_PHY_ROCKCHIP_USB) += phy-rockchip-usb.o
> +obj-$(CONFIG_PHY_ROCKCHIP_EMMC) += phy-rockchip-emmc.o
>  obj-$(CONFIG_PHY_QCOM_IPQ806X_SATA)	+= phy-qcom-ipq806x-sata.o
>  obj-$(CONFIG_PHY_ST_SPEAR1310_MIPHY)	+= phy-spear1310-miphy.o
>  obj-$(CONFIG_PHY_ST_SPEAR1340_MIPHY)	+= phy-spear1340-miphy.o
> diff --git a/drivers/phy/phy-rockchip-emmc.c b/drivers/phy/phy-rockchip-emmc.c
> new file mode 100644
> index 0000000..6a157c2
> --- /dev/null
> +++ b/drivers/phy/phy-rockchip-emmc.c
> @@ -0,0 +1,241 @@
> +/*
> + * Rockchip emmc PHY driver
> + *
> + * Copyright (C) 2015 Shawn Lin <shawn.lin-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
> + * Copyright (C) 2015 ROCKCHIP, Inc.

2016?
> + *
> + * This program is free software; you can redistribute it and/or modify
> + * it under the terms of the GNU General Public License as published by
> + * the Free Software Foundation; either version 2 of the License.
> + *
> + * This program is distributed in the hope that it will be useful,
> + * but WITHOUT ANY WARRANTY; without even the implied warranty of
> + * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> + * GNU General Public License for more details.
> + */
> +
> +#include <linux/delay.h>
> +#include <linux/mfd/syscon.h>
> +#include <linux/module.h>
> +#include <linux/of.h>
> +#include <linux/of_address.h>
> +#include <linux/phy/phy.h>
> +#include <linux/platform_device.h>
> +#include <linux/regmap.h>
> +
> +/*
> + * The higher 16-bit of this register is used for write protection
> + * only if BIT(x + 16) set to 1 the BIT(x) can be written.
> + */
> +#define HIWORD_UPDATE(val, mask, shift) \
> +		((val) << (shift) | (mask) << ((shift) + 16))
> +
> +/* Register definition */
> +#define GRF_EMMCPHY_CON0	0x0
> +#define GRF_EMMCPHY_CON1	0x4
> +#define GRF_EMMCPHY_CON2	0x8
> +#define GRF_EMMCPHY_CON3	0xc
> +#define GRF_EMMCPHY_CON4	0x10
> +#define GRF_EMMCPHY_CON5	0x14
> +#define GRF_EMMCPHY_CON6	0x18
> +#define GRF_EMMCPHY_STATUS	0x20
> +
> +#define PHYCTRL_PDB_MASK	0x1
> +#define PHYCTRL_PDB_SHIFT	0x0
> +#define PHYCTRL_PDB_PWR_ON	0x1
> +#define PHYCTRL_PDB_PWR_OFF	0x0
> +#define PHYCTRL_ENDLL_MASK	0x1
> +#define PHYCTRL_ENDLL_SHIFT     0x1
> +#define PHYCTRL_ENDLL_ENABLE	0x1
> +#define PHYCTRL_ENDLL_DISABLE	0x0
> +#define PHYCTRL_CALDONE_MASK	0x1
> +#define PHYCTRL_CALDONE_SHIFT   0x6
> +#define PHYCTRL_CALDONE_DONE	0x1
> +#define PHYCTRL_CALDONE_GOING	0x0
> +#define PHYCTRL_DLLRDY_MASK	0x1
> +#define PHYCTRL_DLLRDY_SHIFT	0x5
> +#define PHYCTRL_DLLRDY_DONE	0x1
> +#define PHYCTRL_DLLRDY_GOING	0x0
> +
> +struct rockchip_emmc_phy {
> +	unsigned int	reg_offset;
> +	struct regmap	*reg_base;
> +};
> +
> +static int rockchip_emmc_phy_power(struct rockchip_emmc_phy *rk_phy,
> +				   bool on_off)
> +{
> +	unsigned int caldone;
> +	unsigned int dllrdy;
> +
> +	/*
> +	 * Keep phyctrl_pdb and phyctrl_endll low to allow
> +	 * initialization of CALIO state M/C DFFs
> +	 */
> +	regmap_write(rk_phy->reg_base,
> +		     rk_phy->reg_offset + GRF_EMMCPHY_CON6,
> +		     HIWORD_UPDATE(PHYCTRL_PDB_PWR_OFF,
> +				   PHYCTRL_PDB_MASK,
> +				   PHYCTRL_PDB_SHIFT));
> +	regmap_write(rk_phy->reg_base,
> +		     rk_phy->reg_offset + GRF_EMMCPHY_CON6,
> +		     HIWORD_UPDATE(PHYCTRL_ENDLL_DISABLE,
> +				   PHYCTRL_ENDLL_MASK,
> +				   PHYCTRL_ENDLL_SHIFT));
> +
> +	/* Already finish power_off above */
> +	if (on_off == PHYCTRL_PDB_PWR_OFF)
> +		return 0;
> +
> +	/*
> +	 * According to the user manual, calpad calibration
> +	 * cycle takes more than 2us without the minimal recommended
> +	 * value, so we may need a little margin here
> +	 */
> +	udelay(3);
> +	regmap_write(rk_phy->reg_base,
> +		     rk_phy->reg_offset + GRF_EMMCPHY_CON6,
> +		     HIWORD_UPDATE(PHYCTRL_PDB_PWR_ON,
> +				   PHYCTRL_PDB_MASK,
> +				   PHYCTRL_PDB_SHIFT));
> +
> +	/*
> +	 * According to the user manual, it asks driver to
> +	 * wait 5us for calpad busy trimming
> +	 */
> +	udelay(5);
> +	regmap_read(rk_phy->reg_base,
> +		    rk_phy->reg_offset + GRF_EMMCPHY_STATUS,
> +		    &caldone);
> +	caldone = (caldone >> PHYCTRL_CALDONE_SHIFT) & PHYCTRL_CALDONE_MASK;
> +	if (caldone != PHYCTRL_CALDONE_DONE) {
> +		pr_err("rockchip_emmc_phy_power: caldone timeout.\n");
> +		return -ETIMEDOUT;
> +	}
> +
> +	/*
> +	 * Enable analog DLL circuits, and we need extra 10.2us
> +	 * for dll to be ready for work.
> +	 */
> +	regmap_write(rk_phy->reg_base,
> +		     rk_phy->reg_offset + GRF_EMMCPHY_CON6,
> +		     HIWORD_UPDATE(PHYCTRL_ENDLL_ENABLE,
> +				   PHYCTRL_ENDLL_MASK,
> +				   PHYCTRL_ENDLL_SHIFT));
> +	udelay(11);

add a comment for this delay too.
> +	regmap_read(rk_phy->reg_base,
> +		    rk_phy->reg_offset + GRF_EMMCPHY_STATUS,
> +		    &dllrdy);
> +	dllrdy = (dllrdy >> PHYCTRL_DLLRDY_SHIFT) & PHYCTRL_DLLRDY_MASK;
> +	if (dllrdy != PHYCTRL_DLLRDY_DONE) {
> +		pr_err("rockchip_emmc_phy_power: dllrdy timeout.\n");
> +		return -ETIMEDOUT;
> +	}
> +
> +	return 0;
> +}
> +
> +static int rockchip_emmc_phy_power_off(struct phy *phy)
> +{
> +	struct rockchip_emmc_phy *rk_phy = phy_get_drvdata(phy);
> +	int ret = 0;
> +
> +	/* Power down emmc phy analog blocks */
> +	ret = rockchip_emmc_phy_power(rk_phy, PHYCTRL_PDB_PWR_OFF);
> +	if (ret)
> +		return ret;
> +
> +	return 0;
> +}
> +
> +static int rockchip_emmc_phy_power_on(struct phy *phy)
> +{
> +	struct rockchip_emmc_phy *rk_phy = phy_get_drvdata(phy);
> +	int ret = 0;
> +
> +	/* Power up emmc phy analog blocks */
> +	ret = rockchip_emmc_phy_power(rk_phy, PHYCTRL_PDB_PWR_ON);
> +	if (ret)
> +		return ret;
> +
> +	return 0;
> +}
> +
> +static int rockchip_emmc_phy_init(struct phy *phy)
> +{
> +	return 0;
> +}
> +
> +static int rockchip_emmc_phy_exit(struct phy *phy)
> +{
> +	return 0;
> +}

empty init/exit functions are not required.

Thanks
Kishon
