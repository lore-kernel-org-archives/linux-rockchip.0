Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 06171C021AD
	for <linux-rockchip@archiver.kernel.org>; Thu, 20 Feb 2025 06:47:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3mDojPtGYpnL81g/vGoLAEXGeZvCRXEYZAZyYuGCUGg=; b=G/3nGgI01PObuQ
	yixDSz3eRugAAcI3ge9lHlab4d5ert9MNlgQUGATyeyYyUCn6cP2era6d812dlmA6EXHFt0SBNimM
	y1F+yN2BQ87osZAoAI46KbDS8wVu3rAgyZFqc2BsnIUd+Eznh/0urAN6vmg97zovJ5Q8FfZbQQBKR
	FTKRUL00g5HnpLPF3kQG1R0TR9welbb+cHX9EC81yxHrbeqDr682Fw1LSeNudvSmahT/ymtIooU3/
	2YUjZoBcWJIj7yIy/HUJs190m2FkMol0WKhJYQpaYGu+mwE01IHGm2t6XjXBf6Ijk57Z6eVlKF5zx
	LeS2s2uO1IGJXy6YRsRg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tl0Kz-0000000H0JD-29Aq;
	Thu, 20 Feb 2025 06:47:09 +0000
Received: from mgamail.intel.com ([198.175.65.13])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tl0Kw-0000000H0ID-33Nq
	for linux-rockchip@lists.infradead.org;
	Thu, 20 Feb 2025 06:47:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1740034027; x=1771570027;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=sz5jR86VPN0LnfqC8pO9xIZNgJwCjM9li9CUL9Seri4=;
  b=FGjZFgR0rl57GM9+O7kGrQ3RIlzG9bl9OQpkbKqrx0Mm29FkZjnzfImM
   jMUkPKWLc5unNUO75Cm+Hv6yWZW97/dfuqeKHlNjpvhb3fmasM4E8GCoA
   Bjt6yF2LoPum6xG3pMZ1fLxQLu8T43U+cy/y6ezuD+Yr2CtC/m0/fqKOs
   cTHe05tKzjc7HUCc7Fvai37ySli+tbURdjutYFSwh/fuk46THU1eXanHj
   iTLw4yJl2ZCDXWgTNv9pYyhO7DvVz67hWrDF+hvHJLC1yIQ+sPOzISxZV
   uq07ZXJuiewSyvpoHUrytWaJkRZ1VP5wdeuDvFDMtnNUzcpc1cqxnyaAl
   A==;
X-CSE-ConnectionGUID: dMZDdhEDS/G9XHwbwBF9OA==
X-CSE-MsgGUID: flagXebcSwSadf+/8Je8yA==
X-IronPort-AV: E=McAfee;i="6700,10204,11350"; a="51780835"
X-IronPort-AV: E=Sophos;i="6.13,300,1732608000"; 
   d="scan'208";a="51780835"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
  by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 19 Feb 2025 22:47:04 -0800
X-CSE-ConnectionGUID: F8Q7viy6Tp+1bNTkdIFMnA==
X-CSE-MsgGUID: xsogVkfSQpqSNqwkeGJu/w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,300,1732608000"; 
   d="scan'208";a="119891877"
Received: from lkp-server02.sh.intel.com (HELO 76cde6cc1f07) ([10.239.97.151])
  by orviesa003.jf.intel.com with ESMTP; 19 Feb 2025 22:47:01 -0800
Received: from kbuild by 76cde6cc1f07 with local (Exim 4.96)
	(envelope-from <lkp@intel.com>)
	id 1tl0Kn-0003xf-0V;
	Thu, 20 Feb 2025 06:46:57 +0000
Date: Thu, 20 Feb 2025 14:46:51 +0800
From: kernel test robot <lkp@intel.com>
To: Shawn Lin <shawn.lin@rock-chips.com>,
	Ulf Hansson <ulf.hansson@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>,
	"Rafael J . Wysocki" <rafael@kernel.org>
Cc: oe-kbuild-all@lists.linux.dev, linux-rockchip@lists.infradead.org,
	linux-pm@vger.kernel.org, Shawn Lin <shawn.lin@rock-chips.com>,
	Steven Price <steven.price@arm.com>
Subject: Re: [PATCH] pmdomain: rockchip: Check if smcc could be handled by TA
Message-ID: <202502201459.wqX8VWY9-lkp@intel.com>
References: <1739926689-151827-1-git-send-email-shawn.lin@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1739926689-151827-1-git-send-email-shawn.lin@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250219_224706_803924_E702F749 
X-CRM114-Status: GOOD (  11.96  )
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

Hi Shawn,

kernel test robot noticed the following build errors:

[auto build test ERROR on next-20250218]
[cannot apply to v6.14-rc3 v6.14-rc2 v6.14-rc1 linus/master v6.14-rc3]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Shawn-Lin/pmdomain-rockchip-Check-if-smcc-could-be-handled-by-TA/20250219-122924
base:   next-20250218
patch link:    https://lore.kernel.org/r/1739926689-151827-1-git-send-email-shawn.lin%40rock-chips.com
patch subject: [PATCH] pmdomain: rockchip: Check if smcc could be handled by TA
config: x86_64-buildonly-randconfig-005-20250220 (https://download.01.org/0day-ci/archive/20250220/202502201459.wqX8VWY9-lkp@intel.com/config)
compiler: gcc-12 (Debian 12.2.0-14) 12.2.0
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20250220/202502201459.wqX8VWY9-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202502201459.wqX8VWY9-lkp@intel.com/

All errors (new ones prefixed by >>):

   ld: drivers/pmdomain/rockchip/pm-domains.o: in function `rockchip_pd_power':
>> pm-domains.c:(.text+0x3bad): undefined reference to `arm_smccc_1_1_get_conduit'

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
