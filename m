Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 15B1DC27C53
	for <linux-rockchip@archiver.kernel.org>; Thu, 20 Jun 2024 00:55:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FvXE+kdIAkh5nguzoAiEDhq5mrYGuDLVfXOGNE3tW8c=; b=gMlF2GqM1+OsN+
	p+RSRaBFN4AhXiQM8SrsZcq2S+ZXsH8DpN7QB+cGXSirCC6ewcD/6gVHphjWzzRYi3puUiZ6AOMNN
	flgoXWF3rVcT4IW/dhATCNABp3k+nEBSTczUHFRHhwY/m/wE3qsuFnWf9n0kD6fwPqs8mdEakoSU0
	2Uw0g2ceZfW/363FYMZayWdPqvJTEmJMJr3V8PY30P4Q1Kvn2XLHHyfIX5rVeWEEwrpFDCL1ruzTm
	4c2X7wB3go5bCsYoyHVf3ePbvzCgwD09UkWHJ2Pgj0MCkLyKDjm9KTNSP9eXZ9np+5RS/Ip7FQReD
	k1TT7oCoJDzDfGrI14qw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sK651-00000003Bs2-1Jt1;
	Thu, 20 Jun 2024 00:55:11 +0000
Received: from mgamail.intel.com ([192.198.163.18])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sK64x-00000003Bq7-24j8;
	Thu, 20 Jun 2024 00:55:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1718844908; x=1750380908;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=n1QL+U4fIPrZYaKvpV4ICwIHrMT2ebrPVzqIB4RJsnY=;
  b=B5H8Pfj7zlEbA/ygag3cPfdSMbc19fB3QWMS/+kNXO5Wsye51zfk8nUm
   pvRjJKIeorsVKSjxrX1eMmGBR83Y24Zyn4k9URuIQt3jUitFfQ8atxHhV
   DbpKgeiTQ9TiL9YfnQQFP7mjyYY/OUdjasY/e/lSs/f72aZgHPg7ro4pb
   WbIXAMfL3OYMir2K+y8EdSMJIySZBkGD/jpy3i2MK0GsAXULOTGzUTV8V
   33uQyPF2ueYs6IHrzLP+8o12xI1E083jnKWGAwAXU3LvI7S4jAvLrMkwB
   ywocXBH9iJBrZc25WUgUSWj+zl4u5LK0h0jhYTcVgt9p2YDM2FtkwwUzA
   A==;
X-CSE-ConnectionGUID: RUoNgXdcRFOa1zV7FG2mAA==
X-CSE-MsgGUID: IubFTdK0SlCrrKUMzwEUMw==
X-IronPort-AV: E=McAfee;i="6700,10204,11108"; a="15514235"
X-IronPort-AV: E=Sophos;i="6.08,251,1712646000"; 
   d="scan'208";a="15514235"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
  by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 19 Jun 2024 17:55:05 -0700
X-CSE-ConnectionGUID: bgKIzhe/QEqEMRzkBBOe4w==
X-CSE-MsgGUID: HhCXmOfMS9+Uk2hXQFvTwg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,251,1712646000"; 
   d="scan'208";a="73267832"
Received: from lkp-server01.sh.intel.com (HELO 68891e0c336b) ([10.239.97.150])
  by fmviesa001.fm.intel.com with ESMTP; 19 Jun 2024 17:55:02 -0700
Received: from kbuild by 68891e0c336b with local (Exim 4.96)
	(envelope-from <lkp@intel.com>)
	id 1sK64p-00079O-1x;
	Thu, 20 Jun 2024 00:54:59 +0000
Date: Thu, 20 Jun 2024 08:54:30 +0800
From: kernel test robot <lkp@intel.com>
To: Anand Moon <linux.amoon@gmail.com>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <helgaas@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: oe-kbuild-all@lists.linux.dev, Anand Moon <linux.amoon@gmail.com>,
	linux-pci@vger.kernel.org, linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v1 1/3] PCI: rockchip: Simplify clock handling by using
 clk_bulk*() function
Message-ID: <202406200818.CQ7DXNSZ-lkp@intel.com>
References: <20240618164133.223194-2-linux.amoon@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240618164133.223194-2-linux.amoon@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240619_175508_616493_2AECEF5C 
X-CRM114-Status: GOOD (  12.28  )
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
patch link:    https://lore.kernel.org/r/20240618164133.223194-2-linux.amoon%40gmail.com
patch subject: [PATCH v1 1/3] PCI: rockchip: Simplify clock handling by using clk_bulk*() function
config: arc-randconfig-001-20240620 (https://download.01.org/0day-ci/archive/20240620/202406200818.CQ7DXNSZ-lkp@intel.com/config)
compiler: arceb-elf-gcc (GCC) 13.2.0
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20240620/202406200818.CQ7DXNSZ-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202406200818.CQ7DXNSZ-lkp@intel.com/

All errors (new ones prefixed by >>):

   In file included from drivers/pci/controller/pcie-rockchip-ep.c:20:
>> drivers/pci/controller/pcie-rockchip.h:311:31: error: array type has incomplete element type 'struct clk_bulk_data'
     311 |         struct  clk_bulk_data clks[ROCKCHIP_NUM_CLKS];
         |                               ^~~~


vim +311 drivers/pci/controller/pcie-rockchip.h

   298	
   299	struct rockchip_pcie {
   300		void	__iomem *reg_base;		/* DT axi-base */
   301		void	__iomem *apb_base;		/* DT apb-base */
   302		bool    legacy_phy;
   303		struct  phy *phys[MAX_LANE_NUM];
   304		struct	reset_control *core_rst;
   305		struct	reset_control *mgmt_rst;
   306		struct	reset_control *mgmt_sticky_rst;
   307		struct	reset_control *pipe_rst;
   308		struct	reset_control *pm_rst;
   309		struct	reset_control *aclk_rst;
   310		struct	reset_control *pclk_rst;
 > 311		struct  clk_bulk_data clks[ROCKCHIP_NUM_CLKS];
   312		struct	regulator *vpcie12v; /* 12V power supply */
   313		struct	regulator *vpcie3v3; /* 3.3V power supply */
   314		struct	regulator *vpcie1v8; /* 1.8V power supply */
   315		struct	regulator *vpcie0v9; /* 0.9V power supply */
   316		struct	gpio_desc *ep_gpio;
   317		u32	lanes;
   318		u8      lanes_map;
   319		int	link_gen;
   320		struct	device *dev;
   321		struct	irq_domain *irq_domain;
   322		int     offset;
   323		void    __iomem *msg_region;
   324		phys_addr_t msg_bus_addr;
   325		bool is_rc;
   326		struct resource *mem_res;
   327	};
   328	

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
