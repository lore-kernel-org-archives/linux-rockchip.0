Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D3A86C3DA4A
	for <linux-rockchip@archiver.kernel.org>; Mon, 15 Jul 2024 17:47:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xAGZFUDZvV2C31ehoJqhtca0Ce6XY6zvOuGzK8NLiKA=; b=kqgKVO+rtJzsv3
	q6Mv0yJGoT5OYEtpoeaibpx1EiLZW5K9+xZh1A1zTqY9YrMpxFInOdXn4PfEVJI+8zo0HS30uFhnY
	/cEdWME5F6xHSrbFvPM7tAKZAnfgAyJNbQyrQsnx9QQy+bysEJ93UhGWCVkoeozhLiuAuKngfhb2r
	9Z4hQ3lVtKOJNw6geZGJOCacroqMKfd2sJs77tO3kSv6rfKuYtRvizPxHubxO8pumLgFHvKAkBx/W
	bs3V+IbJkeD8iLMGRcL/bSja5d/HyyTzpWw5O8DOk/JyriD3AMQEuNzqIa5PgVsMTy+Gn+/j7wEoe
	NP/MfCJEvLk2KrmetX5g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sTPmu-00000007uoa-0cba;
	Mon, 15 Jul 2024 17:47:00 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sTPma-00000007ukL-028Z;
	Mon, 15 Jul 2024 17:46:41 +0000
Received: from i5e860d09.versanet.de ([94.134.13.9] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1sTPmK-0001Bk-MA; Mon, 15 Jul 2024 19:46:24 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Dragan Simic <dsimic@manjaro.org>
Cc: mturquette@baylibre.com, sboyd@kernel.org, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, linux-clk@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v2 1/3] dt-bindings: clocks: add binding for
 voltage-controlled-oscillators
Date: Mon, 15 Jul 2024 19:46:23 +0200
Message-ID: <2832997.XrmoMso0CX@diego>
In-Reply-To: <ec84dc37e2c421ee6d31294e08392d57@manjaro.org>
References: <20240715110251.261844-1-heiko@sntech.de>
 <20240715110251.261844-2-heiko@sntech.de>
 <ec84dc37e2c421ee6d31294e08392d57@manjaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240715_104640_083887_C8D5EE72 
X-CRM114-Status: GOOD (  30.91  )
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

Hi Dragan,

Am Montag, 15. Juli 2024, 17:15:45 CEST schrieb Dragan Simic:
> On 2024-07-15 13:02, Heiko Stuebner wrote:
> > In contrast to fixed clocks that are described as ungateable, boards
> > sometimes use additional oscillators for things like PCIe reference
> > clocks, that need actual supplies to get enabled and enable-gpios to be
> > toggled for them to work.
> > 
> > This adds a binding for such oscillators that are not configurable
> > themself, but need to handle supplies for them to work.
> > 
> > In schematics they often can be seen as
> > 
> >          ----------------
> > Enable - | 100MHz,3.3V, | - VDD
> >          |    3225      |
> >    GND - |              | - OUT
> >          ----------------
> > 
> > or similar. The enable pin might be separate but can also just be tied
> > to the vdd supply, hence it is optional in the binding.
> > 
> > Signed-off-by: Heiko Stuebner <heiko@sntech.de>
> > ---
> >  .../bindings/clock/voltage-oscillator.yaml    | 49 +++++++++++++++++++
> >  1 file changed, 49 insertions(+)
> >  create mode 100644
> > Documentation/devicetree/bindings/clock/voltage-oscillator.yaml
> > 
> > diff --git
> > a/Documentation/devicetree/bindings/clock/voltage-oscillator.yaml
> > b/Documentation/devicetree/bindings/clock/voltage-oscillator.yaml
> > new file mode 100644
> > index 0000000000000..8bff6b0fd582e
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/clock/voltage-oscillator.yaml
> > @@ -0,0 +1,49 @@
> > +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/clock/voltage-oscillator.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: Voltage controlled oscillator
> 
> Frankly, I find the "voltage-oscillator" and "voltage controlled
> oscillator" names awkward.  In general, "clock" is used throughout
> the entire kernel, when it comes to naming files and defining
> "compatible" strings.  Thus, I'd suggest that "clock" is used here
> instead of "oscillator", because it's consistent and shorter.
>
> How about using "gated-clock" for the "compatible" string, and
> "Simple gated clock generator" instead of "voltage controlled
> oscillator"?  Besides sounding awkward, "voltage controlled
> oscillator" may suggest that the clock generator can be adjusted
> or programmed somehow by applying the voltage, while it can only
> be enabled or disabled that way, which is by definition clock
> gating.  Thus, "gated-clock" and "Simple gated clock generator"
> would fit very well.

The naming came from Stephen - one of the clock maintainers ;-)
See discussion in v1. Who also described these things as
"voltage-controlled-oscillators".

And from that discussion I also got the impression we should aim for
more specific naming - especially when talking about dt-bindings, for this
"usage in the Linux kernel" actually isn't a suitable metric and
"gated-clock" is probably way too generic I think.

Though I'm not attached to any specific naming, so we'll simply
wait for the clock- and dt-maintainers to weigh in ;-)


Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
