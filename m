Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CD411C433F5
	for <linux-rockchip@archiver.kernel.org>; Sat, 30 Apr 2022 00:18:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1EvcevJTDNnYg0yQhm0TyyWNGf+Sc4enUcRpLgIVn4U=; b=Va6Uz9hhp3wNwY
	34iI+JaMZ9U6kT1MipyFglHyUv3NuBoFx00VgU59W902lvg9ogxBSyDQavCCig0x3rfH0h7I4VDBF
	Nsv6YF5nfWt2K0kre/cQd24RWwKUu0FHhf4kID3BelQ88XMZcJ2H1+nDalU6/fAL6NAEyMCFr0Q6M
	pWFqxrCUWf6NCMB2lIDuPzIG2Em/McyEQg/0b1EB1vqiNON/ojDSVCMA6EJf7PHDaB7WFrdshC1Yj
	IV1teXeKMloWcagedICi3gjFkWuj9/xSCMfCe7GtE3j/FbNvHVBV7lU1XSlQ2W294pY8AReSEuR++
	+QqdaRHMXPx+RkW36HQg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nkao7-00DIUs-Fq; Sat, 30 Apr 2022 00:17:55 +0000
Received: from mga02.intel.com ([134.134.136.20])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nkao5-00DIU9-6v; Sat, 30 Apr 2022 00:17:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1651277873; x=1682813873;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=kAcWmtvMs86EJf0sId+GTZ326TwVr2sRH2tRpBuMGfI=;
 b=AMFoH4tSyWdWfc4uYFVkwe8C1ptfbHkhspN/KPFfKO61hBiAP8seRLUL
 utNIo/OffBD/gnnQYov1cxiP8GEyaNEp/+8JvYFbLFKV5cXENxiDEzBP8
 ZucC7DdUNjLN16gwm0RPrpukpcglnUclcr4DVvk/FR2+yIeMqUqc8q+QI
 HuIT+ZVSB4/vvVsMuqV6/P21Y0Yf14QxyTtAKhevSr8dYCTUI8DkO4SgD
 f4uBBTpqAHgDckox9uwdGrh7SMUZt6GLrqUNT0OR83l76moC4qjr6syCU
 fNIl06c4qiU0FAiJiut7tRxmL7yfPOxCdtsn9qIiu8OXdCmX9BfgWw/Co g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10332"; a="254201520"
X-IronPort-AV: E=Sophos;i="5.91,186,1647327600"; d="scan'208";a="254201520"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Apr 2022 17:17:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,186,1647327600"; d="scan'208";a="630301471"
Received: from lkp-server01.sh.intel.com (HELO 5056e131ad90) ([10.239.97.150])
 by fmsmga004.fm.intel.com with ESMTP; 29 Apr 2022 17:17:27 -0700
Received: from kbuild by 5056e131ad90 with local (Exim 4.95)
 (envelope-from <lkp@intel.com>) id 1nkane-0006iN-OV;
 Sat, 30 Apr 2022 00:17:26 +0000
Date: Sat, 30 Apr 2022 08:16:33 +0800
From: kernel test robot <lkp@intel.com>
To: Peter Geis <pgwipeout@gmail.com>, linux-rockchip@lists.infradead.org,
 Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>,
 Heiko Stuebner <heiko@sntech.de>
Cc: llvm@lists.linux.dev, kbuild-all@lists.01.org,
 Peter Geis <pgwipeout@gmail.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 5/7] arm64: dts: rockchip: add Pine64 Quartz64-B
 device tree
Message-ID: <202204300850.X97CRcO6-lkp@intel.com>
References: <20220429115252.2360496-6-pgwipeout@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220429115252.2360496-6-pgwipeout@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220429_171753_365724_C50B1DBD 
X-CRM114-Status: GOOD (  15.81  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

Hi Peter,

I love your patch! Yet something to improve:

[auto build test ERROR on robh/for-next]
[also build test ERROR on arm/for-next arm64/for-next/core clk/clk-next kvmarm/next shawnguo/for-next soc/for-next v5.18-rc4]
[cannot apply to rockchip/for-next xilinx-xlnx/master keystone/next next-20220429]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch]

url:    https://github.com/intel-lab-lkp/linux/commits/Peter-Geis/Add-support-for-several-new-rk3566-SBCs/20220429-195433
base:   https://git.kernel.org/pub/scm/linux/kernel/git/robh/linux.git for-next
config: arm64-randconfig-r021-20220428 (https://download.01.org/0day-ci/archive/20220430/202204300850.X97CRcO6-lkp@intel.com/config)
compiler: clang version 15.0.0 (https://github.com/llvm/llvm-project 400775649969b9baf3bc2a510266e7912bb16ae9)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install arm64 cross compiling tool for clang build
        # apt-get install binutils-aarch64-linux-gnu
        # https://github.com/intel-lab-lkp/linux/commit/d933bfeea016da20a99bce012bbf071f9d86e2bf
        git remote add linux-review https://github.com/intel-lab-lkp/linux
        git fetch --no-tags linux-review Peter-Geis/Add-support-for-several-new-rk3566-SBCs/20220429-195433
        git checkout d933bfeea016da20a99bce012bbf071f9d86e2bf
        # save the config file
        mkdir build_dir && cp config build_dir/.config
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross W=1 O=build_dir ARCH=arm64 SHELL=/bin/bash

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

>> Error: arch/arm64/boot/dts/rockchip/rk3566-quartz64-b.dts:601.1-16 Label or path usb_host0_xhci not found
>> Error: arch/arm64/boot/dts/rockchip/rk3566-quartz64-b.dts:605.1-16 Label or path usb_host1_xhci not found
   FATAL ERROR: Syntax error parsing input tree

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
