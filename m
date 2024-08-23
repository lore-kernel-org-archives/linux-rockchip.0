Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C8201C531DC
	for <linux-rockchip@archiver.kernel.org>; Fri, 23 Aug 2024 14:49:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Sq96N2676K2mDWg97NXdls/7kVnJc12d0dffGqt+dEA=; b=DZIN4fhOE725QR
	K0b+Dq7j4fwdxQPGwKxoWJWJ5q7IeLksPRS+4v+QpsmNF3IYraLvfjYJMZSimoHpJqhSONtSeGxF1
	HaYVSeJ5Ln0AjMypR/McqyPO8K7mNB6f93AIbIBCAHAG9IGRQcAK8xBHcCVcZ/7Ar/ZExghilYSRe
	WHKLln2IoEwB7/37Tq+SgefwESWOcAySLByXeozlLrg64dN2KKnWyq+A548K9xjOPYv6/TLg5Kfyx
	+thsiV/AzyYzYf0cfbq3jaBgBtgCBjSqpT50rKOdHXQEpl66fIzn/iIf4sEKaF5QkxpkX9GPQJCfR
	rHFnup1H84igxKJaB4yQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1shVb2-0000000HAM2-37tU;
	Fri, 23 Aug 2024 14:49:00 +0000
Received: from mgamail.intel.com ([198.175.65.17])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1shVaF-0000000HAAj-3qKf;
	Fri, 23 Aug 2024 14:48:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1724424492; x=1755960492;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=oRK6C/+tY1XXLhNr5QfIgOfUkuRNl5VuJiB4P1b7u8E=;
  b=KaKYicXBjqZmg2i9Doh2acJ/CxDN1SmIGsF8DTZDGuJ2AOGAogVkvWn/
   5bIGWEKm73QiMHVE3Hf8G643HIfZoyOmMcV/LAtNpS0w99WFSKcBMufNP
   2hQjs0347xTlbjW8n2q9nJ7taaN5x0nW/rsdXw3cMR2t5bNutnmnElBlj
   NTCrxD0HtpHrJJ4ZVX1LFwwChjXdcndT1bPUtpuaruhvFUB3HDqJLqpZl
   paC8nf+UqpqhZXbe6crPmjd8eLWgPQiMH8aSUE3ZEn3OwI8ZeWHQS961H
   9Sa32vBWlOXuSVzfZDH8syMxsHH6zwtl8dTsILuRftXUA4I3Bv7m06ofl
   w==;
X-CSE-ConnectionGUID: ZKVwRPraRGmWA7QBszQTBw==
X-CSE-MsgGUID: FSPp6mr9Q0SexxoA66LEJw==
X-IronPort-AV: E=McAfee;i="6700,10204,11172"; a="23065990"
X-IronPort-AV: E=Sophos;i="6.10,170,1719903600"; 
   d="scan'208";a="23065990"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
  by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 23 Aug 2024 07:48:10 -0700
X-CSE-ConnectionGUID: d/4Oulh+QpmEw0y6SEvIpg==
X-CSE-MsgGUID: o5xH+gyqTVm500thYnpgAA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,170,1719903600"; 
   d="scan'208";a="92542653"
Received: from smile.fi.intel.com ([10.237.72.54])
  by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 23 Aug 2024 07:48:06 -0700
Received: from andy by smile.fi.intel.com with local (Exim 4.98)
	(envelope-from <andriy.shevchenko@linux.intel.com>)
	id 1shVa7-00000000pED-1VXN;
	Fri, 23 Aug 2024 17:48:03 +0300
Date: Fri, 23 Aug 2024 17:48:03 +0300
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Ye Zhang <ye.zhang@rock-chips.com>
Cc: linus.walleij@linaro.org, brgl@bgdev.pl, heiko@sntech.de,
	linux-gpio@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
	mika.westerberg@linux.intel.com, tao.huang@rock-chips.com,
	finley.xiao@rock-chips.com, tim.chen@rock-chips.com,
	elaine.zhang@rock-chips.com
Subject: Re: [PATCH v2] gpio: rockchip: resolve overflow issues
Message-ID: <ZsihI71S8ep7j_Ke@smile.fi.intel.com>
References: <20240823034314.62305-1-ye.zhang@rock-chips.com>
 <20240823034314.62305-4-ye.zhang@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240823034314.62305-4-ye.zhang@rock-chips.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240823_074812_076739_CE27DEA4 
X-CRM114-Status: UNSURE (   6.61  )
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

On Fri, Aug 23, 2024 at 11:43:06AM +0800, Ye Zhang wrote:
> Prevent overflow issues when performing debounce-related calculations.

...

> -		max_debounce = (GENMASK(23, 0) + 1) * 2 * 1000000 / freq;
> +		div = (u64)(GENMASK(23, 0) + 1) * 2 * 1000000;

You probably want to use HZ_PER_MHZ from units.h or so?

-- 
With Best Regards,
Andy Shevchenko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
