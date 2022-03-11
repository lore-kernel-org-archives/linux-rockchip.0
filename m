Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1B19BC433EF
	for <linux-rockchip@archiver.kernel.org>; Fri, 11 Mar 2022 10:18:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Z1LasftGJA8bY0cuukCvjlHteyIK4OBRATiOjgmW+5A=; b=BplQjJTkDxTn6Q
	9cBxsjukeyEbmk4pYRatrTIyQMLOAenPf5r7KPDWo6+gFnkSHY/rKXAWH51bAELbTPUmdc3Nfp7TX
	Enw3Oy4gylJ6tznLhgcA+PUnVyUZdOrmasKjTF5MIfMkwUAgTZCmWY5iDS008pSZ+wsnqa5LmjtE5
	0+gxVZyyO97fxEz3Zeu4Nl6fcOFdzkxoyhtSmy0pM4Gl7fq2PTGVObuWIYRA5Xbgr5jbC3FbpQXzz
	7X+hhUCeOSr9CI9V6t+XTOq0XnM+GkOlF+ESXp/fZ3EHlxi/QpBuzXqJNp52EHiMlnhHQL9ORliZN
	mT2kwT8ivTUsgYwEMsRA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nScLV-00FwMD-Ta; Fri, 11 Mar 2022 10:18:05 +0000
Received: from mga05.intel.com ([192.55.52.43])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nScLH-00FwH4-B1; Fri, 11 Mar 2022 10:17:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646993871; x=1678529871;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=+LjOB20oVdehomA2CPIjXQ6CgHOt2iZi87uf/hj9YIg=;
 b=E8DWVJNNYR0zUVnYjnyFYKYiFu1U+rzESGKaHnL5B3QbpYVMqNd70zXB
 Sy2Mgj67STwvKwwKwrJRxyhVF9pWu4KihnLfLq02GqzbyHmQLEAQSal8j
 EvqiKNxBIj8IBl3wUFa4zb4q3DYuz34AjJwXuzZtcOLtKJChOMUUA4Wmd
 8cB+msmwbd23PfvWszxKfgBwPW7L5JbFoMnv2jLQy1UNNJhQSHukjykFT
 eIlwLAhP5hK8KDa9O9PU0X5Szzq41n6oha1WYd/TQ/JLJAp7L5BE8DmBG
 0CwrVv36yvJPXuaD60tUv8XTxisZY6V06mYXcRkcHnhVZbP7MZZdVN8aK g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10282"; a="341974387"
X-IronPort-AV: E=Sophos;i="5.90,173,1643702400"; d="scan'208";a="341974387"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2022 02:17:49 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,173,1643702400"; d="scan'208";a="496722590"
Received: from lkp-server02.sh.intel.com (HELO 89b41b6ae01c) ([10.239.97.151])
 by orsmga003.jf.intel.com with ESMTP; 11 Mar 2022 02:17:45 -0800
Received: from kbuild by 89b41b6ae01c with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1nScLA-0006Eu-Fl; Fri, 11 Mar 2022 10:17:44 +0000
Date: Fri, 11 Mar 2022 18:17:40 +0800
From: kernel test robot <lkp@intel.com>
To: Michael Riesch <michael.riesch@wolfvision.net>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Cc: kbuild-all@lists.01.org, Rob Herring <robh+dt@kernel.org>,
 Heiko Stuebner <heiko@sntech.de>, Levin Du <djw@t-chip.com.cn>,
 Tianling Shen <cnsztl@gmail.com>, Chen-Yu Tsai <wenst@chromium.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Alex Bee <knaerzche@gmail.com>, Liang Chen <cl@rock-chips.com>,
 Peter Geis <pgwipeout@gmail.com>,
 Michael Riesch <michael.riesch@wolfvision.net>
Subject: Re: [PATCH v2 3/3] arm64: dts: rockchip: enable vop2 and hdmi tx on
 rock-3a
Message-ID: <202203111851.n5LAS0gw-lkp@intel.com>
References: <20220310210352.451136-4-michael.riesch@wolfvision.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220310210352.451136-4-michael.riesch@wolfvision.net>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220311_021751_577458_18966C17 
X-CRM114-Status: GOOD (  15.92  )
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
[also build test ERROR on arm/for-next xilinx-xlnx/master arm64/for-next/core shawnguo/for-next clk/clk-next kvmarm/next v5.17-rc7]
[cannot apply to rockchip/for-next soc/for-next next-20220310]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch]

url:    https://github.com/0day-ci/linux/commits/Michael-Riesch/arm64-dts-rockchip-add-basic-dts-for-the-radxa-rock3-model-a/20220311-050612
base:   https://git.kernel.org/pub/scm/linux/kernel/git/robh/linux.git for-next
config: arm64-buildonly-randconfig-r002-20220310 (https://download.01.org/0day-ci/archive/20220311/202203111851.n5LAS0gw-lkp@intel.com/config)
compiler: aarch64-linux-gcc (GCC) 11.2.0
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # https://github.com/0day-ci/linux/commit/c217f194b7a9cbdb7cbb8149ae1f6e8c2faf6e3f
        git remote add linux-review https://github.com/0day-ci/linux
        git fetch --no-tags linux-review Michael-Riesch/arm64-dts-rockchip-add-basic-dts-for-the-radxa-rock3-model-a/20220311-050612
        git checkout c217f194b7a9cbdb7cbb8149ae1f6e8c2faf6e3f
        # save the config file to linux build tree
        mkdir build_dir
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=gcc-11.2.0 make.cross O=build_dir ARCH=arm64 SHELL=/bin/bash

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

>> arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts:7:10: fatal error: dt-bindings/soc/rockchip,vop2.h: No such file or directory
       7 | #include <dt-bindings/soc/rockchip,vop2.h>
         |          ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   compilation terminated.


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
