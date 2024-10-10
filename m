Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C4B1CCEE34E
	for <linux-rockchip@archiver.kernel.org>; Thu, 10 Oct 2024 03:44:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IIlRAcOEDeRJ26EJ9Ap/sVcyXQnv0OJfpG5kBUc8Xbk=; b=lF51gtk1i6Xi8E
	sZNeXmMtPQo8wI7J2uL6JL/JwQGERStzMGq7nmkvpyrhayTnSMKtc/ZzadTqxfXMQEiKa0snqfijV
	0whgWlbTGfpAfh41CqqQWgK+nG00VIzdyUcEwo/utoSgIaV5w+MEtbpS3J3CX4517l1vtCcSbe3Zh
	o8qfvsHVWtIrKf9htHAOIm4ry8SEf1I2+d4QeYcKFgXW9BACtDW72MoDbcvt36viSe7GDgyMVKOm2
	cJS5lTZhSb32LalhXjPKeAv8APqtOSvHNWcxF+pZ2qFIOrzAc9yMn3bhMya7t96r+JQUdNrvRfoW6
	sZmqvP9Iiw6QeJ7TYSQg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1syk6d-0000000BQkx-2yOX;
	Thu, 10 Oct 2024 03:44:51 +0000
Received: from mgamail.intel.com ([192.198.163.11])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1syk6a-0000000BQjR-3FT9
	for linux-rockchip@lists.infradead.org;
	Thu, 10 Oct 2024 03:44:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1728531889; x=1760067889;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=yFdYEg5rFGEP5S/sD0FVRqXqdQYwiHvsWbK0EjjO8Ec=;
  b=l7XsfRsIr3HA3Q9uv3GByt9jmhA4ynC+3B7XcI6ch7GUgSC0bv82/d9L
   9hbx4iUL4bynJDGzfOtOQHN+3KdBkEP704I6+fLZgHoRZuRpTcu/2DbHg
   81pB9kOdUIrWjnpL4EaHIcGhqd1AdHjIdroeW6R3vWNvdBY4wEiWx3/v0
   rznOf+05S6tExaWV0NOAVcK7IoCG9uPo92jurii4Hz3W5xIcPb+0uA7qE
   hbFW0f1Ijk/ug8GVxcyNU4VGxE0MKIoFrrrjITDrtPoNjk4E/uR2fKrCX
   ArK+Jjq5n6iYgJra0QYezVqKt0dadQ6/JZY3Sp/1IF7z0DGatehAPLPbJ
   A==;
X-CSE-ConnectionGUID: EkBl7JQWRmep/oqkWYcLsA==
X-CSE-MsgGUID: 6I54AoLBTYCaMMwHKf2jzw==
X-IronPort-AV: E=McAfee;i="6700,10204,11220"; a="38452271"
X-IronPort-AV: E=Sophos;i="6.11,191,1725346800"; 
   d="scan'208";a="38452271"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
  by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 09 Oct 2024 20:44:48 -0700
X-CSE-ConnectionGUID: Y8VVCO4AQLO/TJOocVVzsA==
X-CSE-MsgGUID: gLt6/uliQFSDQ80g5w6mmQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,191,1725346800"; 
   d="scan'208";a="107298148"
Received: from lkp-server01.sh.intel.com (HELO a48cf1aa22e8) ([10.239.97.150])
  by orviesa002.jf.intel.com with ESMTP; 09 Oct 2024 20:44:43 -0700
Received: from kbuild by a48cf1aa22e8 with local (Exim 4.96)
	(envelope-from <lkp@intel.com>)
	id 1syk6S-000A7n-2g;
	Thu, 10 Oct 2024 03:44:40 +0000
Date: Thu, 10 Oct 2024 11:44:08 +0800
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
	Wilfred Mallawa <wilfred.mallawa@wdc.com>,
	Niklas Cassel <cassel@kernel.org>
Subject: Re: [PATCH v3 05/12] PCI: rockchip-ep: Implement the .map_align()
 controller operation
