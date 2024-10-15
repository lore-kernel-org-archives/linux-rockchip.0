Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3BBFCD18140
	for <linux-rockchip@archiver.kernel.org>; Tue, 15 Oct 2024 03:01:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nASDzt7bzXcW2Opu00+zJHtBZle92Dw2+VnEQsCzxd4=; b=YPXtmVwXhJYClX
	Ltk9Tc7QJXxqxJQtmPgmXbe7MhHbm2FtN9VJbIHu/VXREe+LMgwrI+CvZ0jUjMR/Apu7cfYclxJeU
	j5A0sFnNt/m5thWRuUZtuRNJZUMpJrfKmRnmhgL/OjFScF3jD5XV6jxaxcrOgOOL7BKSTHqPSAu5R
	D3BS0g6QybarJ2LEoXx+/cnc9SNWgjJUnBhR47HgfEaXFmku7xk+f2f41I6U/I7wY8uC3RKk2XO/I
	APlQobsB73CcHprXYy2wT63o4dqheaHPCrZ5ngu/C+cabk66sHmDT8edbGZI7VAKr2TO6T+U79xaj
	PXNMYMCh6kwiPfhAUxWQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t0XoR-00000006wiQ-3RbB;
	Tue, 15 Oct 2024 03:01:31 +0000
Received: from mgamail.intel.com ([198.175.65.20])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t0XoO-00000006whb-1SrY
	for linux-rockchip@lists.infradead.org;
	Tue, 15 Oct 2024 03:01:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1728961289; x=1760497289;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=ZDSJW6AZlrWrt8SKy6ggSRZZUMjPiGXUINlliwmwrnM=;
  b=dnzTwQkFFbkAFIMBbaYZoRjeB7C/IkwlTT3OJ9lfBTQI74/2Nph6f3zs
   UzOIQnS//VhaOA01roWzGmynPb6uH2NRtr0+UeJVHdpYnfY32TLAxMqvl
   rcpEYEi69tx8f+mlBc7qFdlj7mJreaQbx5Giw2Ts46rFhmjYmkoxljUkC
   6pjkSnDZ80G3IVj80q7wNPHKwjCWNfjYiO9TYZqDjQQMeo+Of9NQL6yII
   vjo/yqJobDLOe46tcHFg9QbkmQfCeJUJymrQ9vP4usWda0jkwLggNHIl1
   sDsN4VxK9JYps0hjB8mUXmwSDO97VNRoIT5spXua2rpo6brnGnTX/qQfL
   w==;
X-CSE-ConnectionGUID: vKPqSfYrRESgiokzDh7diw==
X-CSE-MsgGUID: HdOkGmnVTvGkNcES1eEERg==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="28121712"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; 
   d="scan'208";a="28121712"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
  by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 14 Oct 2024 20:01:28 -0700
X-CSE-ConnectionGUID: pEkus2NrS1CjtBqHPyV6kg==
X-CSE-MsgGUID: WaGLgJcASzWmsqvGzF096w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; 
   d="scan'208";a="82531736"
Received: from lkp-server01.sh.intel.com (HELO a48cf1aa22e8) ([10.239.97.150])
  by orviesa003.jf.intel.com with ESMTP; 14 Oct 2024 20:01:23 -0700
Received: from kbuild by a48cf1aa22e8 with local (Exim 4.96)
	(envelope-from <lkp@intel.com>)
	id 1t0XoG-000HWL-1B;
	Tue, 15 Oct 2024 03:01:20 +0000
Date: Tue, 15 Oct 2024 11:01:02 +0800
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
Subject: Re: [PATCH v4 12/12] PCI: rockchip-ep: Handle PERST# signal in
 endpoint mode
