Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 368EFC27C79
	for <linux-rockchip@archiver.kernel.org>; Thu, 20 Jun 2024 17:32:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5XnFoi0MfAq4P5v/ZsHq8htcama89Qfz2k/XVORMW44=; b=HxY0JZokQ64wwU
	/jaKXdoNEnNA6J+dx8FVNQDN14nY4rKjbt0oHxevJ+o/fP0T/QABzBT7BN7sfCp1Bu5WoBswTr+ah
	0WT0dSeA3VWovBuceP2+tya1sEy1yNlCl7UGbgwPkEk8pS8bowwNOHJm12vfjyXTlQirY15E5plK0
	dJ6WYUXFshtlPWaS8AtfgouxONJ5YXnWPXQSXlxBsfYYIPGLptpW5jOx2HRWhz/PorNJyr2R7fDpK
	eXxzeXXPXZQo0PrVhvcX9K04K/B9Bzwm1IAOCIGxU24b/MEWR81kY/lSHEXh8n5GIbadVg8BWvpwJ
	K+VvRPX9+N+cSm8LkrDA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sKLeH-000000064iQ-1hCx;
	Thu, 20 Jun 2024 17:32:37 +0000
Received: from mgamail.intel.com ([198.175.65.15])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sKLeD-000000064f6-1uAq;
	Thu, 20 Jun 2024 17:32:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1718904754; x=1750440754;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=oFO9G2nRTwhWJIbyUtKnqB3LSa7KnG7okU5Gl/bU6lk=;
  b=hxCl+v36i4Dt2N+JhHNiCo1Wgvhs6lAcn29pjbePF4tg2oxcM8uY0FvG
   L0D2Yusm+tILM7FlyLJaGOt/weSr6Ef7iUjk2geqWdwkQ44VsvPZBLsPo
   dJPmTus8WwpkZtf5u6AoWMn5oZ2IC28RZJTXor6hD04zUFwcYkVVR0Uem
   xhT/j84Vc5lI0Szdo6QlxQAnIePkjmU2J0bovwwvIn2lcr69y98tdLRa+
   KWq0xbPEgal2mWK8znGKg6/EeSAXD0N3kts4ewKaweRyPVWJnfpNRkTF7
   Bgz1/K/pQxMoTCfu3ITp8M8RO8OJgTucsCqzuJBjKLsekNA5bbnaidT5m
   Q==;
X-CSE-ConnectionGUID: Ej7PhS2JQya9YSIv2lRx2g==
X-CSE-MsgGUID: 52KdoyFiTEGG6w0mcdk39g==
X-IronPort-AV: E=McAfee;i="6700,10204,11109"; a="19684104"
X-IronPort-AV: E=Sophos;i="6.08,252,1712646000"; 
   d="scan'208";a="19684104"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
  by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 20 Jun 2024 10:32:29 -0700
X-CSE-ConnectionGUID: 718kP6xuREe79HcLq81ntA==
X-CSE-MsgGUID: cdf+326NRLmYXOBmkXIRiw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,252,1712646000"; 
   d="scan'208";a="47268510"
Received: from lkp-server01.sh.intel.com (HELO 68891e0c336b) ([10.239.97.150])
  by orviesa003.jf.intel.com with ESMTP; 20 Jun 2024 10:32:15 -0700
Received: from kbuild by 68891e0c336b with local (Exim 4.96)
	(envelope-from <lkp@intel.com>)
	id 1sKLds-0007nc-1O;
	Thu, 20 Jun 2024 17:32:12 +0000
Date: Fri, 21 Jun 2024 01:31:16 +0800
From: kernel test robot <lkp@intel.com>
To: Anand Moon <linux.amoon@gmail.com>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <helgaas@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: llvm@lists.linux.dev, oe-kbuild-all@lists.linux.dev,
	Anand Moon <linux.amoon@gmail.com>, linux-pci@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v1 1/3] PCI: rockchip: Simplify clock handling by using
 clk_bulk*() function
Message-ID: <202406210131.rxenHeBG-lkp@intel.com>
References: <20240618164133.223194-2-linux.amoon@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240618164133.223194-2-linux.amoon@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240620_103233_578466_9FCA158C 
X-CRM114-Status: GOOD (  12.25  )
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
config: x86_64-allyesconfig (https://download.01.org/0day-ci/archive/20240621/202406210131.rxenHeBG-lkp@intel.com/config)
compiler: clang version 18.1.5 (https://github.com/llvm/llvm-project 617a15a9eac96088ae5e9134248d8236e34b91b1)
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20240621/202406210131.rxenHeBG-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202406210131.rxenHeBG-lkp@intel.com/

All errors (new ones prefixed by >>):

   In file included from drivers/pci/controller/pcie-rockchip-ep.c:20:
>> drivers/pci/controller/pcie-rockchip.h:311:28: error: array has incomplete element type 'struct clk_bulk_data'
     311 |         struct  clk_bulk_data clks[ROCKCHIP_NUM_CLKS];
         |                                   ^
   drivers/pci/controller/pcie-rockchip.h:311:10: note: forward declaration of 'struct clk_bulk_data'
     311 |         struct  clk_bulk_data clks[ROCKCHIP_NUM_CLKS];
         |                 ^
   1 error generated.


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
