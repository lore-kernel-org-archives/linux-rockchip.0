Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 87706CFC501
	for <linux-rockchip@archiver.kernel.org>; Tue, 15 Oct 2024 01:16:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=W92a5NQmDHvwZ1rhpEAQ8xXLKOl68Ta2Q8tykwvaP8g=; b=jSvwAoul6hzmq6
	YTwwP0uZ3rWbIzQIr2LlKS0cMKRVvMyNs9SyxHyFmMZ9R5utFoOf7MBFo+7ko8bwV7NYm0ba40XxF
	lodL9aT0iC688bUpbI2WDgAxUt3JCRWOT6+eXo85/OjpcVaMkASwBYmkozZcMOY8XunxfwezUovue
	iPUhqOR1jLrqE90KTC93jjflMLwC9zizZlefNE19YQldejFaw98TnBqQz/UZf4v4u6d7BdlnPAZFy
	XdEU3nSKUaZorXL4AzotE5aJRbcH+YcKVuPiwrfaptczUalzw8IwiG3Jx5VC/su6XvK6FpjkPCQwg
	zS0tKQ5jYCsL5KMSSmyg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t0WB1-00000006kxe-0sn2;
	Tue, 15 Oct 2024 01:16:43 +0000
Received: from mgamail.intel.com ([198.175.65.16])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t0W9j-00000006kpF-2mSj
	for linux-rockchip@lists.infradead.org;
	Tue, 15 Oct 2024 01:15:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1728954923; x=1760490923;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=tFFxkvJ0G3O9R7IGRFe5DD3b6MrHUakutTB8YIqz40k=;
  b=e499AQyv3iDFIc6DgSUG78faTwDkGDzYVGj6eTRaiF+E+Dl63hR7Ga5J
   YnwF6EW4fGGNtavSJwdO3eucZ/VuLX019bXk22vqEjpf3MNyttEpIq5gd
   OpKgeOkiKSdXwZoZQE99S2lJPgI0nfRiScKL42ov2JaLvpubH18pFq1kd
   94M3rZDIBrzPMvIT2JHUcCX+wDhRAYIE6Dwr6XGP48m+ntdt9MPB35RDy
   5eC3wJqyfjvuMx76x4O2MXP4HY6bvasBhUEBtMs15Hr6/lhgv243Olhpt
   Mt/niZhXJQqqqEf752E1hPjfRFxLFH30wn+4CxlfysxMBjNnFIE4miAAO
   w==;
X-CSE-ConnectionGUID: XNgQX4l3QdyIyXBSsrkcIA==
X-CSE-MsgGUID: MT4uB3LfQdCVyfy4xbNCHg==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="28414161"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; 
   d="scan'208";a="28414161"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
  by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 14 Oct 2024 18:15:22 -0700
X-CSE-ConnectionGUID: 43tRWbA8TbGV15YSeWVcUw==
X-CSE-MsgGUID: LQpjPfJLRDGAERZYGjE8kg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,204,1725346800"; 
   d="scan'208";a="77406950"
Received: from lkp-server01.sh.intel.com (HELO a48cf1aa22e8) ([10.239.97.150])
  by fmviesa007.fm.intel.com with ESMTP; 14 Oct 2024 18:15:18 -0700
Received: from kbuild by a48cf1aa22e8 with local (Exim 4.96)
	(envelope-from <lkp@intel.com>)
	id 1t0W9b-000HQ7-2g;
	Tue, 15 Oct 2024 01:15:15 +0000
Date: Tue, 15 Oct 2024 09:15:02 +0800
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
Cc: llvm@lists.linux.dev, oe-kbuild-all@lists.linux.dev,
	linux-rockchip@lists.infradead.org,
	Rick Wertenbroek <rick.wertenbroek@gmail.com>,
	Niklas Cassel <cassel@kernel.org>
Subject: Re: [PATCH v4 05/12] PCI: rockchip-ep: Implement the
 pci_epc_ops::get_mem_map() operation
