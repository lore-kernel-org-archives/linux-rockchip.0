Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A3573C47DD9
	for <linux-rockchip@archiver.kernel.org>; Fri, 22 Mar 2024 21:45:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=o/JkgzObgWCcmYhVbritUt0vcpVV2E/Ha418Jns3GXo=; b=QGJK4wvDlFNMMh
	xZRt+M01n8tTBio1MoePTk6tt9gnUEZHFq41/AoUGEzAARuKixqlSildUBO9UmZqV7oPxD06EMAV7
	uWlD4HhtuhBsPC37mVE9vQjao+NPta0GDpnaTxTwMWrf6iUK0WkgzN38jdUHW45pL2jW5huHZf9zd
	iiLwGczD0j4AIaJSVStJO8wNEIQLqea2sLXnQbdnD1vOrfXRiD6ybDbAF31oDoWR26pPkHM6On3cS
	5r4xg4ozF1vSHo0I0FfQ7xC37Wegrx7pG1tRysPtke21QA8/saT7v7LBDBk4FRPUsBjJF5IaxoYct
	UtNMf0TpooswLnfXiJwQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rnmhw-00000008jqY-3mQX;
	Fri, 22 Mar 2024 21:45:48 +0000
Received: from mgamail.intel.com ([198.175.65.16])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rnmht-00000008jpf-1faR;
	Fri, 22 Mar 2024 21:45:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1711143946; x=1742679946;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=RPzQOy33+Y/0DmScu38OT6d5/HZNS3n3ZyQRLAU8nw4=;
  b=lrVBJdmin0CGRGxeWCPMvgEA0zK9/mdraznr0wxc1eWkoeigr+2QDVfm
   mNHd0PajUEHd9rXn/5pro1evYhNhN7puevFs5tHWcLnAhjojJ3R2CKc1W
   Npptscvhg0wCxz4OLXOIVRRaO8jFPMMgGK8t3DzfGWWc5albgSh7Ud5mk
   kKWoEk4RCx8d39ZXuD2oBwDsX/zdw+CTmxF2PN+IEOdYazdgKNRLD9OLA
   MeilX004mg2YMRYAWn2r96CwWsjTHPUQwoiBXx27UXoIrN15fT/q8Is4C
   Vgl8jz9SIWmzmo2oeaXTEtqeibs8fFKpjV1YZ2eKi4ysFYW7jE5/yZp9z
   Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,11021"; a="6328947"
X-IronPort-AV: E=Sophos;i="6.07,147,1708416000"; 
   d="scan'208";a="6328947"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
  by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 22 Mar 2024 14:45:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,147,1708416000"; 
   d="scan'208";a="15018611"
Received: from lkp-server01.sh.intel.com (HELO b21307750695) ([10.239.97.150])
  by fmviesa007.fm.intel.com with ESMTP; 22 Mar 2024 14:45:38 -0700
Received: from kbuild by b21307750695 with local (Exim 4.96)
	(envelope-from <lkp@intel.com>)
	id 1rnmhj-000Kdj-23;
	Fri, 22 Mar 2024 21:45:35 +0000
Date: Sat, 23 Mar 2024 05:45:09 +0800
From: kernel test robot <lkp@intel.com>
To: Alex Bee <knaerzche@gmail.com>, Lee Jones <lee@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Linus Walleij <linus.walleij@linaro.org>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>
Cc: llvm@lists.linux.dev, oe-kbuild-all@lists.linux.dev,
	Chris Zhong <zyw@rock-chips.com>,
	Zhang Qing <zhangqing@rock-chips.com>, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
	linux-gpio@vger.kernel.org, Alex Bee <knaerzche@gmail.com>
Subject: Re: [PATCH 2/5] mfd: rk8xx: Add RK816 support
Message-ID: <202403230551.Vc1eaxTr-lkp@intel.com>
References: <20240321143911.90210-5-knaerzche@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240321143911.90210-5-knaerzche@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240322_144545_555661_4392C36C 
X-CRM114-Status: GOOD (  16.08  )
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

Hi Alex,

kernel test robot noticed the following build errors:

