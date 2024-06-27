Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4405DC2BD09
	for <linux-rockchip@archiver.kernel.org>; Thu, 27 Jun 2024 23:28:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=C8Rbl1wGYfZzB0P0Tkv7lY5BlRTuYLdtCOl74+cDW6E=; b=XfJ9d5/i51y2b7
	jhtEEVr65aouOkdm+xXSRd2mHoD4gqMXDzPskh/copNntSMoyKz5A6OHZrUNo2KfXPCnulIOJWXVj
	ttg3v/V3soDZBJRgN32EnAjWowccEse4ofWHUYGZoc34aPBcoBZTTXAFMSdw/zZvs5DxPGOFS9UO3
	JIPBxWrWSd4tvR29MC1fhpFEmZRzSxYwCcY4K4MYgKPJnUsTuw7ue4NKFRas/JKzra2KRmGA2E/r5
	E8XLfp2cc//ZJa0W1Hj7TmNLIT4X67exBTMpIQ81IXfMa1F7ohBFrg/aLqJO1wEMMnObXXHKdNffl
	sBgNb5asX54nTyvFFEyQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sMyXu-0000000By9h-2iOm;
	Thu, 27 Jun 2024 23:28:54 +0000
Received: from mgamail.intel.com ([198.175.65.16])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sMyXr-0000000By91-3n87
	for linux-rockchip@lists.infradead.org;
	Thu, 27 Jun 2024 23:28:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1719530932; x=1751066932;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=6EwIKOU1Dh5cgZC+rn6rFBOG6D4DD4V6YRDlIp+qNKg=;
  b=M8V9MUp7/jClC8xLGd0jxIA3l4c2AjANEqCH/vC3cK7bvnxIHEebPlNK
   lrw+tzA5lyHY8L4soJ8OZfSZGji6rR/P2wqTeonNCF/ooyC8+TuvEUyTk
   JkjS2zgFSlc8rtoKY+7x1amrAli36GuTskHQC7+tGRh6dJ/wpfdHUgm2j
   ldUl2S22wd/1xtv6ATswSy/4KcnhsUQd5ysTG0Xz58ybUKIBYAxfU+jTh
   kftOShx9Y44CamI33XXXsbktGtwNwagSh6s3YrD/6NwOAznmB3iS+Zih9
   FP7STwAtJPAbPfn0Hyg+SLvVWqqGQIIXqCaWX4cWB7gg/5D29AvkD5GkQ
   Q==;
X-CSE-ConnectionGUID: xkrX3BTLQoWfhkPzHVv84Q==
X-CSE-MsgGUID: nMvPpwA+TEmIkQa1oISAQA==
X-IronPort-AV: E=McAfee;i="6700,10204,11116"; a="16825804"
X-IronPort-AV: E=Sophos;i="6.09,167,1716274800"; 
   d="scan'208";a="16825804"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
  by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 27 Jun 2024 16:28:49 -0700
X-CSE-ConnectionGUID: 3WzsxqeNT+SkXsm9y43Rhw==
X-CSE-MsgGUID: wd47othBTGGPpHXIeWViYg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,167,1716274800"; 
   d="scan'208";a="75300930"
Received: from lkp-server01.sh.intel.com (HELO 68891e0c336b) ([10.239.97.150])
  by orviesa002.jf.intel.com with ESMTP; 27 Jun 2024 16:28:46 -0700
Received: from kbuild by 68891e0c336b with local (Exim 4.96)
	(envelope-from <lkp@intel.com>)
	id 1sMyXk-000Gck-0X;
	Thu, 27 Jun 2024 23:28:44 +0000
Date: Fri, 28 Jun 2024 07:28:13 +0800
From: kernel test robot <lkp@intel.com>
To: FUKAUMI Naoki <naoki@radxa.com>, heiko@sntech.de
Cc: oe-kbuild-all@lists.linux.dev, robh@kernel.org, krzk+dt@kernel.org,
	conor+dt@kernel.org, devicetree@vger.kernel.org,
	linux-rockchip@lists.infradead.org, FUKAUMI Naoki <naoki@radxa.com>
Subject: Re: [PATCH v3 3/3] arm64: dts: rockchip: add support for Radxa ROCK
 Pi E v3.0
Message-ID: <202406280702.5pGvBTdS-lkp@intel.com>
References: <20240623201415.3205-3-naoki@radxa.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240623201415.3205-3-naoki@radxa.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240627_162852_015085_91FFF671 
X-CRM114-Status: GOOD (  10.28  )
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

kernel test robot noticed the following build warnings:

[auto build test WARNING on rockchip/for-next]
[also build test WARNING on next-20240627]
[cannot apply to robh/for-next linus/master v6.10-rc5]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/FUKAUMI-Naoki/arm64-dts-rockchip-prepare-common-dtsi-for-Radxa-ROCK-Pi-E/20240625-214723
base:   https://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git for-next
patch link:    https://lore.kernel.org/r/20240623201415.3205-3-naoki%40radxa.com
patch subject: [PATCH v3 3/3] arm64: dts: rockchip: add support for Radxa ROCK Pi E v3.0
config: arm64-randconfig-051-20240628 (https://download.01.org/0day-ci/archive/20240628/202406280702.5pGvBTdS-lkp@intel.com/config)
compiler: aarch64-linux-gcc (GCC) 13.2.0
dtschema version: 2024.6.dev2+g3b69bad
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20240628/202406280702.5pGvBTdS-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202406280702.5pGvBTdS-lkp@intel.com/

dtcheck warnings: (new ones prefixed by >>)
   arch/arm64/boot/dts/rockchip/rk3328.dtsi:732.17-740.5: Warning (graph_child_address): /vop@ff370000/port: graph node has single child node 'endpoint@0', #address-cells/#size-cells are not necessary
>> arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e-v3.dtb: hdmi@ff3c0000: interrupts: [[0, 35, 4], [0, 71, 4]] is too long
   	from schema $id: http://devicetree.org/schemas/display/rockchip/rockchip,dw-hdmi.yaml#
>> arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e-v3.dtb: /phy@ff430000: failed to match any schema with compatible: ['rockchip,rk3328-hdmi-phy']
>> arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e-v3.dtb: /clock-controller@ff440000: failed to match any schema with compatible: ['rockchip,rk3328-cru', 'rockchip,cru', 'syscon']
>> arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e-v3.dtb: /clock-controller@ff440000: failed to match any schema with compatible: ['rockchip,rk3328-cru', 'rockchip,cru', 'syscon']
>> arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e-v3.dtb: ethernet@ff540000: Unevaluated properties are not allowed ('snps,rxpbl', 'snps,txpbl' were unexpected)
   	from schema $id: http://devicetree.org/schemas/net/rockchip-dwmac.yaml#
>> arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e-v3.dtb: ethernet@ff550000: Unevaluated properties are not allowed ('snps,txpbl' was unexpected)
   	from schema $id: http://devicetree.org/schemas/net/rockchip-dwmac.yaml#

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
