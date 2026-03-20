Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3D2F710987B6
	for <linux-rockchip@archiver.kernel.org>; Fri, 20 Mar 2026 16:56:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bEdnb9EJKnA6f/9yar+/HVJ3nK2PA71N350EP2KVjIY=; b=3s01NmKvRktR/G
	BZGpBzb1siz5wvFFaql5HGQL8z0WkVnkwoDCUoKLEn5IYF07P1ZRIy270snZTV8GOJ7Ial31Kz/rc
	nj/IXvoGbhTYlnIjax/9mrErW92SqXUlBvGas8WkzBqsaKgzhlqLg2GMl71Q7mSbowSWLGHUNz/Nu
	QBboMokKjRAu3IZCTyOUmgDnJhgT6gnskwj3zUfv6XJTtnUqjBOECDPJQ+U6xbSL7TJh0CVO5XS8x
	j96+dlpdsBF2+lk9k6i5CEotlnMvmuPlrGZSaYN2wILvl43KmiSrSuE3C2jsvyzIK3Z8Dj7TGqNkG
	ZW/XIKNDjhM7IfRhTzRw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w3d8m-0000000DClc-1vfj;
	Fri, 20 Mar 2026 16:56:04 +0000
Received: from mgamail.intel.com ([198.175.65.12])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w3d8j-0000000DClE-0VIk
	for linux-rockchip@lists.infradead.org;
	Fri, 20 Mar 2026 16:56:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1774025761; x=1805561761;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=JOsQO3st7WILZVBsC8f9R41Jc6elrwJYkP5l/BvD1+0=;
  b=L8QuU5nna8nAiDv1jq9tz2Sj4NLx0whSllQYK/cfCqwJieMWIIzPgzeB
   lmxz5TCpZi0pvXPVkBeBYDRA9tO5CEOzMai7PlFPHIyoAthnWjHz6e6hJ
   HoC2QmARdsh8mohBMMKSqF0EG/uZD+J5Z8GT6xcyfI3kVDspTyE8gPtOH
   g9IdKE7+BvCdl2+TDxsZtc+XwxNzLv9pozP7tlZoUuSPOe0oSeUH8fJWF
   IRXLg4JcrwOOf0ck4zkTwsliq4u10kzohKRBooKELVAFvesrc4oJ/4yAa
   4wbfRiLm33nDT3d3aqpMcOtiGeqdXwP9sZdhcSly5OEiscwqSs9Jnatld
   w==;
X-CSE-ConnectionGUID: wDeN0rlTSoeTXpEbYU2FXA==
X-CSE-MsgGUID: 9wdPF8auRDGvqz8F7xedIw==
X-IronPort-AV: E=McAfee;i="6800,10657,11735"; a="86590453"
X-IronPort-AV: E=Sophos;i="6.23,130,1770624000"; 
   d="scan'208";a="86590453"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
  by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 20 Mar 2026 09:55:54 -0700
X-CSE-ConnectionGUID: yzTcZ5yzTPSLzbwc1yJQiw==
X-CSE-MsgGUID: HN+kDXFUToSBAd28oBPRcw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,130,1770624000"; 
   d="scan'208";a="222569042"
Received: from lkp-server01.sh.intel.com (HELO ba623fe84fe1) ([10.239.97.150])
  by orviesa010.jf.intel.com with ESMTP; 20 Mar 2026 09:55:48 -0700
Received: from kbuild by ba623fe84fe1 with local (Exim 4.98.2)
	(envelope-from <lkp@intel.com>)
	id 1w3d8T-000000000Ar-30MX;
	Fri, 20 Mar 2026 16:55:45 +0000
Date: Sat, 21 Mar 2026 00:55:14 +0800
From: kernel test robot <lkp@intel.com>
To: Chris Morgan <macroalpha82@gmail.com>, linux-iio@vger.kernel.org
Cc: oe-kbuild-all@lists.linux.dev, andy@kernel.org, nuno.sa@analog.com,
	dlechner@baylibre.com, jic23@kernel.org,
	jean-baptiste.maneyrol@tdk.com, linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org, heiko@sntech.de, conor+dt@kernel.org,
	krzk+dt@kernel.org, robh@kernel.org, andriy.shevchenko@intel.com,
	Chris Morgan <macromorgan@hotmail.com>
