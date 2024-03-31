Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E521DC6FD1F
	for <linux-rockchip@archiver.kernel.org>; Sun, 31 Mar 2024 02:04:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HnBRUlmldMhFOgRquUJI7KSm15NnyU+ajbSivPTln0g=; b=E62SGRQa20OtW4
	A/O78TX52jeGgRkZd9el587Ie6Psgg0AKIBqkipHB3mnNt15fD5a9nsrM48tENUVB1CYcNiEcNc1G
	fOONzFYUa4Hnu7LWS1pnq2Y+lUkQB96Pf1Vtqs8QV6qi5xtQWA7FNIzQI/TJwUphCvVODdCDyq1n4
	K64vSV3sAmaQHrTy1sqSqjFBqUH5LmbnF0lPclSAeSfuujs0J/ujQ5EzkL7sr70Bl2TBB6AP8aTtx
	a2OtFi3wJwtyrSU2OkFw9vAzHFs90CCjWMcykLIS9W33mDctn2FuXKsynADxcFmu/HVMRIS8IoZ5k
	UqNzaPIcgEcqxIU3p7aQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rqkYW-00000004bA5-2th1;
	Sun, 31 Mar 2024 02:04:20 +0000
Received: from mgamail.intel.com ([198.175.65.15])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rqkYR-00000004b9Z-438X
	for linux-rockchip@lists.infradead.org;
	Sun, 31 Mar 2024 02:04:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1711850656; x=1743386656;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=ergoIzABEDu8FXfkEAx5CdBSJwLyQ4n+t+7HDDIjwLc=;
  b=Vv5uydSMNhDPE7G55OP+IqYaRsKkYv4JoIwN7hZPMVlscXG4ayrWHQ1P
   p9D2diTXXI4CdmgkM5YZk6aoSYCTbq/OyyGNaHtUuCcH+i411OZ/2Tk+g
   KbMSLURPMHpKYywYuBDukYvA1oBa2WoGriUhcw5IDGHxCUUg7nOg49DfJ
   pRqg/r6jYFG7q+l+x1/aUjPigqpwq1EWX8vcBw6EA3eRle9JDHK1wSz2x
   dOkpBlkx8peNEZpgDxEhhb2KRlC76NzFVynioCARfB+eXlEuLuHkbWZz6
   xAa5G/ug2QmDMwFgSe5sPOCwog+A8FmHxGQwqpWRqjYwqy+kl99B7XRZb
   A==;
X-CSE-ConnectionGUID: TZix1dLsSHiCd+5BsN/bkg==
X-CSE-MsgGUID: aGwBihq3SgO+mI/R8zDZEQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11029"; a="10818206"
X-IronPort-AV: E=Sophos;i="6.07,169,1708416000"; 
   d="scan'208";a="10818206"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
  by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 30 Mar 2024 19:04:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,169,1708416000"; 
   d="scan'208";a="40492090"
Received: from lkp-server01.sh.intel.com (HELO 3d808bfd2502) ([10.239.97.150])
  by fmviesa002.fm.intel.com with ESMTP; 30 Mar 2024 19:04:10 -0700
Received: from kbuild by 3d808bfd2502 with local (Exim 4.96)
	(envelope-from <lkp@intel.com>)
	id 1rqkYK-0000ge-12;
	Sun, 31 Mar 2024 02:04:08 +0000
Date: Sun, 31 Mar 2024 10:03:08 +0800
From: kernel test robot <lkp@intel.com>
To: Damien Le Moal <dlemoal@kernel.org>,
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Bjorn Helgaas <helgaas@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>, linux-pci@vger.kernel.org
Cc: oe-kbuild-all@lists.linux.dev, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH 17/19] PCI: rockchip-ep: Improve link training
Message-ID: <202403310925.C7WNNuAl-lkp@intel.com>
References: <20240329090945.1097609-18-dlemoal@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240329090945.1097609-18-dlemoal@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240330_190416_107800_32CF7E27 
X-CRM114-Status: GOOD (  13.61  )
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

Hi Damien,

kernel test robot noticed the following build warnings:

