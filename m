Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F3927C46CA1
	for <linux-rockchip@archiver.kernel.org>; Mon, 18 Sep 2023 17:08:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1sDms87zNydKTiI6CQQgMysBtXBHDD8FgqZswPKWxN4=; b=Ag8SQhYt527Wql
	2D6EXbRpipvCcRI3ISWYbKXsb3iUtsvtdM8S7qfiYKp25lZbZb2j24rRGGnR3H5Vr5ier3DciVjJQ
	0ecTqFeo73NWftV9vSWtWLq0Au/4S5w0TT9HcfSyfF1YkIMVon2Fr8pbbOlQ6uuv3ZTFtBOniAa/n
	1SrEFuJyenPb/Olsc0+gkaNLz9rtKy+3+abZvXLNt58WieLC/xQxOd4X2fGEge6QFwQC+XxHnH9r6
	uWqvNJfwS6jBIqjHVS02q0kUigQuNJnhF00mA5p+UtuY0hpBH9NYgC1ZsyIR9PtIWIvoXeFG7MSNl
	ODjmF03efhvuBOXO9oDw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qiHjG-00Fwjt-1J;
	Mon, 18 Sep 2023 17:08:10 +0000
Received: from mgamail.intel.com ([192.55.52.93])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qiHjB-00Fwiu-2k;
	Mon, 18 Sep 2023 17:08:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1695056885; x=1726592885;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=R0IYlcHB+mDxKxCzHImBnbsDf3CITkOOK5I/jc4Vt4g=;
  b=CoWiXAoprMG3uvandBSG1RiVCFVq/ox8hK9d210ePWXYdjSGIoTN8BsF
   kvkREJ+xZxyUuTs8XlVlq0/bxJZTvWu/gTJOrS80xNvr8trdTm5Amky8g
   jVPYBwz1TMwuUraftKtzwcSK/0FeejuBw0C/IIprDAsu2y82R4f+O3MHj
   NnwX6ZH1zoNnKwRHtZwoQiEJtzF5UsmbzOQNqDJ6y5yW6OnwEkwr1f8BD
   fzyDFm9qEB8Ja7Vt8kzBqJ4JraKxFHUwRsriI4buYr6njOLDzrmGp8RyG
   ZctpZrCQ8be1YIACJ81ow9gVuFcEf97j//d59J0zfshvAebXd7P1tHrAU
   g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10837"; a="377037218"
X-IronPort-AV: E=Sophos;i="6.02,157,1688454000"; 
   d="scan'208";a="377037218"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
  by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 18 Sep 2023 10:08:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10837"; a="775202677"
X-IronPort-AV: E=Sophos;i="6.02,157,1688454000"; 
   d="scan'208";a="775202677"
Received: from lkp-server02.sh.intel.com (HELO 9ef86b2655e5) ([10.239.97.151])
  by orsmga008.jf.intel.com with ESMTP; 18 Sep 2023 10:07:58 -0700
Received: from kbuild by 9ef86b2655e5 with local (Exim 4.96)
	(envelope-from <lkp@intel.com>)
	id 1qiHj2-0006J6-1j;
	Mon, 18 Sep 2023 17:07:56 +0000
Date: Tue, 19 Sep 2023 01:07:42 +0800
From: kernel test robot <lkp@intel.com>
To: Elaine Zhang <zhangqing@rock-chips.com>, mturquette@baylibre.com,
	sboyd@kernel.org, kever.yang@rock-chips.com, heiko@sntech.de,
	robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org
Cc: oe-kbuild-all@lists.linux.dev, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-clk@vger.kernel.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
	huangtao@rock-chips.com, xxx@rock-chips.com, xf@rock-chips.com
Subject: Re: [PATCH v1 4/8] clk: rockchip: Avoid __clk_lookup() calls
Message-ID: <202309190032.1NPAySNx-lkp@intel.com>
References: <20230918073151.7660-5-zhangqing@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230918073151.7660-5-zhangqing@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230918_100805_910743_825064FD 
X-CRM114-Status: GOOD (  13.65  )
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

Hi Elaine,

kernel test robot noticed the following build warnings:

