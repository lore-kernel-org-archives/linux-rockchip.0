Return-Path: <SRS0=+Xhu=LQ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
	autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7E7CAC2B9F4
	for <linux-rockchip@archiver.kernel.org>; Tue, 22 Jun 2021 10:53:24 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id F3410610C7
	for <linux-rockchip@archiver.kernel.org>; Tue, 22 Jun 2021 10:53:23 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org F3410610C7
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EbbrE6+aRkKz7ZtdVmH9v7xezF10r2PbDwYyPHMsKYU=; b=kEFCXDGhgbbS0P
	ayRY8UEa00Y/imFd1SFxJEy6VYJ7kb5O6aJV7ninhrxdKpj3gFmEZqAGW4Qly2+bgosoVpgcU/j2A
	Miws6hmYFGA8D1jQNX1n2MKdDyMkFFHQ3LuUH5YoUtFeW1Ddzu1i2qRy1MTaGkO0hjygnWhwbIX4r
	K0mqSYqzclD7D91PViNRGsnSOyGw3XJYtT+0hDmV80AyWA8rInBzYCRV65m9TlsUyHR8wizNXLxjh
	LGrpqb4DlWHKJTyUUYqLErIEZzpA4lUotLsm1LkZQ7+OJY4essExXNWA0VJvXw6PXNBP3wDg0FoVw
	inU7KbfP1UHjeJSb8hCg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lve1u-006mTm-SD; Tue, 22 Jun 2021 10:53:18 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lve1f-006mPl-1i; Tue, 22 Jun 2021 10:53:04 +0000
