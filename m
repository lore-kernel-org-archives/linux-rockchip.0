Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 77419C27C79
	for <linux-rockchip@archiver.kernel.org>; Thu, 20 Jun 2024 03:28:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DHhWd43f6iLSsjW0gK3xI8ArdDG7O3cgKVjl9AGcQTQ=; b=yL810cO1qQW+D+
	cziyxH4EWE65Hv8STey93XwH6U9UN3eW9/gTUuvtwpNj5zlMD0pJuAUH7f2y2AXrpFkU06W8v+cir
	2g5lMIVxMMrGX+zTGfOc+qJaBra9ZKIeH6X/BxNhzBVIAmewiks04NknP74nywakX1YLRKV7TapKY
	OLHwotxRL9Pjl4bm05RNhBsMBASconjSJFrRFEtaCMR3GtEdTZ6S+Ew6FK1exg1kPk1TCC7BNX73F
	KqFyA5Qyz3UWZT/10Psy+G6vFXTAo+HMzu5hYaU5+Fi/HpBe5uW4qMeVxjMQGamnAYpJROMwB6MWs
	Oi5MPfCJtUfM76d1Nvng==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sK8TE-00000003T8T-3LnX;
	Thu, 20 Jun 2024 03:28:20 +0000
Received: from mgamail.intel.com ([192.198.163.16])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sK8TB-00000003T7s-19H4;
	Thu, 20 Jun 2024 03:28:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1718854097; x=1750390097;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=vp8t5n8rFVShQT8gyp2X5h16GPqlHOy09DNcnwnr8sk=;
  b=NYNWPkQeXXJRIvkq56gV3RYa11IEYKYu5KlUb+3FL/ejUF0UcK/ushdh
   FWPe2sXVv1T9NoqRDU4eFeXD6bN79vqlWUs3CEw6Vk/LAaJCXnWgZs2F6
   G8ZChgaLQ1fUH1PEbHOcwUZjemrnq8tzReuTT7Xn6QMPv5ZETRzcAe/Fr
   ldvwZeujTJEQGgKo5IO0z6zoUDMCvFCgC8McoUebCqu3Wm+nay3y0iOXT
   1BzQmq0zaWN5S8gqUjpqmqW4qsRHxAU23wa5XqaZjMTMTLKMD0hYlXoor
   4i2ffq40xH3eUI8cPMtGWN/v03fpmLw1qAgOIaDkGUKoyHDOnAew7v3wF
   w==;
X-CSE-ConnectionGUID: D9cpVD0sSmq3z1D5YIfUZA==
X-CSE-MsgGUID: ATY7RYC8SXeBzDlSpGUT+g==
X-IronPort-AV: E=McAfee;i="6700,10204,11108"; a="12156137"
X-IronPort-AV: E=Sophos;i="6.08,251,1712646000"; 
   d="scan'208";a="12156137"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
  by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 19 Jun 2024 20:28:15 -0700
X-CSE-ConnectionGUID: 1G7Zoa7hRYuQ+/ydfUKMQQ==
X-CSE-MsgGUID: BUFuuXQdR+2iQYQx8Tq75g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,251,1712646000"; 
   d="scan'208";a="41966318"
Received: from lkp-server01.sh.intel.com (HELO 68891e0c336b) ([10.239.97.150])
  by fmviesa007.fm.intel.com with ESMTP; 19 Jun 2024 20:28:12 -0700
Received: from kbuild by 68891e0c336b with local (Exim 4.96)
	(envelope-from <lkp@intel.com>)
	id 1sK8T4-0007Gw-08;
	Thu, 20 Jun 2024 03:28:10 +0000
