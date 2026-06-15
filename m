Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 004C2CD98C5
	for <linux-rockchip@archiver.kernel.org>; Mon, 15 Jun 2026 15:07:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MmA0vuiY12EQjcLHAP2L2+9zsETMovVHjQ6eXiOW72I=; b=xxO/WUdvDTD9a0
	Bb9hC2SrY4+/A86koG3tiTvXn6FjvoBeyt4KpkP2X4bTK2plpJLUWxYdNNObZER0wlWJ6ERmjpwTN
	soUMgN1kE2EemywPYCqwalRYSLNRBjbLNYo2eBQt3u+KuVSY1nQhyoUaJYuzuXZgFmodYxjgmhSbS
	un/fQapOoMkBAag6IYWTVBPGn2LnkCGE83io1FGL4p1qCTq3gyZHWux4Wyv9UzPBa6k9M+bn47vFD
	9XQunINPfXMg+q4C9SAnxQHarhsHIyEPtbcERj4FuOL8XZ+YGeW3sUHFVeK+yuABMMvkBTOrvpPWT
	X/RQ3PXF4MP20FNp1q7A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wZ8uJ-0000000EThC-3zT4;
	Mon, 15 Jun 2026 15:07:23 +0000
Received: from mgamail.intel.com ([198.175.65.11])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wZ8uH-0000000ETgr-3CsJ
	for linux-rockchip@lists.infradead.org;
	Mon, 15 Jun 2026 15:07:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1781536042; x=1813072042;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=uiAE3DrABHH7e71lglagUwCkfeV2Wyg2fOEmzICA5SE=;
  b=T06QmcMWcJZL0aZjyj9VpY+Ji4qyln77U+hSmm29oWdtVZA36KYmx/IB
   4HdTRc3DAVwsKUvuWk6Z0BMTtMgEr9mepJ6XRDQDqDZKKQ4J/g3IBDaJD
   MWWv5xz13xjErLVj2kSjlInnWgyqF/VcgV9CNh9kCjVR7BPUpRuSq/9ty
   1kV4nKtnG47mC6MqwLlOD5B8vg2ZViHYGhcs1bDnX+jFgEg4ixrx7YzMn
   lGMqo6MoqcLHegp5S2FU2LDOB1G/ouetdxvn2J49bga865lU8GJYMDCKa
   gydtBX3fdErtNn8a0tva/oK/i55OEX1AhPM0410IQoLI6gjPX7y+W4sPr
   w==;
X-CSE-ConnectionGUID: STgctViaS06jE5qtCxeb3g==
X-CSE-MsgGUID: +GomxA/4QkKYXEYXHghYyw==
X-IronPort-AV: E=McAfee;i="6800,10657,11818"; a="92597635"
X-IronPort-AV: E=Sophos;i="6.24,206,1774335600"; 
   d="scan'208";a="92597635"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
  by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 15 Jun 2026 08:07:21 -0700
X-CSE-ConnectionGUID: N+PeBC7IS4OdlpDxJ9qoew==
X-CSE-MsgGUID: 0GUukcqfSAm6WeP+JN9jUA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,206,1774335600"; 
   d="scan'208";a="285607289"
Received: from ettammin-mobl3.ger.corp.intel.com (HELO localhost) ([10.245.245.235])
  by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 15 Jun 2026 08:07:17 -0700
Date: Mon, 15 Jun 2026 18:07:15 +0300
From: Andy Shevchenko <andriy.shevchenko@intel.com>
To: Chris Morgan <macromorgan@hotmail.com>
Cc: Chris Morgan <macroalpha82@gmail.com>, linux-iio@vger.kernel.org,
	andy@kernel.org, nuno.sa@analog.com, dlechner@baylibre.com,
	jic23@kernel.org, jean-baptiste.maneyrol@tdk.com,
	linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
	heiko@sntech.de, conor+dt@kernel.org, krzk+dt@kernel.org,
	robh@kernel.org
Subject: Re: [PATCH V12 7/9] iio: imu: inv_icm42607: Add Accelerometer for
 icm42607
Message-ID: <ajAVI0KXkx3FM1ZX@ashevche-desk.local>
References: <20260611202607.85376-1-macroalpha82@gmail.com>
 <20260611202607.85376-8-macroalpha82@gmail.com>
 <ai_gIR2d9fzHLZ-G@ashevche-desk.local>
 <PH0PR19MB997338010EC6FA92E0AA63875FA5E62@PH0PR19MB997338.namprd19.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <PH0PR19MB997338010EC6FA92E0AA63875FA5E62@PH0PR19MB997338.namprd19.prod.outlook.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs, Bertel Jungin Aukio 5, 02600 Espoo
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260615_080721_895770_D59E65D1 
X-CRM114-Status: GOOD (  18.92  )
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

On Mon, Jun 15, 2026 at 09:51:40AM -0500, Chris Morgan wrote:
> On Mon, Jun 15, 2026 at 02:21:05PM +0300, Andy Shevchenko wrote:
> > On Thu, Jun 11, 2026 at 03:26:04PM -0500, Chris Morgan wrote:

...

> > Please, please, use IWYU! So many headers are missing...
> > (Same comment to all files in this series.)
> > 
> > + array_size.h
> > + bits.h // BIT()
> > + cleanup.h // guard()()
> > + device/devres.h // devm_kasprintf()
> > + err.h // -EINVAL, IS_ERR()
> > 
> > > +#include <linux/iio/iio.h>
> > > +#include <linux/mutex.h>
> > > +#include <linux/pm_runtime.h>
> > > +#include <linux/regmap.h>
> > 
> > + types.h // s16, __be16
> > 
> > Also you need to have
> > 
> > asm/byteorder.h // be16_to_cpup()
> 
> How are you running IWYU against the builds? So far I've tried but I
> can't seem to get it to run properly. 

Sorry, I meant "use IWYU principle". I don't run the tool, I just looked into
the code.

...

> > > +	for (i = 5; i < ARRAY_SIZE(inv_icm42607_accel_odr); ++i) {
> > 
> > Why pre-increment? Same for all other cases.
> 
> The register starts at 5 and all values below 5 are invalid. Starting
> this increment at 5 ensures we don't expose invalid values to
> userspace.

It doesn't explain pre-increment. Post-increment should work as is.

> > > +		if (i == odr)
> > > +			break;
> > > +	}

-- 
With Best Regards,
Andy Shevchenko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
