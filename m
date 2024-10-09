Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1952DCEE34F
	for <linux-rockchip@archiver.kernel.org>; Wed,  9 Oct 2024 21:16:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Mp4GcR70Ao/3Wbb5MblKaehs4qDRJwzHtQsnHAi9eoo=; b=WmKYiJLTgm5yoc
	sd7Ozml+tzylYMyAv14mM58FY/yneyXjXdxlahT0Qs7EA5cl3iBn3gm30T9QL2qkcV3H0nWe/3lV3
	LG0F5SpOEvqfL0JaVR3ZygGeqPip2P5UzZgTfPMIcoddRW8NQg8NEMwImewTNqshNfxjW1Uj1PdF0
	D1XESporxkDtjzkaRmhZfY2/fSTfe10amqiR/y2F8t+Kwuh+8nnHBmLBHr2uFPfQtDLCb+leRof54
	2ScFmpVXCmayLo4K91jRNNEtaanmB6l7318Ylw0dDM6mfTa7GsWKsa/kQNJqlwQjiwWcJXLHHGr0v
	RWm3OUtpGsdRvfQdINxQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1sye2Y-0000000Akaq-3OFV;
	Wed, 09 Oct 2024 21:16:14 +0000
Received: from mgamail.intel.com ([198.175.65.10])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1sycsB-0000000AYe0-12oS
	for linux-rockchip@lists.infradead.org;
	Wed, 09 Oct 2024 20:01:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1728504087; x=1760040087;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=zFdUQ+MRpLUDqfQc+JTntU/+06D/KiG/nS/BisdDa08=;
  b=mTqcQJaJs9R6wY/MLR8N33si41m8jFq78JW7dAGYkoMSPFKEcyUtgPbc
   n+it3nht4RI2OBgmhcFL4Lc+fe9cQidlYWRtSHWpykj9YgUiSH/rIbaM2
   Qxpi539RKm5671rSF086v2GKYtraqQW0qpAOP7Ce03SaFR6pN0tZr0+CW
   o1x5a5MH//c237qMIVBKBUdlRwGC5zLfisCN2I8WWavsbzaMq+wzTKRbn
   TLCoFsnzf19BgOQWeFdvBvCQkNHLmQnwRsQi5FgUaMy/NGix0J8ATqZu7
   ayOd+swrP4ANtKoZCPiF0dzYX/ENyEvy39r5n7452/hTopDPtyjc88i9x
   A==;
X-CSE-ConnectionGUID: nlPhMZPGQku4BM5SacyI7Q==
X-CSE-MsgGUID: Jd270dKfR/S782nh4X6SUw==
X-IronPort-AV: E=McAfee;i="6700,10204,11220"; a="45304854"
X-IronPort-AV: E=Sophos;i="6.11,190,1725346800"; 
   d="scan'208";a="45304854"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
  by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 09 Oct 2024 13:01:24 -0700
X-CSE-ConnectionGUID: iACf1EpnQ+m0h4w8o7hFeA==
X-CSE-MsgGUID: FanvvHS4RrKCbi65y4S7Rw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,190,1725346800"; 
   d="scan'208";a="81163288"
Received: from lkp-server01.sh.intel.com (HELO a48cf1aa22e8) ([10.239.97.150])
  by orviesa005.jf.intel.com with ESMTP; 09 Oct 2024 13:01:19 -0700
Received: from kbuild by a48cf1aa22e8 with local (Exim 4.96)
	(envelope-from <lkp@intel.com>)
	id 1sycs0-0009kn-2F;
	Wed, 09 Oct 2024 20:01:16 +0000
Date: Thu, 10 Oct 2024 04:00:32 +0800
From: kernel test robot <lkp@intel.com>
To: Shawn Lin <shawn.lin@rock-chips.com>, Rob Herring <robh+dt@kernel.org>,
	"James E . J . Bottomley" <James.Bottomley@hansenpartnership.com>,
	"Martin K . Petersen" <martin.petersen@oracle.com>,
	Krzysztof Kozlowski <krzk@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Ulf Hansson <ulf.hansson@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: oe-kbuild-all@lists.linux.dev,
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	Avri Altman <avri.altman@wdc.com>,
	Bart Van Assche <bvanassche@acm.org>,
	YiFeng Zhao <zyf@rock-chips.com>, Liang Chen <cl@rock-chips.com>,
	linux-scsi@vger.kernel.org, linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
	linux-pm@vger.kernel.org, Shawn Lin <shawn.lin@rock-chips.com>
Subject: Re: [PATCH v3 5/5] scsi: ufs: rockchip: initial support for UFS
Message-ID: <202410100321.D89hHCPV-lkp@intel.com>
References: <1728368130-37213-6-git-send-email-shawn.lin@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1728368130-37213-6-git-send-email-shawn.lin@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241009_130127_416780_62ADF347 
X-CRM114-Status: GOOD (  14.61  )
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

