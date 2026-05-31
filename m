Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B58ACCD6E52
	for <linux-rockchip@archiver.kernel.org>; Sun, 31 May 2026 12:58:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=f0Y76+6n77ti1Lad4nDL6vNd4YC+6P53DhQTw8huC50=; b=WW7AIfEuBWRefW
	PNGniZG6QTmsPGZNAbV9YMINBFprE240qpAXu/S5ip+pYz6IFgoka8Xc8aeqc1qpvlI1nPZd15qnl
	PdLKCVfDTjz1mtDkecT5cUjAhy9JgKf70ZZiDEHmlJyGv4P8Gu248weHBXDdICxTjiEo9ngTUuZjr
	8uqxU7Kg1+jl2EFS53+PGarfW9mk2s5vjLTL5n07fWoltlAzrXRW72rWi7GJvQxlr9jrqKFr4NQA7
	ZBCDznNvjTEeVR3vxI+ymnnsf1DuO8INTHI/WZxXiH4tOFjZrjiGsYfs/VnKlX6uJjCjfCFASVCOc
	Ch2GhkZ2uHoaajKZ6yfA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wTfkU-00000009bnA-3lps;
	Sun, 31 May 2026 12:58:38 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wTfkR-00000009bmp-2pEm
	for linux-rockchip@lists.infradead.org;
	Sun, 31 May 2026 12:58:36 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 10187434A8;
	Sun, 31 May 2026 12:58:35 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6ABBA1F00893;
	Sun, 31 May 2026 12:58:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780232314;
	bh=+CA+v+FUWBPtZ6XNzVlGy534etJ1KYmo7MXS0bn/j60=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References;
	b=hVDOQFS8dc7teV5JeOSXzM8E0IQI6FyFRlxFE+w6jLBdeDMRe5fD24yI7nzMnrQ/b
	 Sf1AJTkWEn+Abe/wJFBb0x24PbDYy3rcCufnMmGk7UALjKQRgKu1V3EZn8mvafsfoI
	 f7iPEdEY6+fOy86hueb9Jeo3G63dRKEGuTS9xsf2AU5GWP0j0MbEZZ9Sq0stTHsQAn
	 X8lzdjnejJ5n0dYx9okjyPVGYImAw7FKBPTCo4ZBKHhvi0I85wRY2apE1uM+DVMv84
	 8MkhEX/iz7Ko0HIWQ8SHtUT0OcVfa12cSGx6/25xfbYRW02fJV08I1ZrQuQsxDfuC1
	 S/Bfu8tRRf2tg==
Date: Sun, 31 May 2026 13:58:23 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Chris Morgan <macroalpha82@gmail.com>
Cc: linux-iio@vger.kernel.org, andy@kernel.org, nuno.sa@analog.com,
 dlechner@baylibre.com, jean-baptiste.maneyrol@tdk.com,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 heiko@sntech.de, conor+dt@kernel.org, krzk+dt@kernel.org, robh@kernel.org,
 andriy.shevchenko@intel.com, Chris Morgan <macromorgan@hotmail.com>
Subject: Re: [PATCH V9 10/11] iio: imu: inv_icm42607: Add Gyroscope to
 icm42607
Message-ID: <20260531135823.015c4fd1@jic23-huawei>
In-Reply-To: <20260530031739.109063-11-macroalpha82@gmail.com>
References: <20260530031739.109063-1-macroalpha82@gmail.com>
	<20260530031739.109063-11-macroalpha82@gmail.com>
