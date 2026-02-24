Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7D5EFF4BB7F
	for <linux-rockchip@archiver.kernel.org>; Tue, 24 Feb 2026 20:06:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fVRJNZlwWvDPmKncpuW3hmZ/NlgGQNYmYiOI7zLutBw=; b=U0GTkLwrcejQtE
	Ve/YNJ5+hO6M2417WSJqGIvqt5s9PolA5JXz2qFJFpdPstxzMKVIRgD1fNeMvbJMMHP73QJai9YzO
	E5v0F2knbrbcF2dkz2E4TISZoO/otFRPg38hZ1QsBXeSgbVdHcXDCI2B+fS9vt+gYjRht7+GDlEoy
	R22DjUplExXztAnr/7byeT0dr/W3BQMi/DbQrXjquYO38w3IePf6lZv2bbbYfEzCHTPh+Gnk1hMKb
	qaBQZczHvfxJmlQkwIWS7zptBth8XEXiavKTsH+bcHgxY9R5w6wlHbaHl4ym0I2KB4zSIKuA+JKnT
	xC7N4r0vPfr9h0nJFrbA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vuygG-00000002jU9-0LyO;
	Tue, 24 Feb 2026 20:06:52 +0000
Received: from mgamail.intel.com ([192.198.163.10])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vuygD-00000002jTm-1SAp
	for linux-rockchip@lists.infradead.org;
	Tue, 24 Feb 2026 20:06:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1771963609; x=1803499609;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=JnvyvrTWhs4gFCNCDWjVlJ4krK6pLc/diQs0NadNI9s=;
  b=EvsV5gMgJGWp2nk0ToO2iA9tmDfST3njyucuwZr3jez+9eFF2nSurrqk
   tNhSkr9qM63uQOusCjcL8TAAdrqI80gv5WHTQ8ukhY15TU0IS5aXdeQ6P
   qJ3UpE/8WCCWIIg957tpi12xNEjwyunkRWhjZjZTb2sASz6cNgGiqt2UJ
   dqvbD4cSpewlDX8oYG9VQC2XpNyc6WvsBGo84T/ERWfesC2h5QqDXqCDd
   aHGRmRVvkwoWH8vnGH/yiIFUosoofNQkeVAr/aJaOSQhwS4ubUGX5Otsm
   qS2PwceBdp3XpF7dof8MWi8PMvWf9qiDan1op20qYWp6tL/JMtai4RpVW
   A==;
X-CSE-ConnectionGUID: XtXp9ExJT0y0iAB7MpWpBw==
X-CSE-MsgGUID: Ukfbg2RmRsmFxGNy9b0Gow==
X-IronPort-AV: E=McAfee;i="6800,10657,11711"; a="84358375"
X-IronPort-AV: E=Sophos;i="6.21,309,1763452800"; 
   d="scan'208";a="84358375"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
  by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 24 Feb 2026 12:06:48 -0800
X-CSE-ConnectionGUID: bK9mMWaGTraCoEuV+coDig==
X-CSE-MsgGUID: MZ747D+jSy2qFNh4LBrWrA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,309,1763452800"; 
   d="scan'208";a="214347483"
Received: from lkp-server02.sh.intel.com (HELO a3936d6a266d) ([10.239.97.151])
  by fmviesa007.fm.intel.com with ESMTP; 24 Feb 2026 12:06:44 -0800
Received: from kbuild by a3936d6a266d with local (Exim 4.98.2)
	(envelope-from <lkp@intel.com>)
	id 1vuyfo-000000002P3-1Mez;
	Tue, 24 Feb 2026 20:06:30 +0000
Date: Wed, 25 Feb 2026 04:05:37 +0800
From: kernel test robot <lkp@intel.com>
To: Chris Morgan <macroalpha82@gmail.com>, linux-iio@vger.kernel.org
Cc: oe-kbuild-all@lists.linux.dev, andy@kernel.org, nuno.sa@analog.com,
	dlechner@baylibre.com, jic23@kernel.org,
	jean-baptiste.maneyrol@tdk.com, linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org, heiko@sntech.de, conor+dt@kernel.org,
	krzk+dt@kernel.org, robh@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: Re: [PATCH 2/3] iio: imu: inv_icm42607: add new inv_icm42607 driver
