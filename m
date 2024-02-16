Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 17198C48BEC
	for <linux-rockchip@archiver.kernel.org>; Fri, 16 Feb 2024 06:47:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ABzBAxfZy8zg4x7F9ZhJk1tWoy5Qw8QFRgF2K+0m7Rw=; b=0i+iKIgZn47dO0
	kYiTbXkOm1FMzFP/JgHrpp96y+THHj+G+x3Rr+MRZ1cjhZ4ZV7fQB5eRD9reWLX1kRH1bALRowU7c
	w5HX0IG1A0jCX+uTgS+WVF9gSbyOFC2Rqf8b5+XUJjGGMwV2QONUvFp437AYnT/5OMHYNnmUoRMTA
	DBOQFjL566sfHisr3zJPXziPOKMxJBQE6rhjRWLIAwTOLE2hzQwnC6/mzoZziRCf+7BtrusqtOOX3
	fQtuqZPKfyRoYjQOEx+Ci1fxYqqj7A40dqwev1uVlxwMywPgsKDYe7rw2lClnwmi9TSR8re7TsW2L
	JVUWmCL6Uvv6+Bz+5XSA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ras0c-00000001GYN-1mlx;
	Fri, 16 Feb 2024 06:47:42 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ras0Z-00000001GXj-0M5T;
	Fri, 16 Feb 2024 06:47:40 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id AFCFA61503;
	Fri, 16 Feb 2024 06:47:37 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 28845C433C7;
	Fri, 16 Feb 2024 06:47:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708066057;
	bh=IaYS5krugxcWWLdlP3aNH0s2GExm1DY2BuiHt8XgCtM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=OFixQkYX/oFkmeTY9XozPfHlCyyrwGGiRn+t5Qo2SQB/M3BQWiTr6Gmi+2QULbQIP
	 ZXyActqWf41o80jJ/+K/aXx3YrthzC4zot80y4ffZW05ZYxhXuJLS4Xb9d8m+4qWm4
	 ZITMB1FHWB47wV/xS9bobtFeFdi8szGyjBCxLvwX6VopLmpkmGPqg/gMb4BR97pBwO
	 HOXf7/oYuxZ+TR5Qjqc8l5ef/mmv6O4cZt7vWOFgPIOo42otWumPFAq/7INIlaVp+D
	 lZvsWls0YcMYkkuRYs8lmSvHfHBp3g4mkjYpFRZt/hOfeHmFVZszks349e2vRiV7ZP
	 PJ0kdCoTwZeEQ==
Date: Fri, 16 Feb 2024 12:17:32 +0530
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
Subject: Re: [PATCH v2 04/12] phy: rockchip: add usbdp combo phy driver
Message-ID: <Zc8FBJbMeLng9DjS@matsya>
References: <20240213163609.44930-1-sebastian.reichel@collabora.com>
 <20240213163609.44930-5-sebastian.reichel@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240213163609.44930-5-sebastian.reichel@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240215_224739_240089_AE4B83CC 
X-CRM114-Status: GOOD (  32.95  )
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

