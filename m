Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2607BCD4840
	for <linux-rockchip@archiver.kernel.org>; Mon, 11 May 2026 17:47:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MjdB6z1Y3KZzwACLs7/sioGxKZ8Ry7vQ8rTONjC8npg=; b=Rc3CWui4QTgCFQ
	w4Gxx6FBCElBM+hBy61AAIz3ArqJssmOKbqR2Onfn4EGKM/qV1kacG+P5deymjUUN0NP2TeSz1mLr
	S2A0XaCqdXmvVLmn5haCLgACbrfbQe4/EPDOY4Hl1UrvZqYiC1PnzRqGAvLbK/BRiMO2Zs9dyezEJ
	SYRFI9bjskKVeMEd2bkqDGELCczn9gu4N5arH0wqJHyHMyOymgETV6PAJFDkoxFV1net7zUofXyCr
	2L6MVJ0k9o4mv7Y+WYL1F3gP+GYd9zD27IQa/H6P6rvHpqvFQw8r1gUDxyXJ0OKyDFy/66/UxxkWE
	vmRUhc+FVrt1xP2hTo8A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wMUj2-0000000EPFZ-3Fbs;
	Mon, 11 May 2026 17:47:28 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wMUj1-0000000EPF3-1w3D
	for linux-rockchip@lists.infradead.org;
	Mon, 11 May 2026 17:47:27 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 77FB060121;
	Mon, 11 May 2026 17:47:26 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DE963C2BCB0;
	Mon, 11 May 2026 17:47:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778521646;
	bh=QmRYWIMkg1MB8d9jDcohL4aT5ukaVYi60uXAtNhG2cw=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=om8J1lF2QP8ZI05Bk+9cTWhDmaZvl9HN6kUREBpluMzORnMhYSe7cz3VdgZ6F1t5D
	 skeLnwybUhpr11CRWxfVad+aReb4W6YXNaqSwgsxmbNZ2M6ElZyi3bRutb0mK4pxHR
	 aNO1z8xreEexPpm29Zg8NsgIxNDvFtK853rWvgLw6YCQ0pqBEPz1RuYDnCNmzHgp0b
	 EBOakKk1wrozSEtrEwEHrhSs2rDVRTzeLyoRpBogQC4q89f/3KTLggRRSy6LueY4kA
	 4vd0tFabDWnr9b9y2o0UXlRPXL4P/bOG818N74hUA7gnCsfsI3LP1sTOG7tb+qybaL
	 8/wSNyWE2QvfQ==
Date: Mon, 11 May 2026 18:47:15 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Chris Morgan <macroalpha82@gmail.com>
Cc: linux-iio@vger.kernel.org, andy@kernel.org, nuno.sa@analog.com,
 dlechner@baylibre.com, jean-baptiste.maneyrol@tdk.com,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 heiko@sntech.de, conor+dt@kernel.org, krzk+dt@kernel.org, robh@kernel.org,
 andriy.shevchenko@intel.com, Chris Morgan <macromorgan@hotmail.com>
Subject: Re: [PATCH V5 04/11] iio: imu: inv_icm42607: Add I2C and SPI For
 icm42607
Message-ID: <20260511184715.241be1f1@jic23-huawei>
In-Reply-To: <20260509191907.24734-5-macroalpha82@gmail.com>
References: <20260509191907.24734-1-macroalpha82@gmail.com>
	<20260509191907.24734-5-macroalpha82@gmail.com>
X-Mailer: Claws Mail 4.4.0 (GTK 3.24.52; x86_64-pc-linux-gnu)
MIME-Version: 1.0
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

On Sat,  9 May 2026 14:18:58 -0500
Chris Morgan <macroalpha82@gmail.com> wrote:

> From: Chris Morgan <macromorgan@hotmail.com>
> 
> Add I2C and SPI driver support for InvenSense ICM-42607 devices.
> Add necessary Kconfig and Makefile to allow building of (incomplete)
> driver.
> 
> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>

Sashiko got busy and found something that I now realize I didn't
understand at all :(


> diff --git a/drivers/iio/imu/inv_icm42607/inv_icm42607_core.c b/drivers/iio/imu/inv_icm42607/inv_icm42607_core.c
> index e84e84416dab..8ff51711ab1f 100644
> --- a/drivers/iio/imu/inv_icm42607/inv_icm42607_core.c
> +++ b/drivers/iio/imu/inv_icm42607/inv_icm42607_core.c
> @@ -15,6 +15,57 @@
>  
>  #include "inv_icm42607.h"
>  
> +static const struct regmap_range_cfg inv_icm42607_regmap_ranges[] = {
> +	{
> +		.name = "user bank",
> +		.range_min = 0x0000,
> +		.range_max = 0x00FF,
> +		.window_start = 0,
> +		.window_len = 0x0100,

I'd never really looked at this bit of regmap before but sashiko
did suggest a possible issue and from the documentation it appears it
might be right. 
 * Registers, mapped to this virtual range, are accessed in two steps:
 *     1. page selector register update;
 *     2. access through data window registers.

So whether or not we want one the page selector infrastructure is
used.

So Sashiko suggested we'll get a bank setting write to register 0
with value 0.

Having dug around I found a 42607-c datasheet:
https://www.lcsc.com/datasheet/C2879807.pdf?spm=wm.sxq.inf.ggs&lcsc_vid=EVNXBlQAR1RZAwIHTwMLUVcEFgVcAQdQQgVeBlJSQAIxVlNRT1RcVldeQlZeVzsOAxUeFF5JWBYZEEoBGA4JCwFIFA4DSA%3D%3D

That suggests there is a bank select register but at 0x7c which isn't
documented for the 42607P :(

It also doesn't correspond to conventional window / bank arrangement so
this probably doesn't apply anyway.


> +	},
> +};
> +
> +const struct regmap_config inv_icm42607_regmap_config = {
> +	.reg_bits = 8,
> +	.val_bits = 8,
> +	.max_register = 0x00FF,
> +	.ranges = inv_icm42607_regmap_ranges,
> +	.num_ranges = ARRAY_SIZE(inv_icm42607_regmap_ranges),
> +	.cache_type = REGCACHE_NONE,
> +};
> +EXPORT_SYMBOL_NS_GPL(inv_icm42607_regmap_config, "IIO_ICM42607");


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
