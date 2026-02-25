Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C20C6F55425
	for <linux-rockchip@archiver.kernel.org>; Wed, 25 Feb 2026 00:05:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KPr5qjQ6KAIKsHkHucItI1zg6Kzy3nTqz8pKaS2zkQc=; b=m5DW32KnDf0lne
	4QbrII6/2G0FGJCe2GGK3wxNwhqFHKTLdBCVhbh3ZHM5YZkjmPoc3YXG4VGRRW8G80kW2WTodad51
	Kpbx01++4wc3eNffd3Wn+QCUL/FO1KXf69np11sNS+liX6eoHK3Z4Qoh8VpJ+iTWRow9N5XR6j+/l
	I4eYaQ8VFFrnxbYnEoihZzAyDvbx/WjLmRmSHSepxCkT0BGHuMIOPSk54vjgLifrc6jEDmzKwTJKm
	RIIwJDlzwKpHBe4UgIDKgMZKNE7wT4H2HgfSGYQAWpNG3dZ36K76YIoFptlLT3fCA1aOUG/TT+vGD
	HiCNLJKiqZU0nqoyu5AA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vv2Oa-00000002xjc-1JqX;
	Wed, 25 Feb 2026 00:04:52 +0000
Received: from mgamail.intel.com ([198.175.65.16])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vv2OX-00000002xii-155Z
	for linux-rockchip@lists.infradead.org;
	Wed, 25 Feb 2026 00:04:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1771977887; x=1803513887;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=Myv8Eg4qd8hYFHZFEYgoZT6YbrxhedjbG6iZlTRMA44=;
  b=g46n92SjoioT7GyEKk1Qq3GjRHb48hdZKgr66xPVslwLNRXV3QbuOPPd
   /jJGmFXhhehjpwcIrWO5hnARZDz6PhPZ7R+/td3Wkx80lakAnggMpoB8U
   Os9pClRQuqnOuyjWE+KlNd2Fwp1MCgbSFqOHr1IyYZeVOHmBKZvpFOwwc
   lWQyajgGzApBH74tEA09tZbgKqJD4a/Mk7omU40I2w7pJGT5C2D7jQI4e
   /4nmJYf9DvhbQ/69tbtvRU5oi/F35XE5WEht0jvN/bixTrHrSXx63GoCX
   mQYAzzZtowZ5DsEYGbZWNEPaNNHuGV4QlQHVsTkW7hG7GHt1HQa9lZ89+
   g==;
X-CSE-ConnectionGUID: SQPhOG3WR+KM0TCVpHYNzw==
X-CSE-MsgGUID: F2gGIAO1R8WpYZ2NmDxVGw==
X-IronPort-AV: E=McAfee;i="6800,10657,11711"; a="73186823"
X-IronPort-AV: E=Sophos;i="6.21,309,1763452800"; 
   d="scan'208";a="73186823"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
  by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 24 Feb 2026 16:04:47 -0800
X-CSE-ConnectionGUID: eEHTq/9QSeCkUWjyx07BzQ==
X-CSE-MsgGUID: qVFCXw3SReiVsAGeUBCz+w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,309,1763452800"; 
   d="scan'208";a="215946493"
Received: from lkp-server02.sh.intel.com (HELO a3936d6a266d) ([10.239.97.151])
  by orviesa009.jf.intel.com with ESMTP; 24 Feb 2026 16:04:45 -0800
Received: from kbuild by a3936d6a266d with local (Exim 4.98.2)
	(envelope-from <lkp@intel.com>)
	id 1vv2OQ-000000002bh-1Kzk;
	Wed, 25 Feb 2026 00:04:42 +0000
Date: Wed, 25 Feb 2026 08:04:10 +0800
From: kernel test robot <lkp@intel.com>
To: Chris Morgan <macroalpha82@gmail.com>, linux-iio@vger.kernel.org
Cc: llvm@lists.linux.dev, oe-kbuild-all@lists.linux.dev, andy@kernel.org,
	nuno.sa@analog.com, dlechner@baylibre.com, jic23@kernel.org,
	jean-baptiste.maneyrol@tdk.com, linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org, heiko@sntech.de, conor+dt@kernel.org,
	krzk+dt@kernel.org, robh@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: Re: [PATCH 2/3] iio: imu: inv_icm42607: add new inv_icm42607 driver
Message-ID: <202602250851.I3vE5ldR-lkp@intel.com>
References: <20260224163109.370930-3-macroalpha82@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260224163109.370930-3-macroalpha82@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260224_160449_393634_793FE3D4 
X-CRM114-Status: GOOD (  11.49  )
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
[also build test WARNING on linus/master v7.0-rc1 next-20260224]
[cannot apply to jic23-iio/togreg]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Chris-Morgan/dt-bindings-iio-imu-icm42607-Add-devicetree-binding/20260225-003610
base:   https://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git for-next
patch link:    https://lore.kernel.org/r/20260224163109.370930-3-macroalpha82%40gmail.com
patch subject: [PATCH 2/3] iio: imu: inv_icm42607: add new inv_icm42607 driver
config: hexagon-allmodconfig (https://download.01.org/0day-ci/archive/20260225/202602250851.I3vE5ldR-lkp@intel.com/config)
compiler: clang version 17.0.6 (https://github.com/llvm/llvm-project 6009708b4367171ccdbf4b5905cb6a803753fe18)
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20260225/202602250851.I3vE5ldR-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202602250851.I3vE5ldR-lkp@intel.com/

All warnings (new ones prefixed by >>):

>> drivers/iio/imu/inv_icm42607/inv_icm42607_accel.c:200:36: warning: unused variable 'inv_icm42607_motion_events' [-Wunused-const-variable]
     200 | static const struct iio_event_spec inv_icm42607_motion_events[] = {
         |                                    ^~~~~~~~~~~~~~~~~~~~~~~~~~
   1 warning generated.


vim +/inv_icm42607_motion_events +200 drivers/iio/imu/inv_icm42607/inv_icm42607_accel.c

   199	
 > 200	static const struct iio_event_spec inv_icm42607_motion_events[] = {
   201		{
   202			.type = IIO_EV_TYPE_THRESH,
   203			.dir = IIO_EV_DIR_EITHER,
   204			.mask_separate = BIT(IIO_EV_INFO_ENABLE) | BIT(IIO_EV_INFO_VALUE),
   205		},
   206	};
   207	

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
