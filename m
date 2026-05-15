Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4E88ECD343F
	for <linux-rockchip@archiver.kernel.org>; Fri, 15 May 2026 19:00:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9k4HfJhjNETqrwp8uSvt0209IEcqWlX1MVgCcY2+5Ak=; b=YtRL9F3I+/P8SQ
	xsiC98qFLVFtikwyGz3bFb5YXjgHzl1m3hYXSjTq91Ugu3sS2gnVcS2Rhqs3gnNqUJSVfuo9W84ZF
	4HSOSFb1PYjOs9YYWlL/5zx6p2VFm0K4vrO3UQxe1MRsdq+N1o68AbPEr+jUmhXVnI0m/6MlXiwJ2
	iciJp9UV1NIUpyBZgOW/7v6ZAwm9DRzsN5nuIb/YOf9ddFB71iVzFocEO3bLEMyDqHm0ejDVpw9sC
	RdeIMa9hO7Qf/YFq6ZWkpLeuC0q9xbh/CABGY5myFpHSUEaYvIkp1JzR8dtzCRV+0CMjEtdHlKW77
	Fo7++tb0KcXraNohqUUw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wNxlX-00000009Ag1-32nf;
	Fri, 15 May 2026 19:00:07 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wNxlW-00000009AfF-3Tfj
	for linux-rockchip@lists.infradead.org;
	Fri, 15 May 2026 19:00:06 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id EBD76600FC;
	Fri, 15 May 2026 19:00:05 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5A52EC2BCB0;
	Fri, 15 May 2026 18:59:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778871605;
	bh=uoOw1fEfymbsBl96G2s/lqTMA1cP1P2Jc7bAjsYjRT0=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=Y/3bG04dizxBnLYBcnQJFTADNXIs1EiHrg6IcPkcZHhT75GXJx7HkVFEA5gI/kycg
	 RFe9P/+FIXPZi+ecJBvrSbLKdObdXYsG66yQbxF6ZL9c9on5KcO3jNOHlavW9uZz/L
	 /Vs/+cht6KWAErBxo9szrGeDNRtcGqW+wW1CZwgu+mUzXkkt8Oo5n72Te7bWWSoewk
	 mspeTg/E5+zhME20JMEpEE8NdMdvIYZT9ekGuirHKT3luJd0ZWPhFla/ARVT9mzeFC
	 J7aUwWm3A1gJ9CWdW2TcpF9nov7t/oQLVXeTjdEKmzNWQfNX1nnFLDuiLeVK3hXiKM
	 bxF7wFO/01zIQ==
Date: Fri, 15 May 2026 19:59:54 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Chris Morgan <macroalpha82@gmail.com>
Cc: linux-iio@vger.kernel.org, andy@kernel.org, nuno.sa@analog.com,
 dlechner@baylibre.com, jean-baptiste.maneyrol@tdk.com,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 heiko@sntech.de, conor+dt@kernel.org, krzk+dt@kernel.org, robh@kernel.org,
 andriy.shevchenko@intel.com, Chris Morgan <macromorgan@hotmail.com>
Subject: Re: [PATCH V7 05/11] iio: imu: inv_icm42607: Add PM support for
 icm42607
Message-ID: <20260515195954.0cafbaa7@jic23-huawei>
In-Reply-To: <20260515130018.237378-6-macroalpha82@gmail.com>
References: <20260515130018.237378-1-macroalpha82@gmail.com>
	<20260515130018.237378-6-macroalpha82@gmail.com>
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

On Fri, 15 May 2026 08:00:10 -0500
Chris Morgan <macroalpha82@gmail.com> wrote:

> From: Chris Morgan <macromorgan@hotmail.com>
> 
> Add power management support for the ICM42607 device driver.
> 
> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>

Sashiko had a comment but I'd ignore it as it's about the rather
complex magic that lets us do various forms of PM configs without
lots of __maybe_unused etc and it works so don't touch it :)
I'm too lazy to check what the dependency ordering is other than
pm_ptr() is true in cases where pm_sleep_ptr() whereas the
opposite is not true and that means the actual dead code removal
occurs at a different point in the code those macros are producing.

