Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4A5E6EB64D9
	for <linux-rockchip@archiver.kernel.org>; Sat, 17 Jun 2023 16:35:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gNgyddIuFLY7HrajoFH1/+SmWPy5Bfe4aj7fefCHLec=; b=PsDy/JAmwE5G0J
	9MTddo7IMqxNt2Qry/UK7EqK773Ipf21hNJWmtKxIZVynQVPYGuwGOUCMeag6dFZruq8+ZvX3EF+u
	nszpmlE7uT9fhj+9ahnZ8J4E5xq/WTdUIKH3mYwa7yi7QAGfAOOzjXSd5+XKneEw2LHoypHqRZx2D
	e6pwMWy4pRHVtRSPiUxfqtuYhBoMXJlV0CTiJQBK/LEGznsKKXo8IxHS20wLiudsJOBB2xlNCmSzI
	jYibgKwXyAyr0oH4C8+Jl0nEGslped5BEEmpmNfrd813ywNx4vOWf17VR+DEH0tbJrFpdiIKEhB49
	mg2YwFFUmmXGkGTxLukQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qAYt3-003ugs-2H;
	Sat, 17 Jun 2023 16:34:53 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qAYt0-003ueQ-27;
	Sat, 17 Jun 2023 16:34:51 +0000
Received: from i53875b22.versanet.de ([83.135.91.34] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1qAYsg-0007Kt-6E; Sat, 17 Jun 2023 18:34:30 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Maximilian Weigand <mweigand2017@gmail.com>, Lee Jones <lee@kernel.org>,
 Daniel Thompson <daniel.thompson@linaro.org>,
 Jingoo Han <jingoohan1@gmail.com>, Helge Deller <deller@gmx.de>,
 Pavel Machek <pavel@ucw.cz>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: dri-devel@lists.freedesktop.org, linux-fbdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-leds@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org,
 Maximilian Weigand <mweigand@mweigand.net>
Subject: Re: [PATCH 2/3] dt-bindings: backlight: lm3630a: add entries to control boost
 frequency
Date: Sat, 17 Jun 2023 18:34:28 +0200
Message-ID: <7491264.lOV4Wx5bFT@diego>
In-Reply-To: <17576d81-a342-0b77-367a-eb9f2b97b734@linaro.org>
References: <20230602-lm3630a_boost_frequency-v1-0-076472036d1a@mweigand.net>
 <20230602-lm3630a_boost_frequency-v1-2-076472036d1a@mweigand.net>
 <17576d81-a342-0b77-367a-eb9f2b97b734@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230617_093450_691245_1CECCFA0 
X-CRM114-Status: GOOD (  20.41  )
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

Am Samstag, 17. Juni 2023, 12:12:17 CEST schrieb Krzysztof Kozlowski:
> On 14/06/2023 21:08, Maximilian Weigand wrote:
> > From: Maximilian Weigand <mweigand@mweigand.net>
> > 
> > Add 'ti,boost_use_1mhz' to switch between 500 kHz and 1 MHz boost
> > converter switching frequency, and add 'ti,boost_frequency_shift' to
> > activate a frequency shift to 560 kHz or 1.12 MHz, respectively.
> > 
> > Signed-off-by: Maximilian Weigand <mweigand@mweigand.net>
> > ---
> >  .../bindings/leds/backlight/lm3630a-backlight.yaml           | 12 ++++++++++++
> >  1 file changed, 12 insertions(+)
> > 
> > diff --git a/Documentation/devicetree/bindings/leds/backlight/lm3630a-backlight.yaml b/Documentation/devicetree/bindings/leds/backlight/lm3630a-backlight.yaml
> > index 3c9b4054ed9a..ef7ea0ad2d25 100644
> > --- a/Documentation/devicetree/bindings/leds/backlight/lm3630a-backlight.yaml
> > +++ b/Documentation/devicetree/bindings/leds/backlight/lm3630a-backlight.yaml
> > @@ -33,6 +33,18 @@ properties:
> >      description: GPIO to use to enable/disable the backlight (HWEN pin).
> >      maxItems: 1
> >  
> > +  ti,boost_use_1mhz:
> 
> No underscores in property names.
> 
> > +    description: |
> 
> Do not need '|' unless you need to preserve formatting.
> 
> > +      If present, change the boost converter switching frequency from the
> > +      default 500 kHz to 1 MHz. Refer to data sheet for hardware requirements.
> > +    type: boolean
> > +
> > +  ti,boost_frequency_shift:
> > +    description: |
> > +      If present, change boost converter switching frequency from 500 kHz to
> > +      560 kHz or from 1 Mhz to 1.12 Mhz, respectively.
> 
> So just make it a property choosing the frequency, not bools, with
> proper unit suffix.

i.e.
ti,boost-frequency-hz = <x>;
with x being 500000, 560000, 1000000, 1120000

with the driver failing when the frequency is not achievable
with the two knobs of 1mhz and shift.




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
