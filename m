Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C5B47C27C6E
	for <linux-rockchip@archiver.kernel.org>; Fri, 14 Jun 2024 15:11:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TGreYXp9SK4P2h9pntDxnzpgeZgFMwTGAhLe5nu/2kc=; b=pmKTzcwFCuAWgl
	j98fZpnylfkpyamSNnuwJIlFiL17iw2U1rufy/SmVIai3ifXFkKA3nTnNAg/vObK9EXigYYC75qnT
	nUMQMvbaN8fSCrRGkPiFf+QNRLIdT57EYDluLY6pmJpLush97K9elilHZCk41pPvJbuF4G71CEUvv
	TNvZPOISDtnwCTn2X1RHYoDnz72XzCMqqsmDkvoYjsaERntPjzeAL0lI5aTpwYGIS6yrDU+VyAVnL
	10vdQCjUDUu2KCrG1NVX9lXECcLcExRwJY6RqwFykttD8vdhx95LRfD3QQe/bMKg/zrvpPArQjk9F
	PRU59NOFUJP7wsFzIkog==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sI8aE-00000003BWh-1chR;
	Fri, 14 Jun 2024 15:11:18 +0000
Received: from mgamail.intel.com ([192.198.163.12])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sI8aB-00000003BW5-2TZ4;
	Fri, 14 Jun 2024 15:11:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1718377875; x=1749913875;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=t+p8hRe7ZJaO1YiL/Ey5QrMotfYND+fGv7wrcUgpxyA=;
  b=dU/6P5gT5NAC2uQ7otmWKV5vVsN3gs+/dEnZdoGaLZnNJiEafeZbYC4f
   n3nwT7nVubQH2zpfEfbaiSU9AOrjKrAbdFJHQJLVGwE9aF6nBJw6kF+i+
   +/glunMgMtBh2YTCbVqBB5EsVC2NZU7LCZP6XyhR2cwo1CRIh6Dv4CfWu
   +0t5WDDNqBd1LtcdGjGshnYF6LQChVgudqFzauuzTgov8cOmeypy2KCGW
   ohzw6irGsPjOXEYqsU5cjpS5H7ZLr/gmsNuOPEmLcQcTHOMzFBaA2vgtm
   lzgLPFaTK7GwMzdp8x8aZqeOnps+hinmQr10PXHnun8x5NY7D+l/O1q+5
   w==;
X-CSE-ConnectionGUID: ABHQB1SHRJO2ggesMNRYxA==
X-CSE-MsgGUID: +Z8j4gRrQFqrpp2IFMendw==
X-IronPort-AV: E=McAfee;i="6700,10204,11103"; a="19119127"
X-IronPort-AV: E=Sophos;i="6.08,238,1712646000"; 
   d="scan'208";a="19119127"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
  by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 14 Jun 2024 08:11:08 -0700
X-CSE-ConnectionGUID: JEC5FGQ4RVyhmrCQyeMSlw==
X-CSE-MsgGUID: YxrmvlMCRIymwmM76zQFPw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,238,1712646000"; 
   d="scan'208";a="71297906"
Received: from lkp-server01.sh.intel.com (HELO 9e3ee4e9e062) ([10.239.97.150])
  by orviesa002.jf.intel.com with ESMTP; 14 Jun 2024 08:11:06 -0700
Received: from kbuild by 9e3ee4e9e062 with local (Exim 4.96)
	(envelope-from <lkp@intel.com>)
	id 1sI8Zz-0001RE-1E;
	Fri, 14 Jun 2024 15:11:03 +0000
Date: Fri, 14 Jun 2024 23:10:22 +0800
From: kernel test robot <lkp@intel.com>
To: Sebastian Kropatsch <seb-dev@mail.de>, Heiko Stuebner <heiko@sntech.de>
Cc: oe-kbuild-all@lists.linux.dev, linux-rockchip@lists.infradead.org,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 3/5] arm64: dts: rockchip: Improve LEDs on NanoPi R6C/R6S
Message-ID: <202406142337.SdnyldQ8-lkp@intel.com>
References: <20240612205056.397204-4-seb-dev@mail.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240612205056.397204-4-seb-dev@mail.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240614_081115_709931_A752D01B 
X-CRM114-Status: GOOD (  10.94  )
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

Hi Sebastian,

kernel test robot noticed the following build warnings:

