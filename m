Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B9033F531F8
	for <linux-rockchip@archiver.kernel.org>; Tue, 14 Apr 2026 07:15:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=94rOBzH/ahyCoLT15fA1jGT2xfwh2UiGVuB7Uv/Diro=; b=5AW845qQYV4oDh
	jgNmdZL5h+rCVRtVXeMCbJoQsLS7VbgiWMbn+TPVO8VSvN4S6jOSZSxEoW2DYHssYwBHrvxkcoLER
	2rVcf53T2yaEX7HfpRf/TzMyxki0gpKlgAQ3StSqIPkGjYJjCDM54QsUMN0ZEnSOmYO53ROU6esbk
	xDOber8y2ADm4wnq5CSYMN5kEn+wZLVlyqntQi8I0v/tHodsbqeiWjcGVufumVzmkmxDd5rw8egKz
	mFzr7SR+dR+ozqa7UjH3mdZV6wldtlCU8DtWml6zX20pZKg0gJzjUimdVEFAHT+52owRadl862moe
	XU0FWKzN5np6vWAX8EwA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCXzG-0000000GtSM-29ys;
	Tue, 14 Apr 2026 07:15:06 +0000
Received: from mgamail.intel.com ([198.175.65.17])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCXzD-0000000GtRy-1xhB
	for linux-rockchip@lists.infradead.org;
	Tue, 14 Apr 2026 07:15:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1776150903; x=1807686903;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=Lg6AwNi+noSUdU7+/Bf+YozYCr81gUXl7BqaU3aWAN0=;
  b=RQBl5wRDa+GNe2NJvOGMwJKMMezBERGqLTn3LtORCzNE5T5gu8K8I6Bi
   c29YmPKW9Awmo925Z6IpoE5hJe6R9UUNErOUAa5ZMJRV5eKqvIBUn/xpN
   LdfjrD9NCedHG6CQVRCZqUUEDjCINK41Nah9L/0r7Sp/uDWmWOOYJ+O3i
   YQNRIMucfdqc52tkLITdywz+dINSpnD+CA//sVo8cL2NnRORQtnzr7Ntp
   1SFcimCrch1ZsqK8uTsTcojIDRJ6mXj/xXLZWkaX2XsI57Ziv18Cmx3Ia
   t9eqtaQVYV6/3yU7+vVujy4BePgBhKkabeLS77IW8O/PkvinG+qDs9wIO
   w==;
X-CSE-ConnectionGUID: YN9/gcIBQsqu4mRxUAd7Nw==
X-CSE-MsgGUID: nuVAZrYHQQK6oI96ZdgfXQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11758"; a="77067197"
X-IronPort-AV: E=Sophos;i="6.23,179,1770624000"; 
   d="scan'208";a="77067197"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
  by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 14 Apr 2026 00:14:54 -0700
X-CSE-ConnectionGUID: k0LRaNlaREeB2+gZACKSMQ==
X-CSE-MsgGUID: i0BwJHQ1TDS7NUgpXv2jTQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,179,1770624000"; 
   d="scan'208";a="225285049"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO localhost) ([10.245.245.106])
  by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 14 Apr 2026 00:14:51 -0700
Date: Tue, 14 Apr 2026 10:14:48 +0300
From: Andy Shevchenko <andriy.shevchenko@intel.com>
To: Jonathan Cameron <jic23@kernel.org>
Cc: Chris Morgan <macroalpha82@gmail.com>, linux-iio@vger.kernel.org,
	andy@kernel.org, nuno.sa@analog.com, dlechner@baylibre.com,
	jean-baptiste.maneyrol@tdk.com, linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org, heiko@sntech.de, conor+dt@kernel.org,
	krzk+dt@kernel.org, robh@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: Re: [PATCH V3 2/9] iio: imu: inv_icm42607: Add Core for inv_icm42607
 Driver
Message-ID: <ad3paMbRXtq6BrCu@ashevche-desk.local>
References: <20260330195853.392877-1-macroalpha82@gmail.com>
 <20260330195853.392877-3-macroalpha82@gmail.com>
 <20260413200547.75bfd672@jic23-huawei>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260413200547.75bfd672@jic23-huawei>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs, Bertel Jungin Aukio 5, 02600 Espoo
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260414_001503_643672_85F8D77D 
X-CRM114-Status: UNSURE (   7.43  )
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

On Mon, Apr 13, 2026 at 08:06:54PM +0100, Jonathan Cameron wrote:
> On Mon, 30 Mar 2026 14:58:46 -0500
> Chris Morgan <macroalpha82@gmail.com> wrote:

...

> > +	if (!conf->temp_en)
> > +		val |= INV_ICM42607_PWR_MGMT0_ACCEL_LP_CLK_SEL;
> 
> Could make this 
> 	val |= FIELD_PREP(INV_ICM42607_PWR_MGMT0_ACCEL_LP_CLK_SEL,
> 			  !conf->temp_en);
> Not particularly important though if you prefer the if.

Isn't this becomes FIELD_MODIFY()?

-- 
With Best Regards,
Andy Shevchenko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
