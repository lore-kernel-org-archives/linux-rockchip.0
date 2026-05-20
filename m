Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A2425CD5BA4
	for <linux-rockchip@archiver.kernel.org>; Wed, 20 May 2026 18:03:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bpLMgTliamvuVp3HlLr2Co/3NI+yQrwqteOvK0AXWpw=; b=d428pNnCe3qMcy
	DKGPScLMuTPiv5IdXqdi+R+mMTzMBQcPDAT2z7djQjAQUUxestkrI++ARJdx7TviRwAUhN2Iw2zB6
	pGlykb7JmMfvXGPTXSGyYU5VNFLoZqEM9vMTeBBTmtrafDZCIZbiK+JukPL+axrQ1A4euSavXkPqc
	sHKAzIpujIQoPmyNZ854Yq/mPZ6tf/TVMULmdCCRgWo1Me7rv7PtZigPn9F0MnUNkj8loMwgB3odJ
	tLQCw8QniJMhQjHnpnpSP89dOB/4bmyILAkNa6IdooTv0lCFY3NpuAoCmiN+JRk9LqZTaqtnKF4/0
	p0qXa/GyemtKymnYcH9w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPlGB-00000005O9i-317a;
	Wed, 20 May 2026 18:03:11 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPlG9-00000005O9Y-3b34
	for linux-rockchip@lists.infradead.org;
	Wed, 20 May 2026 18:03:09 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 4C49160126;
	Wed, 20 May 2026 18:03:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CF38C1F000E9;
	Wed, 20 May 2026 18:03:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1779300189;
	bh=T07RLv8Nfn1pn/pjdddxibNYnRTBPWv6CXG78yzMqlM=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References;
	b=SNqwosJDtP3IuS7IRmCb15eC3eThYkHq9/j1RjksCRWWDnJEQXKghyxS+RguCp9yC
	 zU1ScLZJRtX0NADuh2tLwgc16fmyYgropgTHQx4M5dsTDHGdvL1DD0Pc+TfCrA9MPq
	 v5c3jD0DHlEEeLJYQbkBk8Hgtg45ys+b3w4JVT3hsBepq77x33KHtWQw7yPJ+lAfTj
	 +/GY9W2W13bOWgO7atefpqZ3PlQDIYl9O4OLqe4ZIqykQF1nFHVPQnNX+790t/jcyp
	 c5YvaBJpJPMkvuWT7xSBGDcpSBvU2HGU52y+j8F6do3kvZBdvkgB1Kkc43KK+OZZt2
	 tKwY++z/NkA+g==
Date: Wed, 20 May 2026 19:02:59 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Chris Morgan <macroalpha82@gmail.com>
Cc: linux-iio@vger.kernel.org, andy@kernel.org, nuno.sa@analog.com,
 dlechner@baylibre.com, jean-baptiste.maneyrol@tdk.com,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 heiko@sntech.de, conor+dt@kernel.org, krzk+dt@kernel.org, robh@kernel.org,
 andriy.shevchenko@intel.com, Chris Morgan <macromorgan@hotmail.com>
Subject: Re: [PATCH V8 08/10] iio: imu: inv_icm42607: Add Accelerometer for
 icm42607
Message-ID: <20260520190259.14be7925@jic23-huawei>
In-Reply-To: <20260518200526.458421-9-macroalpha82@gmail.com>
References: <20260518200526.458421-1-macroalpha82@gmail.com>
	<20260518200526.458421-9-macroalpha82@gmail.com>
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

On Mon, 18 May 2026 15:05:23 -0500
Chris Morgan <macroalpha82@gmail.com> wrote:

> From: Chris Morgan <macromorgan@hotmail.com>
> 
> Add icm42607 accelerometer sensor for icm42607.
> 
> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
https://sashiko.dev/#/patchset/20260518200526.458421-1-macroalpha82%40gmail.com
More feedback. Some of it looks valid. I haven't looked at all of them.


A few other bits and some comments on one or two of the sashiko ones
that stood out to me.

Thanks,

Jonathan

> diff --git a/drivers/iio/imu/inv_icm42607/inv_icm42607.h b/drivers/iio/imu/inv_icm42607/inv_icm42607.h
> index 2542ad1bee51..c646c22b5e0e 100644
> --- a/drivers/iio/imu/inv_icm42607/inv_icm42607.h
> +++ b/drivers/iio/imu/inv_icm42607/inv_icm42607.h
> @@ -82,12 +82,24 @@ enum inv_icm42607_filter_bw {
>  	INV_ICM42607_FILTER_BW_16HZ,
>  };
>  
> +enum inv_icm42607_filter_avg {
> +	/* Low-Power mode sensor data filter (averaging) */
> +	INV_ICM42607_FILTER_AVG_2X = 0,
> +	INV_ICM42607_FILTER_AVG_4X,
> +	INV_ICM42607_FILTER_AVG_8X,
> +	INV_ICM42607_FILTER_AVG_16X,
> +	INV_ICM42607_FILTER_AVG_32X,
> +	INV_ICM42607_FILTER_AVG_64X
trailing comma should be there.

> +	/* values 7 and 8 also correspond to 64x. */
> +};
> +

