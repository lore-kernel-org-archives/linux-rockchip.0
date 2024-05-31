Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EDAECC27C44
	for <linux-rockchip@archiver.kernel.org>; Fri, 31 May 2024 06:44:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6UwEZUiWxvOMEgj9pOxtFwIbPTiSJGrIHyT1btkJ5qo=; b=Wel+DBgeRtR/6X
	BbpygKXPrzytdFMasOsrhM6ih4azFLIY0T6N9Bu3atBvzKCgEBL36Z3XlY44+ree745oRX3kuwyuH
	QYbYGY+HGoTTFqIT0+Og9yiROAgE0MWeCmzlDZZHjoKERGrM/XK2AyKOyjwOt3UW1ZjpItY9g4LKU
	8Yk6BoWVD+K6fMP2RnmZhUyYiWrjtjvVdsWNAL8nhUz1lcu9BXO2uyLRQSxlwlVtWlz5GdElKJdSo
	Jjkiy2KxQQQjlqJupoEWg4OgCgxYVoiDPd27/aXBg7bjKFNWtkadPTsJhorSmsHVMgGWYtxAcP/tD
	MqHnE1V60MqRykjELP1A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sCvzo-00000009PzZ-0a1k;
	Fri, 31 May 2024 06:44:12 +0000
Received: from mgamail.intel.com ([198.175.65.14])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sCvzj-00000009PwZ-3sR1;
	Fri, 31 May 2024 06:44:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1717137848; x=1748673848;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=UG2VPXJmnotgQCGbUJuzOG/RmR6KlipUd0UjDzTFmOc=;
  b=PV1t1ekG5KfB3eg9htATM0N/WNKSgYsLY7Hy9AMWs1Am+WxM/sbVrYMf
   TM/8q/CCPUdtP+K3DUU720mN970DZDytMmHWInrgQqcCiYATgPVKNw6Rk
   /aUNfXkpV+tQH4DDGnK0hoBbFqDRmHaQC57OsjWlSbfyka+/X6UvL6nw8
   s4Ppy0ijOjdeoa9kgwxZ9N1ZcVcqxKIu6hXzf5krdOPStjNVp9Ku6XGa9
   J4fxqNkEg1lILjntryPpQPcNogev35v73nlXuPf3dv3dMEdDc37tE1F/K
   /XIuvJtssyRZDLsogemz2ydGXipGAD5+9DQ+r/A3D87wcPyP9cpJRGJ4h
   w==;
X-CSE-ConnectionGUID: PUffV8mpQUm/bvkSPj9TLg==
X-CSE-MsgGUID: OKLTNZZ5TF+ARdkRe8II8w==
X-IronPort-AV: E=McAfee;i="6600,9927,11088"; a="17497239"
X-IronPort-AV: E=Sophos;i="6.08,203,1712646000"; 
   d="scan'208";a="17497239"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
  by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 30 May 2024 23:44:06 -0700
X-CSE-ConnectionGUID: 3FNSixCJRzeU6SpSydb64Q==
X-CSE-MsgGUID: MIPAgyHVT2ebsdue2tL+gg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,203,1712646000"; 
   d="scan'208";a="36689755"
Received: from unknown (HELO 0610945e7d16) ([10.239.97.151])
  by orviesa007.jf.intel.com with ESMTP; 30 May 2024 23:43:58 -0700
Received: from kbuild by 0610945e7d16 with local (Exim 4.96)
	(envelope-from <lkp@intel.com>)
	id 1sCvzO-000Gd3-2Y;
	Fri, 31 May 2024 06:43:49 +0000
Date: Fri, 31 May 2024 14:42:33 +0800
From: kernel test robot <lkp@intel.com>
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
	Rob Herring <robh@kernel.org>,
	Weidong Wang <wangweidong.a@awinic.com>,
	Mark Brown <broonie@kernel.org>,
	Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>,
	Shenghao Ding <shenghao-ding@ti.com>,
	Marco Felsch <m.felsch@pengutronix.de>,
	Alper Nebi Yasak <alpernebiyasak@gmail.com>,
	Chancel Liu <chancel.liu@nxp.com>,
	Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>,
	linux-sound@vger.kernel.org, linux-kernel@vger.kernel.org,
	alsa-devel@alsa-project.org, patches@opensource.cirrus.com,
	linuxppc-dev@lists.ozlabs.org, imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Cc: llvm@lists.linux.dev, oe-kbuild-all@lists.linux.dev,
	Liam Girdwood <lgirdwood@gmail.com>,
	Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>,
	James Schulman <james.schulman@cirrus.com>,
	David Rhodes <david.rhodes@cirrus.com>,
	Richard Fitzgerald <rf@opensource.cirrus.com>,
	Kevin Lu <kevin-lu@ti.com>, Baojun Xu <baojun.xu@ti.com>,
	Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
	Banajit Goswami <bgoswami@quicinc.com>,
	Shengjiu Wang <shengjiu.wang@gmail.com>,
	Xiubo Li <Xiubo.Lee@gmail.com>
Subject: Re: [PATCH v1 1/6] ASoC: codecs: Remove unused of_gpio.h
Message-ID: <202405311428.tzsBMIPs-lkp@intel.com>
References: <20240530230037.1156253-2-andriy.shevchenko@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240530230037.1156253-2-andriy.shevchenko@linux.intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240530_234408_162860_CF1729C1 
X-CRM114-Status: GOOD (  12.43  )
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

Hi Andy,

kernel test robot noticed the following build errors:

[auto build test ERROR on broonie-sound/for-next]
[also build test ERROR on shawnguo/for-next rockchip/for-next linus/master v6.10-rc1 next-20240529]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Andy-Shevchenko/ASoC-codecs-Remove-unused-of_gpio-h/20240531-070350
base:   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/sound.git for-next
patch link:    https://lore.kernel.org/r/20240530230037.1156253-2-andriy.shevchenko%40linux.intel.com
patch subject: [PATCH v1 1/6] ASoC: codecs: Remove unused of_gpio.h
config: i386-buildonly-randconfig-006-20240531 (https://download.01.org/0day-ci/archive/20240531/202405311428.tzsBMIPs-lkp@intel.com/config)
compiler: clang version 18.1.5 (https://github.com/llvm/llvm-project 617a15a9eac96088ae5e9134248d8236e34b91b1)
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20240531/202405311428.tzsBMIPs-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202405311428.tzsBMIPs-lkp@intel.com/

All errors (new ones prefixed by >>):

>> sound/soc/codecs/tas2781-comlib.c:408:6: error: call to undeclared function 'gpio_is_valid'; ISO C99 and later do not support implicit function declarations [-Wimplicit-function-declaration]
     408 |         if (gpio_is_valid(tas_priv->irq_info.irq_gpio))
         |             ^
   sound/soc/codecs/tas2781-comlib.c:408:6: note: did you mean 'uuid_is_valid'?
   include/linux/uuid.h:102:19: note: 'uuid_is_valid' declared here
     102 | bool __must_check uuid_is_valid(const char *uuid);
         |                   ^
>> sound/soc/codecs/tas2781-comlib.c:409:3: error: call to undeclared function 'gpio_free'; ISO C99 and later do not support implicit function declarations [-Wimplicit-function-declaration]
     409 |                 gpio_free(tas_priv->irq_info.irq_gpio);
         |                 ^
   sound/soc/codecs/tas2781-comlib.c:409:3: note: did you mean 'pmd_free'?
   include/asm-generic/pgtable-nopmd.h:63:20: note: 'pmd_free' declared here
      63 | static inline void pmd_free(struct mm_struct *mm, pmd_t *pmd)
         |                    ^
   2 errors generated.
--
>> sound/soc/codecs/tas2781-i2c.c:664:6: error: call to undeclared function 'gpio_is_valid'; ISO C99 and later do not support implicit function declarations [-Wimplicit-function-declaration]
     664 |         if (gpio_is_valid(tas_priv->irq_info.irq_gpio)) {
         |             ^
   sound/soc/codecs/tas2781-i2c.c:664:6: note: did you mean 'uuid_is_valid'?
   include/linux/uuid.h:102:19: note: 'uuid_is_valid' declared here
     102 | bool __must_check uuid_is_valid(const char *uuid);
         |                   ^
>> sound/soc/codecs/tas2781-i2c.c:665:8: error: call to undeclared function 'gpio_request'; ISO C99 and later do not support implicit function declarations [-Wimplicit-function-declaration]
     665 |                 rc = gpio_request(tas_priv->irq_info.irq_gpio,
         |                      ^
>> sound/soc/codecs/tas2781-i2c.c:668:4: error: call to undeclared function 'gpio_direction_input'; ISO C99 and later do not support implicit function declarations [-Wimplicit-function-declaration]
     668 |                         gpio_direction_input(
         |                         ^
   sound/soc/codecs/tas2781-i2c.c:668:4: note: did you mean 'gpiod_direction_input'?
   include/linux/gpio/consumer.h:110:5: note: 'gpiod_direction_input' declared here
     110 | int gpiod_direction_input(struct gpio_desc *desc);
         |     ^
>> sound/soc/codecs/tas2781-i2c.c:672:5: error: call to undeclared function 'gpio_to_irq'; ISO C99 and later do not support implicit function declarations [-Wimplicit-function-declaration]
     672 |                                 gpio_to_irq(tas_priv->irq_info.irq_gpio);
         |                                 ^
   sound/soc/codecs/tas2781-i2c.c:672:5: note: did you mean 'gpiod_to_irq'?
   include/linux/gpio/consumer.h:167:5: note: 'gpiod_to_irq' declared here
     167 | int gpiod_to_irq(const struct gpio_desc *desc);
         |     ^
   4 errors generated.


vim +/gpio_is_valid +408 sound/soc/codecs/tas2781-comlib.c

ef3bcde75d06d6 Shenghao Ding 2023-06-18  405  
ef3bcde75d06d6 Shenghao Ding 2023-06-18  406  void tasdevice_remove(struct tasdevice_priv *tas_priv)
ef3bcde75d06d6 Shenghao Ding 2023-06-18  407  {
ef3bcde75d06d6 Shenghao Ding 2023-06-18 @408  	if (gpio_is_valid(tas_priv->irq_info.irq_gpio))
ef3bcde75d06d6 Shenghao Ding 2023-06-18 @409  		gpio_free(tas_priv->irq_info.irq_gpio);
ef3bcde75d06d6 Shenghao Ding 2023-06-18  410  	mutex_destroy(&tas_priv->codec_lock);
ef3bcde75d06d6 Shenghao Ding 2023-06-18  411  }
ef3bcde75d06d6 Shenghao Ding 2023-06-18  412  EXPORT_SYMBOL_GPL(tasdevice_remove);
ef3bcde75d06d6 Shenghao Ding 2023-06-18  413  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
