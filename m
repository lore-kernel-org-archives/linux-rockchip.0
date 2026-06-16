Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6CCCBCD98CF
	for <linux-rockchip@archiver.kernel.org>; Tue, 16 Jun 2026 10:04:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OoXrvzlCMxvECVLcF7pLmoeQRsDq7dJ+g3o+yu64Qdg=; b=LuReM7n+YqmBL8
	FYNcxpvOLCSGT3MgQAYw8GhF9EEV6ckZjfIN5cOFip5aFm7s/G/PcJBTMQD6Dj3TU5MJD7iVMWC2x
	cqo4A9uuGJKyTSx0CduqxLRUIfX8JIPGtrbvLI9uzAOYBZTEkJ1Qh3+Q8kbdF6OrjoP+PCWWBk3Ub
	tWFWplrn4ZSkmplhjqYYZ2Dkz+0KKRPY+eeR+j89hAseh3qQnLp1T9ZAWIjy8aRWijcMMgRMvOXvA
	euzTxnuDQ8eUi+AtzPdv0b5XUgvN0p2o21TsElY4fXcKtxBKjpqj7WCwjEmtaGQ0GSgbEnge+FRAh
	Ajl5JwYlLxrjMsqy+rpA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wZQez-0000000FZAF-32W3;
	Tue, 16 Jun 2026 10:04:45 +0000
Received: from mgamail.intel.com ([198.175.65.18])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wZQex-0000000FZ9h-1JoR
	for linux-rockchip@lists.infradead.org;
	Tue, 16 Jun 2026 10:04:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1781604284; x=1813140284;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=3Ykr0UXG7WHwZgqC5hSi/MM9Gsz/j2L9I9r42E8jsFE=;
  b=BZARoEEqlkqjkP/3yiT+jPejPeayMMcEGTJCJcy/phPKREtCCpEgC9K+
   SCVx85HedW+9OGqSU3zOzxtVptZ8bULRHw/Ja/3l+jea5GLiTZS5bvSNJ
   OyQVSDe1jdJjGpiTohb2a60IU0bY1WTR3r0O0a/nMGL+40AiLB8PqD+bV
   wq5xz45oriVtuplTZvtOAwv+uPQugE8b4fstfPCwRt3Xi16v8Bnof5iC1
   iRI7lmCzaVXgJ0hWLwTylDMMxsK1E46pJ8ATWs9By0z2+U95hbR5qhEo2
   0nYdqD9pJzTAWhg5Nmq8cIWH1NeucgbsHGnCUmHrmELzsUACcfsAV1Fn4
   Q==;
X-CSE-ConnectionGUID: EGwhUmE/QMiwi4pA+tMZeQ==
X-CSE-MsgGUID: Y/GEgHU0SlencRzub+oMKg==
X-IronPort-AV: E=McAfee;i="6800,10657,11818"; a="82428037"
X-IronPort-AV: E=Sophos;i="6.24,208,1774335600"; 
   d="scan'208";a="82428037"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
  by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 16 Jun 2026 03:04:43 -0700
X-CSE-ConnectionGUID: vS8pse/1T+WzO7ekmQCHLw==
X-CSE-MsgGUID: KQsZrstoQSG4L7181eZ2xQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,208,1774335600"; 
   d="scan'208";a="271792857"
Received: from amilburn-desk.amilburn-desk (HELO localhost) ([10.245.244.153])
  by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 16 Jun 2026 03:04:38 -0700
Date: Tue, 16 Jun 2026 13:04:36 +0300
From: Andy Shevchenko <andriy.shevchenko@intel.com>
To: Chris Morgan <macroalpha82@gmail.com>
Cc: linux-iio@vger.kernel.org, andy@kernel.org, nuno.sa@analog.com,
	dlechner@baylibre.com, jic23@kernel.org,
	jean-baptiste.maneyrol@tdk.com, linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org, heiko@sntech.de, conor+dt@kernel.org,
	krzk+dt@kernel.org, robh@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: Re: [PATCH V13 7/9] iio: imu: inv_icm42607: Add Accelerometer for
 icm42607
Message-ID: <ajEftPsZVtmKS6dr@ashevche-desk.local>
References: <20260615172554.160910-1-macroalpha82@gmail.com>
 <20260615172554.160910-8-macroalpha82@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260615172554.160910-8-macroalpha82@gmail.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs, Bertel Jungin Aukio 5, 02600 Espoo
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260616_030443_416033_B08EA5EE 
X-CRM114-Status: GOOD (  14.52  )
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

On Mon, Jun 15, 2026 at 12:25:50PM -0500, Chris Morgan wrote:

> Add icm42607 accelerometer sensor for icm42607.

...

