Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DB028C38145
	for <linux-rockchip@archiver.kernel.org>; Wed,  7 Sep 2022 23:53:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Mx0tLRPE0eU450iCSkyBLFNFPiJv3aqQs2q/AYah/V4=; b=PqXTKhB+EWus6d
	/uVJatxZc6iNFNBy+o5Hv1Q+qrxcX7g5e2YhTvyhwuRWGIHmujkeRtd1vA83aoz5TQ1RlAvh1T7rH
	o2o/1Rpnn+2PXJUNS5m7iWBKi3FWy1tAtm/bPjqONr+WJUI700azRM4VO5Yw15u4SSuRVb+bsueFN
	/q49AmK7qarjseD947WIrMEYiDkJ/k17YFPuxLsaOawlz+X1Nfo65aT1dlOjWHbqAxuPhK3Ntev0q
	/DrJTWVMZrPSY8dALBoGmAXrF5/sGYQ3BpxrSzfvqVnv4AMohwOMZlAIZ3cpuaXhYYaB3+/yv0H1I
	99zjnqrPc1iCIicl7utg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oW4ra-00CJCD-LU; Wed, 07 Sep 2022 23:53:46 +0000
Received: from mga12.intel.com ([192.55.52.136])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oW4rX-00CJ8U-Gw
	for linux-rockchip@lists.infradead.org; Wed, 07 Sep 2022 23:53:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1662594823; x=1694130823;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=afq7WfcNMyREFRVD0+o2whWINHeS3DxNx3J5qZCgnl8=;
  b=FylZrIfGVVaapOi1cJozB+fNOb7CrEc5lykSSDfbH9dIC+z1E9T5cL6h
   YvlNiuQouRT4ExyQsA+CqY2HhEG/owvJMlvqGIY/cp2z0ndC3P8BAgSB4
   +ZkwLzF1i79XiRYKQs+KBADAzx8PRzk9TZdsqoAv88ohFBRXLw2XgFSyw
   zOqe13g5j4XoeX9+b+6jOA4/+OpEaGuU0pEUOVQ7uYP6VPnTqsaTiteUp
   tbeWZ5Mg9tIDuNR/5aiJBh8xMcr43zr5AmiI9h8Aq7r9i4i8HPp6chpzD
   Ii+xw9x+uUGoK5ndkYoE8sSZtFkygYJ5WQO/vHkoIvbfaUapUbYEM+NFN
   A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10463"; a="276761371"
X-IronPort-AV: E=Sophos;i="5.93,298,1654585200"; 
   d="scan'208";a="276761371"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
  by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 07 Sep 2022 16:53:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,298,1654585200"; 
   d="scan'208";a="740475974"
Received: from lkp-server02.sh.intel.com (HELO 95dfd251caa2) ([10.239.97.151])
  by orsmga004.jf.intel.com with ESMTP; 07 Sep 2022 16:53:37 -0700
Received: from kbuild by 95dfd251caa2 with local (Exim 4.96)
	(envelope-from <lkp@intel.com>)
	id 1oW4rQ-00076P-1Y;
	Wed, 07 Sep 2022 23:53:36 +0000
Date: Thu, 8 Sep 2022 07:52:52 +0800
From: kernel test robot <lkp@intel.com>
To: Jianqun Xu <jay.xu@rock-chips.com>, heiko@sntech.de,
	linus.walleij@linaro.org, brgl@bgdev.pl
Cc: kbuild-all@lists.01.org, andriy.shevchenko@linux.intel.com,
	linux-gpio@vger.kernel.org, linux-rockchip@lists.infradead.org,
	Jianqun Xu <jay.xu@rock-chips.com>