> diff --git a/drivers/iio/imu/inv_icm42607/inv_icm42607_accel.c b/drivers/iio/imu/inv_icm42607/inv_icm42607_accel.c
> new file mode 100644
> index 000000000000..623d60704609
> --- /dev/null
> +++ b/drivers/iio/imu/inv_icm42607/inv_icm42607_accel.c
> @@ -0,0 +1,587 @@

> +static int inv_icm42607_accel_read_sensor(struct iio_dev *indio_dev,
> +					  struct iio_chan_spec const *chan,
> +					  s16 *val)
> +{
> +	struct inv_icm42607_state *st = iio_device_get_drvdata(indio_dev);
> +	struct inv_icm42607_sensor_state *accel_st = iio_priv(indio_dev);
> +	struct device *dev = regmap_get_device(st->map);
> +	struct inv_icm42607_sensor_conf conf = INV_ICM42607_SENSOR_CONF_INIT;
> +	unsigned int reg;
> +	__be16 *data;
> +	int ret;
> +
> +	if (chan->type != IIO_ACCEL)
> +		return -EINVAL;
> +
> +	switch (chan->channel2) {
> +	case IIO_MOD_X:
> +		reg = INV_ICM42607_REG_ACCEL_DATA_X1;
I didn't notice this until now, but you don't have anything using
chan->address.  This is what would typically go in there.
If you need multiple registers that would normally be an index into
an array of per channel structures used to look up any register.

Not that important but would move this 'code' into 'data' which would
be nice.

> +		break;
> +	case IIO_MOD_Y:
> +		reg = INV_ICM42607_REG_ACCEL_DATA_Y1;
> +		break;
> +	case IIO_MOD_Z:
> +		reg = INV_ICM42607_REG_ACCEL_DATA_Z1;
> +		break;
> +	default:
> +		return -EINVAL;
> +	}
> +
> +	PM_RUNTIME_ACQUIRE_AUTOSUSPEND(dev, pm);
> +	if (PM_RUNTIME_ACQUIRE_ERR(&pm))
> +		return -ENXIO;
> +
> +	guard(mutex)(&st->lock);
> +
> +	/* enable accel sensor */
> +	conf.mode = accel_st->power_mode;
> +	conf.filter = accel_st->filter;
> +	ret = inv_icm42607_set_accel_conf(st, &conf, NULL);
> +	if (ret)
> +		return ret;
> +
> +	/* read accel register data */
> +	data = &st->buffer[0];
> +	ret = regmap_bulk_read(st->map, reg, data, sizeof(*data));
> +	if (ret)
> +		return ret;
> +
> +	*val = be16_to_cpup(data);
> +	if (*val == INV_ICM42607_DATA_INVALID)
> +		return -EINVAL;
> +
> +	return 0;
> +}

> +}
> +
> +static int inv_icm42607_accel_read_avail(struct iio_dev *indio_dev,
> +					 struct iio_chan_spec const *chan,
> +					 const int **vals,
> +					 int *type, int *length, long mask)
> +{
> +	if (chan->type != IIO_ACCEL)
> +		return -EINVAL;
> +
> +	switch (mask) {
> +	case IIO_CHAN_INFO_SCALE:
> +		*vals = (const int *)inv_icm42607_accel_scale_nano;
> +		*type = IIO_VAL_INT_PLUS_NANO;
> +		*length = ARRAY_SIZE(inv_icm42607_accel_scale_nano) * 2;
> +		return IIO_AVAIL_LIST;
> +	case IIO_CHAN_INFO_SAMP_FREQ:
> +		*vals = (const int *)inv_icm42607_accel_odr;
Sashiko is correctly pointing out that this is going to print a bunch
of leading 0s as the array is only useful from 5 onwards.  Start
there rather than at the beginning.

> +		*type = IIO_VAL_INT_PLUS_MICRO;
> +		*length = ARRAY_SIZE(inv_icm42607_accel_odr) * 2;
> +		return IIO_AVAIL_LIST;
> +	default:
> +		return -EINVAL;	
> +	}
> +}
>
> +struct iio_dev *inv_icm42607_accel_init(struct inv_icm42607_state *st)
> +{

> +	/* accel events are wakeup capable */
> +	ret = devm_device_init_wakeup(&indio_dev->dev);
Sashiko points out correctly that should probably be on the
physical bus device rather than this one. Mind you I think for now you
ripped that out anyway so don't set it at all.
> +	if (ret)
> +		return ERR_PTR(ret);
> +
> +	ret = devm_iio_device_register(dev, indio_dev);
> +	if (ret)
> +		return ERR_PTR(ret);
> +
> +	return indio_dev;
> +}


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
