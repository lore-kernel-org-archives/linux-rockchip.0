Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D8880C433F5
	for <linux-rockchip@archiver.kernel.org>; Sat, 30 Apr 2022 05:42:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gw64uYedbbMrU5qd8gVlbdMZ9UPaexfiUVb5LI/93E8=; b=pGFZnd1S0PAOoP
	6waaEPUydYjjBfOEIb2XeuP3gv3foUnhSsDsBW0aCJw0v3yb18gzmiDsPmF4/+z8dWlwfhw/f1Vyt
	9DdaUzDxk1R33tImT531E9NUEevL9ex3GQ/0l75U8QDzvCSp0aFSHk91MBbnT7g0wHvmrlABvAdfz
	yJR9FQUFrGuEDloS384ubT1Zd+1i62fttumnz0FvrrokNixB928t3TgpC+FmRI6TDhGOQjB9Vgof9
	yvqH1ENwt+DBlk2F1Yp+R3dtZE4GyespkWPfGDUdKJx7HKi/KpmRUCgzmo4nWAye/4gOgv9Fybtnq
	N9ZajeTv8ZyfNtk4wAUw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nkfsS-00DiDv-2m; Sat, 30 Apr 2022 05:42:44 +0000
Received: from mga02.intel.com ([134.134.136.20])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nkfsP-00DiDH-Bl; Sat, 30 Apr 2022 05:42:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1651297361; x=1682833361;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=a4ecU1eWKCaDuyKNYzTBlF6FBEruaxnyEWX89xj25Rw=;
 b=IrhqFne3XLgdNd9fymFLzOp49evACA9R9k5cCI/E+XlzkUiXyNF3Gmxz
 dYSGKlQbuW5Uon3enHw0P//OJf4Q91GSV1TqRMsuMQ5SPHAApYnLDL6zR
 Vu9EBqXLpEUYCaDuM+6O308SY9XlUpTX+WTQbLbGK3MEGGLM5glXdI+Je
 Uy572BwvPvWF+Q0LgSg65swhtFXH4T32bRPRbAh6e9w7jEFfJYL5gtgU5
 EyQhJiuYUZz+0DXGNhzZPs4b53AE6xHKqxnclw2g1X981lX54HhLoiBAV
 AuLWziz1+7tnprtaP04Q+r1n6X7dfRmZ5t+BxLEMmzC+jkkWQXoIxBXJW w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10332"; a="254238723"
X-IronPort-AV: E=Sophos;i="5.91,187,1647327600"; d="scan'208";a="254238723"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Apr 2022 22:42:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,187,1647327600"; d="scan'208";a="706874098"
Received: from lkp-server01.sh.intel.com (HELO 5056e131ad90) ([10.239.97.150])
 by fmsmga001.fm.intel.com with ESMTP; 29 Apr 2022 22:42:36 -0700
Received: from kbuild by 5056e131ad90 with local (Exim 4.95)
 (envelope-from <lkp@intel.com>) id 1nkfsJ-0006uj-Dy;
 Sat, 30 Apr 2022 05:42:35 +0000
Date: Sat, 30 Apr 2022 13:42:17 +0800
From: kernel test robot <lkp@intel.com>
To: Peter Geis <pgwipeout@gmail.com>, linux-rockchip@lists.infradead.org,
 Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>,
 Heiko Stuebner <heiko@sntech.de>
Cc: llvm@lists.linux.dev, kbuild-all@lists.01.org,
 Peter Geis <pgwipeout@gmail.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 6/7] arm64: dts: rockchip: add SoQuartz CM4IO dts
Message-ID: <202204301300.XpbFVL82-lkp@intel.com>
References: <20220429115252.2360496-7-pgwipeout@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220429115252.2360496-7-pgwipeout@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220429_224241_487193_C0C59E14 
X-CRM114-Status: GOOD (  15.48  )
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
config: arm64-randconfig-r021-20220428 (https://download.01.org/0day-ci/archive/20220430/202204301300.XpbFVL82-lkp@intel.com/config)
compiler: clang version 15.0.0 (https://github.com/llvm/llvm-project 400775649969b9baf3bc2a510266e7912bb16ae9)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install arm64 cross compiling tool for clang build
        # apt-get install binutils-aarch64-linux-gnu
        # https://github.com/intel-lab-lkp/linux/commit/9c1ec04920cfad39477824908a540d7547dbed23
        git remote add linux-review https://github.com/intel-lab-lkp/linux
        git fetch --no-tags linux-review Peter-Geis/Add-support-for-several-new-rk3566-SBCs/20220429-195433
        git checkout 9c1ec04920cfad39477824908a540d7547dbed23
        # save the config file
        mkdir build_dir && cp config build_dir/.config
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross W=1 O=build_dir ARCH=arm64 SHELL=/bin/bash

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

>> Error: arch/arm64/boot/dts/rockchip/rk3566-soquartz.dtsi:605.1-16 Label or path usb_host0_xhci not found
>> Error: arch/arm64/boot/dts/rockchip/rk3566-soquartz-cm4.dts:161.1-16 Label or path usb_host0_xhci not found
   FATAL ERROR: Syntax error parsing input tree

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
