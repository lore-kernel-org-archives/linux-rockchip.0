Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DDD05CCD193
	for <linux-rockchip@archiver.kernel.org>; Sat, 18 Oct 2025 23:23:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=u91BR2qteJhrQdUnwNZZbHlcdduf+mjmsw5XYQFBP2I=; b=Ia+qhm3ndF9W5Q
	hd/7dWIaxA1jwfvZnvAz+aH4A0zzjFKTUWYsIaM4dqtL9SpclVcg8l0BGtu0r52ZiSCOyfkJD/4mC
	MhYAUm7joF7n2Bq6hz0TdtpAejNlPes2Kjbm91uxcaHV5P93q/J8sms/bnt0UlgqQwFk84IKj9rH6
	6u8F5F3jIxmk3E7uZW+OIls3HIMplztU1NBvRWyPLXDdKy+P+S7AJwyylcTsuMc0UiUWNsyuiBYpl
	4cU7qLvAM4/0pWfaG8bHLQmQVWWG7MsAER7XPpKQuGx/elMLW6eT+g5DGTmNkPags0zSshiDZVbzq
	OMWJZwxkMP4VRVAQoOFA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vAGGx-0000000AXjQ-2hW6;
	Sat, 18 Oct 2025 23:23:39 +0000
Received: from mgamail.intel.com ([192.198.163.15])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vAGGu-0000000AXid-3yHL;
	Sat, 18 Oct 2025 23:23:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1760829817; x=1792365817;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=9MLdj9wpJXNrazCJbFGZFgXo0Adj941uIsE+4ls2ZM0=;
  b=SWgO5NW5y8vAQoIBNF1UyuXuXKoFi5VSBuggpYLsFxGqi1Mqyo3sE9rg
   pNJTeGBAdn8gh7211RrATIfADyB55+js3V53xa+8/6PyMutEgGIlir7L0
   RqzQY+GNLRe+hhPrnYSLb+isc3+yfeCudp+vyDrSPB8BQdlJuYGj0eHLh
   PDm3/tADm1Z/LXEgGv76xl8hoswh0rMwQRA9MaBAprs7MTVM0Fjk5Bq6y
   tLQIG9vUmm8/WOnvS20R5SI2xpBVvudT2U13Q6iMyJV/+i8y1eZLCxU8I
   2a1J6bgZ2QXbMNXcSolDcY36YXsDRra1NkQulexEg7wFpkYw7nkwvLXfh
   g==;
X-CSE-ConnectionGUID: FEaow+LESOyJqmgh4rIb8g==
X-CSE-MsgGUID: nj7IHGYLQf+zbceirVcgYA==
X-IronPort-AV: E=McAfee;i="6800,10657,11586"; a="63093910"
X-IronPort-AV: E=Sophos;i="6.19,239,1754982000"; 
   d="scan'208";a="63093910"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
  by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 18 Oct 2025 16:23:24 -0700
X-CSE-ConnectionGUID: Md/aauc6THu4J5WtQX8jPw==
X-CSE-MsgGUID: 33V5Xx+lRm+o3dlrbXe5kw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,239,1754982000"; 
   d="scan'208";a="182977975"
Received: from lkp-server02.sh.intel.com (HELO 66d7546c76b2) ([10.239.97.151])
  by fmviesa006.fm.intel.com with ESMTP; 18 Oct 2025 16:23:21 -0700
Received: from kbuild by 66d7546c76b2 with local (Exim 4.96)
	(envelope-from <lkp@intel.com>)
	id 1vAGFT-0008gj-1N;
	Sat, 18 Oct 2025 23:22:42 +0000
Date: Sun, 19 Oct 2025 07:21:21 +0800
From: kernel test robot <lkp@intel.com>
To: Elaine Zhang <zhangqing@rock-chips.com>, mturquette@baylibre.com,
	sboyd@kernel.org, sugar.zhang@rock-chips.com, heiko@sntech.de,
	robh@kernel.org, krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org
Cc: llvm@lists.linux.dev, oe-kbuild-all@lists.linux.dev,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-clk@vger.kernel.org, linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org, huangtao@rock-chips.com
Subject: Re: [PATCH v2 3/5] clk: rockchip: Add clock controller for the
 RV1126B
Message-ID: <202510190651.YrDKfo1d-lkp@intel.com>
References: <20251017063107.1606965-4-zhangqing@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20251017063107.1606965-4-zhangqing@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251018_162337_024453_37BF6BED 
X-CRM114-Status: GOOD (  11.69  )
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

kernel test robot noticed the following build errors:

[auto build test ERROR on rockchip/for-next]
[also build test ERROR on clk/clk-next linus/master v6.18-rc1 next-20251017]
[cannot apply to pza/imx-drm/next]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Elaine-Zhang/clk-rockchip-Implement-rockchip_clk_register_armclk_multi_pll/20251017-180259
base:   https://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git for-next
patch link:    https://lore.kernel.org/r/20251017063107.1606965-4-zhangqing%40rock-chips.com
patch subject: [PATCH v2 3/5] clk: rockchip: Add clock controller for the RV1126B
config: arm-defconfig (https://download.01.org/0day-ci/archive/20251019/202510190651.YrDKfo1d-lkp@intel.com/config)
compiler: clang version 22.0.0git (https://github.com/llvm/llvm-project 754ebc6ebb9fb9fbee7aef33478c74ea74949853)
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20251019/202510190651.YrDKfo1d-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202510190651.YrDKfo1d-lkp@intel.com/

All errors (new ones prefixed by >>):

>> ld.lld: error: undefined symbol: rk3576_rst_init
   >>> referenced by clk-rv1126b.c:1050 (drivers/clk/rockchip/clk-rv1126b.c:1050)
   >>>               drivers/clk/rockchip/clk-rv1126b.o:(rv1126b_clk_init) in archive vmlinux.a

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
