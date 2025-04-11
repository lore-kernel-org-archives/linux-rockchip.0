Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2CC04C369AB
	for <linux-rockchip@archiver.kernel.org>; Fri, 11 Apr 2025 08:45:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WIN9dUH/x6L2k67Z7UBG3wJFUU6W+21xP2IM02WULHI=; b=Ztk8A/cDIuItVo
	1UuJjHG3Ihk6dobkYqmHmUN1bgBqDoyzzqvwFz5U/7bFO5fQ/Sl0n5CuWE0tGRGDVaLlKd4GwdkI6
	Uk+YuPPMknnBzBqzz6lCgaAJngxtFpyDl0hHun1XeUF/pPI2HaY2TX4WMC4PcHNJXiUa751WHNkgL
	JslgJ/oYlDbbs+JSZ7u2t9N/e0MseD+WUsicSsVSBEXpqRcN8m/lw/nqopaOA6HSeHHDbolvq7gJv
	lzcgdtuNT09buiFe8pfgRig0RFeJO4QhHIDOPnqduMWk5fmw/RJ+4IwyI9aVlHxxLDkwn2VWGQwf5
	Er+i0f+knWteNiskNDhQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u3A0w-0000000D4rT-21Yz;
	Fri, 11 Apr 2025 08:45:30 +0000
Received: from mgamail.intel.com ([198.175.65.16])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u39ra-0000000D2R0-3VcQ
	for linux-rockchip@lists.infradead.org;
	Fri, 11 Apr 2025 08:35:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1744360551; x=1775896551;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=UB+gYPbNoFH/gTLnDV+gkaB+80nVg6rXio4SmeE5bMg=;
  b=GTyj97SoOS1BFUJnzM505bRwPrzOJ7T9KSmCyHn9w26j1jp6umo/QZIN
   niMJwIahZmFXxpiVMNqETRlJKM8biX9MuH6W3W/jCuZCIFRiBUF93in4a
   byN9yAPQDmYPsERTqJzk6NdOpY+ch7iXecMAaQyder8WXOiNifM10IYFm
   M+kGD2LpV0L2ZRQNUo+Lxj//KcG16DD/NiANA9W7TA3kQB25bAIkh5Y4P
   lXezuNVZ2hLnzxx81vUpdLri1oH9pauQIkR0/FzZlT/nLJF01PtJrTL5W
   XfEwdKQ9eKD2TRTmx4n03Zf3HG2/rLa/otnt8VczxHDvF++YTKKsl7S0q
   w==;
X-CSE-ConnectionGUID: HSFlKkDcS+ijvGmwUjJQAw==
X-CSE-MsgGUID: BJKz04hvSlK/nIteFTY95w==
X-IronPort-AV: E=McAfee;i="6700,10204,11400"; a="45996187"
X-IronPort-AV: E=Sophos;i="6.15,203,1739865600"; 
   d="scan'208";a="45996187"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
  by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 11 Apr 2025 01:35:49 -0700
X-CSE-ConnectionGUID: 4OxZi7pqQgW7c4kwv/5WSQ==
X-CSE-MsgGUID: H+x/QhFWSjKkr8lJDf21Og==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,203,1739865600"; 
   d="scan'208";a="129980391"
Received: from lkp-server01.sh.intel.com (HELO b207828170a5) ([10.239.97.150])
  by fmviesa009.fm.intel.com with ESMTP; 11 Apr 2025 01:35:46 -0700
Received: from kbuild by b207828170a5 with local (Exim 4.96)
	(envelope-from <lkp@intel.com>)
	id 1u39rU-000AyY-2c;
	Fri, 11 Apr 2025 08:35:44 +0000
Date: Fri, 11 Apr 2025 16:35:43 +0800
From: kernel test robot <lkp@intel.com>
To: Shawn Lin <shawn.lin@rock-chips.com>,
	Bjorn Helgaas <helgaas@kernel.org>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>
Cc: oe-kbuild-all@lists.linux.dev, linux-pci@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	Shawn Lin <shawn.lin@rock-chips.com>
Subject: Re: [PATCH] PCI: dw-rockchip: Add system PM support
Message-ID: <202504111625.Eds7X9BC-lkp@intel.com>
References: <1744267805-119602-1-git-send-email-shawn.lin@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1744267805-119602-1-git-send-email-shawn.lin@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250411_013550_944310_55060BFF 
X-CRM114-Status: GOOD (  11.79  )
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

