Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6C353CFD2E0
	for <linux-rockchip@archiver.kernel.org>; Fri, 11 Oct 2024 08:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=O85E42xlXSFQrva483QwIiVvDbyGfUAo+SBJAWyq9eE=; b=r7GcBJaF/cgjBd
	Je2ZovZ7jhGS4pablkdghp3T3YrPrDHU+bcxklhz7kMhTWa+fYZf1pcN93u6fh1ycBoybDYMuye5z
	JNAgOZfiukgYleiv76zxnKsEEPgVGSSH8S5O/NJhm3f6S696uZ6Q5W3c2x9XTygDlFKv4QPw1xtmT
	Ao8C33XpwxN9UPrqqxcmSXSlS0vB/IydObSpBNeByRdYoO66E2WCwNjQvooCjo1AfeJyuIKwmqw1i
	c1QLxzwsMLIdf3HzmAKDetMhAM3O/uFsfcDQju/qbDK3q17RyGBqHY9OLi0klBwVXjZH/ZXrQLjtv
	8wjv/phjBdqWEB0ofzBg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1szBFV-0000000FiHB-1cMQ;
	Fri, 11 Oct 2024 08:43:49 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1szBFS-0000000FiFa-1FeU;
	Fri, 11 Oct 2024 08:43:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=reuDQlwZETnYSzS/i7ijoLlelnSTU2XRw/IvwMzVWMQ=; b=Z6lvzrqv5WpV5ajzRR/JH6hisw
	dg1veub6KgDb9AV1WD8qUiRRk8EiTl51ZC5GVO0zbAgcMvBZwYGufCH2haBjfbx/CM3DDq7sr9dQs
	07dztG9S5r4ggIjCqSXp8S9FiuyBDR2hNeXLh/wYw316xmyA2z65xRvwEyn5khM781blw10YTfgn5
	UoshcCss63COWkW1F4SMHNCXXgofjrBecZF4GJoptW7KsLoKsJSazL5L15CPDnI/PoPzdthOYzc0v
	7RbJalfaxHxJ357BL4Z23cvP/x8uJGcXo1lYSesI6xw9aLk6FCXSNll8MMPEKutfzxnQEV8Cj3X0O
	k2L2tMpA==;
