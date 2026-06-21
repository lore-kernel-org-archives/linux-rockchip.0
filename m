Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4D63ACD98F2
	for <linux-rockchip@archiver.kernel.org>; Sun, 21 Jun 2026 17:34:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IiVQPIPyzO1ufp3te08ePAqHa6P36uj1BKvcBQePqjo=; b=U7Lri7VdfaWTo0
	uLmNEVXDTZFl1TgvMlRn6rmo94N6yoHpShUbB1s/+RlwfcfYRFhokuuw4EtCmk5yW7w13pTvZIUg+
	ExiyTYWXvxq/P0YqMjPykYktpEtUpB25XJYUXzyj9zqEsFp9rj2LMb4vJ5nuh0kv6W7nxkg3PEt4Z
	zuVQ+FKceLFoS+47OmMx+pnmomIvOsh3JYFekMAwmB8FYpyYRUUd52W/tldaNLPTUvQiOrBsOCRcJ
	AX9pIcMJIk/Sp6YMPrIEKqXp6fJW0xLmAtwujBMMC33cPoInt3LQ+mpYBco755ZA+JJ+3yuXyolOQ
	cN7w+v+8zLhTRjOkcGdA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wbM3q-000000045VJ-1P5L;
	Sun, 21 Jun 2026 17:34:22 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wbM3o-000000045VD-15p1
	for linux-rockchip@lists.infradead.org;
	Sun, 21 Jun 2026 17:34:20 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id D61D660051;
	Sun, 21 Jun 2026 17:34:18 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7E1B31F00A3F;
	Sun, 21 Jun 2026 17:34:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782063258;
	bh=uC3ZTNbtlYKLqbdb+bG9ZesKDDZHUXkiuArgtv4QKOo=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References;
	b=OmqpIAZwJMuqvKZE9gUI6A5vRJ3pfNJpmzrA/Q6gHzhqvDCMA8ryzwIM0l6rOejAq
	 ZkAcs4310KG4Ooyt8eLy+yijw2SARaXJTpJuNyjlLd651sXbDifWsjO2yBKguZh1lj
	 1fBLRHDTRV0R3cMm9GDwiVjqxH8YqlEY/xHcbjGLruUK4q41KeJrAY/HqpwMFIUD0i
	 HfLBwqBNa/K4xHbt2iGgbOqCtmg42Te/TvmAoofgBvwaGLD/LR1UGdUDtK4Eer2IFX
	 RgWm38rxdNaNq7/iQq2I5xW1XSzU0kdlNORSMZ3Hj2Mtr2RKhuThIUup9lLPS5To8S
	 TcPXA8a6f99LQ==
Date: Sun, 21 Jun 2026 18:34:08 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Chris Morgan <macroalpha82@gmail.com>
Cc: linux-iio@vger.kernel.org, andy@kernel.org, nuno.sa@analog.com,
 dlechner@baylibre.com, jean-baptiste.maneyrol@tdk.com,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 heiko@sntech.de, conor+dt@kernel.org, krzk+dt@kernel.org, robh@kernel.org,
 andriy.shevchenko@intel.com, Chris Morgan <macromorgan@hotmail.com>
Subject: Re: [PATCH V13 8/9] iio: imu: inv_icm42607: Add Gyroscope to
 icm42607
Message-ID: <20260621183408.032e18b4@jic23-huawei>
In-Reply-To: <20260615172554.160910-9-macroalpha82@gmail.com>
References: <20260615172554.160910-1-macroalpha82@gmail.com>
	<20260615172554.160910-9-macroalpha82@gmail.com>
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

On Mon, 15 Jun 2026 12:25:51 -0500
Chris Morgan <macroalpha82@gmail.com> wrote:

> From: Chris Morgan <macromorgan@hotmail.com>
> 
> Add gyroscope functions to the icm42607 driver.
> 
> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
There is another bit of sashiko stuff in here. Please
take a look
https://sashiko.dev/#/patchset/20260615172554.160910-1-macroalpha82%40gmail.com

I think it is correct about there being a path in which the
gyro ends up always enabled along side anything else after
the first read.

In general there seems to be a bit of mix on whether the caller
or the power management function should be responsible for the caching
of state.

I know you look at Sashiko so I could just have waited a bit, but
I was reviewing anyway so took a look and having done that might
as well highlight some stuff!

Jonathan

