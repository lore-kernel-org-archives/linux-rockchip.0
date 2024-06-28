Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D43E1C30653
	for <linux-rockchip@archiver.kernel.org>; Fri, 28 Jun 2024 02:13:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IewQN7eL4dGmq4Ycs6Ki44nHYe3PT28sIIuwSePIoik=; b=AWW4KX09/JhYR0
	AUg0w3DQTEik24hCwvwBgaD6892/8GDoQzcwl5ghqbb5LcoZWqvu/2hM4iTBHO+i6FH0AWi9ZstNr
	wd9oY1qppl7jb48DUeFzYJsQ1556QaDOAPxqrqZdrcC7WRkA5CNXNA14dWiuGwkjDrxAkWS9mIeMW
	0DxG+yqnKdqtlX/dgCQwCHNocO2LIq/T9pnrl6LL+62saRBZLG9kVFEw9PwtlDuDJ28v/9NTUFrnW
	sEtyrzZ9317G0mqIrJ6Z6emlneSOkP3K/OB6Zfy4AHPchK8+67xmayFK7KCgI/xndEG9t39bsikHX
	OfokbZKKB7gaFf6i/5cg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sN17A-0000000CJ2P-2bRl;
	Fri, 28 Jun 2024 02:13:28 +0000
Received: from mgamail.intel.com ([198.175.65.20])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sN170-0000000CIzM-2UFh;
	Fri, 28 Jun 2024 02:13:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1719540799; x=1751076799;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=/Ub6zta+0SAXKh9uiet4CqS+rN7kBLSnTuCB14Q2Lo4=;
  b=PUDg6MHqUcArfvoK4cMuSGJi+vKb19gwdyn6nmqsh8nIt7FdcI9fJPfW
   X0mnB8sLeI6xBKsr+g7mpSfdfHEk5vYkXuxlNB+u+GeBiUbdvqwplIw+y
   7EdHbClAwK+LoTdUH1PlywYljpT1WcN8GiQdk57v9z7Likn2gMNu3FjhT
   ILugqLVWH2wv8KondVlWkmZGGVdLUACNvDdjzpHwsPT2iQUcWIBCnuZmM
   uBDGAXoJ0vuD1K0hSKX4CngYDO2ljjpjBIfa1cxDhsi0X3F7bqb5jB1B2
   PV7pTMUhGBX4MV3hjn4+3FDHHgaLlzbSkNfd//MPUc57KU2JMEkPerCpn
   w==;
X-CSE-ConnectionGUID: Bkagp7gETUmsl0fV4+460g==
X-CSE-MsgGUID: kcSeWwYqRNy8d91LrTwLQw==
X-IronPort-AV: E=McAfee;i="6700,10204,11116"; a="16528809"
X-IronPort-AV: E=Sophos;i="6.09,167,1716274800"; 
   d="scan'208";a="16528809"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
  by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 27 Jun 2024 19:13:15 -0700
X-CSE-ConnectionGUID: RELGioelQiOx8PUEyU8xUQ==
X-CSE-MsgGUID: w2oGwSiMSb6HzN3VDjLTeQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,167,1716274800"; 
   d="scan'208";a="44993921"
Received: from lkp-server01.sh.intel.com (HELO 68891e0c336b) ([10.239.97.150])
  by orviesa006.jf.intel.com with ESMTP; 27 Jun 2024 19:13:12 -0700
Received: from kbuild by 68891e0c336b with local (Exim 4.96)
	(envelope-from <lkp@intel.com>)
	id 1sN16r-000Gie-2N;
	Fri, 28 Jun 2024 02:13:09 +0000
Date: Fri, 28 Jun 2024 10:12:17 +0800
From: kernel test robot <lkp@intel.com>
To: Jonas Karlman <jonas@kwiboo.se>, Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: oe-kbuild-all@lists.linux.dev, FUKAUMI Naoki <naoki@radxa.com>,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
	Jonas Karlman <jonas@kwiboo.se>
Subject: Re: [PATCH v2 2/2] arm64: dts: rockchip: Add Radxa ROCK 3B
Message-ID: <202406280948.sZf64ONz-lkp@intel.com>
References: <20240626201502.1384123-3-jonas@kwiboo.se>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240626201502.1384123-3-jonas@kwiboo.se>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240627_191318_706462_395F1EFE 
X-CRM114-Status: GOOD (  11.85  )
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

Hi Jonas,

kernel test robot noticed the following build warnings:

[auto build test WARNING on rockchip/for-next]
[also build test WARNING on krzk/for-next krzk-dt/for-next krzk-mem-ctrl/for-next linus/master v6.10-rc5 next-20240627]
[cannot apply to robh/for-next]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Jonas-Karlman/dt-bindings-arm-rockchip-Add-Radxa-ROCK-3B/20240627-160354
base:   https://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git for-next
patch link:    https://lore.kernel.org/r/20240626201502.1384123-3-jonas%40kwiboo.se
patch subject: [PATCH v2 2/2] arm64: dts: rockchip: Add Radxa ROCK 3B
config: arm64-randconfig-051-20240628 (https://download.01.org/0day-ci/archive/20240628/202406280948.sZf64ONz-lkp@intel.com/config)
compiler: aarch64-linux-gcc (GCC) 13.2.0
dtschema version: 2024.6.dev2+g3b69bad
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20240628/202406280948.sZf64ONz-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202406280948.sZf64ONz-lkp@intel.com/

dtcheck warnings: (new ones prefixed by >>)
>> arch/arm64/boot/dts/rockchip/rk3568-rock-3b.dtb: pmic@20: '#sound-dai-cells', 'assigned-clock-parents', 'assigned-clocks', 'clock-names', 'clocks' do not match any of the regexes: 'pinctrl-[0-9]+'
   	from schema $id: http://devicetree.org/schemas/mfd/rockchip,rk809.yaml#

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
