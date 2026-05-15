Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B8798CD343F
	for <linux-rockchip@archiver.kernel.org>; Fri, 15 May 2026 18:43:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=94ctG7fc7NJiLYNAoGyxuC5b15XDbhrpzM64GMa5XXg=; b=fWZ3N8uB0Vo5L9
	o0HY2nI08f97QT26QaZBpX0ettpCxYzIOVbOUezYfyXLoIQDWWYU60cenkZPxxFjOdjBB5hxZTHDh
	Rarip8Ms670xFZXlV1K5l5o7HVpKKpIBN+nDcq1tVNktVbdPQiM0KVN9WU/P3qEwrPOSlxDeQn32q
	t8GC+bFKTAdeH9+cM1vpdhvCnI0VoGX9U8d6ZV3AXxVE7YKa4jmI/USFK55mcDCGInvC88WBoTTU4
	3Ur2N7Wvy0C9oEcJ6XTnscs0+MsGP5J8pJ/pCFYhAGgiPoNUmlQeSO7Kix51/51mgUVH4Clbu2zTa
	6oDjqXiJDxlJo46K29ng==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wNxVL-000000096zP-2kkn;
	Fri, 15 May 2026 18:43:23 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wNxVJ-000000096yt-0k9B
	for linux-rockchip@lists.infradead.org;
	Fri, 15 May 2026 18:43:22 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 60F4D44181;
	Fri, 15 May 2026 18:43:20 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DC384C2BCB0;
	Fri, 15 May 2026 18:43:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778870600;
	bh=5tR1Qq6xXLAVWqV0dkBVwnCvUhjaha/lBnGmx1miMN4=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=PG3fN/s00vPlguRABctf1XyvtT7LxFl38BgcWW3iuZl+rxXwOte//qx3tcUDBdqWz
	 vlVD+et8rq3B35sMYC1+6KYdUdnKNNx6DrZsg6RVjn4iQP2O+FEZc8Hu9hqkqvIW00
	 iaiQ4kB/Qt6gjzEs4hl8saGH3m8hHVsn+hbhbHSIU7LJ/yvBWo2Ar8Cycu7Y45b6OH
	 uO7cNbAZ+XofZM1B9azZvXScfJiQ7pVVzThHCt7SF61EE9mK9WPTPyc1DVFqCmWuSB
	 JpfzhrD74D9t+N7EO6b5RWt1ZP6mbmEjk3DrHFFZwxLHj/pf2DIB6i3vhslMrAJp0S
	 77DrEUkl1uQSA==
Date: Fri, 15 May 2026 19:43:10 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Chris Morgan <macroalpha82@gmail.com>
Cc: linux-iio@vger.kernel.org, andy@kernel.org, nuno.sa@analog.com,
 dlechner@baylibre.com, jean-baptiste.maneyrol@tdk.com,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 heiko@sntech.de, conor+dt@kernel.org, krzk+dt@kernel.org, robh@kernel.org,
 andriy.shevchenko@intel.com, Chris Morgan <macromorgan@hotmail.com>
Subject: Re: [PATCH V7 04/11] iio: imu: inv_icm42607: Add I2C and SPI For
 icm42607
Message-ID: <20260515194310.49fa6fb0@jic23-huawei>
In-Reply-To: <20260515130018.237378-5-macroalpha82@gmail.com>
References: <20260515130018.237378-1-macroalpha82@gmail.com>
	<20260515130018.237378-5-macroalpha82@gmail.com>