> +static int inv_icm42607_accel_read_odr(struct inv_icm42607_state *st,
> +				       int *val, int *val2)
> +{
> +	unsigned int odr;
> +	unsigned int i;
> +
> +	guard(mutex)(&st->lock);
> +
> +	odr = st->conf.accel.odr;
> +
> +	for (i = 5; i < ARRAY_SIZE(inv_icm42607_accel_odr); ++i) {

Same comment stays. Why pre-increment?

> +		if (i == odr)
> +			break;
> +	}
> +	if (i >= ARRAY_SIZE(inv_icm42607_accel_odr))
> +		return -EINVAL;
> +
> +	*val = inv_icm42607_accel_odr[i][0];
> +	*val2 = inv_icm42607_accel_odr[i][1];
> +
> +	return IIO_VAL_INT_PLUS_MICRO;
> +}

...

> +static int inv_icm42607_accel_write_odr(struct iio_dev *indio_dev,
> +					int val, int val2)
> +{
> +	struct inv_icm42607_sensor_conf conf = INV_ICM42607_SENSOR_CONF_INIT;
> +	struct inv_icm42607_state *st = iio_device_get_drvdata(indio_dev);
> +	struct device *dev = regmap_get_device(st->map);
> +	unsigned int idx;
> +	int ret;
> +
> +	for (idx = 5; idx < ARRAY_SIZE(inv_icm42607_accel_odr); ++idx) {

Ditto.

> +		if (val == inv_icm42607_accel_odr[idx][0] &&
> +		    val2 == inv_icm42607_accel_odr[idx][1])
> +			break;
> +	}
> +	if (idx >= ARRAY_SIZE(inv_icm42607_accel_odr))
> +		return -EINVAL;
> +
> +	conf.odr = idx;
> +
> +	PM_RUNTIME_ACQUIRE_AUTOSUSPEND(dev, pm);
> +	ret = PM_RUNTIME_ACQUIRE_ERR(&pm);
> +	if (ret)
> +		return ret;
> +
> +	guard(mutex)(&st->lock);
> +
> +	return inv_icm42607_set_accel_conf(st, &conf, NULL);
> +}

...

> +int inv_icm42607_set_accel_conf(struct inv_icm42607_state *st,
> +				struct inv_icm42607_sensor_conf *conf,
> +				unsigned int *sleep_ms)
> +{
> +	struct inv_icm42607_sensor_conf *oldconf = &st->conf.accel;
> +	unsigned int val;
> +	int ret;
> +
> +	if (conf->mode < 0)
> +		conf->mode = oldconf->mode;

Also as per below.

> +	if (conf->fs < 0)
> +		conf->fs = oldconf->fs;
> +	if (conf->odr < 0)
> +		conf->odr = oldconf->odr;

> +	if (conf->filter < 0)
> +		conf->filter = oldconf->filter;

This conditional is not immediately used below...

> +	if (conf->fs != oldconf->fs || conf->odr != oldconf->odr) {
> +		val = FIELD_PREP(INV_ICM42607_ACCEL_CONFIG0_FS_SEL_MASK, conf->fs);
> +		val |= FIELD_PREP(INV_ICM42607_ACCEL_CONFIG0_ODR_MASK, conf->odr);
> +		ret = regmap_write(st->map, INV_ICM42607_REG_ACCEL_CONFIG0, val);
> +		if (ret)
> +			return ret;
> +		oldconf->fs = conf->fs;
> +		oldconf->odr = conf->odr;
> +	}

...you can move it here.

> +	if (conf->filter != oldconf->filter) {
> +		if (conf->mode == INV_ICM42607_SENSOR_MODE_LOW_POWER) {
> +			val = FIELD_PREP(INV_ICM42607_ACCEL_CONFIG1_AVG_MASK, conf->filter);
> +			ret = regmap_update_bits(st->map, INV_ICM42607_REG_ACCEL_CONFIG1,
> +						 INV_ICM42607_ACCEL_CONFIG1_AVG_MASK, val);
> +		} else {
> +			val = FIELD_PREP(INV_ICM42607_ACCEL_CONFIG1_FILTER_MASK,
> +					 conf->filter);
> +			ret = regmap_update_bits(st->map, INV_ICM42607_REG_ACCEL_CONFIG1,
> +						 INV_ICM42607_ACCEL_CONFIG1_FILTER_MASK, val);
> +		}
> +		if (ret)
> +			return ret;
> +		oldconf->filter = conf->filter;
> +	}
> +
> +	return inv_icm42607_set_pwr_mgmt0(st, st->conf.gyro.mode, conf->mode,
> +					  st->conf.temp_en, sleep_ms);
> +}

-- 
With Best Regards,
Andy Shevchenko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
