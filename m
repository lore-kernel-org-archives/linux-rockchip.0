Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 84EDEF531C3
	for <linux-rockchip@archiver.kernel.org>; Mon, 13 Apr 2026 19:24:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NxMn28R0SY0NxF1ediaugxy3SiZq3/XRsqIJ393gE6o=; b=x92bfKpx+VD9HD
	jhOx0+Y6iuimwOSqr2FxLejFtBD+0xaENGzYJwMY3J/ygcBCGBKTXUiE9oDsSiCE9MLlYeRHLxF66
	DPsFnvaYc0KZvJEcmFfh8OQMm1ydiM+3XgdCWQyZYOfvjIniNpsZ1GIXyjsyghqg3HLFzL5+Eeg5y
	l2/DwKqhFbeKE+lD3d/nCTbtVaeGazeWk0Vzr+BZs+M5fQLt+5j4+Ue95nBZCANlFcaHwDMM7d1Vi
	vpdf8BPiQNg5MlKY67VZO5dp1dZBE6ksoIaG5a6OQcDsj5x4MgQtYV5ZV4ZwyDrejT8UoIApJ5txN
	oLbaqSSsxfBmwflgdowA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCMtG-0000000GIQQ-1OUt;
	Mon, 13 Apr 2026 19:24:10 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCMtD-0000000GIP6-0kqS
	for linux-rockchip@lists.infradead.org;
	Mon, 13 Apr 2026 19:24:08 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id DE9B94440B;
	Mon, 13 Apr 2026 19:24:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B0B7FC2BCB0;
	Mon, 13 Apr 2026 19:24:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776108246;
	bh=8KRDSTf0HhUXanWQxJnM/XPPYz1LpFytWo8+xt8KtaQ=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=QKJ8BJRMIk/MY+JQFaFy5ITnNH1++UGk+PmoHYsgm1cxoR1KAe+s5D/w7x/lAjxwt
	 vtrcQCSXOn/S7pXDgJi7rK2nBpMFZ7+fT4qrdJq6G3pUfTeDYodH5tJChdKq4rMBpx
	 mEa8/vtm5qGsfZGg1dwWx79GChM1y4dU3zolueaw5SJZnzSti2pnniZAYUj0VDAUPr
	 M0ebI+oNOL9S1b6/O5ueyBhhVmPrlYzmSS4uEoz19XGqnlL4iCLrkNt/NMpTIPy1uh
	 4J0ppdluBnBQjYROlK4EVkwKGyQmnRvtCFWHx5lGFTr1fR3w0GQhbGN0cvF+/j9AEb
	 xIZs3Tx+a1HGQ==
Date: Mon, 13 Apr 2026 20:23:56 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Chris Morgan <macroalpha82@gmail.com>
Cc: linux-iio@vger.kernel.org, andy@kernel.org, nuno.sa@analog.com,
 dlechner@baylibre.com, jean-baptiste.maneyrol@tdk.com,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 heiko@sntech.de, conor+dt@kernel.org, krzk+dt@kernel.org, robh@kernel.org,
 andriy.shevchenko@intel.com, Chris Morgan <macromorgan@hotmail.com>
Subject: Re: [PATCH V3 4/9] iio: imu: inv_icm42607: Add Buffer support
 functions to icm42607
Message-ID: <20260413202356.1afb4b8f@jic23-huawei>
In-Reply-To: <20260330195853.392877-5-macroalpha82@gmail.com>
References: <20260330195853.392877-1-macroalpha82@gmail.com>
	<20260330195853.392877-5-macroalpha82@gmail.com>
