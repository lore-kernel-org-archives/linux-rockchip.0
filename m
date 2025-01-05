Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A8157E77197
	for <linux-rockchip@archiver.kernel.org>; Sun,  5 Jan 2025 13:29:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=z62SGutYTyH9zMTnIZuJmGWaHiqQhu6b++jSwzV/D8k=; b=ivlsHngt16VDZ8
	mSnBaZp8YUa99Tu2rdaU+QAtnfykKXCbCFZcJasU3zgtaxLb88NwHqJXxcMBbtZDiOL4TE6eRlz/m
	CYTRk/mZrVRU/8IcFUPyaubUGYto1GmUiZwKZJIVWSAl68LDha5bxaVbv6VWJILPIKjJWgtI2DjEN
	YmOxHToT+3sTkWXufjUFkdZIWJTNyg/ybtRhUt9lPw0O/Jc7+Z1p8nW6QFO/ba+70zKGzumiHdnJ5
	1zR6Lpdu56ox9lvOCh80Ufs7T8WOCo+Kc5y9HtEv0Vdvlyc4I2A/W+wDYFJ2xoEcK7ZVC1vbwW0Nf
	0cfNnKnBGKMPr25uzZEg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tUQhB-0000000GryQ-1moH;
	Sun, 05 Jan 2025 13:29:33 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tUQh9-0000000Gry1-0VUG
	for linux-rockchip@lists.infradead.org;
	Sun, 05 Jan 2025 13:29:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=bXZURu1D4LM1YUgIvF9//OtNOlKrOn7OEEAuXJwupOg=; b=GrpxIIOFxKU0BfxmjRRMlGztep
	4hlVXNswqQnT5Hoi3eEnNuehq9ep928E+4kSUi8/uNYoB9RMATa69jvjoALhSO1fEtqiJZZUlX9SO
	cmQAuaZAMmw6E0HvyiQSns8SyhWISjXEflRx2T7ZO28qBqxzkgzcgSBN5thgeJzgoNZhjmBgcw7EY
	oDceUhRwi2UxSVVDX6mx89XFGa+fmZcz+KjGGANS3oSHkJTRREojIuRnF/s/XuEE44xDGJsAVdGuD
	dH6YLVJPphFdGqTJukxJAT6LKihc88ItGvAumVTkSoP5jl+fgO3f2bva5SxlSxeHz7VJ9LBX5S5DL
	PYbunZNA==;
Received: from i53875aad.versanet.de ([83.135.90.173] helo=phil.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1tUQgl-0005Pf-J3; Sun, 05 Jan 2025 14:29:07 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Kever Yang <kever.yang@rock-chips.com>, FUKAUMI Naoki <naoki@radxa.com>
Cc: robh@kernel.org, conor+dt@kernel.org, liujianfeng1994@gmail.com,
 jonas@kwiboo.se, cfsworks@gmail.com, dmt.yashin@gmail.com, jbx6244@gmail.com,
 sebastian.reichel@collabora.com, tim@feathertop.org,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 marcin.juszkiewicz@linaro.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, michael.riesch@wolfvision.net,
 macromorgan@hotmail.com, krzk+dt@kernel.org, jing@jing.rocks,
 dsimic@manjaro.org
Subject: Re: [PATCH v3 1/2] dt-bindings: arm: rockchip: Add Radxa E52C
Date: Sun, 05 Jan 2025 14:29:06 +0100
Message-ID: <6900956.G0QQBjFxQf@phil>
In-Reply-To: <E280EE989942CA2A+4252fa87-049d-4b73-ac28-537f29c09660@radxa.com>
References: <20241226024630.13702-1-naoki@radxa.com>
 <20241226024630.13702-2-naoki@radxa.com>
 <E280EE989942CA2A+4252fa87-049d-4b73-ac28-537f29c09660@radxa.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250105_052931_176707_556AAB82 
X-CRM114-Status: GOOD (  18.64  )
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

Hey,

Am Freitag, 3. Januar 2025, 07:45:58 CET schrieb FUKAUMI Naoki:
> Hi Kever,
> 
> What do you think about the introduction of the "rockchip,rk3582" 
> compatibility string?

I'm not Kever, but I do like the way you did this :-) .

I.e. the rk3582 _is_ a rk3588 with those cores disabled.

So going the way you did allows us to not introduce too much
overhead while still already having the rk3582 naming in there
if it becomes necessary later on.


Heiko


> --
> FUKAUMI Naoki
> Radxa Computer (Shenzhen) Co., Ltd.
> 
> On 12/26/24 11:46, FUKAUMI Naoki wrote:
> > Add devicetree binding for the Radxa E52C.
> > 
> > Radxa E52C is a compact network computer based on the Rockchip RK3582
> > SoC.
> > 
> > Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> > Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
> > ---
> > Changes in v3:
> > - Collect A-b tag
> > Changes in v2:
> > - Add "rockchip,rk3588s"
> > ---
> >   Documentation/devicetree/bindings/arm/rockchip.yaml | 6 ++++++
> >   1 file changed, 6 insertions(+)
> > 
> > diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
> > index 753199a12923..2152d170524a 100644
> > --- a/Documentation/devicetree/bindings/arm/rockchip.yaml
> > +++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
> > @@ -812,6 +812,12 @@ properties:
> >             - const: radxa,e20c
> >             - const: rockchip,rk3528
> >   
> > +      - description: Radxa E52C
> > +        items:
> > +          - const: radxa,e52c
> > +          - const: rockchip,rk3582
> > +          - const: rockchip,rk3588s
> > +
> >         - description: Radxa Rock
> >           items:
> >             - const: radxa,rock
> 
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
