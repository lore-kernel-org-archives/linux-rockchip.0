Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BE1DAC54E67
	for <linux-rockchip@archiver.kernel.org>; Sat, 23 Mar 2024 07:02:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HXh5MzXtwlRmk0wY0sbNn+xUGXcc6P45+L4bMtVD1pQ=; b=GlPMOq43TIGWmf
	dMPnm+zQV+1c/pP7+013pE0Pj1DANY1++usvjFy2BKjQmTZIqztJx2gToR6XVqQynLDVg/SbMx7CI
	3BzxQKEHi0WVDFRfJNpMzyIoT9ljNd+oL1wkTgYshPP/vrk7OF4twYM6hfw8NGd7+9Rkq1a3W8Fe2
	BIOtDelxHGBCGukNavYFY8vANOLH6pCN259uN8h9XojhSNcX2bQ53DK3Q5Yu1bEoOOH1kU/1pJVqI
	0FU+XkMOelF2xwgKk7kMbHJh2Lr7BqEebfBcOAtKF93p1J8cQKSRU29ldCzWJebt4r9QLE11m1K53
	wd0fx+QA9a2ifkyg9Ksw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rnvOG-00000009n34-0NAa;
	Sat, 23 Mar 2024 07:02:04 +0000
Received: from mgamail.intel.com ([198.175.65.15])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rnvOC-00000009n1m-1XDE;
	Sat, 23 Mar 2024 07:02:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1711177320; x=1742713320;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=yhbjA5niZQhSFgh07i14d0fXkDpexeMQw2/j5Wlv5v8=;
  b=n8VW8tsWbB+tOPBTWCTokjUaQ+3gcrNVjFfrkjcsJmuIza16NrRIlsha
   YONYMfrL014kiLEE9Llst6v0Hz2yu6LIZzOAUTdDK/7dpfaIDzHFJUKQL
   EDY0Ss/4kV1TZ6/b/bT5hr+oxBShQYGXL1O8EvQ1hASJxoGU4+AKDAcLy
   uvsrbx82ZMsJ4ZaGfe2gd8E2IJckatdv6VK+b7Yh39sehN7998LxYBijO
   xOYOQtF9pIOWTKijXUbE+lN5Jg8ovlbhHd+1TwSmnBiEKGXm71GoOegt7
   /P3pj0yczO+hWHX88A9N50MtV3FTXL/KkZJZcXQe7TIgo6U2aat0X3bLn
   w==;
X-IronPort-AV: E=McAfee;i="6600,9927,11021"; a="10021888"
X-IronPort-AV: E=Sophos;i="6.07,148,1708416000"; 
   d="scan'208";a="10021888"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
  by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 23 Mar 2024 00:01:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,148,1708416000"; 
   d="scan'208";a="19815686"
Received: from lkp-server01.sh.intel.com (HELO b21307750695) ([10.239.97.150])
  by orviesa003.jf.intel.com with ESMTP; 23 Mar 2024 00:01:50 -0700
Received: from kbuild by b21307750695 with local (Exim 4.96)
	(envelope-from <lkp@intel.com>)
	id 1rnvO0-000KwJ-06;
	Sat, 23 Mar 2024 07:01:48 +0000
Date: Sat, 23 Mar 2024 15:01:40 +0800
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
Message-ID: <202403231417.oV6q6CGc-lkp@intel.com>
References: <20240321143911.90210-5-knaerzche@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240321143911.90210-5-knaerzche@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240323_000200_586476_D2737837 
X-CRM114-Status: GOOD (  13.10  )
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
config: arc-randconfig-001-20240322 (https://download.01.org/0day-ci/archive/20240323/202403231417.oV6q6CGc-lkp@intel.com/config)
compiler: arc-elf-gcc (GCC) 13.2.0
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20240323/202403231417.oV6q6CGc-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202403231417.oV6q6CGc-lkp@intel.com/

All warnings (new ones prefixed by >>):

>> drivers/mfd/rk8xx-core.c:395:8: warning: type qualifiers ignored on function return type [-Wignored-qualifiers]
     395 | static const unsigned int rk816_get_irq_reg(struct regmap_irq_chip_data *data,
         |        ^~~~~


vim +395 drivers/mfd/rk8xx-core.c

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

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
