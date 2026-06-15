Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 05D9FCD98DA
	for <linux-rockchip@archiver.kernel.org>; Mon, 15 Jun 2026 11:22:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gVa+mQ1drdpZOloU8qug77NadGe/cN9CxPDuCef8tPs=; b=gyNNoRhYftTYso
	VbGNlD1QYprdbT26kjzt4xFkcauC2Sy1V0wP4rn8GMIXMcjhjDIM+JFK2Sumb72toPxoIGhk4nkwA
	wnqBKI2Cq9336SzTAq2tv01XtNCAr58O9ZSLzPNoH0ENVamiEl1RDpqKIzC/C8tGRN5nOBUJiQ5Ls
	7eC+ob4J0J/zEf0csclCGc8n7Y/E9E9g1ktW3WMk/a3Qgnm/hgH0CRY/Ru7rWwxcgC/pzlRLZ6SXY
	SNFhe/Z2furkpXT+Yt3pfW/N+pqnSoowghJvn5fO3KQROd2qbZ9qr/7ASHkDWnhm9c2osGeo1ooit
	f8zTLNFxYE1ptkoXsDSw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wZ5OU-0000000E5zY-2ubG;
	Mon, 15 Jun 2026 11:22:18 +0000
Received: from mgamail.intel.com ([198.175.65.12])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wZ5OS-0000000E5z9-2K3Z
	for linux-rockchip@lists.infradead.org;
	Mon, 15 Jun 2026 11:22:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1781522536; x=1813058536;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=oUuco3i0K38eSMot402UJs61QnUbT2+JIaR5boNplsQ=;
  b=oByN57y0c3mECfFbJdAQDG4F04hSQwPkHWArbtG3ZJoYAc9U57iXXb/Z
   1NoIklDLbO+AqelyXq+UrMJQ4zFm2hym42dwNGIIFayum+/Ui9Ndhi16o
   bEeptPULPr3F7laDzOjKNs4gEDNQsVIhAV7XeWZohMQzbESDqlO4vQ0/3
   DB7KSAtdSNU5L42bTcLjm0NUU1ENyoupS0WgfFo7dZzDjpcQczvIsohim
   G1fJDdSsfGdz6Q3+YS+xx2wEzbIsnUL76WJFczyhH6TjqGwKYH94z79Z5
   0HbuEAYSJruvTWderJzy43sLl5qSIC2X2d/R53v8eViMV9TlNw+rh/JO9
   w==;
X-CSE-ConnectionGUID: duLQSMHvRdG9qyD3yCBUFA==
X-CSE-MsgGUID: PuSd80hRSmSKNneg63lUzw==
X-IronPort-AV: E=McAfee;i="6800,10657,11817"; a="93750791"
X-IronPort-AV: E=Sophos;i="6.24,206,1774335600"; 
   d="scan'208";a="93750791"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
  by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 15 Jun 2026 04:21:11 -0700
X-CSE-ConnectionGUID: +VUN7yuxSNuQPnk+/FSvKg==
X-CSE-MsgGUID: KzZJslhUQuu3pFRYoagyyg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,206,1774335600"; 
   d="scan'208";a="241090446"
Received: from ettammin-mobl3.ger.corp.intel.com (HELO localhost) ([10.245.245.235])
  by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 15 Jun 2026 04:21:08 -0700
Date: Mon, 15 Jun 2026 14:21:05 +0300
From: Andy Shevchenko <andriy.shevchenko@intel.com>
To: Chris Morgan <macroalpha82@gmail.com>
Cc: linux-iio@vger.kernel.org, andy@kernel.org, nuno.sa@analog.com,
	dlechner@baylibre.com, jic23@kernel.org,
	jean-baptiste.maneyrol@tdk.com, linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org, heiko@sntech.de, conor+dt@kernel.org,
	krzk+dt@kernel.org, robh@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: Re: [PATCH V12 7/9] iio: imu: inv_icm42607: Add Accelerometer for
 icm42607
Message-ID: <ai_gIR2d9fzHLZ-G@ashevche-desk.local>
References: <20260611202607.85376-1-macroalpha82@gmail.com>
 <20260611202607.85376-8-macroalpha82@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260611202607.85376-8-macroalpha82@gmail.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs, Bertel Jungin Aukio 5, 02600 Espoo
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260615_042216_631184_942281F9 
X-CRM114-Status: GOOD (  10.81  )
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

On Thu, Jun 11, 2026 at 03:26:04PM -0500, Chris Morgan wrote:

> Add icm42607 accelerometer sensor for icm42607.

...

> +++ b/drivers/iio/imu/inv_icm42607/inv_icm42607_accel.c

Please, please, use IWYU! So many headers are missing...
(Same comment to all files in this series.)

+ array_size.h
+ bits.h // BIT()
+ cleanup.h // guard()()
+ device/devres.h // devm_kasprintf()
+ err.h // -EINVAL, IS_ERR()

> +#include <linux/iio/iio.h>
> +#include <linux/mutex.h>
> +#include <linux/pm_runtime.h>
> +#include <linux/regmap.h>

+ types.h // s16, __be16

Also you need to have

asm/byteorder.h // be16_to_cpup()

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

Why pre-increment? Same for all other cases.

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

-- 
With Best Regards,
Andy Shevchenko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