Message-ID: <202410101109.J2ej9dSg-lkp@intel.com>
References: <20241007041218.157516-6-dlemoal@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20241007041218.157516-6-dlemoal@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241009_204448_858594_18DEA1BC 
X-CRM114-Status: GOOD (  13.59  )
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
[also build test ERROR on pci/for-linus mani-mhi/mhi-next linus/master v6.12-rc2 next-20241009]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Damien-Le-Moal/PCI-rockchip-ep-Use-a-macro-to-define-EP-controller-align-feature/20241007-131224
base:   https://git.kernel.org/pub/scm/linux/kernel/git/pci/pci.git next
patch link:    https://lore.kernel.org/r/20241007041218.157516-6-dlemoal%40kernel.org
patch subject: [PATCH v3 05/12] PCI: rockchip-ep: Implement the .map_align() controller operation
config: i386-buildonly-randconfig-003-20241010 (https://download.01.org/0day-ci/archive/20241010/202410101109.J2ej9dSg-lkp@intel.com/config)
compiler: clang version 18.1.8 (https://github.com/llvm/llvm-project 3b5b5c1ec4a3095ab096dd780e84d7ab81f3d7ff)
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20241010/202410101109.J2ej9dSg-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202410101109.J2ej9dSg-lkp@intel.com/

All error/warnings (new ones prefixed by >>):

>> drivers/pci/controller/pcie-rockchip-ep.c:239:18: warning: declaration of 'struct pci_epc_map' will not be visible outside of this function [-Wvisibility]
     239 |                                       struct pci_epc_map *map)
         |                                              ^
>> drivers/pci/controller/pcie-rockchip-ep.c:245:10: error: incomplete definition of type 'struct pci_epc_map'
     245 |                                                 map->pci_addr, map->pci_size);
         |                                                 ~~~^
   drivers/pci/controller/pcie-rockchip-ep.c:239:18: note: forward declaration of 'struct pci_epc_map'
     239 |                                       struct pci_epc_map *map)
         |                                              ^
   drivers/pci/controller/pcie-rockchip-ep.c:245:25: error: incomplete definition of type 'struct pci_epc_map'
     245 |                                                 map->pci_addr, map->pci_size);
         |                                                                ~~~^
   drivers/pci/controller/pcie-rockchip-ep.c:239:18: note: forward declaration of 'struct pci_epc_map'
     239 |                                       struct pci_epc_map *map)
         |                                              ^
   drivers/pci/controller/pcie-rockchip-ep.c:247:5: error: incomplete definition of type 'struct pci_epc_map'
     247 |         map->map_pci_addr = map->pci_addr & ~((1ULL << num_bits) - 1);
         |         ~~~^
   drivers/pci/controller/pcie-rockchip-ep.c:239:18: note: forward declaration of 'struct pci_epc_map'
     239 |                                       struct pci_epc_map *map)
         |                                              ^
   drivers/pci/controller/pcie-rockchip-ep.c:247:25: error: incomplete definition of type 'struct pci_epc_map'
     247 |         map->map_pci_addr = map->pci_addr & ~((1ULL << num_bits) - 1);
         |                             ~~~^
   drivers/pci/controller/pcie-rockchip-ep.c:239:18: note: forward declaration of 'struct pci_epc_map'
     239 |                                       struct pci_epc_map *map)
         |                                              ^
   drivers/pci/controller/pcie-rockchip-ep.c:248:5: error: incomplete definition of type 'struct pci_epc_map'
     248 |         map->map_ofst = map->pci_addr - map->map_pci_addr;
         |         ~~~^
   drivers/pci/controller/pcie-rockchip-ep.c:239:18: note: forward declaration of 'struct pci_epc_map'
     239 |                                       struct pci_epc_map *map)
         |                                              ^
   drivers/pci/controller/pcie-rockchip-ep.c:248:21: error: incomplete definition of type 'struct pci_epc_map'
     248 |         map->map_ofst = map->pci_addr - map->map_pci_addr;
         |                         ~~~^
   drivers/pci/controller/pcie-rockchip-ep.c:239:18: note: forward declaration of 'struct pci_epc_map'
     239 |                                       struct pci_epc_map *map)
         |                                              ^
   drivers/pci/controller/pcie-rockchip-ep.c:248:37: error: incomplete definition of type 'struct pci_epc_map'
     248 |         map->map_ofst = map->pci_addr - map->map_pci_addr;
         |                                         ~~~^
   drivers/pci/controller/pcie-rockchip-ep.c:239:18: note: forward declaration of 'struct pci_epc_map'
     239 |                                       struct pci_epc_map *map)
         |                                              ^
   drivers/pci/controller/pcie-rockchip-ep.c:250:9: error: incomplete definition of type 'struct pci_epc_map'
     250 |         if (map->map_ofst + map->pci_size > SZ_1M)
         |             ~~~^
   drivers/pci/controller/pcie-rockchip-ep.c:239:18: note: forward declaration of 'struct pci_epc_map'
     239 |                                       struct pci_epc_map *map)
         |                                              ^
   drivers/pci/controller/pcie-rockchip-ep.c:250:25: error: incomplete definition of type 'struct pci_epc_map'
     250 |         if (map->map_ofst + map->pci_size > SZ_1M)
         |                             ~~~^
   drivers/pci/controller/pcie-rockchip-ep.c:239:18: note: forward declaration of 'struct pci_epc_map'
     239 |                                       struct pci_epc_map *map)
         |                                              ^
   drivers/pci/controller/pcie-rockchip-ep.c:251:6: error: incomplete definition of type 'struct pci_epc_map'
     251 |                 map->pci_size = SZ_1M - map->map_ofst;
         |                 ~~~^
   drivers/pci/controller/pcie-rockchip-ep.c:239:18: note: forward declaration of 'struct pci_epc_map'
     239 |                                       struct pci_epc_map *map)
         |                                              ^
   drivers/pci/controller/pcie-rockchip-ep.c:251:30: error: incomplete definition of type 'struct pci_epc_map'
     251 |                 map->pci_size = SZ_1M - map->map_ofst;
         |                                         ~~~^
   drivers/pci/controller/pcie-rockchip-ep.c:239:18: note: forward declaration of 'struct pci_epc_map'
     239 |                                       struct pci_epc_map *map)
         |                                              ^
   drivers/pci/controller/pcie-rockchip-ep.c:253:5: error: incomplete definition of type 'struct pci_epc_map'
     253 |         map->map_size = ALIGN(map->map_ofst + map->pci_size,
         |         ~~~^
   drivers/pci/controller/pcie-rockchip-ep.c:239:18: note: forward declaration of 'struct pci_epc_map'
     239 |                                       struct pci_epc_map *map)
         |                                              ^
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
   drivers/pci/controller/pcie-rockchip-ep.c:239:18: note: forward declaration of 'struct pci_epc_map'
     239 |                                       struct pci_epc_map *map)
         |                                              ^
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
   drivers/pci/controller/pcie-rockchip-ep.c:239:18: note: forward declaration of 'struct pci_epc_map'
     239 |                                       struct pci_epc_map *map)


vim +245 drivers/pci/controller/pcie-rockchip-ep.c

   237	
   238	static int rockchip_pcie_ep_map_align(struct pci_epc *epc, u8 fn, u8 vfn,
 > 239					      struct pci_epc_map *map)
   240	{
   241		struct rockchip_pcie_ep *ep = epc_get_drvdata(epc);
   242		int num_bits;
   243	
   244		num_bits = rockchip_pcie_ep_ob_atu_num_bits(&ep->rockchip,
 > 245							map->pci_addr, map->pci_size);
   246	
   247		map->map_pci_addr = map->pci_addr & ~((1ULL << num_bits) - 1);
   248		map->map_ofst = map->pci_addr - map->map_pci_addr;
   249	
   250		if (map->map_ofst + map->pci_size > SZ_1M)
   251			map->pci_size = SZ_1M - map->map_ofst;
   252	
   253		map->map_size = ALIGN(map->map_ofst + map->pci_size,
   254				      ROCKCHIP_PCIE_AT_SIZE_ALIGN);
   255	
   256		return 0;
   257	}
   258	

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
