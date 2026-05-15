Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B6C1BCD4F3C
	for <linux-rockchip@archiver.kernel.org>; Fri, 15 May 2026 19:44:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+kEhvSpbuvVexRRbTJ+hsh3W6gWcG3+D7hPkAiJOfUY=; b=R/TLon9fNpO6Fc
	EDNDB18fYYd0se8urAM+ihS/CXvM48VIhy4M68mxOzyO/aBdsZxXOJGXKMPa59LuliGUmKlLo3VYS
	MWnmLk3sCBjHzlSerNpf0NvqBwxjsqYoJYVXtRWVxe96iS68LDsDeqyVOc52OLQ2WqNTtJ2ziKrFB
	g3CWHTn5YXFg3a0jR1zKmlLRyKWbnkx6+Rf9/sEe73mokunmy8T+q4kp6fwAuynRk3t5J+uFAwST+
	wLMH9Wu1ISEjbMu2lfiGosxYQIOSPHnEIx1aGNzsVW+qdwDuzyE9HqdmAV7c9hxj9X4HYHFMqVcSH
	uLwmQcc/yStDqVrHi4DQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wNySj-00000009FNu-27bx;
	Fri, 15 May 2026 19:44:45 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wNySi-00000009FNe-19tW
	for linux-rockchip@lists.infradead.org;
	Fri, 15 May 2026 19:44:44 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 6BD5660122;
	Fri, 15 May 2026 19:44:43 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 40BBCC2BCC7;
	Fri, 15 May 2026 19:44:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778874283;
	bh=rzrlAISMn/eiteqlbQ00LvCAczT91++vuO6hzroHa/8=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=Z2uTVsczQWMV6c1ohqiAdqFoLZdssdhOUCgDkZ+7vrBBofggRtaJM3fubHHFspJsf
	 zspbZWA7X89uG7bZW9HLy3nMhU0GY2LMxEW4OgECv8c2r0E2SH5hJTDTTFEXvqpqQ8
	 6IP/Rp3EiZmRWg5Lgysr6CIbPS8WNXjbY2ivRaxW/mCfcHMXiiL6tqC22NjVo9SZ/D
	 mXbpA1JMNdL3kM44ybH4EPNbasU3PVQQVCBCS8CDmDAmq6LbvkXELvYlUiNO92sMH0
	 7RKGzYdzcpivjjuHpXOvXokYp1kja3EjujEQA+XpERY0CRHiw4lPB47GsZzOLfwT/1
	 6IJnyS5peoQ+w==
Date: Fri, 15 May 2026 20:44:33 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Chris Morgan <macroalpha82@gmail.com>
Cc: linux-iio@vger.kernel.org, andy@kernel.org, nuno.sa@analog.com,
 dlechner@baylibre.com, jean-baptiste.maneyrol@tdk.com,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 heiko@sntech.de, conor+dt@kernel.org, krzk+dt@kernel.org, robh@kernel.org,
 andriy.shevchenko@intel.com, Chris Morgan <macromorgan@hotmail.com>
Subject: Re: [PATCH V7 10/11] iio: imu: inv_icm42607: Add Gyroscope to
 icm42607
Message-ID: <20260515204433.3ddbe884@jic23-huawei>
In-Reply-To: <20260515130018.237378-11-macroalpha82@gmail.com>
References: <20260515130018.237378-1-macroalpha82@gmail.com>
	<20260515130018.237378-11-macroalpha82@gmail.com>
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

On Fri, 15 May 2026 08:00:15 -0500
Chris Morgan <macroalpha82@gmail.com> wrote:

> From: Chris Morgan <macromorgan@hotmail.com>
> 
> Add gyroscope functions to the icm42607 driver.
> 
> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
Hi Chris last one I'm getting to today...


> @@ -499,9 +512,10 @@ int inv_icm42607_buffer_fifo_parse(struct inv_icm42607_state *st)
>  int inv_icm42607_buffer_hwfifo_flush(struct inv_icm42607_state *st,
>  				     unsigned int count)
>  {
> +	struct inv_icm42607_sensor_state *gyro_st = iio_priv(st->indio_gyro);
>  	struct inv_icm42607_sensor_state *accel_st = iio_priv(st->indio_accel);
>  	struct inv_sensors_timestamp *ts;
> -	s64 accel_ts;
> +	s64 gyro_ts, accel_ts;

Most of what sashiko got matched the earlier accelerometer driver but this
is a good catch.  you never initialize gyro_ts unlike accel_ts:

	accel_ts = iio_get_time_ns(st->indio_accel);

>  	int ret;
>  
>  	accel_ts = iio_get_time_ns(st->indio_accel);
> @@ -513,6 +527,14 @@ int inv_icm42607_buffer_hwfifo_flush(struct inv_icm42607_state *st,
>  	if (st->fifo.nb.total == 0)
>  		return 0;
>  
> +	if (st->fifo.nb.gyro > 0) {
> +		ts = &gyro_st->ts;
> +		inv_sensors_timestamp_interrupt(ts, st->fifo.nb.gyro, gyro_ts);
> +		ret = inv_icm42607_gyro_parse_fifo(st->indio_gyro);
> +		if (ret)
> +			return ret;
> +	}
> +
>  	if (st->fifo.nb.accel > 0) {
>  		ts = &accel_st->ts;
>  		inv_sensors_timestamp_interrupt(ts, st->fifo.nb.accel, accel_ts);


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
