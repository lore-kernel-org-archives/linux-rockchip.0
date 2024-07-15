Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 83730C3DA59
	for <linux-rockchip@archiver.kernel.org>; Mon, 15 Jul 2024 19:14:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BsGI1CfRW4vf4qM/k6SneLRMMkoaEtPltJBgoHu+i0M=; b=iLoGY8pkRtvLfV
	1iOd7DAwtr+Ug/USI38FxvcvbhPI1K2DPR78dVA4YHo27Buhsug6QthXXwm4vgVhko+D+c8Wnuy8P
	NtXX7NJfb9OAAG/e4it4evKc6E4xNIzedYHAL+BTkMuko3Gk3OB0EvoGn/NlaTreWBhOcBkW1fsZx
	kJ5JtpvWaLxvBWu4pnuV1zbtCllIKAmlBbPg8vWEmMJv/QtW+6emep34Xv7/CYjHCv2/PPw7LhQWI
	kqk3rTeaqMVqkTD1AYyPw2/lcfPBhDURRpH3PEGcRKvmiBuw4zi0y9WS6VCGom03S88IFZsUsIwRt
	SRjNX3CDiw2TkmMtWErg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sTR9Q-000000086aT-1jea;
	Mon, 15 Jul 2024 19:14:20 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sTR96-000000086VZ-0DVb;
	Mon, 15 Jul 2024 19:14:01 +0000
Received: from i5e860d09.versanet.de ([94.134.13.9] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1sTR8s-0001wA-Fu; Mon, 15 Jul 2024 21:13:46 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Dragan Simic <dsimic@manjaro.org>
Cc: mturquette@baylibre.com, sboyd@kernel.org, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, linux-clk@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v2 1/3] dt-bindings: clocks: add binding for
 voltage-controlled-oscillators
Date: Mon, 15 Jul 2024 21:13:45 +0200
Message-ID: <2186398.KiezcSG77Q@diego>
In-Reply-To: <3f0c241d39c5fedb674d7f9808d0be8f@manjaro.org>
References: <20240715110251.261844-1-heiko@sntech.de> <2832997.XrmoMso0CX@diego>
 <3f0c241d39c5fedb674d7f9808d0be8f@manjaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240715_121400_115041_6AB76C2A 
X-CRM114-Status: GOOD (  38.68  )
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Am Montag, 15. Juli 2024, 20:01:35 CEST schrieb Dragan Simic:
> On 2024-07-15 19:46, Heiko St=FCbner wrote:
> > Am Montag, 15. Juli 2024, 17:15:45 CEST schrieb Dragan Simic:
> >> On 2024-07-15 13:02, Heiko Stuebner wrote:
> >> > In contrast to fixed clocks that are described as ungateable, boards
> >> > sometimes use additional oscillators for things like PCIe reference
> >> > clocks, that need actual supplies to get enabled and enable-gpios to=
 be
> >> > toggled for them to work.
> >> >
> >> > This adds a binding for such oscillators that are not configurable
> >> > themself, but need to handle supplies for them to work.
> >> >
> >> > In schematics they often can be seen as
> >> >
> >> >          ----------------
> >> > Enable - | 100MHz,3.3V, | - VDD
> >> >          |    3225      |
> >> >    GND - |              | - OUT
> >> >          ----------------
> >> >
> >> > or similar. The enable pin might be separate but can also just be ti=
ed
> >> > to the vdd supply, hence it is optional in the binding.
> >> >
> >> > Signed-off-by: Heiko Stuebner <heiko@sntech.de>
> >> > ---
> >> >  .../bindings/clock/voltage-oscillator.yaml    | 49 ++++++++++++++++=
+++
> >> >  1 file changed, 49 insertions(+)
> >> >  create mode 100644
> >> > Documentation/devicetree/bindings/clock/voltage-oscillator.yaml
> >> >
> >> > diff --git
> >> > a/Documentation/devicetree/bindings/clock/voltage-oscillator.yaml
> >> > b/Documentation/devicetree/bindings/clock/voltage-oscillator.yaml
> >> > new file mode 100644
> >> > index 0000000000000..8bff6b0fd582e
> >> > --- /dev/null
> >> > +++ b/Documentation/devicetree/bindings/clock/voltage-oscillator.yaml
> >> > @@ -0,0 +1,49 @@
> >> > +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> >> > +%YAML 1.2
> >> > +---
> >> > +$id: http://devicetree.org/schemas/clock/voltage-oscillator.yaml#
> >> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> >> > +
> >> > +title: Voltage controlled oscillator
> >> =

> >> Frankly, I find the "voltage-oscillator" and "voltage controlled
> >> oscillator" names awkward.  In general, "clock" is used throughout
> >> the entire kernel, when it comes to naming files and defining
> >> "compatible" strings.  Thus, I'd suggest that "clock" is used here
> >> instead of "oscillator", because it's consistent and shorter.
> >> =

> >> How about using "gated-clock" for the "compatible" string, and
> >> "Simple gated clock generator" instead of "voltage controlled
> >> oscillator"?  Besides sounding awkward, "voltage controlled
> >> oscillator" may suggest that the clock generator can be adjusted
> >> or programmed somehow by applying the voltage, while it can only
> >> be enabled or disabled that way, which is by definition clock
> >> gating.  Thus, "gated-clock" and "Simple gated clock generator"
> >> would fit very well.
> > =

> > The naming came from Stephen - one of the clock maintainers ;-)
> > See discussion in v1. Who also described these things as
> > "voltage-controlled-oscillators".
> > =

> > And from that discussion I also got the impression we should aim for
> > more specific naming - especially when talking about dt-bindings, for =

> > this
> > "usage in the Linux kernel" actually isn't a suitable metric and
> > "gated-clock" is probably way too generic I think.
> =

> I see, thanks for the clarification.  Though, the generic nature of
> "gated-clock" as the name may actually make this driver a bit more
> future-proof, by allowing some other features to be added to it at
> some point in the future, avoiding that way the need for yet another
> kernel driver.

you're talking about the driver ... we're in the hardware-binding here.
Those are two completely different topics ;-) .

Devicetree is always about describing the hardware as best as possible,
so you don't want too many "generics" there, because we're always talking
about specific ICs soldered to some board.

I also "violated" that in my v1 by grouping in the the Diodes parts, which
as Stephen pointed out are quite different afterall.


Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
