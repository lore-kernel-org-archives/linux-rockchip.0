Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ACD33F531C9
	for <linux-rockchip@archiver.kernel.org>; Mon, 13 Apr 2026 19:32:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8Y3bwyuEEV0de//9TDZRBv93U9vMcorYX67hcsGvf0E=; b=I5fjaBWwedz7Vr
	7RXEtS5bXGbvCrs/XIvuB0rtNUpbfBwNFNTlSUzw3NtHPFzWYCJypQ1XcY5OIK9eDb7WTljXhT8nR
	B7EosUkLl684pN5eObxFawOrFG6qeTQ3E8X5qBpXdvYeK9uiGMutvCEpCQUyYCH4TDGH1rCWssdmL
	PaetcA4K7Pi17sl7cENdQYd6CBrd19O/YBHTwzMR9bBV3G7zI+GqGMdek/VE+fFeNUHC+5SzpVtX/
	9t4L6siZqdK9pj0VSOr1W372AA8bDrOC3pUdwfZNpXEQ8IB5wE6qBl+zcxNhU+SPzCcCCjURqZDxh
	cYJW6kkBwGryoHggrSFA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCN1T-0000000GJIN-23n8;
	Mon, 13 Apr 2026 19:32:39 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCN1R-0000000GJHW-0dCC
	for linux-rockchip@lists.infradead.org;
	Mon, 13 Apr 2026 19:32:38 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 56FB9419B1;
	Mon, 13 Apr 2026 19:32:36 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A1864C2BCAF;
	Mon, 13 Apr 2026 19:32:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776108756;
	bh=nqfcSnoFMTaEf7REl0hnsGm1mCvDY8V/IaZeofZI8kQ=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=LnapFphJ77p5Dea7pfpjldYYqmTpGngYb73MXOD7kaKRPqBL2k0Bj3vh+eiTr6fuu
	 kC6vrDAS7yU5qDEV/hDsNcpRqOSdvSL+yD4BKjS0E8ZrA+Tb/BZulm288toZsgqs+z
	 L05Dn7NNBzIgDmsUcfTvQUOZuW2YuEDULuAtrusf+EMPhNpE25rR0fFnY2nXBt/5cK
	 L/933bupfS7/MW334WPhtDXrOclHns1Bkk6g5uNKmALs5lup2wq93LduF9KMe3fIBJ
	 Ic+zY8GX75ZD3n90c7yMppC2WhlPz/9cgKjMuAWZEaDhCwsnQYyCDIP/BiDQSDKguF
	 Aamo53ScsiJoA==
Date: Mon, 13 Apr 2026 20:32:25 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Chris Morgan <macroalpha82@gmail.com>
Cc: linux-iio@vger.kernel.org, andy@kernel.org, nuno.sa@analog.com,
 dlechner@baylibre.com, jean-baptiste.maneyrol@tdk.com,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 heiko@sntech.de, conor+dt@kernel.org, krzk+dt@kernel.org, robh@kernel.org,
 andriy.shevchenko@intel.com, Chris Morgan <macromorgan@hotmail.com>
Subject: Re: [PATCH V3 6/9] iio: imu: inv_icm42607: Add Accelerometer for
 icm42607
Message-ID: <20260413203225.627b1aa3@jic23-huawei>
In-Reply-To: <20260330195853.392877-7-macroalpha82@gmail.com>
References: <20260330195853.392877-1-macroalpha82@gmail.com>
	<20260330195853.392877-7-macroalpha82@gmail.com>
