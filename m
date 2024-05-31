Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 193C6C25B7E
	for <linux-rockchip@archiver.kernel.org>; Fri, 31 May 2024 14:31:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9CXE5WUr3LKTd47PjTYHFVV/QGyOConfqX+HPgEpduU=; b=fwsNlefHGmLe3w
	gBjqCukNeTEJrNFf2vxDa8zR3ldSdemVickuuHaTyGzlRoiyG3IR2JvxTIhdcJ1PT54Hn8zW0iMpC
	Ada4BfLTanStW1B8sNdw2mHUUOom02hxmthPXsSGiC6fr1jupIRBE/N+bMxzKJHPFHoTb5N6OncZB
	9fMKn5J85ZhdQlKn4nksWnkqqvxr1Xq6p0fITz4rAmwUN4wnUkGhMS+bwWBm+PL5rb/499fLLJZOX
	Yi62aLmdvcnMWrxs9A2+8ZJ6EUfoMav7XyVAU5bBLm7IkjTT1ZkxjUdb3T16tv+ZkeVwhdndpekiJ
	xxBLI5++6FHAjnlIWDaA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sD3Hp-0000000AWEs-0qeN;
	Fri, 31 May 2024 14:31:17 +0000
Received: from mgamail.intel.com ([198.175.65.9])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sD3Hh-0000000AWB7-2oKb;
	Fri, 31 May 2024 14:31:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1717165870; x=1748701870;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=JvE95VldL4Wm6uxSEGwGimYI1FBYwpi2JYmljsv3ZAA=;
  b=dX2/UunnuOfqW4NILBd24EcK0aVkY4Lsg5QIz9YdoxW/0WSlEuH5j8Qf
   azZOVNYQz+DwOFfDIHM2nRwN+h2ThTyU8ol7OurqbUoiarQo2YaDYPdxX
   KWqyA0Da7uRhoIp+rBy907BFO+XJx65v4+AbfR+mlGKtbRwbYDczkl4pQ
   LiAS/S5n6BJfzeB3zjDbcombHs5veoLvQIktw8a72BKxNLBaZNhLbt3Vh
   EHhJVu/qviyI01sazww6UT4/10eJVjU/OjenWD+WYIONGwCiJeB5i0KyL
   AIGYgLEqy8Kjf/QDEHWk/C+PVQp+u4ioAJEwLy3tFpGQqonTOvdFabE9p
   g==;
X-CSE-ConnectionGUID: ehBgO3ObREeTGp9YBN/vUQ==
X-CSE-MsgGUID: Cv2FItwoTS60qsKg1zktFQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11088"; a="36242691"
X-IronPort-AV: E=Sophos;i="6.08,204,1712646000"; 
   d="scan'208";a="36242691"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
  by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 31 May 2024 07:31:06 -0700
X-CSE-ConnectionGUID: 0FTBQ/SASnC/QvwnryK7fA==
X-CSE-MsgGUID: KgUFmX8zTD2bMRaXcoAYwA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,204,1712646000"; 
   d="scan'208";a="73666970"
Received: from smile.fi.intel.com ([10.237.72.54])
  by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 31 May 2024 07:30:59 -0700
Received: from andy by smile.fi.intel.com with local (Exim 4.97)
	(envelope-from <andriy.shevchenko@linux.intel.com>)
	id 1sD3HS-0000000CUNA-19F6;
	Fri, 31 May 2024 17:30:54 +0300
Date: Fri, 31 May 2024 17:30:53 +0300
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: kernel test robot <lkp@intel.com>
Cc: Rob Herring <robh@kernel.org>, Weidong Wang <wangweidong.a@awinic.com>,
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
	linux-rockchip@lists.infradead.org, llvm@lists.linux.dev,
	oe-kbuild-all@lists.linux.dev, Liam Girdwood <lgirdwood@gmail.com>,
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
Message-ID: <ZlnfHWx3uPzCoJwX@smile.fi.intel.com>
References: <20240530230037.1156253-2-andriy.shevchenko@linux.intel.com>
 <202405311428.tzsBMIPs-lkp@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <202405311428.tzsBMIPs-lkp@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240531_073109_849084_C56BB68A 
X-CRM114-Status: GOOD (  14.20  )
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

On Fri, May 31, 2024 at 02:42:33PM +0800, kernel test robot wrote:
> Hi Andy,
> 
> kernel test robot noticed the following build errors:
> 
> [auto build test ERROR on broonie-sound/for-next]
> [also build test ERROR on shawnguo/for-next rockchip/for-next linus/master v6.10-rc1 next-20240529]
> [If your patch is applied to the wrong git tree, kindly drop us a note.
> And when submitting patch, we suggest to use '--base' as documented in
> https://git-scm.com/docs/git-format-patch#_base_tree_information]
> 
> url:    https://github.com/intel-lab-lkp/linux/commits/Andy-Shevchenko/ASoC-codecs-Remove-unused-of_gpio-h/20240531-070350
> base:   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/sound.git for-next
> patch link:    https://lore.kernel.org/r/20240530230037.1156253-2-andriy.shevchenko%40linux.intel.com
> patch subject: [PATCH v1 1/6] ASoC: codecs: Remove unused of_gpio.h
> config: i386-buildonly-randconfig-006-20240531 (https://download.01.org/0day-ci/archive/20240531/202405311428.tzsBMIPs-lkp@intel.com/config)
> compiler: clang version 18.1.5 (https://github.com/llvm/llvm-project 617a15a9eac96088ae5e9134248d8236e34b91b1)
> reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20240531/202405311428.tzsBMIPs-lkp@intel.com/reproduce)
> 
> If you fix the issue in a separate patch/commit (i.e. not just a new version of
> the same patch/commit), kindly add following tags
> | Reported-by: kernel test robot <lkp@intel.com>
> | Closes: https://lore.kernel.org/oe-kbuild-all/202405311428.tzsBMIPs-lkp@intel.com/

My gosh, the whoever wrote the GPIO code in that driver has no clue what they
are doing. It's a pure mess.

-- 
With Best Regards,
Andy Shevchenko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
