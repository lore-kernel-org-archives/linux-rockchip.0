Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 50338C76196
	for <linux-rockchip@archiver.kernel.org>; Fri, 31 Mar 2023 18:03:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DU1SCO2MwMtuEYD9vksif+wf/7PSAuBQmiea7oz+0Bg=; b=NauDy1N9RmrXPI
	bofice0KqyvgDFl8rlktEA07NaAtuVF9xAil4Mi+uvegsqDCsu45dD6+wND6BMYh9Nrf32JIkHSxG
	esEkucc7EpGZXOaypDIXApPCG7jxmYGxazorwry5AJLHci9Ho32m1z2CxuBIo3H6ZHB840IkZQGYu
	QvfWw1xEBnXqMyxtubFkVqp61EHdEXqw7uwZUvkkmrIRXepRqjI3njCZ319cA9mlaMj7otRUvfhZY
	/XCN4ueIA5P8cz5HsNODlMRgODZU0QJrWdI77yMnvlyQ9XNJbHDET+mhmbnGmnVfnQMSSbyq59qq2
	BZbm2WkiANfUiYAQOfNg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1piJ5l-008ObN-0Z;
	Fri, 31 Mar 2023 18:03:13 +0000
Received: from mga11.intel.com ([192.55.52.93])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1piJ5h-008OaI-03;
	Fri, 31 Mar 2023 18:03:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1680285788; x=1711821788;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=1ZE2ydukO2Pi03RV+PLnVNWf0erf6eWYtcxgNoWA6ks=;
  b=TRa/baekMFy4v9l2ObmR2JCoNlmkWuuQruizvdUTF+UjX/F3VlpUNZao
   KDeT4bRFlPJhgagiKHkAV4b1wM5oAdeqvnOCVvRQv1PyttSp43H7vVx++
   4ZF4CTtinel29+Czol/rX8IyvuT4YKX9vFn9E2matnM2whykKRwDce44J
   ddRFTlQGZJLgsVrQn1Vvtr+rVzqCsBBZA3JrNz8FetXx+rlRsfHlqy0iz
   ost+UX/p6uBneoCsffBJvhjO1VspCofQdHhSdLCdw/j32hcAsV9qKYJ4a
   0yFLgq0Dg8DiP/BqrYMhljGgAOqfQaQNxzZMEHr0E5VEk6qE7WOsSfQqt
   A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10666"; a="339021799"
X-IronPort-AV: E=Sophos;i="5.98,307,1673942400"; 
   d="scan'208";a="339021799"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
  by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 31 Mar 2023 11:02:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10666"; a="828805835"
X-IronPort-AV: E=Sophos;i="5.98,307,1673942400"; 
   d="scan'208";a="828805835"
Received: from lkp-server01.sh.intel.com (HELO b613635ddfff) ([10.239.97.150])
  by fmsmga001.fm.intel.com with ESMTP; 31 Mar 2023 11:02:49 -0700
Received: from kbuild by b613635ddfff with local (Exim 4.96)
	(envelope-from <lkp@intel.com>)
	id 1piJ5M-000M1Z-2c;
	Fri, 31 Mar 2023 18:02:48 +0000
Date: Sat, 1 Apr 2023 02:02:35 +0800
From: kernel test robot <lkp@intel.com>
To: Sebastian Reichel <sebastian.reichel@collabora.com>,
	Heiko Stuebner <heiko@sntech.de>,
	linux-rockchip@lists.infradead.org
Cc: oe-kbuild-all@lists.linux.dev, Peter Geis <pgwipeout@gmail.com>,
	Elaine Zhang <zhangqing@rock-chips.com>,
	Finley Xiao <finley.xiao@rock-chips.com>,
	Jagan Teki <jagan@edgeble.ai>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Boris Brezillon <bbrezillon@kernel.org>, linux-clk@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	kernel@collabora.com,
	Sebastian Reichel <sebastian.reichel@collabora.com>
Subject: Re: [PATCHv1 2/2] soc: rockchip: power-domain: add rk3588 mem module
 support
Message-ID: <202304010108.ta6EkS7C-lkp@intel.com>
References: <20230331163058.5688-3-sebastian.reichel@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230331163058.5688-3-sebastian.reichel@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230331_110309_074158_BB3B7880 
X-CRM114-Status: GOOD (  19.02  )
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

Hi Sebastian,

I love your patch! Yet something to improve:

