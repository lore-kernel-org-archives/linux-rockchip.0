Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 83597CD98DA
	for <linux-rockchip@archiver.kernel.org>; Mon, 15 Jun 2026 10:28:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QNHujkLBqVg89fk0Rxyp27wjr4/F3jPPlu4CqDFiWU4=; b=WYMPNEVT9maPxm
	uIyUYy+7HILQbMg+69JgVbn0Zp56jRmilYZ2+rwszURgA1TOT4R47hUT+tIE1TDnCNB9/nW+3VKWM
	OLs5FqSyyo9ArasAghSDrjyDYGUuA23y8nI++HsPTf8EEFHZ3FYv5Mvr8bVac3jOrU+ynSTlyqF3q
	v6UjWLnq6EcW/tRqIRJz9D5FXrQTpSzmeNr7Q7FFfQN4KGWHuTSEZEjCgRxFWOPtFU9Fjx1GynaVc
	MXQG4kTfpNdG9suGNSyIOD+xk6bzS+2UFcuibV1ccJJROivqaeo4hxJ8OcpIgQszn9kMI41o5+EaH
	c9+UU+NQH3+HIGFyr/8w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wZ4Ya-0000000E3FJ-0kcb;
	Mon, 15 Jun 2026 10:28:40 +0000
Received: from mgamail.intel.com ([198.175.65.13])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wZ4YX-0000000E3Eu-3AfF
	for linux-rockchip@lists.infradead.org;
	Mon, 15 Jun 2026 10:28:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1781519318; x=1813055318;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=cjmYWfC1zuAZ0CEHetrNd9YiohGW7mbOzZNdkkXbyUo=;
  b=GDAhYXWDsHY4rJaMV53UPRgKTDcu7A0Zx8jWUsH0IdO0vMIw2phdVFPO
   fbC84GdWuf0nIy/O8vUFFTyYJQ0w29FpZand+f1l0W/fWQ2qYgQeyL9VV
   Rf4P9fxWBy4+Z0mO4Q+3ZME8lTXHF2IRs4mJWXOhCNNCkPFHKUCWNHwB8
   PvAO0XsnLaRxQUXxXoOn6EMB7cB9KgeLO/WLVt/+dYJbtBSGp090wvAe9
   yqVWvb+jbk7maugfOUywc/tPSPfQUhk3ZQLOR23cgh/Yoy/FQL7Lo5cWR
   iVb5P/2RGIep1zIDf3A0xbZMvMvHMznVa8YcNVSAKIKTSE7LDQOkbTQX+
   A==;
X-CSE-ConnectionGUID: gxh9aWJVRi62V5HX68SF5w==
X-CSE-MsgGUID: PZRsmqivRbyEGbwwh5AKHA==
X-IronPort-AV: E=McAfee;i="6800,10657,11817"; a="93371792"
X-IronPort-AV: E=Sophos;i="6.24,206,1774335600"; 
   d="scan'208";a="93371792"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
  by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 15 Jun 2026 03:28:35 -0700
X-CSE-ConnectionGUID: 8KEZcgDwST6M1JTXFdyAjg==
X-CSE-MsgGUID: j6gxE4dnTQeRTw5bK8cP2w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,206,1774335600"; 
   d="scan'208";a="244527019"
Received: from ettammin-mobl3.ger.corp.intel.com (HELO localhost) ([10.245.245.235])
  by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 15 Jun 2026 03:28:32 -0700
Date: Mon, 15 Jun 2026 13:28:29 +0300
From: Andy Shevchenko <andriy.shevchenko@intel.com>
To: Chris Morgan <macroalpha82@gmail.com>
Cc: linux-iio@vger.kernel.org, andy@kernel.org, nuno.sa@analog.com,
	dlechner@baylibre.com, jic23@kernel.org,
	jean-baptiste.maneyrol@tdk.com, linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org, heiko@sntech.de, conor+dt@kernel.org,
	krzk+dt@kernel.org, robh@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: Re: [PATCH V12 5/9] iio: imu: inv_icm42607: Add PM support for
 icm42607
Message-ID: <ai_Tzbl3sZlyrh2M@ashevche-desk.local>
References: <20260611202607.85376-1-macroalpha82@gmail.com>
 <20260611202607.85376-6-macroalpha82@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260611202607.85376-6-macroalpha82@gmail.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs, Bertel Jungin Aukio 5, 02600 Espoo
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260615_032837_833206_48059CA6 
X-CRM114-Status: GOOD (  17.00  )
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

On Thu, Jun 11, 2026 at 03:26:02PM -0500, Chris Morgan wrote:

> Add power management support for the ICM42607 device driver.

...

> +static int inv_icm42607_set_pwr_mgmt0(struct inv_icm42607_state *st,
> +				      enum inv_icm42607_sensor_mode gyro,
> +				      enum inv_icm42607_sensor_mode accel,
> +				      bool temp, unsigned int *sleep_ms)
> +{
> +	enum inv_icm42607_sensor_mode oldaccel = st->conf.accel.mode;
> +	enum inv_icm42607_sensor_mode oldgyro = st->conf.gyro.mode;
> +	bool oldtemp = st->conf.temp_en;
> +	unsigned int sleepval_ms;
> +	unsigned int val;
> +	int ret;
> +
> +	if (gyro == oldgyro && accel == oldaccel && temp == oldtemp)
> +		return 0;

This validation seems weak, see below why.

> +	val = FIELD_PREP(INV_ICM42607_PWR_MGMT0_GYRO_MODE_MASK, gyro);
> +	val |= FIELD_PREP(INV_ICM42607_PWR_MGMT0_ACCEL_MODE_MASK, accel);
> +	/*
> +	 * Note that temp being enabled here doesn't affect PM since
> +	 * per 10.25 of the datasheet the clock will be off by default
> +	 * if both the gyro and accel modes are off.
> +	 */
> +	if (!temp)
> +		val |= INV_ICM42607_PWR_MGMT0_ACCEL_LP_CLK_SEL;
> +	ret = regmap_write(st->map, INV_ICM42607_REG_PWR_MGMT0, val);
> +	if (ret)
> +		return ret;
> +
> +	st->conf.gyro.mode = gyro;
> +	st->conf.accel.mode = accel;
> +	st->conf.temp_en = temp;

> +	sleepval_ms = 0;
> +	if (temp && !oldtemp)
> +		sleepval_ms = max(sleepval_ms, INV_ICM42607_TEMP_STARTUP_TIME_MS);
> +
> +	if (accel != oldaccel)
> +		sleepval_ms = max(sleepval_ms, INV_ICM42607_ACCEL_STARTUP_TIME_MS);
> +
> +	if (gyro != oldgyro)
> +		sleepval_ms = max(sleepval_ms, INV_ICM42607_GYRO_STARTUP_TIME_MS);

Does it mean that it might be more than a single conditional to become true?
If so, the last code wins, which is most likely buggy approach. Can you put
a comment, and possible convert this to if-else-if, to clarify what's going
on here?

> +	if (sleep_ms)
> +		*sleep_ms = sleepval_ms;
> +	else if (sleepval_ms)
> +		fsleep(sleepval_ms * USEC_PER_MSEC);
> +
> +	return 0;
> +}

-- 
With Best Regards,
Andy Shevchenko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
