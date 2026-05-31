Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A7727CD6E52
	for <linux-rockchip@archiver.kernel.org>; Sun, 31 May 2026 12:21:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TErNoy8Y1jmtp6zv4JahdYihGmwz8PPJEf3rANFKtoo=; b=Pnoy8eywWRk62t
	ATQN1GItG5GFkSo1sIcnanBPyPMJHjm1tv2TiCwzVXfVzSyDiTJd1tpp1gNr8GO/fae5J/p92l3sp
	7cOwGwPxEjOdZoAxzTwNWEop51yXZ8hDUNrepTLwXmAJFUhqIUcQrtpb6PuHOfQwbgGS0iX2U2OAi
	WWA5gJdk8U1QUjBKHkwwfHuQZexbHnqx2YfLqHhwkGuQls4MrqIRDDasbdOhkjYhjVdhaViyZfCaY
	luOoPpakJ+ooLf5mr2Eo+YfA0sEZ8Mjk9JU+qvSO72fW6YlwrU4c+8qH9966ICtGX9tc7qyqhgYgG
	C8dzVuQtrJeaZTLSiEvA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wTfAl-00000009Zvy-2m6p;
	Sun, 31 May 2026 12:21:43 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wTfAk-00000009Zvi-0eqB
	for linux-rockchip@lists.infradead.org;
	Sun, 31 May 2026 12:21:42 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 314FC60123;
	Sun, 31 May 2026 12:21:41 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 984261F00898;
	Sun, 31 May 2026 12:21:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780230100;
	bh=7MXWgo0KbjYJW/KbWQ7yZM7FTW4BsZwz60DkdhXDW/Y=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References;
	b=fHsSeGsgx54Vx3yJ+fvYkXFSqMbE4/2KBlJsUvGgiaE3o3oZQuViKjv9bwN26lSR7
	 gQHfm7EQcYcNeZq3ivhKXCjvvHqnstLbee7s/G/iLPx/MT2nb71rU3Apr0QKetmfAd
	 F81H1qUnBVQklju/QYLhZxlZx/mEep65iz3/BgspQuSB1IheRsePXDisk3tVRbHgDl
	 jCXBIoj0cTGIWWBDznjVLQhZ74yMruojhcQXDNRnyJHseC/R+VwfxXlQ/9kQByiV9N
	 pCHiRm3W0vVILKNelf03H3Jv1KwtFRCY21+cJEy0yqj1cOGj9DGVq2lxmSWvkZc37b
	 03NDHmDpGoT8g==
Date: Sun, 31 May 2026 13:21:30 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Chris Morgan <macroalpha82@gmail.com>
Cc: linux-iio@vger.kernel.org, andy@kernel.org, nuno.sa@analog.com,
 dlechner@baylibre.com, jean-baptiste.maneyrol@tdk.com,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 heiko@sntech.de, conor+dt@kernel.org, krzk+dt@kernel.org, robh@kernel.org,
 andriy.shevchenko@intel.com, Chris Morgan <macromorgan@hotmail.com>
Subject: Re: [PATCH V9 05/11] iio: imu: inv_icm42607: Add PM support for
 icm42607
Message-ID: <20260531132130.17b4ae26@jic23-huawei>
In-Reply-To: <20260530031739.109063-6-macroalpha82@gmail.com>
References: <20260530031739.109063-1-macroalpha82@gmail.com>
	<20260530031739.109063-6-macroalpha82@gmail.com>
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

On Fri, 29 May 2026 22:17:32 -0500
Chris Morgan <macroalpha82@gmail.com> wrote:

> From: Chris Morgan <macromorgan@hotmail.com>
> 
> Add power management support for the ICM42607 device driver.
> 
> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
Hi Chris,

https://sashiko.dev/#/patchset/20260530031739.109063-1-macroalpha82%40gmail.com

Points out a deadlock.  Suggests maybe you need a few more test cases!
More generally I think you've misunderstood how force_suspend is used.



> diff --git a/drivers/iio/imu/inv_icm42607/inv_icm42607_core.c b/drivers/iio/imu/inv_icm42607/inv_icm42607_core.c
> index 3dd4cc8c6b1d..cfdce70ce25d 100644
> --- a/drivers/iio/imu/inv_icm42607/inv_icm42607_core.c
> +++ b/drivers/iio/imu/inv_icm42607/inv_icm42607_core.c


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

Force suspend will deal with this for everything in there.
I'm a little confused on why runtime suspend effects disabing
vddio_reg.


> +
> +	ret = pm_runtime_force_suspend(dev);

You'll need to do this without holding the lock.
Also take a much closer look at what it does.  

(sashiko points out why what you have here doesn't make sense).


> +	if (ret)
> +		return ret;
> +
> +	ret = inv_icm42607_set_pwr_mgmt0(st, INV_ICM42607_SENSOR_MODE_OFF,
> +					 INV_ICM42607_SENSOR_MODE_OFF,
> +					 false, NULL);
> +	if (ret)
> +		return ret;
> +
> +	inv_icm42607_disable_vddio_reg(st);
> +
> +	return 0;
> +}

> +
> +static int inv_icm42607_runtime_suspend(struct device *dev)
> +{
> +	struct inv_icm42607_state *st = dev_get_drvdata(dev);
> +	int ret;
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

I cropped the resume cases but they have the same problems..

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