[auto build test ERROR on rockchip/for-next]
[also build test ERROR on linus/master v6.3-rc4 next-20230331]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Sebastian-Reichel/clk-rockchip-rk3588-make-gate-linked-clocks-ignore-unused/20230401-003605
base:   https://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git for-next
patch link:    https://lore.kernel.org/r/20230331163058.5688-3-sebastian.reichel%40collabora.com
patch subject: [PATCHv1 2/2] soc: rockchip: power-domain: add rk3588 mem module support
config: riscv-allmodconfig (https://download.01.org/0day-ci/archive/20230401/202304010108.ta6EkS7C-lkp@intel.com/config)
compiler: riscv64-linux-gcc (GCC) 12.1.0
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # https://github.com/intel-lab-lkp/linux/commit/8a9b7bc14bff10030ef40e0350429490ff984f26
        git remote add linux-review https://github.com/intel-lab-lkp/linux
        git fetch --no-tags linux-review Sebastian-Reichel/clk-rockchip-rk3588-make-gate-linked-clocks-ignore-unused/20230401-003605
        git checkout 8a9b7bc14bff10030ef40e0350429490ff984f26
        # save the config file
        mkdir build_dir && cp config build_dir/.config
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=gcc-12.1.0 make.cross W=1 O=build_dir ARCH=riscv olddefconfig
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=gcc-12.1.0 make.cross W=1 O=build_dir ARCH=riscv SHELL=/bin/bash drivers/soc/

If you fix the issue, kindly add following tag where applicable
| Reported-by: kernel test robot <lkp@intel.com>
| Link: https://lore.kernel.org/oe-kbuild-all/202304010108.ta6EkS7C-lkp@intel.com/

All errors (new ones prefixed by >>):

   drivers/soc/rockchip/pm_domains.c: In function 'rockchip_pmu_domain_mem_reset':
>> drivers/soc/rockchip/pm_domains.c:462:9: error: implicit declaration of function 'dsb' [-Werror=implicit-function-declaration]
     462 |         dsb(sy);
         |         ^~~
>> drivers/soc/rockchip/pm_domains.c:462:13: error: 'sy' undeclared (first use in this function); did you mean 's8'?
     462 |         dsb(sy);
         |             ^~
         |             s8
   drivers/soc/rockchip/pm_domains.c:462:13: note: each undeclared identifier is reported only once for each function it appears in
   cc1: some warnings being treated as errors


vim +/dsb +462 drivers/soc/rockchip/pm_domains.c

   441	
   442	static int rockchip_pmu_domain_mem_reset(struct rockchip_pm_domain *pd)
   443	{
   444		struct rockchip_pmu *pmu = pd->pmu;
   445		struct generic_pm_domain *genpd = &pd->genpd;
   446		bool is_on;
   447		int ret = 0;
   448	
   449		ret = readx_poll_timeout_atomic(rockchip_pmu_domain_is_chain_on, pd, is_on,
   450						is_on == true, 0, 10000);
   451		if (ret) {
   452			dev_err(pmu->dev,
   453				"failed to get chain status '%s', target_on=1, val=%d\n",
   454				genpd->name, is_on);
   455			goto error;
   456		}
   457	
   458		udelay(20);
   459	
   460		regmap_write(pmu->regmap, pmu->info->mem_pwr_offset + pd->info->pwr_offset,
   461			     (pd->info->pwr_mask | pd->info->pwr_w_mask));
 > 462		dsb(sy);
   463	
   464		ret = readx_poll_timeout_atomic(rockchip_pmu_domain_is_mem_on, pd, is_on,
   465						is_on == false, 0, 10000);
   466		if (ret) {
   467			dev_err(pmu->dev,
   468				"failed to get mem status '%s', target_on=0, val=%d\n",
   469				genpd->name, is_on);
   470			goto error;
   471		}
   472	
   473		regmap_write(pmu->regmap, pmu->info->mem_pwr_offset + pd->info->pwr_offset,
   474			     pd->info->pwr_w_mask);
   475		dsb(sy);
   476	
   477		ret = readx_poll_timeout_atomic(rockchip_pmu_domain_is_mem_on, pd, is_on,
   478						is_on == true, 0, 10000);
   479		if (ret) {
   480			dev_err(pmu->dev,
   481				"failed to get mem status '%s', target_on=1, val=%d\n",
   482				genpd->name, is_on);
   483		}
   484	
   485	error:
   486		return ret;
   487	}
   488	

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
