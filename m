Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7D4FDC2BBCA
	for <linux-rockchip@archiver.kernel.org>; Fri, 28 Jun 2024 10:50:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FfrFiKIF3abnmxwDmn/hMLN/F/P58RJxh6AFjqFPQQw=; b=m/5p4F+UJpuIz3
	m5e7mY1vv1tDDPdEQZUwiipwvjew/iHFyQjCbaNmwKbo/8d6a+woooPic6h7bnj/2+zoOydOjbH8/
	J5yrnalI6+UiKxcKtbY0Ec09eXAZP7rhdONTONEuHK3Zlnj374V1QopShHFOS1o4XpW4l6Bi33WmJ
	Cjkgv9ng072w+nIXkePqFdZZ9ff/ZLuR3LjFhoJxcam7DFvFPNE/L56x0rmC5zJrh5mf+CaTrJWT2
	hhICqIqaSI/AdyGsHyeoCp+jyjCkcFa5T8b5DPv6+GFlvtsz8/2dQ9oOhOqNNi0mblhXpzuo2RcUx
	Td3Lr5UKW8FoG1bsdT1A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sN9BF-0000000DSq6-1GNk;
	Fri, 28 Jun 2024 10:50:13 +0000
Received: from mgamail.intel.com ([198.175.65.19])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sN9B5-0000000DSnD-1oRS;
	Fri, 28 Jun 2024 10:50:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1719571804; x=1751107804;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=4yLS4SO15+GZgSV9YAquPD11MCf9dm2ee3l4KGzL7uk=;
  b=Y5odPglM8zYYBeJ24DqVHTHZ3+bCxS4K9uj9NX/kObwZfClkBsm6qOPj
   DW0ylyNI+FHBTWy+wyvRrcXCgFH0qFRq/BIAuyHsa8b89MX8VNt98NNCZ
   AE3P4GOA90skFpLZVDI+bglL0e5MF5eRveNJCkEBOY0xanGAsoOMTRhCA
   3jUpo28L9UB7tDAyifku+gcz7FX/wCiYeqI+yOiquE4SLinVzmu6qHtUl
   diOVcIo4Hb9bzHp5eW07Cwsd1Plxh3dmEsxe6Toyp1fbSR3PrPAJhIFNB
   eNBoYARA0B8Gfeu/gqr0jAEOpcnknC+4JQK7nhfwnQw3O2St90iXm9abF
   Q==;
X-CSE-ConnectionGUID: Zr1Y/lgkR6uOzmb5S7diSw==
X-CSE-MsgGUID: /TfydC5WRfKhIyDrYc7gxA==
X-IronPort-AV: E=McAfee;i="6700,10204,11116"; a="16583416"
X-IronPort-AV: E=Sophos;i="6.09,168,1716274800"; 
   d="scan'208";a="16583416"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
  by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 28 Jun 2024 03:49:36 -0700
X-CSE-ConnectionGUID: bnRvln6hT6a4BNTMtrWfNA==
X-CSE-MsgGUID: B+Rix3d/R7OrlEn3C8UPfw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,168,1716274800"; 
   d="scan'208";a="44759393"
Received: from lkp-server01.sh.intel.com (HELO 68891e0c336b) ([10.239.97.150])
  by fmviesa009.fm.intel.com with ESMTP; 28 Jun 2024 03:49:34 -0700
Received: from kbuild by 68891e0c336b with local (Exim 4.96)
	(envelope-from <lkp@intel.com>)
	id 1sN9AZ-000H1Z-1p;
	Fri, 28 Jun 2024 10:49:31 +0000
Date: Fri, 28 Jun 2024 18:49:10 +0800
From: kernel test robot <lkp@intel.com>
To: Jonas Karlman <jonas@kwiboo.se>, Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: oe-kbuild-all@lists.linux.dev, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
	Jonas Karlman <jonas@kwiboo.se>
Subject: Re: [PATCH v2 2/2] arm64: dts: rockchip: Add Xunlong Orange Pi 3B
Message-ID: <202406281834.nNnojcHy-lkp@intel.com>
References: <20240626230319.1425316-3-jonas@kwiboo.se>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240626230319.1425316-3-jonas@kwiboo.se>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240628_035003_664530_DDDCDCAB 
X-CRM114-Status: GOOD (  12.09  )
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
[also build test WARNING on robh/for-next krzk/for-next krzk-dt/for-next krzk-mem-ctrl/for-next linus/master v6.10-rc5 next-20240627]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Jonas-Karlman/dt-bindings-arm-rockchip-Add-Xunlong-Orange-Pi-3B/20240627-175050
base:   https://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git for-next
patch link:    https://lore.kernel.org/r/20240626230319.1425316-3-jonas%40kwiboo.se
patch subject: [PATCH v2 2/2] arm64: dts: rockchip: Add Xunlong Orange Pi 3B
config: arm64-randconfig-051-20240628 (https://download.01.org/0day-ci/archive/20240628/202406281834.nNnojcHy-lkp@intel.com/config)
compiler: aarch64-linux-gcc (GCC) 13.2.0
dtschema version: 2024.6.dev3+g650bf2d
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20240628/202406281834.nNnojcHy-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202406281834.nNnojcHy-lkp@intel.com/

dtcheck warnings: (new ones prefixed by >>)
>> arch/arm64/boot/dts/rockchip/rk3566-orangepi-3b-v1.1.dtb: pmic@20: '#sound-dai-cells', 'assigned-clock-parents', 'assigned-clocks', 'clock-names', 'clocks' do not match any of the regexes: 'pinctrl-[0-9]+'
   	from schema $id: http://devicetree.org/schemas/mfd/rockchip,rk809.yaml#
--
>> arch/arm64/boot/dts/rockchip/rk3566-orangepi-3b-v2.1.dtb: pmic@20: '#sound-dai-cells', 'assigned-clock-parents', 'assigned-clocks', 'clock-names', 'clocks' do not match any of the regexes: 'pinctrl-[0-9]+'
   	from schema $id: http://devicetree.org/schemas/mfd/rockchip,rk809.yaml#

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
