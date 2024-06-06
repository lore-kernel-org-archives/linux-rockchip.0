Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A80DDC27C52
	for <linux-rockchip@archiver.kernel.org>; Thu,  6 Jun 2024 20:45:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FIDMZLfWuJvYsqDWbOnjCFa0AeFwQhSiE+m8KXCHPiE=; b=LREt3zAToJiJ2L
	YqDqBhcdlshCR19BFAxHN78GlUq/tAzwueHijY/F/dsjjcstIKGaQ7qI1BG0TZujWu72Ai0KZ2f+A
	S/0Ufs2n9M3ZxbznCii4vEavEmAj0aSD5fVCb88VO7Ep9+Pc8VybfxIydi7uhjeWA/QDERaKeEjIN
	e5G3bGusCMikCNrIWA7g7LIOZBGGozwm1ekFurSIfh4D+rscoURgTSwO6PSvFtbmQSqp4tgk4DEHr
	XYP9NQj1W/+mr34VhneLoecLLf4+7nzTAQjHwgr+yWbg3IgU0XMiIsQq3PLDo7nKU2lUWOJ9BJGHk
	94JkKVsqfcX6+qB62QFw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sFJz2-0000000BIey-3SO7;
	Thu, 06 Jun 2024 20:45:16 +0000
Received: from mgamail.intel.com ([192.198.163.19])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sFJyy-0000000BIdb-0fXG;
	Thu, 06 Jun 2024 20:45:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1717706712; x=1749242712;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=zbRLG6muhRQTIckVj+vQW1FPTwrq3szBPYUQZ1sHcsA=;
  b=P10+sQlB/kYxArFjU4VAUjWfPHxqXgfFKaNkFCA/seuZzWrl3kE5fJpY
   +4cuNINK0G5Lwb6p4PRkKzbDQfjX1cbrgrniy0kw3zmiRki/ksYN54+NJ
   1S+KAf8FxlHk81EEZXO7QJJ5evAZRT8cLgCdjb9xxRGCSL/fte1u8kIn2
   v54uOZrPWvIeh1CFdjgCM0aJLse1CF+/I3IDoqoSKY6nvkGQ2ZeBQF50b
   Xuwlv5g57Gk67N9kSG5TqJgwWp89EV1oX0dd9pTmGd2D68M6/2qTT38aq
   xHw2pPme1d1IUhwBamtxXq+pKgqcT84E03cWQR4LzdPVFPpIefw96VY8R
   Q==;
X-CSE-ConnectionGUID: Wpre9e4ORsKbvnkAR5wkEQ==
X-CSE-MsgGUID: m3+xT6L8TyiXgBmQK6D81Q==
X-IronPort-AV: E=McAfee;i="6600,9927,11095"; a="14212270"
X-IronPort-AV: E=Sophos;i="6.08,219,1712646000"; 
   d="scan'208";a="14212270"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
  by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 06 Jun 2024 13:45:11 -0700
X-CSE-ConnectionGUID: jzM1qSOBTnasmUwsB8PmmA==
X-CSE-MsgGUID: dsrwBcGNQd2mV0C8U3bo5g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,219,1712646000"; 
   d="scan'208";a="42528870"
Received: from unknown (HELO 0610945e7d16) ([10.239.97.151])
  by fmviesa005.fm.intel.com with ESMTP; 06 Jun 2024 13:45:07 -0700
Received: from kbuild by 0610945e7d16 with local (Exim 4.96)
	(envelope-from <lkp@intel.com>)
	id 1sFJyr-0003go-2X;
	Thu, 06 Jun 2024 20:45:05 +0000
Date: Fri, 7 Jun 2024 04:44:37 +0800
From: kernel test robot <lkp@intel.com>
To: Shresth Prasad <shresthprasad7@gmail.com>, vkoul@kernel.org,
	kishon@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
	conor+dt@kernel.org, heiko@sntech.de
Cc: oe-kbuild-all@lists.linux.dev, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
	skhan@linuxfoundation.org, javier.carrasco.cruz@gmail.com,
	Shresth Prasad <shresthprasad7@gmail.com>
Subject: Re: [PATCH] dt-bindings: phy: rockchip-emmc-phy: Convert to dtschema
Message-ID: <202406070419.TJxm1rXC-lkp@intel.com>
References: <20240606184135.11065-2-shresthprasad7@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240606184135.11065-2-shresthprasad7@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240606_134512_241594_AB3F8D8C 
X-CRM114-Status: GOOD (  10.67  )
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

Hi Shresth,

kernel test robot noticed the following build warnings:

[auto build test WARNING on robh/for-next]
[also build test WARNING on linus/master v6.10-rc2 next-20240606]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Shresth-Prasad/dt-bindings-phy-rockchip-emmc-phy-Convert-to-dtschema/20240607-024538
base:   https://git.kernel.org/pub/scm/linux/kernel/git/robh/linux.git for-next
patch link:    https://lore.kernel.org/r/20240606184135.11065-2-shresthprasad7%40gmail.com
patch subject: [PATCH] dt-bindings: phy: rockchip-emmc-phy: Convert to dtschema
reproduce: (https://download.01.org/0day-ci/archive/20240607/202406070419.TJxm1rXC-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202406070419.TJxm1rXC-lkp@intel.com/

All warnings (new ones prefixed by >>):

   Warning: Documentation/devicetree/bindings/power/wakeup-source.txt references a file that doesn't exist: Documentation/devicetree/bindings/input/qcom,pm8xxx-keypad.txt
   Warning: Documentation/devicetree/bindings/regulator/siliconmitus,sm5703-regulator.yaml references a file that doesn't exist: Documentation/devicetree/bindings/mfd/siliconmitus,sm5703.yaml
>> Warning: Documentation/devicetree/bindings/soc/rockchip/grf.yaml references a file that doesn't exist: Documentation/devicetree/bindings/phy/rockchip-emmc-phy.txt
   Warning: MAINTAINERS references a file that doesn't exist: Documentation/devicetree/bindings/reserved-memory/qcom
   Warning: MAINTAINERS references a file that doesn't exist: Documentation/devicetree/bindings/display/exynos/
   Using alabaster theme

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