On 13-02-24, 17:32, Sebastian Reichel wrote:
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
> Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
> ---
>  drivers/phy/rockchip/Kconfig              |   12 +
>  drivers/phy/rockchip/Makefile             |    1 +
>  drivers/phy/rockchip/phy-rockchip-usbdp.c | 1639 +++++++++++++++++++++
>  3 files changed, 1652 insertions(+)
>  create mode 100644 drivers/phy/rockchip/phy-rockchip-usbdp.c
> 
> diff --git a/drivers/phy/rockchip/Kconfig b/drivers/phy/rockchip/Kconfig
> index 94360fc96a6f..d21b458c1d18 100644
> --- a/drivers/phy/rockchip/Kconfig
> +++ b/drivers/phy/rockchip/Kconfig
> @@ -107,3 +107,15 @@ config PHY_ROCKCHIP_USB
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
> index 7eab129230d1..25d2e1355db7 100644
> --- a/drivers/phy/rockchip/Makefile
> +++ b/drivers/phy/rockchip/Makefile
> @@ -11,3 +11,4 @@ obj-$(CONFIG_PHY_ROCKCHIP_PCIE)		+= phy-rockchip-pcie.o
>  obj-$(CONFIG_PHY_ROCKCHIP_SNPS_PCIE3)	+= phy-rockchip-snps-pcie3.o
>  obj-$(CONFIG_PHY_ROCKCHIP_TYPEC)	+= phy-rockchip-typec.o
>  obj-$(CONFIG_PHY_ROCKCHIP_USB)		+= phy-rockchip-usb.o
> +obj-$(CONFIG_PHY_ROCKCHIP_USBDP)	+= phy-rockchip-usbdp.o
> diff --git a/drivers/phy/rockchip/phy-rockchip-usbdp.c b/drivers/phy/rockchip/phy-rockchip-usbdp.c
> new file mode 100644
> index 000000000000..8b1ace2aaa98
> --- /dev/null
> +++ b/drivers/phy/rockchip/phy-rockchip-usbdp.c
> @@ -0,0 +1,1639 @@
> +// SPDX-License-Identifier: GPL-2.0-or-later
> +/*
> + * Rockchip USBDP Combo PHY with Samsung IP block driver
> + *
> + * Copyright (C) 2021 Rockchip Electronics Co., Ltd
> + */
> +
> +#include <linux/bitfield.h>
> +#include <linux/bits.h>
> +#include <linux/clk.h>
> +#include <linux/clk-provider.h>
> +#include <linux/delay.h>
> +#include <linux/gpio.h>
> +#include <linux/io.h>
> +#include <linux/iopoll.h>
> +#include <linux/kernel.h>
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

Thats a lot of headers, do you need all?

> +static inline int rk_udphy_grfreg_write(struct regmap *base,
> +					const struct rk_udphy_grf_reg *reg, bool en)
> +{
> +	u32 val, mask, tmp;
> +
> +	tmp = en ? reg->enable : reg->disable;
> +	mask = GENMASK(reg->bitend, reg->bitstart);
> +	val = (tmp << reg->bitstart) | (mask << BIT_WRITEABLE_SHIFT);

Perhaps FIELD_PREP|GET for these?

> +static int rk_udphy_dplane_get(struct rk_udphy *udphy)
> +{
> +	int dp_lanes;
> +
> +	switch (udphy->mode) {
> +	case UDPHY_MODE_DP:
> +		dp_lanes = 4;
> +		break;

empty line after break makes it more readable

> +	case UDPHY_MODE_DP_USB:
> +		dp_lanes = 2;
> +		break;
> +	case UDPHY_MODE_USB:
> +		fallthrough;
> +	default:
> +		dp_lanes = 0;
> +		break;
> +	}
> +
> +	return dp_lanes;
> +}
> +
> +static int rk_udphy_dplane_enable(struct rk_udphy *udphy, int dp_lanes)
> +{
> +	u32 val = 0;
> +	int i;
> +
> +	for (i = 0; i < dp_lanes; i++)
> +		val |= BIT(udphy->dp_lane_sel[i]);
> +
> +	regmap_update_bits(udphy->pma_regmap, CMN_LANE_MUX_AND_EN_OFFSET, CMN_DP_LANE_EN_ALL,
> +			   FIELD_PREP(CMN_DP_LANE_EN_ALL, val));
> +
> +	if (!dp_lanes)
> +		regmap_update_bits(udphy->pma_regmap, CMN_DP_RSTN_OFFSET,
> +				   CMN_DP_CMN_RSTN, FIELD_PREP(CMN_DP_CMN_RSTN, 0x0));
> +
> +	return 0;

there is no error generation in the fn, these kind of fn should really
be not returning anything

> +static int rk_udphy_usb3_phy_init(struct phy *phy)
> +{
> +	struct rk_udphy *udphy = phy_get_drvdata(phy);
> +	int ret = 0;
> +
> +	mutex_lock(&udphy->mutex);
> +	/* DP only or high-speed, disable U3 port */
> +	if (!(udphy->mode & UDPHY_MODE_USB) || udphy->hs) {
> +		rk_udphy_u3_port_disable(udphy, true);
> +		goto unlock;

no power up in that case?

> +	}
> +
> +	ret = rk_udphy_power_on(udphy, UDPHY_MODE_USB);
> +
> +unlock:
> +	mutex_unlock(&udphy->mutex);
> +	return ret;
> +}
-- 
~Vinod

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
