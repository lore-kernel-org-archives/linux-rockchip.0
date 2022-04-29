Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 82C84C433F5
	for <linux-rockchip@archiver.kernel.org>; Fri, 29 Apr 2022 19:32:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JhlFbYCj/BPtm/tzRh3KESJqbziiYBSLS9W+NAlc6oM=; b=zQHOCIoKHlDXvI
	YxbYbHjjARftBamsgMhqZb+CUCl2XFSzenSboRCSGumVUIJHWLhlEFDoxwabM8vNWRx7OJGtL9C7B
	cxKV/nAskxk4X374c6NID6/sZ0HXlHsiW5AHUW9L5TnTTAAUCYeHqyIUGia08uACFwS/8Dl4lT0x0
	hGm7TZG1GMSrDTK1MdeeVkYzlCH8Wmq50MOt2MaF31xQ7UjPF/OVf0wy+c5xWE/0PlFxbzM440FlE
	PKvYAuEwSd0RW7X7almgMEvUDZV27WiVlvB2TO4zYc/E1Q0w9Wt1f8YnmqWb5d1jgsGUBgE7GI3bJ
	mnwy6j5Quk+0JF23DpMw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nkWMH-00CM79-8y; Fri, 29 Apr 2022 19:32:53 +0000
Received: from mga17.intel.com ([192.55.52.151])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nkWM4-00CM20-4Q; Fri, 29 Apr 2022 19:32:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1651260760; x=1682796760;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=JndYmvyDHGDJ5FLMtua0mbKv4qhsfh22QdXtZJJmVlQ=;
 b=mUWs+TG+Ko6yPFVzW7BjWDz30uAjWAtaBu06fevONyV/WHKbIE0A0O97
 tOj79W0cL7VxSWDm81IQo7O7pIV1XY1XMzYMM6Ybzlr8fFavHUhYjBp83
 813YAzDQc4M7lM2i7W8pHSAHoGZSt75aLoHy2iDQ8LjL69uIqTemUFRnl
 66J54WTtGqyy9HBUtV2un2C7TtJ4DWEeezR2JnyYBEdbjPGVL2lAj73Hb
 MhSlLqDLCz7WisZQK+KWWrE8bDy9AMdmb4tJYR6rbuAtABuOxJKeCVAu1
 jRK8nGTe44kjXHjkZnN62iM/096OwtSwaMNMYcgmb1SUAOAazpnA2d96J A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10332"; a="247310760"
X-IronPort-AV: E=Sophos;i="5.91,186,1647327600"; d="scan'208";a="247310760"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Apr 2022 12:32:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,186,1647327600"; d="scan'208";a="566287859"
Received: from lkp-server01.sh.intel.com (HELO 5056e131ad90) ([10.239.97.150])
 by fmsmga007.fm.intel.com with ESMTP; 29 Apr 2022 12:32:21 -0700
Received: from kbuild by 5056e131ad90 with local (Exim 4.95)
 (envelope-from <lkp@intel.com>) id 1nkWLk-0006a3-Gm;
 Fri, 29 Apr 2022 19:32:20 +0000
Date: Sat, 30 Apr 2022 03:31:43 +0800
From: kernel test robot <lkp@intel.com>
To: Sebastian Reichel <sebastian.reichel@collabora.com>,
 Heiko Stuebner <heiko@sntech.de>
Cc: kbuild-all@lists.01.org, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzk@kernel.org>,
 Linus Walleij <linus.walleij@linaro.org>,
 Bartosz Golaszewski <brgl@bgdev.pl>,
 Adrian Hunter <adrian.hunter@intel.com>,
 Ulf Hansson <ulf.hansson@linaro.org>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Michael Turquette <mturquette@baylibre.com>,
 Stephen Boyd <sboyd@kernel.org>, linux-clk@vger.kernel.org,
 linux-mmc@vger.kernel.org, linux-gpio@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, kernel@lists.collabora.co.uk,
 Elaine Zhang <zhangqing@rock-chips.com>, kernel@collabora.com,
 Sebastian Reichel <sebastian.reichel@collabora.com>
Subject: Re: [PATCHv1 06/19] clk: rockchip: Add clock controller for the RK3588
Message-ID: <202204300329.BL2rwfwr-lkp@intel.com>
References: <20220422170920.401914-7-sebastian.reichel@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220422170920.401914-7-sebastian.reichel@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220429_123240_196289_A59ED63C 
X-CRM114-Status: GOOD (  14.35  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

Hi Sebastian,

Thank you for the patch! Perhaps something to improve:

[auto build test WARNING on robh/for-next]
[also build test WARNING on linusw-pinctrl/devel linus/master v5.18-rc4 next-20220429]
[cannot apply to rockchip/for-next]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch]

