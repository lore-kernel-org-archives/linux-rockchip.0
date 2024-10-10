Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E7CFECF07A2
	for <linux-rockchip@archiver.kernel.org>; Thu, 10 Oct 2024 04:36:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Bmo2jAyrtFj/jUJhg3s28JkXKVNVdk47/p+m/llGJ8g=; b=eZ7GTBZyeSTx4o
	5+s03w9REZH1CFYhk0tLgIiAABu8OOYhgGHFJLhGukb1fzUE8iKRJHdA3j/DtbKGqAPds5IAm5EiS
	EDM3Lxd+WuLwMQo59Ikkc4r3JEBCNf2JEQZkahb5IPHOelyrj8eR3b1zx/0Ok+kLa2oGIjVJt3gQJ
	tN5o0eEcPeJLuDG/0HGktm0oD1hSTHy/lc8zBIhAeipwk2nZ2C5CS39ZmkF/f0XzHN0XZptQ0/2wf
	Bc8uU8cwq61jkg5TFS9DFazVMg1YPeB1ZMPHjSwlXv57Ndbt9wQOUMwqKZIcrXqaafrQPVkxU14lW
	zxUC80IuhvOpzdVoL6uw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1sykuA-0000000BUad-1iDa;
	Thu, 10 Oct 2024 04:36:02 +0000
Received: from mgamail.intel.com ([192.198.163.7])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1syku6-0000000BUZr-3wu7
	for linux-rockchip@lists.infradead.org;
	Thu, 10 Oct 2024 04:36:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1728534959; x=1760070959;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=P85mdDr+6ogvc7JrH7HIaL8upROhQg5PhLxmzsIJZTo=;
  b=SVhek9zDOj7FQ78PkAR2D3HGDtnnU9T8UX8dfUYPzxay3tZEN7Hp1HAE
   hxuuhVjzpF7vcbcX7RFMYTx8ePdVWT4yM8xspVxwq4cGCzse3YiHP9N19
   WZEAWte02wPhisqSbaa8F8TNJUzLIFUbxma8ti3tOvSdpY3FlFo3+VtLo
   aSDgwOEjD+NNTiFiCFyve19g2DImJKVJ0YXAZo2EaYTsA50m6IEEIxpA6
   uh2hvGPgScY2Q/8hjm9pTKn/phJVUnK8A+WitzvB/hLCY46nUMfvnxxAU
   3cKzEM+Hv1b3BSFY2CgBnkGm83vrn8zVpFonNfFzPF/1u5irf3rYZUxzX
   A==;
X-CSE-ConnectionGUID: 4Uig3oibTSCgVbopTVR69g==
X-CSE-MsgGUID: CoO3R9amSBGaLDFZCazl6g==
X-IronPort-AV: E=McAfee;i="6700,10204,11220"; a="53274705"
X-IronPort-AV: E=Sophos;i="6.11,191,1725346800"; 
   d="scan'208";a="53274705"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
  by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 09 Oct 2024 21:35:51 -0700
X-CSE-ConnectionGUID: Kvf6ziAXT1Kw8s+mZR5MtA==
X-CSE-MsgGUID: pH6/SfkPTI6TJOnBgJXu/w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,191,1725346800"; 
   d="scan'208";a="76403777"
Received: from lkp-server01.sh.intel.com (HELO a48cf1aa22e8) ([10.239.97.150])
  by orviesa009.jf.intel.com with ESMTP; 09 Oct 2024 21:35:48 -0700
Received: from kbuild by a48cf1aa22e8 with local (Exim 4.96)
	(envelope-from <lkp@intel.com>)
	id 1syktt-000ABR-0T;
	Thu, 10 Oct 2024 04:35:45 +0000
Date: Thu, 10 Oct 2024 12:35:35 +0800
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
	Wilfred Mallawa <wilfred.mallawa@wdc.com>,
	Niklas Cassel <cassel@kernel.org>
Subject: Re: [PATCH v3 12/12] PCI: rockchip-ep: Handle PERST# signal in
 endpoint mode
