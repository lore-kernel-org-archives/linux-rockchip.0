Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7508BC43458
	for <linux-rockchip@archiver.kernel.org>; Tue, 14 Jul 2026 11:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GnnI9mdCSeftmqWzkubQZy+cP5S/oA/MGKiraOANbxI=; b=2XDWhXsf3rlx0i
	HHVCzQ0p27o2chAegiazyygRD0ZKrdGnfgt372aDnvkNV0l9EbG4fQkl1t9LMfDtEMVIKnzN0AIRo
	Aa2ztNKxezvjqwQ/bCRvBRz+798gtZGAb7Z789hWRZS9ZdIsaatqqf8NS67dbTXrisEZejYrqeJ0Q
	BuJB5l9YmkVdUmcFWYoM0ixVQx8KN7Qin2AVLpPp+/UrzohYTGP4CSR43E949RT02Ats2AiNk4i5k
	DWUWwrQsodCGm2M5acrFwulwXxma0lc+895c3fE/W5AZM/DEKqJ1Lx/u4+ahvpq9vINpw/H3yloAZ
	+8KQOFxr7gq8rtSfwnCw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wjbGp-0000000Bftm-0N1R;
	Tue, 14 Jul 2026 11:25:51 +0000
Received: from mgamail.intel.com ([198.175.65.10])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wjbGn-0000000BftP-0zyX
	for linux-rockchip@lists.infradead.org;
	Tue, 14 Jul 2026 11:25:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1784028349; x=1815564349;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=l8UMWjNryveDRS7zhIlOAJJ2D2SnHH72oo1FcLXgOCM=;
  b=bRsAbSxvSmeroS7YfI/izsRNMkOXrAc08akjkkxWBRJQso0S0tq+3M6y
   mAGgFD66JS8D0PMMkEpJfBmkshQOqF9201ULpPEkDJyl/cw1TLVhz8OOr
   FIFnEwZd/rHN/Kvg/jx+04V0l2t7s4hs5Vq70NowXauj4fOuXzKiQVRW2
   eUERFb5KTLcK2DhcbD1Ilc4SO9WRoeab0MsF1qbXRsp95flAHF6K5Fm4k
   PqoiaV8Irn/tItlLAuCnLc+r+VIthJ/sVxcw0u+r0mNZo0wpNsT+QOy2V
   EGMkIyFzXasJ8qR4710PX7167FWYPYrNwUwC4h08eZGmTuoR84iYwCKx5
   A==;
X-CSE-ConnectionGUID: Q2naXUu3SGe0PZ/s5KzEQQ==
X-CSE-MsgGUID: m59zW7QqRteaKmIsDP8w9w==
X-IronPort-AV: E=McAfee;i="6800,10657,11846"; a="102071239"
X-IronPort-AV: E=Sophos;i="6.25,163,1779174000"; 
   d="scan'208";a="102071239"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
  by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 14 Jul 2026 04:25:45 -0700
X-CSE-ConnectionGUID: Eg7MM2WISMqp9OmKRxpZvQ==
X-CSE-MsgGUID: F+IxOinpT4KWs09Z869aKg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,163,1779174000"; 
   d="scan'208";a="254706973"
Received: from kniemiec-mobl1.ger.corp.intel.com (HELO localhost) ([10.245.245.189])
  by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 14 Jul 2026 04:25:42 -0700
Date: Tue, 14 Jul 2026 14:25:39 +0300
From: Andy Shevchenko <andriy.shevchenko@intel.com>
To: Chris Morgan <macroalpha82@gmail.com>
Cc: linux-iio@vger.kernel.org, andy@kernel.org, nuno.sa@analog.com,
	dlechner@baylibre.com, jic23@kernel.org,
	jean-baptiste.maneyrol@tdk.com, linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org, heiko@sntech.de, conor+dt@kernel.org,
	krzk+dt@kernel.org, robh@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: Re: [PATCH v16 06/10] iio: imu: inv_icm42607: Add PM support for
 icm42607
Message-ID: <alYcsxAKDtGi1sVA@ashevche-desk.local>
References: <20260713215842.69097-1-macroalpha82@gmail.com>
 <20260713215842.69097-7-macroalpha82@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260713215842.69097-7-macroalpha82@gmail.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs, Bertel Jungin Aukio 5, 02600 Espoo
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260714_042549_325001_5018AB22 
X-CRM114-Status: GOOD (  22.79  )
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

On Mon, Jul 13, 2026 at 04:58:36PM -0500, Chris Morgan wrote:

> Add power management support for the ICM42607 device driver.

...

> +static int inv_icm42607_set_pwr_mgmt0(struct inv_icm42607_state *st,
> +				      enum inv_icm42607_sensor_mode gyro,
> +				      enum inv_icm42607_sensor_mode accel)
> +{
> +	unsigned int oldaccel, oldgyro;
> +	unsigned int sleepval_us;
> +	unsigned int val;
> +	s64 disable_wait;
> +	int ret;
> +
> +	ret = inv_icm42607_get_pwr_mgmt0(st, &oldgyro, &oldaccel);
> +	if (ret)
> +		return ret;
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
> +		disable_wait = ktime_us_delta(st->conf.gyro_stop, ktime_get());
> +		disable_wait = clamp(disable_wait,
> +				     0, INV_ICM42607_GYRO_STOP_TIME_US);

I would go with this slightly longer line

		disable_wait = clamp(ktime_us_delta(st->conf.gyro_stop, ktime_get()),
				     0, INV_ICM42607_GYRO_STOP_TIME_US);

> +		fsleep(disable_wait);
> +	}
> +
> +	val = FIELD_PREP(INV_ICM42607_PWR_MGMT0_GYRO_MODE_MASK, gyro) |
> +	      FIELD_PREP(INV_ICM42607_PWR_MGMT0_ACCEL_MODE_MASK, accel);
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
> +	sleepval_us = 0;
> +	if (accel && !oldaccel)
> +		sleepval_us = max(sleepval_us, INV_ICM42607_ACCEL_STARTUP_TIME_US);
> +
> +	if (gyro && !oldgyro) {
> +		sleepval_us = max(sleepval_us, INV_ICM42607_GYRO_STARTUP_TIME_US);
> +		/* Track the earliest we can turn off the gyroscope. */
> +		st->conf.gyro_stop = ktime_add_us(ktime_get(),
> +						  INV_ICM42607_GYRO_STOP_TIME_US);
> +	}

> +	/* Only sleep if sleepval_us is greater than 0 in case some
> +	 * platforms have issues with a 0 delay. The 0 delay can happen
> +	 * if one or both sensors is shut down.
> +	 */

/*
 * Use the same style for mutli-line comment
 * in all comments.
 */

> +	if (sleepval_us > 0)
> +		fsleep(sleepval_us);
> +
> +	return 0;
> +}

...

> +EXPORT_NS_GPL_DEV_PM_OPS(inv_icm42607_pm_ops, IIO_ICM42607) = {
> +	SYSTEM_SLEEP_PM_OPS(inv_icm42607_suspend, inv_icm42607_resume)

> +	RUNTIME_PM_OPS(inv_icm42607_runtime_suspend,
> +		       inv_icm42607_runtime_resume,
> +		       NULL)

Hmm... perhaps just a single line as well?

	RUNTIME_PM_OPS(inv_icm42607_runtime_suspend, inv_icm42607_runtime_resume, NULL)

> +};

-- 
With Best Regards,
Andy Shevchenko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
