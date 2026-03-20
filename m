Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5DE9F10987B0
	for <linux-rockchip@archiver.kernel.org>; Fri, 20 Mar 2026 16:45:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=k5CTL75acNayHq7g0IWY1uGwDCAVQ70HouU3QEjdHV4=; b=Q4ZPv7BwZX8PFs
	SVCVkJONj8Hy8QAq5CmFiJmeQRHg3ow6G9MFEzpHSE5Qz1+BFnVfVPVcppCjO6BU28BZqokgjOGNG
	E4sbTNPXGFkjtgiJckHsVHAa+jXvlqv8kGGJU8yCFXlGCc7K1hIPpxNfOZkt1VyaQ8n+3y/s/FE/R
	MnXOJ1VUAWGSbB8rW/QKfYkUajG5MathAlz9nslpHVBBSTAmPn/UV+ZX3zCD24PAxmwu23+SbPA0Y
	KPM6Wh66+4KGpcSopzMipSVqa1SD+R17axnsNaonCpWdqucY1CsGhudOS+eu4J+Lq7CnOWP+X8N3G
	adTDUkL0Zh/1xil56dPg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w3cy0-0000000DAjI-2JBa;
	Fri, 20 Mar 2026 16:44:56 +0000
Received: from mgamail.intel.com ([198.175.65.14])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w3cxy-0000000DAie-1ol4
	for linux-rockchip@lists.infradead.org;
	Fri, 20 Mar 2026 16:44:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1774025095; x=1805561095;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=8o7EUfcliJ4m23BIGd721lVDYs7l78dCV1WdklpKn3c=;
  b=NJS8nKdp7kT0QD1G0/iJievHeXvVEz4zwtVb7SNyMmhxnDaVqhLswP60
   RL7gZBjNq4/8izwYTXJn7h41zSaC0Lo6O/L3VHcV3mPLpHKoq5NTjfZfE
   luP2LVGsy5IssLd39EdRQtVDRbcPbVXsWxhdiGbs1msNc/FuQhe2IIxBM
   ur6n+DqitXHvzdbfI6TQoOmhIxYHlX24RFkkJHbWw2JS0xBzf+P/+LVR0
   hb/IVagZRLctk2AXLievooDUFuABlUVk2qNwqRaal7BMNh3TRgniwbj/y
   4vaEJih3j1B8iZV1/YgzRKfNHwwTOu739UdfRJp956uPjW3LqeWbTznFp
   g==;
X-CSE-ConnectionGUID: 6YhXau7zSU2hkiAfegIU3w==
X-CSE-MsgGUID: XjvUfy+lTxCXvARYt5HfCQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11735"; a="78971787"
X-IronPort-AV: E=Sophos;i="6.23,130,1770624000"; 
   d="scan'208";a="78971787"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
  by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 20 Mar 2026 09:44:52 -0700
X-CSE-ConnectionGUID: nL0+5e5cSUahrq/spq4G0w==
X-CSE-MsgGUID: 1WJN9SWqTsGWbXmsk1lN7A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,130,1770624000"; 
   d="scan'208";a="253837263"
Received: from lkp-server01.sh.intel.com (HELO ba623fe84fe1) ([10.239.97.150])
  by orviesa002.jf.intel.com with ESMTP; 20 Mar 2026 09:44:47 -0700
Received: from kbuild by ba623fe84fe1 with local (Exim 4.98.2)
	(envelope-from <lkp@intel.com>)
	id 1w3cxo-0000000009p-212j;
	Fri, 20 Mar 2026 16:44:44 +0000
Date: Sat, 21 Mar 2026 00:44:01 +0800
From: kernel test robot <lkp@intel.com>
To: Chris Morgan <macroalpha82@gmail.com>, linux-iio@vger.kernel.org
Cc: llvm@lists.linux.dev, oe-kbuild-all@lists.linux.dev, andy@kernel.org,
	nuno.sa@analog.com, dlechner@baylibre.com, jic23@kernel.org,
	jean-baptiste.maneyrol@tdk.com, linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org, heiko@sntech.de, conor+dt@kernel.org,
	krzk+dt@kernel.org, robh@kernel.org, andriy.shevchenko@intel.com,
	Chris Morgan <macromorgan@hotmail.com>
Subject: Re: [PATCH V2 4/5] iio: imu: inv_icm42600: Add support for icm42607
Message-ID: <202603210243.jegPzaTL-lkp@intel.com>
References: <20260319182956.146976-5-macroalpha82@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260319182956.146976-5-macroalpha82@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260320_094454_524824_2E0212CB 
X-CRM114-Status: GOOD (  10.48  )
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

Hi Chris,

kernel test robot noticed the following build warnings:

[auto build test WARNING on rockchip/for-next]
[also build test WARNING on linus/master v7.0-rc4 next-20260320]
[cannot apply to jic23-iio/togreg]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Chris-Morgan/dt-bindings-iio-imu-add-icm42607/20260320-061927
base:   https://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git for-next
patch link:    https://lore.kernel.org/r/20260319182956.146976-5-macroalpha82%40gmail.com
patch subject: [PATCH V2 4/5] iio: imu: inv_icm42600: Add support for icm42607
config: i386-buildonly-randconfig-003-20260320 (https://download.01.org/0day-ci/archive/20260321/202603210243.jegPzaTL-lkp@intel.com/config)
compiler: clang version 20.1.8 (https://github.com/llvm/llvm-project 87f0227cb60147a26a1eeb4fb06e3b505e9c7261)
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20260321/202603210243.jegPzaTL-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202603210243.jegPzaTL-lkp@intel.com/

All warnings (new ones prefixed by >>):

>> drivers/iio/imu/inv_icm42600/inv_icm42600_accel.c:108:18: warning: unused variable 'inv_icm42607_accel_filter_values' [-Wunused-const-variable]
     108 | static const int inv_icm42607_accel_filter_values[] = {
         |                  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   1 warning generated.


vim +/inv_icm42607_accel_filter_values +108 drivers/iio/imu/inv_icm42600/inv_icm42600_accel.c

    95	
    96	static const char * const inv_icm42600_accel_power_mode_items[] = {
    97		"low-noise",
    98		"low-power",
    99	};
   100	static const int inv_icm42600_accel_power_mode_values[] = {
   101		INV_ICM42600_SENSOR_MODE_LOW_NOISE,
   102		INV_ICM42600_SENSOR_MODE_LOW_POWER,
   103	};
   104	static const int inv_icm42600_accel_filter_values[] = {
   105		INV_ICM42600_FILTER_BW_ODR_DIV_2,
   106		INV_ICM42600_FILTER_AVG_16X,
   107	};
 > 108	static const int inv_icm42607_accel_filter_values[] = {
   109		INV_ICM42607_FILTER_BW_25HZ,
   110		INV_ICM42607_FILTER_AVG_16X,
   111	};
   112	

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
