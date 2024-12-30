Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 73B6DE7718B
	for <linux-rockchip@archiver.kernel.org>; Mon, 30 Dec 2024 03:06:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GZ2OBJ2xjZbvpzbFimc5NSTcjT/ja+7Pf9tHdZyPIbY=; b=FWuBR+OGgISOWY
	IkyZOElLuQQwzntbMd5AAqeMdEENrEq1ykDdnIhXS24DjpHWfAGkIKAXHwfNI4mTnQ925r2dD4r+h
	AFkj1m2VC7yPR5wJUoxKW24I7R1oGBSkzWJoarB9lTQPtrq2BmPfQJOoNrEr9rp2dD7YSnR36Csd5
	durP8LSKcFmMGRTbqA7p6oPa7T4Y554nPQCOTHD7G/3clg99xXlfryGsCp7gRYBokFly/yFJaWQLs
	P2YXUYx+smY7Z8xQNfLNpgETiA6Tx1ewflFKAHX/VSIyPPzPIex6e2Gm/WPo3f7a26bdi87LG4ch9
	mc2PdHSxs6T8j5kTd6Xw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tS66d-00000004PHP-2ALA;
	Mon, 30 Dec 2024 03:06:11 +0000
Received: from mgamail.intel.com ([192.198.163.15])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tS65S-00000004PAM-3hB9;
	Mon, 30 Dec 2024 03:05:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1735527899; x=1767063899;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=M6nCHa9Ey66A5jxQHmJjtx5jpwPsgKxN28xApbDPEkI=;
  b=EOHqbnO6t1M8kmV/gFi+GpkYo3ZOfUxdsH+Kh705UyFOGDaPp8fLjRxv
   KnhcafKmtp3gMd7UANgJHqaO8o9HWOcZe3i5VWGUFcuo9Zp10hxME4RcR
   NWIxWCx+gDLvwPtgTya5VLykh81IowXH/FGazUPD2rbxuVVNeKroYwvcq
   OYFVb4fDrAifKx22EQbV+SM5R45qnDSwoocUdGgZl8adpkfy/mRphDyT3
   WvlGPk++I81JAyXkMg6DBNsu7s0VAtBCfCCn7CbX+j61xmq1CihSaPKuO
   BpZ4U7J/mvKSIYqitTq1sSyURdqWAglAXwQnVmaAts5k0KyP1ZuvIXCt5
   A==;
X-CSE-ConnectionGUID: s93TqeBrRziwU7BgV7AsEg==
X-CSE-MsgGUID: 4i0Re0mrT5e2TuwkH4eEAw==
X-IronPort-AV: E=McAfee;i="6700,10204,11299"; a="35977020"
X-IronPort-AV: E=Sophos;i="6.12,275,1728975600"; 
   d="scan'208";a="35977020"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
  by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 29 Dec 2024 19:04:51 -0800
X-CSE-ConnectionGUID: /2SdGqVkSP6n5nJdtLySpg==
X-CSE-MsgGUID: w+bSGEFJTHGSxxdiD4Jv/w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; 
   d="scan'208";a="105663454"
Received: from lkp-server01.sh.intel.com (HELO d63d4d77d921) ([10.239.97.150])
  by orviesa005.jf.intel.com with ESMTP; 29 Dec 2024 19:04:49 -0800
Received: from kbuild by d63d4d77d921 with local (Exim 4.96)
	(envelope-from <lkp@intel.com>)
	id 1tS65G-0005Jc-20;
	Mon, 30 Dec 2024 03:04:46 +0000
Date: Mon, 30 Dec 2024 11:04:26 +0800
From: kernel test robot <lkp@intel.com>
To: Jimmy Hon <honyuenkwun@gmail.com>, Heiko Stuebner <heiko@sntech.de>
Cc: oe-kbuild-all@lists.linux.dev, Ondrej Jirman <megi@xff.cz>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	Jimmy Hon <honyuenkwun@gmail.com>
Subject: Re: [PATCH 6/7] arm64: dts: rockchip: Enable HDMI1 on Orange Pi 5 Max
Message-ID: <202412301002.E6G16osA-lkp@intel.com>
References: <20241229184256.1870-11-honyuenkwun@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20241229184256.1870-11-honyuenkwun@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241229_190459_019484_2C6A1EAB 
X-CRM114-Status: GOOD (  11.26  )
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

Hi Jimmy,

kernel test robot noticed the following build errors:

[auto build test ERROR on rockchip/for-next]
[also build test ERROR on robh/for-next linus/master v6.13-rc5 next-20241220]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Jimmy-Hon/arm64-dts-rockchip-refactor-common-rk3588-orangepi-5-dtsi/20241230-064740
base:   https://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git for-next
patch link:    https://lore.kernel.org/r/20241229184256.1870-11-honyuenkwun%40gmail.com
patch subject: [PATCH 6/7] arm64: dts: rockchip: Enable HDMI1 on Orange Pi 5 Max
config: arm64-randconfig-001-20241230 (https://download.01.org/0day-ci/archive/20241230/202412301002.E6G16osA-lkp@intel.com/config)
compiler: aarch64-linux-gcc (GCC) 14.2.0
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20241230/202412301002.E6G16osA-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202412301002.E6G16osA-lkp@intel.com/

All errors (new ones prefixed by >>):

>> Error: arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-max.dts:53.1-7 Label or path hdmi1 not found
>> Error: arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-max.dts:60.1-10 Label or path hdmi1_in not found
>> Error: arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-max.dts:66.1-11 Label or path hdmi1_out not found
>> Error: arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-max.dts:76.1-11 Label or path hdptxphy1 not found
   FATAL ERROR: Syntax error parsing input tree

Kconfig warnings: (for reference only)
   WARNING: unmet direct dependencies detected for FB_IOMEM_HELPERS
   Depends on [n]: HAS_IOMEM [=y] && FB_CORE [=n]
   Selected by [m]:
   - DRM_XE_DISPLAY [=y] && HAS_IOMEM [=y] && DRM [=m] && DRM_XE [=m] && DRM_XE [=m]=m [=m] && HAS_IOPORT [=y]

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
