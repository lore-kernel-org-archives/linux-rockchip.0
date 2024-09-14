Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9DC87C021BE
	for <linux-rockchip@archiver.kernel.org>; Sat, 14 Sep 2024 22:01:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uWYj2/mqxCxmzd2R6fvX3U10g7rY1QPDdKSInP9iZnQ=; b=kFwatTrm5dCl2r
	vrV4r3oKMd8GgNoUz+G3QY4SZev22ebO23kN1zQBTADcmu/qvXh9RtF7tQnA5xB4R3ndBtZ+fAhLV
	UhTdylPhAXpOqaKfeDh7hwBn6HXFE3vJFxQmF4fTJiG+MfAzCnQp7y5uGKlATVhCx1Dk55+n2EtRg
	X6WWsTLCLoMZHMVWvIEuN3Adv4rUpcuRh10U53JLIJYNxtHzx5IjzwToymFUTGeCUD27AQx9gvneT
	zHXOUvMOgnHSbkjtcxKbzC6NIRjU73bqILw57k0aXYysbTeJc6FPYbShbqyZnOeW84zozoSUJkbFQ
	uqrAFqCi3b8+Rc4XCziQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1spapy-00000001IEw-0IdZ;
	Sat, 14 Sep 2024 22:01:50 +0000
Received: from mgamail.intel.com ([198.175.65.19])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1spakp-00000001Hm9-2Lbd
	for linux-rockchip@lists.infradead.org;
	Sat, 14 Sep 2024 21:56:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1726350992; x=1757886992;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=HONKP6meiWzmmstQSCCpRW26Os2viDXcDHatYCQHqUA=;
  b=LmQCNGXfDpDznEoLh+FCv9NPBbT+eAMdMtMrQSExA3h5J0nWsTTt/vU8
   flkERSJksWrJ+D0GQzRKdePfVN4gIdX7Kl9zpHZ74g8L90YK76EarbLNk
   ilzyjZzFRyQZYmzzKsvGxg0c/zbBW51LGE6ljp5zn/PDpDlQxnX5oxLDk
   F5o9wkbEKKaoxfQPIn8SLApdBJ2apUxVkTlVI2u/GJ3wXswxoxw1z+ZHS
   lB1FvXBwVHyEuTXE4XqdgI9tE5tWq8e4q1GXHF0l3lkzVcUYo47lgRToH
   INX7dr2O7HDorfr4cccgS3ZglecT1T5s/f37CtX5MDR+naDBot+N+zCdZ
   Q==;
X-CSE-ConnectionGUID: wxQa7gT/R9q4vo7M8GRR7w==
X-CSE-MsgGUID: aqrUhd5GRVm7SYVLxn8z1Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11195"; a="25102546"
X-IronPort-AV: E=Sophos;i="6.10,229,1719903600"; 
   d="scan'208";a="25102546"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
  by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 14 Sep 2024 14:56:25 -0700
X-CSE-ConnectionGUID: oQhkDjMORsWVs6ZybRMHvQ==
X-CSE-MsgGUID: KJj93yJAT3aGsFj54wp6ug==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,229,1719903600"; 
   d="scan'208";a="73237146"
Received: from lkp-server01.sh.intel.com (HELO 53e96f405c61) ([10.239.97.150])
  by orviesa003.jf.intel.com with ESMTP; 14 Sep 2024 14:56:21 -0700
Received: from kbuild by 53e96f405c61 with local (Exim 4.96)
	(envelope-from <lkp@intel.com>)
	id 1spakc-0008Aa-1W;
	Sat, 14 Sep 2024 21:56:18 +0000
Date: Sun, 15 Sep 2024 05:55:55 +0800
From: kernel test robot <lkp@intel.com>
To: Sebastian Reichel <sebastian.reichel@collabora.com>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>, linux-clk@vger.kernel.org
Cc: oe-kbuild-all@lists.linux.dev, Elaine Zhang <zhangqing@rock-chips.com>,
	Kever Yang <kever.yang@rock-chips.com>,
	Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzk@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, huangtao@rock-chips.com,
	andy.yan@rock-chips.com, Michal Tomek <mtdev79b@gmail.com>,
	Ilya K <me@0upti.me>, Chad LeClair <leclair@gmail.com>,
	devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	kernel@collabora.com
Subject: Re: [PATCH v10 4/5] clk: rockchip: implement linked gate clock
 support
Message-ID: <202409150520.vkJNLGY9-lkp@intel.com>
References: <20240913184720.57381-5-sebastian.reichel@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240913184720.57381-5-sebastian.reichel@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240914_145631_712639_FC9BD4D8 
X-CRM114-Status: GOOD (  11.50  )
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

kernel test robot noticed the following build warnings:

[auto build test WARNING on rockchip/for-next]
[also build test WARNING on clk/clk-next next-20240913]
[cannot apply to linus/master v6.11-rc7]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Sebastian-Reichel/clk-rockchip-support-clocks-registered-late/20240914-024907
base:   https://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git for-next
patch link:    https://lore.kernel.org/r/20240913184720.57381-5-sebastian.reichel%40collabora.com
patch subject: [PATCH v10 4/5] clk: rockchip: implement linked gate clock support
config: arm64-randconfig-r123-20240914 (https://download.01.org/0day-ci/archive/20240915/202409150520.vkJNLGY9-lkp@intel.com/config)
compiler: aarch64-linux-gcc (GCC) 14.1.0
reproduce: (https://download.01.org/0day-ci/archive/20240915/202409150520.vkJNLGY9-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202409150520.vkJNLGY9-lkp@intel.com/

sparse warnings: (new ones prefixed by >>)
>> drivers/clk/rockchip/gate-link.c:72:24: sparse: sparse: symbol 'rk_clk_gate_link_driver' was not declared. Should it be static?

vim +/rk_clk_gate_link_driver +72 drivers/clk/rockchip/gate-link.c

    71	
  > 72	struct platform_driver rk_clk_gate_link_driver = {
    73		.probe		= rk_clk_gate_link_probe,
    74		.driver		= {
    75			.name	= "rockchip-gate-link-clk",
    76			.pm = &rk_clk_gate_link_pm_ops,
    77			.suppress_bind_attrs = true,
    78		},
    79	};
    80	

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