Message-ID: <202602250331.RTQ00zxY-lkp@intel.com>
References: <20260224163109.370930-3-macroalpha82@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260224163109.370930-3-macroalpha82@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260224_120649_428400_C128C9DA 
X-CRM114-Status: GOOD (  14.70  )
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
config: sh-allyesconfig (https://download.01.org/0day-ci/archive/20260225/202602250331.RTQ00zxY-lkp@intel.com/config)
compiler: sh4-linux-gcc (GCC) 15.2.0
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20260225/202602250331.RTQ00zxY-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202602250331.RTQ00zxY-lkp@intel.com/

All warnings (new ones prefixed by >>):

   drivers/iio/imu/inv_icm42607/inv_icm42607_core.c: In function 'inv_icm42607_suspend':
>> drivers/iio/imu/inv_icm42607/inv_icm42607_core.c:670:13: warning: variable 'accel_conf' set but not used [-Wunused-but-set-variable]
     670 |         int accel_conf;
         |             ^~~~~~~~~~
--
>> drivers/iio/imu/inv_icm42607/inv_icm42607_accel.c:200:36: warning: 'inv_icm42607_motion_events' defined but not used [-Wunused-const-variable=]
     200 | static const struct iio_event_spec inv_icm42607_motion_events[] = {
         |                                    ^~~~~~~~~~~~~~~~~~~~~~~~~~


vim +/accel_conf +670 drivers/iio/imu/inv_icm42607/inv_icm42607_core.c

   660	
   661	/*
   662	 * Suspend saves sensors state and turns everything off.
   663	 * Check first if runtime suspend has not already done the job.
   664	 */
   665	static int inv_icm42607_suspend(struct device *dev)
   666	{
   667		struct inv_icm42607_state *st = dev_get_drvdata(dev);
   668		struct device *accel_dev;
   669		bool wakeup;
 > 670		int accel_conf;
   671		int ret = 0;
   672	
   673		guard(mutex)(&st->lock);
   674	
   675		st->suspended.gyro = st->conf.gyro.mode;
   676		st->suspended.accel = st->conf.accel.mode;
   677		st->suspended.temp = st->conf.temp_en;
   678		if (pm_runtime_suspended(dev))
   679			return 0;
   680	
   681		if (st->fifo.on) {
   682			ret = regmap_write(st->map, INV_ICM42607_REG_FIFO_CONFIG1,
   683					   INV_ICM42607_FIFO_CONFIG1_BYPASS);
   684			if (ret)
   685				return ret;
   686		}
   687	
   688		/* keep chip on and wake-up capable if APEX and wakeup on */
   689		accel_dev = &st->indio_accel->dev;
   690		wakeup = st->apex.on && device_may_wakeup(accel_dev);
   691		if (wakeup) {
   692			/* keep accel on and setup irq for wakeup */
   693			accel_conf = st->conf.accel.mode;
   694			enable_irq_wake(st->irq);
   695			disable_irq(st->irq);
   696		} else {
   697			/* disable APEX features and accel if wakeup disabled */
   698			if (st->apex.wom.enable) {
   699				ret = inv_icm42607_disable_wom(st);
   700				if (ret)
   701					return ret;
   702			}
   703			accel_conf = INV_ICM42607_SENSOR_MODE_OFF;
   704		}
   705	
   706		ret = inv_icm42607_set_pwr_mgmt0(st, INV_ICM42607_SENSOR_MODE_OFF,
   707						 INV_ICM42607_SENSOR_MODE_OFF, false,
   708						 NULL);
   709		if (ret)
   710			return ret;
   711	
   712		if (!wakeup)
   713			regulator_disable(st->vddio_supply);
   714	
   715		return 0;
   716	}
   717	

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
