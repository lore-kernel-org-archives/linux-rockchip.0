Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CB1C6C3DA61
	for <linux-rockchip@archiver.kernel.org>; Sat, 27 Jul 2024 11:26:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=g/Q0hC91buuUwnRSSfFJbGxFKs5Ec4Gi3sttLisd5SI=; b=YVgDghbPna+pzD
	+cY/zqY9cBF9kHMiy0VowYuHpwnT6kWYCCdXq4JyhEZo8J16qM70ZoU8zCalDH3P01WOhf6ARiV11
	wQwzR/rWVIIm/aAYUuv6BAe4TvHTtz2RhG5sMfZVv1pwnSGkjuoSZmLUljrsNaLruVMI40hp484H0
	cuuJdgQ0sUIvnFeh/OHqyUmPQLuiQGQYrLovI2eysyUU2S1mKd0uDA/6o4Qo6m6HTBulMUdDOFV0c
	tunOHtoRspcaO4S0lh4j8fr4qWiMhuH9X5quqsXO1ma3kR4ZHmZAEFNGPG+TarLStHV/mpze1SCp+
	tUIPFsSzLOYqYXe0nF/g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sXfYs-00000006bhz-43lR;
	Sat, 27 Jul 2024 11:26:06 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sXfYR-00000006bda-2g1I;
	Sat, 27 Jul 2024 11:25:41 +0000
Received: from i5e860cde.versanet.de ([94.134.12.222] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1sXfYK-0005ZZ-6A; Sat, 27 Jul 2024 13:25:32 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Conor Dooley <conor@kernel.org>, Stephen Boyd <sboyd@kernel.org>
Cc: mturquette@baylibre.com, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v2 1/3] dt-bindings: clocks: add binding for
 voltage-controlled-oscillators
Date: Sat, 27 Jul 2024 13:25:31 +0200
Message-ID: <33119212.aRNtrjHk3s@diego>
In-Reply-To: <00f9f4b8722d97b1c6fcec27d53bc06d.sboyd@kernel.org>
References: <20240715110251.261844-1-heiko@sntech.de>
 <20240718-prozac-specks-6b5fd8b83e3e@spud>
 <00f9f4b8722d97b1c6fcec27d53bc06d.sboyd@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240727_042539_719330_CC4441F0 
X-CRM114-Status: GOOD (  32.92  )
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

Am Samstag, 27. Juli 2024, 00:21:44 CEST schrieb Stephen Boyd:
> Quoting Conor Dooley (2024-07-18 08:59:50)
> > 
> > FWIW, I wouldn't classify this as device-specific. "enable-gpios" and
> > "vdd-supply" are pretty generic and I think the latter is missing from
> > the vast majority of real* "fixed-clocks". I would expect that devices
> > where the datasheet would call
> > 
> > * Real because there's plenty of "fixed-clocks" (both in and out of tree)
> > that are used to work around the lack of a clock-controller driver for an
> > SoC.
> 
> I agree!
> 
> > 
> > > I think generic power-sequences
> > >   were the topic back then, though that might have changed over time?
> > > - There are places that describe "fixed-clock" as
> > >   "basic fixed-rate clock that cannot gate" [1]
> > 
> > I think that that is something that could be changed, it's "just" a
> > comment in some code! Sounds like Stephen disagrees though :)
> 
> It's more about making a clear break from the fixed-clock binding so
> that the extra properties are required.
> 
> > 
> > > - Stephen also suggested a separate binding [2]
> > 
> > I liked your "gated-oscillator" suggestion in another reply, but
> > "gated-fixed-clock" might be a better "thematic" fit since this is a
> > special case of fixed-clocks?
> > 
> 
> It looks to me like we've arrived at the hardest problem in computer
> science, i.e. naming. Any of these names is fine. I'd look to see what
> those parts on mouser are called and use that to drive the compatible
> name decision if you can't decide. The description section in the
> binding could be verbose and link to some parts/pdfs if that helps too.
> In the past I've seen EEs call these things clock buffers. I'm not a
> classically trained EE myself but it usually helps to use similar names
> from the schematic in DT because DT authors are sorta translating
> schematics to DT.

TL;DR: I'm fine with both "gated-oscillator" or "gated-fixed-clock" .
Some tiny part in the back of my head wants to name things in the most
specific way aka "gated-oscillator", but I guess "gated-fixed-clock" will
possibly spare us the naming dance in the future :-)

So I guess if nobody objects anymore, I'll go with "gated-fixed-clock".

--------- 8< --------
Some background stuff for the oscillator / clock-buffer difference,
which are actually both used on the Rock 5 ITX in question:

[my ASCII-art may not survive mail readers]
                                        ------------
VCC3v3_PI6C (to both VDD + Enable) -----| VCC*     | - CLKoutA - to PCIe
  |                                     |          |
--------------------                    |          | - CLKoutB - to PCIe
| 100MHz,3.3V,3225 |-------XTAL_IN_OUT -| Au5426   |
--------------------                    |          | - REFout (unconnected)
                                        ------------

Just asking Google for that "100MHz,3.3V,3225" brings me to
"100 MHz Standard Clock Oscillators" on Mouser.

The Au5426 from Aurasemi is a "4 Differential and 1 LVCMOS Output Ultra
Low Jitter High Performance Buffer" - aka a clock-buffer.

In the Rock-5-ITX patch, I opted to ignore it, because on _that_ board
it is transparent to the system, enabled by the same sources as the
crystal and statically configured.

On the other hand, the Au5426 actually _has_ input pins to select
its working mode: 
- select between different clock sources
- enable/disable the output of the input clock as refclk
- configure the clock buffer type (lvpecl, lvds, hcsl, hiz)

So I didn't want to conjure a binding for that stuff out of thin air :-)


Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
