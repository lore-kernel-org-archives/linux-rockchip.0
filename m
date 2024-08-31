Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 576B8CD13D8
	for <linux-rockchip@archiver.kernel.org>; Sat, 31 Aug 2024 13:58:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Mkk8FASYmK2y40jGk9fufu3H9OaJLtimfHgJuDTAH7I=; b=zeW1bnDF5u7p7A
	PrYMK6mQJXSD79mKxcoB3pNJwPQEfFx9BbPelMV1VHXEJeofApVsB9h1NTVuhBysjxt8qpPb6PJH6
	g85/z0So5/hee1Osp6ufKTGJ3wpiB4kBcNgaQnqVSOf00UScnJY3KsK4ebprJET9V/5HUbCml6kbd
	BkM0Phm00IFfzzuKiG+E2JSoXtM+mitAJoYczXcqNVsFO1hTPhyaRj8jfwmENpsr9kUTG3pkV+X3O
	7seCl4k+gf0ADxC6x33ZctrUAeFKA/GmnIQ5KBANg+h3YtSoYAsLCDeQmF4kiOE7LqWTxo3oI5suH
	bbquEOfA5WzTuZ4J6Sbw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1skOcc-00000009SHM-0CfR;
	Sat, 31 Aug 2024 13:58:34 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1skObi-00000009S7R-0kRe;
	Sat, 31 Aug 2024 13:57:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=xVas2nbtwjp9aJsPq4W6cm0leZn3Xl11wuSo0LagmYc=; b=d+SgYgIaeWmE5w0q11SZJGy9SX
	/27jGu9sSm0xKIhHODE5vwQ0ivyRJQTLcaFDiUJ4/0BadsaeNdpmYrC+ORJ4R2GzCRMgPoagqJYIc
	GToc1c2K1VcZQIUJuby0zA22v/qr647yFhtjhi1o5Hm6ydrPFhCQv+j5rK85Nsn8GTj3JQbFuzjpS
	vV1tm+3v+x1k+oX/JsGQPIMadW7Vq4bqazMfxX/Tv1SvUH6N5H7fr7nRfR97d7c8p5Z5eTc/u8Iyf
	nleqaHazP2U1/QrmMucudPHdwl38+Dpp3aoRtDtD+pfiJtJV0aceKNIkqasxeo3P9kMj+KtMIbwQO
	mWNzwBzQ==;
Received: from i53875be3.versanet.de ([83.135.91.227] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1skOb9-0003xk-5H; Sat, 31 Aug 2024 15:57:03 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>,
 Krzysztof Kozlowski <krzk@kernel.org>
Cc: Andrzej Hajda <andrzej.hajda@intel.com>,
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 Sandy Huang <hjc@rock-chips.com>, Andy Yan <andy.yan@rock-chips.com>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Mark Yao <markyao0591@gmail.com>,
 Sascha Hauer <s.hauer@pengutronix.de>, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 kernel@collabora.com, Alexandre ARNOUD <aarnoud@me.com>,
 Luis de Arquer <ldearquer@gmail.com>
Subject: Re: [PATCH v5 1/4] dt-bindings: display: bridge: Add schema for Synopsys DW
 HDMI QP TX IP
Date: Sat, 31 Aug 2024 15:58:31 +0200
Message-ID: <10210346.L8ug28u51p@diego>
In-Reply-To: <57wj2vwjv7eehlix2bmvbm3z4agv5fsyp6vmwwqzotkdsadx7n@azqg2kkaeuxz>
References: <20240831-b4-rk3588-bridge-upstream-v5-0-9503bece0136@collabora.com>
 <20240831-b4-rk3588-bridge-upstream-v5-1-9503bece0136@collabora.com>
 <57wj2vwjv7eehlix2bmvbm3z4agv5fsyp6vmwwqzotkdsadx7n@azqg2kkaeuxz>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240831_065738_291037_1A3DB6AB 
X-CRM114-Status: GOOD (  18.87  )
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

Hi,

Am Samstag, 31. August 2024, 08:16:26 CEST schrieb Krzysztof Kozlowski:
> On Sat, Aug 31, 2024 at 12:55:29AM +0300, Cristian Ciocaltea wrote:

> > +  clocks:
> > +    minItems: 4
> > +    maxItems: 6
> > +    items:
> > +      - description: Peripheral/APB bus clock
> > +      - description: EARC RX biphase clock
> > +      - description: Reference clock
> > +      - description: Audio interface clock
> > +    additionalItems: true
> 
> What is the usefulness of all this? How can you even be sure that each
> implementation of this core will have exactly these clocks?
>
> > +
> > +  clock-names:
> > +    minItems: 4
> > +    maxItems: 6
> > +    items:
> > +      - const: pclk
> > +      - const: earc
> > +      - const: ref
> > +      - const: aud
> > +    additionalItems: true
> > +
> > +  interrupts:
> > +    minItems: 4
> > +    maxItems: 5
> > +    items:
> > +      - description: AVP Unit interrupt
> > +      - description: CEC interrupt
> > +      - description: eARC RX interrupt
> > +      - description: Main Unit interrupt
> 
> If these are real pins, then this seems more possible, but
> additionalItems does not make me happy.

So while not "pins", the interrupts are separately specified in the
SoC's list of interrupts in the GIC:

RK3588 has:

201  irq_hdmitx0_oavp
202  irq_hdmitx0_ocec
203  irq_hdmitx0_oearcrx
204  irq_hdmitx0_omain
392  irq_hdmitx0_hpd

and another set of all of them for hdmitx1

and RK3576 using the same hdmi IP has:

370  irq_hdmitx_oavp
371  irq_hdmitx_ocec
372  irq_hdmitx_oearcrx
373  irq_hdmitx_omain
399  irq_hdmitx_hpd

so I guess the fifth interrupt is meant to be the hotplug?
Though I guess this should be specificed in the name-list too.

From the SoC's manual it looks like the controller is set up from
different modules.
Like AVP is the audio-video-packet-module, there is a Main and CEC Module
as well as a eARC RX controller inside. I'd guess it might be possible
other SoC vendors could leave out specific modules?


TL;DR I think those clocks and interrupts are dependent on how the
IP core was synthesized, so for now I'd think we can only guarantee
that they are true for rk3588 and rk3576.

So I guess they should move to the rockchip-specific part of the binding
until we have more hdmi-qp controllers in the field?

Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
