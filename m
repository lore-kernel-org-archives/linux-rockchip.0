Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9738BC00140
	for <linux-rockchip@archiver.kernel.org>; Wed, 24 Aug 2022 08:47:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bC9l4qntBElgLYfsZle3fzQ0EO3tCN8L8s2IHX1yu6w=; b=MpqdxuyFzU2SR/
	kJi3fyG95w5Y+EvleZe2aMvo+oiD4NqjXwNaAAPDkxXx67bXdhUKUxcMpKKvkbIHjDxVNW+rqRYqi
	YQGfeNgjvaIWSXWogrtJC/lAta5S0sbP2S8XtIdAzbShnNb613C17uzsvMxlCZufYUk6iHZZCMP21
	apqCK82BxFYFCXC5TlESkZwmUYftjKA0vFa7ihV5Uv67tH+IJC+p0p2y9yn3G2T5+OJkJdXK/EhzU
	FG28TRLUNhxoTQa1w75DlgqUqXMqOos35ICPaF/caLVn6TS1FCE/wNp71GmowBDMFGsI+0O91vRZp
	xBcDv9iTmyULzQK7aG0Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oQm2Y-00BZKB-Q8; Wed, 24 Aug 2022 08:47:10 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oQm2O-00BZGy-11; Wed, 24 Aug 2022 08:47:01 +0000
Received: from ip5b412258.dynamic.kabel-deutschland.de ([91.65.34.88] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1oQm1r-0001su-EQ; Wed, 24 Aug 2022 10:46:27 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Lee Jones <lee@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Chen-Yu Tsai <wens@csie.org>, Jernej Skrabec <jernej.skrabec@gmail.com>, Samuel Holland <samuel@sholland.org>, Charles Keepax <ckeepax@opensource.cirrus.com>, Richard Fitzgerald <rf@opensource.cirrus.com>, Tim Harvey <tharvey@gateworks.com>, Robert Jones <rjones@gateworks.com>, Chanwoo Choi <cw00.choi@samsung.com>, Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>, Fabrice Gasnier <fabrice.gasnier@foss.st.com>, Maxime Coquelin <mcoquelin.stm32@gmail.com>, Alexandre Torgue <alexandre.torgue@foss.st.com>, Maxime Ripard <mripard@kernel.org>, - <patches@opensource.cirrus.com>, Steve Twiss <stwiss.opensource@diasemi.com>, Chris Zhong <zyw@rock-chips.com>, Zhang Qing <zhangqing@rock-chips.com>, Alistair Francis <alistair@alistair23.me>, Amelie Delaunay <amelie.delaunay@foss.st.com>, Linus Walleij <linus.walleij@linaro.org>, Renner Berthing <kernel@esmil.dk>, Rob Herring <robh@kernel.org>
Cc: Krzysztof Kozlowski <krzk@kernel.org>, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, linux-stm32@st-md-mailman.stormreply.com
Subject: Re: [PATCH] dt-bindings: mfd: Add missing (unevaluated|additional)Properties on child nodes
Date: Wed, 24 Aug 2022 10:46:26 +0200
Message-ID: <3510508.BEx9A2HvPv@diego>
In-Reply-To: <20220823145649.3118479-4-robh@kernel.org>
References: <20220823145649.3118479-4-robh@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220824_014700_095340_5B90603A 
X-CRM114-Status: GOOD (  14.75  )
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

Am Dienstag, 23. August 2022, 16:56:35 CEST schrieb Rob Herring:
> In order to ensure only documented properties are present, node schemas
> must have unevaluatedProperties or additionalProperties set to false
> (typically).
> 
> Signed-off-by: Rob Herring <robh@kernel.org>
> ---

>  .../bindings/mfd/rockchip,rk817.yaml          |  2 +

> diff --git a/Documentation/devicetree/bindings/mfd/rockchip,rk817.yaml b/Documentation/devicetree/bindings/mfd/rockchip,rk817.yaml
> index bfc1720adc43..9b2378312ce2 100644
> --- a/Documentation/devicetree/bindings/mfd/rockchip,rk817.yaml
> +++ b/Documentation/devicetree/bindings/mfd/rockchip,rk817.yaml
> @@ -87,6 +87,7 @@ properties:
>      patternProperties:
>        "^(LDO_REG[1-9]|DCDC_REG[1-4]|BOOST|OTG_SWITCH)$":
>          type: object
> +        unevaluatedProperties: false
>          $ref: ../regulator/regulator.yaml#
>      unevaluatedProperties: false
>  
> @@ -111,6 +112,7 @@ properties:
>        additional properties are required for the codec, this node can be
>        omitted.
>      type: object
> +    additionalProperties: false
>      properties:
>        rockchip,mic-in-differential:
>          type: boolean

Acked-by: Heiko Stuebner <heiko@sntech.de>



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