X-Mailer: Claws Mail 4.4.0 (GTK 3.24.52; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260531_055835_759788_9BB0DB01 
X-CRM114-Status: GOOD (  24.86  )
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

On Fri, 29 May 2026 22:17:37 -0500
Chris Morgan <macroalpha82@gmail.com> wrote:

> From: Chris Morgan <macromorgan@hotmail.com>
> 
> Add gyroscope functions to the icm42607 driver.
> 
> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>

Hi Chris,
Various things inline.

Thanks,

Jonathan

> diff --git a/drivers/iio/imu/inv_icm42607/inv_icm42607_buffer.c b/drivers/iio/imu/inv_icm42607/inv_icm42607_buffer.c
> index 5b69bf895b35..c45239613344 100644
> --- a/drivers/iio/imu/inv_icm42607/inv_icm42607_buffer.c
> +++ b/drivers/iio/imu/inv_icm42607/inv_icm42607_buffer.c

>  int inv_icm42607_buffer_fifo_parse(struct inv_icm42607_state *st)
>  {
> +	struct inv_icm42607_sensor_state *gyro_st = iio_priv(st->indio_gyro);
>  	struct inv_icm42607_sensor_state *accel_st = iio_priv(st->indio_accel);
>  	struct inv_sensors_timestamp *ts;
>  	int ret;
> @@ -491,6 +494,16 @@ int inv_icm42607_buffer_fifo_parse(struct inv_icm42607_state *st)
>  	if (st->fifo.nb.total == 0)
>  		return 0;
>  
> +	/* handle gyroscope timestamp and FIFO data parsing */
> +	if (st->fifo.nb.gyro > 0) {
> +		ts = &gyro_st->ts;
> +		inv_sensors_timestamp_interrupt(ts, st->fifo.watermark.eff_gyro,
> +						st->timestamp.gyro);
> +		ret = inv_icm42607_gyro_parse_fifo(st->indio_gyro);
> +		if (ret)
> +			return ret;
> +	}
> +
>  	/* handle accelerometer timestamp and FIFO data parsing */
>  	if (st->fifo.nb.accel > 0) {
>  		ts = &accel_st->ts;
> @@ -507,12 +520,14 @@ int inv_icm42607_buffer_fifo_parse(struct inv_icm42607_state *st)
>  int inv_icm42607_buffer_hwfifo_flush(struct inv_icm42607_state *st,
>  				     unsigned int count)
>  {
> +	struct inv_icm42607_sensor_state *gyro_st = iio_priv(st->indio_gyro);
>  	struct inv_icm42607_sensor_state *accel_st = iio_priv(st->indio_accel);
>  	struct inv_sensors_timestamp *ts;
> -	s64 accel_ts;
> +	s64 gyro_ts, accel_ts;
>  	int ret;
>  
>  	accel_ts = iio_get_time_ns(st->indio_accel);
> +	gyro_ts = iio_get_time_ns(st->indio_gyro);

Sashiko calls out correctly that there is a race with devices finishing
coming up that might be hit here.  Probably need some sort of presence
check and locking to be sure those are both valid.



>  
>  	ret = inv_icm42607_buffer_fifo_read(st, count);
>  	if (ret)


> diff --git a/drivers/iio/imu/inv_icm42607/inv_icm42607_gyro.c b/drivers/iio/imu/inv_icm42607/inv_icm42607_gyro.c
> new file mode 100644
> index 000000000000..8d59156086b1
> --- /dev/null
> +++ b/drivers/iio/imu/inv_icm42607/inv_icm42607_gyro.c

> +
> +static const struct iio_chan_spec_ext_info inv_icm42607_gyro_ext_infos[] = {
> +	IIO_MOUNT_MATRIX(IIO_SHARED_BY_ALL, inv_icm42607_get_mount_matrix),
> +	{ },
No comma. Check for any other commas after terminating entries like this one.
> +};


> +
> +int inv_icm42607_gyro_parse_fifo(struct iio_dev *indio_dev)
> +{
> +	struct inv_icm42607_state *st = iio_device_get_drvdata(indio_dev);
> +	struct inv_icm42607_sensor_state *gyro_st = iio_priv(indio_dev);
> +	struct inv_sensors_timestamp *ts = &gyro_st->ts;
> +	ssize_t i, size;
> +	unsigned int no;
> +	const void *accel, *gyro, *timestamp;
> +	const s8 *temp;
> +	unsigned int odr;
> +	s64 ts_val;
> +	struct inv_icm42607_gyro_buffer buffer = { };
> +
> +	guard(mutex)(&st->lock);
Sashiko thinks there is a deadlock here as this lock will already
be held.  Report looks correct to me + same bug in the accelerometer case.

I'm surprised you didn't see them in testing as deadlocks tend to be obvious!


> +
> +	/* parse all fifo packets */
> +	for (i = 0, no = 0; i < st->fifo.count; i += size, ++no) {
> +		size = inv_icm42607_fifo_decode_packet(&st->fifo.data[i],
> +				&accel, &gyro, &temp, &timestamp, &odr);
> +		/* quit if error or FIFO is empty */
> +		if (size <= 0)
> +			return size;
> +
> +		/* If the packet size could cause us to overflow, return. */
> +		if (i + size > st->fifo.count)
> +			return -EIO;
> +
> +		/* skip packet if no gyro data or data is invalid */
> +		if (gyro == NULL || !inv_icm42607_fifo_is_data_valid(gyro))
> +			continue;
> +
> +		/* update odr */
> +		if (odr & INV_ICM42607_SENSOR_GYRO)
> +			inv_sensors_timestamp_apply_odr(ts, st->fifo.period,
> +							st->fifo.nb.total, no);
> +
> +		memcpy(&buffer.gyro, gyro, sizeof(buffer.gyro));
> +		/* convert 8 bits FIFO temperature in high resolution format */
> +		buffer.temp = temp ? (*temp * 64) : 0;
> +		ts_val = inv_sensors_timestamp_pop(ts);
> +		iio_push_to_buffers_with_ts(indio_dev, &buffer,
> +					    sizeof(buffer), ts_val);
> +	}
> +
> +	return 0;
> +}


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