[auto build test WARNING on rockchip/for-next]
[also build test WARNING on linus/master v6.10-rc3 next-20240613]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Sebastian-Kropatsch/arm64-dts-rockchip-Add-common-definitions-for-NanoPi-R6C-and-R6S/20240613-045639
base:   https://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git for-next
patch link:    https://lore.kernel.org/r/20240612205056.397204-4-seb-dev%40mail.de
patch subject: [PATCH 3/5] arm64: dts: rockchip: Improve LEDs on NanoPi R6C/R6S
config: arm64-randconfig-051-20240614 (https://download.01.org/0day-ci/archive/20240614/202406142337.SdnyldQ8-lkp@intel.com/config)
compiler: aarch64-linux-gcc (GCC) 13.2.0
dtschema version: 2024.6.dev1+g833054f
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20240614/202406142337.SdnyldQ8-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202406142337.SdnyldQ8-lkp@intel.com/

dtcheck warnings: (new ones prefixed by >>)
>> arch/arm64/boot/dts/rockchip/rk3588s-nanopi-r6s.dtb: leds: led-1:linux,default-trigger: 'oneOf' conditional failed, one must be fixed:
   	'stmmac-0:01:link' is not one of ['backlight', 'default-on', 'heartbeat', 'disk-activity', 'disk-read', 'disk-write', 'timer', 'pattern', 'audio-micmute', 'audio-mute', 'bluetooth-power', 'flash', 'kbd-capslock', 'mtd', 'nand-disk', 'none', 'torch', 'usb-gadget', 'usb-host', 'usbport']
   	'stmmac-0:01:link' does not match '^cpu[0-9]*$'
   	'stmmac-0:01:link' does not match '^hci[0-9]+-power$'
   	'stmmac-0:01:link' does not match '^mmc[0-9]+$'
   	'stmmac-0:01:link' does not match '^phy[0-9]+tx$'
   	from schema $id: http://devicetree.org/schemas/leds/leds-gpio.yaml#
>> arch/arm64/boot/dts/rockchip/rk3588s-nanopi-r6s.dtb: leds: led-1: Unevaluated properties are not allowed ('linux,default-trigger' was unexpected)
   	from schema $id: http://devicetree.org/schemas/leds/leds-gpio.yaml#
   arch/arm64/boot/dts/rockchip/rk3588s-nanopi-r6s.dtb: leds: led-2:linux,default-trigger: 'oneOf' conditional failed, one must be fixed:
   	'r8169-3-3100:00:link' is not one of ['backlight', 'default-on', 'heartbeat', 'disk-activity', 'disk-read', 'disk-write', 'timer', 'pattern', 'audio-micmute', 'audio-mute', 'bluetooth-power', 'flash', 'kbd-capslock', 'mtd', 'nand-disk', 'none', 'torch', 'usb-gadget', 'usb-host', 'usbport']
   	'r8169-3-3100:00:link' does not match '^cpu[0-9]*$'
   	'r8169-3-3100:00:link' does not match '^hci[0-9]+-power$'
   	'r8169-3-3100:00:link' does not match '^mmc[0-9]+$'
   	'r8169-3-3100:00:link' does not match '^phy[0-9]+tx$'
   	from schema $id: http://devicetree.org/schemas/leds/leds-gpio.yaml#
   arch/arm64/boot/dts/rockchip/rk3588s-nanopi-r6s.dtb: leds: led-2: Unevaluated properties are not allowed ('linux,default-trigger' was unexpected)
   	from schema $id: http://devicetree.org/schemas/leds/leds-gpio.yaml#
--
>> arch/arm64/boot/dts/rockchip/rk3588s-nanopi-r6c.dtb: leds: led-1:linux,default-trigger: 'oneOf' conditional failed, one must be fixed:
   	'stmmac-0:01:link' is not one of ['backlight', 'default-on', 'heartbeat', 'disk-activity', 'disk-read', 'disk-write', 'timer', 'pattern', 'audio-micmute', 'audio-mute', 'bluetooth-power', 'flash', 'kbd-capslock', 'mtd', 'nand-disk', 'none', 'torch', 'usb-gadget', 'usb-host', 'usbport']
   	'stmmac-0:01:link' does not match '^cpu[0-9]*$'
   	'stmmac-0:01:link' does not match '^hci[0-9]+-power$'
   	'stmmac-0:01:link' does not match '^mmc[0-9]+$'
   	'stmmac-0:01:link' does not match '^phy[0-9]+tx$'
   	from schema $id: http://devicetree.org/schemas/leds/leds-gpio.yaml#
>> arch/arm64/boot/dts/rockchip/rk3588s-nanopi-r6c.dtb: leds: led-1: Unevaluated properties are not allowed ('linux,default-trigger' was unexpected)
   	from schema $id: http://devicetree.org/schemas/leds/leds-gpio.yaml#
   arch/arm64/boot/dts/rockchip/rk3588s-nanopi-r6c.dtb: leds: led-2:linux,default-trigger: 'oneOf' conditional failed, one must be fixed:
   	'r8169-3-3100:00:link' is not one of ['backlight', 'default-on', 'heartbeat', 'disk-activity', 'disk-read', 'disk-write', 'timer', 'pattern', 'audio-micmute', 'audio-mute', 'bluetooth-power', 'flash', 'kbd-capslock', 'mtd', 'nand-disk', 'none', 'torch', 'usb-gadget', 'usb-host', 'usbport']
   	'r8169-3-3100:00:link' does not match '^cpu[0-9]*$'
   	'r8169-3-3100:00:link' does not match '^hci[0-9]+-power$'
   	'r8169-3-3100:00:link' does not match '^mmc[0-9]+$'
   	'r8169-3-3100:00:link' does not match '^phy[0-9]+tx$'
   	from schema $id: http://devicetree.org/schemas/leds/leds-gpio.yaml#
   arch/arm64/boot/dts/rockchip/rk3588s-nanopi-r6c.dtb: leds: led-2: Unevaluated properties are not allowed ('linux,default-trigger' was unexpected)
   	from schema $id: http://devicetree.org/schemas/leds/leds-gpio.yaml#

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
