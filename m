Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EADB5E71080
	for <linux-rockchip@archiver.kernel.org>; Sat,  7 Sep 2024 12:07:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ngh4xCxeGP4sSbQdDHRpAT4FiEyyk7FsSLbMgGBNY5o=; b=uJJEsEiRd1zwWg
	9Md7JJGbQdTMpR4NHw2hzrMjKD10sfDmOn0+RkqeHuubWLrgOVoSKo2iloaxREsCqt53WA2pwM54i
	CfBYlgYOOx0cQW92f1zJ5sM1CJMqOH4ZAPzVY/3dKdXMkNVmuqCmRhVwG9XonxV2oNnWg3AOGDjjy
	zz6YAiIcGUmaNTEXqGaENdJaVaj3c379Leiz43e9k5sHPrp00MdZmPFWaV6KZC+cHewn3mLLnqSNI
	gYkFha1iYDSxZESGZicT6ScHxBzlfHu8SR84A0QH2KK6C95/195rHYXTmp+I/yCk5t9IeOnvlwvwg
	KzaJzQ+yBANIgg8PN38g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1smuDc-0000000EyPj-1Rln;
	Sat, 07 Sep 2024 12:07:08 +0000
Received: from mgamail.intel.com ([192.198.163.7])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1smuCE-0000000EyDz-40rh;
	Sat, 07 Sep 2024 12:05:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1725710743; x=1757246743;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=Jh4PwUNysNxdEFJP39u3JzBg34efqUZTVLbPaBatgo8=;
  b=H8m9/yX0gCCcL64muaa2fKF9KK6ITLPuJQlGpfq6M5B+vGccHEONC/SF
   TGn+uENrQuGfA1Ek9W2dmmJPfipP7Mog39lEQ8/eyWlaXar6ibzNDiZdD
   5flL9PMdgcWwaA/+C5N8eurNNpZDF4Vn0ZqTfLHhg/D5QDMeaIRQ1kMkW
   o8N3MHaXZAMP34PdY09wcOgQRHAbB9rNYJl+cf22D1//+mEKq9mi7MDGz
   MitIMjnGboqYYiyvxghEsOBzye3Cp6m20vy5Y+OCykI6ypt/zEfxHYJ7g
   hyqfnMdikbMvQmZCK8/UBonb5ok0f1DgKLnh6TbH1Bz8NvXn1mup31jzE
   g==;
X-CSE-ConnectionGUID: fgNg4TWjSE6NjlF4T2bqUg==
X-CSE-MsgGUID: olReHPtGQ7Kdkfa3fKkDBQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11187"; a="49872527"
X-IronPort-AV: E=Sophos;i="6.10,210,1719903600"; 
   d="scan'208";a="49872527"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
  by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 07 Sep 2024 05:05:40 -0700
X-CSE-ConnectionGUID: qTGdgX/USkqhGra9JyUMFQ==
X-CSE-MsgGUID: zMDTSoB0Tr6gGm+EcdIcvA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,210,1719903600"; 
   d="scan'208";a="70322273"
Received: from lkp-server01.sh.intel.com (HELO 9c6b1c7d3b50) ([10.239.97.150])
  by fmviesa003.fm.intel.com with ESMTP; 07 Sep 2024 05:05:37 -0700
Received: from kbuild by 9c6b1c7d3b50 with local (Exim 4.96)
	(envelope-from <lkp@intel.com>)
	id 1smuC6-000CXD-1E;
	Sat, 07 Sep 2024 12:05:34 +0000
Date: Sat, 7 Sep 2024 20:04:56 +0800
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
Subject: Re: [PATCH v7 1/8] mfd: core: make platform_data pointer const in
 struct mfd_cell
Message-ID: <202409071933.IYm8oa1N-lkp@intel.com>
References: <20240905185232.2899464-2-heiko@sntech.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240905185232.2899464-2-heiko@sntech.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240907_050543_115565_646D95B8 
X-CRM114-Status: GOOD (  11.97  )
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

