Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F3605C433EF
	for <linux-rockchip@archiver.kernel.org>; Sun, 22 May 2022 10:49:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:Cc:To:
	From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=7ShGj93xXXi1CYlJTZw6SLD7iN/4WdnF0BZSie42He0=; b=qheDXn0OmAFjNI
	ob0QdHHhvLWZBblohot0N6L+gEWIwCU0u0iBXILy8Ud3N+xCmzwbWlEHU3KKLGN+3AjncxbUGvUPC
	B4R0hJbVHK0TBWXel9N5r4Y8Xkv2VcNKDLLD3ZX2BlkoAUfHQORDsGiNxN2wLoOIhP/+5XHltPTZS
	+dHLTt/DB2dLMTND14PRV6SZYwl5pEG5QKg7vVl3y/ZcdgBMZS2v5Q85if1zTqVG9uSM4n4/GMPlB
	lC93L2DtWLculSBpEr5e7u+BMdl5JtSDY8DdDpuKCxGpi2S4qQd+qNekWk8VZnInF6Qr1DsMCBdsz
	7CRwwvLduSOy18WDF1Qg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nsj9W-0017lj-DQ; Sun, 22 May 2022 10:49:38 +0000
Received: from mga05.intel.com ([192.55.52.43])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nsj9K-0017l6-UO; Sun, 22 May 2022 10:49:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1653216566; x=1684752566;
 h=date:from:to:cc:subject:message-id:mime-version;
 bh=X8R56Cpt49KSpVSGTiYbiDAhwSvcVquKEuawZCEKEIA=;
 b=fWKdOlVHZdH5xumubVUH6zWAdueKdXpA3SlenEIfsrASpPdtW2P9wQRO
 e7JZ1UfemLwkWfXQ956qj1b0jBbF6LO/c+weMhndZIqbVPBLmu4ByxJmI
 q7FXx3/SUO7nZPMmXRb2/DrW4LvvTV1grZSKLNkP8u+HwnT5Vp6YbS11w
 2JvXIIj5YfSboZ2IJh6GDYpTiTcHBvE/XQyHvMnHuF+ZF8VXcYFQOEMM3
 WcBW9bSr8Vov3/fD39fgkYS17nIYb3toVTJnsq7tmeLI9LgnAxj1hIqxQ
 vTK6trcyBcGgy91Sd2+eIpoYmRwBlMshQmIqdD/JFn+w5D37p8+qqd1fi g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10354"; a="359377018"
X-IronPort-AV: E=Sophos;i="5.91,244,1647327600"; d="scan'208";a="359377018"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 May 2022 03:49:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,244,1647327600"; d="scan'208";a="662981811"
Received: from lkp-server01.sh.intel.com (HELO db63a1be7222) ([10.239.97.150])
 by FMSMGA003.fm.intel.com with ESMTP; 22 May 2022 03:49:20 -0700
Received: from kbuild by db63a1be7222 with local (Exim 4.95)
 (envelope-from <lkp@intel.com>) id 1nsj9D-0000JB-QO;
 Sun, 22 May 2022 10:49:19 +0000
Date: Sun, 22 May 2022 18:48:45 +0800
From: kernel test robot <lkp@intel.com>
To: Michael Riesch <michael.riesch@wolfvision.net>
Cc: kbuild-all@lists.01.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, Heiko Stuebner <heiko@sntech.de>,
 Sascha Hauer <s.hauer@pengutronix.de>
Subject: [rockchip:wip-v5.20-armsoc/dts64 44/45]
 arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts:7:10: fatal error:
 dt-bindings/soc/rockchip,vop2.h: No such file or directory
Message-ID: <202205221848.KEeyKABj-lkp@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220522_034927_066613_D874F675 
X-CRM114-Status: GOOD (  10.45  )
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

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git wip-v5.20-armsoc/dts64
head:   281f94d9cbac31c1c112d09883bc42021435f1ad
commit: 97d7309a70b03d01a154c4308f423b020f7d397e [44/45] arm64: dts: rockchip: enable vop2 and hdmi tx on quartz64a
config: arm64-allyesconfig (https://download.01.org/0day-ci/archive/20220522/202205221848.KEeyKABj-lkp@intel.com/config)
compiler: aarch64-linux-gcc (GCC) 11.3.0
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # https://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git/commit/?id=97d7309a70b03d01a154c4308f423b020f7d397e
        git remote add rockchip https://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git
        git fetch --no-tags rockchip wip-v5.20-armsoc/dts64
        git checkout 97d7309a70b03d01a154c4308f423b020f7d397e
        # save the config file
        mkdir build_dir && cp config build_dir/.config
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=gcc-11.3.0 make.cross W=1 O=build_dir ARCH=arm64 SHELL=/bin/bash

If you fix the issue, kindly add following tag where applicable
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

>> arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts:7:10: fatal error: dt-bindings/soc/rockchip,vop2.h: No such file or directory
       7 | #include <dt-bindings/soc/rockchip,vop2.h>
         |          ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   compilation terminated.


vim +7 arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts

     4	
     5	#include <dt-bindings/gpio/gpio.h>
     6	#include <dt-bindings/pinctrl/rockchip.h>
   > 7	#include <dt-bindings/soc/rockchip,vop2.h>
     8	#include "rk3566.dtsi"
     9	

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
