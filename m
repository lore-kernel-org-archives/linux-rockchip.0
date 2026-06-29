Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9C232C43458
	for <linux-rockchip@archiver.kernel.org>; Mon, 29 Jun 2026 07:21:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dV5gV2mFlEqVqEFRi+8icoozKPyw1JVmkrSlEPsk6Yg=; b=QxgiTnKeDumimK
	X+JlbmBG4EkyWUuGTqLTPg2r68WEIWfD4TAN4loNvfaiN/CQbT0tKr4JFRUc/k+e7iekS8YfSXZH/
	Rlw9Gou9jmPxFVkcF5XdnSWoGV+EgSvFvPLok1W2vNYxov0b4VOrUVMMLwipXjQ9WlCFxvGZMlm+X
	JNcdKYi0xiqpsrRNNjR64yrpSB+0gg0d+H/EZ0pphDgL7zykep9aDCy085N80d4HxyHs5lGANY6MK
	1/h2TCw4uaAPbulfCmX9K7hOoVOCWspRkO9TZVmdh4rUMI5cyVwRdQlJBp0Ju5EL3MRTng3fylAr8
	MJQr3LNdN2UXBn7UhICw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1we6Is-0000000DsWI-3iwU;
	Mon, 29 Jun 2026 07:21:14 +0000
Received: from mgamail.intel.com ([198.175.65.14])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1we6Iq-0000000DsVj-1qGT
	for linux-rockchip@lists.infradead.org;
	Mon, 29 Jun 2026 07:21:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1782717672; x=1814253672;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=5FlcyVDERtTSpIlODKLyVsLFJ7RaBMhfiwTqJFbHglc=;
  b=T74VGgT+yLcf/IzQmvEQQWJYSSzyfwVAYgH7/UcowwYgngZbafelvykR
   xi2j9bvWE/Fn/iY+vj9JgkEgDRD/9XU0yY1+tWMmeuYLTATjGPBiUfvU9
   ziafuOV/jPNhL2v+xOGLHwHqS/LW9rbd9rv2888ziIIGObQg9v3BawLWh
   5EYk1WYY+MovM03YxyGWso78gAmfz7nHWryMmKMkZONLisnomf5cugEAI
   8r/4+2prnKAGStMU/kcMep6f/VNt63CWQvxHI1O1iAwMDID7+R7+7cRmD
   p6lLLsIbp/Gc0W9h7YEDNCoKHuXcsXi89Jr3ExzAjxwMr9BLuYrRKlU/c
   g==;
X-CSE-ConnectionGUID: rTyRp/WTRgGLeh70ta4Fyg==
X-CSE-MsgGUID: oclv5C+jRHG2eNWTAKbpwQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11831"; a="87307280"
X-IronPort-AV: E=Sophos;i="6.24,231,1774335600"; 
   d="scan'208";a="87307280"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
  by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 29 Jun 2026 00:21:11 -0700
X-CSE-ConnectionGUID: xFQf5RpMT/eTxhi2+wpCag==
X-CSE-MsgGUID: iNmOiPZISX2EkaMxk6j4FA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,231,1774335600"; 
   d="scan'208";a="248515550"
Received: from kniemiec-mobl1.ger.corp.intel.com (HELO localhost) ([10.245.244.207])
  by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 29 Jun 2026 00:21:08 -0700
Date: Mon, 29 Jun 2026 10:21:06 +0300
From: Andy Shevchenko <andriy.shevchenko@intel.com>
To: Chris Morgan <macroalpha82@gmail.com>
Cc: linux-iio@vger.kernel.org, andy@kernel.org, nuno.sa@analog.com,
	dlechner@baylibre.com, jic23@kernel.org,
	jean-baptiste.maneyrol@tdk.com, linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org, heiko@sntech.de, conor+dt@kernel.org,
	krzk+dt@kernel.org, robh@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: Re: [PATCH V15 5/9] iio: imu: inv_icm42607: Add PM support for
 icm42607
Message-ID: <akIc4vF06qtmIHFO@ashevche-desk.local>
References: <20260626161230.93069-1-macroalpha82@gmail.com>
 <20260626161230.93069-6-macroalpha82@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260626161230.93069-6-macroalpha82@gmail.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs, Bertel Jungin Aukio 5, 02600 Espoo
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260629_002112_521775_5DC26827 
X-CRM114-Status: GOOD (  25.91  )
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

On Fri, Jun 26, 2026 at 11:12:26AM -0500, Chris Morgan wrote:

> Add power management support for the ICM42607 device driver.

...