[auto build test WARNING on rockchip/for-next]
[also build test WARNING on clk/clk-next linus/master v6.6-rc2 next-20230918]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Elaine-Zhang/clk-clk-fractional-divider-Export-clk_fractional_divider_general_approximation-API/20230918-154652
base:   https://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git for-next
patch link:    https://lore.kernel.org/r/20230918073151.7660-5-zhangqing%40rock-chips.com
patch subject: [PATCH v1 4/8] clk: rockchip: Avoid __clk_lookup() calls
config: arm64-defconfig (https://download.01.org/0day-ci/archive/20230919/202309190032.1NPAySNx-lkp@intel.com/config)
compiler: aarch64-linux-gcc (GCC) 13.2.0
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20230919/202309190032.1NPAySNx-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202309190032.1NPAySNx-lkp@intel.com/

All warnings (new ones prefixed by >>):

   In file included from drivers/clk/rockchip/clk-rk3328.c:13:
>> drivers/clk/rockchip/clk-rk3328.c:160:7: warning: 'mux_armclk_p' defined but not used [-Wunused-const-variable=]
     160 | PNAME(mux_armclk_p)             = { "apll_core",
         |       ^~~~~~~~~~~~
   drivers/clk/rockchip/clk.h:512:43: note: in definition of macro 'PNAME'
     512 | #define PNAME(x) static const char *const x[] __initconst
         |                                           ^
--
   In file included from drivers/clk/rockchip/clk-rk3588.c:13:
>> drivers/clk/rockchip/clk-rk3588.c:447:7: warning: 'mux_armclkb23_p' defined but not used [-Wunused-const-variable=]
     447 | PNAME(mux_armclkb23_p)                  = { "xin24m", "gpll", "b1pll",};
         |       ^~~~~~~~~~~~~~~
   drivers/clk/rockchip/clk.h:512:43: note: in definition of macro 'PNAME'
     512 | #define PNAME(x) static const char *const x[] __initconst
         |                                           ^
>> drivers/clk/rockchip/clk-rk3588.c:446:7: warning: 'mux_armclkb01_p' defined but not used [-Wunused-const-variable=]
     446 | PNAME(mux_armclkb01_p)                  = { "xin24m", "gpll", "b0pll",};
         |       ^~~~~~~~~~~~~~~
   drivers/clk/rockchip/clk.h:512:43: note: in definition of macro 'PNAME'
     512 | #define PNAME(x) static const char *const x[] __initconst
         |                                           ^
>> drivers/clk/rockchip/clk-rk3588.c:445:7: warning: 'mux_armclkl_p' defined but not used [-Wunused-const-variable=]
     445 | PNAME(mux_armclkl_p)                    = { "xin24m", "gpll", "lpll" };
         |       ^~~~~~~~~~~~~
   drivers/clk/rockchip/clk.h:512:43: note: in definition of macro 'PNAME'
     512 | #define PNAME(x) static const char *const x[] __initconst
         |                                           ^


vim +/mux_armclk_p +160 drivers/clk/rockchip/clk-rk3328.c

fe3511ad8a1cf6 Elaine Zhang 2016-12-29  144  
fe3511ad8a1cf6 Elaine Zhang 2016-12-29  145  PNAME(mux_2plls_p)		= { "cpll", "gpll" };
fe3511ad8a1cf6 Elaine Zhang 2016-12-29  146  PNAME(mux_gpll_cpll_p)		= { "gpll", "cpll" };
fe3511ad8a1cf6 Elaine Zhang 2016-12-29  147  PNAME(mux_cpll_gpll_apll_p)	= { "cpll", "gpll", "apll" };
fe3511ad8a1cf6 Elaine Zhang 2016-12-29  148  PNAME(mux_2plls_xin24m_p)	= { "cpll", "gpll", "xin24m" };
fe3511ad8a1cf6 Elaine Zhang 2016-12-29  149  PNAME(mux_2plls_hdmiphy_p)	= { "cpll", "gpll",
fe3511ad8a1cf6 Elaine Zhang 2016-12-29  150  				    "dummy_hdmiphy" };
fe3511ad8a1cf6 Elaine Zhang 2016-12-29  151  PNAME(mux_4plls_p)		= { "cpll", "gpll",
fe3511ad8a1cf6 Elaine Zhang 2016-12-29  152  				    "dummy_hdmiphy",
fe3511ad8a1cf6 Elaine Zhang 2016-12-29  153  				    "usb480m" };
fe3511ad8a1cf6 Elaine Zhang 2016-12-29  154  PNAME(mux_2plls_u480m_p)	= { "cpll", "gpll",
fe3511ad8a1cf6 Elaine Zhang 2016-12-29  155  				    "usb480m" };
fe3511ad8a1cf6 Elaine Zhang 2016-12-29  156  PNAME(mux_2plls_24m_u480m_p)	= { "cpll", "gpll",
fe3511ad8a1cf6 Elaine Zhang 2016-12-29  157  				     "xin24m", "usb480m" };
fe3511ad8a1cf6 Elaine Zhang 2016-12-29  158  
fe3511ad8a1cf6 Elaine Zhang 2016-12-29  159  PNAME(mux_ddrphy_p)		= { "dpll", "apll", "cpll" };
fe3511ad8a1cf6 Elaine Zhang 2016-12-29 @160  PNAME(mux_armclk_p)		= { "apll_core",
fe3511ad8a1cf6 Elaine Zhang 2016-12-29  161  				    "gpll_core",
fe3511ad8a1cf6 Elaine Zhang 2016-12-29  162  				    "dpll_core",
fe3511ad8a1cf6 Elaine Zhang 2016-12-29  163  				    "npll_core"};
fe3511ad8a1cf6 Elaine Zhang 2016-12-29  164  PNAME(mux_hdmiphy_p)		= { "hdmi_phy", "xin24m" };
fe3511ad8a1cf6 Elaine Zhang 2016-12-29  165  PNAME(mux_usb480m_p)		= { "usb480m_phy",
fe3511ad8a1cf6 Elaine Zhang 2016-12-29  166  				    "xin24m" };
fe3511ad8a1cf6 Elaine Zhang 2016-12-29  167  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
