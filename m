Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 47098C52D7C
	for <linux-rockchip@archiver.kernel.org>; Thu, 22 Aug 2024 04:07:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NZz43ImeWg1PnIz6r6STWxzxC2IrehJFi20kuHnFlF4=; b=K4rxdyTv+NObA5
	IoNUWqyC1QHSr2atCoAt3XBcgMNLmf44xCQy3Jjs++9SC3glzLCVX1WbpgQgyvCOyn0ehPI3BJGkD
	DTyCby9SArpEjzNN55zHXe41iqhFW12EcNpdpNfSJ6ftTc55a5CEgap61S03eSQq2QVQQPklwUuIU
	do+zha+EfsyoYBiC5Gb7Z8q2u5W+tJrXNpd95Y0yzSR2grbM5j532Kw7lFWm0CXyJnPaMXRT2MTsP
	9qpCJUGwGHJUEN4ZRgN1XTWtqVS7afZXnL99Ja/hANBp9udZeFGlKR3qZrk8sOs5o4/wLSbN5L1+F
	5B18l2wPy+HEFX/PED0A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sgz6R-0000000BJgv-3Jda;
	Thu, 22 Aug 2024 04:07:15 +0000
Received: from mgamail.intel.com ([192.198.163.14])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sgz5h-0000000BJaL-48gy;
	Thu, 22 Aug 2024 04:06:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1724299590; x=1755835590;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=h+7VUn8zijg/bGK9rj92aQWLkRIvnnYNAUgbwBMKUtE=;
  b=QW/Ha0+qwb6HL6JS+VeYXdxgdTKncv/eZYKFf1dbZM3RL9d30NJlZM2F
   yJcZkeQf4IjkuVF5kWF3snxC1xJ1zzeptqLv60o6NaUDla/xMGeoWvzal
   x/UuxITLuAY54mQ0oZziy+iN6/Ez8RZQaddXINWhM4sXLkZrCAoakd32q
   cAHbP2eZbqw+0/JPDWZpBzJxxsSvoirYenEbAmM9xa+O5C1zbOePcwROF
   bbgnUS3HYQqF0JSmPoDVGUp2bwxKXqsqMkE2r47azt2Ajyc+b2A1IFKKi
   OgYpnM0YMh6TaWNEuPZqlH/MUYOhKk7/wE9NvUayqIt9+7PSI0XjuUsLX
   g==;
X-CSE-ConnectionGUID: TefS8kEQQWS1N1ipqgxDFA==
X-CSE-MsgGUID: oXwIvXflTci1j75QOvPs9Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11171"; a="22874174"
X-IronPort-AV: E=Sophos;i="6.10,165,1719903600"; 
   d="scan'208";a="22874174"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
  by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 21 Aug 2024 21:06:28 -0700
X-CSE-ConnectionGUID: UhBDiS8ERQyGVVxG8PYIKA==
X-CSE-MsgGUID: UMplunvoT3iAhBaIVt1hvg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,165,1719903600"; 
   d="scan'208";a="84483979"
Received: from lkp-server01.sh.intel.com (HELO 9a732dc145d3) ([10.239.97.150])
  by fmviesa002.fm.intel.com with ESMTP; 21 Aug 2024 21:06:25 -0700
Received: from kbuild by 9a732dc145d3 with local (Exim 4.96)
	(envelope-from <lkp@intel.com>)
	id 1sgz5a-000CJ8-1v;
	Thu, 22 Aug 2024 04:06:22 +0000
Date: Thu, 22 Aug 2024 12:06:05 +0800
From: kernel test robot <lkp@intel.com>
To: Heiko Stuebner <heiko@sntech.de>, lee@kernel.org
Cc: oe-kbuild-all@lists.linux.dev, robh@kernel.org, krzk+dt@kernel.org,
	conor+dt@kernel.org, jdelvare@suse.com, linux@roeck-us.net,
	heiko@sntech.de, dmitry.torokhov@gmail.com, pavel@ucw.cz,
	ukleinek@debian.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-hwmon@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-input@vger.kernel.org,
	linux-leds@vger.kernel.org
Subject: Re: [PATCH v5 2/7] mfd: add base driver for qnap-mcu devices
Message-ID: <202408221141.ZK7cre1s-lkp@intel.com>
References: <20240819144000.411846-3-heiko@sntech.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240819144000.411846-3-heiko@sntech.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240821_210630_060795_CEEB1158 
X-CRM114-Status: GOOD (  12.84  )
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

Hi Heiko,

kernel test robot noticed the following build warnings:

[auto build test WARNING on next-20240819]
[also build test WARNING on v6.11-rc4]
[cannot apply to groeck-staging/hwmon-next lee-leds/for-leds-next lee-mfd/for-mfd-next lee-mfd/for-mfd-fixes linus/master v6.11-rc4 v6.11-rc3 v6.11-rc2]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Heiko-Stuebner/dt-bindings-mfd-add-binding-for-qnap-ts433-mcu-devices/20240819-224312
base:   next-20240819
patch link:    https://lore.kernel.org/r/20240819144000.411846-3-heiko%40sntech.de
patch subject: [PATCH v5 2/7] mfd: add base driver for qnap-mcu devices
config: s390-allyesconfig (https://download.01.org/0day-ci/archive/20240822/202408221141.ZK7cre1s-lkp@intel.com/config)
compiler: s390-linux-gcc (GCC) 14.1.0
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20240822/202408221141.ZK7cre1s-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202408221141.ZK7cre1s-lkp@intel.com/

All warnings (new ones prefixed by >>):

>> drivers/mfd/qnap-mcu.c:64: warning: Excess struct member 'reply_lock' description in 'qnap_mcu'


vim +64 drivers/mfd/qnap-mcu.c

    47	
    48	/**
    49	 * struct qnap_mcu - QNAP NAS embedded controller
    50	 *
    51	 * @serdev:	Pointer to underlying serdev
    52	 * @bus_lock:	Lock to serialize access to the device
    53	 * @reply_lock:	Lock protecting @reply
    54	 * @reply:	Pointer to memory to store reply payload
    55	 * @variant:	Device variant specific information
    56	 * @version:	MCU firmware version
    57	 */
    58	struct qnap_mcu {
    59		struct serdev_device *serdev;
    60		struct mutex bus_lock;
    61		struct qnap_mcu_reply reply;
    62		const struct qnap_mcu_variant *variant;
    63		u8 version[QNAP_MCU_VERSION_LEN];
  > 64	};
    65	

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
