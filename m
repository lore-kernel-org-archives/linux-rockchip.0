Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 74ED2C67861
	for <linux-rockchip@archiver.kernel.org>; Sat,  6 Apr 2024 07:06:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yIZEsTqTiY6M2gpfeeh+bbuMxgNyvQc531sdJknlcgI=; b=w7KP3+fpKgLfB+
	Cy3G2jIP4fn4Gdp09JpXx7ZOTkaylqTwH3oztIaxtTQ6cUFDsZraFovT+93oDh0WcRcpqUSvUbFCN
	t0NUhKOjf3k3gAy1H2NrhBIpvu3Axg+1HGdrRxZf9ryd2kghPyl3hlX/e6PcYXZkOyohqsz0+xAIy
	Miz1ctvUm1LbrcEHFALjhSkCABRDM54zroOJuChS/YvTxhAzJ25/pekHh01nrUywj9S3yMXQ2V9by
	90fIY+Pb2UaUmjkuDSyksVXKvkOd4yRkPNoj1EsABqgh0mpuajwNQBBtimnnmeVQID2MnSR2YK9M/
	2ehgEBBQfbmUGka9ywwA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rt08I-00000009qhI-30GJ;
	Sat, 06 Apr 2024 07:06:34 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rt08E-00000009qfk-2mKw;
	Sat, 06 Apr 2024 07:06:32 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 3E4BF60909;
	Sat,  6 Apr 2024 07:06:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0E995C43390;
	Sat,  6 Apr 2024 07:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712387186;
	bh=MCFYeOmRurFOqa2pWXaognBvgbOHLrLLj1a7t+4t00g=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Qo4eSOcjsN7orGimV+Ldl+ZnKKNN6IZnM6S/e3F+Yum2SMulDYOtIwqkAOE2LrAo0
	 xfXzoOJ8cwkYKAZ5BzJl6NcsMlGZ6cX8WwH4rvKHfyeInnpLyyayx1a+sxM52MJaUu
	 aiVR+2+AHRKPMGHzMp4MpuRKKAWw2FPdNdpRSu1LMOX2E7CrDQU0woSYzOptZXovMx
	 NL8If4/Qh1IOYMPZWTbdyF0g/7XbVZW+Ji5imyF4tpmwGBu7FTwhsfqFPZPtigzl3H
	 CXShIg1ek8MCpFHFu9wf6SekZVvhxRoDg5GUdW4aJeLZlQwdRJaHtVZh4m+9u7do1v
	 pT4T6vNRucH6A==
Date: Sat, 6 Apr 2024 12:36:22 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	linux-rockchip@lists.infradead.org, linux-phy@lists.infradead.org,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Frank Wang <frank.wang@rock-chips.com>,
	Kever Yang <kever.yang@rock-chips.com>, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, kernel@collabora.com,
	Zhang Yubing <yubing.zhang@rock-chips.com>
Subject: Re: [PATCH v4 02/10] phy: rockchip: add usbdp combo phy driver
Message-ID: <ZhD0bvZLh0POrljR@matsya>
References: <20240325141653.84910-1-sebastian.reichel@collabora.com>
 <20240325141653.84910-3-sebastian.reichel@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240325141653.84910-3-sebastian.reichel@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240406_000630_961364_02E1D6B1 
