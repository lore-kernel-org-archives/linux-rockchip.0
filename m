Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E2F82C531DC
	for <linux-rockchip@archiver.kernel.org>; Fri, 23 Aug 2024 14:22:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HRPdUgIjC4Vc6VWG2mpFd6J9Nk4shjT3VoPPsQ/iEuE=; b=qCzYAyCkm+6lqa
	0YGIB5avaluFQ5Nqi9xEPOTzXz8QMhUq4eiAqqKsPDZdFpVsdHevBw96nzUnbwfnbZLLp0OaZvYNa
	tJXq2JAUHXyq7r7xcOk/gfofYnalme7l1sfw2lHRFZvoyLC3kDIp33RiEJpNEjYrcDNT4dWH7YESv
	6yVYwS4MOFynu5LC2E2hBBXk1Gi3OL/WdvBwrubV+tIJINq3FEAYvB34i/YpAbcG48qA+ppiLqV3r
	sshob5wzhhWqjiRcbrbNF3gIcJk73Il+IiPdf8CpoG0jfpmVYB0Jwhz7Tfe3v5JcYxT6W43mTgnrL
	AdWKVg38+t8SdCBw4fyA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1shVBb-0000000H4gN-45Ge;
	Fri, 23 Aug 2024 14:22:43 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1shVAP-0000000H4KO-3dol;
	Fri, 23 Aug 2024 14:21:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=HfhTAcd3m1L5HJA9yejn7UHuUl2R1wfvxVwgaWJLsos=; b=a22HQPNSHQGY5pRF+CT2WXlT0o
	J04wjqrnAacN3RU3ohkdIg4BOvqfxDRascAyQnsAm64tDKblDlu4ajfIkzw5yMeEyt0YyBAaSb6N7
	+L5P93oAtCwvyi94N0tPaEZXTrweurK0y1eAkkKUbdt2U0yZus2nZdtZHu5XefjvHNuRWcXfuB1Ns
	uP9IBsOUetBGOSkRAYZK82CkUcRfzbWy6FRa6/RpICx44rhpU3jJjQuTmKRtEWZuz/zK7spYDqJgp
	vAdVWG+ya9fkrGWqGq6UfX8FQi+XOLAa8IKZ1ZEIwGsHOHlvXFS359UO0I06wQtQcyiQ4KhiB8Kwt
	W8wlg1Mg==;
Received: from i53875ae2.versanet.de ([83.135.90.226] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1shVAB-0005tA-Ep; Fri, 23 Aug 2024 16:21:15 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: linux-kernel@vger.kernel.org,
 Detlev Casanova <detlev.casanova@collabora.com>
Cc: "David S . Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 Alexandre Torgue <alexandre.torgue@foss.st.com>,
 Jose Abreu <joabreu@synopsys.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 David Wu <david.wu@rock-chips.com>,
 Giuseppe Cavallaro <peppe.cavallaro@st.com>, netdev@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-stm32@st-md-mailman.stormreply.com,
 kernel@collabora.com, Detlev Casanova <detlev.casanova@collabora.com>
Subject: Re: [PATCH v3 2/3] dt-bindings: net: Add support for rk3576 dwmac
Date: Fri, 23 Aug 2024 16:21:58 +0200
Message-ID: <9856424.ag9G3TJQzC@diego>
In-Reply-To: <20240823141318.51201-3-detlev.casanova@collabora.com>
References: <20240823141318.51201-1-detlev.casanova@collabora.com>
 <20240823141318.51201-3-detlev.casanova@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240823_072129_941180_18925BCC 
X-CRM114-Status: GOOD (  15.42  )
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

Am Freitag, 23. August 2024, 16:11:14 CEST schrieb Detlev Casanova:
> Add a rockchip,rk3576-gmac compatible for supporting the 2 gmac
> devices on the rk3576.
> 
> Signed-off-by: Detlev Casanova <detlev.casanova@collabora.com>
> Acked-by: Rob Herring (Arm) <robh@kernel.org>
> ---

Reviewed-by: Heiko Stuebner <heiko@sntech.de>

>  Documentation/devicetree/bindings/net/rockchip-dwmac.yaml | 2 ++
>  Documentation/devicetree/bindings/net/snps,dwmac.yaml     | 1 +
>  2 files changed, 3 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/net/rockchip-dwmac.yaml b/Documentation/devicetree/bindings/net/rockchip-dwmac.yaml
> index 6bbe96e352509..f8a576611d6c1 100644
> --- a/Documentation/devicetree/bindings/net/rockchip-dwmac.yaml
> +++ b/Documentation/devicetree/bindings/net/rockchip-dwmac.yaml
> @@ -25,6 +25,7 @@ select:
>            - rockchip,rk3368-gmac
>            - rockchip,rk3399-gmac
>            - rockchip,rk3568-gmac
> +          - rockchip,rk3576-gmac
>            - rockchip,rk3588-gmac
>            - rockchip,rv1108-gmac
>            - rockchip,rv1126-gmac
> @@ -52,6 +53,7 @@ properties:
>        - items:
>            - enum:
>                - rockchip,rk3568-gmac
> +              - rockchip,rk3576-gmac
>                - rockchip,rk3588-gmac
>                - rockchip,rv1126-gmac
>            - const: snps,dwmac-4.20a
> diff --git a/Documentation/devicetree/bindings/net/snps,dwmac.yaml b/Documentation/devicetree/bindings/net/snps,dwmac.yaml
> index 3eb65e63fdaec..4e2ba1bf788c9 100644
> --- a/Documentation/devicetree/bindings/net/snps,dwmac.yaml
> +++ b/Documentation/devicetree/bindings/net/snps,dwmac.yaml
> @@ -80,6 +80,7 @@ properties:
>          - rockchip,rk3328-gmac
>          - rockchip,rk3366-gmac
>          - rockchip,rk3368-gmac
> +        - rockchip,rk3576-gmac
>          - rockchip,rk3588-gmac
>          - rockchip,rk3399-gmac
>          - rockchip,rv1108-gmac
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
