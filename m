Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DCDB4C43458
	for <linux-rockchip@archiver.kernel.org>; Tue, 14 Jul 2026 10:57:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EoE90Vt/r8RLKvgGCNFlH8Ie/TV3LdtVXCQaDF3SbUA=; b=l8WbgbDJgN27mL
	HIK1I4tYTj/vMuv6zheGmRoBql4wIPbO+sJR7wG6jk9ayvwDqE8AmFAQUfdMtHnd6Odj20+tfZbyo
	xEpAK7GU/5ZL7/meI1peVzlIdkG1b1arZClbrG5PWlpjDw6G2hX/v1/gul48JJ516ifmZ/C4r3rjF
	smi4fmJrsKaQvwKzaJcD24KRLIuiFL5zjGIdA+HMqB760khkEzq1KcS5XwaHJVxiJMfc7DZjhjNL4
	LKJDwPTQZl3xjd4zHFLTFOIU7FVpVH8KCc8AeJWUYqv0Kvd1ClOneJ4ukKANzSRVba9FZqdw7ndHf
	eRMAdZXeL1mYLxSVKMZQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wjap1-0000000BcvK-1Z1R;
	Tue, 14 Jul 2026 10:57:07 +0000
Received: from mgamail.intel.com ([198.175.65.20])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wjaox-0000000Bcut-3hpl
	for linux-rockchip@lists.infradead.org;
	Tue, 14 Jul 2026 10:57:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1784026624; x=1815562624;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=7p88xNr3ryyi6ibpcUgmTHu4NSvfticNGxsvwZsHU88=;
  b=NUD37idWn6B/7VqrzaZagY8udojXPz879B8tP/vWkueEgQ5uthxcOrqp
   bxD5cWiOjSB/cAN6ltB7INs39n/WAVnh73TaO+xTQF1fuGAGpxqVB+QBn
   KgQBPgkjBzCR5FzfK/Tt/9GKPcxgFusAMUrAgfFSbBnlbpAsNM/PEqhrX
   kz2lgrdkS+UDVgAqJDzDe2+pOGhL/MHzd1CRYUeRfVNdDwxXoAkczIhde
   AeBBgXTsA3vcoe2pc+dclk8OgGao61QvKRo2yihAr/TNLwP9xADykgS1E
   gvRR4ilTp1vkN3D+rWiqDS5+s86ZJ1fL0cW3RrCYExYBYPo9FnqWtA3TP
   g==;
X-CSE-ConnectionGUID: mFhsWefZRSmbzTdJIVCiyw==
X-CSE-MsgGUID: 67mGajdMR8GhmeGemLcr8A==
X-IronPort-AV: E=McAfee;i="6800,10657,11846"; a="84425309"
X-IronPort-AV: E=Sophos;i="6.25,163,1779174000"; 
   d="scan'208";a="84425309"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
  by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 14 Jul 2026 03:57:03 -0700
X-CSE-ConnectionGUID: tAp4suAZQ7W8vqWtI5sRQg==
X-CSE-MsgGUID: fOFImHORQemPAJIS0pzizw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,163,1779174000"; 
   d="scan'208";a="253202539"
Received: from kniemiec-mobl1.ger.corp.intel.com (HELO localhost) ([10.245.245.189])
  by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 14 Jul 2026 03:56:59 -0700
Date: Tue, 14 Jul 2026 13:56:57 +0300
From: Andy Shevchenko <andriy.shevchenko@intel.com>
To: Chris Morgan <macroalpha82@gmail.com>
Cc: linux-iio@vger.kernel.org, andy@kernel.org, nuno.sa@analog.com,
	dlechner@baylibre.com, jic23@kernel.org,
	jean-baptiste.maneyrol@tdk.com, linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org, heiko@sntech.de, conor+dt@kernel.org,
	krzk+dt@kernel.org, robh@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: Re: [PATCH v16 04/10] iio: imu: inv_icm42607: Add inv_icm42607 Core
 Driver
Message-ID: <alYV-QAmGViGSOSv@ashevche-desk.local>
References: <20260713215842.69097-1-macroalpha82@gmail.com>
 <20260713215842.69097-5-macroalpha82@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260713215842.69097-5-macroalpha82@gmail.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs, Bertel Jungin Aukio 5, 02600 Espoo
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260714_035703_966550_3F5C83A3 
X-CRM114-Status: UNSURE (   9.11  )
X-CRM114-Notice: Please train this message.
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

On Mon, Jul 13, 2026 at 04:58:34PM -0500, Chris Morgan wrote:

> Add the core component of a new inv_icm42607 driver. This includes
> a few setup functions and the full register definition in the
> header file, as well as the bits necessary to compile and probe the
> device when used on an i2c bus.

Reviewed-by: Andy Shevchenko <andriy.shevchenko@intel.com>

...

> +++ b/drivers/iio/imu/inv_icm42607/inv_icm42607_core.c

> +#include <linux/bitfield.h>
> +#include <linux/delay.h>
> +#include <linux/device.h>

> +#include <linux/device/devres.h>

When device.h is included, this one is not needed. Yeah, device.h is a mess,
but here we are now.

> +#include <linux/err.h>
> +#include <linux/iio/iio.h>
> +#include <linux/module.h>
> +#include <linux/mutex.h>
> +#include <linux/regmap.h>
> +#include <linux/regulator/consumer.h>
> +#include <linux/time.h>
> +#include <linux/types.h>

-- 
With Best Regards,
Andy Shevchenko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