Message-ID: <202410150801.vWDev1xr-lkp@intel.com>
References: <20241011121408.89890-6-dlemoal@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20241011121408.89890-6-dlemoal@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241014_181523_784593_EC1D7C1D 
X-CRM114-Status: GOOD (  12.46  )
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
patch link:    https://lore.kernel.org/r/20241011121408.89890-6-dlemoal%40kernel.org
patch subject: [PATCH v4 05/12] PCI: rockchip-ep: Implement the pci_epc_ops::get_mem_map() operation
config: i386-buildonly-randconfig-004-20241015 (https://download.01.org/0day-ci/archive/20241015/202410150801.vWDev1xr-lkp@intel.com/config)
compiler: clang version 18.1.8 (https://github.com/llvm/llvm-project 3b5b5c1ec4a3095ab096dd780e84d7ab81f3d7ff)
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20241015/202410150801.vWDev1xr-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202410150801.vWDev1xr-lkp@intel.com/

All errors (new ones prefixed by >>):

         |                                         ~~~^
   drivers/pci/controller/pcie-rockchip-ep.c:239:13: note: forward declaration of 'struct pci_epc_map'
     239 |                                         struct pci_epc_map *map)
         |                                                ^
   drivers/pci/controller/pcie-rockchip-ep.c:253:5: error: incomplete definition of type 'struct pci_epc_map'
     253 |         map->map_size = ALIGN(map->map_ofst + map->pci_size,
         |         ~~~^
   drivers/pci/controller/pcie-rockchip-ep.c:239:13: note: forward declaration of 'struct pci_epc_map'
     239 |                                         struct pci_epc_map *map)
         |                                                ^
   drivers/pci/controller/pcie-rockchip-ep.c:253:27: error: incomplete definition of type 'struct pci_epc_map'
     253 |         map->map_size = ALIGN(map->map_ofst + map->pci_size,
         |                               ~~~^
   include/linux/align.h:8:38: note: expanded from macro 'ALIGN'
       8 | #define ALIGN(x, a)             __ALIGN_KERNEL((x), (a))
         |                                                 ^
   include/uapi/linux/const.h:48:51: note: expanded from macro '__ALIGN_KERNEL'
      48 | #define __ALIGN_KERNEL(x, a)            __ALIGN_KERNEL_MASK(x, (__typeof__(x))(a) - 1)
         |                                                             ^
   include/uapi/linux/const.h:49:41: note: expanded from macro '__ALIGN_KERNEL_MASK'
      49 | #define __ALIGN_KERNEL_MASK(x, mask)    (((x) + (mask)) & ~(mask))
         |                                            ^
   drivers/pci/controller/pcie-rockchip-ep.c:239:13: note: forward declaration of 'struct pci_epc_map'
     239 |                                         struct pci_epc_map *map)
         |                                                ^
   drivers/pci/controller/pcie-rockchip-ep.c:253:43: error: incomplete definition of type 'struct pci_epc_map'
     253 |         map->map_size = ALIGN(map->map_ofst + map->pci_size,
         |                                               ~~~^
   include/linux/align.h:8:38: note: expanded from macro 'ALIGN'
       8 | #define ALIGN(x, a)             __ALIGN_KERNEL((x), (a))
         |                                                 ^
   include/uapi/linux/const.h:48:51: note: expanded from macro '__ALIGN_KERNEL'
      48 | #define __ALIGN_KERNEL(x, a)            __ALIGN_KERNEL_MASK(x, (__typeof__(x))(a) - 1)
         |                                                             ^
   include/uapi/linux/const.h:49:41: note: expanded from macro '__ALIGN_KERNEL_MASK'
      49 | #define __ALIGN_KERNEL_MASK(x, mask)    (((x) + (mask)) & ~(mask))
         |                                            ^
   drivers/pci/controller/pcie-rockchip-ep.c:239:13: note: forward declaration of 'struct pci_epc_map'
     239 |                                         struct pci_epc_map *map)
         |                                                ^
   drivers/pci/controller/pcie-rockchip-ep.c:253:27: error: incomplete definition of type 'struct pci_epc_map'
     253 |         map->map_size = ALIGN(map->map_ofst + map->pci_size,
         |                               ~~~^
   include/linux/align.h:8:38: note: expanded from macro 'ALIGN'
       8 | #define ALIGN(x, a)             __ALIGN_KERNEL((x), (a))
         |                                                 ^
   include/uapi/linux/const.h:48:66: note: expanded from macro '__ALIGN_KERNEL'
      48 | #define __ALIGN_KERNEL(x, a)            __ALIGN_KERNEL_MASK(x, (__typeof__(x))(a) - 1)
         |                                                                            ^
   include/uapi/linux/const.h:49:47: note: expanded from macro '__ALIGN_KERNEL_MASK'
      49 | #define __ALIGN_KERNEL_MASK(x, mask)    (((x) + (mask)) & ~(mask))
         |                                                  ^~~~
   drivers/pci/controller/pcie-rockchip-ep.c:239:13: note: forward declaration of 'struct pci_epc_map'
     239 |                                         struct pci_epc_map *map)
         |                                                ^
   drivers/pci/controller/pcie-rockchip-ep.c:253:43: error: incomplete definition of type 'struct pci_epc_map'
     253 |         map->map_size = ALIGN(map->map_ofst + map->pci_size,
         |                                               ~~~^
   include/linux/align.h:8:38: note: expanded from macro 'ALIGN'
       8 | #define ALIGN(x, a)             __ALIGN_KERNEL((x), (a))
         |                                                 ^
   include/uapi/linux/const.h:48:66: note: expanded from macro '__ALIGN_KERNEL'
      48 | #define __ALIGN_KERNEL(x, a)            __ALIGN_KERNEL_MASK(x, (__typeof__(x))(a) - 1)
         |                                                                            ^
   include/uapi/linux/const.h:49:47: note: expanded from macro '__ALIGN_KERNEL_MASK'
      49 | #define __ALIGN_KERNEL_MASK(x, mask)    (((x) + (mask)) & ~(mask))
         |                                                  ^~~~
   drivers/pci/controller/pcie-rockchip-ep.c:239:13: note: forward declaration of 'struct pci_epc_map'
     239 |                                         struct pci_epc_map *map)
         |                                                ^
   drivers/pci/controller/pcie-rockchip-ep.c:253:27: error: incomplete definition of type 'struct pci_epc_map'
     253 |         map->map_size = ALIGN(map->map_ofst + map->pci_size,
         |                               ~~~^
   include/linux/align.h:8:38: note: expanded from macro 'ALIGN'
       8 | #define ALIGN(x, a)             __ALIGN_KERNEL((x), (a))
         |                                                 ^
   include/uapi/linux/const.h:48:66: note: expanded from macro '__ALIGN_KERNEL'
      48 | #define __ALIGN_KERNEL(x, a)            __ALIGN_KERNEL_MASK(x, (__typeof__(x))(a) - 1)
         |                                                                            ^
   include/uapi/linux/const.h:49:58: note: expanded from macro '__ALIGN_KERNEL_MASK'
      49 | #define __ALIGN_KERNEL_MASK(x, mask)    (((x) + (mask)) & ~(mask))
         |                                                             ^~~~
   drivers/pci/controller/pcie-rockchip-ep.c:239:13: note: forward declaration of 'struct pci_epc_map'
     239 |                                         struct pci_epc_map *map)
         |                                                ^
   drivers/pci/controller/pcie-rockchip-ep.c:253:43: error: incomplete definition of type 'struct pci_epc_map'
     253 |         map->map_size = ALIGN(map->map_ofst + map->pci_size,
         |                                               ~~~^
   include/linux/align.h:8:38: note: expanded from macro 'ALIGN'
       8 | #define ALIGN(x, a)             __ALIGN_KERNEL((x), (a))
         |                                                 ^
   include/uapi/linux/const.h:48:66: note: expanded from macro '__ALIGN_KERNEL'
      48 | #define __ALIGN_KERNEL(x, a)            __ALIGN_KERNEL_MASK(x, (__typeof__(x))(a) - 1)
         |                                                                            ^
   include/uapi/linux/const.h:49:58: note: expanded from macro '__ALIGN_KERNEL_MASK'
      49 | #define __ALIGN_KERNEL_MASK(x, mask)    (((x) + (mask)) & ~(mask))
         |                                                             ^~~~
   drivers/pci/controller/pcie-rockchip-ep.c:239:13: note: forward declaration of 'struct pci_epc_map'
     239 |                                         struct pci_epc_map *map)
         |                                                ^
>> drivers/pci/controller/pcie-rockchip-ep.c:482:3: error: field designator 'get_mem_map' does not refer to any field in type 'const struct pci_epc_ops'
     482 |         .get_mem_map    = rockchip_pcie_ep_get_mem_map,
         |         ~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   1 warning and 19 errors generated.

Kconfig warnings: (for reference only)
   WARNING: unmet direct dependencies detected for MODVERSIONS
   Depends on [n]: MODULES [=y] && !COMPILE_TEST [=y]
   Selected by [y]:
   - RANDSTRUCT_FULL [=y] && (CC_HAS_RANDSTRUCT [=y] || GCC_PLUGINS [=n]) && MODULES [=y]


vim +482 drivers/pci/controller/pcie-rockchip-ep.c

   477	
   478	static const struct pci_epc_ops rockchip_pcie_epc_ops = {
   479		.write_header	= rockchip_pcie_ep_write_header,
   480		.set_bar	= rockchip_pcie_ep_set_bar,
   481		.clear_bar	= rockchip_pcie_ep_clear_bar,
 > 482		.get_mem_map	= rockchip_pcie_ep_get_mem_map,
   483		.map_addr	= rockchip_pcie_ep_map_addr,
   484		.unmap_addr	= rockchip_pcie_ep_unmap_addr,
   485		.set_msi	= rockchip_pcie_ep_set_msi,
   486		.get_msi	= rockchip_pcie_ep_get_msi,
   487		.raise_irq	= rockchip_pcie_ep_raise_irq,
   488		.start		= rockchip_pcie_ep_start,
   489		.get_features	= rockchip_pcie_ep_get_features,
   490	};
   491	

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
