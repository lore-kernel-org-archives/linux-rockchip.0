Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 34654ECAAD4
	for <linux-rockchip@archiver.kernel.org>; Tue, 30 Aug 2022 22:41:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xLgHppEIRNwBOxh0AiZfWv6W+GND+uIXiDBFx7bWlkA=; b=Avtc7mGfPc4p7p
	nxfTimi64O+CPwBJO1gor3+S74tD/nAhLAuKsDCQ9fTpvk1vw7bSl5zMPcm4+nxJdfFZ0guEKGCrk
	2Ah0l2ZqflcZSpdGtTmZS4PdePeBldCdSDcWNxUPHih2ahVsQG6Ql2AES2Prgh91xpEHPTY9SiENH
	dCqAsA1f6Af0dORLo1/UIf26MyawTReLl2jwrg8HZHjcyjuoAYk7M1o0oUjw0tdWp8CNFz0Qs7kcT
	XjePbmHoQKP4vrfHdvJYwVyEQMHj24/1bqehn7JdLvLiPAxclcx7df7LUfja0cJ1ueiBhhWnAQvE1
	dbuRKcX9ygO92Bo77QAg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oT9uf-002IbC-MY; Tue, 30 Aug 2022 22:40:53 +0000
Received: from mga17.intel.com ([192.55.52.151])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oT9uU-002IYh-CJ; Tue, 30 Aug 2022 22:40:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1661899242; x=1693435242;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=iai1vlWEA2pg8dROxxT4i9EYM8sBonRxpETPgAiBtNQ=;
  b=gDgVXyQ7FiXFyz+odh0wJkeQmZAZ+eZEgTLtkpFmbTd5EoFV/KXykwBD
   IePSks6aI7ZqR0eK3japluDoev9kTLEAOoyR5T93CJy2uNQQlYH8c7ati
   9/RFezbZfn4QZoDNoePO2HY1J9/sIFbIen7RWIjTIr8hVodY9o+/sSuZR
   ax8HR6FWw/LC4jxBrdtq5+Anuznp+/Z7x5mIdZ+s1gApeZNuGD9iQwgkk
   HJZWZTBtXEivrfBrssEmlG+HYKuKArYlmk5MYlsfLXXy8eJ5zWOMKQC5w
   t3VrYwjYSyqWoiFutqUDl5osiZL9wz0q5C5hxioT7aH1qj14Ttq/v5p7P
   w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10455"; a="275723919"
X-IronPort-AV: E=Sophos;i="5.93,276,1654585200"; 
   d="scan'208";a="275723919"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
  by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 30 Aug 2022 15:40:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,276,1654585200"; 
   d="scan'208";a="701170544"
Received: from lkp-server02.sh.intel.com (HELO 77b6d4e16fc5) ([10.239.97.151])
  by FMSMGA003.fm.intel.com with ESMTP; 30 Aug 2022 15:40:35 -0700
Received: from kbuild by 77b6d4e16fc5 with local (Exim 4.96)
	(envelope-from <lkp@intel.com>)
	id 1oT9uM-0000hO-2a;
	Tue, 30 Aug 2022 22:40:34 +0000
Date: Wed, 31 Aug 2022 06:39:37 +0800
From: kernel test robot <lkp@intel.com>
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
	Linus Walleij <linus.walleij@linaro.org>,
	Jianqun Xu <jay.xu@rock-chips.com>, linux-gpio@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Cc: kbuild-all@lists.01.org, Bartosz Golaszewski <brgl@bgdev.pl>,
	Heiko Stuebner <heiko@sntech.de>,
	Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Subject: Re: [PATCH v1 1/1] gpio: rockchip: Switch to use fwnode instead of
 of_node
Message-ID: <202208310652.Xhve2TGB-lkp@intel.com>
References: <20220830191939.56436-1-andriy.shevchenko@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220830191939.56436-1-andriy.shevchenko@linux.intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220830_154042_458990_43071451 
X-CRM114-Status: GOOD (  19.54  )
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

I love your patch! Yet something to improve:

[auto build test ERROR on rockchip/for-next]
[also build test ERROR on linus/master v6.0-rc3 next-20220830]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Andy-Shevchenko/gpio-rockchip-Switch-to-use-fwnode-instead-of-of_node/20220831-032131
base:   https://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git for-next
config: arc-randconfig-r043-20220830 (https://download.01.org/0day-ci/archive/20220831/202208310652.Xhve2TGB-lkp@intel.com/config)
compiler: arceb-elf-gcc (GCC) 12.1.0
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # https://github.com/intel-lab-lkp/linux/commit/678cf6450de6a016c041c3cd2ce58d1383d070e6
        git remote add linux-review https://github.com/intel-lab-lkp/linux
        git fetch --no-tags linux-review Andy-Shevchenko/gpio-rockchip-Switch-to-use-fwnode-instead-of-of_node/20220831-032131
        git checkout 678cf6450de6a016c041c3cd2ce58d1383d070e6
        # save the config file
        mkdir build_dir && cp config build_dir/.config
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=gcc-12.1.0 make.cross W=1 O=build_dir ARCH=arc SHELL=/bin/bash drivers/gpio/

If you fix the issue, kindly add following tag where applicable
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

   drivers/gpio/gpio-rockchip.c: In function 'rockchip_gpiolib_register':
>> drivers/gpio/gpio-rockchip.c:614:22: error: 'pctlnp' undeclared (first use in this function)
     614 |                 if (!pctlnp)
         |                      ^~~~~~
   drivers/gpio/gpio-rockchip.c:614:22: note: each undeclared identifier is reported only once for each function it appears in


vim +/pctlnp +614 drivers/gpio/gpio-rockchip.c

936ee2675eee1f Jianqun Xu      2021-08-16  579  
936ee2675eee1f Jianqun Xu      2021-08-16  580  static int rockchip_gpiolib_register(struct rockchip_pin_bank *bank)
936ee2675eee1f Jianqun Xu      2021-08-16  581  {
936ee2675eee1f Jianqun Xu      2021-08-16  582  	struct gpio_chip *gc;
936ee2675eee1f Jianqun Xu      2021-08-16  583  	int ret;
936ee2675eee1f Jianqun Xu      2021-08-16  584  
936ee2675eee1f Jianqun Xu      2021-08-16  585  	bank->gpio_chip = rockchip_gpiolib_chip;
936ee2675eee1f Jianqun Xu      2021-08-16  586  
936ee2675eee1f Jianqun Xu      2021-08-16  587  	gc = &bank->gpio_chip;
936ee2675eee1f Jianqun Xu      2021-08-16  588  	gc->base = bank->pin_base;
936ee2675eee1f Jianqun Xu      2021-08-16  589  	gc->ngpio = bank->nr_pins;
936ee2675eee1f Jianqun Xu      2021-08-16  590  	gc->label = bank->name;
936ee2675eee1f Jianqun Xu      2021-08-16  591  	gc->parent = bank->dev;
936ee2675eee1f Jianqun Xu      2021-08-16  592  
936ee2675eee1f Jianqun Xu      2021-08-16  593  	ret = gpiochip_add_data(gc, bank);
936ee2675eee1f Jianqun Xu      2021-08-16  594  	if (ret) {
936ee2675eee1f Jianqun Xu      2021-08-16  595  		dev_err(bank->dev, "failed to add gpiochip %s, %d\n",
936ee2675eee1f Jianqun Xu      2021-08-16  596  			gc->label, ret);
936ee2675eee1f Jianqun Xu      2021-08-16  597  		return ret;
936ee2675eee1f Jianqun Xu      2021-08-16  598  	}
936ee2675eee1f Jianqun Xu      2021-08-16  599  
936ee2675eee1f Jianqun Xu      2021-08-16  600  	/*
936ee2675eee1f Jianqun Xu      2021-08-16  601  	 * For DeviceTree-supported systems, the gpio core checks the
936ee2675eee1f Jianqun Xu      2021-08-16  602  	 * pinctrl's device node for the "gpio-ranges" property.
936ee2675eee1f Jianqun Xu      2021-08-16  603  	 * If it is present, it takes care of adding the pin ranges
936ee2675eee1f Jianqun Xu      2021-08-16  604  	 * for the driver. In this case the driver can skip ahead.
936ee2675eee1f Jianqun Xu      2021-08-16  605  	 *
936ee2675eee1f Jianqun Xu      2021-08-16  606  	 * In order to remain compatible with older, existing DeviceTree
936ee2675eee1f Jianqun Xu      2021-08-16  607  	 * files which don't set the "gpio-ranges" property or systems that
936ee2675eee1f Jianqun Xu      2021-08-16  608  	 * utilize ACPI the driver has to call gpiochip_add_pin_range().
936ee2675eee1f Jianqun Xu      2021-08-16  609  	 */
678cf6450de6a0 Andy Shevchenko 2022-08-30  610  	if (!fwnode_property_read_bool(bank->fwnode, "gpio-ranges")) {
678cf6450de6a0 Andy Shevchenko 2022-08-30  611  		struct fwnode_handle *parent = fwnode_get_parent(bank->fwnode);
936ee2675eee1f Jianqun Xu      2021-08-16  612  		struct pinctrl_dev *pctldev = NULL;
936ee2675eee1f Jianqun Xu      2021-08-16  613  
936ee2675eee1f Jianqun Xu      2021-08-16 @614  		if (!pctlnp)
936ee2675eee1f Jianqun Xu      2021-08-16  615  			return -ENODATA;
936ee2675eee1f Jianqun Xu      2021-08-16  616  
678cf6450de6a0 Andy Shevchenko 2022-08-30  617  		pctldev = of_pinctrl_get(to_of_node(parent));
936ee2675eee1f Jianqun Xu      2021-08-16  618  		if (!pctldev)
936ee2675eee1f Jianqun Xu      2021-08-16  619  			return -ENODEV;
936ee2675eee1f Jianqun Xu      2021-08-16  620  
936ee2675eee1f Jianqun Xu      2021-08-16  621  		ret = gpiochip_add_pin_range(gc, dev_name(pctldev->dev), 0,
936ee2675eee1f Jianqun Xu      2021-08-16  622  					     gc->base, gc->ngpio);
936ee2675eee1f Jianqun Xu      2021-08-16  623  		if (ret) {
936ee2675eee1f Jianqun Xu      2021-08-16  624  			dev_err(bank->dev, "Failed to add pin range\n");
936ee2675eee1f Jianqun Xu      2021-08-16  625  			goto fail;
936ee2675eee1f Jianqun Xu      2021-08-16  626  		}
936ee2675eee1f Jianqun Xu      2021-08-16  627  	}
936ee2675eee1f Jianqun Xu      2021-08-16  628  
936ee2675eee1f Jianqun Xu      2021-08-16  629  	ret = rockchip_interrupts_register(bank);
936ee2675eee1f Jianqun Xu      2021-08-16  630  	if (ret) {
936ee2675eee1f Jianqun Xu      2021-08-16  631  		dev_err(bank->dev, "failed to register interrupt, %d\n", ret);
936ee2675eee1f Jianqun Xu      2021-08-16  632  		goto fail;
936ee2675eee1f Jianqun Xu      2021-08-16  633  	}
936ee2675eee1f Jianqun Xu      2021-08-16  634  
936ee2675eee1f Jianqun Xu      2021-08-16  635  	return 0;
936ee2675eee1f Jianqun Xu      2021-08-16  636  
936ee2675eee1f Jianqun Xu      2021-08-16  637  fail:
936ee2675eee1f Jianqun Xu      2021-08-16  638  	gpiochip_remove(&bank->gpio_chip);
936ee2675eee1f Jianqun Xu      2021-08-16  639  
936ee2675eee1f Jianqun Xu      2021-08-16  640  	return ret;
936ee2675eee1f Jianqun Xu      2021-08-16  641  }
936ee2675eee1f Jianqun Xu      2021-08-16  642  

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
