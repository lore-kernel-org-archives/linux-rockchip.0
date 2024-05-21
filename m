Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5DAE9C25B7A
	for <linux-rockchip@archiver.kernel.org>; Tue, 21 May 2024 21:34:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vZIBQul/bGAJD85R5OvwT10EVpabnzxuk8sAb40+ccE=; b=Cg1MxgsVM+DR+t
	flv9f7pBY2MdDrZQrR+0fV7lV1gaPTVuBCLQj/rKVD+VtxVQGJUoWNIaXtAQDkkJo6nhc6uyYrzxK
	n6U4yCPl/WWBFePNorxFuquyVWWrbx7kdGO/UzK+2XS9ofkoudD5OjEyCfk96ZiImQk/TMkZ7WfTb
	vgn5zbricKN2Mkf/dj0iIoyglFLTdlJo4pNklkyQknzIV6db9s5i+9xU/aVUxoRgR1yBzImJ5fySU
	jPrSxborr5tvkoxlyZxjiL1zkP8208idJy0qkf3RWGqfryJbAbiTriiTyXANy+E6pjCbC13du0R2x
	4sCdkJXRvU33fqH7aN1g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s9X8B-00000001Aqz-2KoC;
	Tue, 21 May 2024 21:34:47 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s9X87-00000001AqE-2sPS;
	Tue, 21 May 2024 21:34:45 +0000
Received: from i53875abf.versanet.de ([83.135.90.191] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1s9X7d-0004Ld-Cj; Tue, 21 May 2024 23:34:13 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>,
 Alexandre Torgue <alexandre.torgue@foss.st.com>,
 Giuseppe Cavallaro <peppe.cavallaro@st.com>,
 Jose Abreu <joabreu@synopsys.com>, Tobias Schramm <t.schramm@manjaro.org>,
 Jonas Karlman <jonas@kwiboo.se>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 Jonas Karlman <jonas@kwiboo.se>, netdev@vger.kernel.org
Subject: Re: [PATCH 01/13] dt-bindings: net: rockchip-dwmac: Fix rockchip,rk3308-gmac
 compatible
Date: Tue, 21 May 2024 23:34:12 +0200
Message-ID: <2389630.NG923GbCHz@diego>
In-Reply-To: <20240521211029.1236094-2-jonas@kwiboo.se>
References: <20240521211029.1236094-1-jonas@kwiboo.se>
 <20240521211029.1236094-2-jonas@kwiboo.se>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240521_143443_762736_3E921C62 
X-CRM114-Status: GOOD (  17.74  )
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

Am Dienstag, 21. Mai 2024, 23:10:04 CEST schrieb Jonas Karlman:
> Schema validation using rockchip,rk3308-gmac compatible fails with:
> 
>   ethernet@ff4e0000: compatible: ['rockchip,rk3308-gmac'] does not contain items matching the given schema
>         from schema $id: http://devicetree.org/schemas/net/rockchip-dwmac.yaml#
>   ethernet@ff4e0000: Unevaluated properties are not allowed ('interrupt-names', 'interrupts', 'phy-mode',
>                      'reg', 'reset-names', 'resets', 'snps,reset-active-low', 'snps,reset-delays-us',
>                      'snps,reset-gpio' were unexpected)
>         from schema $id: http://devicetree.org/schemas/net/rockchip-dwmac.yaml#
> 
> Add rockchip,rk3308-gmac to snps,dwmac.yaml to fix DT schema validation.
> 
> Fixes: 2cc8c910f515 ("dt-bindings: net: rockchip-dwmac: add rk3308 gmac compatible")
> Signed-off-by: Jonas Karlman <jonas@kwiboo.se>

Reviewed-by: Heiko Stuebner <heiko@sntech.de>

I'm not sure how the network tree works these days, but this patch is the
only one that should go through the network tree.


> ---
>  Documentation/devicetree/bindings/net/snps,dwmac.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/Documentation/devicetree/bindings/net/snps,dwmac.yaml b/Documentation/devicetree/bindings/net/snps,dwmac.yaml
> index 21cc27e75f50..3bab4e1f3fbf 100644
> --- a/Documentation/devicetree/bindings/net/snps,dwmac.yaml
> +++ b/Documentation/devicetree/bindings/net/snps,dwmac.yaml
> @@ -76,6 +76,7 @@ properties:
>          - rockchip,rk3128-gmac
>          - rockchip,rk3228-gmac
>          - rockchip,rk3288-gmac
> +        - rockchip,rk3308-gmac
>          - rockchip,rk3328-gmac
>          - rockchip,rk3366-gmac
>          - rockchip,rk3368-gmac
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
