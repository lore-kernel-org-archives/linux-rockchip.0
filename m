Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 997C1C43458
	for <linux-rockchip@archiver.kernel.org>; Tue, 14 Jul 2026 11:22:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=v6Ogbe7MEwGGWCcrVBxmwhBrQH8Ci6KPZGPhe35d9Us=; b=ZyRsCbQJlVlGfr
	vbOrMesiBF6PPep/Ecu5nGKf4PpuReoMKTPTtnUGoOcwM0aR9LJaQGGxDuDwKeLz7+WINRjKaS4qG
	0bQfrqj343v+yl3xXKjHzNlJdBus7s0ikaBc0qEqHMqekJvXAfuz6FITkYgD2eX4UBFle/prZDUOX
	s6/F6ZHiwxe5uGg9DsHnVYfEbPHkYYKB1/dvMivYkPPUvgfsCSpXPAGGGtCm+weG+HQJR28sIThT+
	U4AsCF+r5YvyHSCoEz24aWH7yGaeVXZQSyko3LLy85T26laUJGtwfBchJHl1seaj7RvYdSCIvI0jf
	+Ma0J2SzKxjZcX8HWq7w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wjbD4-0000000BfWr-10mG;
	Tue, 14 Jul 2026 11:21:58 +0000
Received: from mgamail.intel.com ([198.175.65.19])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wjbD1-0000000BfVu-1kNq
	for linux-rockchip@lists.infradead.org;
	Tue, 14 Jul 2026 11:21:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1784028115; x=1815564115;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=9rpCI0fMrl7LA6kFB/qj/ZB1zdhvy14XSIRcOLdqurM=;
  b=nTgMN0Xof+tpa7yhLO7MFq8vpuXWB8hU0rZkRPwlChmPeHT/TKCNMXXc
   O2CSvklRKJ9AeFqnRg1WHhMG5NFHIszH8M1VJQCVuLnirfkOK64lHe1+9
   bq/AeIZ1dXHpDU4Kn0Lo9Sgrki+XZ7qiBtk6shTVHUttA2ZUWhQgup6bF
   u1hohYBvS92uSpmTu39rZ+dl14X+swLtLgatbCwtlV1jbCOJrlIJQiWn+
   gu5QWIK4efXnvTACls8m+SLuxAvfmUDR5hniw1+ZvRjdSZJH60mXMO2N7
   BofgMBsywpxLYJLZhF/zs8LZPJTWd5OdFrzXY29RqwbxVs6CjxV/MIa94
   w==;
X-CSE-ConnectionGUID: +NekmYbARpywU14ySLigZw==
X-CSE-MsgGUID: MviLt8VZR4Wbsl5ZOpnSCQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11846"; a="84611723"
X-IronPort-AV: E=Sophos;i="6.25,163,1779174000"; 
   d="scan'208";a="84611723"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
  by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 14 Jul 2026 04:21:54 -0700
X-CSE-ConnectionGUID: BB4Vv10wT96Ch7YOSUNuwQ==
X-CSE-MsgGUID: gysOuOYxS02M7T0t6H19+w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,163,1779174000"; 
   d="scan'208";a="251418891"
Received: from kniemiec-mobl1.ger.corp.intel.com (HELO localhost) ([10.245.245.189])
  by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 14 Jul 2026 04:21:51 -0700
Date: Tue, 14 Jul 2026 14:21:49 +0300
From: Andy Shevchenko <andriy.shevchenko@intel.com>
To: Chris Morgan <macroalpha82@gmail.com>
Cc: linux-iio@vger.kernel.org, andy@kernel.org, nuno.sa@analog.com,
	dlechner@baylibre.com, jic23@kernel.org,
	jean-baptiste.maneyrol@tdk.com, linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org, heiko@sntech.de, conor+dt@kernel.org,
	krzk+dt@kernel.org, robh@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: Re: [PATCH v16 07/10] iio: imu: inv_icm42607: Add Accelerometer for
 icm42607
Message-ID: <alYbzXguJXsdi75i@ashevche-desk.local>
References: <20260713215842.69097-1-macroalpha82@gmail.com>
 <20260713215842.69097-8-macroalpha82@gmail.com>
 <alYbi_Bp0wVOlJ1i@ashevche-desk.local>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <alYbi_Bp0wVOlJ1i@ashevche-desk.local>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs, Bertel Jungin Aukio 5, 02600 Espoo
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260714_042155_523002_A5F3A1F9 
X-CRM114-Status: GOOD (  15.21  )
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

On Tue, Jul 14, 2026 at 02:20:48PM +0300, Andy Shevchenko wrote:
> On Mon, Jul 13, 2026 at 04:58:37PM -0500, Chris Morgan wrote:

...

> > +int inv_icm42607_read_sensor(struct iio_dev *indio_dev,
> > +			     struct iio_chan_spec const *chan,
> > +			     s16 *val)
> > +{
> > +	struct inv_icm42607_sensor_conf conf = INV_ICM42607_SENSOR_CONF_INIT;
> > +	struct inv_icm42607_state *st = iio_device_get_drvdata(indio_dev);
> > +	struct inv_icm42607_sensor_state *sensor_st = iio_priv(indio_dev);
> > +	struct device *dev = regmap_get_device(st->map);
> > +	unsigned int reg;
> 
> > +	u8 data[2];
> 
> Define using the correct type. AFAICS it should be __be16 data;
> 
> > +	int ret;
> > +
> > +	if ((chan->type != IIO_ANGL_VEL) && (chan->type != IIO_ACCEL))
> > +		return -EINVAL;
> > +
> > +	switch (chan->channel2) {
> > +	case IIO_MOD_X:
> > +		if (chan->type == IIO_ANGL_VEL)
> > +			reg = INV_ICM42607_REG_GYRO_DATA_X1;
> > +		else
> > +			reg = INV_ICM42607_REG_ACCEL_DATA_X1;
> > +		break;
> > +	case IIO_MOD_Y:
> > +		if (chan->type == IIO_ANGL_VEL)
> > +			reg = INV_ICM42607_REG_GYRO_DATA_Y1;
> > +		else
> > +			reg = INV_ICM42607_REG_ACCEL_DATA_Y1;
> > +		break;
> > +	case IIO_MOD_Z:
> > +		if (chan->type == IIO_ANGL_VEL)
> > +			reg = INV_ICM42607_REG_GYRO_DATA_Z1;
> > +		else
> > +			reg = INV_ICM42607_REG_ACCEL_DATA_Z1;
> > +		break;
> > +	default:
> > +		return -EINVAL;
> > +	}
> > +
> > +	PM_RUNTIME_ACQUIRE_AUTOSUSPEND(dev, pm);
> > +	ret = PM_RUNTIME_ACQUIRE_ERR(&pm);
> > +	if (ret)
> > +		return ret;
> > +
> > +	guard(mutex)(&st->lock);
> > +
> > +	/* enable sensor */
> > +	conf.mode = sensor_st->power_mode;
> > +	conf.filter = sensor_st->filter;
> > +	ret = inv_icm42607_set_sensor_conf(st, &conf, chan->type);
> > +	if (ret)
> > +		return ret;
> > +
> > +	/* read sensor register data */
> > +	ret = regmap_bulk_read(st->map, reg, data, sizeof(data));
> > +	if (ret)
> > +		return ret;

> > +	*val = get_unaligned_be16(data);

In this case it will be be16_to_cpu() instead (from asm/byteorder.h).

> > +	if (*val == INV_ICM42607_DATA_INVALID)
> > +		return -EINVAL;
> > +
> > +	return 0;
> > +}

-- 
With Best Regards,
Andy Shevchenko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