Received: from ip5f5aa64a.dynamic.kabel-deutschland.de ([95.90.166.74]
 helo=diego.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1lve1a-00039l-RM; Tue, 22 Jun 2021 12:52:58 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: cl@rock-chips.com, Johan Jonker <jbx6244@gmail.com>
Cc: robh+dt@kernel.org, jagan@amarulasolutions.com, wens@csie.org,
 uwe@kleine-koenig.org, mail@david-bauer.net,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, jensenhuang@friendlyarm.com,
 michael@amarulasolutions.com, cnsztl@gmail.com, devicetree@vger.kernel.org,
 ulf.hansson@linaro.org, linux-mmc@vger.kernel.org, gregkh@linuxfoundation.org,
 linux-serial@vger.kernel.org, linux-i2c@vger.kernel.org, jay.xu@rock-chips.com,
 shawn.lin@rock-chips.com, david.wu@rock-chips.com, zhangqing@rock-chips.com,
 huangtao@rock-chips.com, wim@linux-watchdog.org, linux@roeck-us.net,
 jamie@jamieiles.com, linux-watchdog@vger.kernel.org, maz@kernel.org
Subject: Re: [PATCH v5 3/4] arm64: dts: rockchip: add core dtsi for RK3568 SoC
Date: Tue, 22 Jun 2021 12:52:57 +0200
Message-ID: <5975924.neEnAmRlxL@diego>
In-Reply-To: <9515154d-f521-217c-af61-7cda089fbf15@gmail.com>
References: <20210622020517.13100-1-cl@rock-chips.com>
 <20210622020517.13100-4-cl@rock-chips.com>
 <9515154d-f521-217c-af61-7cda089fbf15@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210622_035303_157512_DE20038C 
X-CRM114-Status: GOOD (  34.78  )
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

Hi Johan,

Am Dienstag, 22. Juni 2021, 12:37:07 CEST schrieb Johan Jonker:
> Hi Chris, Heiko,
> 
> On 6/22/21 4:05 AM, cl@rock-chips.com wrote:
> > From: Liang Chen <cl@rock-chips.com>
> > 
> > RK3568 is a high-performance and low power quad-core application processor
> > designed for personal mobile internet device and AIoT equipment. This patch
> > add basic core dtsi file for it.
> > 
> > We use scmi_clk for cortex-a55 instead of standard ARMCLK, so that
> > kernel/uboot/rtos can change cpu clk with the same code in ATF, and we will
> > enalbe a special high-performance PLL when high frequency is required. The
> > smci_clk code is in ATF, and clkid for cpu is 0, as below:
> > 
> >     cpu0: cpu@0 {
> >         device_type = "cpu";
> >         compatible = "arm,cortex-a55";
> >         reg = <0x0 0x0>;
> >         clocks = <&scmi_clk 0>;
> >     };
> > 
> > Signed-off-by: Liang Chen <cl@rock-chips.com>
> > ---
> >  .../boot/dts/rockchip/rk3568-pinctrl.dtsi     | 3111 +++++++++++++++++
> >  arch/arm64/boot/dts/rockchip/rk3568.dtsi      |  777 ++++
> >  2 files changed, 3888 insertions(+)
> >  create mode 100644 arch/arm64/boot/dts/rockchip/rk3568-pinctrl.dtsi
> >  create mode 100644 arch/arm64/boot/dts/rockchip/rk3568.dtsi
> > 
> > diff --git a/arch/arm64/boot/dts/rockchip/rk3568-pinctrl.dtsi b/arch/arm64/boot/dts/rockchip/rk3568-pinctrl.dtsi
> > new file mode 100644
> > index 000000000000..a588ca95ace2
> > --- /dev/null
> > +++ b/arch/arm64/boot/dts/rockchip/rk3568-pinctrl.dtsi
> > @@ -0,0 +1,3111 @@
> > +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> > +/*
> > + * Copyright (c) 2021 Rockchip Electronics Co., Ltd.
> > + */
> > +
> > +#include <dt-bindings/pinctrl/rockchip.h>
> 
> > +#include "rockchip-pinconf.dtsi"
> 
> Question for Heiko:
> 
> This file is put in the arm64 directory.
> Is it useful for ARM as well?
> Should the ARM directory have it's own or use a long include?
> 
> ARM:
> #include "../../../arm64/boot/dts/rockchip/rockchip-pinconf.dtsi"
> 
> arm64:
> #include "rockchip-pinconf.dtsi"
> 
> Is it complete or does it need more items?
> (Who's going to change that?)

my original plan was to start out with rk3568, then see if we can convert
more arm64 socs to it after that and then think about "legacy" arm32 ;-)

So I have no hard opinion on whether we want to have a separate dtsi
for arm32 or link to the arm64 one yet.

We have this long-linking for for board-level includes already in some
places, so it's not that uncommon, but on the other hand having a
separate dtsi for arm32 could also make sense, as the arm64 pinctrl
features got quite a bit expanded on newer SoCs.


Heiko


> 
> arch/arm/boot/dts/rk3066a.dtsi:373.23-375.6: ERROR (phandle_references):
> /pinctrl/emmc/emmc-clk: Reference to non-existent node or label
> "pcfg_pull_default"
> 
> arch/arm/boot/dts/rv1108.dtsi:645.25-654.6: ERROR (phandle_references):
> /pinctrl/emmc/emmc-bus8: Reference to non-existent node or label
> "pcfg_pull_up_drv_8ma"
> 
> arch/arm64/boot/dts/rockchip/px30.dtsi:1470.23-1473.6: ERROR
> (phandle_references): /pinctrl/spi0/spi0-clk: Reference to non-existent
> node or label "pcfg_pull_up_4ma"
> 
> arch/arm64/boot/dts/rockchip/px30.dtsi:1490.29-1493.6: ERROR
> (phandle_references): /pinctrl/spi0/spi0-clk-hs: Reference to
> non-existent node or label "pcfg_pull_up_8ma"
> 
> arch/arm64/boot/dts/rockchip/px30.dtsi:1589.39-1592.6: ERROR
> (phandle_references): /pinctrl/pdm/pdm-clk0m0-sleep: Reference to
> non-existent node or label "pcfg_input_high"
> 
> arch/arm64/boot/dts/rockchip/px30.dtsi:1903.49-1906.6: ERROR
> (phandle_references): /pinctrl/lcdc/lcdc-rgb-m0-hsync-pin: Reference to
> non-existent node or label "pcfg_pull_none_12ma"
> 
> etc..
> 
> > +
> > +/*
> > + * This file is auto generated by pin2dts tool, please keep these code
> > + * by adding changes at end of this file.
> > + */
> > +&pinctrl {
> 
> [..]
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
