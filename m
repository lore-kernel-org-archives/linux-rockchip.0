Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 91E55C6FA82
	for <linux-rockchip@archiver.kernel.org>; Sat, 10 Sep 2022 20:14:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2URVJjN746HKKR7AmKTvDwkqexXqpmQRffM6ny1Nd74=; b=MTQyLxHyTxz+VB
	k+bStPKr8o4iCXFmjz9Gg3B+3anN3aRK9g225hBTYr2Cs0C//GDFa09HjtdbuNguFOLHCMdcgf8Q4
	l3b+LNqGmC/sqA9EiNmh9U7lwVayJ19zVvR/pB9E4KIjBznoQGE6zXqZKHOPBPW9L51PnsCjdMShQ
	Kw7BxGb5/tiMC9vcNBdJVkNwK/KVQxl9Rnz3ntzvxCMH6j2DJVHFzIkiJqGLeeveiPYFEXCpA33LI
	w51Nd+NcembaEknk+YECwSVqYaykGqcLTOZ1wlFxd0TGoXiD0joEJSxKXPEfIwy5M61TLCuitYsUx
	27zPpKvRTYW5MNPs18aQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oX6rZ-00CxM2-Uj; Sat, 10 Sep 2022 20:14:01 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oX6Wq-00CkSj-KH; Sat, 10 Sep 2022 19:52:37 +0000
Received: from ip5b412258.dynamic.kabel-deutschland.de ([91.65.34.88] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1oX6Wk-0005cp-Pv; Sat, 10 Sep 2022 21:52:30 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: broonie@kernel.org, Johan Jonker <jbx6244@gmail.com>
Cc: robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, linux-spi@vger.kernel.org, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v1] dt-bindings: spi: rockchip: add power-domains property
Date: Sat, 10 Sep 2022 21:52:30 +0200
Message-ID: <12107749.RiKt1P0BV1@diego>
In-Reply-To: <64d03f6e-c578-3155-e3fb-53dbe53573eb@gmail.com>
References: <64d03f6e-c578-3155-e3fb-53dbe53573eb@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220910_125236_713968_F737F74F 
X-CRM114-Status: GOOD (  16.37  )
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

Am Samstag, 10. September 2022, 20:56:28 CEST schrieb Johan Jonker:
> The Rockchip rk3399 TRM mentions that pd_sdioaudio includes
> sdio, spi, i2s and spdif. Add a power-domains property to
> reduce notifications with spi-rockchip.yaml.
> 
> Signed-off-by: Johan Jonker <jbx6244@gmail.com>

Acked-by: Heiko Stuebner <heiko@sntech.de>


> ---
>  Documentation/devicetree/bindings/spi/spi-rockchip.yaml | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/spi/spi-rockchip.yaml b/Documentation/devicetree/bindings/spi/spi-rockchip.yaml
> index 52768894b..66e49947b 100644
> --- a/Documentation/devicetree/bindings/spi/spi-rockchip.yaml
> +++ b/Documentation/devicetree/bindings/spi/spi-rockchip.yaml
> @@ -82,6 +82,9 @@ properties:
>        where the "sleep" configuration may describe the state
>        the pins should be in during system suspend.
>  
> +  power-domains:
> +    maxItems: 1
> +
>  required:
>    - compatible
>    - reg
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