Date: Thu, 20 Jun 2024 11:27:22 +0800
From: kernel test robot <lkp@intel.com>
To: Anand Moon <linux.amoon@gmail.com>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <helgaas@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Philipp Zabel <p.zabel@pengutronix.de>
Cc: oe-kbuild-all@lists.linux.dev, Anand Moon <linux.amoon@gmail.com>,
	linux-pci@vger.kernel.org, linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v1 2/3] PCI: rockchip: Simplify reset control handling by
 using reset_control_bulk*() function
Message-ID: <202406201156.PPCyjK8r-lkp@intel.com>
References: <20240618164133.223194-3-linux.amoon@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240618164133.223194-3-linux.amoon@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240619_202817_354311_ECFA6202 
X-CRM114-Status: GOOD (  12.49  )
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

Hi Anand,

kernel test robot noticed the following build errors:

[auto build test ERROR on pci/next]
[also build test ERROR on pci/for-linus linus/master v6.10-rc4 next-20240619]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Anand-Moon/PCI-rockchip-Simplify-reset-control-handling-by-using-reset_control_bulk-function/20240619-014145
base:   https://git.kernel.org/pub/scm/linux/kernel/git/pci/pci.git next
patch link:    https://lore.kernel.org/r/20240618164133.223194-3-linux.amoon%40gmail.com
patch subject: [PATCH v1 2/3] PCI: rockchip: Simplify reset control handling by using reset_control_bulk*() function
config: arc-randconfig-001-20240620 (https://download.01.org/0day-ci/archive/20240620/202406201156.PPCyjK8r-lkp@intel.com/config)
compiler: arceb-elf-gcc (GCC) 13.2.0
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20240620/202406201156.PPCyjK8r-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202406201156.PPCyjK8r-lkp@intel.com/

All errors (new ones prefixed by >>):

   In file included from drivers/pci/controller/pcie-rockchip-ep.c:20:
>> drivers/pci/controller/pcie-rockchip.h:319:41: error: array type has incomplete element type 'struct reset_control_bulk_data'
     319 |         struct  reset_control_bulk_data pm_rsts[ROCKCHIP_NUM_PM_RSTS];
         |                                         ^~~~~~~
   drivers/pci/controller/pcie-rockchip.h:320:41: error: array type has incomplete element type 'struct reset_control_bulk_data'
     320 |         struct  reset_control_bulk_data core_rsts[ROCKCHIP_NUM_CORE_RSTS];
         |                                         ^~~~~~~~~
   drivers/pci/controller/pcie-rockchip.h:321:31: error: array type has incomplete element type 'struct clk_bulk_data'
     321 |         struct  clk_bulk_data clks[ROCKCHIP_NUM_CLKS];
         |                               ^~~~


vim +319 drivers/pci/controller/pcie-rockchip.h

   313	
   314	struct rockchip_pcie {
   315		void	__iomem *reg_base;		/* DT axi-base */
   316		void	__iomem *apb_base;		/* DT apb-base */
   317		bool    legacy_phy;
   318		struct  phy *phys[MAX_LANE_NUM];
 > 319		struct  reset_control_bulk_data pm_rsts[ROCKCHIP_NUM_PM_RSTS];
   320		struct  reset_control_bulk_data core_rsts[ROCKCHIP_NUM_CORE_RSTS];
   321		struct  clk_bulk_data clks[ROCKCHIP_NUM_CLKS];
   322		struct	regulator *vpcie12v; /* 12V power supply */
   323		struct	regulator *vpcie3v3; /* 3.3V power supply */
   324		struct	regulator *vpcie1v8; /* 1.8V power supply */
   325		struct	regulator *vpcie0v9; /* 0.9V power supply */
   326		struct	gpio_desc *ep_gpio;
   327		u32	lanes;
   328		u8      lanes_map;
   329		int	link_gen;
   330		struct	device *dev;
   331		struct	irq_domain *irq_domain;
   332		int     offset;
   333		void    __iomem *msg_region;
   334		phys_addr_t msg_bus_addr;
   335		bool is_rc;
   336		struct resource *mem_res;
   337	};
   338	

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
