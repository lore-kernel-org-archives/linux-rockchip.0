Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 75B73C54E94
	for <linux-rockchip@archiver.kernel.org>; Wed, 25 Jan 2023 11:48:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Cc:To
	:Subject:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=2JuGtlcv1a+8rvqxxiCaTSpUsAHEDl3W8st86GRsClU=; b=L9lCLLkxNJQH/U7qxUhnPKCmhW
	U+tD/mv+A2CztR4PLZLPQvDbc6FQBSQn5WsLcp49oha6M6GM9nHn27L4TCLDwxKSxuPSZoZSCt8Zk
	C5nyYZO7s+DS6cn+pRENLP4RG704HBYfaF++YIseDk5NBYaBu7tDUUnMgYC+/yE98pfDUpS7HrrWg
	AdW8kfWQoV8+OiiTE2cJ9Gkp7MHPG2rjS4CXLfsYyUABDx+hRL4f3BJ9F0jc0w/OiGJSxhu26LryJ
	7lyPPABw1UAs5j86JhrxL8PYuwbr3YyLpaPt9B11IV7nCS9ks50QdFjHZsUjYNfJiCTB43ux2bAi4
	BPit+BoA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pKeFz-007Dh0-KN; Wed, 25 Jan 2023 11:47:59 +0000
Received: from mail-ot1-x331.google.com ([2607:f8b0:4864:20::331])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pKeFo-007De3-D0
	for linux-rockchip@lists.infradead.org; Wed, 25 Jan 2023 11:47:49 +0000
Received: by mail-ot1-x331.google.com with SMTP id a1-20020a056830008100b006864df3b1f8so10967597oto.3
        for <linux-rockchip@lists.infradead.org>; Wed, 25 Jan 2023 03:47:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=vanguardiasur-com-ar.20210112.gappssmtp.com; s=20210112;
        h=mime-version:references:in-reply-to:message-id:cc:to:subject:from
         :date:from:to:cc:subject:date:message-id:reply-to;
        bh=282ayFkuAOjZoYUDc0aDlm7l4Ua6SR1w7Gvov+9rFIo=;
        b=7ELM5ELNmfhBRPR/Gs+cgstult7RW0LN78AkkyDVzlQEWt0GUDxu/Z1adhsy541aaJ
         clw/v2+j7rpa5cc6At+6fuUjKE4eoFWJ8FGlAzgdcz5nCez3XyHGph+9fB6Q46PuV6wv
         gIz4jvZGkGPUsvAWJIH2J0jxt1PXPRxNxErbXAMGijsU1FuA6EqFitii0bMHB9gYMGa8
         eHV6fIi57rwPF1MA2yLbW13Szmx8/AvHaAtiTx9aGvVf6XWpbc4sbUVTnCAqeKWlCqnH
         WwQCqvR8az6nwIfdxgMNaqdv6dBJg/lMo13+VzEEY5TZURD/eBbX1/e5Kznopobke6jP
         3UUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=mime-version:references:in-reply-to:message-id:cc:to:subject:from
         :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=282ayFkuAOjZoYUDc0aDlm7l4Ua6SR1w7Gvov+9rFIo=;
        b=IKFnWoW0RzyeqoHnCYi5E5/Y3xUPfIUBO5Zs/LqGUDeOshNp1U4IPX2ccjpHe5xe2h
         qnlIUvVNoGFjo0KlcG7RwT8BLkWWBo/esvAtTpYlRmsi00JsY1KEJjWRL4ceIIrbSrTN
         1T2cihClsb0iQOdkmpmtZYXJ3fWsJVimFzaia8Tqyx/mzWmaMH250Gu6bQPs+AL/pa4C
         dFwdts6UYyajJrQ9ajS3RqQb9ZQ0JWvOtpQJ67nm4hRE/qh5MTlPiDjoTnnu0OuAAhM3
         yYcLTil4bH2kx0DcNGHybLniIteeZyqVWp3Amjozvm+28hKuvrWyOvMXCgoNmlEfRege
         +g9A==
X-Gm-Message-State: AFqh2koQ+Xz2GppPZJbov4u5ctnPHIswnFqgaDD5nLQPTcEbtLCoCBgx
	Maqfp3jO47kUwBRlLarpiHcF6g==
X-Google-Smtp-Source: AMrXdXsYy9M6zgykl3pQp5N8QV8MvjKvA7HOSfsVgIVVtJXWaGCQrLAWP+1ET0/QECBTiYPNT25iQw==
X-Received: by 2002:a9d:6e07:0:b0:686:3a34:4997 with SMTP id e7-20020a9d6e07000000b006863a344997mr16134224otr.22.1674647266317;
        Wed, 25 Jan 2023 03:47:46 -0800 (PST)
Received: from [192.168.10.175] ([190.106.125.253])
        by smtp.gmail.com with ESMTPSA id u81-20020aca6054000000b0036cbde661ecsm2104012oib.54.2023.01.25.03.47.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Jan 2023 03:47:45 -0800 (PST)
Date: Wed, 25 Jan 2023 08:47:34 -0300
From: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
Subject: Re: [PATCH RESEND 1/2] media: dt-bindings: media: rockchip-rga: add
 rockchip,rk3568-rga
To: Michael Tretter <m.tretter@pengutronix.de>
Cc: Jacob Chen <jacob-chen@iotwrt.com>, Mauro Carvalho Chehab
	<mchehab@kernel.org>, Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski
	<krzysztof.kozlowski+dt@linaro.org>, Heiko Stuebner <heiko@sntech.de>,
	linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org, Krzysztof Kozlowski
	<krzysztof.kozlowski@linaro.org>, Nicolas Frattaroli
	<frattaroli.nicolas@gmail.com>
Message-Id: <A3I1PR.VPFD55TNUYE81@vanguardiasur.com.ar>
In-Reply-To: <20230119-rk3568-rga-v1-1-43d4d14365e6@pengutronix.de>
References: <20230119-rk3568-rga-v1-0-43d4d14365e6@pengutronix.de>
	<20230119-rk3568-rga-v1-1-43d4d14365e6@pengutronix.de>
X-Mailer: geary/43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230125_034748_674142_9615AA13 
X-CRM114-Status: GOOD (  17.01  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org



On Fri, Jan 20 2023 at 10:14:21 AM +0100, Michael Tretter 
<m.tretter@pengutronix.de> wrote:
> Add a new compatible for the rk3568 Rockchip SoC, which also features 
> an
> RGA, which is called RGA2 in the TRM Part2. It is the same core as 
> used
> on the rk3288, which documents the same RGA2.
> 
> Specify a new compatible for the rk3568 to be able to handle unknown
> SoC-specific differences in the driver.
> 
> Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>

Reviewed-by: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>

> ---
>  Documentation/devicetree/bindings/media/rockchip-rga.yaml | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
> 
> diff --git 
> a/Documentation/devicetree/bindings/media/rockchip-rga.yaml 
> b/Documentation/devicetree/bindings/media/rockchip-rga.yaml
> index dd645ddccb07..ea2342222408 100644
> --- a/Documentation/devicetree/bindings/media/rockchip-rga.yaml
> +++ b/Documentation/devicetree/bindings/media/rockchip-rga.yaml
> @@ -21,7 +21,9 @@ properties:
>        - const: rockchip,rk3288-rga
>        - const: rockchip,rk3399-rga
>        - items:
> -          - const: rockchip,rk3228-rga
> +          - enum:
> +              - rockchip,rk3228-rga
> +              - rockchip,rk3568-rga
>            - const: rockchip,rk3288-rga
> 
>    reg:
> 
> --
> 2.30.2



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
