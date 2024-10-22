Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0A949D1715E
	for <linux-rockchip@archiver.kernel.org>; Tue, 22 Oct 2024 04:34:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NxlDton7Kv+g7uC4LTT3Yz6fEq+nGkejHM6CeN9lHdw=; b=lwX/ALXhAuzMhx
	09/ir14SpuyHCj6fS3aPB66xohagKhSLbHH1Af0apgq0QdN61WohaB+hmbhaa0LkGDzTDtuIwUbzR
	t7VnbWVNsAXfRklXaZrzIEPh4l7Nrt4mkvteF5j51PfhI0NVMpmCX8HqDE4S0ccEyV0sgDg74/AeQ
	iTAKIViHeqJZOSOJKUp2pJ/KabHEZIn8OCVYPloUTRzmsihOp2ys3yxFZNA7fmEBLubrfZymvDBkq
	wjjfBgy9wEkzuLQVE5wUvqjSHoL+xwLfgDNMPoi/RK0cZVm5XihbclcVvflcO4GcvvsqZxnE+BxCe
	XjV0g1UrNB4UyAP+jbvg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t36bD-00000009ZQA-006E;
	Tue, 22 Oct 2024 04:34:27 +0000
Received: from mgamail.intel.com ([192.198.163.16])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t36bA-00000009ZPf-0yoF
	for linux-rockchip@lists.infradead.org;
	Tue, 22 Oct 2024 04:34:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1729571664; x=1761107664;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=7e5NYSzE2NoLAoHODKI75pJFPJGPF7bdkJmk3GtFVp4=;
  b=lF8wMFk77njqQs9u75O2UJzvIg5yoE7FnSzN0yFeB8p3Y/GwvUF4pUDg
   sF1OO81sLvxAFoufkA/uqwsJfJtyR3FSzkSvMI2I3ejvKF2ltKPEi/z80
   gFt1ZwKBbcbL26o4wNFt6x0BGP+yofeBzPdiUDbfkzW3Eq8Qfm0VFbocd
   iNGM7wtcMZP6d67QE4MDDBpQ35iTAIq5RWEq41JhkX0+j4avKQaHtdcSv
   8CSUnincDFu23NuKw26cSyaIru0ZwWNkOm9bk+jiCs6V+zOnS2HYnIQ2V
   A+66XTPX+go7eWq94VML8FIr23/07x06+0cYG5Y5AJQ+r+KuPEk8tWVlR
   A==;
X-CSE-ConnectionGUID: wXtBy9x+QgiDTS58jtL3Cg==
X-CSE-MsgGUID: eIofEVAVS2qFFSJPrLAo8Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11232"; a="16714388"
X-IronPort-AV: E=Sophos;i="6.11,222,1725346800"; 
   d="scan'208";a="16714388"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
  by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 21 Oct 2024 21:34:18 -0700
X-CSE-ConnectionGUID: HMhWDQ+pRoOPUnUEaSH/Ww==
X-CSE-MsgGUID: 64orfNxfQJOU4UYis/9F/Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,222,1725346800"; 
   d="scan'208";a="79657289"
Received: from lkp-server01.sh.intel.com (HELO a48cf1aa22e8) ([10.239.97.150])
  by orviesa009.jf.intel.com with ESMTP; 21 Oct 2024 21:34:14 -0700
Received: from kbuild by a48cf1aa22e8 with local (Exim 4.96)
	(envelope-from <lkp@intel.com>)
	id 1t36aw-000T46-2q;
	Tue, 22 Oct 2024 04:34:10 +0000
Date: Tue, 22 Oct 2024 12:33:22 +0800
From: kernel test robot <lkp@intel.com>
To: FUKAUMI Naoki <naoki@radxa.com>, heiko@sntech.de
Cc: llvm@lists.linux.dev, oe-kbuild-all@lists.linux.dev, robh@kernel.org,
	krzk+dt@kernel.org, conor+dt@kernel.org, macromorgan@hotmail.com,
	jonas@kwiboo.se, andyshrk@163.com, tim@feathertop.org,
	jagan@edgeble.ai, dsimic@manjaro.org, michael.riesch@wolfvision.net,
	sebastian.reichel@collabora.com, cfsworks@gmail.com,
	kever.yang@rock-chips.com, jing@jing.rocks,
	devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
	FUKAUMI Naoki <naoki@radxa.com>
Subject: Re: [PATCH v2 RESEND 3/3] arm64: dts: rockchip: Enable HDMI0 on
 rock-5c
Message-ID: <202410221225.u7cCiQ3a-lkp@intel.com>
References: <20241021090548.1052-3-naoki@radxa.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20241021090548.1052-3-naoki@radxa.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241021_213424_345313_2D435C68 
X-CRM114-Status: GOOD (  11.01  )
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

Hi FUKAUMI,

kernel test robot noticed the following build errors:

[auto build test ERROR on rockchip/for-next]
[also build test ERROR on robh/for-next linus/master v6.12-rc4 next-20241021]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/FUKAUMI-Naoki/arm64-dts-rockchip-add-Radxa-ROCK-5C/20241021-171353
base:   https://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git for-next
patch link:    https://lore.kernel.org/r/20241021090548.1052-3-naoki%40radxa.com
patch subject: [PATCH v2 RESEND 3/3] arm64: dts: rockchip: Enable HDMI0 on rock-5c
config: arm64-randconfig-001-20241022 (https://download.01.org/0day-ci/archive/20241022/202410221225.u7cCiQ3a-lkp@intel.com/config)
compiler: clang version 17.0.6 (https://github.com/llvm/llvm-project 6009708b4367171ccdbf4b5905cb6a803753fe18)
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20241022/202410221225.u7cCiQ3a-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202410221225.u7cCiQ3a-lkp@intel.com/

All errors (new ones prefixed by >>):

>> Error: arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts:260.1-7 Label or path hdmi0 not found
>> Error: arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts:269.1-10 Label or path hdmi0_in not found
>> Error: arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts:275.1-11 Label or path hdmi0_out not found
>> FATAL ERROR: Syntax error parsing input tree

Kconfig warnings: (for reference only)
   WARNING: unmet direct dependencies detected for MODVERSIONS
   Depends on [n]: MODULES [=y] && !COMPILE_TEST [=y]
   Selected by [y]:
   - RANDSTRUCT_FULL [=y] && (CC_HAS_RANDSTRUCT [=y] || GCC_PLUGINS [=n]) && MODULES [=y]

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
