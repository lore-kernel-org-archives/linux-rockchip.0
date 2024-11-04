Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EA2BAD1BDE3
	for <linux-rockchip@archiver.kernel.org>; Mon,  4 Nov 2024 19:08:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wN8dfDG6LkhuWwuiHmV4/r6AUo/NzbbKTqFC+2bMT6c=; b=xgudBsksyBYb8J
	uk7jyy3dDELKH6i/KzPVNmIacAyBSAJuvDjFFzfvrlcs2TnF3YQw9s0tqkG4YNQ6Ped6QBI2uVrqC
	ujaXwKGIlZDJWNBLRY20TEX0+mVKH0fdGveAdJrr2UgkqTKNNLWws591769QaaQrsyxNLkVjoWyF8
	eLEu6IwdlXxzNV7xAzI558U1yaYYz40DpjmDuU8SVD8za9lki9yFXrrKv4RPAFwfX7ydkMp+v98fZ
	nuuTdz6PUr28YdxpRBJ1oCzjmqqnNNx0oNbEVfFJdMmC94Lo8JzIWvppiik0JcXM5Rox1SacCZMdy
	1xsPPbj/nGF98dRSmJDw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t82RE-0000000ErE3-3Maz;
	Mon, 04 Nov 2024 19:08:32 +0000
Received: from mgamail.intel.com ([198.175.65.17])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t82OY-0000000EqYd-2rv8
	for linux-rockchip@lists.infradead.org;
	Mon, 04 Nov 2024 19:05:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1730747147; x=1762283147;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=rdh9R1V4RPjx3dKyhSI+3FBX4va4hMS0m5So6O7EdSA=;
  b=cn3r/FMlTToCq7INNaYT2ZyNziRu92Icq0ekTZ/TE+k+CZhqXJrHiBlO
   NtGFxi4XNLI3pGuA/fXMpCuEfLTBsKv+Flpl1aRafuGo17y61uXO1eNt+
   FPxrCROkS+Mj/jkzDYLdEuUtEvwGPbKUPxrvIk39UZ8jZTGsRnKrH2oBj
   4rEGoQC537su4wv9j2bTYltyppIoS05aHZNFsuWPJIyMzxZ/9etzW7x4f
   soH2jNPIW8ngDuDIbhSgn+06HPxv2/fRnQ6wZMfMgcrgLAqLpfRYf5W2N
   jIITYYnAAXhcPFomEF9eF5VgOwvt+RkYL82y7zXjwIChDt4LKzUvo+EW/
   g==;
X-CSE-ConnectionGUID: VELA0EolTdaG6WMUI5Mh9w==
X-CSE-MsgGUID: qHmFfYvPSmaJUiBVr7abhg==
X-IronPort-AV: E=McAfee;i="6700,10204,11246"; a="30574850"
X-IronPort-AV: E=Sophos;i="6.11,257,1725346800"; 
   d="scan'208";a="30574850"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
  by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 04 Nov 2024 11:05:37 -0800
X-CSE-ConnectionGUID: YZjB/43eRpKobbtUg0ngLg==
X-CSE-MsgGUID: vHLulKSHRHeKCIpcf9p65A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,257,1725346800"; 
   d="scan'208";a="83421430"
Received: from lkp-server01.sh.intel.com (HELO a48cf1aa22e8) ([10.239.97.150])
  by fmviesa007.fm.intel.com with ESMTP; 04 Nov 2024 11:05:31 -0800
Received: from kbuild by a48cf1aa22e8 with local (Exim 4.96)
	(envelope-from <lkp@intel.com>)
	id 1t82OH-000l9n-0g;
	Mon, 04 Nov 2024 19:05:29 +0000
Date: Tue, 5 Nov 2024 03:04:48 +0800
From: kernel test robot <lkp@intel.com>
To: Shawn Lin <shawn.lin@rock-chips.com>, Rob Herring <robh+dt@kernel.org>,
	"James E . J . Bottomley" <James.Bottomley@hansenpartnership.com>,
	"Martin K . Petersen" <martin.petersen@oracle.com>,
	Krzysztof Kozlowski <krzk@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Ulf Hansson <ulf.hansson@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>,
	"Rafael J . Wysocki" <rafael@kernel.org>
