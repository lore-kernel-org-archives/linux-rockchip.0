Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 32989CFC26E
	for <linux-rockchip@archiver.kernel.org>; Tue, 15 Oct 2024 06:53:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=p4GRj8rrtpTS9TklXEPRRHP9BFvl6xyg9hHHbQPDk2Q=; b=F4vLURk3zY3UPS
	SZ2C32qM2VgLzDWIZHv+wLRnQapJrO9/NDqZnlAV8Cz8WVQSyZ94Qja1e6FP/XuwJEA0LstykozMC
	ZnzDzZJ9y1L8kh764AKc9N8U6nS7VmB3Y0zPeYDa0SEPYD9ZzPk5S3k9WKzddKW0psCaV2smgMULZ
	6hbOVtKtDesNN3AvQiWhxFd7GI6b9dxrAlni/coWpJEjE85gUOUEnyxU/hM6eepRVWSR/opY7popv
	R+yPblGlkfLp1KV0gPFej+TlRgQuG8jSJNg+ILtDlVDJiQ74itpJRqrQtg0DbTEDzswiplSAeI8gV
	WLZguKx8nwye2Gf8K7GQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t0bR2-00000007GlP-3e8q;
	Tue, 15 Oct 2024 06:53:36 +0000
Received: from mgamail.intel.com ([198.175.65.10])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t0bLH-00000007FtH-2ckZ
	for linux-rockchip@lists.infradead.org;
	Tue, 15 Oct 2024 06:47:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1728974859; x=1760510859;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=QnmdqlUzl5mD6BYj4MP1FHjqNwxAYNNrC194BjJdZcU=;
  b=ShSTbt7m662rkedl1YDE5f77usUqxvenkF1poX0KKrrLB/Wc+iaYg37M
   2I23kOp1DieCL0v8muoUJkLhBvX4+ZguUBC5KH+Cgh59r9mtno9RpzGGj
   AUqXF+Z4F9A7U4jR/cSrzS2zz+dksmBgAWq4Vn3Kr6nLRdxO0I6A5AsST
   2gRRmrAWD/aR5MVqFIRRSXeyHj1GjfZ//3eQ65HFY5yEkolu1sl5NwGu+
   HlpdZQYkWRObRtGIcdJpU2X/C3iikoO5XPlaGJkdDoGEUKplxeCcaNUiy
   PrVmmbUN4DGNF7KT8Z20MKMyU2vUAF2Bu3L4ixUiZcNri4p/GzOEZNCrb
   A==;
X-CSE-ConnectionGUID: dhRkgyVoQR23unlsACj5+A==
X-CSE-MsgGUID: ufazwJpeTquRw87Luwzjjw==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="45821689"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; 
   d="scan'208";a="45821689"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
  by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 14 Oct 2024 23:47:38 -0700
X-CSE-ConnectionGUID: rJhn4m6RR3621sODBiR/WQ==
X-CSE-MsgGUID: 9XIi+BPDSnaO5K1CSGw6XQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,204,1725346800"; 
   d="scan'208";a="82424741"
Received: from lkp-server01.sh.intel.com (HELO a48cf1aa22e8) ([10.239.97.150])
  by fmviesa004.fm.intel.com with ESMTP; 14 Oct 2024 23:47:34 -0700
Received: from kbuild by a48cf1aa22e8 with local (Exim 4.96)
	(envelope-from <lkp@intel.com>)
	id 1t0bL9-000HiB-2b;
	Tue, 15 Oct 2024 06:47:31 +0000
Date: Tue, 15 Oct 2024 14:46:39 +0800
From: kernel test robot <lkp@intel.com>
To: Damien Le Moal <dlemoal@kernel.org>,
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Bjorn Helgaas <helgaas@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>, linux-pci@vger.kernel.org,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org
Cc: oe-kbuild-all@lists.linux.dev, linux-rockchip@lists.infradead.org,
	Rick Wertenbroek <rick.wertenbroek@gmail.com>,
	Niklas Cassel <cassel@kernel.org>
Subject: Re: [PATCH v4 12/12] PCI: rockchip-ep: Handle PERST# signal in
 endpoint mode
Message-ID: <202410151206.MIdxs469-lkp@intel.com>
References: <20241011121408.89890-13-dlemoal@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20241011121408.89890-13-dlemoal@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241014_234739_761066_528149A9 
X-CRM114-Status: GOOD (  21.37  )
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

kernel test robot noticed the following build errors:

[auto build test ERROR on pci/next]
[also build test ERROR on pci/for-linus mani-mhi/mhi-next linus/master v6.12-rc3 next-20241014]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Damien-Le-Moal/PCI-rockchip-ep-Fix-address-translation-unit-programming/20241011-201512
base:   https://git.kernel.org/pub/scm/linux/kernel/git/pci/pci.git next
patch link:    https://lore.kernel.org/r/20241011121408.89890-13-dlemoal%40kernel.org
patch subject: [PATCH v4 12/12] PCI: rockchip-ep: Handle PERST# signal in endpoint mode
config: i386-allmodconfig (https://download.01.org/0day-ci/archive/20241015/202410151206.MIdxs469-lkp@intel.com/config)
compiler: gcc-12 (Debian 12.2.0-14) 12.2.0
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20241015/202410151206.MIdxs469-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202410151206.MIdxs469-lkp@intel.com/

All errors (new ones prefixed by >>):

         |                            ^~
   drivers/pci/controller/pcie-rockchip-ep.c:255:44: error: invalid use of undefined type 'struct pci_epc_map'
     255 |         map->map_ofst = map->pci_addr - map->map_pci_addr;
         |                                            ^~
   drivers/pci/controller/pcie-rockchip-ep.c:257:16: error: invalid use of undefined type 'struct pci_epc_map'
     257 |         if (map->map_ofst + map->pci_size > SZ_1M)
         |                ^~
   drivers/pci/controller/pcie-rockchip-ep.c:257:32: error: invalid use of undefined type 'struct pci_epc_map'
     257 |         if (map->map_ofst + map->pci_size > SZ_1M)
         |                                ^~
   drivers/pci/controller/pcie-rockchip-ep.c:258:20: error: invalid use of undefined type 'struct pci_epc_map'
     258 |                 map->pci_size = SZ_1M - map->map_ofst;
         |                    ^~
   drivers/pci/controller/pcie-rockchip-ep.c:258:44: error: invalid use of undefined type 'struct pci_epc_map'
     258 |                 map->pci_size = SZ_1M - map->map_ofst;
         |                                            ^~
   drivers/pci/controller/pcie-rockchip-ep.c:260:12: error: invalid use of undefined type 'struct pci_epc_map'
     260 |         map->map_size = ALIGN(map->map_ofst + map->pci_size,
         |            ^~
   In file included from include/vdso/const.h:5,
                    from include/linux/const.h:4,
                    from include/uapi/linux/kernel.h:6,
                    from include/linux/cache.h:5,
                    from include/linux/time.h:5,
                    from include/linux/stat.h:19,
                    from include/linux/configfs.h:22,
                    from drivers/pci/controller/pcie-rockchip-ep.c:11:
   drivers/pci/controller/pcie-rockchip-ep.c:260:34: error: invalid use of undefined type 'struct pci_epc_map'
     260 |         map->map_size = ALIGN(map->map_ofst + map->pci_size,
         |                                  ^~
   include/uapi/linux/const.h:49:44: note: in definition of macro '__ALIGN_KERNEL_MASK'
      49 | #define __ALIGN_KERNEL_MASK(x, mask)    (((x) + (mask)) & ~(mask))
         |                                            ^
   include/linux/align.h:8:33: note: in expansion of macro '__ALIGN_KERNEL'
       8 | #define ALIGN(x, a)             __ALIGN_KERNEL((x), (a))
         |                                 ^~~~~~~~~~~~~~
   drivers/pci/controller/pcie-rockchip-ep.c:260:25: note: in expansion of macro 'ALIGN'
     260 |         map->map_size = ALIGN(map->map_ofst + map->pci_size,
         |                         ^~~~~
   drivers/pci/controller/pcie-rockchip-ep.c:260:50: error: invalid use of undefined type 'struct pci_epc_map'
     260 |         map->map_size = ALIGN(map->map_ofst + map->pci_size,
         |                                                  ^~
   include/uapi/linux/const.h:49:44: note: in definition of macro '__ALIGN_KERNEL_MASK'
      49 | #define __ALIGN_KERNEL_MASK(x, mask)    (((x) + (mask)) & ~(mask))
         |                                            ^
   include/linux/align.h:8:33: note: in expansion of macro '__ALIGN_KERNEL'
       8 | #define ALIGN(x, a)             __ALIGN_KERNEL((x), (a))
         |                                 ^~~~~~~~~~~~~~
   drivers/pci/controller/pcie-rockchip-ep.c:260:25: note: in expansion of macro 'ALIGN'
     260 |         map->map_size = ALIGN(map->map_ofst + map->pci_size,
         |                         ^~~~~
   drivers/pci/controller/pcie-rockchip-ep.c:260:34: error: invalid use of undefined type 'struct pci_epc_map'
     260 |         map->map_size = ALIGN(map->map_ofst + map->pci_size,
         |                                  ^~
   include/uapi/linux/const.h:49:50: note: in definition of macro '__ALIGN_KERNEL_MASK'
      49 | #define __ALIGN_KERNEL_MASK(x, mask)    (((x) + (mask)) & ~(mask))
         |                                                  ^~~~
   include/linux/align.h:8:33: note: in expansion of macro '__ALIGN_KERNEL'
       8 | #define ALIGN(x, a)             __ALIGN_KERNEL((x), (a))
         |                                 ^~~~~~~~~~~~~~
   drivers/pci/controller/pcie-rockchip-ep.c:260:25: note: in expansion of macro 'ALIGN'
     260 |         map->map_size = ALIGN(map->map_ofst + map->pci_size,
         |                         ^~~~~
   drivers/pci/controller/pcie-rockchip-ep.c:260:50: error: invalid use of undefined type 'struct pci_epc_map'
     260 |         map->map_size = ALIGN(map->map_ofst + map->pci_size,
         |                                                  ^~
   include/uapi/linux/const.h:49:50: note: in definition of macro '__ALIGN_KERNEL_MASK'
      49 | #define __ALIGN_KERNEL_MASK(x, mask)    (((x) + (mask)) & ~(mask))
         |                                                  ^~~~
   include/linux/align.h:8:33: note: in expansion of macro '__ALIGN_KERNEL'
       8 | #define ALIGN(x, a)             __ALIGN_KERNEL((x), (a))
         |                                 ^~~~~~~~~~~~~~
   drivers/pci/controller/pcie-rockchip-ep.c:260:25: note: in expansion of macro 'ALIGN'
     260 |         map->map_size = ALIGN(map->map_ofst + map->pci_size,
         |                         ^~~~~
   drivers/pci/controller/pcie-rockchip-ep.c:260:34: error: invalid use of undefined type 'struct pci_epc_map'
     260 |         map->map_size = ALIGN(map->map_ofst + map->pci_size,
         |                                  ^~
   include/uapi/linux/const.h:49:61: note: in definition of macro '__ALIGN_KERNEL_MASK'
      49 | #define __ALIGN_KERNEL_MASK(x, mask)    (((x) + (mask)) & ~(mask))
         |                                                             ^~~~
   include/linux/align.h:8:33: note: in expansion of macro '__ALIGN_KERNEL'
       8 | #define ALIGN(x, a)             __ALIGN_KERNEL((x), (a))
         |                                 ^~~~~~~~~~~~~~
   drivers/pci/controller/pcie-rockchip-ep.c:260:25: note: in expansion of macro 'ALIGN'
     260 |         map->map_size = ALIGN(map->map_ofst + map->pci_size,
         |                         ^~~~~
   drivers/pci/controller/pcie-rockchip-ep.c:260:50: error: invalid use of undefined type 'struct pci_epc_map'
     260 |         map->map_size = ALIGN(map->map_ofst + map->pci_size,
         |                                                  ^~
   include/uapi/linux/const.h:49:61: note: in definition of macro '__ALIGN_KERNEL_MASK'
      49 | #define __ALIGN_KERNEL_MASK(x, mask)    (((x) + (mask)) & ~(mask))
         |                                                             ^~~~
   include/linux/align.h:8:33: note: in expansion of macro '__ALIGN_KERNEL'
       8 | #define ALIGN(x, a)             __ALIGN_KERNEL((x), (a))
         |                                 ^~~~~~~~~~~~~~
   drivers/pci/controller/pcie-rockchip-ep.c:260:25: note: in expansion of macro 'ALIGN'
     260 |         map->map_size = ALIGN(map->map_ofst + map->pci_size,
         |                         ^~~~~
   drivers/pci/controller/pcie-rockchip-ep.c: In function 'rockchip_pcie_ep_perst_irq_thread':
>> drivers/pci/controller/pcie-rockchip-ep.c:631:9: error: implicit declaration of function 'irq_set_irq_type'; did you mean 'irq_set_irq_wake'? [-Werror=implicit-function-declaration]
     631 |         irq_set_irq_type(ep->perst_irq,
         |         ^~~~~~~~~~~~~~~~
         |         irq_set_irq_wake
   drivers/pci/controller/pcie-rockchip-ep.c: In function 'rockchip_pcie_ep_setup_irq':
>> drivers/pci/controller/pcie-rockchip-ep.c:660:9: error: implicit declaration of function 'irq_set_status_flags' [-Werror=implicit-function-declaration]
     660 |         irq_set_status_flags(ep->perst_irq, IRQ_NOAUTOEN);
         |         ^~~~~~~~~~~~~~~~~~~~
>> drivers/pci/controller/pcie-rockchip-ep.c:660:45: error: 'IRQ_NOAUTOEN' undeclared (first use in this function); did you mean 'IRQF_NO_AUTOEN'?
     660 |         irq_set_status_flags(ep->perst_irq, IRQ_NOAUTOEN);
         |                                             ^~~~~~~~~~~~
         |                                             IRQF_NO_AUTOEN
   drivers/pci/controller/pcie-rockchip-ep.c:660:45: note: each undeclared identifier is reported only once for each function it appears in
   drivers/pci/controller/pcie-rockchip-ep.c: At top level:
   drivers/pci/controller/pcie-rockchip-ep.c:690:10: error: 'const struct pci_epc_ops' has no member named 'get_mem_map'
     690 |         .get_mem_map    = rockchip_pcie_ep_get_mem_map,
         |          ^~~~~~~~~~~
   drivers/pci/controller/pcie-rockchip-ep.c:690:27: error: initialization of 'int (*)(struct pci_epc *, u8,  u8,  phys_addr_t,  u64,  size_t)' {aka 'int (*)(struct pci_epc *, unsigned char,  unsigned char,  long long unsigned int,  long long unsigned int,  unsigned int)'} from incompatible pointer type 'int (*)(struct pci_epc *, u8,  u8,  struct pci_epc_map *)' {aka 'int (*)(struct pci_epc *, unsigned char,  unsigned char,  struct pci_epc_map *)'} [-Werror=incompatible-pointer-types]
     690 |         .get_mem_map    = rockchip_pcie_ep_get_mem_map,
         |                           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/pci/controller/pcie-rockchip-ep.c:690:27: note: (near initialization for 'rockchip_pcie_epc_ops.map_addr')
   drivers/pci/controller/pcie-rockchip-ep.c:691:27: warning: initialized field overwritten [-Woverride-init]
     691 |         .map_addr       = rockchip_pcie_ep_map_addr,
         |                           ^~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/pci/controller/pcie-rockchip-ep.c:691:27: note: (near initialization for 'rockchip_pcie_epc_ops.map_addr')
   cc1: some warnings being treated as errors

Kconfig warnings: (for reference only)
   WARNING: unmet direct dependencies detected for MODVERSIONS
   Depends on [n]: MODULES [=y] && !COMPILE_TEST [=y]
   Selected by [y]:
   - RANDSTRUCT_FULL [=y] && (CC_HAS_RANDSTRUCT [=n] || GCC_PLUGINS [=y]) && MODULES [=y]
   WARNING: unmet direct dependencies detected for GET_FREE_REGION
   Depends on [n]: SPARSEMEM [=n]
   Selected by [m]:
   - RESOURCE_KUNIT_TEST [=m] && RUNTIME_TESTING_MENU [=y] && KUNIT [=m]


vim +631 drivers/pci/controller/pcie-rockchip-ep.c

   618	
   619	static irqreturn_t rockchip_pcie_ep_perst_irq_thread(int irq, void *data)
   620	{
   621		struct pci_epc *epc = data;
   622		struct rockchip_pcie_ep *ep = epc_get_drvdata(epc);
   623		struct rockchip_pcie *rockchip = &ep->rockchip;
   624		u32 perst = gpiod_get_value(rockchip->perst_gpio);
   625	
   626		if (perst)
   627			rockchip_pcie_ep_perst_assert(ep);
   628		else
   629			rockchip_pcie_ep_perst_deassert(ep);
   630	
 > 631		irq_set_irq_type(ep->perst_irq,
   632				 (perst ? IRQF_TRIGGER_HIGH : IRQF_TRIGGER_LOW));
   633	
   634		return IRQ_HANDLED;
   635	}
   636	
   637	static int rockchip_pcie_ep_setup_irq(struct pci_epc *epc)
   638	{
   639		struct rockchip_pcie_ep *ep = epc_get_drvdata(epc);
   640		struct rockchip_pcie *rockchip = &ep->rockchip;
   641		struct device *dev = rockchip->dev;
   642		int ret;
   643	
   644		if (!rockchip->perst_gpio)
   645			return 0;
   646	
   647		/* PCIe reset interrupt */
   648		ep->perst_irq = gpiod_to_irq(rockchip->perst_gpio);
   649		if (ep->perst_irq < 0) {
   650			dev_err(dev, "No corresponding IRQ for PERST GPIO\n");
   651			return ep->perst_irq;
   652		}
   653	
   654		/*
   655		 * The perst_gpio is active low, so when it is inactive on start, it
   656		 * is high and will trigger the perst_irq handler. So treat this initial
   657		 * IRQ as a dummy one by faking the host asserting #PERST.
   658		 */
   659		ep->perst_asserted = true;
 > 660		irq_set_status_flags(ep->perst_irq, IRQ_NOAUTOEN);
   661		ret = devm_request_threaded_irq(dev, ep->perst_irq, NULL,
   662						rockchip_pcie_ep_perst_irq_thread,
   663						IRQF_TRIGGER_HIGH | IRQF_ONESHOT,
   664						"pcie-ep-perst", epc);
   665		if (ret) {
   666			dev_err(dev, "Request PERST GPIO IRQ failed %d\n", ret);
   667			return ret;
   668		}
   669	
   670		return 0;
   671	}
   672	

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
