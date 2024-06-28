Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9A3F9C3064D
	for <linux-rockchip@archiver.kernel.org>; Fri, 28 Jun 2024 13:07:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Jxo8qiEAHMuUbtz8hhCkag8Pv8avLMTFk8crIEuEPS0=; b=dfrE0nIJJpZ35i
	9dPAbA+/5DgOhMr/gmI07f83QAttzJWtojpOb4AZ0ERtwS8G01MLSO/wjil/P8P+XHDLh0wP9lmgA
	0hag++SqGXaEs3Pw5HYwYNgfckdfCnRsWo7Q1rj6Tu06GGwqhil0bFQWUg0OfbCNmKufXOTscq5ce
	P2m89vYkcSnXuF0w7DXJ8NrMIqJJ4VVEipBKTZvbfiRfnXOmTWbmZ9qn+HOx/23fI+dB265607hE+
	1dRyyr9O+pnkGuCGobIv+BZzcd2rbsLt8Yu42SA5aNauBQdmbQsJTpkIwXRhImSmpphZNDoMAML5B
	1O2dO9Vh5R+HdhR350FA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sNBJs-0000000Dlsc-40M6;
	Fri, 28 Jun 2024 13:07:16 +0000
Received: from mgamail.intel.com ([198.175.65.16])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sNBJi-0000000Dlqu-1jXw;
	Fri, 28 Jun 2024 13:07:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1719580026; x=1751116026;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=qWEehPSVEYKhPzyWJRgf6X298EwczVbvcUE/LXyT/GI=;
  b=P/FGD1o3eUVK4ZfDcXD4DkGX4sMsQNUFVISXS8nfmrtuhYb++S6ciEib
   sMyXy3nEJtB8+EeNntkyhZ8mh6NQwd/3v24PltDCC3GtTwgRy+5tN0ceT
   OlbKKcwxPiYmIJbaCE93V93Aooh4PGUZPdT5bMb/khcdN6x7LVrN4sB5X
   A8pNkuwG6Dq4BMT1tpBUd4U+2fYEp6qv+k02sUty++s5Z3+hqnYyKNXl2
   +tPX032OI9WzifvBS+9YVWxC2kpmjNCzHIIQ+ZQoiKXxC3R5Hp2iP0W8Q
   K4YhOgZBMrLpBW+ClXwDZKE4bUDii/ave/Ya4B1meSsDOPg6tw99lPRNn
   g==;
X-CSE-ConnectionGUID: uk7tF2qST++jDyALz971fA==
X-CSE-MsgGUID: q3k+5jgsSZ2A7QhITVrk7A==
X-IronPort-AV: E=McAfee;i="6700,10204,11116"; a="16892489"
X-IronPort-AV: E=Sophos;i="6.09,169,1716274800"; 
   d="scan'208";a="16892489"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
  by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 28 Jun 2024 06:07:04 -0700
X-CSE-ConnectionGUID: jTneSz1ORgig3jYbLChAEg==
X-CSE-MsgGUID: oJGYvT0HTLKjr8IzXshXMg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,169,1716274800"; 
   d="scan'208";a="75470390"
Received: from lkp-server01.sh.intel.com (HELO 68891e0c336b) ([10.239.97.150])
  by orviesa002.jf.intel.com with ESMTP; 28 Jun 2024 06:07:03 -0700
Received: from kbuild by 68891e0c336b with local (Exim 4.96)
	(envelope-from <lkp@intel.com>)
	id 1sNBJb-000H7i-3D;
	Fri, 28 Jun 2024 13:06:59 +0000
Date: Fri, 28 Jun 2024 21:06:36 +0800
From: kernel test robot <lkp@intel.com>
To: Jonathan Liu <net147@gmail.com>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: oe-kbuild-all@lists.linux.dev, Jonathan Liu <net147@gmail.com>,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: rockchip: Enable RK809 audio codec for Radxa
 ROCK 4C+
Message-ID: <202406282049.ZRM6qCDn-lkp@intel.com>
References: <20240621130903.2572986-1-net147@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240621130903.2572986-1-net147@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240628_060706_584932_166150CB 
X-CRM114-Status: GOOD (  13.20  )
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

Hi Jonathan,

kernel test robot noticed the following build warnings:

[auto build test WARNING on rockchip/for-next]
[also build test WARNING on krzk/for-next krzk-dt/for-next linus/master v6.10-rc5 next-20240627]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Jonathan-Liu/arm64-dts-rockchip-Enable-RK809-audio-codec-for-Radxa-ROCK-4C/20240625-210156
base:   https://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git for-next
patch link:    https://lore.kernel.org/r/20240621130903.2572986-1-net147%40gmail.com
patch subject: [PATCH] arm64: dts: rockchip: Enable RK809 audio codec for Radxa ROCK 4C+
config: arm64-randconfig-051-20240628 (https://download.01.org/0day-ci/archive/20240628/202406282049.ZRM6qCDn-lkp@intel.com/config)
compiler: aarch64-linux-gcc (GCC) 13.2.0
dtschema version: 2024.6.dev3+g650bf2d
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20240628/202406282049.ZRM6qCDn-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202406282049.ZRM6qCDn-lkp@intel.com/

dtcheck warnings: (new ones prefixed by >>)
   arch/arm64/boot/dts/rockchip/rk3399.dtsi:566.26-600.4: Warning (unit_address_vs_reg): /usb@fe900000: node has a unit name, but no reg or ranges property
   arch/arm64/boot/dts/rockchip/rk3399.dtsi:2063.25-2102.4: Warning (avoid_unnecessary_addr_size): /dsi@ff960000: unnecessary #address-cells/#size-cells without "ranges" or child "reg" property
   arch/arm64/boot/dts/rockchip/rk3399.dtsi:2104.26-2144.4: Warning (avoid_unnecessary_addr_size): /dsi@ff968000: unnecessary #address-cells/#size-cells without "ranges" or child "reg" property
   arch/arm64/boot/dts/rockchip/rk3399-rock-4c-plus.dtb: ethernet@fe300000: Unevaluated properties are not allowed ('snps,txpbl' was unexpected)
   	from schema $id: http://devicetree.org/schemas/net/rockchip-dwmac.yaml#
   arch/arm64/boot/dts/rockchip/rk3399-rock-4c-plus.dtb: usb@fe800000: 'extcon' does not match any of the regexes: '^usb@', 'pinctrl-[0-9]+'
   	from schema $id: http://devicetree.org/schemas/usb/rockchip,rk3399-dwc3.yaml#
   arch/arm64/boot/dts/rockchip/rk3399-rock-4c-plus.dtb: /dp@fec00000: failed to match any schema with compatible: ['rockchip,rk3399-cdn-dp']
>> arch/arm64/boot/dts/rockchip/rk3399-rock-4c-plus.dtb: pmic@20: '#sound-dai-cells', 'clock-names', 'clocks' do not match any of the regexes: 'pinctrl-[0-9]+'
   	from schema $id: http://devicetree.org/schemas/mfd/rockchip,rk809.yaml#
   arch/arm64/boot/dts/rockchip/rk3399-rock-4c-plus.dtb: regulator@40: Unevaluated properties are not allowed ('regulator-compatible' was unexpected)
   	from schema $id: http://devicetree.org/schemas/regulator/fcs,fan53555.yaml#
   arch/arm64/boot/dts/rockchip/rk3399-rock-4c-plus.dtb: regulator@41: Unevaluated properties are not allowed ('regulator-compatible' was unexpected)
   	from schema $id: http://devicetree.org/schemas/regulator/fcs,fan53555.yaml#
   arch/arm64/boot/dts/rockchip/rk3399-rock-4c-plus.dtb: /syscon@ff770000/phy@f780: failed to match any schema with compatible: ['rockchip,rk3399-emmc-phy']
   arch/arm64/boot/dts/rockchip/rk3399-rock-4c-plus.dtb: /syscon@ff770000/pcie-phy: failed to match any schema with compatible: ['rockchip,rk3399-pcie-phy']
   arch/arm64/boot/dts/rockchip/rk3399-rock-4c-plus.dtb: /phy@ff7c0000: failed to match any schema with compatible: ['rockchip,rk3399-typec-phy']
   arch/arm64/boot/dts/rockchip/rk3399-rock-4c-plus.dtb: /phy@ff800000: failed to match any schema with compatible: ['rockchip,rk3399-typec-phy']
   arch/arm64/boot/dts/rockchip/rk3399-rock-4c-plus.dtb: pmic: vsel1-gpio: {'rockchip,pins': [[1, 17, 0, 194]], 'phandle': [[138]]} is not of type 'array'

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
