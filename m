Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 48463F99C98
	for <linux-rockchip@archiver.kernel.org>; Sun, 19 Apr 2026 00:05:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vIX00Q7m0DSwbwCKXCLpkQe7vCxZKAQBBY6AVqei7JE=; b=qDYSIWtgklw97c
	PiQnS0aeIB0cvHtuA0iV3jsNOnSxzGG1+K05ak2p9epS0yCYoZpSpT8eNOZ3dy82XtBUSUTpCOlc7
	OexW78iQLQE2LjeumyjhRjgyOoJhNn2LQOXW9pk14V5VulRMosJ95XdyEnZbigXnYVyGr2dtD9TNU
	tafdJ0BppGVaYGR+nmkZPRNCHLORPUFBYlXlveMlZIG9IpTEx2SykXM2F4umROI/CsCTgOmVDXGDD
	tXo9Lgw6Z1N5BCWvak4f1LXjv5Lu5Po6xkRRTzHwz2p36CPhLZjSPTnQpm87RPtUqggZtF2Ax1dG/
	SrY81fU7jeiQzDzllZqg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wEFej-00000005Ly0-0CcQ;
	Sun, 19 Apr 2026 00:04:57 +0000
Received: from mgamail.intel.com ([198.175.65.17])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wEFeg-00000005LxK-16Hd
	for linux-rockchip@lists.infradead.org;
	Sun, 19 Apr 2026 00:04:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1776557095; x=1808093095;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=Ik3ETTC1pbIgH3NWbPKUjPc922OA85hWdY5HwghyVo0=;
  b=Usrt1k2ocZssAgTA3OJNrmpb1S14iq4obBSWtmAiEYvLy06dTv0Xsfx7
   3avtAJfD5y/QTyHaH5mIdePxat5UlwUFeeLUvwkslkkX62qZ5pBuEWrQt
   A+ZktT5Y61A6Wg8MEmOuqVEXJG/UpvsI8aLbRVle0fLs4VErrXdIRpOjO
   jf5Ssh0kOOpACwUUapvakm8Qe6zZicBF8/HRSpTf2iYEdgeTlCJbxf5QU
   OIVHELQFVF3rLY+2W9p35d5MHl4nmDh1rE42X27HD0U54szhgBcerEMwE
   AyFPtH7KFdAib7BiQTSSl9EHG2FV0WlCDbFskDQhBZlH0MHeCDieHeIKc
   Q==;
X-CSE-ConnectionGUID: 2rlt2m6MTSKiJm0k/Wzq/g==
X-CSE-MsgGUID: qn4IC5yhTbCfjspQNdjpkw==
X-IronPort-AV: E=McAfee;i="6800,10657,11762"; a="77499111"
X-IronPort-AV: E=Sophos;i="6.23,187,1770624000"; 
   d="scan'208";a="77499111"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
  by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 18 Apr 2026 17:04:53 -0700
X-CSE-ConnectionGUID: 6nrqakXRTzGvZeBS1QJZlQ==
X-CSE-MsgGUID: h5o6eGr+QnCbGiAnHlo1tA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,187,1770624000"; 
   d="scan'208";a="231248494"
Received: from lkp-server01.sh.intel.com (HELO 7e48d0ff8e22) ([10.239.97.150])
  by orviesa009.jf.intel.com with ESMTP; 18 Apr 2026 17:04:51 -0700
Received: from kbuild by 7e48d0ff8e22 with local (Exim 4.98.2)
	(envelope-from <lkp@intel.com>)
	id 1wEFea-000000001ae-2ROc;
	Sun, 19 Apr 2026 00:04:48 +0000
Date: Sun, 19 Apr 2026 08:04:39 +0800
From: kernel test robot <lkp@intel.com>
To: Shawn Lin <shawn.lin@rock-chips.com>,
	Ulf Hansson <ulf.hansson@linaro.org>
Cc: oe-kbuild-all@lists.linux.dev, linux-mmc@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	Adrian Hunter <adrian.hunter@intel.com>,
	Shawn Lin <shawn.lin@rock-chips.com>, Stable@vger.kernel.org
Subject: Re: [PATCH v2] mmc: sdhci-of-dwcmshc: Disable clock before DLL
 configuration
Message-ID: <202604190759.51VAkEgC-lkp@intel.com>
References: <1775629564-11267-1-git-send-email-shawn.lin@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1775629564-11267-1-git-send-email-shawn.lin@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260418_170454_376632_1D3E0D0D 
X-CRM114-Status: GOOD (  16.28  )
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

