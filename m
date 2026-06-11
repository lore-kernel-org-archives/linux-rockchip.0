Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AEC2DCD98CC
	for <linux-rockchip@archiver.kernel.org>; Thu, 11 Jun 2026 07:36:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7XuD+iKQ/hykJ9NF7/TzlL+s6GGCjDtsCBpkXSQZ/Cs=; b=c3EMtl+oInlyqQ
	kqyzdXnQxxDz06zW/oR6NFIaH3qDs+IPVE8M4/DZ6DwqAMDiu78i7VwKFLUvedsDzT08+BFmMGa7f
	KHgVBtasp4UCD/MRwg259IXKI/EPwwmaIqaoQZaT8B/m6WSXnesFhiix9P8K6bHGOqY2vf3W77O1D
	UBihLWcK5hcXVOxKIQ3z8Qqro3p9b4psvjBbXAn5JSp4KoE/w860ShlXTZG4vX71b2t9mPIx7cRrE
	BsBa9x8GgdFH2jTPrS06EE54AieWsbMl8igVrTl2y+kKhou43WfSwAiGqaN5dzzHxJY4BDtXDdFzc
	iE1n9ATvBnjETSZsKybw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXZxH-00000008syA-255P;
	Thu, 11 Jun 2026 07:35:59 +0000
Received: from mgamail.intel.com ([198.175.65.10])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXZxE-00000008sxJ-2cgJ
	for linux-rockchip@lists.infradead.org;
	Thu, 11 Jun 2026 07:35:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1781163357; x=1812699357;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=eUTaZdcVlZ7mbhJNGVeR+srWl7fhfY1SzOK+RRIWYq0=;
  b=gzaYCFD37NuMngSWFs8oLXPahJ6tYbfK/QNvJfMTc92eXhKtPgG/o52/
   k1aMO2qbWUtL1i8r+g6aD2qP+7KZgHVxuu6phSR3LOXoYSdbIl/ifwhE+
   4Jz5pqYlDn/2PQmBEw7Myq/Gr/vUosIrITDuc/kphwQfTlYtXfMf9RESt
   CmEH5GB0TCjteJzP+5Im4GDGrU3KQXHZTReeLpyuOEw0hTIy6cr7/VgTJ
   nISW43xKKdETfZsPEUeOFyNiT7Eo3TAy6H0FzEbFVQNmjgjNUzUda5vcv
   nEMHbo5gtDn3oNBIRhb7nyYyyC8+APIANFlfKc3NLRvmo+3M5bqmx8pRx
   g==;
X-CSE-ConnectionGUID: 0v6rqmEySmmRYQ/Ikcr5vw==
X-CSE-MsgGUID: 3yBOCzQMSTO4WqaFowbyKQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11813"; a="99393280"
X-IronPort-AV: E=Sophos;i="6.24,198,1774335600"; 
   d="scan'208";a="99393280"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
  by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 11 Jun 2026 00:35:56 -0700
X-CSE-ConnectionGUID: gc9XZ82lQ06NICssykO0vQ==
X-CSE-MsgGUID: mjaJF0ZNR6i0VLMXbF0kdg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,198,1774335600"; 
   d="scan'208";a="276595139"
Received: from ettammin-mobl3.ger.corp.intel.com (HELO localhost) ([10.245.244.123])
  by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 11 Jun 2026 00:35:53 -0700
Date: Thu, 11 Jun 2026 10:35:49 +0300
From: Andy Shevchenko <andriy.shevchenko@intel.com>
To: Chris Morgan <macroalpha82@gmail.com>
Cc: linux-iio@vger.kernel.org, andy@kernel.org, nuno.sa@analog.com,
	dlechner@baylibre.com, jic23@kernel.org,
	jean-baptiste.maneyrol@tdk.com, linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org, heiko@sntech.de, conor+dt@kernel.org,
	krzk+dt@kernel.org, robh@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: Re: [PATCH V11 3/9] iio: imu: inv_icm42607: Add inv_icm42607 Core
 Driver
Message-ID: <aiplVZRI-0TCDnjL@ashevche-desk.local>
References: <20260610175455.19006-1-macroalpha82@gmail.com>
 <20260610175455.19006-4-macroalpha82@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260610175455.19006-4-macroalpha82@gmail.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs, Bertel Jungin Aukio 5, 02600 Espoo
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260611_003556_717986_DDA7E8DE 
X-CRM114-Status: GOOD (  14.66  )
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

On Wed, Jun 10, 2026 at 12:54:47PM -0500, Chris Morgan wrote:

> Add the core component of a new inv_icm42607 driver. This includes
> a few setup functions and the full register definition in the
> header file.

...

>  2 files changed, 531 insertions(+)
>  create mode 100644 drivers/iio/imu/inv_icm42607/inv_icm42607.h
>  create mode 100644 drivers/iio/imu/inv_icm42607/inv_icm42607_core.c

I'm not sure this is correct split by files. These files are not:
- being build
- being mentioned in MAINTAINERS

...

> +#ifndef INV_ICM42607_H_
> +#define INV_ICM42607_H_
> +
> +#include <linux/bits.h>
> +#include <linux/iio/iio.h>
> +#include <linux/mutex.h>

mutex_types.h ?

> +#include <linux/regmap.h>
> +#include <linux/types.h>

Do you need forward declaration for regulator data type?

...

> +#define INV_ICM42607_POWER_UP_TIME_US			100000

100 * USEC_PER_MSEC (will require time.h)?

...

> +++ b/drivers/iio/imu/inv_icm42607/inv_icm42607_core.c

+ bitfields.h

> +#include <linux/delay.h>
> +#include <linux/dev_printk.h>

+ device/devres.h
+ err.h

> +#include <linux/iio/iio.h>
> +#include <linux/module.h>
> +#include <linux/mutex.h>
> +#include <linux/regmap.h>
> +#include <linux/regulator/consumer.h>
> +#include <linux/time.h>

Also check if you need types.h.

...

> +	fsleep(INV_ICM42607_RESET_TIME_MS * USEC_PER_MSEC);
> +
> +	/*
> +	 * No polling interval specified in datasheet, so use reset time as
> +	 * polling interval and 10x reset time as timeout period.
> +	 */
> +	ret = regmap_read_poll_timeout(st->map, INV_ICM42607_REG_INT_STATUS,
> +				       val, val & INV_ICM42607_INT_STATUS_RESET_DONE,
> +				       (INV_ICM42607_RESET_TIME_MS * USEC_PER_MSEC),
> +				       (INV_ICM42607_RESET_TIME_MS * USEC_PER_MSEC * 10));

Besides too many parentheses, this can be switched to regular patter of "num * what".
Also, TBH, the plain values would be better here

	fsleep(1 * USEC_PER_MSEC);

	/*
	 * No polling interval specified in datasheet, so use reset time as
	 * polling interval and 10x reset time as timeout period.
	 */
	ret = regmap_read_poll_timeout(st->map, INV_ICM42607_REG_INT_STATUS,
				       val, val & INV_ICM42607_INT_STATUS_RESET_DONE,
				       1 * USEC_PER_MSEC, 10 * USEC_PER_MSEC);

And in the similar way in other fsleep() / _read_poll_timeout() cases.

> +	if (ret)
> +		return dev_err_probe(dev, ret,
> +				     "reset error, reset done bit not set\n");

-- 
With Best Regards,
Andy Shevchenko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
