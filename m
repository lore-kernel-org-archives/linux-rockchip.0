Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 29D42C2BD09
	for <linux-rockchip@archiver.kernel.org>; Fri, 28 Jun 2024 14:06:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DNUTXeh9RqOlFTpO5Va0mWEp2f7XEKmmoMvEAKW4zz4=; b=0pCRijuoOAHOOW
	Fd3Bv75FW1sO5AjFOrTxnFyl7A3hbc677eGQtLpbAFKhwEBN0PQqYVRHu3hE8xMHJkd/jc5p4fgPb
	e4ec5Et2Mq6LdrLxV+D0TTQ1Vh36LH0+yY8YqOOq0gdGjfo8OdvL701dwiltaaMQFKjKJ3ap7HxLE
	jFfW5P3RiodEvgrREdETUu4kJfHvw6jg3baacdZc6fCtRBWQffaNbsH4Svd+qnGKod7+BEKL31q/Q
	ACzoog5tejjDZ/oGAn9rnOc0a7fa/l/igi9azsW49VhFhuWiIAKytm8fOTzxbtnwBLhCqdJKtHH5t
	0OgXg9DV9E4E4Q/ROWsQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sNCFR-0000000DwN0-1NTu;
	Fri, 28 Jun 2024 14:06:45 +0000
Received: from mgamail.intel.com ([198.175.65.16])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sNCF9-0000000DwA1-1y3l;
	Fri, 28 Jun 2024 14:06:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1719583587; x=1751119587;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=wOnST97FxgzdmpjvSNkj0KjQdFL4Sf4iYe7yyizGLtc=;
  b=M3Q5f1d1MuOml6P8bLg5bTRpmbbwYsge3YygLuwEfqipgIWzqNzXTGBE
   6YX/NXsGqBVk1pJEtd+3k4PX+nbU+IJm0iUznl6Edh6tyU7bXZTfLA5I2
   4+yG3T+Nc5u43Dz8UEeCmBJOGO0O9vSOnVx+cYEAh66Z97f/rb7NvGP5R
   uRBMEncEQjktkifJyPlBzU8MVstaknaf9agRHUcRZwlMn073sKqMb5DFW
   WiFxsnw5MNajiO80lhVYfU6KxwAP5Vu00W5EjCC72GY8lAgnnwSEqwAuL
   c2waOKpL390uVar/z6HDs7Q3TcH5Au5JtBYgVpxtT3CC815YWx5boFDQz
   Q==;
X-CSE-ConnectionGUID: GG++0pdaTsq67dDFEqEXXg==
X-CSE-MsgGUID: pzQrah26SHumnV5SF7sPmw==
X-IronPort-AV: E=McAfee;i="6700,10204,11117"; a="16898755"
X-IronPort-AV: E=Sophos;i="6.09,169,1716274800"; 
   d="scan'208";a="16898755"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
  by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 28 Jun 2024 07:06:21 -0700
X-CSE-ConnectionGUID: U9vuz4AVTXuk0xm15Y3jZA==
X-CSE-MsgGUID: D+QA0ovYTwGTVNFI8IE75w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,169,1716274800"; 
   d="scan'208";a="44587532"
Received: from lkp-server01.sh.intel.com (HELO 68891e0c336b) ([10.239.97.150])
  by fmviesa006.fm.intel.com with ESMTP; 28 Jun 2024 07:06:18 -0700
Received: from kbuild by 68891e0c336b with local (Exim 4.96)
	(envelope-from <lkp@intel.com>)
	id 1sNCEy-000HBt-21;
	Fri, 28 Jun 2024 14:06:16 +0000
Date: Fri, 28 Jun 2024 22:05:12 +0800
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
Message-ID: <202406282157.SmRgaZOQ-lkp@intel.com>
References: <20240626201502.1384123-3-jonas@kwiboo.se>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240626201502.1384123-3-jonas@kwiboo.se>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240628_070627_746258_438B6E70 
X-CRM114-Status: GOOD (  12.17  )
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
config: arm64-randconfig-051-20240628 (https://download.01.org/0day-ci/archive/20240628/202406282157.SmRgaZOQ-lkp@intel.com/config)
compiler: aarch64-linux-gcc (GCC) 13.2.0
dtschema version: 2024.6.dev3+g650bf2d
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20240628/202406282157.SmRgaZOQ-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202406282157.SmRgaZOQ-lkp@intel.com/

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
