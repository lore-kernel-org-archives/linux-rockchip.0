Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 939E2C433F5
	for <linux-rockchip@archiver.kernel.org>; Wed, 15 Dec 2021 22:48:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=m2orwFM0IbTWOwESrjT1yAuHAHK5fcWt57ZqbOoGXo0=; b=mr99ZtJ/yVrOXV
	+pCJ7G4ENgCcUldU18IP+3isETDH2SU/jKznLtZWrMEnbhjecwZ+Aahtw9wC4p/MNVQtwsc1YXwRf
	Bxb7CjCKRX8t1Mm6mYNvqjgEZqC++nEDHJo9qnPE2RRq9144Uv8vFUaEKEfukmp9g06h1vzVoRX++
	lKEhzvMut9attFF8TAS2EazxM/q2zopcOloFVT7OynmmemvLxZUnMURWNL/GEb2AVeaFbpVEHrE6R
	aXru5AePE1gBO3fc3swfNeXzAxsiPr3YmwdG+msv7aYdaPlHYHThwUBgs49XdIP5EQutKbl9HXkaI
	3hJBoJnTTaK6bxqG/P8w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mxd4X-0030X3-BN; Wed, 15 Dec 2021 22:48:29 +0000
Received: from mga01.intel.com ([192.55.52.88])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mxd4U-0030Ux-11; Wed, 15 Dec 2021 22:48:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1639608505; x=1671144505;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=JWFyo0Ydmtk47WVj8Zg8P0VPEZG3TTPE4W1aW0wI3zs=;
 b=Wd7y9UVBt8ZMGQPBCM4F+H1Vjfu/icvk/4WFXg2I4AkJwrCZeuoC3L90
 acujRJ9XVd1Fq02WPHtE8UnB0vs2pPjo9BGa/AQOvZyQ60CR+c3j9Veil
 YUdtGy6XiVahJX5J310A/NW8PuNKhhAsPXN5cuWjcPwyOmql6P1cESSjq
 UpGBYTjb4y3cJ9tCi0j3OxyXcg0T1LOCp0ZFto6CWDrPrMcnBSh3jQTHq
 wKg7+mWFFj2ePQO13lP8XeGIaIRZnaNN3usFCV2HcunDDW/Pbu5MCMU+Q
 xMpAf+3M49OD0M7q1/sjeFalITNkM7xY+Y4dso8pRjoyKP+P84qjQ1P1e g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10199"; a="263512956"
X-IronPort-AV: E=Sophos;i="5.88,209,1635231600"; d="scan'208";a="263512956"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Dec 2021 14:48:24 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,209,1635231600"; d="scan'208";a="545750614"
Received: from lkp-server02.sh.intel.com (HELO 9f38c0981d9f) ([10.239.97.151])
 by orsmga001.jf.intel.com with ESMTP; 15 Dec 2021 14:48:21 -0800
Received: from kbuild by 9f38c0981d9f with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1mxd4O-0002Qm-Me; Wed, 15 Dec 2021 22:48:20 +0000
Date: Thu, 16 Dec 2021 06:47:30 +0800
From: kernel test robot <lkp@intel.com>
To: Yifeng Zhao <yifeng.zhao@rock-chips.com>, heiko@sntech.de
Cc: kbuild-all@lists.01.org, robh+dt@kernel.org, jbx6244@gmail.com,
 devicetree@vger.kernel.org, vkoul@kernel.org,
 michael.riesch@wolfvision.net, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org
Subject: Re: [PATCH v5 3/4] phy: rockchip: add naneng combo phy for RK3568
Message-ID: <202112160605.2BqI0hlK-lkp@intel.com>
References: <20211215095657.13183-4-yifeng.zhao@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211215095657.13183-4-yifeng.zhao@rock-chips.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211215_144826_118475_A310B0AE 
X-CRM114-Status: GOOD (  17.94  )
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

Hi Yifeng,

Thank you for the patch! Yet something to improve:

[auto build test ERROR on rockchip/for-next]
[also build test ERROR on robh/for-next lee-mfd/for-mfd-next v5.16-rc5 next-20211214]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch]

url:    https://github.com/0day-ci/linux/commits/Yifeng-Zhao/Add-Naneng-combo-PHY-support-for-RK3568/20211215-180610
base:   https://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git for-next
config: arm64-allyesconfig (https://download.01.org/0day-ci/archive/20211216/202112160605.2BqI0hlK-lkp@intel.com/config)
compiler: aarch64-linux-gcc (GCC) 11.2.0
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # https://github.com/0day-ci/linux/commit/5e4ddb08d86d5232174d88483f29e96272a4b6c0
        git remote add linux-review https://github.com/0day-ci/linux
        git fetch --no-tags linux-review Yifeng-Zhao/Add-Naneng-combo-PHY-support-for-RK3568/20211215-180610
        git checkout 5e4ddb08d86d5232174d88483f29e96272a4b6c0
        # save the config file to linux build tree
        mkdir build_dir
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=gcc-11.2.0 make.cross O=build_dir ARCH=arm64 SHELL=/bin/bash

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

   drivers/phy/rockchip/phy-rockchip-naneng-combphy.c: In function 'rk3568_combphy_cfg':
>> drivers/phy/rockchip/phy-rockchip-naneng-combphy.c:22:47: error: 'HZ_PER_MHZ' undeclared (first use in this function)
      22 | #define REF_CLOCK_24MHz                 (24 * HZ_PER_MHZ)
         |                                               ^~~~~~~~~~
   drivers/phy/rockchip/phy-rockchip-naneng-combphy.c:490:14: note: in expansion of macro 'REF_CLOCK_24MHz'
     490 |         case REF_CLOCK_24MHz:
         |              ^~~~~~~~~~~~~~~
   drivers/phy/rockchip/phy-rockchip-naneng-combphy.c:22:47: note: each undeclared identifier is reported only once for each function it appears in
      22 | #define REF_CLOCK_24MHz                 (24 * HZ_PER_MHZ)
         |                                               ^~~~~~~~~~
   drivers/phy/rockchip/phy-rockchip-naneng-combphy.c:490:14: note: in expansion of macro 'REF_CLOCK_24MHz'
     490 |         case REF_CLOCK_24MHz:
         |              ^~~~~~~~~~~~~~~


vim +/HZ_PER_MHZ +22 drivers/phy/rockchip/phy-rockchip-naneng-combphy.c

    20	
    21	#define BIT_WRITEABLE_SHIFT		16
  > 22	#define REF_CLOCK_24MHz			(24 * HZ_PER_MHZ)
    23	#define REF_CLOCK_25MHz			(25 * HZ_PER_MHZ)
    24	#define REF_CLOCK_100MHz		(100 * HZ_PER_MHZ)
    25	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
