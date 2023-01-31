Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7E433C38142
	for <linux-rockchip@archiver.kernel.org>; Tue, 31 Jan 2023 16:55:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xczhYaki+T9/c1ma/xmVNXOXkBh0Vo/lHRC9A4dUxLs=; b=pdPx+rmAtdkqFo
	v+DS/p1MwhM/94GAUT0uywZD8lTY1nnm7JnIDwdvtCHfszPTrz6mtBceZH+0WccwalHgircz5qGDg
	00xawjeeyOeoVkk1fMIv/C0xEnTvv+PAOEm8hqOUibwkmexwiHK7AvJSD6MmOSljaQgrObyUZxhg4
	ZjGfRHo55yZ26bLkIsyhBZXlcgutm0vUpEC1d8FOkVnGFRZkDf97H9MBAs1cSQwvhcua1kvO7iLjM
	hAQSSbxQdQgvSWuzqrUwdUK4fwFY200d/jzrq9hEzqje4aK7aOS7KDOyxXY4D1wnHYbf8pUZ8EYcn
	5tmDDLdO7IG2Ur3hSjHA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pMtub-008lsB-RK; Tue, 31 Jan 2023 16:55:13 +0000
Received: from mga02.intel.com ([134.134.136.20])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pMtuY-008lq9-ME
	for linux-rockchip@lists.infradead.org; Tue, 31 Jan 2023 16:55:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1675184110; x=1706720110;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=QBLJPPxPUFajZFL05Db/V+ZgQ7qyfyTBDVh05BHcUQA=;
  b=SEo8uxk6+jC1o7iuSbtHpybN5xcQsQP7+3Zul5RM4/9QO3fRRjRRKNdT
   3sv2rU2RI0q5X5bZM5VmcccUsF+qwu/G/bRpUWb4koHpgEAPnw2YXkHqn
   a2fkhhPEAe7U7rj+dHevghCwxWnTNMqwYKeORQVGLDZlXb/feyT+0d1tz
   I7wFouyfRzynz+bxpW3tRMqK7uIRSZW95XKd6ZrRdldD9Dos2gbA0uLAa
   JSdlPeE2DwdzraHYJsdR3cvO8o+ocNIqloj1zxDv/t9kwdPhvGFkhtbLG
   extFxb/6A0fvIVQPivDqyvJDVgatLD5A0fgvLPyVr3f01xwBv3C2VacSF
   w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10606"; a="315854982"
X-IronPort-AV: E=Sophos;i="5.97,261,1669104000"; 
   d="scan'208";a="315854982"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
  by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 31 Jan 2023 08:55:06 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10606"; a="733184905"
X-IronPort-AV: E=Sophos;i="5.97,261,1669104000"; 
   d="scan'208";a="733184905"
Received: from lkp-server01.sh.intel.com (HELO ffa7f14d1d0f) ([10.239.97.150])
  by fmsmga004.fm.intel.com with ESMTP; 31 Jan 2023 08:55:04 -0800
Received: from kbuild by ffa7f14d1d0f with local (Exim 4.96)
	(envelope-from <lkp@intel.com>)
	id 1pMtuR-0004Z4-2l;
	Tue, 31 Jan 2023 16:55:03 +0000
Date: Wed, 1 Feb 2023 00:54:36 +0800
From: kernel test robot <lkp@intel.com>
To: Shawn Lin <shawn.lin@rock-chips.com>,
	Ulf Hansson <ulf.hansson@linaro.org>
Cc: llvm@lists.linux.dev, oe-kbuild-all@lists.linux.dev,
	linux-mmc@vger.kernel.org, Adrian Hunter <adrian.hunter@intel.com>,
	linux-rockchip@lists.infradead.org,
	Shawn Lin <shawn.lin@rock-chips.com>
Subject: Re: [PATCH v2 3/3] mmc: sdhci-of-dwcmshc: Add host software queue
 support
Message-ID: <202302010000.KeMtGkbw-lkp@intel.com>
References: <1675125991-189452-4-git-send-email-shawn.lin@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1675125991-189452-4-git-send-email-shawn.lin@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230131_085510_812250_4F0691BA 
X-CRM114-Status: GOOD (  14.35  )
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

Hi Shawn,

I love your patch! Yet something to improve:

[auto build test ERROR on linus/master]
[also build test ERROR on v6.2-rc6 next-20230131]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Shawn-Lin/mmc-sdhci-of-dwcmshc-Update-DLL-and-pre-change-delay-for-rockchip-platform/20230131-084738
patch link:    https://lore.kernel.org/r/1675125991-189452-4-git-send-email-shawn.lin%40rock-chips.com
patch subject: [PATCH v2 3/3] mmc: sdhci-of-dwcmshc: Add host software queue support
config: riscv-randconfig-r042-20230129 (https://download.01.org/0day-ci/archive/20230201/202302010000.KeMtGkbw-lkp@intel.com/config)
compiler: clang version 16.0.0 (https://github.com/llvm/llvm-project 4196ca3278f78c6e19246e54ab0ecb364e37d66a)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install riscv cross compiling tool for clang build
        # apt-get install binutils-riscv64-linux-gnu
        # https://github.com/intel-lab-lkp/linux/commit/73576aaa2a9d56edd98c4259a33d4896677bb211
        git remote add linux-review https://github.com/intel-lab-lkp/linux
        git fetch --no-tags linux-review Shawn-Lin/mmc-sdhci-of-dwcmshc-Update-DLL-and-pre-change-delay-for-rockchip-platform/20230131-084738
        git checkout 73576aaa2a9d56edd98c4259a33d4896677bb211
        # save the config file
        mkdir build_dir && cp config build_dir/.config
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross W=1 O=build_dir ARCH=riscv olddefconfig
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross W=1 O=build_dir ARCH=riscv SHELL=/bin/bash

If you fix the issue, kindly add following tag where applicable
| Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

>> ld.lld: error: undefined symbol: mmc_hsq_init
   >>> referenced by sdhci-of-dwcmshc.c:0 (drivers/mmc/host/sdhci-of-dwcmshc.c:0)
   >>>               drivers/mmc/host/sdhci-of-dwcmshc.o:(dwcmshc_probe) in archive vmlinux.a
--
>> ld.lld: error: undefined symbol: mmc_hsq_finalize_request
   >>> referenced by clk.h:1073 (include/linux/clk.h:1073)
   >>>               drivers/mmc/host/sdhci-of-dwcmshc.o:(sdhci_dwcmshc_request_done) in archive vmlinux.a

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
