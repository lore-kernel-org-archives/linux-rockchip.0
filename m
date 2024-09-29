Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 260DACF6491
	for <linux-rockchip@archiver.kernel.org>; Sun, 29 Sep 2024 01:40:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KV0WWDY3Jt5AXfu8hkrIqHk1KTQT/zw/6YDwPQoapRE=; b=Q20ySpJv9kD5WT
	xcvM/ZZP86NtzERfPTalGsIGKa9nPHqGhhbqKVvOckFx3uuMRY2IzgCnp3jb0hvutTga0lMK/VloW
	D4V30/JXwayNHiTws8KaaN262QfFedRURq3DTsbGLPrkrFg+vCfdq30qTgkYTxV2qSPQVmAp7UUqN
	tKAfbI6PjSzY+zT++OQLatyvqy/owx/bRAX2heBlRZnKwwK6zr3RskV50dmEiaQuXOXVqF8q9lT99
	dzCz5+4ntJoax7JFNKW8IBwNQNVzbSlUEQGEhZtoH+BsqoBHi3XFguJolNaramwPUXVOB38sz5NaR
	9kIDX/y2ETls5pU3BKpg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1suiv7-0000000DvIA-24qV;
	Sun, 29 Sep 2024 01:40:21 +0000
Received: from mgamail.intel.com ([192.198.163.11])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1suiv3-0000000DvHc-2nx5;
	Sun, 29 Sep 2024 01:40:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1727574018; x=1759110018;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=r8YEm82IiDRZTCkCh879m0xJ5xKM7guPvEFt/0AzZZk=;
  b=XD0Ud17rGkVHWarRqXgVAo0Hvp+UL8Ssyg/i7Hfm27pXx4dTX++v8suG
   sQxoQqMy2kuUhPrfMC4tKVQg88ajIHeFyUHyXAYWjeynS/IMFgIGSuI4k
   TgFbEYe/I4+byyOFtUscJ0DkBkHia33nFgTt4B0CTbLGgbYQ6bRfqFm4Y
   E7OCL1mZ8xKq4P5vKHFYmTaHef5pZ5tz9NZ4EsxRJKYQa9BHM/glkN/+s
   1ooHhPRvNqbDOR3tuV/3eLQdhHMdHq5D7GZ8XHku06nequVSGgkoZSt49
   I5rgrtS4pVsiwyYukd15PvwoPv9toZZrQgwhk5a1Ukt2f/5rBUndwMVzA
   A==;
X-CSE-ConnectionGUID: gJwOvx4jTPWliwk3/c013g==
X-CSE-MsgGUID: hxWc8Wm5T9ehgtxtVN0Y/Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11209"; a="37267829"
X-IronPort-AV: E=Sophos;i="6.11,162,1725346800"; 
   d="scan'208";a="37267829"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
  by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 28 Sep 2024 18:40:11 -0700
X-CSE-ConnectionGUID: lMzoxijmS/+sF1p2iiTmDA==
X-CSE-MsgGUID: CcN8ldiURtmkZQOohAIF0g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,162,1725346800"; 
   d="scan'208";a="103702516"
Received: from lkp-server01.sh.intel.com (HELO 53e96f405c61) ([10.239.97.150])
  by orviesa002.jf.intel.com with ESMTP; 28 Sep 2024 18:40:08 -0700
Received: from kbuild by 53e96f405c61 with local (Exim 4.96)
	(envelope-from <lkp@intel.com>)
	id 1suius-000Non-0T;
	Sun, 29 Sep 2024 01:40:06 +0000
Date: Sun, 29 Sep 2024 09:39:08 +0800
From: kernel test robot <lkp@intel.com>
To: Dragan Simic <dsimic@manjaro.org>, linux-spi@vger.kernel.org,
	linux-rockchip@lists.infradead.org
Cc: oe-kbuild-all@lists.linux.dev, broonie@kernel.org, heiko@sntech.de,
	gregkh@linuxfoundation.org, rafael@kernel.org, oss@helene.moe,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 4/5] driver core: Add device probe log helper
 dev_warn_probe()