[auto build test WARNING on next-20240905]
[also build test WARNING on v6.11-rc6]
[cannot apply to lee-mfd/for-mfd-next groeck-staging/hwmon-next lee-leds/for-leds-next linus/master lee-mfd/for-mfd-fixes v6.11-rc6 v6.11-rc5 v6.11-rc4]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Heiko-Stuebner/mfd-core-make-platform_data-pointer-const-in-struct-mfd_cell/20240906-025553
base:   next-20240905
patch link:    https://lore.kernel.org/r/20240905185232.2899464-2-heiko%40sntech.de
patch subject: [PATCH v7 1/8] mfd: core: make platform_data pointer const in struct mfd_cell
config: arm-randconfig-001-20240907 (https://download.01.org/0day-ci/archive/20240907/202409071933.IYm8oa1N-lkp@intel.com/config)
compiler: arm-linux-gnueabi-gcc (GCC) 14.1.0
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20240907/202409071933.IYm8oa1N-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202409071933.IYm8oa1N-lkp@intel.com/

All warnings (new ones prefixed by >>):

   drivers/hid/hid-sensor-hub.c: In function 'sensor_hub_remove':
>> drivers/hid/hid-sensor-hub.c:745:25: warning: initialization discards 'const' qualifier from pointer target type [-Wdiscarded-qualifiers]
     745 |                         data->hid_sensor_hub_client_devs[i].platform_data;
         |                         ^~~~


vim +/const +745 drivers/hid/hid-sensor-hub.c

401ca24fb34aee srinivas pandruvada 2012-09-05  732  
401ca24fb34aee srinivas pandruvada 2012-09-05  733  static void sensor_hub_remove(struct hid_device *hdev)
401ca24fb34aee srinivas pandruvada 2012-09-05  734  {
401ca24fb34aee srinivas pandruvada 2012-09-05  735  	struct sensor_hub_data *data = hid_get_drvdata(hdev);
401ca24fb34aee srinivas pandruvada 2012-09-05  736  	unsigned long flags;
e651a1da442ae0 Srinivas Pandruvada 2015-02-19  737  	int i;
401ca24fb34aee srinivas pandruvada 2012-09-05  738  
401ca24fb34aee srinivas pandruvada 2012-09-05  739  	hid_dbg(hdev, " hardware removed\n");
401ca24fb34aee srinivas pandruvada 2012-09-05  740  	hid_hw_close(hdev);
f2f13a68c37c13 Axel Lin            2012-09-19  741  	hid_hw_stop(hdev);
401ca24fb34aee srinivas pandruvada 2012-09-05  742  	spin_lock_irqsave(&data->lock, flags);
e651a1da442ae0 Srinivas Pandruvada 2015-02-19  743  	for (i = 0; i < data->hid_sensor_client_cnt; ++i) {
e651a1da442ae0 Srinivas Pandruvada 2015-02-19  744  		struct hid_sensor_hub_device *hsdev =
e651a1da442ae0 Srinivas Pandruvada 2015-02-19 @745  			data->hid_sensor_hub_client_devs[i].platform_data;
e651a1da442ae0 Srinivas Pandruvada 2015-02-19  746  		if (hsdev->pending.status)
e651a1da442ae0 Srinivas Pandruvada 2015-02-19  747  			complete(&hsdev->pending.ready);
e651a1da442ae0 Srinivas Pandruvada 2015-02-19  748  	}
401ca24fb34aee srinivas pandruvada 2012-09-05  749  	spin_unlock_irqrestore(&data->lock, flags);
401ca24fb34aee srinivas pandruvada 2012-09-05  750  	mfd_remove_devices(&hdev->dev);
401ca24fb34aee srinivas pandruvada 2012-09-05  751  	mutex_destroy(&data->mutex);
401ca24fb34aee srinivas pandruvada 2012-09-05  752  }
401ca24fb34aee srinivas pandruvada 2012-09-05  753  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
