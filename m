Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E4DCDC5320E
	for <linux-rockchip@archiver.kernel.org>; Tue, 27 Aug 2024 06:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+UQiSrBnJnwvyzurWinihrY/zRgQRPLgFXjKCRvfS78=; b=Qvc5Y8+3vuNinD
	r5S911C8hO0OIsh1uL11Crjq+PBqjxfMC1vq1wZ576gkS/UbbhlDeepFHSnM2M/g4X8JaR/BIRqxY
	3QiueZ2yAiHukmMBQSZ4ftQKtx8+gM+zERtK4DsC1LwAF7hDkSrs7wvhKAEV+NI355mnmqHKfnxFF
	RmPq0rZ/vXnei/+zCFT69C+eIwFu2IXNUVco5Ned2G3C0uK372C80fbs8RMzamK+VD+zDPLsRfONT
	WbKrnpfxV/+82zwx+XDMsWfBkcCanfnJ4b4ER2GG7fcNR9Uip1+qyU74/lfQ5NEnt18I0i2t9u7r2
	BgMkIn/lFjVvC3XhhEkg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sipcM-00000009zim-3oW1;
	Tue, 27 Aug 2024 06:23:50 +0000
Received: from mgamail.intel.com ([192.198.163.11])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sipbZ-00000009zZQ-0jZQ;
	Tue, 27 Aug 2024 06:23:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1724739781; x=1756275781;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=sjyWgZeGfHgwkuBWTUfyr58uBeXYxYz+Nt1GMaQKmV0=;
  b=CgRs9408iiGBeEoshx02sSRDabTOI9zTxpcgbTNkky/4sishumHEPbZe
   B767UXGuJ0HUZYIhDiqFsDwnvkAXZYkXk37qxOE/Wq+8rdcrh7YVR6d3o
   HzU4RxDB+NpQZTRFYWvzLqK73NTpk9LEI2skOCoLVn/p+Y7bhWlwmubZM
   +dWeCZrtKx5RMdNNHXY2SsLqmMtWu+m8mzAASCW6a0NKd3CcO+SCMsHwQ
   FDlU6FcRTzzRZWHoRW48k9HT3s2awPXeUGsTU2y7lqoLLaXuImt8SKOqR
   kzxXCHUuhMk7PXXJmORPkzQkCu9pYnXcmh05ru4vXmyO2UfabNDBOWw0E
   w==;
X-CSE-ConnectionGUID: 7xCvtQMnTYOrUl0xDDfTtA==
X-CSE-MsgGUID: WGUu7XS7Sqiy6kcn9hgElg==
X-IronPort-AV: E=McAfee;i="6700,10204,11176"; a="33821579"
X-IronPort-AV: E=Sophos;i="6.10,179,1719903600"; 
   d="scan'208";a="33821579"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
  by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 26 Aug 2024 23:23:01 -0700
X-CSE-ConnectionGUID: EgCJSd8CRbawrLjie8jyrw==
X-CSE-MsgGUID: TiixJNvQRGGOiH+t8POUPA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,179,1719903600"; 
   d="scan'208";a="62589117"
Received: from lkp-server01.sh.intel.com (HELO 9a732dc145d3) ([10.239.97.150])
  by orviesa010.jf.intel.com with ESMTP; 26 Aug 2024 23:22:58 -0700
Received: from kbuild by 9a732dc145d3 with local (Exim 4.96)
	(envelope-from <lkp@intel.com>)
	id 1sipbT-000I86-1q;
	Tue, 27 Aug 2024 06:22:55 +0000
Date: Tue, 27 Aug 2024 14:22:33 +0800
From: kernel test robot <lkp@intel.com>
To: Brian Norris <briannorris@chromium.org>,
	Mark Brown <broonie@kernel.org>
Cc: oe-kbuild-all@lists.linux.dev,
	=?utf-8?Q?Ond=C5=99ej?= Jirman <megi@xff.cz>,
	Brian Norris <briannorris@chromium.org>, stable@vger.kernel.org,
	Heiko Stuebner <heiko@sntech.de>, Jon Lin <jon.lin@rock-chips.com>,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org, linux-spi@vger.kernel.org,
	shengfei Xu <xsf@rock-chips.com>