[auto build test ERROR on v7.0]
[cannot apply to linus/master ulf-hansson-mmc-mirror/next next-20260417]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Shawn-Lin/mmc-sdhci-of-dwcmshc-Disable-clock-before-DLL-configuration/20260417-234134
base:   v7.0
patch link:    https://lore.kernel.org/r/1775629564-11267-1-git-send-email-shawn.lin%40rock-chips.com
patch subject: [PATCH v2] mmc: sdhci-of-dwcmshc: Disable clock before DLL configuration
config: i386-allmodconfig (https://download.01.org/0day-ci/archive/20260419/202604190759.51VAkEgC-lkp@intel.com/config)
compiler: gcc-14 (Debian 14.2.0-19) 14.2.0
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20260419/202604190759.51VAkEgC-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202604190759.51VAkEgC-lkp@intel.com/

All errors (new ones prefixed by >>):

   drivers/mmc/host/sdhci-of-dwcmshc.c: In function 'dwcmshc_rk3568_set_clock':
>> drivers/mmc/host/sdhci-of-dwcmshc.c:830:1: error: unknown type name 'enable_clk'
     830 | enable_clk
         | ^~~~~~~~~~
>> drivers/mmc/host/sdhci-of-dwcmshc.c:838:31: error: expected ')' before numeric constant
     838 |         sdhci_enable_clk(host, 0);
         |                               ^~
         |                               )
>> drivers/mmc/host/sdhci-of-dwcmshc.c:796:17: error: label 'enable_clk' used but not defined
     796 |                 goto enable_clk;
         |                 ^~~~