Subject: Re: [PATCH V2 4/5] iio: imu: inv_icm42600: Add support for icm42607
Message-ID: <202603210032.xLBroWQu-lkp@intel.com>
References: <20260319182956.146976-5-macroalpha82@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260319182956.146976-5-macroalpha82@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260320_095601_294604_2B161F64 
X-CRM114-Status: GOOD (  12.91  )
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
config: i386-randconfig-r134-20260320 (https://download.01.org/0day-ci/archive/20260321/202603210032.xLBroWQu-lkp@intel.com/config)
compiler: gcc-13 (Debian 13.3.0-16) 13.3.0
sparse: v0.6.5-rc1
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20260321/202603210032.xLBroWQu-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202603210032.xLBroWQu-lkp@intel.com/

All warnings (new ones prefixed by >>):

   drivers/iio/imu/inv_icm42600/inv_icm42600_core.c: In function 'inv_icm42607_hw_suspend':
>> drivers/iio/imu/inv_icm42600/inv_icm42600_core.c:1150:13: warning: variable 'accel_conf' set but not used [-Wunused-but-set-variable]
    1150 |         int accel_conf;
         |             ^~~~~~~~~~
--
>> drivers/iio/imu/inv_icm42600/inv_icm42600_accel.c:108:18: warning: 'inv_icm42607_accel_filter_values' defined but not used [-Wunused-const-variable=]
     108 | static const int inv_icm42607_accel_filter_values[] = {
         |                  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


vim +/accel_conf +1150 drivers/iio/imu/inv_icm42600/inv_icm42600_core.c

  1144	
  1145	static int inv_icm42607_hw_suspend(struct device *dev)
  1146	{
  1147		struct inv_icm42600_state *st = dev_get_drvdata(dev);
  1148		struct device *accel_dev;
  1149		bool wakeup;
> 1150		int accel_conf;
  1151		int ret = 0;
  1152	
  1153		guard(mutex)(&st->lock);
  1154	
  1155		st->suspended.gyro = st->conf.gyro.mode;
  1156		st->suspended.accel = st->conf.accel.mode;
  1157		st->suspended.temp = st->conf.temp_en;
  1158		if (pm_runtime_suspended(dev))
  1159			return 0;
  1160	
  1161		if (st->fifo.on) {
  1162			ret = regmap_write(st->map, INV_ICM42607_REG_FIFO_CONFIG1,
  1163					   INV_ICM42607_FIFO_CONFIG1_BYPASS);
  1164			if (ret)
  1165				return ret;
  1166		}
  1167	
  1168		/* keep chip on and wake-up capable if APEX and wakeup on */
  1169		accel_dev = &st->indio_accel->dev;
  1170		wakeup = st->apex.on && device_may_wakeup(accel_dev);
  1171		if (wakeup) {
  1172			/* keep accel on and setup irq for wakeup */
  1173			accel_conf = st->conf.accel.mode;
  1174			enable_irq_wake(st->irq);
  1175			disable_irq(st->irq);
  1176		} else {
  1177			/* disable APEX features and accel if wakeup disabled */
  1178			if (st->apex.wom.enable) {
  1179				ret = inv_icm42607_disable_wom(st);
  1180				if (ret)
  1181					return ret;
  1182			}
  1183			accel_conf = INV_ICM42600_SENSOR_MODE_OFF;
  1184		}
  1185	
  1186		ret = inv_icm42607_set_pwr_mgmt0(st, INV_ICM42600_SENSOR_MODE_OFF,
  1187						 INV_ICM42600_SENSOR_MODE_OFF, false,
  1188						 NULL);
  1189		if (ret)
  1190			return ret;
  1191	
  1192		if (!wakeup)
  1193			regulator_disable(st->vddio_supply);
  1194	
  1195		return 0;
  1196	}
  1197	

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
