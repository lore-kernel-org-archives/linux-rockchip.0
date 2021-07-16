Return-Path: <SRS0=kwzO=MI=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.7 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1311C12002
	for <linux-rockchip@archiver.kernel.org>; Fri, 16 Jul 2021 13:10:22 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 78C8C60C41
	for <linux-rockchip@archiver.kernel.org>; Fri, 16 Jul 2021 13:10:22 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 78C8C60C41
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lEIlRPqYj6DE/8b+4xhgjy8o0+1OjONCTADPrxqptE8=; b=ljaKSEvifoqc3F
	1VkROuw5JR8EDX+mpztSiTsTZRZFPfMs0rxt3x9YuZnMy+3OjoNGUIAaEt2BXbOpCxVWxRrq459+V
	cFaBnUoVeElDSKxd+ojDPHwKQ5DehpYH0vtXM+iQyzqxeeFxBTLcv1wjNczeC6FRg5qrjy6lMPO7F
	ebazcZ1SbjNhMU6i6RF3SI7XF6+3P6FLoPLDNXeIadAp+EousSQUn1Hjqu9eOhvL7TuR3oODWYOLj
	FbWBIOevK9OyVacUPkSGcMhJm5IMOzk6SxAWR2B46bSli34rnGmxgNCHF/rXRhLLgPF8Dlv8bUKNU
	RbD0kdgT8q0Q2P8b3/7w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m4Nbe-004Qb9-TG; Fri, 16 Jul 2021 13:10:18 +0000
Received: from mga11.intel.com ([192.55.52.93])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m4NbR-004Qa4-1S; Fri, 16 Jul 2021 13:10:07 +0000
X-IronPort-AV: E=McAfee;i="6200,9189,10046"; a="207703219"
X-IronPort-AV: E=Sophos;i="5.84,245,1620716400"; d="scan'208";a="207703219"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jul 2021 06:10:03 -0700
X-IronPort-AV: E=Sophos;i="5.84,245,1620716400"; d="scan'208";a="413974663"
Received: from smile.fi.intel.com (HELO smile) ([10.237.68.40])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jul 2021 06:09:59 -0700
Received: from andy by smile with local (Exim 4.94.2)
 (envelope-from <andy.shevchenko@gmail.com>)
 id 1m4NbE-00EEct-3X; Fri, 16 Jul 2021 16:09:52 +0300
Date: Fri, 16 Jul 2021 16:09:52 +0300
From: Andy Shevchenko <andy.shevchenko@gmail.com>
To: Robin Murphy <robin.murphy@arm.com>
Cc: kernel test robot <lkp@intel.com>, Heiko Stuebner <heiko@sntech.de>,
 Elaine Zhang <zhangqing@rock-chips.com>,
 Stephen Boyd <sboyd@kernel.org>, linux-kernel@vger.kernel.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, kbuild-all@lists.01.org,
 Michael Turquette <mturquette@baylibre.com>
Subject: Re: [PATCH v1 1/3] clk: fractional-divider: Export approximation
 algo to the CCF users
Message-ID: <YPGFIAiRijr1OMZ2@smile.fi.intel.com>
References: <20210715120752.29174-1-andriy.shevchenko@linux.intel.com>
 <202107152356.7gQSC0vc-lkp@intel.com>
 <CAHp75VcxP6QSoATProqjqJ_kmjXr4FfjijohCyumrw_gmj904w@mail.gmail.com>
 <9e1c1fde-fbbc-69d4-9273-192844037cd8@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <9e1c1fde-fbbc-69d4-9273-192844037cd8@arm.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210716_061005_147041_029BD48E 
X-CRM114-Status: GOOD (  18.65  )
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

On Thu, Jul 15, 2021 at 06:58:40PM +0100, Robin Murphy wrote:
> On 2021-07-15 17:51, Andy Shevchenko wrote:
> > On Thu, Jul 15, 2021 at 7:49 PM kernel test robot <lkp@intel.com> wrote:
> > > I love your patch! Yet something to improve:
> > 
> > Definitely!
> > 
> > > All errors (new ones prefixed by >>):
> > > 
> > > > > drivers/clk/rockchip/clk.c:27:10: fatal error: clk-fractional-divider.h: No such file or directory
> > >        27 | #include "clk-fractional-divider.h"
> > >           |          ^~~~~~~~~~~~~~~~~~~~~~~~~~
> > >     compilation terminated.
> > 
> > Indeed. No idea how to compile-test this on x86.
> > Let me see what I can do to avoid other issues.
> 
> Ha, the individual SoC-specific parts have COMPILE_TEST support, but the
> top-level COMMON_CLK_ROCKCHIP doesn't. That could probably be fixed.
> 
> Otherwise, you can always grab a toolchain from [1] (if your distro doesn't
> offer one already) and cross-compile - defconfig for arm64 or
> multi_v7_defconfig for arm should cover it.

With a hack patch I was able to compile-test.

-- 
With Best Regards,
Andy Shevchenko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
