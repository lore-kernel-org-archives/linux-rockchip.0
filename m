Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 06EC8C433F5
	for <linux-rockchip@archiver.kernel.org>; Mon,  9 May 2022 07:25:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zFEqalbKFzH30YPdH22sef0yFOdCH70VwDs3OlJq4dg=; b=eECOS/Q/lLVe45
	IjL3yVT9ckJtilNCgsrsFEnUELGOKMAWPCMdy/B3zK6lbNjMyXP7BXBIgbX8UjShePD5p4yf63E3Z
	/wS/fi0n/UGD6wkRPXl3yAy5dBc9yp5Miwi0IlLPNYEu5O8oQSoaQrIHvhz8107FO7A83UABUA/g8
	Fe3eOf5oKOgQGyx5eIk81nZO2tFo2Y2wIIUbgjyKQDyBM6mz1sMZFn/hBCU2vC3I2rQh8BdfH4mFZ
	yGQJpu3QTeeXowZkD6IDKpENNiC/Vb8MN8U1bukDSXMrbyFtraB1SoXemy28vHTDP6+F4TYDO+bRP
	pXCvzBrgPekeb1B6MDjQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nnxlr-00Cppv-37; Mon, 09 May 2022 07:25:31 +0000
Received: from mail-ed1-x52a.google.com ([2a00:1450:4864:20::52a])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nnxlo-00Cpnb-3r
 for linux-rockchip@lists.infradead.org; Mon, 09 May 2022 07:25:29 +0000
Received: by mail-ed1-x52a.google.com with SMTP id p18so15170969edr.7
 for <linux-rockchip@lists.infradead.org>; Mon, 09 May 2022 00:25:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=message-id:date:mime-version:user-agent:subject:content-language:to
 :cc:references:from:in-reply-to:content-transfer-encoding;
 bh=ffn9G0lVjAVw7VY7Gf2gVJa9bJPx61VNfBkBP4QKUhg=;
 b=k5iU4+wpkI+gckTEyQH4UBbPHXsLPXH18PiLYdBl7uzRbx2ZqyT2op2yR7RabsO5sl
 cq/bJYUju0o/GmAfREaayXamQwFhL8YqhzC8DWuq+eeOORl9FqAOQrIUl0wSMy6QuNuc
 iCvDsShVxcJiy1+NWH8xT+RMYngLYWvMHgMf4T6He/YIjjmMr+GXNdUTS8MV2X/EASlh
 nI/w+Dku3ZrXh/CItkCZ/o8/8JNmYxJub6JtAvkEDKQto1EtwhpHVglffKEsfoUaLAOJ
 cfhzmwTtP7fGOFtHVo/RKo036vEwgSqEEAWJjKEu4dvGD7VA/OpiP7QaLMUXH9j60IjC
 QZ+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=ffn9G0lVjAVw7VY7Gf2gVJa9bJPx61VNfBkBP4QKUhg=;
 b=7b58CqKCiPSppnG59k0SJepnQMiY7xJlQ8Y3v09TdvzTmSPJcvY16CjLkGurBo8Bii
 diCcjtjDkMkbXQZUEGUFFs5wqhEN6dp/pNTB0NhcrP95v+Umc+bq6lmepxZmVcM4uZ6E
 wEjMs6iFfpbkDrlt+CMmNTnWyWRLerjKCYu2c8Lk0BTpJ+GMbrYBZ1h4IhlEsO78iXgW
 rmGCGZXdgEK1+XFRPMYQ0QC5Gdx6Pv8yGWSuVsAMY1qaVUd5xkYJ2Hf+ia5a4YV/+gfe
 STKKcZdJBcpU8n3qIGWG+TqzljabfoMwdtaUMUDXEXT2Up+EZymh3W0XCtugiPQH+V1P
 lrOg==
X-Gm-Message-State: AOAM531/TN1P8Rf7U4HHON0RaoVrLGk/NvsCPF3u6Of0uQiahZYkhhJK
 +S1N99R8CfyZMIXt6vGzGfAoRQ==
X-Google-Smtp-Source: ABdhPJyLrNXAR9V95KOmH7TaGfKkewtlQeguVyMLABaxdfoHqhHBGdvEKNPUSXI80M5LoO9ChLiQxg==
X-Received: by 2002:a05:6402:50d2:b0:427:f49e:71a0 with SMTP id
 h18-20020a05640250d200b00427f49e71a0mr16020611edb.211.1652081125192; 
 Mon, 09 May 2022 00:25:25 -0700 (PDT)
Received: from [192.168.0.242] (xdsl-188-155-176-92.adslplus.ch.
 [188.155.176.92]) by smtp.gmail.com with ESMTPSA id
 q10-20020a1709064cca00b006f3ef214dd7sm4788853ejt.61.2022.05.09.00.25.24
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 09 May 2022 00:25:24 -0700 (PDT)
Message-ID: <422bf3bc-7787-97dd-6ab4-7570e5ce2ed8@linaro.org>
Date: Mon, 9 May 2022 09:25:23 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.1
Subject: Re: [PATCH v2 1/3] dt-bindings: media: rockchip-vpu: Add RK3568 VEPU
 compatible
Content-Language: en-US
To: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring
 <robh+dt@kernel.org>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>, Heiko Stuebner <heiko@sntech.de>
Cc: Ezequiel Garcia <ezequiel@collabora.com>, linux-media@vger.kernel.org,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20220508202544.501981-1-frattaroli.nicolas@gmail.com>
 <20220508202544.501981-2-frattaroli.nicolas@gmail.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220508202544.501981-2-frattaroli.nicolas@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220509_002528_209835_DDCB3696 
X-CRM114-Status: GOOD (  16.35  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

On 08/05/2022 22:25, Nicolas Frattaroli wrote:
> The RK3568 and RK3566 have a Hantro VPU node solely dedicated to
> encoding. This patch adds a compatible for it, and also allows
> the bindings to only come with a vepu interrupt.
> 
> Signed-off-by: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
> ---
>  Documentation/devicetree/bindings/media/rockchip-vpu.yaml | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/media/rockchip-vpu.yaml b/Documentation/devicetree/bindings/media/rockchip-vpu.yaml
> index bacb60a34989..4045f107ca4e 100644
> --- a/Documentation/devicetree/bindings/media/rockchip-vpu.yaml
> +++ b/Documentation/devicetree/bindings/media/rockchip-vpu.yaml
> @@ -22,6 +22,7 @@ properties:
>            - rockchip,rk3288-vpu
>            - rockchip,rk3328-vpu
>            - rockchip,rk3399-vpu
> +          - rockchip,rk3568-vepu
>            - rockchip,px30-vpu
>        - items:
>            - const: rockchip,rk3188-vpu
> @@ -40,6 +41,7 @@ properties:
>    interrupt-names:
>      oneOf:
>        - const: vdpu
> +      - const: vepu

This should be enum (for both lines above) and you should add
allOf:if:then with a constraints which variant can have which interrupts.


Best regards,
Krzysztof

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
