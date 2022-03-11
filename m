Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 31238C433EF
	for <linux-rockchip@archiver.kernel.org>; Fri, 11 Mar 2022 21:51:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zAbmmWYKerH1fvAaq/ijD9PUN+XS9LUhONHCrQ/5aiQ=; b=Q9yyZfKoB3MvEw
	2rf2be9/gdhe/Yyvsp86KAZvYd+IDKjPcARbURizhp76ewVfUm8BUQBdH68nAyje5SVbEgQdaZR8p
	8felGFkfBReRkgzHC/WM+iwILItq0tf2rqm3JkohfpRhgJMZslh3JKH1Ue8zi5F1QU22j0V7/vyFd
	MAivExWn5TLwELOmoCTPbbo8Ul+qUS3mj9MBOByWg8JoAY3yKFDNfQdtCkJ0C1E6IP0VuZgXhhSU4
	6JCI4ECvXpbJw4KEb+h6cFbDoGVyVxXZLycD8j+wSKhu00p28MEjlYX4Z/VjuIXnJJYajH4piHZJn
	V4z52B5x0ZbUiiVnHkeQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nSnAX-000MXD-SZ; Fri, 11 Mar 2022 21:51:29 +0000
Received: from mga02.intel.com ([134.134.136.20])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nSnAL-000MWe-Uu; Fri, 11 Mar 2022 21:51:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647035477; x=1678571477;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=TII6J4aKIbWXaAC0bycqdUuzXY20aYHTjj7YIZmiAvQ=;
 b=BYbUjfCoxlDIAxhTXUwIcalNHpkur0eMTpeb6joIjQd0UUYBrLxCtB02
 2GaOQEBwkJUrk1AgywDuYKMXzuK92XdDdtCB0oFAj03uJk87xvAeljtsx
 a2M+DXzzkC4Q5oeTGNTmwnySj2u6KoGpI/PI8337jIP3O99IpTa9oK6LU
 b0MxUbGxhFJkCGA0JGlkPTbNd9q0ofTQH+5/TqgXHt8nrrexFUZ51QX9e
 togzu0CU1/uiJ8ieCwnlqvdWPOn/mtO7P9dxZa2NesjJ89+BQQzXFcQlI
 Z6/lbGCzdVi1oU6akW9au8wtpo/4EB96xxyRQEX9keHTvRiflz9ChYOoW w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10283"; a="243107103"
X-IronPort-AV: E=Sophos;i="5.90,174,1643702400"; d="scan'208";a="243107103"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2022 13:51:16 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,174,1643702400"; d="scan'208";a="496890795"
Received: from lkp-server02.sh.intel.com (HELO 89b41b6ae01c) ([10.239.97.151])
 by orsmga003.jf.intel.com with ESMTP; 11 Mar 2022 13:51:12 -0800
Received: from kbuild by 89b41b6ae01c with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1nSnAG-00079K-09; Fri, 11 Mar 2022 21:51:12 +0000
Date: Sat, 12 Mar 2022 05:50:54 +0800
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
Subject: Re: [PATCH v2 2/3] arm64: dts: rockchip: add basic dts for the radxa
 rock3 model a
Message-ID: <202203120525.muN78AQX-lkp@intel.com>
References: <20220310210352.451136-3-michael.riesch@wolfvision.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220310210352.451136-3-michael.riesch@wolfvision.net>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220311_135118_105721_C60212B9 
X-CRM114-Status: GOOD (  16.77  )
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
config: arm64-buildonly-randconfig-r002-20220310 (https://download.01.org/0day-ci/archive/20220312/202203120525.muN78AQX-lkp@intel.com/config)
compiler: aarch64-linux-gcc (GCC) 11.2.0
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # https://github.com/0day-ci/linux/commit/8d0dad8b66056847b8a2e95272ee74ca4b12fd29
        git remote add linux-review https://github.com/0day-ci/linux
        git fetch --no-tags linux-review Michael-Riesch/arm64-dts-rockchip-add-basic-dts-for-the-radxa-rock3-model-a/20220311-050612
        git checkout 8d0dad8b66056847b8a2e95272ee74ca4b12fd29
        # save the config file to linux build tree
        mkdir build_dir
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=gcc-11.2.0 make.cross O=build_dir ARCH=arm64 SHELL=/bin/bash

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

Note: the linux-review/Michael-Riesch/arm64-dts-rockchip-add-basic-dts-for-the-radxa-rock3-model-a/20220311-050612 HEAD c217f194b7a9cbdb7cbb8149ae1f6e8c2faf6e3f builds fine.
      It only hurts bisectability.

All errors (new ones prefixed by >>):

>> Error: arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts:132.1-5 Label or path gpu not found
>> Error: arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts:473.1-16 Label or path usb_host0_ehci not found
>> Error: arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts:477.1-16 Label or path usb_host0_ohci not found
>> Error: arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts:481.1-16 Label or path usb_host1_ehci not found
>> Error: arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts:485.1-16 Label or path usb_host1_ohci not found
>> Error: arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts:489.1-10 Label or path usb2phy1 not found
>> Error: arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts:493.1-15 Label or path usb2phy1_host not found
>> Error: arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts:498.1-14 Label or path usb2phy1_otg not found
>> FATAL ERROR: Syntax error parsing input tree

---
0-DAY CI Kernel Test Service
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
