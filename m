Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 22600C433EF
	for <linux-rockchip@archiver.kernel.org>; Fri, 29 Apr 2022 01:57:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Y3sVytnpaAyoRdhqOWQTHEjVi8rHIPKeNZ52YJUNWJY=; b=zDZjchUF9fIA32
	dyfGs42ZB+YtrO8CMPDC9T2fkwkpGQF8CC9TQbTKM9dooCHPyh6AVHMmJ8wPC8O1WqDhfYAjhti2c
	oT6UgOVLpWsf/XcvN77OP2awjLOUGcwNvgFzQg9BUJgFJzGjUKeoxuTAJyFDqQ4JzmMHO/Qw9Lf+X
	685qTNkUD0bY03R906KBTZO2XbruWkNIBm131rH95VDlyiMu8pbhRuxsFwOQgUu94d+oDy4RVroR3
	+1alvfZD7bZaEfj5VoxJ0UOaQx2gB7vrxI84ROAlcJmNzsb0b7jAXTIGfq79kZ65rd6iW/5OpciPU
	PzmCV3eRwHvw8H76gD3g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nkFsV-009Gnn-WC; Fri, 29 Apr 2022 01:57:04 +0000
Received: from mga11.intel.com ([192.55.52.93])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nkFsK-009GlE-Fc; Fri, 29 Apr 2022 01:56:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1651197412; x=1682733412;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=CPEvDJ3ytBpYATJRkPLi382z+ezVo1awVW8z44TiQNE=;
 b=encZoSNKkCza09+RbVhxWywErCcEPzAS9eTF95JzuFURsgpkWJ+vZDHh
 Lt2QQF6GXo3u5wXT2jushJcH8T1KhGWGtsX/0RMU4g/5eTpY+GDnLBJZ3
 gT5J/Lbei3zM5VcxDTHGtZCdtjfb+jizrlObohysL4wphHKr03mMZJblX
 nkZpMc9b/fHouT6TTEfH9Et/A4zH32118Cg/uwSQ7aqRtoDp2fut6WwAA
 3GFXkG8epiruZ+cySKNWKLTV7NHB9RdcCwpm7NXdZSsixBSIpwQ1zPpri
 /kiuj49p2BB4SKG6lK9rUq4UqOChytDokLjpsrftZ/BacHzKBgfxYUHIz Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10331"; a="264082729"
X-IronPort-AV: E=Sophos;i="5.91,296,1647327600"; d="scan'208";a="264082729"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2022 18:56:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,296,1647327600"; d="scan'208";a="565900073"
Received: from lkp-server01.sh.intel.com (HELO 5056e131ad90) ([10.239.97.150])
 by fmsmga007.fm.intel.com with ESMTP; 28 Apr 2022 18:56:46 -0700
Received: from kbuild by 5056e131ad90 with local (Exim 4.95)
 (envelope-from <lkp@intel.com>) id 1nkFsD-0005rp-RA;
 Fri, 29 Apr 2022 01:56:45 +0000
Date: Fri, 29 Apr 2022 09:56:36 +0800
From: kernel test robot <lkp@intel.com>
To: Sebastian Reichel <sebastian.reichel@collabora.com>,
 Heiko Stuebner <heiko@sntech.de>
Cc: kbuild-all@lists.01.org, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzk@kernel.org>,
 Linus Walleij <linus.walleij@linaro.org>,
 Bartosz Golaszewski <brgl@bgdev.pl>,
 Adrian Hunter <adrian.hunter@intel.com>,
 Ulf Hansson <ulf.hansson@linaro.org>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Michael Turquette <mturquette@baylibre.com>,
 Stephen Boyd <sboyd@kernel.org>, linux-clk@vger.kernel.org,
 linux-mmc@vger.kernel.org, linux-gpio@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, kernel@lists.collabora.co.uk,
 Elaine Zhang <zhangqing@rock-chips.com>, kernel@collabora.com,
 Sebastian Reichel <sebastian.reichel@collabora.com>
Subject: Re: [PATCHv1 03/19] clk: rockchip: add pll type for RK3588
Message-ID: <202204290947.GtdwE4Zq-lkp@intel.com>
References: <20220422170920.401914-4-sebastian.reichel@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220422170920.401914-4-sebastian.reichel@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220428_185652_607148_EBAE7A8D 
X-CRM114-Status: GOOD (  15.46  )
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

Hi Sebastian,

Thank you for the patch! Perhaps something to improve:

[auto build test WARNING on robh/for-next]
[also build test WARNING on linusw-pinctrl/devel linus/master v5.18-rc4 next-20220428]
[cannot apply to rockchip/for-next]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch]

url:    https://github.com/intel-lab-lkp/linux/commits/Sebastian-Reichel/Basic-RK3588-Support/20220423-013425
base:   https://git.kernel.org/pub/scm/linux/kernel/git/robh/linux.git for-next
config: arm64-defconfig (https://download.01.org/0day-ci/archive/20220429/202204290947.GtdwE4Zq-lkp@intel.com/config)
compiler: aarch64-linux-gcc (GCC) 11.3.0
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # https://github.com/intel-lab-lkp/linux/commit/28c7fd4a10867094894809b60b86688817f70744
        git remote add linux-review https://github.com/intel-lab-lkp/linux
        git fetch --no-tags linux-review Sebastian-Reichel/Basic-RK3588-Support/20220423-013425
        git checkout 28c7fd4a10867094894809b60b86688817f70744
        # save the config file
        mkdir build_dir && cp config build_dir/.config
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=gcc-11.3.0 make.cross W=1 O=build_dir ARCH=arm64 SHELL=/bin/bash drivers/clk/rockchip/ drivers/media/platform/qcom/venus/

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

>> drivers/clk/rockchip/clk-pll.c:916: warning: This comment starts with '/**', but isn't a kernel-doc comment. Refer Documentation/doc-guide/kernel-doc.rst
    * PLL used in RK3588


vim +916 drivers/clk/rockchip/clk-pll.c

   914	
   915	/**
 > 916	 * PLL used in RK3588
   917	 */
   918	

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
