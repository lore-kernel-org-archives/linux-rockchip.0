Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AD785CD5BD1
	for <linux-rockchip@archiver.kernel.org>; Sun, 31 May 2026 12:38:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AnR+MdjrjUg8C1NBhN9Ac3IbIYc5xvH1JKDl1KHNDS0=; b=AsnwFPPidGElPo
	/QJwjxdo/vnMKs1WSnXY1hKFxoJAhkqJUUmpxMY1IEG77TO7lCxVwI+XcchKpC93RvEZAwGSRCzwL
	QYmlmR5Qm9pXdoB3yDEmjWU1lyp6OjV/Vywed032UEN9deYYC4clc01SiyfGgMzF5ulxlvgydEldv
	D7a+UwrcRKeYBs8OLlFTzxzcxacImqdOol1NX659cnLeCMsdC5LVuR0qmOU9pw0KqGwIEJciYHGRf
	wlsGM76RlwBbUrrl0nyvgQ5eLsaaOxrxlzbNVW7jJpQ8fA1kpF/wLPAirp9KSGs7dbGwvc+c/3/YE
	+GfcDENGRp51wa9aHDuQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wTfQl-00000009b2b-01wY;
	Sun, 31 May 2026 12:38:15 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wTfQi-00000009b2G-2Uos
	for linux-rockchip@lists.infradead.org;
	Sun, 31 May 2026 12:38:13 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id D263D40BCB;
	Sun, 31 May 2026 12:38:11 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A295C1F00893;
	Sun, 31 May 2026 12:38:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780231091;
	bh=vEaCvW3rWEf5pyqeo1Vxa8VbuvmJkDPvvIo9mJYByTI=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References;
	b=ja/0qdLcQ9it1FgZm5ue95r7fJwRKhtcAegSBY08XBexalhdEQw8MokUY9N0YYtOh
	 hzR+6/S/E33IMHo4YVrxO/yYg1q9/g7idxEMjpCpka6mRjyfci3x6zkcmYqn1vJDtI
	 0T69aM238pMhOmJrShMTzfLp44J5ycQcDDfncoAQ4Uv1wr2AjFdBmBO2GeHqNoEDTO
	 c/mdxdNKbVjG2nj0GD7ndN8S5BpuTRz1Chyej3tIgDSZTr8BEkxU30j+UfbrSbUIOL
	 4E/UTSvhEDzw7x6M7cRHzbH7FTvVxr1YWnlZdI930RxoJu6UsNYuqcTAyoxqXkRhnk
	 4jwUFpsUxknsQ==
Date: Sun, 31 May 2026 13:38:01 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Chris Morgan <macroalpha82@gmail.com>
Cc: linux-iio@vger.kernel.org, andy@kernel.org, nuno.sa@analog.com,
 dlechner@baylibre.com, jean-baptiste.maneyrol@tdk.com,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 heiko@sntech.de, conor+dt@kernel.org, krzk+dt@kernel.org, robh@kernel.org,
 andriy.shevchenko@intel.com, Chris Morgan <macromorgan@hotmail.com>
Subject: Re: [PATCH V9 06/11] iio: imu: inv_icm42607: Add Buffer support for
 icm42607
Message-ID: <20260531133801.481e173c@jic23-huawei>
In-Reply-To: <20260530031739.109063-7-macroalpha82@gmail.com>
References: <20260530031739.109063-1-macroalpha82@gmail.com>
	<20260530031739.109063-7-macroalpha82@gmail.com>