> diff --git a/drivers/iio/imu/inv_icm42607/inv_icm42607_core.c b/drivers/iio/imu/inv_icm42607/inv_icm42607_core.c
> index eb239987a1ce..23ca7529825c 100644
> --- a/drivers/iio/imu/inv_icm42607/inv_icm42607_core.c
> +++ b/drivers/iio/imu/inv_icm42607/inv_icm42607_core.c
> @@ -218,6 +218,49 @@ int inv_icm42607_set_accel_conf(struct inv_icm42607_state *st,
>  					  st->conf.temp_en, sleep_ms);
>  }
>  
> +int inv_icm42607_set_gyro_conf(struct inv_icm42607_state *st,
> +			       struct inv_icm42607_sensor_conf *conf,
> +			       unsigned int *sleep_ms)
> +{
> +	struct inv_icm42607_sensor_conf *oldconf = &st->conf.gyro;
> +	unsigned int val;
> +	int ret;
> +
> +	if (conf->mode < 0)
> +		conf->mode = oldconf->mode;
> +	if (conf->fs < 0)
> +		conf->fs = oldconf->fs;
> +	if (conf->odr < 0)
> +		conf->odr = oldconf->odr;
> +	if (conf->filter < 0)
> +		conf->filter = oldconf->filter;
> +
> +	if (conf->fs != oldconf->fs || conf->odr != oldconf->odr) {
> +		val = FIELD_PREP(INV_ICM42607_GYRO_CONFIG0_FS_SEL_MASK,
> +				 conf->fs);
> +		val |= FIELD_PREP(INV_ICM42607_GYRO_CONFIG0_ODR_MASK,
> +				  conf->odr);
> +		ret = regmap_write(st->map, INV_ICM42607_REG_GYRO_CONFIG0, val);
> +		if (ret)
> +			return ret;
> +		oldconf->fs = conf->fs;
> +		oldconf->odr = conf->odr;
> +	}
> +
> +	if (conf->filter != oldconf->filter) {
> +		val = FIELD_PREP(INV_ICM42607_GYRO_CONFIG1_FILTER_MASK,
> +				 conf->filter);
> +		ret = regmap_update_bits(st->map, INV_ICM42607_REG_GYRO_CONFIG1,
> +					 INV_ICM42607_GYRO_CONFIG1_FILTER_MASK, val);
> +		if (ret)
> +			return ret;
> +		oldconf->filter = conf->filter;
> +	}
> +
> +	return inv_icm42607_set_pwr_mgmt0(st, conf->mode, st->conf.accel.mode,
> +					  st->conf.temp_en, sleep_ms);
> +}

> diff --git a/drivers/iio/imu/inv_icm42607/inv_icm42607_gyro.c b/drivers/iio/imu/inv_icm42607/inv_icm42607_gyro.c
> new file mode 100644
> index 000000000000..ef73560b39d7
> --- /dev/null
> +++ b/drivers/iio/imu/inv_icm42607/inv_icm42607_gyro.c

> +static int inv_icm42607_gyro_read_sensor(struct iio_dev *indio_dev,
> +					 struct iio_chan_spec const *chan,
> +					 s16 *val)
> +{
> +	struct inv_icm42607_sensor_conf conf = INV_ICM42607_SENSOR_CONF_INIT;
> +	struct inv_icm42607_state *st = iio_device_get_drvdata(indio_dev);
> +	struct inv_icm42607_sensor_state *gyro_st = iio_priv(indio_dev);
> +	struct device *dev = regmap_get_device(st->map);
> +	unsigned int reg;
> +	u8 data[2];
> +	int ret;
> +
> +	if (chan->type != IIO_ANGL_VEL)
> +		return -EINVAL;
> +
> +	switch (chan->channel2) {
> +	case IIO_MOD_X:
> +		reg = INV_ICM42607_REG_GYRO_DATA_X1;
> +		break;
> +	case IIO_MOD_Y:
> +		reg = INV_ICM42607_REG_GYRO_DATA_Y1;
> +		break;
> +	case IIO_MOD_Z:
> +		reg = INV_ICM42607_REG_GYRO_DATA_Z1;
> +		break;
> +	default:
> +		return -EINVAL;
> +	}
> +
> +	PM_RUNTIME_ACQUIRE_AUTOSUSPEND(dev, pm);
> +	ret = PM_RUNTIME_ACQUIRE_ERR(&pm);
> +	if (ret)
> +		return ret;
> +
> +	guard(mutex)(&st->lock);
> +
> +	/* enable gyro sensor */
> +	conf.mode = gyro_st->power_mode;
> +	conf.filter = gyro_st->filter;
> +	ret = inv_icm42607_set_gyro_conf(st, &conf, NULL);
The sashiko report is basically:

This turns it on, and runtime pm will turn it off but the
state cached ends up such that it is turned on again for
any runtime pm resume.

> +	if (ret)
> +		return ret;
> +
> +	/* read gyro register data */
> +	ret = regmap_bulk_read(st->map, reg, data, sizeof(data));
> +	if (ret)
> +		return ret;
> +
> +	*val = get_unaligned_be16(data);
> +	if (*val == INV_ICM42607_DATA_INVALID)
> +		return -EINVAL;
> +
> +	return 0;
> +}


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
