Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2D2F2109446F
	for <linux-rockchip@archiver.kernel.org>; Sat, 21 Mar 2026 17:49:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IWNIizCh2WzH/ClPQyf1IeTcTjaYjkMEs6cm/kSGfCU=; b=XksC/BJWrTvwY2
	bnivMLSzIbHwYqRdhEmrStHZlo4BuiZqOthrkQ/S4TinHZ3Ha7ZKs9EZLQONtOiYki4CNhFp3aqsa
	Jfp1hmhRa0mkKf059FHjiLjXi/VekRvP9IAJ91HgVhBYoMX9wQrMTgKEP8YrA6Lof+tOLFh3YkR4f
	Sw2HYzZbbV5YeJ/dSvTdMMgU9ILUlh2O/4IW2aSN68jt6YNjwKnJwsIW1cAQe3eaysYgeQ0MWuHxb
	J3I65+LMqkCQfCJi3yjuEoWA0NJSxVHMlMiWdgBNgk20vUwZmV2Fg0JCh3nhnd+r6U3942QYoCDCc
	vfdqjqNyc9UYLMLWcbEA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w40Rf-0000000Eh2P-3Kub;
	Sat, 21 Mar 2026 17:49:07 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w40Rd-0000000Eh24-0ATj
	for linux-rockchip@lists.infradead.org;
	Sat, 21 Mar 2026 17:49:06 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id D632640B34;
	Sat, 21 Mar 2026 17:49:03 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4602EC19421;
	Sat, 21 Mar 2026 17:48:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774115343;
	bh=XDefJK4ZU67yoy1mnx1Llq5tKyJ/lXBgdgxNHq/5KzI=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=N++0AVCj38F8FY3k48BIN8EmtnenDCWn+iMEPWSQeLaczOV9YM1vqXiHUJqSCrcI6
	 SXMZvh1KKurLBR4PFHDe3syZGHE+HEFaWdKQlJX1TQZ0eT7Rg2bmERmi5xTHit6W2G
	 6CuAk4l4BG+iZbjMbiv79iyspqBUJQuS4thHS3d2+Rbk3w+dBLcZzACaCxZ270OUpN
	 yY+Ha+OPv73AGbL7EUXI+LF1A3Lt0l7aqKkIbI9cYmwh68yTHMptZd/b2PKgg9IJ2V
	 lVQR73k7n1HfT9x8eL/lt5Uw2XCnLc+M69NEZ7Hm01FWztEc6xEphpQpfl2J9wKDGx
	 MKos2j4vJG8bg==
Date: Sat, 21 Mar 2026 17:48:53 +0000
From: Jonathan Cameron <jic23@kernel.org>
To: Chris Morgan <macroalpha82@gmail.com>
Cc: linux-iio@vger.kernel.org, andy@kernel.org, nuno.sa@analog.com,
 dlechner@baylibre.com, jean-baptiste.maneyrol@tdk.com,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 heiko@sntech.de, conor+dt@kernel.org, krzk+dt@kernel.org, robh@kernel.org,
 andriy.shevchenko@intel.com, Chris Morgan <macromorgan@hotmail.com>
Subject: Re: [PATCH V2 4/5] iio: imu: inv_icm42600: Add support for icm42607
Message-ID: <20260321174853.643cca6f@jic23-huawei>
In-Reply-To: <20260319182956.146976-5-macroalpha82@gmail.com>
References: <20260319182956.146976-1-macroalpha82@gmail.com>
	<20260319182956.146976-5-macroalpha82@gmail.com>
