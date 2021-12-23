Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 239F0C433F5
	for <linux-rockchip@archiver.kernel.org>; Thu, 23 Dec 2021 11:20:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bdNIRj+WajeD7REzNHX9j2jRUbpOFDKU3M1Q6cfblcs=; b=YF6gN3JAIcSK0w
	qnBNO/bAKeeP9yy5vd1jl6W2EVP/drpPpk1vUMEvj4A39HCJja3szN8A9kLOyalFgGPWjnsithjB7
	1vsJEJGeekZhkaFCe+wg4UPyVJUWQLHgeuxVBXCJY5e31PoUAQ8+YvZvSgAZi81FWVME4XU2yTqoe
	gH1DbhEgm0xkidWdmBWTw9HivmCIZrM2GIurROF1JemIPmpP+MLu9bsnbXiZxh13ds9D9vk5PMT6L
	IOgETC5tY9CCKHXHc+8e7HgjMvVnNL1HsgCSqn0PSfaaf328iUZKQ5qcIDJZyoxD6gvWxlfJxV4Hv
	DlLU6f16KxF4tFVH10kA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n0M8c-00CZLo-SY; Thu, 23 Dec 2021 11:19:58 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n0M8Q-00CZJs-Qw; Thu, 23 Dec 2021 11:19:48 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by sin.source.kernel.org (Postfix) with ESMTPS id 77B16CE1FDC;
 Thu, 23 Dec 2021 11:19:43 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B4FF7C36AE5;
 Thu, 23 Dec 2021 11:19:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1640258381;
 bh=9as6QT34cWbvbNObFkKEmAbbIbFepkq9xGUjBBZthCc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=rsNQ3Cgzqe76Nl7jbeA9jP9g0EAb1BuYU9G0thpzhEr1KRhlP+Ah7r3RM2zycMkSw
 O0C1Xqs9fCGzdUvDP+wsvqIXDPlcDCssAkeBdx0LC9OOOSvwxax+RXUZ9DPHHYVv21
 yJ8wNQhdjgEquae/DyWWNQVKVIbn2xk07uZeRBCx+It5B0SJS/qVsS238HZMnoPhEX
 pHuTcbsU4foxjQAr3cSYHr4uOXYCkbsliFZsSzfKtO1MTJLfYL5VOxdeCoRmNEstiX
 ldPVrWvV5zbl+2AapLt2zX2mcvkQXiKMlqNrGRBrAiGWo84ik7NJDwGBtfCFuAAP8j
 4wPEIaf4g7Mcw==
Date: Thu, 23 Dec 2021 16:49:37 +0530
From: Vinod Koul <vkoul@kernel.org>
To: kernel test robot <lkp@intel.com>
Cc: Yifeng Zhao <yifeng.zhao@rock-chips.com>, heiko@sntech.de,
 kbuild-all@lists.01.org, robh+dt@kernel.org, jbx6244@gmail.com,
 devicetree@vger.kernel.org, michael.riesch@wolfvision.net,
 linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org
Subject: Re: [PATCH v5 3/4] phy: rockchip: add naneng combo phy for RK3568
Message-ID: <YcRbST7GDTNiZAkn@matsya>
References: <20211215095657.13183-4-yifeng.zhao@rock-chips.com>
 <202112160605.2BqI0hlK-lkp@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <202112160605.2BqI0hlK-lkp@intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211223_031947_251248_FF265674 
X-CRM114-Status: GOOD (  21.54  )
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

On 16-12-21, 06:47, kernel test robot wrote:
> Hi Yifeng,
> 
> Thank you for the patch! Yet something to improve:
> 
> [auto build test ERROR on rockchip/for-next]
> [also build test ERROR on robh/for-next lee-mfd/for-mfd-next v5.16-rc5 next-20211214]
> [If your patch is applied to the wrong git tree, kindly drop us a note.
> And when submitting patch, we suggest to use '--base' as documented in
> https://git-scm.com/docs/git-format-patch]
> 
> url:    https://github.com/0day-ci/linux/commits/Yifeng-Zhao/Add-Naneng-combo-PHY-support-for-RK3568/20211215-180610
> base:   https://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git for-next
> config: arm64-allyesconfig (https://download.01.org/0day-ci/archive/20211216/202112160605.2BqI0hlK-lkp@intel.com/config)
> compiler: aarch64-linux-gcc (GCC) 11.2.0
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # https://github.com/0day-ci/linux/commit/5e4ddb08d86d5232174d88483f29e96272a4b6c0
>         git remote add linux-review https://github.com/0day-ci/linux
>         git fetch --no-tags linux-review Yifeng-Zhao/Add-Naneng-combo-PHY-support-for-RK3568/20211215-180610
>         git checkout 5e4ddb08d86d5232174d88483f29e96272a4b6c0
>         # save the config file to linux build tree
>         mkdir build_dir
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=gcc-11.2.0 make.cross O=build_dir ARCH=arm64 SHELL=/bin/bash
> 
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
> 
> All errors (new ones prefixed by >>):
> 
>    drivers/phy/rockchip/phy-rockchip-naneng-combphy.c: In function 'rk3568_combphy_cfg':
> >> drivers/phy/rockchip/phy-rockchip-naneng-combphy.c:22:47: error: 'HZ_PER_MHZ' undeclared (first use in this function)
>       22 | #define REF_CLOCK_24MHz                 (24 * HZ_PER_MHZ)
>          |                                               ^~~~~~~~~~

You need to add the header to your driver for this

>    drivers/phy/rockchip/phy-rockchip-naneng-combphy.c:490:14: note: in expansion of macro 'REF_CLOCK_24MHz'
>      490 |         case REF_CLOCK_24MHz:
>          |              ^~~~~~~~~~~~~~~
>    drivers/phy/rockchip/phy-rockchip-naneng-combphy.c:22:47: note: each undeclared identifier is reported only once for each function it appears in
>       22 | #define REF_CLOCK_24MHz                 (24 * HZ_PER_MHZ)
>          |                                               ^~~~~~~~~~
>    drivers/phy/rockchip/phy-rockchip-naneng-combphy.c:490:14: note: in expansion of macro 'REF_CLOCK_24MHz'
>      490 |         case REF_CLOCK_24MHz:
>          |              ^~~~~~~~~~~~~~~
> 
> 
> vim +/HZ_PER_MHZ +22 drivers/phy/rockchip/phy-rockchip-naneng-combphy.c
> 
>     20	
>     21	#define BIT_WRITEABLE_SHIFT		16
>   > 22	#define REF_CLOCK_24MHz			(24 * HZ_PER_MHZ)
>     23	#define REF_CLOCK_25MHz			(25 * HZ_PER_MHZ)
>     24	#define REF_CLOCK_100MHz		(100 * HZ_PER_MHZ)
>     25	
> 
> ---
> 0-DAY CI Kernel Test Service, Intel Corporation
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
~Vinod

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
