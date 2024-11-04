Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 02859D1BDEB
	for <linux-rockchip@archiver.kernel.org>; Mon,  4 Nov 2024 20:17:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nTw5TsSxjGR/BcZBu644HsHI6Ho/0AHS2OEIWH2MNPA=; b=SVFi2/OpY/l6pY
	QNVgOzpLPQ+5BCupfI/YNm2n76XXs28ALJYxiINcoy8GjoVrFybBHHPpyJi3BsXY8rOMlAu4fFN4m
	bTSeBsL1aqg7rifmmfdonQHoWAYmSjoW+re+mw/wT8PlspMgWSS3E1DH4Kqch+p2ziVwNcKv2KIk8
	z/Wo1UwVCaVLcT2MlDZfrl6BHo4I/+s/oFfU50qyad9AI5SWF9NLZ9i1Br5wbaT+j2XDzpqPsoFqT
	aIL8Cv+9rKUul7xAQVsfFLr4K0QfvD/YfsV2PwjaisDgriTVnHq/Ih2PVh/JvQCusXT5iUwoVt0mB
	0YyIemijKo31Fu4PdXHg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t83WD-0000000F09K-0V3t;
	Mon, 04 Nov 2024 20:17:45 +0000
Received: from mgamail.intel.com ([198.175.65.12])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t83WA-0000000F08s-1Vgu
	for linux-rockchip@lists.infradead.org;
	Mon, 04 Nov 2024 20:17:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1730751462; x=1762287462;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=5MWgbh4aOjwoJiLBWxpgay+wgAMi+P1rkEAd6ZT8gdE=;
  b=mP/eZqW22FWbhN/14vloWn2jUkpIqJWB/6PqZpjkyNKrJk8KrXxeWzBn
   /D3mxNcFh/kj4A/qLhn/bzbcYcLWpD+3eXgTX6OcHBJ2F0LxyOWJXWfkW
   xvKL9nHLQucrM03fo1hGgRx94883fBH8x/gCEkxIAGKP93zPThZa5L+Qk
   CiHzTujd0V5dbMzLTBEJA7yr6kFzEiUCbks+zwThqehhVKZ8fEMvivsmj
   aupT94HXhR+QKmtioPXeeH7BG8NRmUWL4NKPE1XgGJYRm28hAJXsUd7Rp
   Aw1N77U9o1YdHlGqTYseCI4A7YlB2DmVekhZZEt3c1qUjorO4IWUbfsSR
   g==;
X-CSE-ConnectionGUID: j1WVCcq0RoKswqW5phhCVQ==
X-CSE-MsgGUID: OD5nODC+QTackrq/20OUVQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11246"; a="41858050"
X-IronPort-AV: E=Sophos;i="6.11,258,1725346800"; 
   d="scan'208";a="41858050"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
  by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 04 Nov 2024 12:17:40 -0800
X-CSE-ConnectionGUID: DjDAKnVUQtS4/c7pKUkeQg==
X-CSE-MsgGUID: a15UI2hBS9yREI5ghSgxJg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,258,1725346800"; 
   d="scan'208";a="83286325"
Received: from lkp-server01.sh.intel.com (HELO a48cf1aa22e8) ([10.239.97.150])
  by fmviesa006.fm.intel.com with ESMTP; 04 Nov 2024 12:17:35 -0800
Received: from kbuild by a48cf1aa22e8 with local (Exim 4.96)
	(envelope-from <lkp@intel.com>)
	id 1t83W1-000lFV-1X;
	Mon, 04 Nov 2024 20:17:33 +0000
Date: Tue, 5 Nov 2024 04:17:30 +0800
From: kernel test robot <lkp@intel.com>
To: Shawn Lin <shawn.lin@rock-chips.com>, Rob Herring <robh+dt@kernel.org>,
	"James E . J . Bottomley" <James.Bottomley@hansenpartnership.com>,
	"Martin K . Petersen" <martin.petersen@oracle.com>,
	Krzysztof Kozlowski <krzk@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Ulf Hansson <ulf.hansson@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>,
	"Rafael J . Wysocki" <rafael@kernel.org>
Cc: llvm@lists.linux.dev, oe-kbuild-all@lists.linux.dev,
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	Avri Altman <avri.altman@wdc.com>,
	Bart Van Assche <bvanassche@acm.org>,
	YiFeng Zhao <zyf@rock-chips.com>, Liang Chen <cl@rock-chips.com>,
	linux-scsi@vger.kernel.org, linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org, linux-pm@vger.kernel.org
Subject: Re: [PATCH v4 4/7] pmdomain: core: Introduce
 dev_pm_genpd_rpm_always_on()
Message-ID: <202411050317.abJatSkD-lkp@intel.com>
References: <1730705521-23081-5-git-send-email-shawn.lin@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1730705521-23081-5-git-send-email-shawn.lin@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241104_121742_478903_8A520CAA 
X-CRM114-Status: GOOD (  22.50  )
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

kernel test robot noticed the following build warnings:

[auto build test WARNING on jejb-scsi/for-next]
[also build test WARNING on robh/for-next linus/master v6.12-rc6]
[cannot apply to mkp-scsi/for-next next-20241104]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Shawn-Lin/dt-bindings-ufs-Document-Rockchip-UFS-host-controller/20241104-191810
base:   https://git.kernel.org/pub/scm/linux/kernel/git/jejb/scsi.git for-next
patch link:    https://lore.kernel.org/r/1730705521-23081-5-git-send-email-shawn.lin%40rock-chips.com
patch subject: [PATCH v4 4/7] pmdomain: core: Introduce dev_pm_genpd_rpm_always_on()
config: x86_64-buildonly-randconfig-002-20241104 (https://download.01.org/0day-ci/archive/20241105/202411050317.abJatSkD-lkp@intel.com/config)
compiler: clang version 19.1.3 (https://github.com/llvm/llvm-project ab51eccf88f5321e7c60591c5546b254b6afab99)
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20241105/202411050317.abJatSkD-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202411050317.abJatSkD-lkp@intel.com/

All warnings (new ones prefixed by >>):

   In file included from drivers/pmdomain/core.c:21:
   In file included from include/linux/suspend.h:5:
   In file included from include/linux/swap.h:9:
   In file included from include/linux/memcontrol.h:21:
   In file included from include/linux/mm.h:2213:
   include/linux/vmstat.h:518:36: warning: arithmetic between different enumeration types ('enum node_stat_item' and 'enum lru_list') [-Wenum-enum-conversion]
     518 |         return node_stat_name(NR_LRU_BASE + lru) + 3; // skip "nr_"
         |                               ~~~~~~~~~~~ ^ ~~~
>> drivers/pmdomain/core.c:898:4: warning: misleading indentation; statement is not part of the previous 'if' [-Wmisleading-indentation]
     898 |                         if (to_gpd_data(pdd)->rpm_always_on)
         |                         ^
   drivers/pmdomain/core.c:893:3: note: previous statement is here
     893 |                 if (!pm_runtime_suspended(pdd->dev) ||
         |                 ^
   2 warnings generated.


vim +/if +898 drivers/pmdomain/core.c

   837	
   838	/**
   839	 * genpd_power_off - Remove power from a given PM domain.
   840	 * @genpd: PM domain to power down.
   841	 * @one_dev_on: If invoked from genpd's ->runtime_suspend|resume() callback, the
   842	 * RPM status of the releated device is in an intermediate state, not yet turned
   843	 * into RPM_SUSPENDED. This means genpd_power_off() must allow one device to not
   844	 * be RPM_SUSPENDED, while it tries to power off the PM domain.
   845	 * @depth: nesting count for lockdep.
   846	 *
   847	 * If all of the @genpd's devices have been suspended and all of its subdomains
   848	 * have been powered down, remove power from @genpd.
   849	 */
   850	static int genpd_power_off(struct generic_pm_domain *genpd, bool one_dev_on,
   851				   unsigned int depth)
   852	{
   853		struct pm_domain_data *pdd;
   854		struct gpd_link *link;
   855		unsigned int not_suspended = 0;
   856		int ret;
   857	
   858		/*
   859		 * Do not try to power off the domain in the following situations:
   860		 * (1) The domain is already in the "power off" state.
   861		 * (2) System suspend is in progress.
   862		 */
   863		if (!genpd_status_on(genpd) || genpd->prepared_count > 0)
   864			return 0;
   865	
   866		/*
   867		 * Abort power off for the PM domain in the following situations:
   868		 * (1) The domain is configured as always on.
   869		 * (2) When the domain has a subdomain being powered on.
   870		 */
   871		if (genpd_is_always_on(genpd) ||
   872				genpd_is_rpm_always_on(genpd) ||
   873				atomic_read(&genpd->sd_count) > 0)
   874			return -EBUSY;
   875	
   876		/*
   877		 * The children must be in their deepest (powered-off) states to allow
   878		 * the parent to be powered off. Note that, there's no need for
   879		 * additional locking, as powering on a child, requires the parent's
   880		 * lock to be acquired first.
   881		 */
   882		list_for_each_entry(link, &genpd->parent_links, parent_node) {
   883			struct generic_pm_domain *child = link->child;
   884			if (child->state_idx < child->state_count - 1)
   885				return -EBUSY;
   886		}
   887	
   888		list_for_each_entry(pdd, &genpd->dev_list, list_node) {
   889			/*
   890			 * Do not allow PM domain to be powered off, when an IRQ safe
   891			 * device is part of a non-IRQ safe domain.
   892			 */
   893			if (!pm_runtime_suspended(pdd->dev) ||
   894				irq_safe_dev_in_sleep_domain(pdd->dev, genpd))
   895				not_suspended++;
   896	
   897				/* The device may need its PM domain to stay powered on. */
 > 898				if (to_gpd_data(pdd)->rpm_always_on)
   899					return -EBUSY;
   900		}
   901	
   902		if (not_suspended > 1 || (not_suspended == 1 && !one_dev_on))
   903			return -EBUSY;
   904	
   905		if (genpd->gov && genpd->gov->power_down_ok) {
   906			if (!genpd->gov->power_down_ok(&genpd->domain))
   907				return -EAGAIN;
   908		}
   909	
   910		/* Default to shallowest state. */
   911		if (!genpd->gov)
   912			genpd->state_idx = 0;
   913	
   914		/* Don't power off, if a child domain is waiting to power on. */
   915		if (atomic_read(&genpd->sd_count) > 0)
   916			return -EBUSY;
   917	
   918		ret = _genpd_power_off(genpd, true);
   919		if (ret) {
   920			genpd->states[genpd->state_idx].rejected++;
   921			return ret;
   922		}
   923	
   924		genpd->status = GENPD_STATE_OFF;
   925		genpd_update_accounting(genpd);
   926		genpd->states[genpd->state_idx].usage++;
   927	
   928		list_for_each_entry(link, &genpd->child_links, child_node) {
   929			genpd_sd_counter_dec(link->parent);
   930			genpd_lock_nested(link->parent, depth + 1);
   931			genpd_power_off(link->parent, false, depth + 1);
   932			genpd_unlock(link->parent);
   933		}
   934	
   935		return 0;
   936	}
   937	

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
