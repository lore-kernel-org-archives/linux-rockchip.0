Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 78A72C3DA7F
	for <linux-rockchip@archiver.kernel.org>; Thu, 15 Aug 2024 13:50:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tN4XQNNQ0ugxYNSiE5qCggVJaUe28Ra3hm8ZC+yyFjY=; b=TZ1xdTz3sQ3S3z
	i80avsrfkJWbpgQapDLoSUJXRfF/iHuNg3blzWtrZvYlEeMOZBtrZNvjNu3U07wJuRNxrGh0Kgibk
	mfuZa/KjXX5RZvWH+RDe1JjiieE4dnfPJG6ctXn/rW3nTlzfkr0QJUlp/vM4KYj7AgV4eh9BgoF/K
	6Bdm4zDF9WFw1dJHFsWRs4WAysEo58k8j0EIbcV4TGaKNl+xjkK1y1IhiyY8gfikaVgQYwFwNngAC
	fgq+tijKKONed1472kboUGy55vKZEdkwqOltAG6edPvYXWgDkzGRCyUOWD78hXEz1IIoxZYX9Cjs8
	zFJhs5bUj/2QxXHW03qA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1searZ-0000000A69D-25Ho;
	Thu, 15 Aug 2024 13:50:01 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1seaqu-0000000A62G-11r4;
	Thu, 15 Aug 2024 13:49:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=+qjUZXXQPxMbzidk2Un7iyE+5qXqgDIpBfTv+OoiY/8=; b=F4jASlBMHLJFuTxmhQmLd6CS/j
	3NjADgAqcSl22SIIgqYqRERAsTyT5hfI646h0/71qZTNnWT3HHQYCe619+p8wQ/qvvvt+Txd2U1nd
	5B35td3fAFveSUz3jGvEzysWWh9ge4i69J92C7NLB+/W0U5qlIF0Q0V/TcgjwaaLmUR+ButCPZ1Ag
	Sq1Wg94yjFUZfJ6OjgQrSOo6iUdymNPO6HXlSZ26JSFPNhF+pw+dRpb9v6NWK10abrSpvcwaLp6TZ
	7VWmshsSob2mvkEt2fG/cGq6H/Hc1glLWZ9CH2ZasXzmOm5lYwGMUYdvjXFKH+FPvNQRGekqRux4j
	A/Un8Fbg==;
Received: from i53875a9f.versanet.de ([83.135.90.159] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1seaqn-0003Br-7q; Thu, 15 Aug 2024 15:49:13 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: linux-kernel@vger.kernel.org,
 Detlev Casanova <detlev.casanova@collabora.com>
Cc: Ulf Hansson <ulf.hansson@linaro.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 Jaehoon Chung <jh80.chung@samsung.com>, linux-mmc@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, kernel@collabora.com,
 Detlev Casanova <detlev.casanova@collabora.com>
Subject: Re: [PATCH v3 1/3] dt-bindings: mmc: Add support for rk3576 dw-mshc
Date: Thu, 15 Aug 2024 15:49:12 +0200
Message-ID: <5057223.82XvGhxQ46@diego>
In-Reply-To: <20240814223555.3695-2-detlev.casanova@collabora.com>
References: <20240814223555.3695-1-detlev.casanova@collabora.com>
 <20240814223555.3695-2-detlev.casanova@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240815_064920_319233_FEF1B1D4 
X-CRM114-Status: GOOD (  21.61  )
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

Am Donnerstag, 15. August 2024, 00:34:00 CEST schrieb Detlev Casanova:
> Add the compatible string for rockchip,rk3576-dw-mshc and add support
> for the rockchip,v2-tuning flag, a new feature of this core.
> 
> Signed-off-by: Detlev Casanova <detlev.casanova@collabora.com>
> ---
>  Documentation/devicetree/bindings/mmc/rockchip-dw-mshc.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/Documentation/devicetree/bindings/mmc/rockchip-dw-mshc.yaml b/Documentation/devicetree/bindings/mmc/rockchip-dw-mshc.yaml
> index 211cd0b0bc5f3..0543cdb51c657 100644
> --- a/Documentation/devicetree/bindings/mmc/rockchip-dw-mshc.yaml
> +++ b/Documentation/devicetree/bindings/mmc/rockchip-dw-mshc.yaml
> @@ -39,6 +39,7 @@ properties:
>                - rockchip,rk3368-dw-mshc
>                - rockchip,rk3399-dw-mshc
>                - rockchip,rk3568-dw-mshc
> +              - rockchip,rk3576-dw-mshc
>                - rockchip,rk3588-dw-mshc
>                - rockchip,rv1108-dw-mshc
>                - rockchip,rv1126-dw-mshc

this would mark the rk3576-dw-mshc as being the "same" as the
core rk3288 variant. rk3288 was the first controller introducing the
clock tuning for higher speeds. with the clocks being part of the CRU.

As we can see in later patches, this rk3576 though changes that
setup with moving the tunable clock configurations into the controller
itself.

So please don't claim to be compatible to the 3288, but instead start
a new block for this new set of controllers:


  compatible:
    oneOf:
      # for Rockchip RK2928 and before RK3288
      - const: rockchip,rk2928-dw-mshc
      # for Rockchip RK3288
      - const: rockchip,rk3288-dw-mshc
      - items:
          - enum:
              - rockchip,px30-dw-mshc
              - rockchip,rk1808-dw-mshc
              - rockchip,rk3036-dw-mshc
              - rockchip,rk3128-dw-mshc
              - rockchip,rk3228-dw-mshc
              - rockchip,rk3308-dw-mshc
              - rockchip,rk3328-dw-mshc
              - rockchip,rk3368-dw-mshc
              - rockchip,rk3399-dw-mshc
              - rockchip,rk3568-dw-mshc
              - rockchip,rk3588-dw-mshc
              - rockchip,rv1108-dw-mshc
              - rockchip,rv1126-dw-mshc
          - const: rockchip,rk3288-dw-mshc
+      # for Rockchip RK3576 with phase tuning inside the controller
+      - const: rockchip,rk3576-dw-mshc

That way you can simplify the dt-parsing code too.


Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