Anyhow a few really minor things inline. Otherwise LGTM

> ---
>  drivers/iio/imu/inv_icm42607/inv_icm42607.h   |  12 ++
>  .../iio/imu/inv_icm42607/inv_icm42607_core.c  | 143 ++++++++++++++++++
>  .../iio/imu/inv_icm42607/inv_icm42607_i2c.c   |   1 +
>  .../iio/imu/inv_icm42607/inv_icm42607_spi.c   |   1 +
>  4 files changed, 157 insertions(+)
> 
> diff --git a/drivers/iio/imu/inv_icm42607/inv_icm42607.h b/drivers/iio/imu/inv_icm42607/inv_icm42607.h
> index 2c20e95b237a..5f37999e39a5 100644
> --- a/drivers/iio/imu/inv_icm42607/inv_icm42607.h
> +++ b/drivers/iio/imu/inv_icm42607/inv_icm42607.h

> diff --git a/drivers/iio/imu/inv_icm42607/inv_icm42607_core.c b/drivers/iio/imu/inv_icm42607/inv_icm42607_core.c
> index 1088c5c7076f..e27ad0319a12 100644
> --- a/drivers/iio/imu/inv_icm42607/inv_icm42607_core.c
> +++ b/drivers/iio/imu/inv_icm42607/inv_icm42607_core.c

>  static int inv_icm42607_set_conf(struct inv_icm42607_state *st,
>  				 const struct inv_icm42607_conf *conf)
>  {
> @@ -198,11 +255,15 @@ static int inv_icm42607_enable_vddio_reg(struct inv_icm42607_state *st)
>  {
>  	int ret;
>  
> +	if (st->vddio_en)
> +		return 0;
> +
>  	ret = regulator_enable(st->vddio_supply);
>  	if (ret)
>  		return ret;
>  
>  	fsleep(INV_ICM42607_POWER_UP_TIME_US);
> +	st->vddio_en = 1;

It's a bool (which is good) so = true

>  
>  	return 0;
>  }
> @@ -211,7 +272,10 @@ static void inv_icm42607_disable_vddio_reg(void *_data)
>  {
>  	struct inv_icm42607_state *st = _data;
>  
> +	if (!st->vddio_en)
> +		return;
>  	regulator_disable(st->vddio_supply);
> +	st->vddio_en = 0;

= false

>  }

>  
> +static int inv_icm42607_suspend(struct device *dev)
> +{
> +	struct inv_icm42607_state *st = dev_get_drvdata(dev);
> +	int ret;
> +
> +	guard(mutex)(&st->lock);
> +
> +	if (pm_runtime_suspended(dev))
> +		return 0;
> +
> +	ret = inv_icm42607_set_pwr_mgmt0(st, INV_ICM42607_SENSOR_MODE_OFF,
> +					 INV_ICM42607_SENSOR_MODE_OFF,
> +					 false, NULL);
> +	if (ret)
> +		return ret;

Trivial but blank line here

> +	inv_icm42607_disable_vddio_reg(st);
> +
> +	return 0;
> +}

> +
> +static int inv_icm42607_runtime_suspend(struct device *dev)
> +{
> +	struct inv_icm42607_state *st = dev_get_drvdata(dev);
> +	int ret = 0;

Assigned in all paths I think?  If that stops being true I'd probably still
introduce the assignment when it becomes the case even though it's a little
more code churn.

> +
> +	guard(mutex)(&st->lock);
> +
> +	ret = inv_icm42607_set_pwr_mgmt0(st, INV_ICM42607_SENSOR_MODE_OFF,
> +					 INV_ICM42607_SENSOR_MODE_OFF, false,
> +					 NULL);
> +	if (ret)
> +		return ret;
> +
> +	inv_icm42607_disable_vddio_reg(st);
> +
> +	return 0;
> +}


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