X-Mailer: Claws Mail 4.4.0 (GTK 3.24.52; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260531_053812_681342_9182BB8D 
X-CRM114-Status: GOOD (  37.22  )
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

On Fri, 29 May 2026 22:17:33 -0500
Chris Morgan <macroalpha82@gmail.com> wrote:

> From: Chris Morgan <macromorgan@hotmail.com>
> 
> Add all FIFO parsing and reading functions to support
> inv_icm42607 hardware.
> 
> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
A few things inline.

J

> diff --git a/drivers/iio/imu/inv_icm42607/inv_icm42607_buffer.c b/drivers/iio/imu/inv_icm42607/inv_icm42607_buffer.c
> new file mode 100644
> index 000000000000..e065d60ac119
> --- /dev/null
> +++ b/drivers/iio/imu/inv_icm42607/inv_icm42607_buffer.c
> @@ -0,0 +1,483 @@
> +// SPDX-License-Identifier: GPL-2.0-or-later
> +/*
> + * Copyright (C) 2026 InvenSense, Inc.
> + */
> +
> +#include <linux/delay.h>
> +#include <linux/iio/buffer.h>
> +#include <linux/iio/iio.h>
> +#include <linux/minmax.h>
> +#include <linux/mutex.h>
> +#include <linux/pm_runtime.h>
> +#include <linux/regmap.h>
> +#include <linux/unaligned.h>
> +
> +#include <linux/iio/common/inv_sensors_timestamp.h>
> +
> +#include "inv_icm42607.h"
> +#include "inv_icm42607_buffer.h"
> +
> +/* FIFO header: 1 byte */
> +#define INV_ICM42607_FIFO_HEADER_MSG		BIT(7)
> +#define INV_ICM42607_FIFO_HEADER_ACCEL		BIT(6)
> +#define INV_ICM42607_FIFO_HEADER_GYRO		BIT(5)
> +#define INV_ICM42607_FIFO_HEADER_TMST_FSYNC	GENMASK(3, 2)
> +#define INV_ICM42607_FIFO_HEADER_ODR_ACCEL	BIT(1)
> +#define INV_ICM42607_FIFO_HEADER_ODR_GYRO	BIT(0)
> +
> +struct inv_icm42607_fifo_1sensor_packet {
> +	u8 header;
> +	struct inv_icm42607_fifo_sensor_data data;
> +	s8 temp;
> +} __packed;
> +
> +struct inv_icm42607_fifo_2sensors_packet {
> +	u8 header;
> +	struct inv_icm42607_fifo_sensor_data accel;
Good example of the need for the inner structures to be packed

> +	struct inv_icm42607_fifo_sensor_data gyro;
> +	s8 temp;
> +	__be16 timestamp;
> +} __packed;
> +
> +ssize_t inv_icm42607_fifo_decode_packet(const void *packet, const void **accel,
> +					const void **gyro, const int8_t **temp,
> +					const void **timestamp)
> +{
> +	const struct inv_icm42607_fifo_1sensor_packet *pack1 = get_unaligned(&packet);
> +	const struct inv_icm42607_fifo_2sensors_packet *pack2 = get_unaligned(&packet);

Hmm. Sashiko points out you are messing around with pointers here and it's not those but
what the point to that we need to worry about alignment for.
You could memcpy that data into local structures.


> +	u8 header = *((const u8 *)packet);
> +
> +	/* FIFO empty */
> +	if (header & INV_ICM42607_FIFO_HEADER_MSG) {
> +		*accel = NULL;
> +		*gyro = NULL;
> +		*temp = NULL;
> +		*timestamp = NULL;
> +		return 0;
> +	}
> +
> +	/* accel + gyro */
> +	if ((header & INV_ICM42607_FIFO_HEADER_ACCEL) &&
> +	    (header & INV_ICM42607_FIFO_HEADER_GYRO)) {
> +		*accel = &pack2->accel;
> +		*gyro = &pack2->gyro;
> +		*temp = &pack2->temp;
> +		*timestamp = &pack2->timestamp;
> +		return INV_ICM42607_FIFO_2SENSORS_PACKET_SIZE;
> +	}
> +
> +	/* accel only */
> +	if (header & INV_ICM42607_FIFO_HEADER_ACCEL) {
> +		*accel = &pack1->data;
> +		*gyro = NULL;
> +		*temp = &pack1->temp;
> +		*timestamp = NULL;
> +		return INV_ICM42607_FIFO_1SENSOR_PACKET_SIZE;
> +	}
> +
> +	/* gyro only */
> +	if (header & INV_ICM42607_FIFO_HEADER_GYRO) {
> +		*accel = NULL;
> +		*gyro = &pack1->data;
> +		*temp = &pack1->temp;
> +		*timestamp = NULL;
> +		return INV_ICM42607_FIFO_1SENSOR_PACKET_SIZE;
> +	}
> +
> +	/* invalid packet if here */
> +	return -EINVAL;
> +}

> +/**
> + * inv_icm42607_buffer_update_watermark - update watermark FIFO threshold
> + * @st:	driver internal state
> + *
> + * Returns 0 on success, a negative error code otherwise.
> + */
> +int inv_icm42607_buffer_update_watermark(struct inv_icm42607_state *st)
> +{
> +	const struct device *dev = regmap_get_device(st->map);
> +	unsigned int wm_gyro, wm_accel, watermark;
> +	u32 latency_gyro, latency_accel, latency;
> +	u32 period_gyro, period_accel;
> +	size_t packet_size, wm_size;
> +	__le16 raw_wm;
> +	bool restore;
> +	int ret;
> +
> +	packet_size = inv_icm42607_get_packet_size(st->fifo.en);
> +
> +	/* compute sensors latency, depending on sensor watermark and odr */
> +	wm_gyro = inv_icm42607_wm_truncate(st->fifo.watermark.gyro, packet_size);
> +	wm_accel = inv_icm42607_wm_truncate(st->fifo.watermark.accel, packet_size);
> +	/* use us for odr to avoid overflow using 32 bits values */
> +	period_gyro = inv_icm42607_odr_to_period(st->conf.gyro.odr) / 1000UL;
> +	period_accel = inv_icm42607_odr_to_period(st->conf.accel.odr) / 1000UL;
> +	latency_gyro = period_gyro * wm_gyro;
> +	latency_accel = period_accel * wm_accel;
> +
> +	/* 0 value for watermark means that the sensor is turned off */
> +	if (wm_gyro == 0 && wm_accel == 0)
> +		return 0;
> +
> +	if (latency_gyro == 0) {
> +		watermark = wm_accel;
> +		st->fifo.watermark.eff_accel = wm_accel;
> +	} else if (latency_accel == 0) {
> +		watermark = wm_gyro;
> +		st->fifo.watermark.eff_gyro = wm_gyro;
> +	} else {
> +		/* compute the smallest latency that is a multiple of both */
> +		if (latency_gyro <= latency_accel)
> +			latency = latency_gyro - (latency_accel % latency_gyro);
> +		else
> +			latency = latency_accel - (latency_gyro % latency_accel);
> +		/* all this works because periods are multiple of each others */
> +		watermark = latency / min(period_gyro, period_accel);
> +		watermark = max(watermark, 1);
> +		/* update effective watermark */
> +		st->fifo.watermark.eff_gyro = max(latency / period_gyro, 1);
> +		st->fifo.watermark.eff_accel = max(latency / period_accel, 1);
> +	}
> +
> +	/* changing FIFO watermark requires to turn off watermark interrupt */
> +	ret = regmap_update_bits_check(st->map, INV_ICM42607_REG_INT_SOURCE0,
> +				       INV_ICM42607_INT_SOURCE0_FIFO_THS_INT1_EN,
> +				       0, &restore);
> +	if (ret)
> +		return ret;
> +
> +	/* compute watermark value in bytes */
> +	wm_size = watermark * packet_size;
> +	raw_wm = INV_ICM42607_FIFO_WATERMARK_VAL(wm_size);
> +	memcpy(st->buffer, &raw_wm, sizeof(raw_wm));
> +	ret = regmap_bulk_write(st->map, INV_ICM42607_REG_FIFO_CONFIG2,
> +				st->buffer, sizeof(raw_wm));
> +	if (ret) {
> +		dev_err(dev, "Unable to change watermark value: %d\n", ret);
> +		if (restore)
> +			regmap_update_bits(st->map, INV_ICM42607_REG_INT_SOURCE0,
> +					   INV_ICM42607_INT_SOURCE0_FIFO_THS_INT1_EN,
> +					   INV_ICM42607_INT_SOURCE0_FIFO_THS_INT1_EN);

set_bits.

> +		return ret;
> +	}
> +
> +	/* restore watermark interrupt */
> +	if (restore) {
> +		ret = regmap_update_bits(st->map, INV_ICM42607_REG_INT_SOURCE0,
> +					 INV_ICM42607_INT_SOURCE0_FIFO_THS_INT1_EN,
> +					 INV_ICM42607_INT_SOURCE0_FIFO_THS_INT1_EN);

set_bits

> +		if (ret)
> +			return ret;
> +	}
> +
> +	return 0;
> +}

> +
> +static int inv_icm42607_buffer_predisable(struct iio_dev *indio_dev)
> +{
> +	struct inv_icm42607_state *st = iio_device_get_drvdata(indio_dev);
> +	int ret;
> +
> +	guard(mutex)(&st->lock);
> +
> +	if (st->fifo.on > 1) {
> +		st->fifo.on--;
> +		return 0;
> +	}
> +
> +	/* Set FIFO to 0 since iio core ignores teardown errors. */
> +	st->fifo.on = 0;
> +
> +	/* set FIFO in bypass mode */
> +	ret = regmap_write(st->map, INV_ICM42607_REG_FIFO_CONFIG1,
> +			   INV_ICM42607_FIFO_CONFIG1_BYPASS);
> +	if (ret)
> +		return ret;
> +
> +	/* flush FIFO data */
> +	ret = regmap_write(st->map, INV_ICM42607_REG_SIGNAL_PATH_RESET,
> +			   INV_ICM42607_SIGNAL_PATH_RESET_FIFO_FLUSH);
> +	if (ret)
> +		return ret;
> +
> +	/* disable FIFO threshold interrupt */
> +	ret = regmap_update_bits(st->map, INV_ICM42607_REG_INT_SOURCE0,
> +				 INV_ICM42607_INT_SOURCE0_FIFO_THS_INT1_EN, 0);

	regmap_clear_bits()

> +	if (ret)
> +		return ret;
> +
> +	return 0;
> +}
> +
> +static int inv_icm42607_buffer_postdisable(struct iio_dev *indio_dev)
> +{
> +	struct inv_icm42607_state *st = iio_device_get_drvdata(indio_dev);
> +	struct device *dev = regmap_get_device(st->map);
> +	unsigned int sensor;
> +	unsigned int *watermark;
> +	int ret;
> +
> +	if (indio_dev == st->indio_gyro) {
> +		sensor = INV_ICM42607_SENSOR_GYRO;
> +		watermark = &st->fifo.watermark.gyro;
> +	} else if (indio_dev == st->indio_accel) {
> +		sensor = INV_ICM42607_SENSOR_ACCEL;
> +		watermark = &st->fifo.watermark.accel;
> +	} else {
> +		return -EINVAL;
> +	}
> +
> +	mutex_lock(&st->lock);
> +
> +	/*
> +	 * FIFO enabled at update scan mode for accel or gyro, and
> +	 * disabled here.
> +	 */
> +	ret = inv_icm42607_buffer_set_fifo_en(st, st->fifo.en & ~sensor);
> +	if (ret)
> +		goto out_unlock;
> +
> +	*watermark = 0;

Add a comment on why this needs to be set to 0.  Normally that only
matters at all if the fifo is on, so I guess something unusual here?


> +	ret = inv_icm42607_buffer_update_watermark(st);
> +	if (ret)
> +		goto out_unlock;
> +
> +out_unlock:
> +	mutex_unlock(&st->lock);
> +
> +	pm_runtime_put_autosuspend(dev);
> +
> +	return ret;
> +}

> +int inv_icm42607_buffer_fifo_read(struct inv_icm42607_state *st,
> +				  unsigned int max)
> +{
> +	const void *accel, *gyro, *timestamp;
> +	size_t i, max_count;
> +	const s8 *temp;
> +	ssize_t size;
> +	int ret;
> +
> +	guard(mutex)(&st->lock);
> +
> +	/* reset all samples counters */
> +	st->fifo.count = 0;
> +	st->fifo.nb.gyro = 0;
> +	st->fifo.nb.accel = 0;
> +	st->fifo.nb.total = 0;
> +
> +	/* compute maximum FIFO read size */
> +	if (max == 0)
> +		max_count = sizeof(st->fifo.data);
> +	else
> +		max_count = min((max * inv_icm42607_get_packet_size(st->fifo.en)),
> +				sizeof(st->fifo.data));
> +
> +	/* read FIFO count value */
> +	ret = regmap_bulk_read(st->map, INV_ICM42607_REG_FIFO_COUNTH,
> +			       st->buffer, sizeof(u8) * 2);
> +	if (ret)
> +		return ret;
> +	st->fifo.count = be16_to_cpup(st->buffer);

Might be ok to assume this is always a multiple of the scan size, but 
maybe sanity check it to keep sashiko happy and remove that assumption
of atomic update.

> +
> +	/* check and clamp FIFO count value */
> +	if (st->fifo.count == 0)
> +		return 0;
> +
> +	st->fifo.count = min(st->fifo.count, max_count);
> +
> +	/* read all FIFO data in internal buffer */
> +	ret = regmap_noinc_read(st->map, INV_ICM42607_REG_FIFO_DATA,
> +				st->fifo.data, st->fifo.count);
> +	if (ret)
> +		return ret;
> +
> +	/* compute number of samples for each sensor */
> +	for (i = 0; i < st->fifo.count; i += size) {
> +		size = inv_icm42607_fifo_decode_packet(&st->fifo.data[i],
> +				&accel, &gyro, &temp, &timestamp);
> +		/* Make sure the size is at least 1 valid packet. */
> +		if (size < INV_ICM42607_FIFO_1SENSOR_PACKET_SIZE)
> +			break;
> +		/* Error if we are going to overflow the buffer. */
> +		if (i + size > st->fifo.count)
> +			return -EIO;
> +		if (gyro != NULL && inv_icm42607_fifo_is_data_valid(gyro))
> +			st->fifo.nb.gyro++;
> +		if (accel != NULL && inv_icm42607_fifo_is_data_valid(accel))
> +			st->fifo.nb.accel++;
> +		st->fifo.nb.total++;
> +	}
> +
> +	return 0;
> +}

> diff --git a/drivers/iio/imu/inv_icm42607/inv_icm42607_buffer.h b/drivers/iio/imu/inv_icm42607/inv_icm42607_buffer.h
> new file mode 100644
> index 000000000000..b77deb66f8bd
> --- /dev/null
> +++ b/drivers/iio/imu/inv_icm42607/inv_icm42607_buffer.h

> +
> +/* FIFO data packet */
> +struct inv_icm42607_fifo_sensor_data {
> +	__be16 x;
> +	__be16 y;
> +	__be16 z;
> +};

Sashiko is probably correct that this should be packed.
Makes not difference here but it's not aligned in the places it's embedded
in other structs and the compiler seeing this will assume it is aligned.

> +
> +#define INV_ICM42607_FIFO_DATA_INVALID		-32768
> +
> +static inline bool
> +inv_icm42607_fifo_is_data_valid(const struct inv_icm42607_fifo_sensor_data *s)
> +{
> +	s16 x, y, z;
> +
> +	x = be16_to_cpu(s->x);
> +	y = be16_to_cpu(s->y);
> +	z = be16_to_cpu(s->z);
> +
> +	if (x == INV_ICM42607_FIFO_DATA_INVALID &&
> +	    y == INV_ICM42607_FIFO_DATA_INVALID &&
> +	    z == INV_ICM42607_FIFO_DATA_INVALID)
> +		return false;
> +
> +	return true;
> +}


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
