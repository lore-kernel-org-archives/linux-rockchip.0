Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AD841CDB483
	for <linux-rockchip@archiver.kernel.org>; Thu, 19 Oct 2023 09:02:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CMGyVG+mHshpZ+wtqKjWj6JebvvniusR9/K5pQPfzJ8=; b=l6cmjIkJC98vXn
	utp/KUyjwTWKoMDqbOoqwX7TIj0BIFICir1kxlQ5xQXW0dhk2K0oqSpwkLtri4ISEgh11GVbWwH2Y
	F1mv4xDg3VICtZEsLItApS61XcyqQYK/HZ8Ey+Hr4vidmAJWyAXDiJJ1uH1WmhPHhDrSrg1Q29YDW
	zzVYZmANOybKWDhIVwT72RZdQ/O8By460YMF9M2mOW2u0Pm9St/bMLs/JWhrSratEiMh0zpLyDbYx
	LvGIOg+tI6KOG0dbBlwHXa+QS1G1WMAdwL2q/trFB+vu4VLFC6PPs6xNJLe14sNe2ZQSxeeYV9Oa/
	Q0Sw2qXNyExBPAzE+jIA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qtOv8-00GnGq-2H;
	Thu, 19 Oct 2023 09:02:22 +0000
Received: from mgamail.intel.com ([134.134.136.20])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qtOv5-00GnFB-1H
	for linux-rockchip@lists.infradead.org;
	Thu, 19 Oct 2023 09:02:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1697706139; x=1729242139;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=7OJYdqYOD8lX5YNcB8Q0tNTWtA+af94+w9wd2sUUe3A=;
  b=cfUczExoFT48JNm828fNZL0n3KW0EGHAgFhwuwGfzZZWW2bybemrALGR
   p5m71o3lk7fyl9Z8ZX+V+cZV2wn6YxtJFxm6E46/1d9wf2+KNK/N13xB2
   QRdS3LG3LX7mA0M/S4esUyjd6pT9m8gSXxl/O0+AnD0KcqzpJlr7Tvfnj
   aYNoMXz6O/vktWzJcTVm5BCzdTfhFOevikO0qL9PS0BcXqahLSuqJutLA
   9EIH0yLwDWhCDsDeb8n9EEyRQAflMaVsQzUUliq2z4/AEMsitSvPj8woU
   wXRAuiZ7/CnU9zqfhgWZksjlHHMATDx6CE/G24zLEMUph16UcLkVv/tTW
   w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10867"; a="376581656"
X-IronPort-AV: E=Sophos;i="6.03,236,1694761200"; 
   d="scan'208";a="376581656"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
  by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 19 Oct 2023 02:01:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10867"; a="750446366"
X-IronPort-AV: E=Sophos;i="6.03,236,1694761200"; 
   d="scan'208";a="750446366"
Received: from lkp-server01.sh.intel.com (HELO 8917679a5d3e) ([10.239.97.150])
  by orsmga007.jf.intel.com with ESMTP; 19 Oct 2023 02:01:02 -0700
Received: from kbuild by 8917679a5d3e with local (Exim 4.96)
	(envelope-from <lkp@intel.com>)
	id 1qtOto-0001tg-0K;
	Thu, 19 Oct 2023 09:01:00 +0000
Date: Thu, 19 Oct 2023 17:00:30 +0800
From: kernel test robot <lkp@intel.com>
To: Sascha Hauer <s.hauer@pengutronix.de>,
	linux-rockchip@lists.infradead.org
Cc: oe-kbuild-all@lists.linux.dev
Subject: Re: [PATCH] PM / devfreq: rockchip-dfi: Add perf support
Message-ID: <202310191638.953yyS7D-lkp@intel.com>
References: <20231019064819.3496740-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20231019064819.3496740-1-s.hauer@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231019_020219_477356_F7DF9F2E 
X-CRM114-Status: GOOD (  10.85  )
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

Hi Sascha,

kernel test robot noticed the following build warnings:



url:    https://github.com/intel-lab-lkp/linux/commits/UPDATE-20231019-145026/Sascha-Hauer/PM-devfreq-rockchip-dfi-Make-pmu-regmap-mandatory/20231018-142228
base:   the 16th patch of https://lore.kernel.org/r/20231018061714.3553817-17-s.hauer%40pengutronix.de
patch link:    https://lore.kernel.org/r/20231019064819.3496740-1-s.hauer%40pengutronix.de
patch subject: [PATCH] PM / devfreq: rockchip-dfi: Add perf support
reproduce: (https://download.01.org/0day-ci/archive/20231019/202310191638.953yyS7D-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202310191638.953yyS7D-lkp@intel.com/

# many are suggestions rather than must-fix

WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#219: FILE: drivers/devfreq/event/rockchip-dfi.c:332:
+#define DFI_ATTR_MB(_name) ^I^I\$

ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#219: FILE: drivers/devfreq/event/rockchip-dfi.c:332:
+#define DFI_ATTR_MB(_name) 		\
+	&_name.attr.attr,		\
+	&_name##_unit.attr.attr,	\
+	&_name##_scale.attr.attr

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