vim +/enable_clk +830 drivers/mmc/host/sdhci-of-dwcmshc.c

   706	
   707	static void dwcmshc_rk3568_set_clock(struct sdhci_host *host, unsigned int clock)
   708	{
   709		struct sdhci_pltfm_host *pltfm_host = sdhci_priv(host);
   710		struct dwcmshc_priv *dwc_priv = sdhci_pltfm_priv(pltfm_host);
   711		struct rk35xx_priv *priv = dwc_priv->priv;
   712		u8 txclk_tapnum = DLL_TXCLK_TAPNUM_DEFAULT;
   713		u32 extra, reg;
   714		int err;
   715	
   716		host->mmc->actual_clock = 0;
   717	
   718		if (clock == 0) {
   719			/* Disable interface clock at initial state. */
   720			sdhci_set_clock(host, clock);
   721			return;
   722		}
   723	
   724		/* Rockchip platform only support 375KHz for identify mode */
   725		if (clock <= 400000)
   726			clock = 375000;
   727	
   728		err = clk_set_rate(pltfm_host->clk, clock);
   729		if (err)
   730			dev_err(mmc_dev(host->mmc), "fail to set clock %d", clock);
   731	
   732		sdhci_set_clock(host, clock);
   733	
   734		/* Disable cmd conflict check and internal clock gate */
   735		reg = dwc_priv->vendor_specific_area1 + DWCMSHC_HOST_CTRL3;
   736		extra = sdhci_readl(host, reg);
   737		extra &= ~BIT(0);
   738		extra |= BIT(4);
   739		sdhci_writel(host, extra, reg);
   740	
   741		/* Disable clock while config DLL */
   742		sdhci_writew(host, 0, SDHCI_CLOCK_CONTROL);
   743	
   744		if (clock <= 52000000) {
   745			if (host->mmc->ios.timing == MMC_TIMING_MMC_HS200 ||
   746			    host->mmc->ios.timing == MMC_TIMING_MMC_HS400) {
   747				dev_err(mmc_dev(host->mmc),
   748					"Can't reduce the clock below 52MHz in HS200/HS400 mode");
   749				goto enable_clk;
   750			}
   751	
   752			/*
   753			 * Disable DLL and reset both of sample and drive clock.
   754			 * The bypass bit and start bit need to be set if DLL is not locked.
   755			 */
   756			sdhci_writel(host, DWCMSHC_EMMC_DLL_BYPASS | DWCMSHC_EMMC_DLL_START, DWCMSHC_EMMC_DLL_CTRL);
   757			sdhci_writel(host, DLL_RXCLK_ORI_GATE, DWCMSHC_EMMC_DLL_RXCLK);
   758			sdhci_writel(host, 0, DWCMSHC_EMMC_DLL_TXCLK);
   759			sdhci_writel(host, 0, DECMSHC_EMMC_DLL_CMDOUT);
   760			/*
   761			 * Before switching to hs400es mode, the driver will enable
   762			 * enhanced strobe first. PHY needs to configure the parameters
   763			 * of enhanced strobe first.
   764			 */
   765			extra = DWCMSHC_EMMC_DLL_DLYENA |
   766				DLL_STRBIN_DELAY_NUM_SEL |
   767				DLL_STRBIN_DELAY_NUM_DEFAULT << DLL_STRBIN_DELAY_NUM_OFFSET;
   768			sdhci_writel(host, extra, DWCMSHC_EMMC_DLL_STRBIN);
   769			goto enable_clk;
   770		}
   771	
   772		/* Reset DLL */
   773		sdhci_writel(host, BIT(1), DWCMSHC_EMMC_DLL_CTRL);
   774		udelay(1);
   775		sdhci_writel(host, 0x0, DWCMSHC_EMMC_DLL_CTRL);
   776	
   777		/*
   778		 * We shouldn't set DLL_RXCLK_NO_INVERTER for identify mode but
   779		 * we must set it in higher speed mode.
   780		 */
   781		extra = DWCMSHC_EMMC_DLL_DLYENA;
   782		if (priv->devtype == DWCMSHC_RK3568)
   783			extra |= DLL_RXCLK_NO_INVERTER << DWCMSHC_EMMC_DLL_RXCLK_SRCSEL;
   784		sdhci_writel(host, extra, DWCMSHC_EMMC_DLL_RXCLK);
   785	
   786		/* Init DLL settings */
   787		extra = 0x5 << DWCMSHC_EMMC_DLL_START_POINT |
   788			0x2 << DWCMSHC_EMMC_DLL_INC |
   789			DWCMSHC_EMMC_DLL_START;
   790		sdhci_writel(host, extra, DWCMSHC_EMMC_DLL_CTRL);
   791		err = readl_poll_timeout(host->ioaddr + DWCMSHC_EMMC_DLL_STATUS0,
   792					 extra, DLL_LOCK_WO_TMOUT(extra), 1,
   793					 500 * USEC_PER_MSEC);
   794		if (err) {
   795			dev_err(mmc_dev(host->mmc), "DLL lock timeout!\n");
 > 796			goto enable_clk;
   797		}
   798	
   799		extra = 0x1 << 16 | /* tune clock stop en */
   800			0x3 << 17 | /* pre-change delay */
   801			0x3 << 19;  /* post-change delay */
   802		sdhci_writel(host, extra, dwc_priv->vendor_specific_area1 + DWCMSHC_EMMC_ATCTRL);
   803	
   804		if (host->mmc->ios.timing == MMC_TIMING_MMC_HS200 ||
   805		    host->mmc->ios.timing == MMC_TIMING_MMC_HS400)
   806			txclk_tapnum = priv->txclk_tapnum;
   807	
   808		if ((priv->devtype == DWCMSHC_RK3588) && host->mmc->ios.timing == MMC_TIMING_MMC_HS400) {
   809			txclk_tapnum = DLL_TXCLK_TAPNUM_90_DEGREES;
   810	
   811			extra = DLL_CMDOUT_SRC_CLK_NEG |
   812				DLL_CMDOUT_EN_SRC_CLK_NEG |
   813				DWCMSHC_EMMC_DLL_DLYENA |
   814				DLL_CMDOUT_TAPNUM_90_DEGREES |
   815				DLL_CMDOUT_TAPNUM_FROM_SW;
   816			sdhci_writel(host, extra, DECMSHC_EMMC_DLL_CMDOUT);
   817		}
   818	
   819		extra = DWCMSHC_EMMC_DLL_DLYENA |
   820			DLL_TXCLK_TAPNUM_FROM_SW |
   821			DLL_RXCLK_NO_INVERTER << DWCMSHC_EMMC_DLL_RXCLK_SRCSEL |
   822			txclk_tapnum;
   823		sdhci_writel(host, extra, DWCMSHC_EMMC_DLL_TXCLK);
   824	
   825		extra = DWCMSHC_EMMC_DLL_DLYENA |
   826			DLL_STRBIN_TAPNUM_DEFAULT |
   827			DLL_STRBIN_TAPNUM_FROM_SW;
   828		sdhci_writel(host, extra, DWCMSHC_EMMC_DLL_STRBIN);
   829	
 > 830	enable_clk
   831		/*
   832		 * The sdclk frequency select bits in SDHCI_CLOCK_CONTROL are not functional
   833		 * on Rockchip's SDHCI implementation. Instead, the clock frequency is fully
   834		 * controlled via external clk provider by calling clk_set_rate(). Consequently,
   835		 * passing 0 to sdhci_enable_clk() only re-enables the already-configured clock,
   836		 * which matches the hardware's actual behavior.
   837		 */
 > 838		sdhci_enable_clk(host, 0);
   839	}
   840	

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
