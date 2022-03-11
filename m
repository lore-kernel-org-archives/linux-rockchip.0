Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D1A38C433EF
	for <linux-rockchip@archiver.kernel.org>; Fri, 11 Mar 2022 16:59:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2/ieuLMnwhgBddeHEI2YJuTBM3nqu8jMxV40Rkmbecw=; b=vGZRT9707Y+IdT
	lgxf3VIDYKJvfhFdsVsHlSZNEqJebFrLk//KHd42oCkYvGEgiFLHsqAL1k3M9YjTYrYbeWKWlR2Rt
	oSx7uukIZNgZlfNA4fJUDQdBsfXtdNPqKbrZR0CasUe2asVBOCIrsmAJUcVn9K1lFSJiJ9hKfVbqk
	xaoJ4IhsdQX+V31GQnjhOQH1fX1T8mexoUHWqgXAEhY0mo7EEBRfwbG3hXeDqL+4rFWcinRPelvd1
	lwh4rRjj3aL6FR/UjCWZ/SDgMVHgm36vX88qyUocb+h08hrxEKPbp2nC9N5SVfuWUSJkpyYd21Nm3
	OZ67d/MpZLzquirONRzA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nSibb-00HPbq-UQ; Fri, 11 Mar 2022 16:59:07 +0000
Received: from mga01.intel.com ([192.55.52.88])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nSibE-00HPRm-3r; Fri, 11 Mar 2022 16:58:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647017924; x=1678553924;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=hBJLDracNIElCTfhPdQSzpk98yuQXkyTtpQr/vOOpJM=;
 b=il45hapW9gxgEfuMMAnlBbRsOeTkMM1lhR5tB1/4eQ2j+ljPj5gf+WTL
 hw8SBi1sGHCoIyCgoZkGZ61g7p6nJ3ZLgjRmXTCpEGQiIR10Nx+tWuTIo
 rIgts8zpeCJm5oHCbYV5i74CCTrAf2XFi/H7Mk2BkrMURBK6X7EbQdI38
 uWeQ/u3vazv4YrUEdfFvz5y7m5Ej0eS8bPexL8k1dv0CTBggFhPTw7EW4
 oWOXjaVDST7BvW+FZBt0vc1HX4ivFvZOQ1W1o1iW4I9XUsn6HjR+T7ANc
 rM8bbLkGKqVLuHWc1EkPvdFjDPJY2Z14eZZvOwZ9KNGx5UbrQ3mH/W1Sz A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10283"; a="280354122"
X-IronPort-AV: E=Sophos;i="5.90,174,1643702400"; d="scan'208";a="280354122"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2022 08:58:40 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,174,1643702400"; d="scan'208";a="633467843"
Received: from lkp-server02.sh.intel.com (HELO 89b41b6ae01c) ([10.239.97.151])
 by FMSMGA003.fm.intel.com with ESMTP; 11 Mar 2022 08:58:37 -0800
Received: from kbuild by 89b41b6ae01c with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1nSib6-0006nB-Bp; Fri, 11 Mar 2022 16:58:36 +0000
Date: Sat, 12 Mar 2022 00:57:51 +0800
From: kernel test robot <lkp@intel.com>
To: Michael Riesch <michael.riesch@wolfvision.net>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Cc: llvm@lists.linux.dev, kbuild-all@lists.01.org,
 Rob Herring <robh+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Levin Du <djw@t-chip.com.cn>, Tianling Shen <cnsztl@gmail.com>,
 Chen-Yu Tsai <wenst@chromium.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Alex Bee <knaerzche@gmail.com>, Liang Chen <cl@rock-chips.com>,
 Peter Geis <pgwipeout@gmail.com>,
 Michael Riesch <michael.riesch@wolfvision.net>
Subject: Re: [PATCH v2 3/3] arm64: dts: rockchip: enable vop2 and hdmi tx on
 rock-3a
Message-ID: <202203120049.YIR5IFdM-lkp@intel.com>
References: <20220310210352.451136-4-michael.riesch@wolfvision.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220310210352.451136-4-michael.riesch@wolfvision.net>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220311_085844_224594_9790F6CC 
X-CRM114-Status: GOOD (  16.99  )
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

Hi Michael,

Thank you for the patch! Yet something to improve:

[auto build test ERROR on robh/for-next]
[also build test ERROR on arm/for-next xilinx-xlnx/master arm64/for-next/core shawnguo/for-next clk/clk-next kvmarm/next keystone/next v5.17-rc7]
[cannot apply to rockchip/for-next soc/for-next next-20220310]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch]

url:    https://github.com/0day-ci/linux/commits/Michael-Riesch/arm64-dts-rockchip-add-basic-dts-for-the-radxa-rock3-model-a/20220311-050612
base:   https://git.kernel.org/pub/scm/linux/kernel/git/robh/linux.git for-next
config: arm64-randconfig-r014-20220310 (https://download.01.org/0day-ci/archive/20220312/202203120049.YIR5IFdM-lkp@intel.com/config)
compiler: clang version 15.0.0 (https://github.com/llvm/llvm-project 276ca87382b8f16a65bddac700202924228982f6)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install arm64 cross compiling tool for clang build
        # apt-get install binutils-aarch64-linux-gnu
        # https://github.com/0day-ci/linux/commit/c217f194b7a9cbdb7cbb8149ae1f6e8c2faf6e3f
        git remote add linux-review https://github.com/0day-ci/linux
        git fetch --no-tags linux-review Michael-Riesch/arm64-dts-rockchip-add-basic-dts-for-the-radxa-rock3-model-a/20220311-050612
        git checkout c217f194b7a9cbdb7cbb8149ae1f6e8c2faf6e3f
        # save the config file to linux build tree
        mkdir build_dir
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross W=1 O=build_dir ARCH=arm64 SHELL=/bin/bash

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

>> arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts:7:10: fatal error: 'dt-bindings/soc/rockchip,vop2.h' file not found
   #include <dt-bindings/soc/rockchip,vop2.h>
            ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   1 error generated.


vim +7 arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts

     2	
     3	/dts-v1/;
     4	#include <dt-bindings/gpio/gpio.h>
     5	#include <dt-bindings/leds/common.h>
     6	#include <dt-bindings/pinctrl/rockchip.h>
   > 7	#include <dt-bindings/soc/rockchip,vop2.h>
     8	#include "rk3568.dtsi"
     9	

---
0-DAY CI Kernel Test Service
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
