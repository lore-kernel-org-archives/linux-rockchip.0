Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 40EEDC433EF
	for <linux-rockchip@archiver.kernel.org>; Fri, 20 May 2022 02:19:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:Cc:To:
	From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ozqouPkQWjWj+9VsAsSNmZtB+FVfEOnGKbSJ+oY/C5E=; b=W9MEp/1XlCkIrC
	sXAGJxyWI3bSPnwjqaUF3YJEvCKDSlt9zMM4jmdztPHbd89GfMojBqQLcQ4sauFMUVWDsu6Hu82mH
	UHkbyJ0FRMWy6h2fz3QB4Km28ScrOM4lu1vBWnWo3uqX8GmBAo+FwrWzEbSCzLNcCCrB2exVPzEe4
	s3fA3pykO0a0g6FuXFYbJ6jocvru1j7/pZAMOG6mWibM82Zcg/A5VPeRGKOa0g/UsMUTZpECKSzTG
	VrO6fBYHDSxO/JbAGR9F+rKfi22jVojAdZ44NaKAjVBf5GDce6iNObgHn57pwGPig62y9WUa/Z2XC
	xSm24Q+iMmLtFFXBCV6w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nrsEP-00A6JT-No; Fri, 20 May 2022 02:19:09 +0000
Received: from mga07.intel.com ([134.134.136.100])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nrsEE-00A6FE-QR; Fri, 20 May 2022 02:19:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1653013138; x=1684549138;
 h=date:from:to:cc:subject:message-id:mime-version;
 bh=PK44YsxEzTes7+36O197PGhEtKdQaq9XcG4ImqzBJtQ=;
 b=TrWerycJ/CYmxv19jVbEl8GE5lgm7PPBkgsdmbAqzmIoPl61fKYYvr1K
 iQZy2RjlC4iPE4kKXPX3pZS38DWjpqxF3/Gjtaks8wt9lPi+PNKvzbP7Q
 Vb5O+sAnpQeKrem/gCi7+sJbm3yevg6KM17m6TrFQHHRog3/987f8Vl7f
 BHoRXosdCY4BL1DR/OBJVxdRQUwcHWlV88ebcjcSzDn89N/jYBdo/Oy0j
 ey0uXkwfctXn9d2iGaD97M3Y4705V/WJgeDmGH7JNsUfPjYFKpQDCCgwj
 TU/YFpTO2Fbb0NjhedOTCpCyphw/qCBjBgKf74mM9lxOJNrMVFUiv0/ay Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10352"; a="335504955"
X-IronPort-AV: E=Sophos;i="5.91,238,1647327600"; d="scan'208";a="335504955"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 May 2022 19:18:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,238,1647327600"; d="scan'208";a="524412300"
Received: from lkp-server02.sh.intel.com (HELO 242b25809ac7) ([10.239.97.151])
 by orsmga003.jf.intel.com with ESMTP; 19 May 2022 19:18:51 -0700
Received: from kbuild by 242b25809ac7 with local (Exim 4.95)
 (envelope-from <lkp@intel.com>) id 1nrsE6-0004BO-UR;
 Fri, 20 May 2022 02:18:50 +0000
Date: Fri, 20 May 2022 10:18:25 +0800
From: kernel test robot <lkp@intel.com>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: kbuild-all@lists.01.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, Heiko Stuebner <heiko@sntech.de>
Subject: [rockchip:wip-v5.20-armsoc/dts64 43/45]
 arch/arm64/boot/dts/rockchip/rk3568-evb1-v10.dts:11:10: fatal error:
 dt-bindings/soc/rockchip,vop2.h: No such file or directory
Message-ID: <202205201036.Os3FOJ56-lkp@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220519_191858_969042_F76BDFEC 
X-CRM114-Status: GOOD (  10.72  )
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
commit: f2cdaaae9b947970842196ac93d71b0daad3e629 [43/45] arm64: dts: rockchip: rk3568-evb: Enable VOP2 and hdmi
config: arm64-allyesconfig (https://download.01.org/0day-ci/archive/20220520/202205201036.Os3FOJ56-lkp@intel.com/config)
compiler: aarch64-linux-gcc (GCC) 11.3.0
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # https://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git/commit/?id=f2cdaaae9b947970842196ac93d71b0daad3e629
        git remote add rockchip https://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git
        git fetch --no-tags rockchip wip-v5.20-armsoc/dts64
        git checkout f2cdaaae9b947970842196ac93d71b0daad3e629
        # save the config file
        mkdir build_dir && cp config build_dir/.config
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=gcc-11.3.0 make.cross W=1 O=build_dir ARCH=arm64 SHELL=/bin/bash

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

>> arch/arm64/boot/dts/rockchip/rk3568-evb1-v10.dts:11:10: fatal error: dt-bindings/soc/rockchip,vop2.h: No such file or directory
      11 | #include <dt-bindings/soc/rockchip,vop2.h>
         |          ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   compilation terminated.


vim +11 arch/arm64/boot/dts/rockchip/rk3568-evb1-v10.dts

  > 11	#include <dt-bindings/soc/rockchip,vop2.h>
    12	#include "rk3568.dtsi"
    13	

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
