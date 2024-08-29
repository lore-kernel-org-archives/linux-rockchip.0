Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5B99FCA0EC4
	for <linux-rockchip@archiver.kernel.org>; Thu, 29 Aug 2024 21:53:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Qsl1dtWj5Uoj5YOy1z3itmrAp0kYUw4VBq2WDwW7qbE=; b=KWpHCBWoX88pTt
	xcWCAqeVIXQp09C+9kqM7jWyfRwpk70oXq8hD4VI6nr+NJS6Z+LsZLZSAiy1Du6yVvFszgVqPN5wM
	LPbuGhaweerWuV/UNmL1ypE77TI/HMpZXMobOd0uFS0nF8EL/kjQNZ07Kg9OFcASWJEwjsCvoYse0
	AViFC91kz7FvvS+scpStoyUygO31b+wCJ10JfrknhaYnb/soBDV5TAnHxY2Gqd9XYdyjBcAZIiwc7
	14D65Z1x95QMLTOX2uLicqKoEsdrys0J5qAsPlOVNGx4GJAupHV5EhX/A7fRxUOV4sNAfK4jU3ir7
	WIRLieHX/+E8EbB0MfVg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sjn4o-00000003le7-3FsB;
	Thu, 29 Aug 2024 21:53:10 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sjn4k-00000003lat-37yg
	for linux-rockchip@lists.infradead.org;
	Thu, 29 Aug 2024 21:53:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=rNDr78QWZPeaDVSQsJuGdeCoq91CTLmRnMS6AwHS6ZA=; b=lFPtX9W0D9Zi8DW9hO/B9mgVJS
	jithM++IxBgDTV5E5DS8ySbsfln4En1MRtfyK6v6UEqwf1giGXFwEuS6bZnmvSBdNr+E8JK7KWnIw
	v/BvSpa6hSdL12jZkD7Fu60l+djlsiFzb7EmJhQoW8vcj+8HhHGEuCU9FnKmnXHLfBC9yaipDCqtj
	rSGIX+QqpeOMzBdccXF3cFhDIOImSOm+IGWP1T5c+TpKR+hyR9crYXWiDgpODzyh9846WXZDVz0OL
	GF25zsWT/SysM+ym9/C6L9vze0xUdbe0Mf6S3o48vZg2lkhPQCPflVV4DbLvpS4Cd/olcXxEPzv5v
	GxD3LYLg==;
Received: from i5e861916.versanet.de ([94.134.25.22] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1sjn4b-000788-Pj; Thu, 29 Aug 2024 23:52:57 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, linux-clk@vger.kernel.org,
 devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Sebastian Reichel <sebastian.reichel@collabora.com>, kernel@collabora.com
Subject: Re: [PATCH v1 1/1] dt-bindings: clock: remove assigned-clock* from rk3588 cru
 binding
Date: Thu, 29 Aug 2024 23:54:17 +0200
Message-ID: <6207501.2l3rmUXbR5@diego>
In-Reply-To: <20240829165933.55926-1-sebastian.reichel@collabora.com>
References: <20240829165933.55926-1-sebastian.reichel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240829_145306_836347_832C1055 
X-CRM114-Status: GOOD (  13.46  )
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

Hi Sebastian,

Am Donnerstag, 29. August 2024, 18:58:05 CEST schrieb Sebastian Reichel:
> These properties are automatically taken over from the common clock
> schema:
> 
> https://github.com/devicetree-org/dt-schema/blob/main/dtschema/schemas/clock/clock.yaml
> 
> Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
> ---
>  .../devicetree/bindings/clock/rockchip,rk3588-cru.yaml        | 4 ----
>  1 file changed, 4 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/clock/rockchip,rk3588-cru.yaml b/Documentation/devicetree/bindings/clock/rockchip,rk3588-cru.yaml
> index 74cd3f3f229a..4ff175c4992b 100644
> --- a/Documentation/devicetree/bindings/clock/rockchip,rk3588-cru.yaml
> +++ b/Documentation/devicetree/bindings/clock/rockchip,rk3588-cru.yaml
> @@ -42,10 +42,6 @@ properties:
>        - const: xin24m
>        - const: xin32k
>  
> -  assigned-clocks: true
> -
> -  assigned-clock-rates: true
> -
>    rockchip,grf:
>      $ref: /schemas/types.yaml#/definitions/phandle
>      description: >
> 

I already applied a similar patch from Krzysztof today:
https://lore.kernel.org/all/20240818173014.122073-4-krzysztof.kozlowski@linaro.org/



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
