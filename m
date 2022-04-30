Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5290DC4332F
	for <linux-rockchip@archiver.kernel.org>; Sat, 30 Apr 2022 16:57:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9A5PcxMh0IrfhCoyBtqnrAe1OBbDhngrBf3iAalXJcc=; b=i9XB2Ydc+RLe41
	Wc1Whz3b8IY+WeBWptS9xu8qKxcyDK6sXu1u0+lINKEL8gDg9fQQE1G45B3KjqJeUVJWAMMlV+Qda
	82qhNF6m9dob2L3nWWncuoBdHe6Hurln7lRZsKn8/RUL8PIGYxOIAW+1/5AIJaBzgd4+kKzd8qwo8
	mlAKSSuBjKuxkJKS8GNa+0SutiV7Q2Yi9NQxJVxvqkN41sBVO2B5Jx9g6gBGi1Md3teO33kM8oBr2
	MIf1P5H4hx05TJBbphrjZmXlJonqoG0p8RPKmEX0XcENcmG2klZLaLvNppHmd1s9cv/F2K4bjqSWx
	Zwy7bCi00Twi3cq7wyTg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nkqPK-00Egfg-SO; Sat, 30 Apr 2022 16:57:22 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nkqPH-00EgfB-7u; Sat, 30 Apr 2022 16:57:20 +0000
Received: from ip5b412258.dynamic.kabel-deutschland.de ([91.65.34.88]
 helo=diego.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1nkqP3-0002Do-Ak; Sat, 30 Apr 2022 18:57:05 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: kernel test robot <lkp@intel.com>, Peter Geis <pgwipeout@gmail.com>,
 Krzysztof Kozlowski <krzk@kernel.org>
Cc: "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Rob Herring <robh+dt@kernel.org>, llvm@lists.linux.dev,
 kbuild-all@lists.01.org, devicetree <devicetree@vger.kernel.org>,
 arm-mail-list <linux-arm-kernel@lists.infradead.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v2 5/7] arm64: dts: rockchip: add Pine64 Quartz64-B device
 tree
Date: Sat, 30 Apr 2022 18:57:04 +0200
Message-ID: <7373923.EvYhyI6sBW@diego>
In-Reply-To: <CAMdYzYoBgeTthb8-uycis+BPDmSC5OGVHz2doKYLeh3OY1m_vQ@mail.gmail.com>
References: <20220429115252.2360496-6-pgwipeout@gmail.com>
 <202204300850.X97CRcO6-lkp@intel.com>
 <CAMdYzYoBgeTthb8-uycis+BPDmSC5OGVHz2doKYLeh3OY1m_vQ@mail.gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220430_095719_363667_398D2D6C 
X-CRM114-Status: GOOD (  25.65  )
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

Am Samstag, 30. April 2022, 16:46:31 CEST schrieb Peter Geis:
> On Fri, Apr 29, 2022 at 8:17 PM kernel test robot <lkp@intel.com> wrote:
> >
> > Hi Peter,
> >
> > I love your patch! Yet something to improve:
> >
> > [auto build test ERROR on robh/for-next]
> > [also build test ERROR on arm/for-next arm64/for-next/core clk/clk-next kvmarm/next shawnguo/for-next soc/for-next v5.18-rc4]
> > [cannot apply to rockchip/for-next xilinx-xlnx/master keystone/next next-20220429]
> > [If your patch is applied to the wrong git tree, kindly drop us a note.
> > And when submitting patch, we suggest to use '--base' as documented in
> > https://git-scm.com/docs/git-format-patch]
> 
> The three new device trees are dependent on my usb series which was
> accepted through Heiko's tree.
> I can drop the xhci dependency, but this will just happen again adding
> it back in if it's done in this RC series.

Of course dropping that part is not necessary :-)
I.e. the dependency is in my tree and this stuff will go on top.

I'm just not sure if I should give Krzysztof more time for patch1.
The binding of course looks great now already, I guess I'll let the
Quartz-B sit some days more.


Heiko

> 
> >
> > url:    https://github.com/intel-lab-lkp/linux/commits/Peter-Geis/Add-support-for-several-new-rk3566-SBCs/20220429-195433
> > base:   https://git.kernel.org/pub/scm/linux/kernel/git/robh/linux.git for-next
> > config: arm64-randconfig-r021-20220428 (https://download.01.org/0day-ci/archive/20220430/202204300850.X97CRcO6-lkp@intel.com/config)
> > compiler: clang version 15.0.0 (https://github.com/llvm/llvm-project 400775649969b9baf3bc2a510266e7912bb16ae9)
> > reproduce (this is a W=1 build):
> >         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
> >         chmod +x ~/bin/make.cross
> >         # install arm64 cross compiling tool for clang build
> >         # apt-get install binutils-aarch64-linux-gnu
> >         # https://github.com/intel-lab-lkp/linux/commit/d933bfeea016da20a99bce012bbf071f9d86e2bf
> >         git remote add linux-review https://github.com/intel-lab-lkp/linux
> >         git fetch --no-tags linux-review Peter-Geis/Add-support-for-several-new-rk3566-SBCs/20220429-195433
> >         git checkout d933bfeea016da20a99bce012bbf071f9d86e2bf
> >         # save the config file
> >         mkdir build_dir && cp config build_dir/.config
> >         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross W=1 O=build_dir ARCH=arm64 SHELL=/bin/bash
> >
> > If you fix the issue, kindly add following tag as appropriate
> > Reported-by: kernel test robot <lkp@intel.com>
> >
> > All errors (new ones prefixed by >>):
> >
> > >> Error: arch/arm64/boot/dts/rockchip/rk3566-quartz64-b.dts:601.1-16 Label or path usb_host0_xhci not found
> > >> Error: arch/arm64/boot/dts/rockchip/rk3566-quartz64-b.dts:605.1-16 Label or path usb_host1_xhci not found
> >    FATAL ERROR: Syntax error parsing input tree
> >
> > --
> > 0-DAY CI Kernel Test Service
> > https://01.org/lkp
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