[auto build test ERROR on lee-mfd/for-mfd-next]
[also build test ERROR on lee-mfd/for-mfd-fixes broonie-regulator/for-next robh/for-next linus/master v6.8 next-20240322]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Alex-Bee/dt-bindings-mfd-Add-rk816-binding/20240321-224318
base:   https://git.kernel.org/pub/scm/linux/kernel/git/lee/mfd.git for-mfd-next
patch link:    https://lore.kernel.org/r/20240321143911.90210-5-knaerzche%40gmail.com
patch subject: [PATCH 2/5] mfd: rk8xx: Add RK816 support
config: arm-randconfig-002-20240322 (https://download.01.org/0day-ci/archive/20240323/202403230551.Vc1eaxTr-lkp@intel.com/config)
compiler: clang version 19.0.0git (https://github.com/llvm/llvm-project 23de3862dce582ce91c1aa914467d982cb1a73b4)
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20240323/202403230551.Vc1eaxTr-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202403230551.Vc1eaxTr-lkp@intel.com/

All error/warnings (new ones prefixed by >>):

   In file included from drivers/mfd/rk8xx-core.c:14:
   In file included from include/linux/mfd/rk808.h:18:
   In file included from include/linux/regulator/machine.h:15:
   In file included from include/linux/regulator/consumer.h:35:
   In file included from include/linux/suspend.h:5:
   In file included from include/linux/swap.h:9:
   In file included from include/linux/memcontrol.h:20:
   In file included from include/linux/mm.h:2188:
   include/linux/vmstat.h:522:36: warning: arithmetic between different enumeration types ('enum node_stat_item' and 'enum lru_list') [-Wenum-enum-conversion]
     522 |         return node_stat_name(NR_LRU_BASE + lru) + 3; // skip "nr_"
         |                               ~~~~~~~~~~~ ^ ~~~
>> drivers/mfd/rk8xx-core.c:395:8: warning: 'const' type qualifier on return type has no effect [-Wignored-qualifiers]
     395 | static const unsigned int rk816_get_irq_reg(struct regmap_irq_chip_data *data,
         |        ^~~~~
>> drivers/mfd/rk8xx-core.c:573:17: error: incompatible function pointer types initializing 'unsigned int (*)(struct regmap_irq_chip_data *, unsigned int, int)' with an expression of type 'const unsigned int (struct regmap_irq_chip_data *, unsigned int, int)' [-Wincompatible-function-pointer-types]
     573 |         .get_irq_reg = rk816_get_irq_reg,
         |                        ^~~~~~~~~~~~~~~~~
   2 warnings and 1 error generated.


vim +573 drivers/mfd/rk8xx-core.c

   394	
 > 395	static const unsigned int rk816_get_irq_reg(struct regmap_irq_chip_data *data,
   396						    unsigned int base, int index)
   397	{
   398		unsigned int irq_reg = base;
   399	
   400		switch (base) {
   401		case RK816_INT_STS_REG1:
   402			irq_reg += rk816_irq_status_offsets[index];
   403			break;
   404		case RK816_INT_STS_MSK_REG1:
   405			irq_reg += rk816_irq_mask_offsets[index];
   406			break;
   407		}
   408	
   409		return irq_reg;
   410	};
   411	
   412	static const struct regmap_irq rk816_irqs[] = {
   413		/* INT_STS_REG1 IRQs */
   414		REGMAP_IRQ_REG(RK816_IRQ_PWRON_FALL, 0, RK816_INT_STS_PWRON_FALL),
   415		REGMAP_IRQ_REG(RK816_IRQ_PWRON_RISE, 0, RK816_INT_STS_PWRON_RISE),
   416	
   417		/* INT_STS_REG2 IRQs  */
   418		REGMAP_IRQ_REG(RK816_IRQ_VB_LOW, 1, RK816_INT_STS_VB_LOW),
   419		REGMAP_IRQ_REG(RK816_IRQ_PWRON, 1, RK816_INT_STS_PWRON),
   420		REGMAP_IRQ_REG(RK816_IRQ_PWRON_LP, 1, RK816_INT_STS_PWRON_LP),
   421		REGMAP_IRQ_REG(RK816_IRQ_HOTDIE, 1, RK816_INT_STS_HOTDIE),
   422		REGMAP_IRQ_REG(RK816_IRQ_RTC_ALARM, 1, RK816_INT_STS_RTC_ALARM),
   423		REGMAP_IRQ_REG(RK816_IRQ_RTC_PERIOD, 1, RK816_INT_STS_RTC_PERIOD),
   424		REGMAP_IRQ_REG(RK816_IRQ_USB_OV, 1, RK816_INT_STS_USB_OV),
   425	
   426		/* INT_STS3 IRQs */
   427		REGMAP_IRQ_REG(RK816_IRQ_PLUG_IN, 2, RK816_INT_STS_PLUG_IN),
   428		REGMAP_IRQ_REG(RK816_IRQ_PLUG_OUT, 2, RK816_INT_STS_PLUG_OUT),
   429		REGMAP_IRQ_REG(RK816_IRQ_CHG_OK, 2, RK816_INT_STS_CHG_OK),
   430		REGMAP_IRQ_REG(RK816_IRQ_CHG_TE, 2, RK816_INT_STS_CHG_TE),
   431		REGMAP_IRQ_REG(RK816_IRQ_CHG_TS, 2, RK816_INT_STS_CHG_TS),
   432		REGMAP_IRQ_REG(RK816_IRQ_CHG_CVTLIM, 2, RK816_INT_STS_CHG_CVTLIM),
   433		REGMAP_IRQ_REG(RK816_IRQ_DISCHG_ILIM, 2, RK816_INT_STS_DISCHG_ILIM),
   434	};
   435	
   436	static const struct regmap_irq rk818_irqs[] = {
   437		/* INT_STS */
   438		[RK818_IRQ_VOUT_LO] = {
   439			.mask = RK818_IRQ_VOUT_LO_MSK,
   440			.reg_offset = 0,
   441		},
   442		[RK818_IRQ_VB_LO] = {
   443			.mask = RK818_IRQ_VB_LO_MSK,
   444			.reg_offset = 0,
   445		},
   446		[RK818_IRQ_PWRON] = {
   447			.mask = RK818_IRQ_PWRON_MSK,
   448			.reg_offset = 0,
   449		},
   450		[RK818_IRQ_PWRON_LP] = {
   451			.mask = RK818_IRQ_PWRON_LP_MSK,
   452			.reg_offset = 0,
   453		},
   454		[RK818_IRQ_HOTDIE] = {
   455			.mask = RK818_IRQ_HOTDIE_MSK,
   456			.reg_offset = 0,
   457		},
   458		[RK818_IRQ_RTC_ALARM] = {
   459			.mask = RK818_IRQ_RTC_ALARM_MSK,
   460			.reg_offset = 0,
   461		},
   462		[RK818_IRQ_RTC_PERIOD] = {
   463			.mask = RK818_IRQ_RTC_PERIOD_MSK,
   464			.reg_offset = 0,
   465		},
   466		[RK818_IRQ_USB_OV] = {
   467			.mask = RK818_IRQ_USB_OV_MSK,
   468			.reg_offset = 0,
   469		},
   470	
   471		/* INT_STS2 */
   472		[RK818_IRQ_PLUG_IN] = {
   473			.mask = RK818_IRQ_PLUG_IN_MSK,
   474			.reg_offset = 1,
   475		},
   476		[RK818_IRQ_PLUG_OUT] = {
   477			.mask = RK818_IRQ_PLUG_OUT_MSK,
   478			.reg_offset = 1,
   479		},
   480		[RK818_IRQ_CHG_OK] = {
   481			.mask = RK818_IRQ_CHG_OK_MSK,
   482			.reg_offset = 1,
   483		},
   484		[RK818_IRQ_CHG_TE] = {
   485			.mask = RK818_IRQ_CHG_TE_MSK,
   486			.reg_offset = 1,
   487		},
   488		[RK818_IRQ_CHG_TS1] = {
   489			.mask = RK818_IRQ_CHG_TS1_MSK,
   490			.reg_offset = 1,
   491		},
   492		[RK818_IRQ_TS2] = {
   493			.mask = RK818_IRQ_TS2_MSK,
   494			.reg_offset = 1,
   495		},
   496		[RK818_IRQ_CHG_CVTLIM] = {
   497			.mask = RK818_IRQ_CHG_CVTLIM_MSK,
   498			.reg_offset = 1,
   499		},
   500		[RK818_IRQ_DISCHG_ILIM] = {
   501			.mask = RK818_IRQ_DISCHG_ILIM_MSK,
   502			.reg_offset = 1,
   503		},
   504	};
   505	
   506	static const struct regmap_irq rk817_irqs[RK817_IRQ_END] = {
   507		REGMAP_IRQ_REG_LINE(0, 8),
   508		REGMAP_IRQ_REG_LINE(1, 8),
   509		REGMAP_IRQ_REG_LINE(2, 8),
   510		REGMAP_IRQ_REG_LINE(3, 8),
   511		REGMAP_IRQ_REG_LINE(4, 8),
   512		REGMAP_IRQ_REG_LINE(5, 8),
   513		REGMAP_IRQ_REG_LINE(6, 8),
   514		REGMAP_IRQ_REG_LINE(7, 8),
   515		REGMAP_IRQ_REG_LINE(8, 8),
   516		REGMAP_IRQ_REG_LINE(9, 8),
   517		REGMAP_IRQ_REG_LINE(10, 8),
   518		REGMAP_IRQ_REG_LINE(11, 8),
   519		REGMAP_IRQ_REG_LINE(12, 8),
   520		REGMAP_IRQ_REG_LINE(13, 8),
   521		REGMAP_IRQ_REG_LINE(14, 8),
   522		REGMAP_IRQ_REG_LINE(15, 8),
   523		REGMAP_IRQ_REG_LINE(16, 8),
   524		REGMAP_IRQ_REG_LINE(17, 8),
   525		REGMAP_IRQ_REG_LINE(18, 8),
   526		REGMAP_IRQ_REG_LINE(19, 8),
   527		REGMAP_IRQ_REG_LINE(20, 8),
   528		REGMAP_IRQ_REG_LINE(21, 8),
   529		REGMAP_IRQ_REG_LINE(22, 8),
   530		REGMAP_IRQ_REG_LINE(23, 8)
   531	};
   532	
   533	static struct regmap_irq_chip rk805_irq_chip = {
   534		.name = "rk805",
   535		.irqs = rk805_irqs,
   536		.num_irqs = ARRAY_SIZE(rk805_irqs),
   537		.num_regs = 1,
   538		.status_base = RK805_INT_STS_REG,
   539		.mask_base = RK805_INT_STS_MSK_REG,
   540		.ack_base = RK805_INT_STS_REG,
   541		.init_ack_masked = true,
   542	};
   543	
   544	static struct regmap_irq_chip rk806_irq_chip = {
   545		.name = "rk806",
   546		.irqs = rk806_irqs,
   547		.num_irqs = ARRAY_SIZE(rk806_irqs),
   548		.num_regs = 2,
   549		.irq_reg_stride = 2,
   550		.mask_base = RK806_INT_MSK0,
   551		.status_base = RK806_INT_STS0,
   552		.ack_base = RK806_INT_STS0,
   553		.init_ack_masked = true,
   554	};
   555	
   556	static const struct regmap_irq_chip rk808_irq_chip = {
   557		.name = "rk808",
   558		.irqs = rk808_irqs,
   559		.num_irqs = ARRAY_SIZE(rk808_irqs),
   560		.num_regs = 2,
   561		.irq_reg_stride = 2,
   562		.status_base = RK808_INT_STS_REG1,
   563		.mask_base = RK808_INT_STS_MSK_REG1,
   564		.ack_base = RK808_INT_STS_REG1,
   565		.init_ack_masked = true,
   566	};
   567	
   568	static const struct regmap_irq_chip rk816_irq_chip = {
   569		.name = "rk816",
   570		.irqs = rk816_irqs,
   571		.num_irqs = ARRAY_SIZE(rk816_irqs),
   572		.num_regs = 3,
 > 573		.get_irq_reg = rk816_get_irq_reg,
   574		.status_base = RK816_INT_STS_REG1,
   575		.mask_base = RK816_INT_STS_MSK_REG1,
   576		.ack_base = RK816_INT_STS_REG1,
   577		.init_ack_masked = true,
   578	};
   579	

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
