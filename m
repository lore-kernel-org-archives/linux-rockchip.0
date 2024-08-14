Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4E920C3DA4A
	for <linux-rockchip@archiver.kernel.org>; Wed, 14 Aug 2024 12:57:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AZGPXmq9ljT8ENOygMMxyIwK2cue7Moyo6V8zCYyBXY=; b=TzVzB4aLoR1GyL
	MvQ5GkpdSnmAL/5TCx/YMJ07g2xD5VZwNcw9CyIW0+uoPZnsUrZSKKaXyUrjbuFuf//T9qTJ9aw9e
	jJqhUwPq91Tm+Un7n1kXZoSByvlCAM/Vb909+MaJIfxyhRHTDoUIAw4kVhkJ20k4m5OifKWquLHwk
	XN7DBDBcVciZL/HUrS+68eUxJbOh8wd+73r8Cf5tHUaqAk6OG3cA7CO0ilPDpUvlgVu6tRk14VE8U
	rZ4sLeuf03iIVVeDj6xx+V1rrbAUGhtmeIUfBxX8iPGjQzTJdvL4AKAwp4J5XCBSuzTBC3qUBLjc7
	qZefI10fnxBNffCO2F0w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1seDZV-0000000716l-3yPV;
	Wed, 14 Aug 2024 12:57:49 +0000
Received: from mgamail.intel.com ([192.198.163.17])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1seDXk-000000070gP-2uTQ;
	Wed, 14 Aug 2024 12:56:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1723640161; x=1755176161;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=KqRnxgjYWajhIUPo+HXdCS6BLSaBY1bMw/iNKPudTQQ=;
  b=ByzoI4Fs+OUPHwuDOP1IFvArZErlXw2xjrF5gl3eBMrt0y93xyasKuEY
   +txVtr1tmZd+SU8O7khwxAhd6yqgtwaH7g5WosBvAIEGnMCpJj+DGWHlm
   n7Kk1+C87LLJtmrrVnhOIfZYNmqWUyI63+PRPruL2lCWNVEXT49ByJ8vz
   +VbOWRRpgIwKtvybrb5lVEUygmgcZ1VPcg5nR0ZjaNiMtR7z6u5C4hPNu
   9zwZZkCeVC4vfvOp8qYK++d68P6/3ikNdXRCRTnYFRluGKRLTkbTUfFo2
   ogKf6aNmnqtgj6IiIpaBsqNrzi1yGbgvij/SfTCt7YvDzKf4abi7GfnS/
   w==;
X-CSE-ConnectionGUID: gnT0G1XiSsWgkcbU/izKsA==
X-CSE-MsgGUID: GvLdoebiRBaTldV1J9Nzhg==
X-IronPort-AV: E=McAfee;i="6700,10204,11164"; a="21725301"
X-IronPort-AV: E=Sophos;i="6.10,145,1719903600"; 
   d="scan'208";a="21725301"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
  by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 14 Aug 2024 05:56:00 -0700
X-CSE-ConnectionGUID: jLMItZHBQeaIFjD2BpAPlg==
X-CSE-MsgGUID: k3SJaDUqS9ql6Jm0wEayyw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,145,1719903600"; 
   d="scan'208";a="58969860"
Received: from smile.fi.intel.com ([10.237.72.54])
  by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 14 Aug 2024 05:55:57 -0700
Received: from andy by smile.fi.intel.com with local (Exim 4.98)
	(envelope-from <andriy.shevchenko@linux.intel.com>)
	id 1seDXd-0000000FBQD-1z8u;
	Wed, 14 Aug 2024 15:55:53 +0300
Date: Wed, 14 Aug 2024 15:55:53 +0300
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Stephen Boyd <sboyd@kernel.org>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Sam Protsenko <semen.protsenko@linaro.org>,
	linux-arm-kernel@lists.infradead.org, linux-clk@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org,
	Michael Turquette <mturquette@baylibre.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Krzysztof Kozlowski <krzk@kernel.org>,
	Sylwester Nawrocki <s.nawrocki@samsung.com>,
	Chanwoo Choi <cw00.choi@samsung.com>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	Nobuhiro Iwamatsu <nobuhiro1.iwamatsu@toshiba.co.jp>
Subject: Re: [PATCH v1 0/4] clk: Switch to use kmemdup_array()
Message-ID: <ZrypWaon4yIdzyx1@smile.fi.intel.com>
References: <20240606161028.2986587-1-andriy.shevchenko@linux.intel.com>
 <ZrsbXMVy1Dsi4UZe@smile.fi.intel.com>
 <2478bc8a787d07cd3e412b6ee4400669.sboyd@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <2478bc8a787d07cd3e412b6ee4400669.sboyd@kernel.org>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240814_055600_766149_2F8DF567 
X-CRM114-Status: GOOD (  10.88  )
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

On Tue, Aug 13, 2024 at 05:01:50PM -0700, Stephen Boyd wrote:
> Quoting Andy Shevchenko (2024-08-13 01:37:48)
> > On Thu, Jun 06, 2024 at 07:09:30PM +0300, Andy Shevchenko wrote:

...

> > >   clk: mmp: Switch to use kmemdup_array()
> > 
> > >   clk: visconti: Switch to use kmemdup_array()
> 
> I have them all as "changes requested" so please resend.

Done (Message-Id: 20240814125513.2637955-1-andriy.shevchenko@linux.intel.com).

-- 
With Best Regards,
Andy Shevchenko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