Received: from i53875b34.versanet.de ([83.135.91.52] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1szBFP-0005Ig-7T; Fri, 11 Oct 2024 10:43:43 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Dragan Simic <dsimic@manjaro.org>,
 Diederik de Haas <didi.debian@cknow.org>
Cc: linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org
Subject: Re: [PATCH v2] arm64: dts: rockchip: Add dtsi file for RK3399S SoC variant
Date: Fri, 11 Oct 2024 10:43:42 +0200
Message-ID: <1999678.yKVeVyVuyW@diego>
In-Reply-To: <D4SU6WHZCN34.2XL5W4D2T188G@cknow.org>
References: <c32622e4a6897378d9df81c8c3eda1bdb9211e0b.1728632052.git.dsimic@manjaro.org>
 <20da65423e77e13511cc7c7bb39e0246@manjaro.org>
 <D4SU6WHZCN34.2XL5W4D2T188G@cknow.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241011_014346_379271_41B2DC88 
X-CRM114-Status: GOOD (  35.93  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
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

Am Freitag, 11. Oktober 2024, 10:33:56 CEST schrieb Diederik de Haas:
> Hi Dragan,
> 
> On Fri Oct 11, 2024 at 10:23 AM CEST, Dragan Simic wrote:
> > On 2024-10-11 10:00, Diederik de Haas wrote:
> > > On Fri Oct 11, 2024 at 9:40 AM CEST, Dragan Simic wrote:
> > >> Following the hierarchical representation of the SoC data that's been 
> > >> already
> > >> established in the commit 296602b8e5f7 ("arm64: dts: rockchip: Move 
> > >> RK3399
> > >> OPPs to dtsi files for SoC variants"), add new SoC dtsi file for the 
> > >> Rockchip
> > >> RK3399S SoC, which is yet another variant of the Rockchip RK3399 SoC.
> > >> ...
> > >> The RK3399S variant is used in the Pine64 PinePhone Pro only, [1] 
> > >> whose board
> > >> dts file included the necessary adjustments to the CPU DVFS OPPs.  
> > >> This commit
> > >> effectively moves those adjustments into the separate RK3399S SoC dtsi 
> > >> file,
> > >> following the above-mentioned "encapsulation" approach.
> > >> ...
> > >> ---
> > >> ...
> > >>  .../dts/rockchip/rk3399-pinephone-pro.dts     |  23 +---
> > >>  arch/arm64/boot/dts/rockchip/rk3399-s.dtsi    | 123 
> > >> ++++++++++++++++++
> > >>  2 files changed, 124 insertions(+), 22 deletions(-)
> > >>  create mode 100644 arch/arm64/boot/dts/rockchip/rk3399-s.dtsi
> > >> 
> > >> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-pinephone-pro.dts 
> > >> b/arch/arm64/boot/dts/rockchip/rk3399-pinephone-pro.dts
> > >> index 1a44582a49fb..eee6cfb6de01 100644
> > >> --- a/arch/arm64/boot/dts/rockchip/rk3399-pinephone-pro.dts
> > >> +++ b/arch/arm64/boot/dts/rockchip/rk3399-pinephone-pro.dts
> > >> @@ -13,7 +13,7 @@
> > >>  #include <dt-bindings/input/gpio-keys.h>
> > >>  #include <dt-bindings/input/linux-event-codes.h>
> > >>  #include <dt-bindings/leds/common.h>
> > >> -#include "rk3399.dtsi"
> > >> +#include "rk3399-s.dtsi"
> > >> 
> > >>  / {
> > >>  	model = "Pine64 PinePhone Pro";
> > >> @@ -456,27 +456,6 @@ mpu6500@68 {
> > >>  	};
> > >>  };
> > >> 
> > >> -&cluster0_opp {
> > >> -	opp04 {
> > >> -		status = "disabled";
> > >> -	};
> > >> -
> > >> -	opp05 {
> > >> -		status = "disabled";
> > >> -	};
> > >> -};
> > >> -
> > >> -&cluster1_opp {
> > >> -	opp06 {
> > >> -		opp-hz = /bits/ 64 <1500000000>;
> > >> -		opp-microvolt = <1100000 1100000 1150000>;
> > >> -	};
> > >> -
> > >> -	opp07 {
> > >> -		status = "disabled";
> > >> -	};
> > >> -};
> > >> -
> > >>  &io_domains {
> > >>  	bt656-supply = <&vcc1v8_dvp>;
> > >>  	audio-supply = <&vcca1v8_codec>;
> > >> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-s.dtsi 
> > >> b/arch/arm64/boot/dts/rockchip/rk3399-s.dtsi
> > >> new file mode 100644
> > >> index 000000000000..e54f451af9f3
> > >> --- /dev/null
> > >> +++ b/arch/arm64/boot/dts/rockchip/rk3399-s.dtsi
> > >> @@ -0,0 +1,123 @@
> > >> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> > >> +/*
> > >> + * Copyright (c) 2016-2017 Fuzhou Rockchip Electronics Co., Ltd
> > >> + */
> > >> +
> > >> +#include "rk3399-base.dtsi"
> > >> +
> > >> +/ {
> > >> +	cluster0_opp: opp-table-0 {
> > >> +		compatible = "operating-points-v2";
> > >> +		opp-shared;
> > >> +
> > >> +		opp00 {
> > >> +			opp-hz = /bits/ 64 <408000000>;
> > >> +			opp-microvolt = <825000 825000 1250000>;
> > >> +			clock-latency-ns = <40000>;
> > >> +		};
> > >> +		opp01 {
> > >> +			opp-hz = /bits/ 64 <600000000>;
> > >> +			opp-microvolt = <825000 825000 1250000>;
> > >> +		};
> > >> +		opp02 {
> > >> +			opp-hz = /bits/ 64 <816000000>;
> > >> +			opp-microvolt = <850000 850000 1250000>;
> > >> +		};
> > > 
> > > Is there a reason why there isn't a line separator between the various
> > > opp nodes? Normally there is one between nodes.
> > > Note that in rk3588-opp.dtsi there are no separator lines between the
> > > opp nodes, while they do exist between other nodes.
> > > And in rk356x.dtsi the opp nodes do have a separator line.
> >
> > That has also bothered me. :)  I already had a look around in various
> > dts(i) files long time ago and there seems to be no preferred layout.

I guess "with" lines in between is sort-of preferred in general.
I sometime add them in new board-dts when applying and noticing them,
but also sometimes miss them.

I guess empty lines are helpful when the nodes are "not the same",
but I guess for OPPs it doesn't matter so much, as the individual nodes
are all the same.


But in the end, I guess just follow the other OPPs in rk3399 for now ;-)
[as this patch does]

> I'm inclined to say the opp ones are the odd ones.
> 
> > In this particular case, it's better to have no separator lines because
> > that's what we already have lacking in rk3399.dtsi, rk3399-t.dtsi, etc.,
> > so running something like "diff rk3399.dtsi rk3399-s.dtsi" makes it easy
> > to see what actually differs in the RK3399 SoC variants, without having
> > to filter out any whitespace differences.
> 
> Besides that inconsistencies always seem to 'trigger' me, I especially
> noticed it as this patch changed it from having separator lines to
> having no separator lines.
> 
> Cheers,
>   Diederik
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