X-Mailer: Claws Mail 4.4.0 (GTK 3.24.51; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260321_104905_132061_F0C07E0D 
X-CRM114-Status: GOOD (  37.26  )
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

On Thu, 19 Mar 2026 13:29:40 -0500
Chris Morgan <macroalpha82@gmail.com> wrote:

> From: Chris Morgan <macromorgan@hotmail.com>
> 
> Add support for the icm42607 and icm42607p over both I2C and SPI.
> Note that at this time only the icm42607 over i2c has been tested.
> 
> This driver was updated based on the existing icm42600 along with
> the datasheet from Invensense and out-of-tree sources included
> in the LineageOS kernels [1] and Rockchip kernels [2], both derived
> from sources provided by Invensense.
> 
> [1] https://github.com/LineageOS/android_kernel_nvidia_kernel-nx/tree/lineage-23.0/drivers/iio/imu/inv_icm42607x
> [2] https://github.com/rockchip-linux/kernel/tree/develop-6.6/drivers/iio/imu/inv_icm42670
> 
> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
Hi Chris,

Just a quick look to see what was here.

A few comments inline but the big question is clearly whether or not it makes sense
to share the driver at all.

Thanks,

Jonathan

>  int inv_icm42600_accel_init(struct inv_icm42600_state *st, struct iio_dev *indio_dev)
>  {
>  	struct device *dev = regmap_get_device(st->map);
> @@ -1202,6 +1610,62 @@ int inv_icm42600_accel_init(struct inv_icm42600_state *st, struct iio_dev *indio
>  	return 0;
>  }
>  
> +int inv_icm42607_accel_init(struct inv_icm42600_state *st, struct iio_dev *indio_dev)
> +{

> +	/* accel events are wakeup capable */
> +	ret = devm_device_init_wakeup(&indio_dev->dev);
> +	if (ret)
> +		return ret;
> +
> +	return 0;

return devm_device_init_wakeup();

> +}


> diff --git a/drivers/iio/imu/inv_icm42600/inv_icm42600_core.c b/drivers/iio/imu/inv_icm42600/inv_icm42600_core.c
> index 29c8c1871e06..949dbf9c2cd3 100644
> --- a/drivers/iio/imu/inv_icm42600/inv_icm42600_core.c
> +++ b/drivers/iio/imu/inv_icm42600/inv_icm42600_core.c

>  	.gyro = {
>  		.mode = INV_ICM42600_SENSOR_MODE_OFF,
> @@ -157,6 +193,16 @@ static const struct inv_icm42600_hw inv_icm42600_hw[INV_CHIP_NB] = {
>  		.name = "icm42605",
>  		.conf = &inv_icm42600_default_conf,
>  	},
> +	[INV_CHIP_ICM42607] = {

If this goes ahead, we'd probably want to break up the structure arrays, drop
the enum and instead have extern lines for each individual names structure in the header.

The aim is both give more readable handling using the generic functions to get
the data from whatever firmware is in use and ensure all control is via 'data' in
the chip type specific structures.

We used to do the enum thing a lot but it proved to be a not particularly
good idea and we've been slowly ripping it out again in recent years!


> +		.whoami = INV_ICM42607_WHOAMI,
> +		.name = "icm42607",
> +		.conf = &inv_icm42607_default_conf,
> +	},
> +	[INV_CHIP_ICM42607P] = {
> +		.whoami = INV_ICM42607P_WHOAMI,
> +		.name = "icm42607p",
> +		.conf = &inv_icm42607_default_conf,
> +	},

> +/**
> + *  inv_icm42607_setup() - check and setup chip
> + *  @st:	driver internal state
> + *  @bus_setup:	callback for setting up bus specific registers
> + *
> + *  Returns 0 on success, a negative error code otherwise.
> + */
> +static int inv_icm42607_setup(struct inv_icm42600_state *st,
> +			      inv_icm42600_bus_setup bus_setup)
> +{
> +	const struct inv_icm42600_hw *hw = &inv_icm42600_hw[st->chip];
> +	const struct device *dev = regmap_get_device(st->map);
> +	unsigned int val;
> +	int ret;
> +
> +	ret = regmap_read(st->map, INV_ICM42607_REG_WHOAMI, &val);
> +	if (ret)
> +		return ret;
> +
> +	if (val != hw->whoami)

I guess the driver is doing this for other devices.  That's a historical
thing.  For new code (+ slowly fixing up drivers) we always accept the
dt binding value even if there is a whoami match failure because that enables
fallback compatibles.  That is newer devices can be supported by older
kernels without requiring code changes.

Instead just print an info message as it might help with debugging.

> +		return dev_err_probe(dev, -ENODEV,
> +				     "invalid whoami %#02x expected %#02x (%s)\n",
> +				     val, hw->whoami, hw->name);
> +
> diff --git a/drivers/iio/imu/inv_icm42600/inv_icm42600_gyro.c b/drivers/iio/imu/inv_icm42600/inv_icm42600_gyro.c
> index 32aa2e52df2e..eb590eb4f397 100644
> --- a/drivers/iio/imu/inv_icm42600/inv_icm42600_gyro.c
> +++ b/drivers/iio/imu/inv_icm42600/inv_icm42600_gyro.c

>  static int inv_icm42600_gyro_read_sensor(struct inv_icm42600_state *st,
>  					 struct iio_chan_spec const *chan,
>  					 s16 *val)
> @@ -188,6 +265,58 @@ static int inv_icm42600_gyro_read_sensor(struct inv_icm42600_state *st,
>  	return ret;
>  }
>  
> +static int inv_icm42607_gyro_read_sensor(struct inv_icm42600_state *st,
> +					 struct iio_chan_spec const *chan,
> +					 s16 *val)
> +{
...

> +	conf.mode = INV_ICM42600_SENSOR_MODE_LOW_NOISE;
> +	ret = inv_icm42607_set_gyro_conf(st, &conf, NULL);
> +	if (ret)
> +		return ret;
> +
> +	/* read gyro register data */
> +	data = (__be16 *)&st->buffer[0];

Similar to below, I'd be use the buffer directly in the call and
an unaligned get to reduce alignment assumptions. 
And sizeof(__be16) given then there won't be a local variable to use.

> +	ret = regmap_bulk_read(st->map, reg, data, sizeof(*data));
> +	if (ret)
> +		return ret;
> +
> +	*val = (s16)be16_to_cpup(data);
> +	if (*val == INV_ICM42607_DATA_INVALID)
> +		ret = -EINVAL;
		return -EINVAL;

	return 0;
> +
> +	return ret;
> +}

>  
>  static int inv_icm42600_gyro_read_scale(struct iio_dev *indio_dev,
>  					int *val, int *val2)
> @@ -276,12 +419,21 @@ static int inv_icm42600_gyro_write_scale(struct iio_dev *indio_dev,
>  
>  	conf.fs = idx / 2;
>  
> -	pm_runtime_get_sync(dev);
> -
> -	scoped_guard(mutex, &st->lock)
> -		ret = inv_icm42600_set_gyro_conf(st, &conf, NULL);
> +	PM_RUNTIME_ACQUIRE_AUTOSUSPEND(dev, pm);
> +	if (PM_RUNTIME_ACQUIRE_ERR(&pm))
> +		return -ENXIO;
>  
> -	pm_runtime_put_autosuspend(dev);

Do this in a precursor patch, not buried in here.

> +	switch (st->chip) {
> +	case INV_CHIP_ICM42607:
> +	case INV_CHIP_ICM42607P:
> +		scoped_guard(mutex, &st->lock)
> +			ret = inv_icm42607_set_gyro_conf(st, &conf, NULL);
> +		break;
> +	default:
> +		scoped_guard(mutex, &st->lock)
> +			ret = inv_icm42600_set_gyro_conf(st, &conf, NULL);
> +		break;
> +	}
>  
>  	return ret;
>  }



> @@ -783,6 +1089,56 @@ int inv_icm42600_gyro_init(struct inv_icm42600_state *st, struct iio_dev *indio_
>  	return 0;
>  }
>  
> +int inv_icm42607_gyro_init(struct inv_icm42600_state *st, struct iio_dev *indio_dev)
> +{
...

> +
> +	ret = devm_iio_device_register(dev, indio_dev);
> +	if (ret)
> +		return ret;

	return devm_iio_device_register();

> +
> +	return 0;
> +}


> diff --git a/drivers/iio/imu/inv_icm42600/inv_icm42600_spi.c b/drivers/iio/imu/inv_icm42600/inv_icm42600_spi.c
> index 13e2e7d38638..6bfd5598b262 100644
> --- a/drivers/iio/imu/inv_icm42600/inv_icm42600_spi.c
> +++ b/drivers/iio/imu/inv_icm42600/inv_icm42600_spi.c

>  static int inv_icm42600_probe(struct spi_device *spi)
>  {
>  	const void *match;
> @@ -59,12 +88,22 @@ static int inv_icm42600_probe(struct spi_device *spi)
>  		return -EINVAL;
>  	chip = (uintptr_t)match;
>  
> -	/* use SPI specific regmap */
> -	regmap = devm_regmap_init_spi(spi, &inv_icm42600_spi_regmap_config);
> -	if (IS_ERR(regmap))
> -		return PTR_ERR(regmap);
> -
> -	return inv_icm42600_core_probe(regmap, chip, inv_icm42600_spi_bus_setup);
> +	switch (chip) {
> +	case INV_CHIP_ICM42607:
> +	case INV_CHIP_ICM42607P:
> +		regmap = devm_regmap_init_spi(spi, &inv_icm42607_regmap_config);
> +		if (IS_ERR(regmap))
> +			return PTR_ERR(regmap);
> +		return inv_icm42600_core_probe(regmap, chip,
> +					       inv_icm42607_spi_bus_setup);
> +	default:
> +		/* use SPI specific regmap */

This comment is a bit odd given the above is also an SPI specific regmap
and the naming makes it obvious.  Drop the comment.

> +		regmap = devm_regmap_init_spi(spi, &inv_icm42600_spi_regmap_config);
> +		if (IS_ERR(regmap))
> +			return PTR_ERR(regmap);
> +		return inv_icm42600_core_probe(regmap, chip,
> +					       inv_icm42600_spi_bus_setup);
> +	}
>  }

> diff --git a/drivers/iio/imu/inv_icm42600/inv_icm42600_temp.c b/drivers/iio/imu/inv_icm42600/inv_icm42600_temp.c
> index 727b03d541a5..fdda555dbd16 100644
> --- a/drivers/iio/imu/inv_icm42600/inv_icm42600_temp.c
> +++ b/drivers/iio/imu/inv_icm42600/inv_icm42600_temp.c
> @@ -46,6 +46,34 @@ static int inv_icm42600_temp_read(struct inv_icm42600_state *st, s16 *temp)
>  	return ret;
>  }
>  
> +static int inv_icm42607_temp_read(struct inv_icm42600_state *st, s16 *temp)
> +{
> +	struct device *dev = regmap_get_device(st->map);
> +	__be16 *raw;
> +	int ret;
> +
> +	PM_RUNTIME_ACQUIRE_AUTOSUSPEND(dev, pm);
> +	if (PM_RUNTIME_ACQUIRE_ERR(&pm))
> +		return -ENXIO;

No problem with this in general as it makes the code cleaner, but I'd kind
of expect to ensure consistent local style by updating other places in a
precursor patch.

> +
> +	guard(mutex)(&st->lock);
> +
> +	ret = inv_icm42607_set_temp_conf(st, true, NULL);
> +	if (ret)
> +		return ret;
> +
> +	raw = (__be16 *)&st->buffer[0];

Whilst existing code does this, I'm not sure why we'd pass cast to __be16 * before
passing it to a function taking a void *

> +	ret = regmap_bulk_read(st->map, INV_ICM42607_REG_TEMP_DATA1, raw, sizeof(*raw));
> +	if (ret)
> +		return ret;
> +
> +	*temp = (s16)be16_to_cpup(raw);

Also true in existing code, but this is making a strong assumption about continued
behaviour of IIO_DMA_MINALIGN and that being at least 2.
I'd be tempted to use an unaligned get just to avoid that assumption.


> +	if (*temp == INV_ICM42600_DATA_INVALID)
> +		ret = -EINVAL;

		return -EINVAL;  ? 
No point in setting it otherwise.

> +
> +	return 0;
> +}


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
