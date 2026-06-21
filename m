Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 21418CD98F0
	for <linux-rockchip@archiver.kernel.org>; Sun, 21 Jun 2026 17:26:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=X7nbTHGUiy64x3fjyck47kGoINys8rquHz/hf3Gdct0=; b=AMhKgQbLQ0w8XV
	Tc+EQ1b9LgjbInjMIrrEovLPo0XwasN4fNw61xolkkGFXJDQdpowyovRdvX2JAW/7UeReJgouqiXM
	d0fzPhoMlzBgqES4faR89aQqbY9jl7ASs3EVOO1zHmlRnTBU+UwGsWS/UK9ATlEqfREnVA4aoA5hb
	8sRVB7mpf5q0QyoEgeHOZXYa5NpYjDE/VD2Xb4Ys9gcJQPmArSSHaWEI2Xsgj3JbNVabarmvK0wru
	bZE4oLbyna+WYfm50FKJfHYNLPBavW3KMVsV9KdHgVVIKSRfAQZoqSuNNnUTdEoHo/0YRlUb/A5km
	pfkr2LroxzIL6dVeJHUQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wbLwB-000000045Dy-1Dfy;
	Sun, 21 Jun 2026 17:26:27 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wbLw9-000000045Dn-1CHr
	for linux-rockchip@lists.infradead.org;
	Sun, 21 Jun 2026 17:26:25 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 2D52240DB9;
	Sun, 21 Jun 2026 17:26:23 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B87E71F000E9;
	Sun, 21 Jun 2026 17:26:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782062783;
	bh=H8ZY9dh2L+w0WcrzoTOe2zneuicnV/uaPfDqeTQwIkM=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References;
	b=DLxtGjx13fPCARZDuWi00vJMcavGXtdBTmJhQby4DFw5cch/mLdZQql1wN9zHLbeW
	 R1EAd+joyGDI2nXdKZGw73liB/rfP8pd118TUaEMwtcol9pCHTx7mnK8V2OVDDNzHI
	 saMON3GfOSopMjiu6Da9MSJHJsdX5Pla3VGHtA0jxly1FvP6gtDg+BtmdF1/N7Xc1A
	 Ssh2ONfAPd8ujaudwUju8NZlyKSdJ6euEn2iKCGqqxXXuTM2gz/H4Dap3nKd4ZOXCK
	 fu4kiW8DYkE6Y7GZs1Vgtk2rJmeK9RqhCsqp3f7m1AN8L5AELPQzUfnUnNhoYtApIq
	 9hFv/zvevmRwA==
Date: Sun, 21 Jun 2026 18:26:12 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Chris Morgan <macroalpha82@gmail.com>
Cc: linux-iio@vger.kernel.org, andy@kernel.org, nuno.sa@analog.com,
 dlechner@baylibre.com, jean-baptiste.maneyrol@tdk.com,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 heiko@sntech.de, conor+dt@kernel.org, krzk+dt@kernel.org, robh@kernel.org,
 andriy.shevchenko@intel.com, Chris Morgan <macromorgan@hotmail.com>
Subject: Re: [PATCH V13 6/9] iio: imu: inv_icm42607: Add Temp Support in
 icm42607
Message-ID: <20260621182612.1a19278a@jic23-huawei>
In-Reply-To: <20260615172554.160910-7-macroalpha82@gmail.com>
References: <20260615172554.160910-1-macroalpha82@gmail.com>
	<20260615172554.160910-7-macroalpha82@gmail.com>
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

On Mon, 15 Jun 2026 12:25:49 -0500
Chris Morgan <macroalpha82@gmail.com> wrote:

> From: Chris Morgan <macromorgan@hotmail.com>
> 
> Add functions for reading temperature sensor data.
> 
> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
Another sashiko reported thing. I'd definitely have missed
this one and I think it is correct.

When I get caught up I'll post a thread to see if people
feel we should generally just ask for Sashiko to reply on
list.

Jonathan

> diff --git a/drivers/iio/imu/inv_icm42607/inv_icm42607_core.c b/drivers/iio/imu/inv_icm42607/inv_icm42607_core.c
> index 64f5d263de4f..644cd7f821b9 100644
> --- a/drivers/iio/imu/inv_icm42607/inv_icm42607_core.c
> +++ b/drivers/iio/imu/inv_icm42607/inv_icm42607_core.c
> @@ -162,6 +162,24 @@ static int inv_icm42607_set_pwr_mgmt0(struct inv_icm42607_state *st,
>  	return 0;
>  }
>  
> +int inv_icm42607_set_temp_conf(struct inv_icm42607_state *st, bool enable,
> +			       unsigned int *sleep_ms)
> +{
> +	unsigned int val;
> +	int ret;
> +
> +	val = FIELD_PREP(INV_ICM42607_TEMP_CONFIG0_FILTER_MASK,
> +			 INV_ICM42607_FILTER_BW_34HZ);
> +	ret = regmap_update_bits(st->map, INV_ICM42607_REG_TEMP_CONFIG0,
> +				 INV_ICM42607_TEMP_CONFIG0_FILTER_MASK, val);
> +	if (ret)
> +		return ret;
> +
> +	return inv_icm42607_set_pwr_mgmt0(st, st->conf.gyro.mode,
> +					  st->conf.accel.mode, enable,
> +					  sleep_ms);
> +}

> diff --git a/drivers/iio/imu/inv_icm42607/inv_icm42607_temp.c b/drivers/iio/imu/inv_icm42607/inv_icm42607_temp.c
> new file mode 100644
> index 000000000000..9a60e1a478b0
> --- /dev/null
> +++ b/drivers/iio/imu/inv_icm42607/inv_icm42607_temp.c

> +static int inv_icm42607_temp_read(struct inv_icm42607_state *st, s16 *temp)
> +{
> +	struct device *dev = regmap_get_device(st->map);
> +	u8 raw[2];
> +	int ret;
> +
> +	PM_RUNTIME_ACQUIRE_AUTOSUSPEND(dev, pm);
> +	ret = PM_RUNTIME_ACQUIRE_ERR(&pm);
> +	if (ret)
> +		return ret;
> +
> +	guard(mutex)(&st->lock);
> +
> +	st->conf.temp_en = true;

Sashiko points out (seems right) that this sets the internal state
before the power management routine expects it to be set.  So why
is this here as opposed to just passing true into the
function that follows?

> +	ret = inv_icm42607_set_temp_conf(st, st->conf.temp_en, NULL);
> +	st->conf.temp_en = false;
> +	if (ret)
> +		return ret;
> +
> +	ret = regmap_bulk_read(st->map, INV_ICM42607_REG_TEMP_DATA1,
> +			       raw, sizeof(raw));
> +	if (ret)
> +		return ret;
> +
> +	*temp = get_unaligned_be16(raw);
> +	if (*temp == INV_ICM42607_DATA_INVALID)
> +		return -EINVAL;
> +
> +	return 0;
> +}

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
