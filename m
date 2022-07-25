Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 21520C43334
	for <linux-rockchip@archiver.kernel.org>; Mon, 25 Jul 2022 01:32:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Q7rPFLF63CT50HJQBwLYfnTDuH5Ad2XCMO+oXwdZ1Xo=; b=IFgLmaVrzUuyF0
	GL3GpYaqIBzliYcTK3ZOG5NNQSbcCnDVi8qki+nwgvOqQ+SHGT5UdVN1i/9WrIRFwfhuTOTSD4B9d
	CULLLTT1D6SR09SnNzxlsBdGeBQ/Ifvh9AVkDebNNMxKyBjrBrhYys9hKCfYVyKAcLeXup/ODjtYF
	z+DvvihqWia8QVPePma9TTxOC3PQz+HZGYmGuv9OkIay6SL9m2R/6sH5+JE+aFG+JH2yDAEokVbpv
	v/PkAPCpTL/I6vh3CXyw5YmFXz9gyjW1a3rRjeFgI07CIOEpdvcRg54QmJO3rwdlU59n2UBNcq/Tg
	4c7EHgWDMYIHz0vxlflA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oFmx4-00HX4O-64; Mon, 25 Jul 2022 01:32:06 +0000
Received: from mga03.intel.com ([134.134.136.65])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oFmwr-00HWpd-Uo; Mon, 25 Jul 2022 01:31:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1658712713; x=1690248713;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=ZN74i/3ZpGH8/ngjwC3petHixMlADAmTATCA5C0PFrk=;
  b=Udth5G7OTBz6ctnd5i4Ow38uwpdXse8YRzGBB8JnN3fA5bhu3NvgigJc
   3f/RSxaOrkByIBuFfzV7bHb6zXWrHHhkfH7hnNm/jAQ6uY6Opkty9HK4A
   L9oLSbnusqKzlUdmTd8J1sT2ewSEol3BWpstyWl86ZXpPx7OOo6W1CE4J
   hx6LTeod6JbUdjMr7oPr/4UJW1GvutPxi9TV8g2mv5u3cAl4ae8XgMHR9
   b6ZwIWsv84F7mAKQ/8b3d5/WffWhebn/3ewAtLf7Ra7AZe3GVzWmE1dFT
   ZfW0Upmc1gFR2GOR4ln8ILfWLUK6hGT2/BGYVJ5smCz3SS6sWvrfLPj3m
   A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10418"; a="288771374"
X-IronPort-AV: E=Sophos;i="5.93,191,1654585200"; 
   d="scan'208";a="288771374"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
  by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 24 Jul 2022 18:31:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,191,1654585200"; 
   d="scan'208";a="574847806"
Received: from lkp-server01.sh.intel.com (HELO e0eace57cfef) ([10.239.97.150])
  by orsmga006.jf.intel.com with ESMTP; 24 Jul 2022 18:31:46 -0700
Received: from kbuild by e0eace57cfef with local (Exim 4.96)
	(envelope-from <lkp@intel.com>)
	id 1oFmwj-0004aX-2j;
	Mon, 25 Jul 2022 01:31:45 +0000
Date: Mon, 25 Jul 2022 09:31:17 +0800
From: kernel test robot <lkp@intel.com>
To: Jagan Teki <jagan@edgeble.ai>, Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzk@kernel.org>,
	Kever Yang <kever.yang@rock-chips.com>
Cc: llvm@lists.linux.dev, kbuild-all@lists.01.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
	Jagan Teki <jagan@edgeble.ai>, linux-clk@vger.kernel.org,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Finley Xiao <finley.xiao@rock-chips.com>
Subject: Re: [PATCH 10/22] clk: rockchip: Add RV1126 clock controller
Message-ID: <202207250930.PM0gI4EI-lkp@intel.com>
References: <20220723204335.750095-11-jagan@edgeble.ai>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220723204335.750095-11-jagan@edgeble.ai>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220724_183154_086249_8B9A1B0D 
X-CRM114-Status: GOOD (  13.43  )
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

Hi Jagan,

I love your patch! Perhaps something to improve:

[auto build test WARNING on rockchip/for-next]
[also build test WARNING on robh/for-next linusw-pinctrl/devel clk/clk-next lee-mfd/for-mfd-next soc/for-next linus/master v5.19-rc8 next-20220722]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Jagan-Teki/ARM-Add-Rockchip-RV1126-support/20220724-044645
base:   https://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git for-next
config: arm64-randconfig-r034-20220724 (https://download.01.org/0day-ci/archive/20220725/202207250930.PM0gI4EI-lkp@intel.com/config)
compiler: clang version 15.0.0 (https://github.com/llvm/llvm-project 12fbd2d377e396ad61bce56d71c98a1eb1bebfa9)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install arm64 cross compiling tool for clang build
        # apt-get install binutils-aarch64-linux-gnu
        # https://github.com/intel-lab-lkp/linux/commit/bf47ecd1af07018e35b815e7a40172dce3fffdb6
        git remote add linux-review https://github.com/intel-lab-lkp/linux
        git fetch --no-tags linux-review Jagan-Teki/ARM-Add-Rockchip-RV1126-support/20220724-044645
        git checkout bf47ecd1af07018e35b815e7a40172dce3fffdb6
        # save the config file
        mkdir build_dir && cp config build_dir/.config
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross W=1 O=build_dir ARCH=arm64 SHELL=/bin/bash drivers/clk/rockchip/

If you fix the issue, kindly add following tag where applicable
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

>> drivers/clk/rockchip/clk-rv1126.c:176:7: warning: unused variable 'mux_cpll_hpll_gpll_p' [-Wunused-const-variable]
   PNAME(mux_cpll_hpll_gpll_p)             = { "cpll", "hpll", "gpll" };
         ^
>> drivers/clk/rockchip/clk-rv1126.c:177:7: warning: unused variable 'mux_cpll_gpll_hpll_p' [-Wunused-const-variable]
   PNAME(mux_cpll_gpll_hpll_p)             = { "cpll", "gpll", "hpll" };
         ^
>> drivers/clk/rockchip/clk-rv1126.c:178:7: warning: unused variable 'mux_dclk_vop_p' [-Wunused-const-variable]
   PNAME(mux_dclk_vop_p)                   = { "dclk_vop_div", "dclk_vop_fracdiv", "xin24m" };
         ^
>> drivers/clk/rockchip/clk-rv1126.c:179:7: warning: unused variable 'mux_aclk_pdvi_p' [-Wunused-const-variable]
   PNAME(mux_aclk_pdvi_p)                  = { "aclk_pdvi_div", "aclk_pdvi_np5" };
         ^
>> drivers/clk/rockchip/clk-rv1126.c:180:7: warning: unused variable 'mux_gpll_cpll_hpll_p' [-Wunused-const-variable]
   PNAME(mux_gpll_cpll_hpll_p)             = { "gpll", "cpll", "hpll" };
         ^
>> drivers/clk/rockchip/clk-rv1126.c:181:7: warning: unused variable 'mux_clk_isp_p' [-Wunused-const-variable]
   PNAME(mux_clk_isp_p)                    = { "clk_isp_div", "clk_isp_np5" };
         ^
>> drivers/clk/rockchip/clk-rv1126.c:182:7: warning: unused variable 'mux_gpll_usb480m_p' [-Wunused-const-variable]
   PNAME(mux_gpll_usb480m_p)               = { "gpll", "usb480m" };
         ^
>> drivers/clk/rockchip/clk-rv1126.c:183:7: warning: unused variable 'mux_cif_out2io_p' [-Wunused-const-variable]
   PNAME(mux_cif_out2io_p)                 = { "xin24m", "clk_cif_out2io_div", "clk_cif_out2io_fracdiv" };
         ^
>> drivers/clk/rockchip/clk-rv1126.c:184:7: warning: unused variable 'mux_mipicsi_out2io_p' [-Wunused-const-variable]
   PNAME(mux_mipicsi_out2io_p)             = { "xin24m", "clk_mipicsi_out2io_div", "clk_mipicsi_out2io_fracdiv" };
         ^
>> drivers/clk/rockchip/clk-rv1126.c:185:7: warning: unused variable 'mux_aclk_pdispp_p' [-Wunused-const-variable]
   PNAME(mux_aclk_pdispp_p)                = { "aclk_pdispp_div", "aclk_pdispp_npu" };
         ^
>> drivers/clk/rockchip/clk-rv1126.c:186:7: warning: unused variable 'mux_clk_ispp_p' [-Wunused-const-variable]
   PNAME(mux_clk_ispp_p)                   = { "clk_ispp_div", "clk_ispp_npu" };
         ^
>> drivers/clk/rockchip/clk-rv1126.c:195:7: warning: unused variable 'mux_gpll_cpll_apll_hpll_p' [-Wunused-const-variable]
   PNAME(mux_gpll_cpll_apll_hpll_p)        = { "gpll", "cpll", "dummy_apll", "hpll" };
         ^
>> drivers/clk/rockchip/clk-rv1126.c:196:7: warning: unused variable 'mux_aclk_pdnpu_p' [-Wunused-const-variable]
   PNAME(mux_aclk_pdnpu_p)                 = { "aclk_pdnpu_div", "aclk_pdnpu_np5" };
         ^
>> drivers/clk/rockchip/clk-rv1126.c:197:7: warning: unused variable 'mux_clk_npu_p' [-Wunused-const-variable]
   PNAME(mux_clk_npu_p)                    = { "clk_npu_div", "clk_npu_np5" };
         ^
   14 warnings generated.


vim +/mux_cpll_hpll_gpll_p +176 drivers/clk/rockchip/clk-rv1126.c

   142	
   143	PNAME(mux_pll_p)			= { "xin24m" };
   144	PNAME(mux_rtc32k_p)			= { "clk_pmupvtm_divout", "xin32k", "clk_osc0_div32k" };
   145	PNAME(mux_wifi_p)			= { "clk_wifi_osc0", "clk_wifi_div" };
   146	PNAME(mux_gpll_usb480m_cpll_xin24m_p)	= { "gpll", "usb480m", "cpll", "xin24m" };
   147	PNAME(mux_uart1_p)			= { "sclk_uart1_div", "sclk_uart1_fracdiv", "xin24m" };
   148	PNAME(mux_xin24m_gpll_p)		= { "xin24m", "gpll" };
   149	PNAME(mux_gpll_xin24m_p)		= { "gpll", "xin24m" };
   150	PNAME(mux_xin24m_32k_p)			= { "xin24m", "clk_rtc32k" };
   151	PNAME(mux_usbphy_otg_ref_p)		= { "clk_ref12m", "xin_osc0_div2_usbphyref_otg" };
   152	PNAME(mux_usbphy_host_ref_p)		= { "clk_ref12m", "xin_osc0_div2_usbphyref_host" };
   153	PNAME(mux_mipidsiphy_ref_p)		= { "clk_ref24m", "xin_osc0_mipiphyref" };
   154	PNAME(mux_usb480m_p)			= { "xin24m", "usb480m_phy", "clk_rtc32k" };
   155	PNAME(mux_armclk_p)			= { "gpll", "cpll", "apll" };
   156	PNAME(mux_gpll_cpll_dpll_p)		= { "gpll", "cpll", "dummy_dpll" };
   157	PNAME(mux_gpll_cpll_p)			= { "gpll", "cpll" };
   158	PNAME(mux_hclk_pclk_pdbus_p)		= { "gpll", "dummy_cpll" };
   159	PNAME(mux_gpll_cpll_usb480m_xin24m_p)	= { "gpll", "cpll", "usb480m", "xin24m" };
   160	PNAME(mux_uart0_p)			= { "sclk_uart0_div", "sclk_uart0_frac", "xin24m" };
   161	PNAME(mux_uart2_p)			= { "sclk_uart2_div", "sclk_uart2_frac", "xin24m" };
   162	PNAME(mux_uart3_p)			= { "sclk_uart3_div", "sclk_uart3_frac", "xin24m" };
   163	PNAME(mux_uart4_p)			= { "sclk_uart4_div", "sclk_uart4_frac", "xin24m" };
   164	PNAME(mux_uart5_p)			= { "sclk_uart5_div", "sclk_uart5_frac", "xin24m" };
   165	PNAME(mux_cpll_gpll_p)			= { "cpll", "gpll" };
   166	PNAME(mux_i2s0_tx_p)			= { "mclk_i2s0_tx_div", "mclk_i2s0_tx_fracdiv", "i2s0_mclkin", "xin12m" };
   167	PNAME(mux_i2s0_rx_p)			= { "mclk_i2s0_rx_div", "mclk_i2s0_rx_fracdiv", "i2s0_mclkin", "xin12m" };
   168	PNAME(mux_i2s0_tx_out2io_p)		= { "mclk_i2s0_tx", "xin12m" };
   169	PNAME(mux_i2s0_rx_out2io_p)		= { "mclk_i2s0_rx", "xin12m" };
   170	PNAME(mux_i2s1_p)			= { "mclk_i2s1_div", "mclk_i2s1_fracdiv", "i2s1_mclkin", "xin12m" };
   171	PNAME(mux_i2s1_out2io_p)		= { "mclk_i2s1", "xin12m" };
   172	PNAME(mux_i2s2_p)			= { "mclk_i2s2_div", "mclk_i2s2_fracdiv", "i2s2_mclkin", "xin12m" };
   173	PNAME(mux_i2s2_out2io_p)		= { "mclk_i2s2", "xin12m" };
   174	PNAME(mux_gpll_cpll_xin24m_p)		= { "gpll", "cpll", "xin24m" };
   175	PNAME(mux_audpwm_p)			= { "sclk_audpwm_div", "sclk_audpwm_fracdiv", "xin24m" };
 > 176	PNAME(mux_cpll_hpll_gpll_p)		= { "cpll", "hpll", "gpll" };
 > 177	PNAME(mux_cpll_gpll_hpll_p)		= { "cpll", "gpll", "hpll" };
 > 178	PNAME(mux_dclk_vop_p)			= { "dclk_vop_div", "dclk_vop_fracdiv", "xin24m" };
 > 179	PNAME(mux_aclk_pdvi_p)			= { "aclk_pdvi_div", "aclk_pdvi_np5" };
 > 180	PNAME(mux_gpll_cpll_hpll_p)		= { "gpll", "cpll", "hpll" };
 > 181	PNAME(mux_clk_isp_p)			= { "clk_isp_div", "clk_isp_np5" };
 > 182	PNAME(mux_gpll_usb480m_p)		= { "gpll", "usb480m" };
 > 183	PNAME(mux_cif_out2io_p)			= { "xin24m", "clk_cif_out2io_div", "clk_cif_out2io_fracdiv" };
 > 184	PNAME(mux_mipicsi_out2io_p)		= { "xin24m", "clk_mipicsi_out2io_div", "clk_mipicsi_out2io_fracdiv" };
 > 185	PNAME(mux_aclk_pdispp_p)		= { "aclk_pdispp_div", "aclk_pdispp_npu" };
 > 186	PNAME(mux_clk_ispp_p)			= { "clk_ispp_div", "clk_ispp_npu" };
   187	PNAME(mux_usb480m_gpll_p)		= { "usb480m", "gpll" };
   188	PNAME(clk_gmac_src_m0_p)		= { "clk_gmac_div", "clk_gmac_rgmii_m0" };
   189	PNAME(clk_gmac_src_m1_p)		= { "clk_gmac_div", "clk_gmac_rgmii_m1" };
   190	PNAME(mux_clk_gmac_src_p)		= { "clk_gmac_src_m0", "clk_gmac_src_m1" };
   191	PNAME(mux_rgmii_clk_p)			= { "clk_gmac_tx_div50", "clk_gmac_tx_div5", "clk_gmac_tx_src", "clk_gmac_tx_src"};
   192	PNAME(mux_rmii_clk_p)			= { "clk_gmac_rx_div20", "clk_gmac_rx_div2" };
   193	PNAME(mux_gmac_tx_rx_p)			= { "rgmii_mode_clk", "rmii_mode_clk" };
   194	PNAME(mux_dpll_gpll_p)			= { "dpll", "gpll" };
 > 195	PNAME(mux_gpll_cpll_apll_hpll_p)	= { "gpll", "cpll", "dummy_apll", "hpll" };
 > 196	PNAME(mux_aclk_pdnpu_p)			= { "aclk_pdnpu_div", "aclk_pdnpu_np5" };
 > 197	PNAME(mux_clk_npu_p)			= { "clk_npu_div", "clk_npu_np5" };
   198	

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
