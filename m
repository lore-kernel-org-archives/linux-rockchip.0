Return-Path: <SRS0=0DM3=MO=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.7 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7D657C63793
	for <linux-rockchip@archiver.kernel.org>; Thu, 22 Jul 2021 15:42:39 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 518F5610D2
	for <linux-rockchip@archiver.kernel.org>; Thu, 22 Jul 2021 15:42:39 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 518F5610D2
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+C6iaUpYfiYV3NqNm0jTdLTL4GyDVpFe08UgQbuCaeU=; b=ASe15xlo6mJFXJ
	enZsM/aBpjVt13E4Os1DckDK2CX8+vPVbRvw9BdGr+XylUx5afEf2HUyIntPIkn4UzA20i789/He4
	qkcQlwU181PlmGCw+HGPxYJTSMzEr5/SO6kMcFYjsaXYvpoZJiV2+3AOmVLM+FeUAGVr+qnrtCAkd
	ELU47pHR7QjabOKdTnOh9BPmkCdSWzcYMosKolxkocYEe+LrJLP4HADwFLhF9QjvANzeRVqMQVB/+
	FdN1Kn0jmUOOsEfClyAQDJRG6n4VaQBZZjIdZ5cnTnMiMSRMhFszbIjParfbyFciU0Zl3vxFqx54D
	EkKkshvq24qYirptH41w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m6aqK-0020mA-2V; Thu, 22 Jul 2021 15:42:36 +0000
Received: from mga06.intel.com ([134.134.136.31])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m6aq7-0020ku-QL; Thu, 22 Jul 2021 15:42:25 +0000
X-IronPort-AV: E=McAfee;i="6200,9189,10053"; a="272788299"
X-IronPort-AV: E=Sophos;i="5.84,261,1620716400"; d="scan'208";a="272788299"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jul 2021 08:42:23 -0700
X-IronPort-AV: E=Sophos;i="5.84,261,1620716400"; d="scan'208";a="433170406"
Received: from smile.fi.intel.com (HELO smile) ([10.237.68.40])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jul 2021 08:42:20 -0700
Received: from andy by smile with local (Exim 4.94.2)
 (envelope-from <andy.shevchenko@gmail.com>)
 id 1m6apx-00H1rQ-GS; Thu, 22 Jul 2021 18:42:13 +0300
Date: Thu, 22 Jul 2021 18:42:13 +0300
From: Andy Shevchenko <andy.shevchenko@gmail.com>
To: Liu Ying <victor.liu@nxp.com>
Cc: Heiko Stuebner <heiko@sntech.de>, Elaine Zhang <zhangqing@rock-chips.com>,
 Stephen Boyd <sboyd@kernel.org>, linux-kernel@vger.kernel.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org,
 Michael Turquette <mturquette@baylibre.com>,
 NXP Linux Team <linux-imx@nxp.com>, Jacky Bai <ping.bai@nxp.com>
Subject: Re: [PATCH v2 2/3] clk: fractional-divider: Introduce NO_PRESCALER
 flag
Message-ID: <YPmR1Sq1x1YtScl0@smile.fi.intel.com>
References: <20210716133448.24890-1-andriy.shevchenko@linux.intel.com>
 <20210716133448.24890-2-andriy.shevchenko@linux.intel.com>
 <9117e5212a3b743ca541918ec2b701c159ac752c.camel@nxp.com>
 <CAHp75Vdm8nO-zT0vyKcB1hOXkR7_2RY-2P_fnkjV5BCc+uoqXQ@mail.gmail.com>
 <08ca856c013aba60e686f050e06a6e3179de6030.camel@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <08ca856c013aba60e686f050e06a6e3179de6030.camel@nxp.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210722_084223_939523_E8A6161A 
X-CRM114-Status: GOOD (  28.35  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

On Thu, Jul 22, 2021 at 05:43:49PM +0800, Liu Ying wrote:
> On Thu, 2021-07-22 at 12:38 +0300, Andy Shevchenko wrote:
> > On Thu, Jul 22, 2021 at 12:33 PM Liu Ying <victor.liu@nxp.com> wrote:
> > > On Fri, 2021-07-16 at 16:34 +0300, Andy Shevchenko wrote:
> > > > The newly introduced flag, when set, makes the flow to skip
> > > > the assumption that the caller will use an additional 2^scale
> > > > prescaler to get the desired clock rate.
> > > 
> > > As I mentioned in v1 comment, it seems to be good to decouple the
> > > prescaler knowledge from this common fractional divider clk driver.
> > > This way, we'll make it simpler and easier to maintain. Also, then, the
> > > NO_PRESCALER flag is not needed at all.  However, it seems that two
> > > Intel drivers which use the frational divider drivers will be affected
> > > and rate negotiation logics need to be implemented for them.  Please
> > > consider if it's doable or not.
> > 
> > The current driver works for the certain hardware without this change.
> > If you think it's better, submit a proposal we will discuss.
> 
> Well, I'm not afford to do so. Just share an idea. I haven't got the
> intel HW to test.  As I mentioned in v1 comment, it seems that you have
> experience on relevent drivers and HW to test, may I encourage you to
> do that :-) Or forget that if you really think you won't do that.

Noted. I am in support of this idea, and will help with testing on Intel HW
if anyone submits the code.

> > > If we ultimately keep the prescaler knowledge here, please consider to
> > > add the NO_PRESCALER flag for i.MX7ulp as it hasn't the prescaler IIUC.
> > 
> > You mean there is a code which is currently using this driver w/o
> > taking into account this prescaller flavour? Can you, please, point
> > out, I'll definitely update it. Thanks for the catch!
> 
> drivers/clk/imx/clk-composite-7ulp.c

Thanks, I'll update in v3. Can you, please, look the other patch(es)?

-- 
With Best Regards,
Andy Shevchenko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