X-CRM114-Status: GOOD (  28.86  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On 25-03-24, 15:15, Sebastian Reichel wrote:
> This adds a new USBDP combo PHY with Samsung IP block driver.
> 
> The driver get lane mux and mapping info in 2 ways, supporting
> DisplayPort alternate mode or parsing from DT. When parsing from DT,
> the property "rockchip,dp-lane-mux" provide the DP mux and mapping
> info. This is needed when the PHY is not used with TypeC Alt-Mode.
> For example if the USB3 interface of the PHY is connected to a USB
> Type A connector and the DP interface is connected to a DisplayPort
> connector.
> 
> When do DP link training, need to set lane number, link rate, swing,
> and pre-emphasis via PHY configure interface.
> 
> Co-developed-by: Heiko Stuebner <heiko@sntech.de>
> Signed-off-by: Heiko Stuebner <heiko@sntech.de>
> Co-developed-by: Zhang Yubing <yubing.zhang@rock-chips.com>
> Signed-off-by: Zhang Yubing <yubing.zhang@rock-chips.com>
> Co-developed-by: Frank Wang <frank.wang@rock-chips.com>
> Signed-off-by: Frank Wang <frank.wang@rock-chips.com>
> Tested-by: Heiko Stuebner <heiko@sntech.de>
> Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
> ---
>  drivers/phy/rockchip/Kconfig              |   12 +
>  drivers/phy/rockchip/Makefile             |    1 +
>  drivers/phy/rockchip/phy-rockchip-usbdp.c | 1612 +++++++++++++++++++++
>  3 files changed, 1625 insertions(+)
>  create mode 100644 drivers/phy/rockchip/phy-rockchip-usbdp.c
> 
> diff --git a/drivers/phy/rockchip/Kconfig b/drivers/phy/rockchip/Kconfig
> index a34f67bb7e61..c3d62243b474 100644
> --- a/drivers/phy/rockchip/Kconfig
> +++ b/drivers/phy/rockchip/Kconfig
> @@ -115,3 +115,15 @@ config PHY_ROCKCHIP_USB
>  	select GENERIC_PHY
>  	help
>  	  Enable this to support the Rockchip USB 2.0 PHY.
> +
> +config PHY_ROCKCHIP_USBDP
> +	tristate "Rockchip USBDP COMBO PHY Driver"
> +	depends on ARCH_ROCKCHIP && OF
> +	select GENERIC_PHY
> +	select TYPEC
> +	help
> +	  Enable this to support the Rockchip USB3.0/DP combo PHY with
> +	  Samsung IP block. This is required for USB3 support on RK3588.
> +
> +	  To compile this driver as a module, choose M here: the module
> +	  will be called phy-rockchip-usbdp
> diff --git a/drivers/phy/rockchip/Makefile b/drivers/phy/rockchip/Makefile
> index 3d911304e654..010a824e32ce 100644
> --- a/drivers/phy/rockchip/Makefile
> +++ b/drivers/phy/rockchip/Makefile
> @@ -12,3 +12,4 @@ obj-$(CONFIG_PHY_ROCKCHIP_SAMSUNG_HDPTX)	+= phy-rockchip-samsung-hdptx.o
>  obj-$(CONFIG_PHY_ROCKCHIP_SNPS_PCIE3)	+= phy-rockchip-snps-pcie3.o
>  obj-$(CONFIG_PHY_ROCKCHIP_TYPEC)	+= phy-rockchip-typec.o
>  obj-$(CONFIG_PHY_ROCKCHIP_USB)		+= phy-rockchip-usb.o
> +obj-$(CONFIG_PHY_ROCKCHIP_USBDP)	+= phy-rockchip-usbdp.o
> diff --git a/drivers/phy/rockchip/phy-rockchip-usbdp.c b/drivers/phy/rockchip/phy-rockchip-usbdp.c
> new file mode 100644
> index 000000000000..38dc96cfe403
> --- /dev/null
> +++ b/drivers/phy/rockchip/phy-rockchip-usbdp.c
> @@ -0,0 +1,1612 @@
> +// SPDX-License-Identifier: GPL-2.0-or-later
> +/*
> + * Rockchip USBDP Combo PHY with Samsung IP block driver
> + *
> + * Copyright (C) 2021 Rockchip Electronics Co., Ltd

we are in 2024!

> + */
> +
> +#include <dt-bindings/phy/phy.h>
> +#include <linux/bitfield.h>
> +#include <linux/bits.h>
> +#include <linux/clk.h>
> +#include <linux/clk-provider.h>

Do you need both

> +#include <linux/delay.h>
> +#include <linux/gpio.h>
> +#include <linux/mfd/syscon.h>
> +#include <linux/module.h>
> +#include <linux/mutex.h>
> +#include <linux/of.h>
> +#include <linux/phy/phy.h>
> +#include <linux/platform_device.h>
> +#include <linux/property.h>
> +#include <linux/regmap.h>
> +#include <linux/reset.h>
> +#include <linux/usb/ch9.h>
> +#include <linux/usb/typec_dp.h>
> +#include <linux/usb/typec_mux.h>

That seems a bit more of headers, do you need all of them?

> +static int rk_udphy_setup(struct rk_udphy *udphy)
> +{
> +	int ret = 0;

Superfluous init

> +static int rk_udphy_parse_dt(struct rk_udphy *udphy)
> +{
> +	struct device *dev = udphy->dev;
> +	struct device_node *np = dev_of_node(dev);
> +	enum usb_device_speed maximum_speed;
> +	int ret;
> +
> +	udphy->u2phygrf = syscon_regmap_lookup_by_phandle(np, "rockchip,u2phy-grf");
> +	if (IS_ERR(udphy->u2phygrf))
> +		return dev_err_probe(dev, PTR_ERR(udphy->u2phygrf), "failed to get u2phy-grf\n");
> +
> +	udphy->udphygrf = syscon_regmap_lookup_by_phandle(np, "rockchip,usbdpphy-grf");
> +	if (IS_ERR(udphy->udphygrf))
> +		return dev_err_probe(dev, PTR_ERR(udphy->udphygrf), "failed to get usbdpphy-grf\n");
> +
> +	udphy->usbgrf = syscon_regmap_lookup_by_phandle(np, "rockchip,usb-grf");
> +	if (IS_ERR(udphy->usbgrf))
> +		return dev_err_probe(dev, PTR_ERR(udphy->usbgrf), "failed to get usb-grf\n");
> +
> +	udphy->vogrf = syscon_regmap_lookup_by_phandle(np, "rockchip,vo-grf");
> +	if (IS_ERR(udphy->vogrf))
> +		return dev_err_probe(dev, PTR_ERR(udphy->vogrf), "failed to get vo-grf\n");
> +
> +	ret = rk_udphy_parse_lane_mux_data(udphy);
> +	if (ret)
> +		return ret;
> +
> +	udphy->sbu1_dc_gpio = devm_gpiod_get_optional(dev, "sbu1-dc", GPIOD_OUT_LOW);
> +	if (IS_ERR(udphy->sbu1_dc_gpio))
> +		return PTR_ERR(udphy->sbu1_dc_gpio);
> +
> +	udphy->sbu2_dc_gpio = devm_gpiod_get_optional(dev, "sbu2-dc", GPIOD_OUT_LOW);
> +	if (IS_ERR(udphy->sbu2_dc_gpio))
> +		return PTR_ERR(udphy->sbu2_dc_gpio);
> +
> +	if (device_property_present(dev, "maximum-speed")) {
> +		maximum_speed = usb_get_maximum_speed(dev);
> +		udphy->hs = maximum_speed <= USB_SPEED_HIGH ? true : false;
> +	}
> +
> +	ret = rk_udphy_clk_init(udphy, dev);
> +	if (ret)
> +		return ret;
> +
> +	ret = rk_udphy_reset_init(udphy, dev);
> +	if (ret)
> +		return ret;
> +
> +	return 0;

return rk_udphy_reset_init()

> +static const struct phy_ops rk_udphy_dp_phy_ops = {
> +	.init		= rk_udphy_dp_phy_init,
> +	.exit		= rk_udphy_dp_phy_exit,
> +	.power_on	= rk_udphy_dp_phy_power_on,
> +	.power_off	= rk_udphy_dp_phy_power_off,
> +	.configure	= rk_udphy_dp_phy_configure,
> +	.owner		= THIS_MODULE,
> +};
> +
> +static int rk_udphy_usb3_phy_init(struct phy *phy)
> +{
> +	struct rk_udphy *udphy = phy_get_drvdata(phy);
> +	int ret = 0;

Superfluous init here too

-- 
~Vinod

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