[auto build test ERROR on jejb-scsi/for-next]
[also build test ERROR on mkp-scsi/for-next robh/for-next linus/master v6.12-rc2 next-20241009]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Shawn-Lin/scsi-ufs-core-Add-UFSHCI_QUIRK_DME_RESET_ENABLE_AFTER_HCE/20241009-042350
base:   https://git.kernel.org/pub/scm/linux/kernel/git/jejb/scsi.git for-next
patch link:    https://lore.kernel.org/r/1728368130-37213-6-git-send-email-shawn.lin%40rock-chips.com
patch subject: [PATCH v3 5/5] scsi: ufs: rockchip: initial support for UFS
config: csky-randconfig-r073-20241010 (https://download.01.org/0day-ci/archive/20241010/202410100321.D89hHCPV-lkp@intel.com/config)
compiler: csky-linux-gcc (GCC) 14.1.0
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20241010/202410100321.D89hHCPV-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202410100321.D89hHCPV-lkp@intel.com/

All error/warnings (new ones prefixed by >>):

   drivers/ufs/host/ufs-rockchip.c: In function 'ufs_rockchip_runtime_suspend':
>> drivers/ufs/host/ufs-rockchip.c:293:16: error: implicit declaration of function 'ufshcd_runtime_suspend'; did you mean 'pm_runtime_suspend'? [-Wimplicit-function-declaration]
     293 |         return ufshcd_runtime_suspend(dev);
         |                ^~~~~~~~~~~~~~~~~~~~~~
         |                pm_runtime_suspend
   drivers/ufs/host/ufs-rockchip.c: In function 'ufs_rockchip_runtime_resume':
>> drivers/ufs/host/ufs-rockchip.c:312:16: error: implicit declaration of function 'ufshcd_runtime_resume'; did you mean 'pm_runtime_resume'? [-Wimplicit-function-declaration]
     312 |         return ufshcd_runtime_resume(dev);
         |                ^~~~~~~~~~~~~~~~~~~~~
         |                pm_runtime_resume
   drivers/ufs/host/ufs-rockchip.c: In function 'ufs_rockchip_system_suspend':
>> drivers/ufs/host/ufs-rockchip.c:324:16: error: implicit declaration of function 'ufshcd_system_suspend'; did you mean 'ufs_rockchip_system_suspend'? [-Wimplicit-function-declaration]
     324 |         return ufshcd_system_suspend(dev);
         |                ^~~~~~~~~~~~~~~~~~~~~
         |                ufs_rockchip_system_suspend
   drivers/ufs/host/ufs-rockchip.c: At top level:
>> drivers/ufs/host/ufs-rockchip.c:315:12: warning: 'ufs_rockchip_system_suspend' defined but not used [-Wunused-function]
     315 | static int ufs_rockchip_system_suspend(struct device *dev)
         |            ^~~~~~~~~~~~~~~~~~~~~~~~~~~
>> drivers/ufs/host/ufs-rockchip.c:296:12: warning: 'ufs_rockchip_runtime_resume' defined but not used [-Wunused-function]
     296 | static int ufs_rockchip_runtime_resume(struct device *dev)
         |            ^~~~~~~~~~~~~~~~~~~~~~~~~~~
>> drivers/ufs/host/ufs-rockchip.c:275:12: warning: 'ufs_rockchip_runtime_suspend' defined but not used [-Wunused-function]
     275 | static int ufs_rockchip_runtime_suspend(struct device *dev)
         |            ^~~~~~~~~~~~~~~~~~~~~~~~~~~~


vim +293 drivers/ufs/host/ufs-rockchip.c

   274	
 > 275	static int ufs_rockchip_runtime_suspend(struct device *dev)
   276	{
   277		struct ufs_hba *hba = dev_get_drvdata(dev);
   278		struct ufs_rockchip_host *host = ufshcd_get_variant(hba);
   279		struct generic_pm_domain *genpd = pd_to_genpd(dev->pm_domain);
   280	
   281		clk_disable_unprepare(host->ref_out_clk);
   282	
   283		/*
   284		 * Shouldn't power down if rpm_lvl is less than level 5.
   285		 * This flag will be passed down to platform power-domain driver
   286		 * which has the final decision.
   287		 */
   288		if (hba->rpm_lvl < UFS_PM_LVL_5)
   289			genpd->flags |= GENPD_FLAG_RPM_ALWAYS_ON;
   290		else
   291			genpd->flags &= ~GENPD_FLAG_RPM_ALWAYS_ON;
   292	
 > 293		return ufshcd_runtime_suspend(dev);
   294	}
   295	
 > 296	static int ufs_rockchip_runtime_resume(struct device *dev)
   297	{
   298		struct ufs_hba *hba = dev_get_drvdata(dev);
   299		struct ufs_rockchip_host *host = ufshcd_get_variant(hba);
   300		int err;
   301	
   302		err = clk_prepare_enable(host->ref_out_clk);
   303		if (err) {
   304			dev_err(hba->dev, "failed to enable ref out clock %d\n", err);
   305			return err;
   306		}
   307	
   308		reset_control_assert(host->rst);
   309		usleep_range(1, 2);
   310		reset_control_deassert(host->rst);
   311	
 > 312		return ufshcd_runtime_resume(dev);
   313	}
   314	
 > 315	static int ufs_rockchip_system_suspend(struct device *dev)
   316	{
   317		struct ufs_hba *hba = dev_get_drvdata(dev);
   318		struct ufs_rockchip_host *host = ufshcd_get_variant(hba);
   319	
   320		/* Pass down desired spm_lvl to Firmware */
   321		arm_smccc_smc(ROCKCHIP_SIP_SUSPEND_MODE, ROCKCHIP_SLEEP_PD_CONFIG,
   322				host->pd_id, hba->spm_lvl < 5 ? 1 : 0, 0, 0, 0, 0, NULL);
   323	
 > 324		return ufshcd_system_suspend(dev);
   325	}
   326	

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
