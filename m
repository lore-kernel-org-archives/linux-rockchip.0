Return-Path: <SRS0=qEJD=IB=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
	autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 865A7C433DB
	for <linux-rockchip@archiver.kernel.org>; Wed,  3 Mar 2021 15:39:51 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 6273F64EBD
	for <linux-rockchip@archiver.kernel.org>; Wed,  3 Mar 2021 15:39:50 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 6273F64EBD
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Date:Cc:To:From:
	Subject:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=bmA85kN+nW+JcZW2aF8ox3n2TAhJK1yydyeVBl+oou8=; b=BC1w3FBID98mE8qdaG6eLoFuM
	doOrYa8a+YZLB2bnsewTD7ptrLykQUj1IAq56+gFV9MDIVaRSCdYGLUdqogBdKTT1SMa1YYvCLHAQ
	k0Pyh2RpzINmIx9WAwfy6C1NNpQrI5IvRIUWYwTzpehRG35z52ndTcsfU/GhTOqD4KqtV3Oy2cN5S
	LlvS4B+dqJwxJJpmuRwJw/rot3oSK3SCU28udFqjFeBHtknxM4nel5faEVgyAwrD2INW5NrrnkFRO
	kfV5jxO7NfyQrlTr5435tCqtMQ4VgAs/qn8NJA4zAXNM+efNL4kQ1vq3Aty5Q4TbwplNC1h4a5+dg
	o8SJnGpfw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lHTbC-005QVp-9P; Wed, 03 Mar 2021 15:39:42 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lHSZe-0059H5-EX
 for linux-rockchip@desiato.infradead.org; Wed, 03 Mar 2021 14:34:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=MIME-Version:Content-Transfer-Encoding:
 Content-Type:References:In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender
 :Reply-To:Content-ID:Content-Description;
 bh=Xykq7+0UN5zlToHiFzJPN3STBj4+UAUfi8AQnNB7b2c=; b=RM56qfcRkZ5zPlcwFIJUqZkkcP
 v1c7qjq6kGr101B13vaaIfW2JpafKATm9h5CFwDJ1mklVNQ5DTZYwLxhc20nJ1oTEiHNxuw3f5s2O
 l3C+LLaWbSCK4aC6dKiRQiqfkuW1IkplYNWzysMjEOPEwQbwO3n8+MpIzTUw4MyK+kldmM7rizanW
 2yNMs7bz/zh0Rw0LdSemDB339xr8jBh7r9DiSf1H42g4kheoQETa1RHCa8ku9JMHwfCFkI9YZdT5z
 SzQIusP5QtKozZzwwkew6m/QqJEBRG/8UXUGyiQAWCuaCxy814anzm1DbtDQYgEUImHRcwC8XRg1b
 8Vchd56Q==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lHSZM-002xBO-JH
 for linux-rockchip@lists.infradead.org; Wed, 03 Mar 2021 14:33:45 +0000
Received: from lupine.hi.pengutronix.de
 ([2001:67c:670:100:3ad5:47ff:feaf:1a17] helo=lupine)
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <p.zabel@pengutronix.de>)
 id 1lHSZE-00035P-Ab; Wed, 03 Mar 2021 15:33:36 +0100
Received: from pza by lupine with local (Exim 4.92)
 (envelope-from <p.zabel@pengutronix.de>)
 id 1lHSZ7-00008R-0c; Wed, 03 Mar 2021 15:33:29 +0100
Message-ID: <38119c7bab7b550cff0300b596611a7d9d3b6737.camel@pengutronix.de>
Subject: Re: [PATCH v3 3/5] reset: Add reset driver for IMX8MQ VPU block
From: Philipp Zabel <p.zabel@pengutronix.de>
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>, robh+dt@kernel.org,
 shawnguo@kernel.org, s.hauer@pengutronix.de, festevam@gmail.com, 
 ezequiel@collabora.com, mchehab@kernel.org, gregkh@linuxfoundation.org
Cc: kernel@pengutronix.de, linux-imx@nxp.com, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
 linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, 
 devel@driverdev.osuosl.org, kernel@collabora.com
Date: Wed, 03 Mar 2021 15:33:28 +0100
In-Reply-To: <20210301151754.104749-4-benjamin.gaignard@collabora.com>
References: <20210301151754.104749-1-benjamin.gaignard@collabora.com>
 <20210301151754.104749-4-benjamin.gaignard@collabora.com>
User-Agent: Evolution 3.30.5-1.1 
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:3ad5:47ff:feaf:1a17
X-SA-Exim-Mail-From: p.zabel@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210303_143345_236770_A8E8CD5E 
X-CRM114-Status: GOOD (  22.42  )
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