Message-ID: <202409290956.jwLrcN1S-lkp@intel.com>
References: <2fd9a60e0efe906dc7a203cd652c8d0b7f932470.1727496560.git.dsimic@manjaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <2fd9a60e0efe906dc7a203cd652c8d0b7f932470.1727496560.git.dsimic@manjaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240928_184018_020238_729F40B5 
X-CRM114-Status: GOOD (  15.20  )
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

Hi Dragan,

kernel test robot noticed the following build warnings:

[auto build test WARNING on rockchip/for-next]
[also build test WARNING on broonie-spi/for-next driver-core/driver-core-testing driver-core/driver-core-next driver-core/driver-core-linus linus/master v6.11 next-20240927]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Dragan-Simic/spi-rockchip-Perform-trivial-code-cleanups/20240928-121548
base:   https://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git for-next
patch link:    https://lore.kernel.org/r/2fd9a60e0efe906dc7a203cd652c8d0b7f932470.1727496560.git.dsimic%40manjaro.org
patch subject: [PATCH v2 4/5] driver core: Add device probe log helper dev_warn_probe()
config: openrisc-allnoconfig (https://download.01.org/0day-ci/archive/20240929/202409290956.jwLrcN1S-lkp@intel.com/config)
compiler: or1k-linux-gcc (GCC) 14.1.0
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20240929/202409290956.jwLrcN1S-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202409290956.jwLrcN1S-lkp@intel.com/

All warnings (new ones prefixed by >>):

   drivers/base/core.c: In function 'dev_err_probe':
>> drivers/base/core.c:5055:1: warning: control reaches end of non-void function [-Wreturn-type]
    5055 | }
         | ^
   drivers/base/core.c: In function 'dev_warn_probe':
   drivers/base/core.c:5101:1: warning: control reaches end of non-void function [-Wreturn-type]
    5101 | }
         | ^


vim +5055 drivers/base/core.c

  5011	
  5012	/**
  5013	 * dev_err_probe - probe error check and log helper
  5014	 * @dev: the pointer to the struct device
  5015	 * @err: error value to test
  5016	 * @fmt: printf-style format string
  5017	 * @...: arguments as specified in the format string
  5018	 *
  5019	 * This helper implements common pattern present in probe functions for error
  5020	 * checking: print debug or error message depending if the error value is
  5021	 * -EPROBE_DEFER and propagate error upwards.
  5022	 * In case of -EPROBE_DEFER it sets also defer probe reason, which can be
  5023	 * checked later by reading devices_deferred debugfs attribute.
  5024	 * It replaces the following code sequence::
  5025	 *
  5026	 * 	if (err != -EPROBE_DEFER)
  5027	 * 		dev_err(dev, ...);
  5028	 * 	else
  5029	 * 		dev_dbg(dev, ...);
  5030	 * 	return err;
  5031	 *
  5032	 * with::
  5033	 *
  5034	 * 	return dev_err_probe(dev, err, ...);
  5035	 *
  5036	 * Using this helper in your probe function is totally fine even if @err
  5037	 * is known to never be -EPROBE_DEFER.
  5038	 * The benefit compared to a normal dev_err() is the standardized format
  5039	 * of the error code, which is emitted symbolically (i.e. you get "EAGAIN"
  5040	 * instead of "-35"), and having the error code returned allows more
  5041	 * compact error paths.
  5042	 *
  5043	 * Returns @err.
  5044	 */
  5045	int dev_err_probe(const struct device *dev, int err, const char *fmt, ...)
  5046	{
  5047		va_list args;
  5048	
  5049		va_start(args, fmt);
  5050	
  5051		/* Use dev_err() for logging when err doesn't equal -EPROBE_DEFER */
  5052		dev_probe_failed(dev, err, true, fmt, args);
  5053	
  5054		va_end(args);
> 5055	}
  5056	EXPORT_SYMBOL_GPL(dev_err_probe);
  5057	

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