url:    https://github.com/intel-lab-lkp/linux/commits/Sebastian-Reichel/Basic-RK3588-Support/20220423-013425
base:   https://git.kernel.org/pub/scm/linux/kernel/git/robh/linux.git for-next
config: arm64-defconfig (https://download.01.org/0day-ci/archive/20220430/202204300329.BL2rwfwr-lkp@intel.com/config)
compiler: aarch64-linux-gcc (GCC) 11.3.0
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # https://github.com/intel-lab-lkp/linux/commit/6736e6f1e32bb98780b77b5aa64fe5ac5dfaae26
        git remote add linux-review https://github.com/intel-lab-lkp/linux
        git fetch --no-tags linux-review Sebastian-Reichel/Basic-RK3588-Support/20220423-013425
        git checkout 6736e6f1e32bb98780b77b5aa64fe5ac5dfaae26
        # save the config file
        mkdir build_dir && cp config build_dir/.config
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=gcc-11.3.0 make.cross W=1 O=build_dir ARCH=arm64 SHELL=/bin/bash drivers/clk/rockchip/ drivers/media/platform/qcom/venus/

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

   drivers/clk/rockchip/clk-rk3588.c: In function 'rk3588_clk_init':
>> drivers/clk/rockchip/clk-rk3588.c:2408:22: warning: variable 'clks' set but not used [-Wunused-but-set-variable]
    2408 |         struct clk **clks;
         |                      ^~~~


vim +/clks +2408 drivers/clk/rockchip/clk-rk3588.c

  2403	
  2404	static void __init rk3588_clk_init(struct device_node *np)
  2405	{
  2406		struct rockchip_clk_provider *ctx;
  2407		void __iomem *reg_base;
> 2408		struct clk **clks;
  2409	
  2410		reg_base = of_iomap(np, 0);
  2411		if (!reg_base) {
  2412			pr_err("%s: could not map cru region\n", __func__);
  2413			return;
  2414		}
  2415	
  2416		ctx = rockchip_clk_init(np, reg_base, CLK_NR_CLKS);
  2417		if (IS_ERR(ctx)) {
  2418			pr_err("%s: rockchip clk init failed\n", __func__);
  2419			iounmap(reg_base);
  2420			return;
  2421		}
  2422		clks = ctx->clk_data.clks;
  2423	
  2424		rockchip_clk_register_plls(ctx, rk3588_pll_clks,
  2425					   ARRAY_SIZE(rk3588_pll_clks),
  2426					   RK3588_GRF_SOC_STATUS0);
  2427	
  2428		rockchip_clk_register_armclk(ctx, ARMCLK_L, "armclk_l",
  2429				mux_armclkl_p, ARRAY_SIZE(mux_armclkl_p),
  2430				&rk3588_cpulclk_data, rk3588_cpulclk_rates,
  2431				ARRAY_SIZE(rk3588_cpulclk_rates));
  2432		rockchip_clk_register_armclk(ctx, ARMCLK_B01, "armclk_b01",
  2433				mux_armclkb01_p, ARRAY_SIZE(mux_armclkb01_p),
  2434				&rk3588_cpub0clk_data, rk3588_cpub0clk_rates,
  2435				ARRAY_SIZE(rk3588_cpub0clk_rates));
  2436		rockchip_clk_register_armclk(ctx, ARMCLK_B23, "armclk_b23",
  2437				mux_armclkb23_p, ARRAY_SIZE(mux_armclkb23_p),
  2438				&rk3588_cpub1clk_data, rk3588_cpub1clk_rates,
  2439				ARRAY_SIZE(rk3588_cpub1clk_rates));
  2440	
  2441		rockchip_clk_register_branches(ctx, rk3588_clk_branches,
  2442					       ARRAY_SIZE(rk3588_clk_branches));
  2443	
  2444		rockchip_register_softrst(np, 49158, reg_base + RK3588_SOFTRST_CON(0),
  2445					  ROCKCHIP_SOFTRST_HIWORD_MASK);
  2446	
  2447		rockchip_register_restart_notifier(ctx, RK3588_GLB_SRST_FST, NULL);
  2448	
  2449		rockchip_clk_of_add_provider(np, ctx);
  2450	}
  2451	

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
