Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 04ADBC43327
	for <linux-rockchip@archiver.kernel.org>; Wed,  1 Jul 2026 19:30:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uuIz88kxyLCMOkKt0WNOm2VvyhtgOnLZIcHcKEbNjA8=; b=frCrj8lqzIwWU3
	F6q8orUcGO7HyzXtiCy7fLOgUYFS47Nq0kJZo8elkYqIUheR1b2/mGn3SZiqyLMq16LXGbz6cFooG
	GBPfssYiAh9cxOOGnnITeFniJN3Dy64O3vysthrif7sIysq4Id4u9USOA81XXIghzbqJfcCDY2rnw
	8JOJf/XRJf75N8GVy3PrREhMvTA+apWVtdsrkSgfIfFi5KXS/zvkfZB/9UGPNpZLlmqmQf5Dw+uZA
	tStRm2uUWN8VVXvNIwDWgCeVRHuw9WU+e6cOKOia91o3pp0dvTyntT+haCD+TOi1sASWS6AmPlITn
	nQn7VAvzNh+Op683+gnQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wf0e6-00000002u2M-47Pm;
	Wed, 01 Jul 2026 19:30:54 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wf0e5-00000002u21-1loP
	for linux-rockchip@lists.infradead.org;
	Wed, 01 Jul 2026 19:30:53 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 66EF541285;
	Wed,  1 Jul 2026 19:30:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DF6301F000E9;
	Wed,  1 Jul 2026 19:30:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782934252;
	bh=49Ev+AvYEXQm7m2aWe9UIopqJbwwyFhR6TxukdScasE=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References;
	b=lDXstdqnZDyC1hhzkNH+hgMfRDedy5LnO7I+ZVptfrStXwUkWI3I58BbyIS9BR3/R
	 k0MBkFNhgNgOVrdPSGcz6DL92kYJh5Goj37vpqe4hpq0YDo9sPETsemhd4qPxa6KFe
	 5ddwQUVVdRM+z/wKF9jIqw0ypPDwwdfQh9D79gknETTjMZZAKKhIrtqiVB3taVqsqr
	 f6NWTV5qO6hRkffVyqqwc3kB2+neq6FgL4TC8VzzgN3B55cN3XVcBLqLPtFexCCLPo
	 pkJA0bD7cP/LFeoriuQLg+hu01v6Y5ZxW2ZBolHXmy6omjLFKuqqc2DYc1mz4nMEz1
	 PC9H9kheb1t0Q==
Date: Wed, 1 Jul 2026 20:30:44 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Chris Morgan <macroalpha82@gmail.com>
Cc: linux-iio@vger.kernel.org, andy@kernel.org, nuno.sa@analog.com,
 dlechner@baylibre.com, jean-baptiste.maneyrol@tdk.com,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 heiko@sntech.de, conor+dt@kernel.org, krzk+dt@kernel.org, robh@kernel.org,
 andriy.shevchenko@intel.com, Chris Morgan <macromorgan@hotmail.com>
Subject: Re: [PATCH V15 8/9] iio: imu: inv_icm42607: Add Temp Support in
 icm42607
Message-ID: <20260701203044.2b60632c@jic23-huawei>
In-Reply-To: <20260626161230.93069-9-macroalpha82@gmail.com>
References: <20260626161230.93069-1-macroalpha82@gmail.com>
	<20260626161230.93069-9-macroalpha82@gmail.com>
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

On Fri, 26 Jun 2026 11:12:29 -0500
Chris Morgan <macroalpha82@gmail.com> wrote:

> From: Chris Morgan <macromorgan@hotmail.com>
> 
> Add functions for reading temperature sensor data.
> 
> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
The earlier comments on read_avail are really about a change need in this patch.

> diff --git a/drivers/iio/imu/inv_icm42607/inv_icm42607_gyro.c b/drivers/iio/imu/inv_icm42607/inv_icm42607_gyro.c
> index c7215b3826ad..4e5db5e19e9f 100644
> --- a/drivers/iio/imu/inv_icm42607/inv_icm42607_gyro.c
> +++ b/drivers/iio/imu/inv_icm42607/inv_icm42607_gyro.c

>  
>  static const int inv_icm42607_gyro_scale_nano[][2] = {
> @@ -182,6 +185,11 @@ static int inv_icm42607_gyro_read_raw(struct iio_dev *indio_dev,
>  	switch (chan->type) {
>  	case IIO_ANGL_VEL:
>  		break;
> +	case IIO_TEMP:

This works for read_raw, but the read_avail reported on earlier patches is
still an issue for temperature channels.

> +		if (mask != IIO_CHAN_INFO_SAMP_FREQ)
> +			return inv_icm42607_temp_read_raw(indio_dev, chan,
> +							  val, val2, mask);
> +		break;
>  	default:
>  		return -EINVAL;
>  	}

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
