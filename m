From: hl <hl@rock-chips.com>
Subject: Re: [RFC PATCH v1 4/6] PM / devfreq: event: support rockchip dfi
 controller
Date: Mon, 6 Jun 2016 11:50:43 +0800
Message-ID: <5754F313.9010307@rock-chips.com>
References: <1464947719-6245-1-git-send-email-hl@rock-chips.com>
 <CGME20160603095617epcas1p2ce23b253cf48783b9ebdbbbe65907670@epcas1p2.samsung.com>
 <1464947719-6245-5-git-send-email-hl@rock-chips.com>
 <57515B4F.5000309@samsung.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8;
	format=flowed
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-clk-owner@vger.kernel.org>
In-Reply-To: <57515B4F.5000309@samsung.com>
Sender: linux-clk-owner@vger.kernel.org
To: Chanwoo Choi <cw00.choi@samsung.com>, heiko@sntech.de, mark.yao@rock-chips.com, myungjoo.ham@samsung.com
Cc: mturquette@baylibre.com, sboyd@codeaurora.org, linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, airlied@linux.ie, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, kyungmin.park@samsung.com, dianders@chromium.org, dbasehore@chromium.org, huangtao@rock-chips.com, typ@rock-chips.com
List-Id: linux-rockchip.vger.kernel.org