Cc: oe-kbuild-all@lists.linux.dev,
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	Avri Altman <avri.altman@wdc.com>,
	Bart Van Assche <bvanassche@acm.org>,
	YiFeng Zhao <zyf@rock-chips.com>, Liang Chen <cl@rock-chips.com>,
	linux-scsi@vger.kernel.org, linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org, linux-pm@vger.kernel.org
Subject: Re: [PATCH v4 4/7] pmdomain: core: Introduce
 dev_pm_genpd_rpm_always_on()
Message-ID: <202411050203.kPDzy0bS-lkp@intel.com>
References: <1730705521-23081-5-git-send-email-shawn.lin@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1730705521-23081-5-git-send-email-shawn.lin@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241104_110546_862871_FB47FA2C 
X-CRM114-Status: GOOD (  20.05  )
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
config: x86_64-buildonly-randconfig-003-20241104 (https://download.01.org/0day-ci/archive/20241105/202411050203.kPDzy0bS-lkp@intel.com/config)
compiler: gcc-11 (Debian 11.3.0-12) 11.3.0
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20241105/202411050203.kPDzy0bS-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202411050203.kPDzy0bS-lkp@intel.com/

All warnings (new ones prefixed by >>):

   drivers/pmdomain/core.c: In function 'genpd_power_off':
>> drivers/pmdomain/core.c:893:17: warning: this 'if' clause does not guard... [-Wmisleading-indentation]
     893 |                 if (!pm_runtime_suspended(pdd->dev) ||
         |                 ^~
   drivers/pmdomain/core.c:898:25: note: ...this statement, but the latter is misleadingly indented as if it were guarded by the 'if'
     898 |                         if (to_gpd_data(pdd)->rpm_always_on)
         |                         ^~


vim +/if +893 drivers/pmdomain/core.c

29e47e2173349e drivers/base/power/domain.c Ulf Hansson     2015-09-02  837  
1f8728b7adc4c2 drivers/base/power/domain.c Ulf Hansson     2017-02-17  838  /**
1f8728b7adc4c2 drivers/base/power/domain.c Ulf Hansson     2017-02-17  839   * genpd_power_off - Remove power from a given PM domain.
1f8728b7adc4c2 drivers/base/power/domain.c Ulf Hansson     2017-02-17  840   * @genpd: PM domain to power down.
3c64649d1cf9f3 drivers/base/power/domain.c Ulf Hansson     2017-02-17  841   * @one_dev_on: If invoked from genpd's ->runtime_suspend|resume() callback, the
3c64649d1cf9f3 drivers/base/power/domain.c Ulf Hansson     2017-02-17  842   * RPM status of the releated device is in an intermediate state, not yet turned
3c64649d1cf9f3 drivers/base/power/domain.c Ulf Hansson     2017-02-17  843   * into RPM_SUSPENDED. This means genpd_power_off() must allow one device to not
3c64649d1cf9f3 drivers/base/power/domain.c Ulf Hansson     2017-02-17  844   * be RPM_SUSPENDED, while it tries to power off the PM domain.
763663c9715f5f drivers/base/power/domain.c Yang Yingliang  2021-05-12  845   * @depth: nesting count for lockdep.
1f8728b7adc4c2 drivers/base/power/domain.c Ulf Hansson     2017-02-17  846   *
1f8728b7adc4c2 drivers/base/power/domain.c Ulf Hansson     2017-02-17  847   * If all of the @genpd's devices have been suspended and all of its subdomains
1f8728b7adc4c2 drivers/base/power/domain.c Ulf Hansson     2017-02-17  848   * have been powered down, remove power from @genpd.
1f8728b7adc4c2 drivers/base/power/domain.c Ulf Hansson     2017-02-17  849   */
2da835452a0875 drivers/base/power/domain.c Ulf Hansson     2017-02-17  850  static int genpd_power_off(struct generic_pm_domain *genpd, bool one_dev_on,
2da835452a0875 drivers/base/power/domain.c Ulf Hansson     2017-02-17  851  			   unsigned int depth)
1f8728b7adc4c2 drivers/base/power/domain.c Ulf Hansson     2017-02-17  852  {
1f8728b7adc4c2 drivers/base/power/domain.c Ulf Hansson     2017-02-17  853  	struct pm_domain_data *pdd;
1f8728b7adc4c2 drivers/base/power/domain.c Ulf Hansson     2017-02-17  854  	struct gpd_link *link;
1f8728b7adc4c2 drivers/base/power/domain.c Ulf Hansson     2017-02-17  855  	unsigned int not_suspended = 0;
f63816e43d9044 drivers/base/power/domain.c Ulf Hansson     2020-09-24  856  	int ret;
1f8728b7adc4c2 drivers/base/power/domain.c Ulf Hansson     2017-02-17  857  
1f8728b7adc4c2 drivers/base/power/domain.c Ulf Hansson     2017-02-17  858  	/*
1f8728b7adc4c2 drivers/base/power/domain.c Ulf Hansson     2017-02-17  859  	 * Do not try to power off the domain in the following situations:
1f8728b7adc4c2 drivers/base/power/domain.c Ulf Hansson     2017-02-17  860  	 * (1) The domain is already in the "power off" state.
1f8728b7adc4c2 drivers/base/power/domain.c Ulf Hansson     2017-02-17  861  	 * (2) System suspend is in progress.
1f8728b7adc4c2 drivers/base/power/domain.c Ulf Hansson     2017-02-17  862  	 */
41e2c8e0060db2 drivers/base/power/domain.c Ulf Hansson     2017-03-20  863  	if (!genpd_status_on(genpd) || genpd->prepared_count > 0)
1f8728b7adc4c2 drivers/base/power/domain.c Ulf Hansson     2017-02-17  864  		return 0;
1f8728b7adc4c2 drivers/base/power/domain.c Ulf Hansson     2017-02-17  865  
ffaa42e8a40b7f drivers/base/power/domain.c Ulf Hansson     2017-03-20  866  	/*
ffaa42e8a40b7f drivers/base/power/domain.c Ulf Hansson     2017-03-20  867  	 * Abort power off for the PM domain in the following situations:
ffaa42e8a40b7f drivers/base/power/domain.c Ulf Hansson     2017-03-20  868  	 * (1) The domain is configured as always on.
ffaa42e8a40b7f drivers/base/power/domain.c Ulf Hansson     2017-03-20  869  	 * (2) When the domain has a subdomain being powered on.
ffaa42e8a40b7f drivers/base/power/domain.c Ulf Hansson     2017-03-20  870  	 */
ed61e18a4b4e44 drivers/base/power/domain.c Leonard Crestez 2019-04-30  871  	if (genpd_is_always_on(genpd) ||
ed61e18a4b4e44 drivers/base/power/domain.c Leonard Crestez 2019-04-30  872  			genpd_is_rpm_always_on(genpd) ||
ed61e18a4b4e44 drivers/base/power/domain.c Leonard Crestez 2019-04-30  873  			atomic_read(&genpd->sd_count) > 0)
1f8728b7adc4c2 drivers/base/power/domain.c Ulf Hansson     2017-02-17  874  		return -EBUSY;
1f8728b7adc4c2 drivers/base/power/domain.c Ulf Hansson     2017-02-17  875  
e7d90cfac5510f drivers/base/power/domain.c Ulf Hansson     2022-02-17  876  	/*
e7d90cfac5510f drivers/base/power/domain.c Ulf Hansson     2022-02-17  877  	 * The children must be in their deepest (powered-off) states to allow
e7d90cfac5510f drivers/base/power/domain.c Ulf Hansson     2022-02-17  878  	 * the parent to be powered off. Note that, there's no need for
e7d90cfac5510f drivers/base/power/domain.c Ulf Hansson     2022-02-17  879  	 * additional locking, as powering on a child, requires the parent's
e7d90cfac5510f drivers/base/power/domain.c Ulf Hansson     2022-02-17  880  	 * lock to be acquired first.
e7d90cfac5510f drivers/base/power/domain.c Ulf Hansson     2022-02-17  881  	 */
e7d90cfac5510f drivers/base/power/domain.c Ulf Hansson     2022-02-17  882  	list_for_each_entry(link, &genpd->parent_links, parent_node) {
e7d90cfac5510f drivers/base/power/domain.c Ulf Hansson     2022-02-17  883  		struct generic_pm_domain *child = link->child;
e7d90cfac5510f drivers/base/power/domain.c Ulf Hansson     2022-02-17  884  		if (child->state_idx < child->state_count - 1)
e7d90cfac5510f drivers/base/power/domain.c Ulf Hansson     2022-02-17  885  			return -EBUSY;
e7d90cfac5510f drivers/base/power/domain.c Ulf Hansson     2022-02-17  886  	}
e7d90cfac5510f drivers/base/power/domain.c Ulf Hansson     2022-02-17  887  
1f8728b7adc4c2 drivers/base/power/domain.c Ulf Hansson     2017-02-17  888  	list_for_each_entry(pdd, &genpd->dev_list, list_node) {
1f8728b7adc4c2 drivers/base/power/domain.c Ulf Hansson     2017-02-17  889  		/*
1f8728b7adc4c2 drivers/base/power/domain.c Ulf Hansson     2017-02-17  890  		 * Do not allow PM domain to be powered off, when an IRQ safe
1f8728b7adc4c2 drivers/base/power/domain.c Ulf Hansson     2017-02-17  891  		 * device is part of a non-IRQ safe domain.
1f8728b7adc4c2 drivers/base/power/domain.c Ulf Hansson     2017-02-17  892  		 */
1f8728b7adc4c2 drivers/base/power/domain.c Ulf Hansson     2017-02-17 @893  		if (!pm_runtime_suspended(pdd->dev) ||
7a02444b8fc25a drivers/base/power/domain.c Ulf Hansson     2022-05-11  894  			irq_safe_dev_in_sleep_domain(pdd->dev, genpd))
1f8728b7adc4c2 drivers/base/power/domain.c Ulf Hansson     2017-02-17  895  			not_suspended++;
f0f6da10152fb8 drivers/pmdomain/core.c     Ulf Hansson     2024-11-04  896  
f0f6da10152fb8 drivers/pmdomain/core.c     Ulf Hansson     2024-11-04  897  			/* The device may need its PM domain to stay powered on. */
f0f6da10152fb8 drivers/pmdomain/core.c     Ulf Hansson     2024-11-04  898  			if (to_gpd_data(pdd)->rpm_always_on)
f0f6da10152fb8 drivers/pmdomain/core.c     Ulf Hansson     2024-11-04  899  				return -EBUSY;
1f8728b7adc4c2 drivers/base/power/domain.c Ulf Hansson     2017-02-17  900  	}
1f8728b7adc4c2 drivers/base/power/domain.c Ulf Hansson     2017-02-17  901  
3c64649d1cf9f3 drivers/base/power/domain.c Ulf Hansson     2017-02-17  902  	if (not_suspended > 1 || (not_suspended == 1 && !one_dev_on))
1f8728b7adc4c2 drivers/base/power/domain.c Ulf Hansson     2017-02-17  903  		return -EBUSY;
1f8728b7adc4c2 drivers/base/power/domain.c Ulf Hansson     2017-02-17  904  
1f8728b7adc4c2 drivers/base/power/domain.c Ulf Hansson     2017-02-17  905  	if (genpd->gov && genpd->gov->power_down_ok) {
1f8728b7adc4c2 drivers/base/power/domain.c Ulf Hansson     2017-02-17  906  		if (!genpd->gov->power_down_ok(&genpd->domain))
1f8728b7adc4c2 drivers/base/power/domain.c Ulf Hansson     2017-02-17  907  			return -EAGAIN;
1f8728b7adc4c2 drivers/base/power/domain.c Ulf Hansson     2017-02-17  908  	}
1f8728b7adc4c2 drivers/base/power/domain.c Ulf Hansson     2017-02-17  909  
2c9b7f8772033c drivers/base/power/domain.c Ulf Hansson     2018-10-03  910  	/* Default to shallowest state. */
2c9b7f8772033c drivers/base/power/domain.c Ulf Hansson     2018-10-03  911  	if (!genpd->gov)
2c9b7f8772033c drivers/base/power/domain.c Ulf Hansson     2018-10-03  912  		genpd->state_idx = 0;
2c9b7f8772033c drivers/base/power/domain.c Ulf Hansson     2018-10-03  913  
f63816e43d9044 drivers/base/power/domain.c Ulf Hansson     2020-09-24  914  	/* Don't power off, if a child domain is waiting to power on. */
1f8728b7adc4c2 drivers/base/power/domain.c Ulf Hansson     2017-02-17  915  	if (atomic_read(&genpd->sd_count) > 0)
1f8728b7adc4c2 drivers/base/power/domain.c Ulf Hansson     2017-02-17  916  		return -EBUSY;
1f8728b7adc4c2 drivers/base/power/domain.c Ulf Hansson     2017-02-17  917  
1f8728b7adc4c2 drivers/base/power/domain.c Ulf Hansson     2017-02-17  918  	ret = _genpd_power_off(genpd, true);
c6a113b52302ad drivers/base/power/domain.c Lina Iyer       2020-10-15  919  	if (ret) {
c6a113b52302ad drivers/base/power/domain.c Lina Iyer       2020-10-15  920  		genpd->states[genpd->state_idx].rejected++;
1f8728b7adc4c2 drivers/base/power/domain.c Ulf Hansson     2017-02-17  921  		return ret;
c6a113b52302ad drivers/base/power/domain.c Lina Iyer       2020-10-15  922  	}
1f8728b7adc4c2 drivers/base/power/domain.c Ulf Hansson     2017-02-17  923  
49f618e1b669ef drivers/base/power/domain.c Ulf Hansson     2020-09-24  924  	genpd->status = GENPD_STATE_OFF;
afece3ab9a3640 drivers/base/power/domain.c Thara Gopinath  2017-07-14  925  	genpd_update_accounting(genpd);
c6a113b52302ad drivers/base/power/domain.c Lina Iyer       2020-10-15  926  	genpd->states[genpd->state_idx].usage++;
1f8728b7adc4c2 drivers/base/power/domain.c Ulf Hansson     2017-02-17  927  
8d87ae48ced2df drivers/base/power/domain.c Kees Cook       2020-07-08  928  	list_for_each_entry(link, &genpd->child_links, child_node) {
8d87ae48ced2df drivers/base/power/domain.c Kees Cook       2020-07-08  929  		genpd_sd_counter_dec(link->parent);
8d87ae48ced2df drivers/base/power/domain.c Kees Cook       2020-07-08  930  		genpd_lock_nested(link->parent, depth + 1);
8d87ae48ced2df drivers/base/power/domain.c Kees Cook       2020-07-08  931  		genpd_power_off(link->parent, false, depth + 1);
8d87ae48ced2df drivers/base/power/domain.c Kees Cook       2020-07-08  932  		genpd_unlock(link->parent);
1f8728b7adc4c2 drivers/base/power/domain.c Ulf Hansson     2017-02-17  933  	}
1f8728b7adc4c2 drivers/base/power/domain.c Ulf Hansson     2017-02-17  934  
1f8728b7adc4c2 drivers/base/power/domain.c Ulf Hansson     2017-02-17  935  	return 0;
1f8728b7adc4c2 drivers/base/power/domain.c Ulf Hansson     2017-02-17  936  }
1f8728b7adc4c2 drivers/base/power/domain.c Ulf Hansson     2017-02-17  937  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