X-Mailer: Claws Mail 4.4.0 (GTK 3.24.52; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260413_122407_272917_9ADC82D5 
X-CRM114-Status: GOOD (  24.93  )
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

On Mon, 30 Mar 2026 14:58:48 -0500
Chris Morgan <macroalpha82@gmail.com> wrote:

> From: Chris Morgan <macromorgan@hotmail.com>
> 
> Add all FIFO parsing and reading functions to support
> inv_icm42607 hardware.
> 
> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
A few minor things inline.

Thanks,

Jonathan

> ---
>  drivers/iio/imu/inv_icm42607/inv_icm42607.h   |   4 +
>  .../imu/inv_icm42607/inv_icm42607_buffer.c    | 496 ++++++++++++++++++
>  .../imu/inv_icm42607/inv_icm42607_buffer.h    |  98 ++++
>  .../iio/imu/inv_icm42607/inv_icm42607_core.c  |  25 +
>  4 files changed, 623 insertions(+)
>  create mode 100644 drivers/iio/imu/inv_icm42607/inv_icm42607_buffer.c
>  create mode 100644 drivers/iio/imu/inv_icm42607/inv_icm42607_buffer.h
> 
> diff --git a/drivers/iio/imu/inv_icm42607/inv_icm42607.h b/drivers/iio/imu/inv_icm42607/inv_icm42607.h
> index 7d13091aa8df..5530fd3bc03f 100644
> --- a/drivers/iio/imu/inv_icm42607/inv_icm42607.h
> +++ b/drivers/iio/imu/inv_icm42607/inv_icm42607.h

> diff --git a/drivers/iio/imu/inv_icm42607/inv_icm42607_buffer.c b/drivers/iio/imu/inv_icm42607/inv_icm42607_buffer.c
> new file mode 100644
> index 000000000000..4f5f199586fc
> --- /dev/null
> +++ b/drivers/iio/imu/inv_icm42607/inv_icm42607_buffer.c
> @@ -0,0 +1,496 @@
> +// SPDX-License-Identifier: GPL-2.0-or-later
> +/*
> + * Copyright (C) 2026 InvenSense, Inc.
> + */
> +
> +#include <linux/kernel.h>
> +#include <linux/device.h>
> +#include <linux/minmax.h>
> +#include <linux/mutex.h>
> +#include <linux/pm_runtime.h>
> +#include <linux/regmap.h>
> +#include <linux/delay.h>
> +
> +#include <linux/iio/buffer.h>
> +#include <linux/iio/common/inv_sensors_timestamp.h>
> +#include <linux/iio/iio.h>

Alphabetical order (+ a block for IIO) for headers.

> +
> +static unsigned int inv_icm42607_wm_truncate(unsigned int watermark,
> +					     size_t packet_size)
> +{
> +	size_t wm_size;
> +	unsigned int wm;
> +
> +	wm_size = watermark * packet_size;
> +	if (wm_size > INV_ICM42607_FIFO_WATERMARK_MAX)
> +		wm_size = INV_ICM42607_FIFO_WATERMARK_MAX;
> +
> +	wm = wm_size / packet_size;
> +
> +	return wm;

Why not

	return wm_size / packet_size;

> +}


> +int inv_icm42607_buffer_hwfifo_flush(struct inv_icm42607_state *st,
> +				     unsigned int count)
> +{
> +	s64 gyro_ts, accel_ts;
> +	int ret;
> +
> +	gyro_ts = iio_get_time_ns(st->indio_gyro);
> +	accel_ts = iio_get_time_ns(st->indio_accel);
> +
> +	ret = inv_icm42607_buffer_fifo_read(st, count);
> +
> +	return ret;
Either
	return inv_...
or
	ret = 
	if (ret)
		return ret;

	return 0;

2nd one only if this is going to get more complex in later patches.

> +}
> +
> +int inv_icm42607_buffer_init(struct inv_icm42607_state *st)
> +{
> +	unsigned int val;
> +	int ret;
> +
> +	st->fifo.watermark.eff_gyro = 1;
> +	st->fifo.watermark.eff_accel = 1;
> +
> +	/* Configure FIFO_COUNT format in bytes and big endian */
> +	val = INV_ICM42607_INTF_CONFIG0_FIFO_COUNT_ENDIAN;
> +	ret = regmap_update_bits(st->map, INV_ICM42607_REG_INTF_CONFIG0,
> +				 val, val);
regmap_set_bits();


> +	if (ret)
> +		return ret;
> +
> +	/* Initialize FIFO in bypass mode */
> +	return regmap_write(st->map, INV_ICM42607_REG_FIFO_CONFIG1,
> +			    INV_ICM42607_FIFO_CONFIG1_BYPASS);
> +}

> diff --git a/drivers/iio/imu/inv_icm42607/inv_icm42607_buffer.h b/drivers/iio/imu/inv_icm42607/inv_icm42607_buffer.h
> new file mode 100644
> index 000000000000..64a66c00a861
> --- /dev/null
> +++ b/drivers/iio/imu/inv_icm42607/inv_icm42607_buffer.h
...

> +/* FIFO data packet */
> +struct inv_icm42607_fifo_sensor_data {
> +	__be16 x;
> +	__be16 y;
> +	__be16 z;
> +} __packed;

Why packed? It will be anyway unless I'm missing something.

> +#define INV_ICM42607_FIFO_DATA_INVALID		-32768

> diff --git a/drivers/iio/imu/inv_icm42607/inv_icm42607_core.c b/drivers/iio/imu/inv_icm42607/inv_icm42607_core.c
> index da04c820dab2..344071089042 100644
> --- a/drivers/iio/imu/inv_icm42607/inv_icm42607_core.c
> +++ b/drivers/iio/imu/inv_icm42607/inv_icm42607_core.c

...

> @@ -436,6 +449,8 @@ static int inv_icm42607_suspend(struct device *dev)
>  static int inv_icm42607_resume(struct device *dev)
>  {
>  	struct inv_icm42607_state *st = dev_get_drvdata(dev);
> +	struct inv_icm42607_sensor_state *gyro_st = iio_priv(st->indio_gyro);
> +	struct inv_icm42607_sensor_state *accel_st = iio_priv(st->indio_accel);
>  	struct device *accel_dev;
>  	bool wakeup;
>  	int ret;
> @@ -462,6 +477,16 @@ static int inv_icm42607_resume(struct device *dev)
>  	ret = inv_icm42607_set_pwr_mgmt0(st, st->suspended.gyro,
>  					 st->suspended.accel,
>  					 st->suspended.temp, NULL);
> +	if (ret)
> +		return ret;
> +
> +	if (st->fifo.on) {
I've not checked, but if this doesn't get more complex you can do
	if (!st->fifo.on)
		return 0;

	inv_....

	return regmap_write();

> +		inv_sensors_timestamp_reset(&gyro_st->ts);
> +		inv_sensors_timestamp_reset(&accel_st->ts);
> +		ret = regmap_write(st->map, INV_ICM42607_REG_FIFO_CONFIG1,
> +				   INV_ICM42607_FIFO_CONFIG1_MODE);
> +	}
> +
>  	return ret;
>  }
>  


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
