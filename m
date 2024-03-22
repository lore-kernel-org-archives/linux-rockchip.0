Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 65495C47DD9
	for <linux-rockchip@archiver.kernel.org>; Fri, 22 Mar 2024 17:58:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=f7DS93xVRgQxifXjtCDOJBjGToQj9s/brMQcK3LBkRo=; b=QCDu2q0sXxlmjx
	78aIBqsoiMNizuSp6+p73waZU3aATkcQdJGiDyeWT9OAUvJL95vC5AuaW/0tp9fQQMpFvLxi37u18
	pe208JjmJH2FhylpF1ZIFgDutbkKw6FYvfeO5kxxbwwFImzIXd5de0prSGKuXVaLVybLeqzKWKRNH
	uJb3VIrrb+BYLxo+b6zGYeGiGL8G+6yruzyrJd5QFLLSfvuuBfEcI21n3qGHZMIiKI44fo+ECwEiA
	WR4JUqlW66r4Orqn8kbd5OJb0J/SSTj/fvTsJjgl42ckPxPpmbJ6/YpVjJxpaOwZqiYsQCp0mXRqT
	htzHpaNr4V63EYB57lLQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rnjAC-00000008GJO-1q9T;
	Fri, 22 Mar 2024 17:58:44 +0000
Received: from mgamail.intel.com ([198.175.65.16])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rnjA7-00000008GF5-336o;
	Fri, 22 Mar 2024 17:58:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1711130319; x=1742666319;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=Fg2DTIIIhUQNFpW2Iw3rokXpLJlP9QgdMt0GMxWljz4=;
  b=Yj+AZyIC6sfiuo5byCMqursWkjPn/zxlaN7X+cnKnBHNn0p97H5r5EVY
   +NIqSg3gGxKjMOfIo2ZlehGPxLyrxpzbJ+yKqyapwv/5mvAMvQo7GfKlk
   Wrmt3dags9IEGsOFMDhlOIg+9vXqSJixNL9q/D0l9zFC46dDf9wHXmiYw
   YG+gdfAhMv6uAs8rAOoLKVf9gnNhZBLGjAU/bM1InR+v+fLQ2ORezwQ7m
   Gkwm+4vkEU15DONVE2m08Me2280Qc8oIHftvUh129vERi9ddWvId+Dg5n
   W77ydMwCik6UxUgas7neqRAixMx3HNcBltzoFH1v+mdbo3D5WoI9HdzGc
   Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,11020"; a="6308431"
X-IronPort-AV: E=Sophos;i="6.07,146,1708416000"; 
   d="scan'208";a="6308431"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
  by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 22 Mar 2024 10:58:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,146,1708416000"; 
   d="scan'208";a="19551738"
Received: from lkp-server01.sh.intel.com (HELO b21307750695) ([10.239.97.150])
  by fmviesa003.fm.intel.com with ESMTP; 22 Mar 2024 10:58:33 -0700
Received: from kbuild by b21307750695 with local (Exim 4.96)
	(envelope-from <lkp@intel.com>)
	id 1rnj9y-000KVr-2a;
	Fri, 22 Mar 2024 17:58:30 +0000
Date: Sat, 23 Mar 2024 01:58:17 +0800
From: kernel test robot <lkp@intel.com>
To: Alex Bee <knaerzche@gmail.com>, Lee Jones <lee@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Linus Walleij <linus.walleij@linaro.org>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>
Cc: oe-kbuild-all@lists.linux.dev, Chris Zhong <zyw@rock-chips.com>,
	Zhang Qing <zhangqing@rock-chips.com>, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
	linux-gpio@vger.kernel.org, Alex Bee <knaerzche@gmail.com>
Subject: Re: [PATCH 2/5] mfd: rk8xx: Add RK816 support
Message-ID: <202403230131.AhHTZiEx-lkp@intel.com>
References: <20240321143911.90210-5-knaerzche@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240321143911.90210-5-knaerzche@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240322_105839_947657_F5B0A491 
X-CRM114-Status: GOOD (  13.42  )
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

kernel test robot noticed the following build warnings:

[auto build test WARNING on lee-mfd/for-mfd-next]
[also build test WARNING on lee-mfd/for-mfd-fixes broonie-regulator/for-next robh/for-next linus/master v6.8 next-20240322]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Alex-Bee/dt-bindings-mfd-Add-rk816-binding/20240321-224318
base:   https://git.kernel.org/pub/scm/linux/kernel/git/lee/mfd.git for-mfd-next
patch link:    https://lore.kernel.org/r/20240321143911.90210-5-knaerzche%40gmail.com
patch subject: [PATCH 2/5] mfd: rk8xx: Add RK816 support
config: i386-randconfig-062-20240322 (https://download.01.org/0day-ci/archive/20240323/202403230131.AhHTZiEx-lkp@intel.com/config)
compiler: gcc-12 (Debian 12.2.0-14) 12.2.0
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20240323/202403230131.AhHTZiEx-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202403230131.AhHTZiEx-lkp@intel.com/

sparse warnings: (new ones prefixed by >>)
>> drivers/mfd/rk8xx-core.c:573:24: sparse: sparse: incorrect type in initializer (different modifiers) @@     expected unsigned int ( *get_irq_reg )( ... ) @@     got unsigned int ( const * )( ... ) @@
   drivers/mfd/rk8xx-core.c:573:24: sparse:     expected unsigned int ( *get_irq_reg )( ... )
   drivers/mfd/rk8xx-core.c:573:24: sparse:     got unsigned int ( const * )( ... )

vim +573 drivers/mfd/rk8xx-core.c

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
