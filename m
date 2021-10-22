Return-Path: <SRS0=ACC0=PK=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 71B9DC433FE
	for <linux-rockchip@archiver.kernel.org>; Fri, 22 Oct 2021 10:50:14 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 2EAAD60560
	for <linux-rockchip@archiver.kernel.org>; Fri, 22 Oct 2021 10:50:14 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 2EAAD60560
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nid1WjmBoDWTJEc+8QU8eUydj7BOktAuCwYlId9weq8=; b=IMMum1dtbMfH3u
	j29JIjsxamk/+Mh8ahLx1MvAoGMwpmEByi08CqW5CahT9kzZt+AcYkbcWkRDaCjEv9f61x6egrVRj
	EanCjKG52V9EWwcujhVB5cXsr2EIctkkK9FtogxcOX3Z6DRdxt9EeWKLbctBJHlAopf8ou/gxjZT7
	1zKGqghy4FGnEqh8L8Z3zOJuVHUFr+uspyz7sJYdtrUW5DKZ5ikBqSXTKjSG5AM5Cs0sK4/VTdwz1
	AHhOjsH67W2TxSg1vUuwoqyE0ETTZYSQyBpvFuPzIqLwobsPoYL8x8BLhddscDTDuS4auJ4QiuOaa
	wPCHzcJ520tiYyFSprcQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mds7m-00Aa5w-1d; Fri, 22 Oct 2021 10:50:10 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mds7Z-00Aa45-NN; Fri, 22 Oct 2021 10:49:59 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id DE77460560;
 Fri, 22 Oct 2021 10:49:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1634899796;
 bh=0N9euYvolHICbMqCsFL6zp/Zm/NyWT3YNUnL9sLoKA4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=i71yzpodiCIsPew+jgWa539RfutcCEYWttPcVFJURi2rFo+r9ed5mHxFdp9tu3r9Y
 fRVM8VIes1lw6JlL6X7ssvAkzKHRcOc4ZdqJtOFlD1qlv5+AMFaKQWsaXT+x5+vb0V
 S7WcCrJ4HYNKMXTjAgMAxl0NaQzjAI0TkFusLc2JdhL1fVcsbBuI8ujEA9cQX7VwK+
 t5c+Mg5VtvnB2N5gKVEizfvesHU1jTtRUfKbsr/CJJ23DGeS91oij5EK8jMB1To/dk
 QR2KISQa9hPHcDomS+2MS8fZyTBOE0pfRoorhbuht0CCuZGDfBdAqdCtsHt88ZK2ae
 D7HFqsdQoJFwg==
Date: Fri, 22 Oct 2021 16:19:52 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Yifeng Zhao <yifeng.zhao@rock-chips.com>
Cc: heiko@sntech.de, robh+dt@kernel.org, devicetree@vger.kernel.org,
 michael.riesch@wolfvision.net, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org, kishon@ti.com, p.zabel@pengutronix.de
Subject: Re: [PATCH v2 2/3] phy/rockchip: add naneng combo phy for RK3568
Message-ID: <YXKXULdyPuv1BirB@matsya>
References: <20211013101938.28061-1-yifeng.zhao@rock-chips.com>
 <20211013101938.28061-3-yifeng.zhao@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211013101938.28061-3-yifeng.zhao@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211022_034957_845477_87707326 