Message-ID: <202410101236.xqI8ZWNd-lkp@intel.com>
References: <20241007041218.157516-13-dlemoal@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20241007041218.157516-13-dlemoal@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241009_213559_032784_C1627B90 
X-CRM114-Status: GOOD (  19.75  )
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
patch link:    https://lore.kernel.org/r/20241007041218.157516-13-dlemoal%40kernel.org
patch subject: [PATCH v3 12/12] PCI: rockchip-ep: Handle PERST# signal in endpoint mode
config: sparc-allyesconfig (https://download.01.org/0day-ci/archive/20241010/202410101236.xqI8ZWNd-lkp@intel.com/config)
compiler: sparc64-linux-gcc (GCC) 14.1.0
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20241010/202410101236.xqI8ZWNd-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202410101236.xqI8ZWNd-lkp@intel.com/

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
>> drivers/pci/controller/pcie-rockchip-ep.c:631:9: error: implicit declaration of function 'irq_set_irq_type'; did you mean 'irq_set_irq_wake'? [-Wimplicit-function-declaration]
     631 |         irq_set_irq_type(ep->perst_irq,
         |         ^~~~~~~~~~~~~~~~
         |         irq_set_irq_wake
   drivers/pci/controller/pcie-rockchip-ep.c: In function 'rockchip_pcie_ep_setup_irq':
>> drivers/pci/controller/pcie-rockchip-ep.c:655:9: error: implicit declaration of function 'irq_set_status_flags' [-Wimplicit-function-declaration]
     655 |         irq_set_status_flags(ep->perst_irq, IRQ_NOAUTOEN);
         |         ^~~~~~~~~~~~~~~~~~~~
>> drivers/pci/controller/pcie-rockchip-ep.c:655:45: error: 'IRQ_NOAUTOEN' undeclared (first use in this function); did you mean 'IRQF_NO_AUTOEN'?
     655 |         irq_set_status_flags(ep->perst_irq, IRQ_NOAUTOEN);
         |                                             ^~~~~~~~~~~~
         |                                             IRQF_NO_AUTOEN
   drivers/pci/controller/pcie-rockchip-ep.c:655:45: note: each undeclared identifier is reported only once for each function it appears in
   drivers/pci/controller/pcie-rockchip-ep.c: At top level:
   drivers/pci/controller/pcie-rockchip-ep.c:685:10: error: 'const struct pci_epc_ops' has no member named 'map_align'
     685 |         .map_align      = rockchip_pcie_ep_map_align,
         |          ^~~~~~~~~
   drivers/pci/controller/pcie-rockchip-ep.c:685:27: error: initialization of 'int (*)(struct pci_epc *, u8,  u8,  phys_addr_t,  u64,  size_t)' {aka 'int (*)(struct pci_epc *, unsigned char,  unsigned char,  long long unsigned int,  long long unsigned int,  long unsigned int)'} from incompatible pointer type 'int (*)(struct pci_epc *, u8,  u8,  struct pci_epc_map *)' {aka 'int (*)(struct pci_epc *, unsigned char,  unsigned char,  struct pci_epc_map *)'} [-Wincompatible-pointer-types]
     685 |         .map_align      = rockchip_pcie_ep_map_align,
         |                           ^~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/pci/controller/pcie-rockchip-ep.c:685:27: note: (near initialization for 'rockchip_pcie_epc_ops.map_addr')
   drivers/pci/controller/pcie-rockchip-ep.c:686:27: warning: initialized field overwritten [-Woverride-init]
     686 |         .map_addr       = rockchip_pcie_ep_map_addr,
         |                           ^~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/pci/controller/pcie-rockchip-ep.c:686:27: note: (near initialization for 'rockchip_pcie_epc_ops.map_addr')


vim +631 drivers/pci/controller/pcie-rockchip-ep.c

   618	
   619	static irqreturn_t rockchip_pcie_ep_perst_irq_thread(int irq, void *data)
   620	{
   621		struct pci_epc *epc = data;
   622		struct rockchip_pcie_ep *ep = epc_get_drvdata(epc);
   623		struct rockchip_pcie *rockchip = &ep->rockchip;
   624		u32 perst = gpiod_get_value(rockchip->ep_gpio);
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
   644		if (!rockchip->ep_gpio)
   645			return 0;
   646	
   647		/* PCIe reset interrupt */
   648		ep->perst_irq = gpiod_to_irq(rockchip->ep_gpio);
   649		if (ep->perst_irq < 0) {
   650			dev_err(dev, "No corresponding IRQ for PERST GPIO\n");
   651			return ep->perst_irq;
   652		}
   653	
   654		ep->perst_asserted = true;
 > 655		irq_set_status_flags(ep->perst_irq, IRQ_NOAUTOEN);
   656		ret = devm_request_threaded_irq(dev, ep->perst_irq, NULL,
   657						rockchip_pcie_ep_perst_irq_thread,
   658						IRQF_TRIGGER_HIGH | IRQF_ONESHOT,
   659						"pcie-ep-perst", epc);
   660		if (ret) {
   661			dev_err(dev, "Request PERST GPIO IRQ failed %d\n", ret);
   662			return ret;
   663		}
   664	
   665		return 0;
   666	}
   667	

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
