Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CBF2CC43327
	for <linux-rockchip@archiver.kernel.org>; Wed,  1 Jul 2026 19:28:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jtJYIxkuQCAPFNCuVxoZ+dxbfE2s9w7dx6qQ8hb93mc=; b=JtjYz/A/mmHlGP
	nYd60aNIMVxQFUfY6AojLsXOAmTe6du7f8rvOOEPRBP2wh6viRoPhr/PXyBiAIdA1RtPIeSujNFvc
	baQvDlKt9l0LFqWIGw9MBjT7KW3TH4TiU82mjthJmlYTUEgRqZkXOnTdQxDS0kWTxTkMoIlriH43v
	ijT+8NthuY2X+8aTzTKPkGeZxmJmxO68Hoff/pevtrkBoHjMN2I2NJcqabtu5gpd3OHprgvfm3Url
	Zf4N8nJzXIi/K4U/oDo7TOq2s0oXDLY5FZv1wF19ISSxDo9kS7qRFAPJI0wn0G0n5CF7mvll8rvgc
	YPvJQs6w3r6vvXe0ktnQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wf0be-00000002tuQ-2LkQ;
	Wed, 01 Jul 2026 19:28:22 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wf0bd-00000002tuK-3CSY
	for linux-rockchip@lists.infradead.org;
	Wed, 01 Jul 2026 19:28:21 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id D602D6001D;
	Wed,  1 Jul 2026 19:28:20 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6DD451F000E9;
	Wed,  1 Jul 2026 19:28:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782934100;
	bh=iiQkD6eWK/0FeR93e8iCJjwPRC2KuodqjyurzLXQu1o=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References;
	b=IFUGKGUfO42vn8pd0ZwhKuqfYjuTFFk6cf1ZFpR124BopVtq2noxWtTUy2VuGuMaD
	 KywAhUPbKqz4cxG3p96HmzFCwDR0ihoMJZsUfV+az4HwDWZk45Q4ceTV/zbEoZq9pK
	 9WhEmBihV+eL8tJEnTakXhk8zZqEdqsa54wFOA9oyfFkFWcm/iOMRzaDADOhuYomFB
	 m0ILiklo2zPSjaQR5vb4QHBpuBH+Z3iDEr1CPrNOPjZn0l8MocG/wIfrZ8CfnnKj5+
	 y68E7OBLU/qBYUeiW7B6TwswdPPZxtCNUhuHpFW/gCVpth7lsFGbnRDfTuanoWNbG/
	 8VzzIaiTCHC8g==
Date: Wed, 1 Jul 2026 20:28:15 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Chris Morgan <macroalpha82@gmail.com>
Cc: linux-iio@vger.kernel.org, andy@kernel.org, nuno.sa@analog.com,
 dlechner@baylibre.com, jean-baptiste.maneyrol@tdk.com,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 heiko@sntech.de, conor+dt@kernel.org, krzk+dt@kernel.org, robh@kernel.org,
 andriy.shevchenko@intel.com, Chris Morgan <macromorgan@hotmail.com>
Subject: Re: [PATCH V15 7/9] iio: imu: inv_icm42607: Add Gyroscope to
 icm42607
Message-ID: <20260701202815.7d930b56@jic23-huawei>
In-Reply-To: <20260626161230.93069-8-macroalpha82@gmail.com>
References: <20260626161230.93069-1-macroalpha82@gmail.com>
	<20260626161230.93069-8-macroalpha82@gmail.com>
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

On Fri, 26 Jun 2026 11:12:28 -0500
Chris Morgan <macroalpha82@gmail.com> wrote:

> From: Chris Morgan <macromorgan@hotmail.com>
> 
> Add gyroscope functions to the icm42607 driver.
> 
> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
Similar comments to those in the accel driver.

Thanks,

Jonathan

> diff --git a/drivers/iio/imu/inv_icm42607/inv_icm42607_gyro.c b/drivers/iio/imu/inv_icm42607/inv_icm42607_gyro.c
> new file mode 100644
> index 000000000000..c7215b3826ad
> --- /dev/null
> +++ b/drivers/iio/imu/inv_icm42607/inv_icm42607_gyro.c

> +static int inv_icm42607_gyro_read_odr(struct inv_icm42607_state *st,
> +				      int *val, int *val2)
> +{
> +	unsigned int odr;
> +	unsigned int i;
> +
> +	guard(mutex)(&st->lock);
> +
> +	odr = st->conf.gyro.odr;
> +
> +	for (i = 5; i < ARRAY_SIZE(inv_icm42607_gyro_odr); ++i) {
> +		if (i == odr)

As below.

> +
> +static int inv_icm42607_gyro_write_odr(struct iio_dev *indio_dev,
> +				       int val, int val2)
> +{
> +	struct inv_icm42607_state *st = iio_device_get_drvdata(indio_dev);
> +	struct device *dev = regmap_get_device(st->map);
> +	unsigned int idx;
> +	struct inv_icm42607_sensor_conf conf = INV_ICM42607_SENSOR_CONF_INIT;
> +	int ret;
> +
> +	for (idx = 5; idx < ARRAY_SIZE(inv_icm42607_gyro_odr); ++idx) {

Similar comments to accel. Use the appropriate define for that 5 and
post increment.

> +		if (val == inv_icm42607_gyro_odr[idx][0] &&
> +		    val2 == inv_icm42607_gyro_odr[idx][1])
> +			break;
> +	}

> +static int inv_icm42607_gyro_read_avail(struct iio_dev *indio_dev,
> +					struct iio_chan_spec const *chan,
> +					const int **vals,
> +					int *type, int *length, long mask)
> +{
> +	if (chan->type != IIO_ANGL_VEL)

This was the one sashiko noted was less than ideal as it rules out
reading this for temperature channels - in practice that doesn't happen
but that is due to an internal detail of how we create shared_by_all
attributes. The code should support reading for temperature channels as well.

> +		return -EINVAL;
> +
> +	switch (mask) {
> +	case IIO_CHAN_INFO_SCALE:
> +		*vals = (const int *)inv_icm42607_gyro_scale_nano;
> +		*type = IIO_VAL_INT_PLUS_NANO;
> +		*length = ARRAY_SIZE(inv_icm42607_gyro_scale_nano) * 2;
> +		return IIO_AVAIL_LIST;
> +	case IIO_CHAN_INFO_SAMP_FREQ:
> +		*vals = (const int *)inv_icm42607_gyro_odr[5];
> +		*type = IIO_VAL_INT_PLUS_MICRO;
> +		*length = (ARRAY_SIZE(inv_icm42607_gyro_odr) - 5) * 2;
> +		return IIO_AVAIL_LIST;
> +	default:
> +		return -EINVAL;
> +	}
> +}



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