[auto build test WARNING on pci/next]
[also build test WARNING on pci/for-linus linus/master v6.15-rc1 next-20250410]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Shawn-Lin/PCI-dw-rockchip-Add-system-PM-support/20250410-145426
base:   https://git.kernel.org/pub/scm/linux/kernel/git/pci/pci.git next
patch link:    https://lore.kernel.org/r/1744267805-119602-1-git-send-email-shawn.lin%40rock-chips.com
patch subject: [PATCH] PCI: dw-rockchip: Add system PM support
config: x86_64-buildonly-randconfig-001-20250411 (https://download.01.org/0day-ci/archive/20250411/202504111625.Eds7X9BC-lkp@intel.com/config)
compiler: gcc-11 (Debian 11.3.0-12) 11.3.0
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20250411/202504111625.Eds7X9BC-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202504111625.Eds7X9BC-lkp@intel.com/

All warnings (new ones prefixed by >>):

>> drivers/pci/controller/dwc/pcie-dw-rockchip.c:749:12: warning: 'rockchip_pcie_resume' defined but not used [-Wunused-function]
     749 | static int rockchip_pcie_resume(struct device *dev)
         |            ^~~~~~~~~~~~~~~~~~~~
>> drivers/pci/controller/dwc/pcie-dw-rockchip.c:725:12: warning: 'rockchip_pcie_suspend' defined but not used [-Wunused-function]
     725 | static int rockchip_pcie_suspend(struct device *dev)
         |            ^~~~~~~~~~~~~~~~~~~~~


vim +/rockchip_pcie_resume +749 drivers/pci/controller/dwc/pcie-dw-rockchip.c

   724	
 > 725	static int rockchip_pcie_suspend(struct device *dev)
   726	{
   727		struct rockchip_pcie *rockchip = dev_get_drvdata(dev);
   728		struct dw_pcie *pci = &rockchip->pci;
   729		int ret;
   730	
   731		rockchip->intx = rockchip_pcie_readl_apb(rockchip, PCIE_CLIENT_INTR_MASK_LEGACY);
   732	
   733		ret = dw_pcie_suspend_noirq(pci);
   734		if (ret) {
   735			dev_err(dev, "failed to suspend\n");
   736			return ret;
   737		}
   738	
   739		rockchip_pcie_phy_deinit(rockchip);
   740		clk_bulk_disable_unprepare(rockchip->clk_cnt, rockchip->clks);
   741		reset_control_assert(rockchip->rst);
   742		if (rockchip->vpcie3v3)
   743			regulator_disable(rockchip->vpcie3v3);
   744		gpiod_set_value_cansleep(rockchip->rst_gpio, 0);
   745	
   746		return 0;
   747	}
   748	
 > 749	static int rockchip_pcie_resume(struct device *dev)
   750	{
   751		struct rockchip_pcie *rockchip = dev_get_drvdata(dev);
   752		struct dw_pcie *pci = &rockchip->pci;
   753		int ret;
   754	
   755		reset_control_assert(rockchip->rst);
   756	
   757		ret = clk_bulk_prepare_enable(rockchip->clk_cnt, rockchip->clks);
   758		if (ret) {
   759			dev_err(dev, "clock init failed\n");
   760			goto err_clk;
   761		}
   762	
   763		if (rockchip->vpcie3v3) {
   764			ret = regulator_enable(rockchip->vpcie3v3);
   765			if (ret)
   766				goto err_power;
   767		}
   768	
   769		ret = phy_init(rockchip->phy);
   770		if (ret) {
   771			dev_err(dev, "fail to init phy\n");
   772			goto err_phy_init;
   773		}
   774	
   775		ret = phy_power_on(rockchip->phy);
   776		if (ret) {
   777			dev_err(dev, "fail to power on phy\n");
   778			goto err_phy_on;
   779		}
   780	
   781		reset_control_deassert(rockchip->rst);
   782	
   783		rockchip_pcie_writel_apb(rockchip, HIWORD_UPDATE(0xffff, rockchip->intx),
   784					 PCIE_CLIENT_INTR_MASK_LEGACY);
   785	
   786		rockchip_pcie_ltssm_enable_control_mode(rockchip, PCIE_CLIENT_RC_MODE);
   787		rockchip_pcie_unmask_dll_indicator(rockchip);
   788	
   789		ret = dw_pcie_resume_noirq(pci);
   790		if (ret) {
   791			dev_err(dev, "fail to resume\n");
   792			goto err_resume;
   793		}
   794	
   795		return 0;
   796	
   797	err_resume:
   798		phy_power_off(rockchip->phy);
   799	err_phy_on:
   800		phy_exit(rockchip->phy);
   801	err_phy_init:
   802		if (rockchip->vpcie3v3)
   803			regulator_disable(rockchip->vpcie3v3);
   804	err_power:
   805		clk_bulk_disable_unprepare(rockchip->clk_cnt, rockchip->clks);
   806	err_clk:
   807		reset_control_deassert(rockchip->rst);
   808		return ret;
   809	}
   810	

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