X-Mailer: Claws Mail 4.4.0 (GTK 3.24.52; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260413_123237_240519_A38292A8 
X-CRM114-Status: GOOD (  23.86  )
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

On Mon, 30 Mar 2026 14:58:50 -0500
Chris Morgan <macroalpha82@gmail.com> wrote:

> From: Chris Morgan <macromorgan@hotmail.com>
> 
> Add icm42607 accelerometer sensor for icm42607.
> 
> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>

A few more things below.

thanks

Jonathan
> diff --git a/drivers/iio/imu/inv_icm42607/inv_icm42607_accel.c b/drivers/iio/imu/inv_icm42607/inv_icm42607_accel.c
> new file mode 100644
> index 000000000000..58754af31100
> --- /dev/null
> +++ b/drivers/iio/imu/inv_icm42607/inv_icm42607_accel.c


> +
> +static const struct iio_enum inv_icm42607_accel_power_mode_enum = {
> +	.items = inv_icm42607_accel_power_mode_items,
> +	.num_items = ARRAY_SIZE(inv_icm42607_accel_power_mode_items),
> +	.set = inv_icm42607_accel_power_mode_set,
> +	.get = inv_icm42607_accel_power_mode_get,
> +};
> +
> +static const struct iio_chan_spec_ext_info inv_icm42607_accel_ext_infos[] = {
> +	IIO_MOUNT_MATRIX(IIO_SHARED_BY_ALL, inv_icm42607_get_mount_matrix),
> +	IIO_ENUM_AVAILABLE("power_mode", IIO_SHARED_BY_TYPE,
> +			   &inv_icm42607_accel_power_mode_enum),
> +	IIO_ENUM("power_mode", IIO_SHARED_BY_TYPE,
> +		 &inv_icm42607_accel_power_mode_enum),
> +	{ },
No comma.
> +};


> +static int inv_icm42607_accel_read_odr(struct inv_icm42607_state *st,
> +				       int *val, int *val2)
> +{
> +	unsigned int odr;
> +	unsigned int i;
> +
> +	odr = st->conf.accel.odr;
> +
> +	for (i = 0; i < ARRAY_SIZE(inv_icm42607_accel_odr_conv); ++i) {
> +		if (inv_icm42607_accel_odr_conv[i] == odr)
> +			break;
> +	}
> +	if (i >= ARRAY_SIZE(inv_icm42607_accel_odr_conv))
> +		return -EINVAL;
> +
> +	*val = inv_icm42607_accel_odr[2 * i];
> +	*val2 = inv_icm42607_accel_odr[2 * i + 1];
> +
> +	return IIO_VAL_INT_PLUS_MICRO;
> +}
> +
> +static int inv_icm42607_accel_write_odr(struct iio_dev *indio_dev,
> +					int val, int val2)
> +{
> +	struct inv_icm42607_state *st = iio_device_get_drvdata(indio_dev);
> +	struct inv_icm42607_sensor_state *accel_st = iio_priv(indio_dev);
> +	struct inv_sensors_timestamp *ts = &accel_st->ts;
> +	struct device *dev = regmap_get_device(st->map);
> +	unsigned int idx;
> +	struct inv_icm42607_sensor_conf conf = INV_ICM42607_SENSOR_CONF_INIT;
> +	int ret;
> +
> +	for (idx = 0; idx < ARRAY_SIZE(inv_icm42607_accel_odr); idx += 2) {
> +		if (val == inv_icm42607_accel_odr[idx] &&
> +			val2 == inv_icm42607_accel_odr[idx + 1])
> +			break;
> +	}
> +	if (idx >= ARRAY_SIZE(inv_icm42607_accel_odr))
> +		return -EINVAL;
> +
> +	conf.odr = inv_icm42607_accel_odr_conv[idx / 2];
> +
> +	PM_RUNTIME_ACQUIRE_AUTOSUSPEND(dev, pm);
> +	if (PM_RUNTIME_ACQUIRE_ERR(&pm))
> +		return -ENXIO;
> +
> +	guard(mutex)(&st->lock);
> +
> +	ret = inv_sensors_timestamp_update_odr(ts, inv_icm42607_odr_to_period(conf.odr),
> +					       iio_buffer_enabled(indio_dev));
> +	if (ret)
> +		return ret;
> +
> +	ret = inv_icm42607_set_accel_conf(st, &conf, NULL);
> +	if (ret)
> +		return ret;
> +
> +	inv_icm42607_buffer_update_fifo_period(st);
> +	inv_icm42607_buffer_update_watermark(st);
> +
> +	return ret;
> +}
> +
> +/*
> + * Calibration bias values, IIO range format int + micro.
> + * Not actually supported in the ICM-42607P registers.
> + */
> +static int inv_icm42607_accel_write_calibbias(struct inv_icm42607_state *st,
> +					      struct iio_chan_spec const *chan,
> +					      int val, int val2)
> +{
> +	/* Not actually supported in the ICM-42607P registers */
> +	return -EOPNOTSUPP;
> +}
> +
> +static int inv_icm42607_accel_read_calibbias(struct inv_icm42607_state *st,
> +					     struct iio_chan_spec const *chan,
> +					     int *val, int *val2)
> +{
> +	/* Not actually supported in the ICM-42607P registers */
> +	return -EOPNOTSUPP;
> +}
> +
> +static int inv_icm42607_accel_read_raw(struct iio_dev *indio_dev,
> +				       struct iio_chan_spec const *chan,
> +				       int *val, int *val2, long mask)
> +{
> +	struct inv_icm42607_state *st = iio_device_get_drvdata(indio_dev);
> +	s16 data;
> +	int ret;
> +
> +	switch (chan->type) {
> +	case IIO_ACCEL:
> +		break;
> +	case IIO_TEMP:
> +		return inv_icm42607_temp_read_raw(indio_dev, chan, val, val2, mask);
> +	default:
> +		return -EINVAL;
> +	}
> +
> +	switch (mask) {
> +	case IIO_CHAN_INFO_RAW:
> +		if (!iio_device_claim_direct(indio_dev))
> +			return -EBUSY;
> +		ret = inv_icm42607_accel_read_sensor(indio_dev, chan, &data);
> +		iio_device_release_direct(indio_dev);
> +		if (ret)
> +			return ret;
> +		*val = data;
> +		return IIO_VAL_INT;
> +	case IIO_CHAN_INFO_SCALE:
> +		return inv_icm42607_accel_read_scale(indio_dev, val, val2);
> +	case IIO_CHAN_INFO_SAMP_FREQ:
> +		return inv_icm42607_accel_read_odr(st, val, val2);
> +	case IIO_CHAN_INFO_CALIBBIAS:
> +		return inv_icm42607_accel_read_calibbias(st, chan, val, val2);
> +	default:
> +		return -EINVAL;
> +	}
> +}

> +
> +int inv_icm42607_accel_parse_fifo(struct iio_dev *indio_dev)
> +{
> +	struct inv_icm42607_state *st = iio_device_get_drvdata(indio_dev);
> +	struct inv_icm42607_sensor_state *accel_st = iio_priv(indio_dev);
> +	struct inv_sensors_timestamp *ts = &accel_st->ts;
> +	ssize_t i, size;
> +	unsigned int no;
> +	const void *accel, *gyro, *timestamp;
> +	const int8_t *temp;
> +	unsigned int odr;
> +	int64_t ts_val;
> +	struct inv_icm42607_accel_buffer buffer = { };
> +
> +	/* parse all fifo packets */
> +	for (i = 0, no = 0; i < st->fifo.count; i += size, ++no) {
> +		size = inv_icm42607_fifo_decode_packet(&st->fifo.data[i],
> +				&accel, &gyro, &temp, &timestamp, &odr);
> +		/* quit if error or FIFO is empty */
> +		if (size <= 0)
> +			return size;
> +
> +		/* skip packet if no accel data or data is invalid */
> +		if (accel == NULL || !inv_icm42607_fifo_is_data_valid(accel))
> +			continue;
> +
> +		/* update odr */
> +		if (odr & INV_ICM42607_SENSOR_ACCEL) {
> +			inv_sensors_timestamp_apply_odr(ts, st->fifo.period,
> +							st->fifo.nb.total, no);
> +		}
> +
> +		memcpy(&buffer.accel, accel, sizeof(buffer.accel));
> +		/* convert 8 bits FIFO temperature in high resolution format */
> +		buffer.temp = temp ? (*temp * 64) : 0;
> +		ts_val = inv_sensors_timestamp_pop(ts);
> +		iio_push_to_buffers_with_timestamp(indio_dev, &buffer, ts_val);

For new code, always use iio_push_to_buffers_with_ts()
This one is going away in near future.

> +	}
> +
> +	return 0;
> +}

> diff --git a/drivers/iio/imu/inv_icm42607/inv_icm42607_core.c b/drivers/iio/imu/inv_icm42607/inv_icm42607_core.c
> index 735a262dc103..62a1371b0c4a 100644
> --- a/drivers/iio/imu/inv_icm42607/inv_icm42607_core.c
> +++ b/drivers/iio/imu/inv_icm42607/inv_icm42607_core.c

> +int inv_icm42607_set_accel_conf(struct inv_icm42607_state *st,
> +				struct inv_icm42607_sensor_conf *conf,
> +				unsigned int *sleep_ms)
> +{
> +	struct inv_icm42607_sensor_conf *oldconf = &st->conf.accel;
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
> +		val = INV_ICM42607_ACCEL_CONFIG0_FS_SEL(conf->fs) |
> +		INV_ICM42607_ACCEL_CONFIG0_ODR(conf->odr);

Another indent case that needs fixing.

> +		ret = regmap_write(st->map, INV_ICM42607_REG_ACCEL_CONFIG0, val);
> +		if (ret)
> +			return ret;
> +		oldconf->fs = conf->fs;
> +		oldconf->odr = conf->odr;
> +	}
> +
> +	if (conf->filter != oldconf->filter) {
> +		if (conf->mode == INV_ICM42607_SENSOR_MODE_LOW_POWER) {
> +			val = INV_ICM42607_ACCEL_CONFIG1_AVG(conf->filter);
> +			ret = regmap_update_bits(st->map, INV_ICM42607_REG_ACCEL_CONFIG1,
> +						 INV_ICM42607_ACCEL_CONFIG1_AVG_MASK, val);
> +		} else {
> +			val = INV_ICM42607_ACCEL_CONFIG1_FILTER(conf->filter);
> +			ret = regmap_update_bits(st->map, INV_ICM42607_REG_ACCEL_CONFIG1,
> +						 INV_ICM42607_ACCEL_CONFIG1_FILTER_MASK, val);
> +		}
> +		if (ret)
> +			return ret;
> +		oldconf->filter = conf->filter;
> +	}
> +
> +	return inv_icm42607_set_pwr_mgmt0(st, st->conf.gyro.mode, conf->mode,
> +					  st->conf.temp_en, sleep_ms);
> +}

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