On 2016=E5=B9=B406=E6=9C=8803=E6=97=A5 18:26, Chanwoo Choi wrote:
> Hi Lin,
>
> I add the some comment on below. If you modify it,
> You can add my acked-by tag. Looks good to me.
Thanks for you reviewing, i will update the code folloiwing your commen=
t.
> Acked-by: Chanwoo Choi <cw00.choi@samsung.com>
>
> Also, I'd like you to add me to mail thread
> on next version because I'm supporter of devfreq-event.
I am sorry for missing you mail in before patch:-[ , will add you to=20
mail thread next vesion.
> On 2016=EB=85=84 06=EC=9B=94 03=EC=9D=BC 18:55, Lin Huang wrote:
>> on rk3399 platform, there is dfi conroller can monitor
>> ddr load, base on this result, we can do ddr freqency
>> scaling.
>>
>> Signed-off-by: Lin Huang <hl@rock-chips.com>
>> ---
>> Changes in v1:
>> - NOne
>>
>>   drivers/devfreq/event/Kconfig        |   7 +
>>   drivers/devfreq/event/Makefile       |   1 +
>>   drivers/devfreq/event/rockchip-dfi.c | 265 +++++++++++++++++++++++=
++++++++++++
>>   3 files changed, 273 insertions(+)
>>   create mode 100644 drivers/devfreq/event/rockchip-dfi.c
>>
>> diff --git a/drivers/devfreq/event/Kconfig b/drivers/devfreq/event/K=
config
>> index 1e8b4f4..6ebdc13 100644
>> --- a/drivers/devfreq/event/Kconfig
>> +++ b/drivers/devfreq/event/Kconfig
>> @@ -30,4 +30,11 @@ config DEVFREQ_EVENT_EXYNOS_PPMU
>>   	  (Platform Performance Monitoring Unit) counters to estimate the
>>   	  utilization of each module.
>>  =20
>> +config DEVFREQ_EVENT_ROCKCHIP_DFI
>> +	bool "ROCKCHIP DFI DEVFREQ event Driver"
>> +	depends on ARCH_ROCKCHIP
>> +	help
>> +	  This add the devfreq-event driver for Rockchip SoC. It provides =
DFI
> You better to full name of 'DFI' abbreviation as following:
> - DFI (Dxxx Fxxx Ixxx)
>
>> +	  driver to count ddr load.
>> +
>>   endif # PM_DEVFREQ_EVENT
>> diff --git a/drivers/devfreq/event/Makefile b/drivers/devfreq/event/=
Makefile
>> index 3d6afd3..dda7090 100644
>> --- a/drivers/devfreq/event/Makefile
>> +++ b/drivers/devfreq/event/Makefile
>> @@ -2,3 +2,4 @@
>>  =20
>>   obj-$(CONFIG_DEVFREQ_EVENT_EXYNOS_NOCP) +=3D exynos-nocp.o
>>   obj-$(CONFIG_DEVFREQ_EVENT_EXYNOS_PPMU) +=3D exynos-ppmu.o
>> +obj-$(CONFIG_DEVFREQ_EVENT_ROCKCHIP_DFI) +=3D rockchip-dfi.o
>> diff --git a/drivers/devfreq/event/rockchip-dfi.c b/drivers/devfreq/=
event/rockchip-dfi.c
>> new file mode 100644
>> index 0000000..e3b020f9
>> --- /dev/null
>> +++ b/drivers/devfreq/event/rockchip-dfi.c
>> @@ -0,0 +1,265 @@
>> +/*
>> + * Copyright (c) 2016, Fuzhou Rockchip Electronics Co., Ltd
>> + * Author: Lin Huang <hl@rock-chips.com>
>> + *
>> + * This program is free software; you can redistribute it and/or mo=
dify it
>> + * under the terms and conditions of the GNU General Public License=
,
>> + * version 2, as published by the Free Software Foundation.
>> + *
>> + * This program is distributed in the hope it will be useful, but W=
ITHOUT
>> + * ANY WARRANTY; without even the implied warranty of MERCHANTABILI=
TY or
>> + * FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public Li=
cense for
>> + * more details.
>> + */
>> +
>> +#include <linux/clk.h>
>> +#include <linux/devfreq-event.h>
>> +#include <linux/kernel.h>
>> +#include <linux/err.h>
>> +#include <linux/init.h>
>> +#include <linux/io.h>
>> +#include <linux/mfd/syscon.h>
>> +#include <linux/module.h>
>> +#include <linux/platform_device.h>
>> +#include <linux/regmap.h>
>> +#include <linux/slab.h>
>> +#include <linux/list.h>
>> +#include <linux/of.h>
>> +
>> +#define RK3399_DMC_NUM_CH	2
>> +
>> +/* DDRMON_CTRL */
>> +#define DDRMON_CTRL	0x04
>> +#define CLR_DDRMON_CTRL	(0x1f0000 << 0)
>> +#define LPDDR4_EN	(0x10001 << 4)
>> +#define HARDWARE_EN	(0x10001 << 3)
>> +#define LPDDR3_EN	(0x10001 << 2)
>> +#define SOFTWARE_EN	(0x10001 << 1)
>> +#define TIME_CNT_EN	(0x10001 << 0)
>> +
>> +#define DDRMON_CH0_COUNT_NUM		0x28
>> +#define DDRMON_CH0_DFI_ACCESS_NUM	0x2c
>> +#define DDRMON_CH1_COUNT_NUM		0x3c
>> +#define DDRMON_CH1_DFI_ACCESS_NUM	0x40
>> +
>> +/* pmu grf */
>> +#define PMUGRF_OS_REG2	0x308
>> +#define DDRTYPE_SHIFT	13
>> +#define DDRTYPE_MASK	7
>> +
>> +enum {
>> +	DDR3 =3D 3,
>> +	LPDDR3 =3D 6,
>> +	LPDDR4 =3D 7,
>> +	UNUSED =3D 0xFF
>> +};
>> +
>> +struct dmc_usage {
>> +	u32 access;
>> +	u32 total;
>> +};
>> +
>> +struct rockchip_dfi {
>> +	struct devfreq_event_dev *edev;
>> +	struct devfreq_event_desc *desc;
>> +	struct dmc_usage ch_usage[RK3399_DMC_NUM_CH];
>> +	struct device *dev;
>> +	void __iomem *regs;
>> +	struct regmap *regmap_pmu;
>> +	struct clk *clk;
>> +};
>> +
>> +static void rockchip_dfi_start_hardware_counter(struct devfreq_even=
t_dev *edev)
>> +{
>> +	struct rockchip_dfi *info =3D devfreq_event_get_drvdata(edev);
>> +	void __iomem *dfi_regs =3D info->regs;
>> +	u32 val;
>> +	u32 ddr_type;
>> +
>> +	/* get ddr type */
>> +	regmap_read(info->regmap_pmu, PMUGRF_OS_REG2, &val);
>> +	ddr_type =3D (val >> DDRTYPE_SHIFT) & DDRTYPE_MASK;
>> +
>> +	/* clear DDRMON_CTRL setting */
>> +	writel_relaxed(CLR_DDRMON_CTRL, dfi_regs + DDRMON_CTRL);
>> +
>> +	/* set ddr type to dfi */
>> +	if (ddr_type =3D=3D LPDDR3)
>> +		writel_relaxed(LPDDR3_EN, dfi_regs + DDRMON_CTRL);
>> +	else if (ddr_type =3D=3D LPDDR4)
>> +		writel_relaxed(LPDDR4_EN, dfi_regs + DDRMON_CTRL);
>> +
>> +	/* enable count, use software mode */
>> +	writel_relaxed(SOFTWARE_EN, dfi_regs + DDRMON_CTRL);
>> +}
>> +
>> +static void rockchip_dfi_stop_hardware_counter(struct devfreq_event=
_dev *edev)
>> +{
>> +	struct rockchip_dfi *info =3D devfreq_event_get_drvdata(edev);
>> +	void __iomem *dfi_regs =3D info->regs;
>> +	u32 val;
>> +
>> +	val =3D readl_relaxed(dfi_regs + DDRMON_CTRL);
>> +	val &=3D ~SOFTWARE_EN;
>> +	writel_relaxed(val, dfi_regs + DDRMON_CTRL);
>> +}
>> +
>> +static int rockchip_dfi_get_busier_ch(struct devfreq_event_dev *ede=
v)
>> +{
>> +	struct rockchip_dfi *info =3D devfreq_event_get_drvdata(edev);
>> +	u32 tmp, max =3D 0;
>> +	u32 i, busier_ch =3D 0;
>> +	void __iomem *dfi_regs =3D info->regs;
>> +
>> +	rockchip_dfi_stop_hardware_counter(edev);
>> +
>> +	/* Find out which channel is busier */
>> +	for (i =3D 0; i < RK3399_DMC_NUM_CH; i++) {
>> +		info->ch_usage[i].access =3D readl_relaxed(dfi_regs +
>> +				DDRMON_CH0_DFI_ACCESS_NUM + i * 20);
>> +		info->ch_usage[i].total =3D readl_relaxed(dfi_regs +
>> +				DDRMON_CH0_COUNT_NUM + i * 20);
>> +		tmp =3D info->ch_usage[i].access;
>> +		if (tmp > max) {
>> +			busier_ch =3D i;
>> +			max =3D tmp;
>> +		}
>> +	}
>> +	rockchip_dfi_start_hardware_counter(edev);
>> +
>> +	return busier_ch;
>> +}
>> +
>> +static int rockchip_dfi_disable(struct devfreq_event_dev *edev)
>> +{
>> +	struct rockchip_dfi *info =3D devfreq_event_get_drvdata(edev);
>> +
>> +	rockchip_dfi_stop_hardware_counter(edev);
>> +	clk_disable(info->clk);
> I prefer to change the function as following. I add the comment on be=
low in probe()
> - clk_disable -> clk_disable_unprepare()
>
>
>> +
>> +	return 0;
>> +}
>> +
>> +static int rockchip_dfi_enable(struct devfreq_event_dev *edev)
>> +{
>> +	struct rockchip_dfi *info =3D devfreq_event_get_drvdata(edev);
>> +	int ret;
>> +
>> +	ret =3D clk_enable(info->clk);
> I prefer to change the function as following. I add the comment on be=
low in probe()
> - clk_enable -> clk_prepare_enable()
>
>> +	if (ret)
>> +		return ret;
>> +
>> +	rockchip_dfi_start_hardware_counter(edev);
>> +	return 0;
>> +}
>> +
>> +static int rockchip_dfi_set_event(struct devfreq_event_dev *edev)
>> +{
>> +	return 0;
>> +}
>> +
>> +static int rockchip_dfi_get_event(struct devfreq_event_dev *edev,
>> +				  struct devfreq_event_data *edata)
>> +{
>> +	struct rockchip_dfi *info =3D devfreq_event_get_drvdata(edev);
>> +	int busier_ch;
>> +
>> +	busier_ch =3D rockchip_dfi_get_busier_ch(edev);
>> +
>> +	edata->load_count =3D info->ch_usage[busier_ch].access;
>> +	edata->total_count =3D info->ch_usage[busier_ch].total;
>> +
>> +	return 0;
>> +}
>> +
>> +static const struct devfreq_event_ops rockchip_dfi_ops =3D {
>> +	.disable =3D rockchip_dfi_disable,
>> +	.enable =3D rockchip_dfi_enable,
>> +	.get_event =3D rockchip_dfi_get_event,
>> +	.set_event =3D rockchip_dfi_set_event,
>> +};
>> +
>> +static const struct of_device_id rockchip_dfi_id_match[] =3D {
>> +	{ .compatible =3D "rockchip,rk3399-dfi" },
>> +	{ },
>> +};
>> +
>> +static int rockchip_dfi_probe(struct platform_device *pdev)
>> +{
>> +	struct device *dev =3D &pdev->dev;
>> +	struct rockchip_dfi *data;
>> +	struct resource *res;
>> +	struct devfreq_event_desc *desc;
>> +	int ret;
>> +	struct device_node *np =3D pdev->dev.of_node, *node;
>> +
>> +	data =3D devm_kzalloc(dev, sizeof(struct rockchip_dfi), GFP_KERNEL=
);
>> +	if (!data)
>> +		return -ENOMEM;
>> +
>> +	res =3D platform_get_resource(pdev, IORESOURCE_MEM, 0);
>> +	data->regs =3D devm_ioremap_resource(&pdev->dev, res);
>> +	if (IS_ERR(data->regs))
>> +		return PTR_ERR(data->regs);
>> +
>> +	data->clk =3D devm_clk_get(dev, "pclk_ddr_mon");
>> +	if (IS_ERR(data->clk)) {
>> +		dev_err(dev, "Cannot get the clk dmc_clk\n");
>> +		return PTR_ERR(data->clk);
>> +	};
>> +
>> +	/* try to find the optional reference to the pmu syscon */
>> +	node =3D of_parse_phandle(np, "rockchip,pmu", 0);
>> +	if (node) {
>> +		data->regmap_pmu =3D syscon_node_to_regmap(node);
>> +		if (IS_ERR(data->regmap_pmu))
>> +			return PTR_ERR(data->regmap_pmu);
>> +	}
>> +	data->dev =3D dev;
>> +
>> +	desc =3D devm_kzalloc(dev, sizeof(*desc), GFP_KERNEL);
>> +	if (!desc)
>> +		return -ENOMEM;
>> +
>> +	desc->ops =3D &rockchip_dfi_ops;
>> +	desc->driver_data =3D data;
>> +	desc->name =3D np->name;
>> +	data->desc =3D desc;
>> +
>> +	data->edev =3D devm_devfreq_event_add_edev(&pdev->dev, desc);
>> +	if (IS_ERR(data->edev)) {
>> +		ret =3D PTR_ERR(data->edev);
>> +		dev_err(&pdev->dev,
>> +			"failed to add devfreq-event device\n");
>> +		return ret;
> You can simply return the PTR_ERR(data->edev) without 'ret' variable =
as following:
>
> 	return PTR_ERR(data->edev);
>
>
>> +	}
>> +
>> +	ret =3D clk_prepare_enable(data->clk);
>> +	if (ret) {
>> +		dev_err(&pdev->dev, "failed to enable clk: %d\n", ret);
>> +		clk_disable_unprepare(data->clk);
>> +		return ret;
>> +	}
> The following two functions handle the clock. So, rockchip_dfi_probe(=
)
> don't need to enable the clock. Just pass the role of clock control t=
o the following functions.
> Because of calling the twice of enable function of clock, the usage c=
ount of clock
> is mismatch when disabling the clock.
> - rockchip_dfi_enable(struct devfreq_event_dev *edev) enable the cloc=
k.
> - rockchip_dfi_disable(struct devfreq_event_dev *edev) disable the cl=
ock.
>
>
>> +
>> +	platform_set_drvdata(pdev, data);
>> +
>> +	return 0;
>> +}
>> +
>> +static int rockchip_dfi_remove(struct platform_device *pdev)
>> +{
>> +	return 0;
>> +}
> If the rockchip_dfi_remove() don't do anything, you can remove it
>
>> +
>> +static struct platform_driver rockchip_dfi_driver =3D {
>> +	.probe	=3D rockchip_dfi_probe,
>> +	.remove	=3D rockchip_dfi_remove,
> ditto.
>
>> +	.driver =3D {
>> +		.name	=3D "rockchip-dfi",
>> +		.of_match_table =3D rockchip_dfi_id_match,
>> +	},
>> +};
>> +module_platform_driver(rockchip_dfi_driver);
>> +
>> +MODULE_LICENSE("GPL v2");
> You need to add MODULE_AUTHOR("").
>
>> +MODULE_DESCRIPTION("Rockchip dfi driver");
>>
> Remove unneeded blank line
>
> Regards,
> Chanwoo Choi
>
>
>
>

--=20
Lin Huang


