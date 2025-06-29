Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D7968C54ED1
	for <linux-rockchip@archiver.kernel.org>; Sun, 29 Jun 2025 00:36:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iaMws1yu8lpWs59+OW6cNByEcMyQL9QkI+yuXetcoFU=; b=pFzkKG/NcnzDug
	vrDrYxkAwiv79Tz9gnqh2b2tytNnTAkuf2L4o+6hLa9//LOTvXfCMAEBQy/XkZ2cZtylYRH1lHSNh
	i2euv+Mt0hiQH3X1oXn5Gz5aNCll112LmqxaunDFCFyPck/LGX8oeb7Gj6EZdgMilNwsiLEoA7LQ8
	mTM4SNKZbca4P2LkwET1qViZdarT4v2akMmoBdKc6QDMfO9gKcfCuto9GsBsBxdsr8bA2GHE0beEk
	uf1izcbQHMeVOke2GGau3yIP2vyNUb7MGIsy+Q1ALHEkpQZM8GfUK0kQVx0M/MzAHetTLEkIDe4iI
	7w2a46lMkoNfN9fW57Cw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uVg1W-0000000HPOt-0ml9;
	Sun, 29 Jun 2025 00:35:58 +0000
Received: from mgamail.intel.com ([198.175.65.21])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uVfzB-0000000HPKO-3tSo;
	Sun, 29 Jun 2025 00:33:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1751157214; x=1782693214;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=AolaRGjJTaifs7f9V7/iIwPTII8Eu6lCuQv6L5dV754=;
  b=mOdmgeTbKj6bAlAeYC0u2HNHhkkfL0w6vQmGxNw9Z9K2jJJUNlegob4Z
   E7d91/sT1B+aGwiPkWfQF9bF/td0p0XDE+oIs13i1P3ftkqEfbUO9Fk8N
   IYLDpJklO3tP7w9ppEHrs3qOkwdUhHeOMQG+splrYlUe1yCW8yUd2lUnf
   TDDcTvCfI367D65vVpu0Rk0BdkJrY9yYnbI7yLeWCqgQsk1GrOrurHS7Y
   dc0Gq2+rGZATfnXnei1e8SNaMJvFg2z4IkMsVzgbe0KdcnvpLUkwbZxj2
   ySRCbiGhG+KtgtqULiCBNU7N5/8tf2ByUZm2Bd9InATGaWOgZoODqA4n9
   Q==;
X-CSE-ConnectionGUID: r07LPyhTQpyO2oDuZJohGA==
X-CSE-MsgGUID: douH9L5KQ7Okz1BDDWSn6g==
X-IronPort-AV: E=McAfee;i="6800,10657,11478"; a="53286977"
X-IronPort-AV: E=Sophos;i="6.16,274,1744095600"; 
   d="scan'208";a="53286977"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
  by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 28 Jun 2025 17:33:28 -0700
X-CSE-ConnectionGUID: XZi4Py13R+Ok+7qSxSkg8Q==
X-CSE-MsgGUID: SiYl6Y9lSYOAL5Mz/TgZkA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,274,1744095600"; 
   d="scan'208";a="153598075"
Received: from lkp-server01.sh.intel.com (HELO e8142ee1dce2) ([10.239.97.150])
  by orviesa008.jf.intel.com with ESMTP; 28 Jun 2025 17:33:25 -0700
Received: from kbuild by e8142ee1dce2 with local (Exim 4.96)
	(envelope-from <lkp@intel.com>)
	id 1uVfz0-000XXK-2l;
	Sun, 29 Jun 2025 00:33:22 +0000
Date: Sun, 29 Jun 2025 08:32:40 +0800
From: kernel test robot <lkp@intel.com>
To: Diederik de Haas <didi.debian@cknow.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: llvm@lists.linux.dev, oe-kbuild-all@lists.linux.dev,
	Dragan Simic <dsimic@manjaro.org>,
	Quentin Schulz <quentin.schulz@cherry.de>,
	Johan Jonker <jbx6244@gmail.com>, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
	Diederik de Haas <didi.debian@cknow.org>
Subject: Re: [PATCH 2/8] arm64: dts: rockchip: Refactor DSI nodes on rk3399
 boards
Message-ID: <202506290852.bWro2lBe-lkp@intel.com>
References: <20250627152645.740981-3-didi.debian@cknow.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250627152645.740981-3-didi.debian@cknow.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250628_173334_035813_CC1ED997 
X-CRM114-Status: GOOD (  11.94  )
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

Hi Diederik,

kernel test robot noticed the following build errors:

[auto build test ERROR on rockchip/for-next]
[also build test ERROR on next-20250627]
[cannot apply to robh/for-next krzk/for-next krzk-dt/for-next linus/master v6.16-rc3]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Diederik-de-Haas/arm64-dts-rockchip-Refactor-DSI-nodes-on-px30-boards/20250627-233300
base:   https://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git for-next
patch link:    https://lore.kernel.org/r/20250627152645.740981-3-didi.debian%40cknow.org
patch subject: [PATCH 2/8] arm64: dts: rockchip: Refactor DSI nodes on rk3399 boards
config: arm64-randconfig-002-20250629 (https://download.01.org/0day-ci/archive/20250629/202506290852.bWro2lBe-lkp@intel.com/config)
compiler: clang version 19.1.7 (https://github.com/llvm/llvm-project cd708029e0b2869e80abe31ddb175f7c35361f90)
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20250629/202506290852.bWro2lBe-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202506290852.bWro2lBe-lkp@intel.com/

All errors (new ones prefixed by >>):

>> Error: arch/arm64/boot/dts/rockchip/rk3399-rockpro64-screen.dtso:75.1-6 syntax error
   FATAL ERROR: Unable to parse input tree

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