[auto build test WARNING on pci/next]
[also build test WARNING on pci/for-linus mani-mhi/mhi-next linus/master v6.9-rc1 next-20240328]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Damien-Le-Moal/PCI-endpoint-Introduce-pci_epc_check_func/20240329-171158
base:   https://git.kernel.org/pub/scm/linux/kernel/git/pci/pci.git next
patch link:    https://lore.kernel.org/r/20240329090945.1097609-18-dlemoal%40kernel.org
patch subject: [PATCH 17/19] PCI: rockchip-ep: Improve link training
config: arc-randconfig-001-20240330 (https://download.01.org/0day-ci/archive/20240331/202403310925.C7WNNuAl-lkp@intel.com/config)
compiler: arc-elf-gcc (GCC) 13.2.0
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20240331/202403310925.C7WNNuAl-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202403310925.C7WNNuAl-lkp@intel.com/

All warnings (new ones prefixed by >>):

>> drivers/pci/controller/pcie-rockchip-ep.c:54: warning: Function parameter or struct member 'link_training' not described in 'rockchip_pcie_ep'


vim +54 drivers/pci/controller/pcie-rockchip-ep.c

cf590b07839133 drivers/pci/host/pcie-rockchip-ep.c       Shawn Lin           2018-05-09  23  
cf590b07839133 drivers/pci/host/pcie-rockchip-ep.c       Shawn Lin           2018-05-09  24  /**
cf590b07839133 drivers/pci/host/pcie-rockchip-ep.c       Shawn Lin           2018-05-09  25   * struct rockchip_pcie_ep - private data for PCIe endpoint controller driver
cf590b07839133 drivers/pci/host/pcie-rockchip-ep.c       Shawn Lin           2018-05-09  26   * @rockchip: Rockchip PCIe controller
9b41d19aff4090 drivers/pci/controller/pcie-rockchip-ep.c Krzysztof Kozlowski 2020-07-29  27   * @epc: PCI EPC device
cf590b07839133 drivers/pci/host/pcie-rockchip-ep.c       Shawn Lin           2018-05-09  28   * @max_regions: maximum number of regions supported by hardware
cf590b07839133 drivers/pci/host/pcie-rockchip-ep.c       Shawn Lin           2018-05-09  29   * @ob_region_map: bitmask of mapped outbound regions
cf590b07839133 drivers/pci/host/pcie-rockchip-ep.c       Shawn Lin           2018-05-09  30   * @ob_addr: base addresses in the AXI bus where the outbound regions start
5815c2d17a7492 drivers/pci/controller/pcie-rockchip-ep.c Damien Le Moal      2023-11-22  31   * @irq_phys_addr: base address on the AXI bus where the MSI/INTX IRQ
cf590b07839133 drivers/pci/host/pcie-rockchip-ep.c       Shawn Lin           2018-05-09  32   *		   dedicated outbound regions is mapped.
cf590b07839133 drivers/pci/host/pcie-rockchip-ep.c       Shawn Lin           2018-05-09  33   * @irq_cpu_addr: base address in the CPU space where a write access triggers
5815c2d17a7492 drivers/pci/controller/pcie-rockchip-ep.c Damien Le Moal      2023-11-22  34   *		  the sending of a memory write (MSI) / normal message (INTX
cf590b07839133 drivers/pci/host/pcie-rockchip-ep.c       Shawn Lin           2018-05-09  35   *		  IRQ) TLP through the PCIe bus.
5815c2d17a7492 drivers/pci/controller/pcie-rockchip-ep.c Damien Le Moal      2023-11-22  36   * @irq_pci_addr: used to save the current mapping of the MSI/INTX IRQ
cf590b07839133 drivers/pci/host/pcie-rockchip-ep.c       Shawn Lin           2018-05-09  37   *		  dedicated outbound region.
cf590b07839133 drivers/pci/host/pcie-rockchip-ep.c       Shawn Lin           2018-05-09  38   * @irq_pci_fn: the latest PCI function that has updated the mapping of
5815c2d17a7492 drivers/pci/controller/pcie-rockchip-ep.c Damien Le Moal      2023-11-22  39   *		the MSI/INTX IRQ dedicated outbound region.
5815c2d17a7492 drivers/pci/controller/pcie-rockchip-ep.c Damien Le Moal      2023-11-22  40   * @irq_pending: bitmask of asserted INTX IRQs.
cf590b07839133 drivers/pci/host/pcie-rockchip-ep.c       Shawn Lin           2018-05-09  41   */
cf590b07839133 drivers/pci/host/pcie-rockchip-ep.c       Shawn Lin           2018-05-09  42  struct rockchip_pcie_ep {
cf590b07839133 drivers/pci/host/pcie-rockchip-ep.c       Shawn Lin           2018-05-09  43  	struct rockchip_pcie	rockchip;
cf590b07839133 drivers/pci/host/pcie-rockchip-ep.c       Shawn Lin           2018-05-09  44  	struct pci_epc		*epc;
cf590b07839133 drivers/pci/host/pcie-rockchip-ep.c       Shawn Lin           2018-05-09  45  	u32			max_regions;
cf590b07839133 drivers/pci/host/pcie-rockchip-ep.c       Shawn Lin           2018-05-09  46  	unsigned long		ob_region_map;
cf590b07839133 drivers/pci/host/pcie-rockchip-ep.c       Shawn Lin           2018-05-09  47  	phys_addr_t		*ob_addr;
cf590b07839133 drivers/pci/host/pcie-rockchip-ep.c       Shawn Lin           2018-05-09  48  	phys_addr_t		irq_phys_addr;
cf590b07839133 drivers/pci/host/pcie-rockchip-ep.c       Shawn Lin           2018-05-09  49  	void __iomem		*irq_cpu_addr;
cf590b07839133 drivers/pci/host/pcie-rockchip-ep.c       Shawn Lin           2018-05-09  50  	u64			irq_pci_addr;
cf590b07839133 drivers/pci/host/pcie-rockchip-ep.c       Shawn Lin           2018-05-09  51  	u8			irq_pci_fn;
cf590b07839133 drivers/pci/host/pcie-rockchip-ep.c       Shawn Lin           2018-05-09  52  	u8			irq_pending;
9bd13985625aa9 drivers/pci/controller/pcie-rockchip-ep.c Damien Le Moal      2024-03-29  53  	struct delayed_work	link_training;
cf590b07839133 drivers/pci/host/pcie-rockchip-ep.c       Shawn Lin           2018-05-09 @54  };
cf590b07839133 drivers/pci/host/pcie-rockchip-ep.c       Shawn Lin           2018-05-09  55  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