> +/*
> + * Suspend delay assumed from other icm42600 series device, not
> + * documented in datasheet.
> + */
> +#define INV_ICM42607_SUSPEND_DELAY_MS			2000

Perhaps (2 * MSEC_PER_SEC) ?

...

> +static int inv_icm42607_set_pwr_mgmt0(struct inv_icm42607_state *st,
> +				      enum inv_icm42607_sensor_mode gyro,
> +				      enum inv_icm42607_sensor_mode accel)
> +{
> +	unsigned int oldaccel, oldgyro;

> +	unsigned int sleepval_us = 0;

It's discouraged to have assignment here, as it's too far from the actual use
and makes code harder to maintain and prone to subtle errors. See also below.

> +	unsigned int val;
> +	s64 disable_wait;
> +	int ret;
> +
> +	ret = regmap_read(st->map, INV_ICM42607_REG_PWR_MGMT0, &val);
> +	if (ret)
> +		return ret;
> +
> +	oldaccel = FIELD_GET(INV_ICM42607_PWR_MGMT0_ACCEL_MODE_MASK, val);
> +	oldgyro = FIELD_GET(INV_ICM42607_PWR_MGMT0_GYRO_MODE_MASK, val);
> +
> +	if (gyro == oldgyro && accel == oldaccel)
> +		return 0;
> +
> +	/*
> +	 * Datasheet on page 14.26 says we need to ensure the gyro sensor is on
> +	 * for a minimum of 45ms. So if we transition from an on state to an
> +	 * off state make sure at least 45ms have passed before power off and
> +	 * wait if it hasn't.
> +	 */
> +	if (!gyro && oldgyro) {
> +		disable_wait = ktime_us_delta(st->conf.gyro_stop,
> +					      ktime_get());

It's perfectly a single line.

		disable_wait = ktime_us_delta(st->conf.gyro_stop, ktime_get());

> +		disable_wait = clamp(disable_wait, 0,
> +				     INV_ICM42607_GYRO_STOP_TIME_US);

I would leave on a single line, or split logically, meaning moving 0 to the
next line:

		disable_wait = clamp(disable_wait,
				     0, INV_ICM42607_GYRO_STOP_TIME_US);

> +		fsleep(disable_wait);
> +	}

> +	val = FIELD_PREP(INV_ICM42607_PWR_MGMT0_GYRO_MODE_MASK, gyro);
> +	val |= FIELD_PREP(INV_ICM42607_PWR_MGMT0_ACCEL_MODE_MASK, accel);


Perhaps

	val = FIELD_PREP(INV_ICM42607_PWR_MGMT0_GYRO_MODE_MASK, gyro) |
	      FIELD_PREP(INV_ICM42607_PWR_MGMT0_ACCEL_MODE_MASK, accel);

which is slightly better to read in my opinion.

> +	ret = regmap_write(st->map, INV_ICM42607_REG_PWR_MGMT0, val);
> +	if (ret)
> +		return ret;
> +
> +	/*
> +	 * If a state change occurs from off to on, sleep for the startup
> +	 * time of the sensor, unless a sleep_ms is specified. Since more
> +	 * than one sensor can be transitioned from off to on, select the
> +	 * maximum time from each of the sensors changing from off to on.
> +	 * The startup time for the temp sensor is considerably smaller
> +	 * than the startup time for the other sensors and one or more are
> +	 * required to be on for the temp sensor to function, so any start
> +	 * delay should be enough.
> +	 */

	sleepval_us = 0;

> +	if (accel && !oldaccel)
> +		sleepval_us = max(sleepval_us, INV_ICM42607_ACCEL_STARTUP_TIME_US);
> +
> +	if (gyro && !oldgyro) {
> +		sleepval_us = max(sleepval_us, INV_ICM42607_GYRO_STARTUP_TIME_US);
> +		/* Track the earliest we can turn off the gyroscope. */
> +		st->conf.gyro_stop = ktime_add_us(ktime_get(),
> +						  INV_ICM42607_GYRO_STOP_TIME_US);
> +	}
> +
> +	fsleep(sleepval_us);

The problem is that the reaction to 0 is a gray area. Some architecture
implementations might even complain on that.

On x86, for instance, udelay(0) actually does some (supposed to be small) delay.

But I think due to above check for gyro == oldgyro && accel == oldaccel this
won't happen. Please, add a comment on top of fsleep().

> +	return 0;
> +}

...

> +	dev_set_drvdata(dev, st);

This will require device.h to be included and hence the rest related headers
can be dropped at the same time (like dev_printk.h).

-- 
With Best Regards,
Andy Shevchenko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