On Mon, 2021-03-01 at 16:17 +0100, Benjamin Gaignard wrote:
> IMX8MQ SoC got a dedicated hardware block to reset the video processor
> units (G1 and G2).
> 
> Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
> ---
>  drivers/reset/Kconfig            |   8 ++
>  drivers/reset/Makefile           |   1 +
>  drivers/reset/reset-imx8mq-vpu.c | 169 +++++++++++++++++++++++++++++++
>  3 files changed, 178 insertions(+)
>  create mode 100644 drivers/reset/reset-imx8mq-vpu.c
> 
> diff --git a/drivers/reset/Kconfig b/drivers/reset/Kconfig
> index 71ab75a46491..fa95380b271a 100644
> --- a/drivers/reset/Kconfig
> +++ b/drivers/reset/Kconfig
> @@ -80,6 +80,14 @@ config RESET_IMX7
>  	help
>  	  This enables the reset controller driver for i.MX7 SoCs.
>  
> +config RESET_VPU_IMX8MQ
> +	tristate "i.MX8MQ VPU Reset Driver"
> +	depends on HAS_IOMEM
> +	depends on (ARM64 && ARCH_MXC) || COMPILE_TEST
> +	select MFD_SYSCON
> +	help
> +	  This enables the VPU reset controller driver for i.MX8MQ SoCs.
> +
>  config RESET_INTEL_GW
>  	bool "Intel Reset Controller Driver"
>  	depends on OF && HAS_IOMEM
> diff --git a/drivers/reset/Makefile b/drivers/reset/Makefile
> index 1054123fd187..6007e0cdfc05 100644
> --- a/drivers/reset/Makefile
> +++ b/drivers/reset/Makefile
> @@ -12,6 +12,7 @@ obj-$(CONFIG_RESET_BRCMSTB) += reset-brcmstb.o
>  obj-$(CONFIG_RESET_BRCMSTB_RESCAL) += reset-brcmstb-rescal.o
>  obj-$(CONFIG_RESET_HSDK) += reset-hsdk.o
>  obj-$(CONFIG_RESET_IMX7) += reset-imx7.o
> +obj-$(CONFIG_RESET_VPU_IMX8MQ) += reset-imx8mq-vpu.o
>  obj-$(CONFIG_RESET_INTEL_GW) += reset-intel-gw.o
>  obj-$(CONFIG_RESET_LANTIQ) += reset-lantiq.o
>  obj-$(CONFIG_RESET_LPC18XX) += reset-lpc18xx.o
> diff --git a/drivers/reset/reset-imx8mq-vpu.c b/drivers/reset/reset-imx8mq-vpu.c
> new file mode 100644
> index 000000000000..14c589f19266
> --- /dev/null
> +++ b/drivers/reset/reset-imx8mq-vpu.c
> @@ -0,0 +1,169 @@
> +// SPDX-License-Identifier: GPL-2.0-only
> +/*
> + * Copyright (c) 2021, Collabora
> + *
> + * i.MX8MQ VPU Reset Controller driver
> + *
> + * Author: Benjamin Gaignard <benjamin.gaignard@collabora.com>
> + */
> +
> +#include <linux/clk.h>
> +#include <linux/delay.h>
> +#include <linux/mfd/syscon.h>
> +#include <linux/module.h>
> +#include <linux/of_device.h>
> +#include <linux/platform_device.h>
> +#include <linux/reset-controller.h>
> +#include <linux/regmap.h>
> +#include <dt-bindings/reset/imx8mq-vpu-reset.h>
> +
> +#define CTRL_SOFT_RESET		0x00
> +#define RESET_G1		((u32)BIT(1))
> +#define RESET_G2		((u32)BIT(0))
> +
> +#define CTRL_ENABLE		0x04
> +#define ENABLE_G1		BIT(1)
> +#define ENABLE_G2		BIT(0)
> +
> +#define CTRL_G1_DEC_FUSE	0x08
> +#define CTRL_G1_PP_FUSE		0x0c
> +#define CTRL_G2_DEC_FUSE	0x10
> +
> +struct imx8mq_vpu_reset {
> +	struct reset_controller_dev rcdev;
> +	struct regmap *regmap;
> +	struct clk_bulk_data *clocks;
> +	int num_clocks;
> +	struct device *dev;
> +};
> +
> +static inline struct imx8mq_vpu_reset *to_imx8mq_vpu_reset(struct reset_controller_dev *rcdev)
> +{
> +	return container_of(rcdev, struct imx8mq_vpu_reset, rcdev);
> +}
> +
> +static int imx8mq_vpu_reset_assert(struct reset_controller_dev *rcdev,
> +				   unsigned long id)
> +{
> +	struct imx8mq_vpu_reset *reset = to_imx8mq_vpu_reset(rcdev);
> +	int ret = -EINVAL;
> +
> +	ret = clk_bulk_prepare_enable(reset->num_clocks, reset->clocks);
> +	if (ret) {
> +		dev_err(reset->dev, "Failed to prepare clocks\n");
> +		return ret;
> +	}
> +
> +	switch (id) {
> +	case IMX8MQ_RESET_VPU_RESET_G1:
> +		ret = regmap_update_bits(reset->regmap, CTRL_SOFT_RESET, RESET_G1, ~RESET_G1);
> +		ret |= regmap_update_bits(reset->regmap, CTRL_ENABLE, ENABLE_G1, ENABLE_G1);
> +		break;
> +	case IMX8MQ_RESET_VPU_RESET_G2:
> +		ret = regmap_update_bits(reset->regmap, CTRL_SOFT_RESET, RESET_G2, ~RESET_G2);
> +		ret |= regmap_update_bits(reset->regmap, CTRL_ENABLE, ENABLE_G2, ENABLE_G2);

This doesn't belong in reset_assert.

> +		break;
> +	}
> +
> +	/* Set values of the fuse registers */
> +	ret |= regmap_write(reset->regmap, CTRL_G1_DEC_FUSE, 0xffffffff);
> +	ret |= regmap_write(reset->regmap, CTRL_G1_PP_FUSE, 0xffffffff);
> +	ret |= regmap_write(reset->regmap, CTRL_G2_DEC_FUSE, 0xffffffff);

Same as above, this doesn't belong in reset_assert.

> +	clk_bulk_disable_unprepare(reset->num_clocks, reset->clocks);

Also I assume that only the VPU_DEC_ROOT clock is required to control
these registers. Enabling the VPU_G1_ROOT and VPU_G2_ROOT clocks
(presumably to make sure the resets propagate into the respective VPU
core) would be the reset consumer's responsibility.

regards
Philipp

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