Message-ID: <202410151041.Hk5w4EL5-lkp@intel.com>
References: <20241011121408.89890-13-dlemoal@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20241011121408.89890-13-dlemoal@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241014_200128_514845_84B72B51 
X-CRM114-Status: GOOD (  13.05  )
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
config: i386-buildonly-randconfig-004-20241015 (https://download.01.org/0day-ci/archive/20241015/202410151041.Hk5w4EL5-lkp@intel.com/config)
compiler: clang version 18.1.8 (https://github.com/llvm/llvm-project 3b5b5c1ec4a3095ab096dd780e84d7ab81f3d7ff)
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20241015/202410151041.Hk5w4EL5-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202410151041.Hk5w4EL5-lkp@intel.com/

All errors (new ones prefixed by >>):

         |                                         ~~~^
   drivers/pci/controller/pcie-rockchip-ep.c:246:13: note: forward declaration of 'struct pci_epc_map'
     246 |                                         struct pci_epc_map *map)
         |                                                ^
   drivers/pci/controller/pcie-rockchip-ep.c:260:5: error: incomplete definition of type 'struct pci_epc_map'
     260 |         map->map_size = ALIGN(map->map_ofst + map->pci_size,
         |         ~~~^
   drivers/pci/controller/pcie-rockchip-ep.c:246:13: note: forward declaration of 'struct pci_epc_map'
     246 |                                         struct pci_epc_map *map)
         |                                                ^
   drivers/pci/controller/pcie-rockchip-ep.c:260:27: error: incomplete definition of type 'struct pci_epc_map'
     260 |         map->map_size = ALIGN(map->map_ofst + map->pci_size,
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
   drivers/pci/controller/pcie-rockchip-ep.c:246:13: note: forward declaration of 'struct pci_epc_map'
     246 |                                         struct pci_epc_map *map)
         |                                                ^
   drivers/pci/controller/pcie-rockchip-ep.c:260:43: error: incomplete definition of type 'struct pci_epc_map'
     260 |         map->map_size = ALIGN(map->map_ofst + map->pci_size,
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
   drivers/pci/controller/pcie-rockchip-ep.c:246:13: note: forward declaration of 'struct pci_epc_map'
     246 |                                         struct pci_epc_map *map)
         |                                                ^
   drivers/pci/controller/pcie-rockchip-ep.c:260:27: error: incomplete definition of type 'struct pci_epc_map'
     260 |         map->map_size = ALIGN(map->map_ofst + map->pci_size,
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
   drivers/pci/controller/pcie-rockchip-ep.c:246:13: note: forward declaration of 'struct pci_epc_map'
     246 |                                         struct pci_epc_map *map)
         |                                                ^
   drivers/pci/controller/pcie-rockchip-ep.c:260:43: error: incomplete definition of type 'struct pci_epc_map'
     260 |         map->map_size = ALIGN(map->map_ofst + map->pci_size,
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
   drivers/pci/controller/pcie-rockchip-ep.c:246:13: note: forward declaration of 'struct pci_epc_map'
     246 |                                         struct pci_epc_map *map)
         |                                                ^
   drivers/pci/controller/pcie-rockchip-ep.c:260:27: error: incomplete definition of type 'struct pci_epc_map'
     260 |         map->map_size = ALIGN(map->map_ofst + map->pci_size,
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
   drivers/pci/controller/pcie-rockchip-ep.c:246:13: note: forward declaration of 'struct pci_epc_map'
     246 |                                         struct pci_epc_map *map)
         |                                                ^
   drivers/pci/controller/pcie-rockchip-ep.c:260:43: error: incomplete definition of type 'struct pci_epc_map'
     260 |         map->map_size = ALIGN(map->map_ofst + map->pci_size,
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
   drivers/pci/controller/pcie-rockchip-ep.c:246:13: note: forward declaration of 'struct pci_epc_map'
     246 |                                         struct pci_epc_map *map)
         |                                                ^
>> drivers/pci/controller/pcie-rockchip-ep.c:631:2: error: call to undeclared function 'irq_set_irq_type'; ISO C99 and later do not support implicit function declarations [-Wimplicit-function-declaration]
     631 |         irq_set_irq_type(ep->perst_irq,
         |         ^
   drivers/pci/controller/pcie-rockchip-ep.c:631:2: note: did you mean 'irq_set_irq_wake'?
   include/linux/interrupt.h:489:12: note: 'irq_set_irq_wake' declared here
     489 | extern int irq_set_irq_wake(unsigned int irq, unsigned int on);
         |            ^
   fatal error: too many errors emitted, stopping now [-ferror-limit=]
   1 warning and 20 errors generated.

Kconfig warnings: (for reference only)
   WARNING: unmet direct dependencies detected for MODVERSIONS
   Depends on [n]: MODULES [=y] && !COMPILE_TEST [=y]
   Selected by [y]:
   - RANDSTRUCT_FULL [=y] && (CC_HAS_RANDSTRUCT [=y] || GCC_PLUGINS [=n]) && MODULES [=y]


vim +/irq_set_irq_type +631 drivers/pci/controller/pcie-rockchip-ep.c

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

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
