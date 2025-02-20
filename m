Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 17A56C021AD
	for <linux-rockchip@archiver.kernel.org>; Thu, 20 Feb 2025 06:05:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pV7rCIN9MyDcu7gjw1PBtsPziqZOHFbelfxrARecfpk=; b=zjnEjAiT1HxMBx
	YXwKdrF0MW4iD36AWrwwv/qmEFZMoj/SNwjSMTP4NeRRMeBu+6eiIoN4LvM89uBZwO3oTDMjuvXMO
	Zux/qTc1p8hYnuIiLVJ6NyW1tiJYWofM/szvMlZxe4W/sTMvPA1YmHeQ1NW0zeqQf86Cx/NLL+dNN
	Wlp0KSp4Qk2mUk6SLwsy+KYLDFBLjYnTZVXKMv5rUzIKcu1isdhR7RLyC4ffydZTd9cUr8WIvdyts
	WDexXNQjRlhWTAyDcy48eO3vQs3iz1FsJm+z27ZUgJYIMJC0Z25jvv30TcuPlvTudPKWhl+0RXRii
	suY0rTT8c5QOqBf9j6jA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tkzgG-0000000GsOR-1qAR;
	Thu, 20 Feb 2025 06:05:04 +0000
Received: from mgamail.intel.com ([198.175.65.12])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tkzgE-0000000GsNq-1FAR
	for linux-rockchip@lists.infradead.org;
	Thu, 20 Feb 2025 06:05:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1740031502; x=1771567502;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=LEMI46MYGP6Mj44o8JnfUs/f51k6JJbhxElJkechiqY=;
  b=Fg0WmP3p8eBC56Sax9Xx0UTpKOdJkJ7SXtznOdnFesQVWYjUF7+yo4ZG
   NFO3fdW816Oun2cZSAduVhepf8fRySvdgaQHMRv27Mz3S2Kl1lThWSLzR
   L/wkBs9f2aPmArwoTPelrn/TRCqbxl/DKxjCn7iz1cAr5xFFzHgLG94tf
   5UwXM2zLdJcQAAtyYsaolBZu92ecdr/aQpkIbqVyOFzI/stAorDhtScvb
   4F0u5R7YL1W1RJ1GQavxkNMLmN31iBsoLIYxYxNXHWjUHc2sy76lGP/le
   r4PXS5LQWFI9lmk1mGQoEZgFqUDa8AXiyuEZufG8sTctc+IKZ77wvBQb9
   w==;
X-CSE-ConnectionGUID: dPRbRoZkQsG4R9zjYBEoBw==
X-CSE-MsgGUID: /7KwsaFaRk6g6MbK7FEcKQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11350"; a="52204134"
X-IronPort-AV: E=Sophos;i="6.13,300,1732608000"; 
   d="scan'208";a="52204134"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
  by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 19 Feb 2025 22:05:01 -0800
X-CSE-ConnectionGUID: g8GBfc0VRW+MBI47bJprLQ==
X-CSE-MsgGUID: NNip9r77T1e9k0x4lesnfg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,300,1732608000"; 
   d="scan'208";a="114924865"
Received: from lkp-server02.sh.intel.com (HELO 76cde6cc1f07) ([10.239.97.151])
  by fmviesa007.fm.intel.com with ESMTP; 19 Feb 2025 22:04:59 -0800
Received: from kbuild by 76cde6cc1f07 with local (Exim 4.96)
	(envelope-from <lkp@intel.com>)
	id 1tkzg8-0003ub-2u;
	Thu, 20 Feb 2025 06:04:56 +0000
Date: Thu, 20 Feb 2025 14:04:30 +0800
From: kernel test robot <lkp@intel.com>
To: Shawn Lin <shawn.lin@rock-chips.com>,
	Ulf Hansson <ulf.hansson@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>,
	"Rafael J . Wysocki" <rafael@kernel.org>
Cc: oe-kbuild-all@lists.linux.dev, linux-rockchip@lists.infradead.org,
	linux-pm@vger.kernel.org, Shawn Lin <shawn.lin@rock-chips.com>,
	Steven Price <steven.price@arm.com>
Subject: Re: [PATCH] pmdomain: rockchip: Check if smcc could be handled by TA
Message-ID: <202502201601.rQYwZmA8-lkp@intel.com>
References: <1739926689-151827-1-git-send-email-shawn.lin@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1739926689-151827-1-git-send-email-shawn.lin@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250219_220502_432035_6B7098B4 
X-CRM114-Status: GOOD (  13.62  )
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
config: i386-buildonly-randconfig-001-20250220 (https://download.01.org/0day-ci/archive/20250220/202502201601.rQYwZmA8-lkp@intel.com/config)
compiler: gcc-12 (Debian 12.2.0-14) 12.2.0
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20250220/202502201601.rQYwZmA8-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202502201601.rQYwZmA8-lkp@intel.com/

All errors (new ones prefixed by >>):

   ld: drivers/pmdomain/rockchip/pm-domains.o: in function `rockchip_do_pmu_set_power_domain':
>> drivers/pmdomain/rockchip/pm-domains.c:575: undefined reference to `arm_smccc_1_1_get_conduit'


vim +575 drivers/pmdomain/rockchip/pm-domains.c

   537	
   538	static void rockchip_do_pmu_set_power_domain(struct rockchip_pm_domain *pd,
   539						     bool on)
   540	{
   541		struct rockchip_pmu *pmu = pd->pmu;
   542		struct generic_pm_domain *genpd = &pd->genpd;
   543		u32 pd_pwr_offset = pd->info->pwr_offset;
   544		bool is_on, is_mem_on = false;
   545		struct arm_smccc_res res;
   546	
   547		if (pd->info->pwr_mask == 0)
   548			return;
   549	
   550		if (on && pd->info->mem_status_mask)
   551			is_mem_on = rockchip_pmu_domain_is_mem_on(pd);
   552	
   553		if (pd->info->pwr_w_mask)
   554			regmap_write(pmu->regmap, pmu->info->pwr_offset + pd_pwr_offset,
   555				     on ? pd->info->pwr_w_mask :
   556				     (pd->info->pwr_mask | pd->info->pwr_w_mask));
   557		else
   558			regmap_update_bits(pmu->regmap, pmu->info->pwr_offset + pd_pwr_offset,
   559					   pd->info->pwr_mask, on ? 0 : -1U);
   560	
   561		wmb();
   562	
   563		if (is_mem_on && rockchip_pmu_domain_mem_reset(pd))
   564			return;
   565	
   566		if (readx_poll_timeout_atomic(rockchip_pmu_domain_is_on, pd, is_on,
   567					      is_on == on, 0, 10000)) {
   568			dev_err(pmu->dev,
   569				"failed to set domain '%s', val=%d\n",
   570				genpd->name, is_on);
   571			return;
   572		}
   573	
   574		/* Inform firmware to keep this pd on or off */
 > 575		if (arm_smccc_1_1_get_conduit() != SMCCC_CONDUIT_NONE)
   576			arm_smccc_smc(ROCKCHIP_SIP_SUSPEND_MODE, ROCKCHIP_SLEEP_PD_CONFIG,
   577					pmu->info->pwr_offset + pd_pwr_offset,
   578					pd->info->pwr_mask, on, 0, 0, 0, &res);
   579	}
   580	

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