X-CRM114-Status: GOOD (  18.64  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

On 13-10-21, 18:19, Yifeng Zhao wrote:
> This patch implements a combo phy driver for Rockchip SoCs
> with NaNeng IP block. This phy can be used as pcie-phy, usb3-phy,
> sata-phy or sgmii-phy.
> 
> Signed-off-by: Yifeng Zhao <yifeng.zhao@rock-chips.com>
> ---
> 
> Changes in v2:
> - Using api devm_platform_get_and_ioremap_resource.
> - Modify rockchip_combphy_set_Mode.
> - Add some PHY registers definition.
> 
>  drivers/phy/rockchip/Kconfig                  |   8 +
>  drivers/phy/rockchip/Makefile                 |   1 +
>  .../rockchip/phy-rockchip-naneng-combphy.c    | 650 ++++++++++++++++++
>  3 files changed, 659 insertions(+)
>  create mode 100644 drivers/phy/rockchip/phy-rockchip-naneng-combphy.c
> 
> diff --git a/drivers/phy/rockchip/Kconfig b/drivers/phy/rockchip/Kconfig
> index e812adad7242..9022e395c056 100644
> --- a/drivers/phy/rockchip/Kconfig
> +++ b/drivers/phy/rockchip/Kconfig
> @@ -66,6 +66,14 @@ config PHY_ROCKCHIP_INNO_DSIDPHY
>  	  Enable this to support the Rockchip MIPI/LVDS/TTL PHY with
>  	  Innosilicon IP block.
>  
> +config PHY_ROCKCHIP_NANENG_COMBO_PHY
> +	tristate "Rockchip NANENG COMBO PHY Driver"
> +	depends on ARCH_ROCKCHIP && OF
> +	select GENERIC_PHY
> +	help
> +	  Enable this to support the Rockchip PCIe/USB3.0/SATA/QSGMII
> +	  combo PHY with NaNeng IP block.
> +
>  config PHY_ROCKCHIP_PCIE
>  	tristate "Rockchip PCIe PHY Driver"
>  	depends on (ARCH_ROCKCHIP && OF) || COMPILE_TEST
> diff --git a/drivers/phy/rockchip/Makefile b/drivers/phy/rockchip/Makefile
> index f0eec212b2aa..a5041efb5b8f 100644
> --- a/drivers/phy/rockchip/Makefile
> +++ b/drivers/phy/rockchip/Makefile
> @@ -6,6 +6,7 @@ obj-$(CONFIG_PHY_ROCKCHIP_INNO_CSIDPHY)	+= phy-rockchip-inno-csidphy.o
>  obj-$(CONFIG_PHY_ROCKCHIP_INNO_DSIDPHY)	+= phy-rockchip-inno-dsidphy.o
>  obj-$(CONFIG_PHY_ROCKCHIP_INNO_HDMI)	+= phy-rockchip-inno-hdmi.o
>  obj-$(CONFIG_PHY_ROCKCHIP_INNO_USB2)	+= phy-rockchip-inno-usb2.o
> +obj-$(CONFIG_PHY_ROCKCHIP_NANENG_COMBO_PHY)	+= phy-rockchip-naneng-combphy.o
>  obj-$(CONFIG_PHY_ROCKCHIP_PCIE)		+= phy-rockchip-pcie.o
>  obj-$(CONFIG_PHY_ROCKCHIP_TYPEC)	+= phy-rockchip-typec.o
>  obj-$(CONFIG_PHY_ROCKCHIP_USB)		+= phy-rockchip-usb.o
> diff --git a/drivers/phy/rockchip/phy-rockchip-naneng-combphy.c b/drivers/phy/rockchip/phy-rockchip-naneng-combphy.c
> new file mode 100644
> index 000000000000..fbfc5fbbd5b8
> --- /dev/null
> +++ b/drivers/phy/rockchip/phy-rockchip-naneng-combphy.c
> @@ -0,0 +1,650 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * Rockchip PIPE USB3.0 PCIE SATA combphy driver
> + *
> + * Copyright (C) 2021 Rockchip Electronics Co., Ltd.
> + */
> +
> +#include <linux/clk.h>
> +#include <linux/delay.h>
> +#include <linux/io.h>
> +#include <linux/iopoll.h>
> +#include <linux/kernel.h>
> +#include <linux/mfd/syscon.h>
> +#include <linux/module.h>
> +#include <linux/of_device.h>
> +#include <linux/phy/phy.h>
> +#include <linux/regmap.h>
> +#include <linux/reset.h>
> +#include <dt-bindings/phy/phy.h>
> +
> +#define BIT_WRITEABLE_SHIFT		16
> +#define REF_CLOCK_24MHz			24000000
> +#define REF_CLOCK_25MHz			25000000
> +#define REF_CLOCK_100MHz		100000000
> +/* RK3568 T22 COMBO PHY REG */
> +#define RK3568_T22_PHYREG5		(0x5 << 2)
> +#define T22_PHYREG5_PLL_DIV_MASK	GENMASK(7, 6)
> +#define T22_PHYREG5_PLL_DIV_SHIFT	6
> +#define T22_PHYREG5_PLL_DIV_2		1
> +
> +#define RK3568_T22_PHYREG6		(0x6 << 2)
> +#define T22_PHYREG6_TX_RTERM_MASK	GENMASK(7, 4)
> +#define T22_PHYREG6_TX_RTERM_SHIFT	4
> +#define T22_PHYREG6_TX_RTERM_50OHM	0x8
> +#define T22_PHYREG6_RX_RTERM_MASK	GENMASK(3, 0)
> +#define T22_PHYREG6_RX_RTERM_SHIFT	0
> +#define T22_PHYREG6_RX_RTERM_44OHM	0xF
> +
> +#define RK3568_T22_PHYREG7		(0x7 << 2)

Pls use GENMASK for these?

> +#define T22_PHYREG7_SSC_EN		BIT(4)
> +
> +#define RK3568_T22_PHYREG10		(0xA << 2)
> +#define T22_PHYREG10_SU_TRIM_0_7	0xF0
> +
> +#define RK3568_T22_PHYREG11		(0xB << 2)
> +#define T22_PHYREG11_PLL_LPF_ADJ	0x4
> +
> +#define RK3568_T22_PHYREG12		(0xC << 2)
> +#define T22_PHYREG12_RESISTER_MASK	GENMASK(5, 4)
> +#define T22_PHYREG12_RESISTER_SHIFT	0x4

bitfield.h has nice helpers which can extract/program values and avoid
one to define these shifts
-- 
~Vinod

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