X-Mailer: Claws Mail 4.4.0 (GTK 3.24.52; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260515_114321_277370_DECFA179 
X-CRM114-Status: GOOD (  32.61  )
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

On Fri, 15 May 2026 08:00:09 -0500
Chris Morgan <macroalpha82@gmail.com> wrote:

> From: Chris Morgan <macromorgan@hotmail.com>
> 
> Add I2C and SPI driver support for InvenSense ICM-42607 devices.
> Add necessary Kconfig and Makefile to allow building of (incomplete)
> driver.
> 
> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
I'm a little amused that sashiko seems to have halucinated part of the
previous patch as part of this one as so repeated some comments. Oh well.
Some of it's other comments are correct.

The only thing I added was a few formatting things.

> diff --git a/drivers/iio/imu/inv_icm42607/inv_icm42607_core.c b/drivers/iio/imu/inv_icm42607/inv_icm42607_core.c
> index 9784709319b9..1088c5c7076f 100644
> --- a/drivers/iio/imu/inv_icm42607/inv_icm42607_core.c
> +++ b/drivers/iio/imu/inv_icm42607/inv_icm42607_core.c
BOL_NS_GPL(inv_icm42607p_hw_data, "IIO_ICM42607");
> +
>  static int inv_icm42607_set_conf(struct inv_icm42607_state *st,
>  				 const struct inv_icm42607_conf *conf)
>  {
> @@ -81,6 +138,14 @@ static int inv_icm42607_setup(struct inv_icm42607_state *st,
>  	unsigned int val;
>  	int ret;
>  
> +	/*
> +	 * Setup the bus first in case we need to set the SPI mode or
> +	 * change the slew rate in order.

Short wrap.  change at least shold be on the line above.

> +	 */
> +	ret = bus_setup(st);
> +	if (ret)
> +		return ret;
> +
>  	ret = regmap_read(st->map, INV_ICM42607_REG_WHOAMI, &val);
>  	if (ret)
>  		return ret;
> @@ -94,20 +159,27 @@ static int inv_icm42607_setup(struct inv_icm42607_state *st,
>  	if (ret)
>  		return ret;
>  
> -	fsleep(1000);
> +	/*
> +	 * In order to confirm a reset is complete, we need to read the reset
> +	 * bit, but in certain circumstances we need to set the bus up before
> +	 * we can do a read. So we should wait the required amount of time
> +	 * per the datasheet first, then set the bus up again, then read to
> +	 * ensure the reset status is done. Invalidate the regmap cache since
> +	 * we're doing a hardware reset.
> +	 */
> +	regcache_mark_dirty(st->map);
Sashiko has some comments here as well:
"
Because regcache_mark_dirty() only flags the cache as needing a sync but does
not clear the cached values, will regmap_update_bits() in this second
bus_setup() call silently skip the hardware writes?
The cache would still show the bits as set from the first bus_setup(), leaving
the hardware in its default reset state.
Would regcache_sync() or regcache_drop_region() be more appropriate here to
force the actual hardware writes?"

>  
> -	ret = regmap_read_poll_timeout(st->map, INV_ICM42607_REG_INT_STATUS,
> -				       val, val & INV_ICM42607_INT_STATUS_RESET_DONE,
> -				       INV_ICM42607_RESET_TIME_MS * 100,
> -				       INV_ICM42607_RESET_TIME_MS * 1000);
> -	if (ret)
> -		return dev_err_probe(dev, ret,
> -				     "reset error, reset done bit not set\n");
> +	fsleep(INV_ICM42607_RESET_TIME_MS * 1000);
>  
>  	ret = bus_setup(st);
>  	if (ret)
>  		return ret;
>  
> +	ret = regmap_read(st->map, INV_ICM42607_REG_INT_STATUS, &val);
> +	if (ret || (!(val & INV_ICM42607_INT_STATUS_RESET_DONE)))
I agree with sashiko here. If you get ret you should return it.

	if (ret)
		return dev_err_probe(dev, ret, "reset error\n");
	if (!(val & INV...))
		return dev_err_probe(dev, -EIO, "reset done bit not set\n");
or something like that.
 
> +		return dev_err_probe(dev, -EIO,
> +				     "reset error, reset done bit not set\n");
> +
>  	ret = regmap_set_bits(st->map, INV_ICM42607_REG_INTF_CONFIG0,
>  			      INV_ICM42607_INTF_CONFIG0_SENSOR_DATA_ENDIAN);
>  	if (ret)

> diff --git a/drivers/iio/imu/inv_icm42607/inv_icm42607_spi.c b/drivers/iio/imu/inv_icm42607/inv_icm42607_spi.c
> new file mode 100644
> index 000000000000..49438fa6f867
> --- /dev/null
> +++ b/drivers/iio/imu/inv_icm42607/inv_icm42607_spi.c
> @@ -0,0 +1,102 @@
> +// SPDX-License-Identifier: GPL-2.0-or-later
> +/*
> + * Copyright (C) 2026 InvenSense, Inc.
> + */
> +
> +#include <linux/device.h>
> +#include <linux/mod_devicetable.h>
> +#include <linux/module.h>
> +#include <linux/property.h>
> +#include <linux/regmap.h>
> +#include <linux/spi/spi.h>
> +
> +#include "inv_icm42607.h"
> +
> +static int inv_icm42607_spi_bus_setup(struct inv_icm42607_state *st)
> +{
> +	const struct device *dev = regmap_get_device(st->map);
> +	const struct spi_device *spi = to_spi_device(dev);
> +	unsigned int val;
> +	int ret;
> +
> +	if (spi->mode & SPI_3WIRE)
> +		ret = regmap_clear_bits(st->map, INV_ICM42607_REG_DEVICE_CONFIG,
> +					INV_ICM42607_DEVICE_CONFIG_SPI_AP_4WIRE);
> +	else
> +		ret = regmap_set_bits(st->map, INV_ICM42607_REG_DEVICE_CONFIG,
> +				      INV_ICM42607_DEVICE_CONFIG_SPI_AP_4WIRE);

I'm inclined to agree with sashiko on these.  You need a 'write' not an update
as the read in a read / modify / write cycle will fail if you are in the wrong mode.
https://sashiko.dev/#/patchset/20260515130018.237378-1-macroalpha82%40gmail.com

Given we are near merging this it can be helpful that if you disagree with sashiko's
comments reply to say so and why.


> +	if (ret)
> +		return ret;
> +
> +	ret = regmap_clear_bits(st->map, INV_ICM42607_REG_INTF_CONFIG1,
> +				INV_ICM42607_INTF_CONFIG1_I3C_DDR_EN |
> +				INV_ICM42607_INTF_CONFIG1_I3C_SDR_EN);
> +	if (ret)
> +		return ret;
> +
> +	val = FIELD_PREP(INV_ICM42607_DRIVE_CONFIG3_SPI_MASK,
> +			 INV_ICM42607_SLEW_RATE_INF_2NS);
> +	ret = regmap_update_bits(st->map, INV_ICM42607_REG_DRIVE_CONFIG3,
> +				 INV_ICM42607_DRIVE_CONFIG3_SPI_MASK, val);
> +	if (ret)
> +		return ret;
> +
> +	return regmap_update_bits(st->map, INV_ICM42607_REG_INTF_CONFIG0,
> +				  INV_ICM42607_INTF_CONFIG0_UI_SIFS_CFG_MASK,
> +				  INV_ICM42607_INTF_CONFIG0_UI_SIFS_CFG_I2C_DIS);
> +}
> +
> +static int inv_icm42607_probe(struct spi_device *spi)
> +{
> +	const struct inv_icm42607_hw *hw;
> +	struct regmap *regmap;
> +
> +	hw = spi_get_device_match_data(spi);
> +	if (!hw)
> +		return dev_err_probe(&spi->dev, -ENODEV,
> +				     "Failed to get SPI data\n");
> +
> +	regmap = devm_regmap_init_spi(spi, &inv_icm42607_regmap_config);
> +	if (IS_ERR(regmap))
> +		return dev_err_probe(&spi->dev, PTR_ERR(regmap),
> +				     "Failed to register spi regmap %ld\n",
> +				     PTR_ERR(regmap));
> +
> +	return inv_icm42607_core_probe(regmap, hw,
> +				       inv_icm42607_spi_bus_setup);

Fits on one line under 80 chars.  Have another scan through the whole
series for places where edits during revisions might now allow for
less wrapping.

> +}

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