Subject: Re: [PATCH] spi: rockchip: Resolve unbalanced runtime PM / system PM
 handling
Message-ID: <202408271225.Zh4Kc31M-lkp@intel.com>
References: <20240823214235.1718769-1-briannorris@chromium.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240823214235.1718769-1-briannorris@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240826_232301_250467_7364DC86 
X-CRM114-Status: GOOD (  12.32  )
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

Hi Brian,

kernel test robot noticed the following build warnings:

[auto build test WARNING on rockchip/for-next]
[also build test WARNING on broonie-sound/for-next broonie-spi/for-next linus/master v6.11-rc5 next-20240826]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Brian-Norris/spi-rockchip-Resolve-unbalanced-runtime-PM-system-PM-handling/20240826-135245
base:   https://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git for-next
patch link:    https://lore.kernel.org/r/20240823214235.1718769-1-briannorris%40chromium.org
patch subject: [PATCH] spi: rockchip: Resolve unbalanced runtime PM / system PM handling
config: loongarch-allmodconfig (https://download.01.org/0day-ci/archive/20240827/202408271225.Zh4Kc31M-lkp@intel.com/config)
compiler: loongarch64-linux-gcc (GCC) 14.1.0
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20240827/202408271225.Zh4Kc31M-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202408271225.Zh4Kc31M-lkp@intel.com/

All warnings (new ones prefixed by >>):

   drivers/spi/spi-rockchip.c: In function 'rockchip_spi_suspend':
>> drivers/spi/spi-rockchip.c:948:30: warning: unused variable 'rs' [-Wunused-variable]
     948 |         struct rockchip_spi *rs = spi_controller_get_devdata(ctlr);
         |                              ^~
   drivers/spi/spi-rockchip.c: In function 'rockchip_spi_resume':
   drivers/spi/spi-rockchip.c:969:30: warning: unused variable 'rs' [-Wunused-variable]
     969 |         struct rockchip_spi *rs = spi_controller_get_devdata(ctlr);
         |                              ^~


vim +/rs +948 drivers/spi/spi-rockchip.c

64e36824b32b06 addy ke      2014-07-01  942  
64e36824b32b06 addy ke      2014-07-01  943  #ifdef CONFIG_PM_SLEEP
64e36824b32b06 addy ke      2014-07-01  944  static int rockchip_spi_suspend(struct device *dev)
64e36824b32b06 addy ke      2014-07-01  945  {
43de979ddc099c Jeffy Chen   2017-08-07  946  	int ret;
d66571a20f68f1 Chris Ruehl  2020-05-11  947  	struct spi_controller *ctlr = dev_get_drvdata(dev);
e882575efc771f shengfei Xu  2022-02-16 @948  	struct rockchip_spi *rs = spi_controller_get_devdata(ctlr);
64e36824b32b06 addy ke      2014-07-01  949  
d66571a20f68f1 Chris Ruehl  2020-05-11  950  	ret = spi_controller_suspend(ctlr);
43de979ddc099c Jeffy Chen   2017-08-07  951  	if (ret < 0)
64e36824b32b06 addy ke      2014-07-01  952  		return ret;
64e36824b32b06 addy ke      2014-07-01  953  
8d3fb5bc7d0206 Brian Norris 2024-08-23  954  	ret = pm_runtime_force_suspend(dev);
8d3fb5bc7d0206 Brian Norris 2024-08-23  955  	if (ret < 0) {
8d3fb5bc7d0206 Brian Norris 2024-08-23  956  		spi_controller_resume(ctlr);
8d3fb5bc7d0206 Brian Norris 2024-08-23  957  		return ret;
8d3fb5bc7d0206 Brian Norris 2024-08-23  958  	}
64e36824b32b06 addy ke      2014-07-01  959  
23e291c2e4c84a Brian Norris 2016-12-16  960  	pinctrl_pm_select_sleep_state(dev);
23e291c2e4c84a Brian Norris 2016-12-16  961  
43de979ddc099c Jeffy Chen   2017-08-07  962  	return 0;
64e36824b32b06 addy ke      2014-07-01  963  }
64e36824b32b06 addy ke      2014-07-01  964  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
