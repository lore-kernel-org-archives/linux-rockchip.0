Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2A139ECAAD8
	for <linux-rockchip@archiver.kernel.org>; Wed, 21 Sep 2022 18:01:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KGIr2/owJKKxilFS/Q2YPr3ruSFX+ZYJY2wG5narJiY=; b=H/RzMROpRwDl9C
	Zu+xAzjLq/YDzegXKfigwqIUlpUM9npAGuPlpG0wRiMUVSRhZfg+R0WO3kn5fRCMp9Fhi8uB9LFqs
	HKGRnI87k9iSjObN6CapLwc8ZhUvsaW1bNIs/grVzprkHk/bR8Q/by9TxWv/9AmbtzLIjxJfALsBM
	yhUoMWIvB4aLvHyPMitvHl6Sl+jMsOgHf33J7OswI8CvP6g2xU0uE2wEX7hkAyJTBHYpS5b8JHI3S
	Q8t6tYSSY8bUlqD2pX0Xgnf1EDS9imwTSfiy+AN3C72/GrTlC+3RO1L6NK82pJhkBf7rgXlwCwfAB
	/QOW0j0QTucB8l3oSJ7A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ob41Z-00CG7n-D1; Wed, 21 Sep 2022 18:00:41 +0000
Received: from mga02.intel.com ([134.134.136.20])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ob41V-00CG7E-Bg
	for linux-rockchip@lists.infradead.org; Wed, 21 Sep 2022 18:00:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1663783237; x=1695319237;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=yRaNPSAwxXaizcKOMDlb/9gVSVlSgq/dgeL+d1kFBNM=;
  b=jxDe8kNQME7se8WwYOYA/KiHiAN2Xc4MUWcQRCwM1LolOqdj0wA4O21J
   yhvcs80P16c84RHLGaDeDbdcJWjcBhWg8QGiPqK/7l+ilMsmAvdY4wsM8
   s83y0YZWKq9dowPF5NLbDtO2tISGBzuVViplVZxGLZdN8SVEJtBMNwBu2
   xkBpSs0244QGp1iMpfxfAPsOEla4pQ46Sd40w+KTTsAUAZlVHj/bD5r/k
   MR7QRALvEi9taE/jXrdDpuqScUDhLiyvSIpfokDsSoA8m8l5S6THkyHEH
   nNlTv99cfDOEQkQfLpvtP6xp2jKuasNLH5MWqCPTjxp7qxWDWiL0XfDV9
   g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10477"; a="287155526"
X-IronPort-AV: E=Sophos;i="5.93,333,1654585200"; 
   d="scan'208";a="287155526"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
  by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 21 Sep 2022 11:00:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,333,1654585200"; 
   d="scan'208";a="570646482"
Received: from lkp-server01.sh.intel.com (HELO c0a60f19fe7e) ([10.239.97.150])
  by orsmga003.jf.intel.com with ESMTP; 21 Sep 2022 11:00:32 -0700
Received: from kbuild by c0a60f19fe7e with local (Exim 4.96)
	(envelope-from <lkp@intel.com>)
	id 1ob41P-0003pc-13;
	Wed, 21 Sep 2022 18:00:31 +0000
Date: Thu, 22 Sep 2022 02:00:02 +0800
From: kernel test robot <lkp@intel.com>
To: Jianqun Xu <jay.xu@rock-chips.com>, jbx6244@gmail.com, heiko@sntech.de,
	linus.walleij@linaro.org, andriy.shevchenko@linux.intel.com
Cc: llvm@lists.linux.dev, kbuild-all@lists.01.org, brgl@bgdev.pl,
	linux-gpio@vger.kernel.org, linux-rockchip@lists.infradead.org,
	Jianqun Xu <jay.xu@rock-chips.com>
Subject: Re: [PATCH v3 1/2] pinctrl: rockchip: find gpiochip by gpio label
Message-ID: <202209220126.z3IFhBHk-lkp@intel.com>
References: <20220920033404.885527-2-jay.xu@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220920033404.885527-2-jay.xu@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220921_110037_652944_9FB6A761 
X-CRM114-Status: GOOD (  18.54  )
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

Hi Jianqun,

Thank you for the patch! Yet something to improve:

[auto build test ERROR on rockchip/for-next]
[also build test ERROR on linus/master v6.0-rc6 next-20220921]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Jianqun-Xu/rockchip-pinctrl-for-acpi/20220920-113519
base:   https://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git for-next
config: hexagon-randconfig-r031-20220920 (https://download.01.org/0day-ci/archive/20220922/202209220126.z3IFhBHk-lkp@intel.com/config)
compiler: clang version 16.0.0 (https://github.com/llvm/llvm-project 791a7ae1ba3efd6bca96338e10ffde557ba83920)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # https://github.com/intel-lab-lkp/linux/commit/576939e7212366aa2cc7f5bb44f4f70bad577b4d
        git remote add linux-review https://github.com/intel-lab-lkp/linux
        git fetch --no-tags linux-review Jianqun-Xu/rockchip-pinctrl-for-acpi/20220920-113519
        git checkout 576939e7212366aa2cc7f5bb44f4f70bad577b4d
        # save the config file
        mkdir build_dir && cp config build_dir/.config
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross W=1 O=build_dir ARCH=hexagon SHELL=/bin/bash drivers/pinctrl/

If you fix the issue, kindly add following tag where applicable
| Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

>> drivers/pinctrl/pinctrl-rockchip.c:3094:8: error: call to undeclared function 'gpiochip_find_by_name'; ISO C99 and later do not support implicit function declarations [-Wimplicit-function-declaration]
                   gc = gpiochip_find_by_name((void *)ctrl->pin_banks[i].name);
                        ^
>> drivers/pinctrl/pinctrl-rockchip.c:3094:6: error: incompatible integer to pointer conversion assigning to 'struct gpio_chip *' from 'int' [-Wint-conversion]
                   gc = gpiochip_find_by_name((void *)ctrl->pin_banks[i].name);
                      ^ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   2 errors generated.


vim +/gpiochip_find_by_name +3094 drivers/pinctrl/pinctrl-rockchip.c

  3013	
  3014	static SIMPLE_DEV_PM_OPS(rockchip_pinctrl_dev_pm_ops, rockchip_pinctrl_suspend,
  3015				 rockchip_pinctrl_resume);
  3016	
  3017	static int rockchip_pinctrl_probe(struct platform_device *pdev)
  3018	{
  3019		struct device *dev = &pdev->dev;
  3020		struct fwnode_handle *fwnode = dev_fwnode(dev);
  3021		struct rockchip_pinctrl *info;
  3022		struct rockchip_pin_ctrl *ctrl;
  3023		struct device_node *np, *node;
  3024		struct resource *res;
  3025		void __iomem *base;
  3026		int ret, i;
  3027	
  3028		if (is_of_node(fwnode)) {
  3029			ret = of_platform_populate(to_of_node(fwnode), NULL, NULL, NULL);
  3030			if (ret)
  3031				return dev_err_probe(dev, ret, "failed to register gpio device\n");
  3032		}
  3033	
  3034		info = devm_kzalloc(dev, sizeof(*info), GFP_KERNEL);
  3035		if (!info)
  3036			return -ENOMEM;
  3037	
  3038		info->dev = dev;
  3039	
  3040		ctrl = rockchip_pinctrl_get_soc_data(info, pdev);
  3041		if (!ctrl)
  3042			return dev_err_probe(dev, -EINVAL, "driver data not available\n");
  3043		info->ctrl = ctrl;
  3044	
  3045		node = of_parse_phandle(np, "rockchip,grf", 0);
  3046		if (node) {
  3047			info->regmap_base = syscon_node_to_regmap(node);
  3048			of_node_put(node);
  3049			if (IS_ERR(info->regmap_base))
  3050				return PTR_ERR(info->regmap_base);
  3051		} else {
  3052			base = devm_platform_get_and_ioremap_resource(pdev, 0, &res);
  3053			if (IS_ERR(base))
  3054				return PTR_ERR(base);
  3055	
  3056			rockchip_regmap_config.max_register = resource_size(res) - 4;
  3057			rockchip_regmap_config.name = "rockchip,pinctrl";
  3058			info->regmap_base =
  3059				devm_regmap_init_mmio(dev, base, &rockchip_regmap_config);
  3060	
  3061			/* to check for the old dt-bindings */
  3062			info->reg_size = resource_size(res);
  3063	
  3064			/* Honor the old binding, with pull registers as 2nd resource */
  3065			if (ctrl->type == RK3188 && info->reg_size < 0x200) {
  3066				base = devm_platform_get_and_ioremap_resource(pdev, 1, &res);
  3067				if (IS_ERR(base))
  3068					return PTR_ERR(base);
  3069	
  3070				rockchip_regmap_config.max_register = resource_size(res) - 4;
  3071				rockchip_regmap_config.name = "rockchip,pinctrl-pull";
  3072				info->regmap_pull =
  3073					devm_regmap_init_mmio(dev, base, &rockchip_regmap_config);
  3074			}
  3075		}
  3076	
  3077		/* try to find the optional reference to the pmu syscon */
  3078		node = of_parse_phandle(np, "rockchip,pmu", 0);
  3079		if (node) {
  3080			info->regmap_pmu = syscon_node_to_regmap(node);
  3081			of_node_put(node);
  3082			if (IS_ERR(info->regmap_pmu))
  3083				return PTR_ERR(info->regmap_pmu);
  3084		}
  3085	
  3086		ret = rockchip_pinctrl_register(pdev, info);
  3087		if (ret)
  3088			return ret;
  3089	
  3090		for (i = 0; i < ctrl->nr_banks; i++) {
  3091			struct gpio_chip *gc;
  3092			struct rockchip_pin_bank *bank = &ctrl->pin_banks[i];
  3093	
> 3094			gc = gpiochip_find_by_name((void *)ctrl->pin_banks[i].name);
  3095			if (!gc) {
  3096				dev_err(dev, "fail to find gpiochip\n");
  3097				return ret;
  3098			}
  3099	
  3100			ret = gpiochip_add_pin_range(gc, dev_name(dev), 0, gc->base, gc->ngpio);
  3101			if (ret) {
  3102				dev_err(dev, "fail to add pin range\n");
  3103				return ret;
  3104			}
  3105			bank->gpio_chip = gc;
  3106		}
  3107	
  3108		platform_set_drvdata(pdev, info);
  3109		dev_info(dev, "probed %pfw\n", fwnode);
  3110	
  3111		return 0;
  3112	}
  3113	

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
