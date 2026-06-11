Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7CC44CD98D2
	for <linux-rockchip@archiver.kernel.org>; Thu, 11 Jun 2026 08:00:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2sn5hyx5z2ojCx7pxSpKshYCpDlaCPJiIJUYy1DtXPU=; b=WY0JNXLHJqThx3
	/vxi8XXxLkDcz17BR/jGjruZnnj/K28QN1YkGc+X0HZVQoIchzwULzS6ydrZP8rd7d++SSJ0GFGx6
	Nnr1PDx8bHvLChKnySstFN3iegytcVhntoEplSMxL4lWzIsIob3kiXaaN9D13erZrmjlFmpKjJsuz
	0MzcmVnsVQJn70hCHfklwjKkICrXR5AJ8wyCFLDmaSBJZt6paX0mglGnFxWX/c/vgLuq1+dJlNvsV
	zxKvq8YnTEEfoik+Jjh+CdReTaoTjOEa0c8+kOXyQky2SYa4XVGVutngb1me+mFe/da3mbel8V3wD
	KkHw9S3I/fRBkXIy4s6w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXaKw-00000008wXf-3IBK;
	Thu, 11 Jun 2026 08:00:26 +0000
Received: from mgamail.intel.com ([192.198.163.17])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXaKu-00000008wXG-0olO
	for linux-rockchip@lists.infradead.org;
	Thu, 11 Jun 2026 08:00:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1781164824; x=1812700824;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=PGULIhFtjwYzNe2T+HganJaxHbOTqAPqzyO4Ra14zMw=;
  b=Z64upkAEKMu6LLnwxnNOkn3L4VQovlZvQEISGkjycG6IUb4XZeJnSUtE
   NWgeLhyA9nl1S33s9GiU52rUMTPbULPY8/1AvO6WVoEgiWGBQjFbf45fC
   0st2kkoPpqoKRoHpCCiT6uccEwplyyPu/AJ6ciCyJcMsE59VZc6xfhPmv
   hPtqVdCD/XFtNBiuBIpOICKMUwE8quyyzSzFVpwulZECEmFup9cegK2Hs
   +CAD5/KsUXXgT5K4mPNKLgBsw7maHUC7i+Na2NkHhGwGPqCQnGW0G5wP+
   kpU7y1/GADiRWAfcBWWmBWDs+C64M+zhwPzCZrXgOVjgwrFkGHnz+ESP5
   A==;
X-CSE-ConnectionGUID: R9V7vVfRTIm0EqLv+cbRYg==
X-CSE-MsgGUID: NHZ+mHD/QJ6ufWOS+9lmeA==
X-IronPort-AV: E=McAfee;i="6800,10657,11813"; a="81819778"
X-IronPort-AV: E=Sophos;i="6.24,198,1774335600"; 
   d="scan'208";a="81819778"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
  by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 11 Jun 2026 01:00:24 -0700
X-CSE-ConnectionGUID: Y7KQgdkzTPS+9Dm6DR5iiQ==
X-CSE-MsgGUID: 92yebZMCSiCz1nbtISMqyw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,198,1774335600"; 
   d="scan'208";a="284493565"
Received: from ettammin-mobl3.ger.corp.intel.com (HELO localhost) ([10.245.244.123])
  by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 11 Jun 2026 01:00:20 -0700
Date: Thu, 11 Jun 2026 11:00:17 +0300
From: Andy Shevchenko <andriy.shevchenko@intel.com>
To: Chris Morgan <macroalpha82@gmail.com>
Cc: linux-iio@vger.kernel.org, andy@kernel.org, nuno.sa@analog.com,
	dlechner@baylibre.com, jic23@kernel.org,
	jean-baptiste.maneyrol@tdk.com, linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org, heiko@sntech.de, conor+dt@kernel.org,
	krzk+dt@kernel.org, robh@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: Re: [PATCH V11 5/9] iio: imu: inv_icm42607: Add PM support for
 icm42607
Message-ID: <aiprEfu5K7rP0LRr@ashevche-desk.local>
References: <20260610175455.19006-1-macroalpha82@gmail.com>
 <20260610175455.19006-6-macroalpha82@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260610175455.19006-6-macroalpha82@gmail.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs, Bertel Jungin Aukio 5, 02600 Espoo
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260611_010024_264055_89435E6B 
X-CRM114-Status: GOOD (  15.38  )
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

On Wed, Jun 10, 2026 at 12:54:49PM -0500, Chris Morgan wrote:
> Add power management support for the ICM42607 device driver.

...

>  struct inv_icm42607_state {
>  	struct mutex lock;
>  	const struct inv_icm42607_hw *hw;
>  	struct regmap *map;
>  	struct regulator *vddio_supply;
> +	bool vddio_en;
>  	struct iio_mount_matrix orientation;
>  	struct inv_icm42607_conf conf;
> +	struct inv_icm42607_suspended suspended;
>  };

When adding a new member to the data structure always consult with `pahole`
tool to see if the layout is the best fit.

...

> +/*
> + * Suspend delay assumed from other icm42600 series device, not
> + * documented in datasheet.
> + */
> +#define INV_ICM42607_SUSPEND_DELAY_MS			2000

2 * USEC_PER_MSEC

...

> +	sleepval = 0;
> +	if (temp && !oldtemp)
> +		sleepval = max(sleepval, INV_ICM42607_TEMP_STARTUP_TIME_MS);
> +
> +	if (accel != oldaccel)
> +		sleepval = max(sleepval, INV_ICM42607_ACCEL_STARTUP_TIME_MS);
> +
> +	if (gyro != oldgyro)
> +		sleepval = max(sleepval, INV_ICM42607_GYRO_STARTUP_TIME_MS);
> +
> +	if (sleep_ms)
> +		*sleep_ms = sleepval;
> +	else if (sleepval)
> +		fsleep(sleepval * USEC_PER_MSEC);

Also good to have a _ms suffis in sleepval.

...

> +	dev_set_drvdata(dev, st);

This what requires device.h. So, you can start with it whenever you first need
dev_printk.h, devres/*.h, but it doesn't mean you are supposed to drop other
non-device.h related headers, such as err.h.

...

> +EXPORT_NS_GPL_DEV_PM_OPS(inv_icm42607_pm_ops, IIO_ICM42607) = {
> +	SYSTEM_SLEEP_PM_OPS(inv_icm42607_suspend, inv_icm42607_resume)
> +	RUNTIME_PM_OPS(inv_icm42607_runtime_suspend,
> +		       inv_icm42607_runtime_resume, NULL)

Keep it logically split, either as

	RUNTIME_PM_OPS(inv_icm42607_runtime_suspend, inv_icm42607_runtime_resume, NULL)

or as

	RUNTIME_PM_OPS(inv_icm42607_runtime_suspend,
		       inv_icm42607_runtime_resume,
		       NULL)

> +};

-- 
With Best Regards,
Andy Shevchenko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