Subject: Re: [PATCH v3 RESEND] gpio: rockchip: support acpi
Message-ID: <202209080711.fRu3ImWL-lkp@intel.com>
References: <20220907092722.3333752-1-jay.xu@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220907092722.3333752-1-jay.xu@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220907_165343_676603_775CDBA8 
X-CRM114-Status: GOOD (  16.11  )
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
[also build test ERROR on linus/master v6.0-rc4 next-20220907]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Jianqun-Xu/gpio-rockchip-support-acpi/20220907-172920
base:   https://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git for-next
config: loongarch-buildonly-randconfig-r002-20220907 (https://download.01.org/0day-ci/archive/20220908/202209080711.fRu3ImWL-lkp@intel.com/config)
compiler: loongarch64-linux-gcc (GCC) 12.1.0
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # https://github.com/intel-lab-lkp/linux/commit/6b62c564dce1d94e9256d98661e5a7ae396627fb
        git remote add linux-review https://github.com/intel-lab-lkp/linux
        git fetch --no-tags linux-review Jianqun-Xu/gpio-rockchip-support-acpi/20220907-172920
        git checkout 6b62c564dce1d94e9256d98661e5a7ae396627fb
        # save the config file
        mkdir build_dir && cp config build_dir/.config
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=gcc-12.1.0 make.cross W=1 O=build_dir ARCH=loongarch SHELL=/bin/bash drivers/gpio/

If you fix the issue, kindly add following tag where applicable
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

   In file included from include/linux/build_bug.h:5,
                    from include/linux/bits.h:22,
                    from include/linux/ioport.h:13,
                    from include/linux/acpi.h:12,
                    from drivers/gpio/gpio-rockchip.c:9:
   drivers/gpio/gpio-rockchip.c: In function 'rockchip_gpio_of_get_bank_id':
   drivers/gpio/gpio-rockchip.c:666:27: error: passing argument 1 of 'is_of_node' from incompatible pointer type [-Werror=incompatible-pointer-types]
     666 |         if (is_of_node(dev->of_node)) {
         |                        ~~~^~~~~~~~~
         |                           |
         |                           struct device_node *
   include/linux/compiler.h:58:52: note: in definition of macro '__trace_if_var'
      58 | #define __trace_if_var(cond) (__builtin_constant_p(cond) ? (cond) : __trace_if_value(cond))
         |                                                    ^~~~
   drivers/gpio/gpio-rockchip.c:666:9: note: in expansion of macro 'if'
     666 |         if (is_of_node(dev->of_node)) {
         |         ^~
   In file included from include/linux/irqdomain.h:35,
                    from include/linux/acpi.h:13:
   include/linux/of.h:155:59: note: expected 'const struct fwnode_handle *' but argument is of type 'struct device_node *'
     155 | static inline bool is_of_node(const struct fwnode_handle *fwnode)
         |                               ~~~~~~~~~~~~~~~~~~~~~~~~~~~~^~~~~~
   drivers/gpio/gpio-rockchip.c:666:27: error: passing argument 1 of 'is_of_node' from incompatible pointer type [-Werror=incompatible-pointer-types]
     666 |         if (is_of_node(dev->of_node)) {
         |                        ~~~^~~~~~~~~
         |                           |
         |                           struct device_node *
   include/linux/compiler.h:58:61: note: in definition of macro '__trace_if_var'
      58 | #define __trace_if_var(cond) (__builtin_constant_p(cond) ? (cond) : __trace_if_value(cond))
         |                                                             ^~~~
   drivers/gpio/gpio-rockchip.c:666:9: note: in expansion of macro 'if'
     666 |         if (is_of_node(dev->of_node)) {
         |         ^~
   include/linux/of.h:155:59: note: expected 'const struct fwnode_handle *' but argument is of type 'struct device_node *'
     155 | static inline bool is_of_node(const struct fwnode_handle *fwnode)
         |                               ~~~~~~~~~~~~~~~~~~~~~~~~~~~~^~~~~~
   drivers/gpio/gpio-rockchip.c:666:27: error: passing argument 1 of 'is_of_node' from incompatible pointer type [-Werror=incompatible-pointer-types]
     666 |         if (is_of_node(dev->of_node)) {
         |                        ~~~^~~~~~~~~
         |                           |
         |                           struct device_node *
   include/linux/compiler.h:69:10: note: in definition of macro '__trace_if_value'
      69 |         (cond) ?                                        \
         |          ^~~~
   include/linux/compiler.h:56:28: note: in expansion of macro '__trace_if_var'
      56 | #define if(cond, ...) if ( __trace_if_var( !!(cond , ## __VA_ARGS__) ) )
         |                            ^~~~~~~~~~~~~~
   drivers/gpio/gpio-rockchip.c:666:9: note: in expansion of macro 'if'
     666 |         if (is_of_node(dev->of_node)) {
         |         ^~
   include/linux/of.h:155:59: note: expected 'const struct fwnode_handle *' but argument is of type 'struct device_node *'
     155 | static inline bool is_of_node(const struct fwnode_handle *fwnode)
         |                               ~~~~~~~~~~~~~~~~~~~~~~~~~~~~^~~~~~
   drivers/gpio/gpio-rockchip.c: In function 'rockchip_gpio_probe':
>> drivers/gpio/gpio-rockchip.c:882:46: error: unterminated argument list invoking macro "if"
     882 | MODULE_DEVICE_TABLE(of, rockchip_gpio_match);
         |                                              ^
>> drivers/gpio/gpio-rockchip.c:883: error: expected '(' at end of input
   drivers/gpio/gpio-rockchip.c:721:9: note: '-Wmisleading-indentation' is disabled from this point onwards, since column-tracking was disabled due to the size of the code/headers
     721 |         if (!is_acpi_node(dev_fwnode(dev)) {
         |         ^~
   drivers/gpio/gpio-rockchip.c:721:9: note: adding '-flarge-source-files' will allow for more column-tracking support, at the expense of compilation time and memory
   drivers/gpio/gpio-rockchip.c:721:9: error: expected declaration or statement at end of input
   drivers/gpio/gpio-rockchip.c:712:13: warning: unused variable 'ret' [-Wunused-variable]
     712 |         int ret;
         |             ^~~
   drivers/gpio/gpio-rockchip.c:710:35: warning: unused variable 'bank' [-Wunused-variable]
     710 |         struct rockchip_pin_bank *bank = NULL;
         |                                   ^~~~
   drivers/gpio/gpio-rockchip.c:709:29: warning: unused variable 'pctldev' [-Wunused-variable]
     709 |         struct pinctrl_dev *pctldev = NULL;
         |                             ^~~~~~~
   drivers/gpio/gpio-rockchip.c: At top level:
   drivers/gpio/gpio-rockchip.c:706:12: warning: 'rockchip_gpio_probe' defined but not used [-Wunused-function]
     706 | static int rockchip_gpio_probe(struct platform_device *pdev)
         |            ^~~~~~~~~~~~~~~~~~~
   drivers/gpio/gpio-rockchip.c:643:1: warning: 'rockchip_gpio_find_bank' defined but not used [-Wunused-function]
     643 | rockchip_gpio_find_bank(struct pinctrl_dev *pctldev, int id)
         | ^~~~~~~~~~~~~~~~~~~~~~~
   drivers/gpio/gpio-rockchip.c:628:13: warning: 'rockchip_gpio_get_ver' defined but not used [-Wunused-function]
     628 | static void rockchip_gpio_get_ver(struct rockchip_pin_bank *bank)
         |             ^~~~~~~~~~~~~~~~~~~~~
   drivers/gpio/gpio-rockchip.c:584:12: warning: 'rockchip_gpiolib_register' defined but not used [-Wunused-function]
     584 | static int rockchip_gpiolib_register(struct rockchip_pin_bank *bank)
         |            ^~~~~~~~~~~~~~~~~~~~~~~~~
   cc1: some warnings being treated as errors


vim +/if +882 drivers/gpio/gpio-rockchip.c

936ee2675eee1f Jianqun Xu 2021-08-16  878  
936ee2675eee1f Jianqun Xu 2021-08-16  879  MODULE_DESCRIPTION("Rockchip gpio driver");
936ee2675eee1f Jianqun Xu 2021-08-16  880  MODULE_ALIAS("platform:rockchip-gpio");
936ee2675eee1f Jianqun Xu 2021-08-16  881  MODULE_LICENSE("GPL v2");
936ee2675eee1f Jianqun Xu 2021-08-16 @882  MODULE_DEVICE_TABLE(of, rockchip_gpio_match);

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
