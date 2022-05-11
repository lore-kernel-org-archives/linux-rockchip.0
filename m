Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 29D0AC433EF
	for <linux-rockchip@archiver.kernel.org>; Wed, 11 May 2022 16:28:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gA+Tf39cfkzqeXUCSQZ7Cm962BwnzJF8JDiXme5vUxo=; b=wdY2t7MQmQ0nDM
	oGJq+JtKs2v784lqOYbYpxDT39o+fp6wKtT/JqnujI/rGfl1g3Wal984MGjzQqyjEAu1Lx6GSvJ0o
	6DUdbztfsYuHV2hQr/rFJ3r8TQZ7EHmjZMf7MQNIoJTCodJ54jMx7jbsOq8LclmA6HN06WLo2QKKN
	c66xDumjttV7FgvtjmF9q+dl+wkia1vwQxHLoQdM1WxTnDOE5p9FH+angcAG5VKq9hc+fdhig/M7O
	SZROkbnbookoYCEdoKfuRjenpllmeudNODv/MZxBGnMhGP9esq2wwDxGLXUM9vmAEfjWLLxbQAh+2
	VxPBC8wDMZFZBgf+cnmw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nopCB-007msA-IZ; Wed, 11 May 2022 16:28:15 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nopCA-007mr0-6t
 for linux-rockchip@bombadil.infradead.org; Wed, 11 May 2022 16:28:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
 :In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:
 Sender:Reply-To:Content-ID:Content-Description;
 bh=eFymRECNSN5ye7k5OChXPswBlwaVnIJWXD7MjpienjQ=; b=V9m/gb8n/1sa+NEyW1rtE5S/0r
 eeo+xqflFk+YnqxrzpfRqZ5rjrlEYptkGxhZUo3nH6xsuDsC5ydMz4SfU/8Hqu9fofPsJUPKf3DJ5
 u5rkXXW1Bw3rVCFwXyQASGHJ+cKzrHP0uNis4GytCl2g6Nf/0qs0quIMego4AIqqhxQ5bO6HnlY6Q
 vY4/Wj+sUWBINVJ3gao0tra0OIRNGR5H2xDpInyiZYo5zAYnEXmf/0OySVhyCfTtzs+eLG9m2kgeY
 +MIqtz4fgz9w7B5tZsBlYcCDoZYEjDPU+POFLugMEtYF0unnGC027DolsU3QBfYobbgae6+r5PmVP
 QoVIKDAg==;
Received: from mail-ej1-x62c.google.com ([2a00:1450:4864:20::62c])
 by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nool6-00DCyz-TX
 for linux-rockchip@lists.infradead.org; Wed, 11 May 2022 16:00:19 +0000
Received: by mail-ej1-x62c.google.com with SMTP id dk23so4965645ejb.8
 for <linux-rockchip@lists.infradead.org>; Wed, 11 May 2022 09:00:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=message-id:date:mime-version:user-agent:subject:content-language:to
 :cc:references:from:in-reply-to:content-transfer-encoding;
 bh=eFymRECNSN5ye7k5OChXPswBlwaVnIJWXD7MjpienjQ=;
 b=F8pFd7IGqv380dhqtK0KUi/veBULkaOkmVT6fq87+YWimx0KDIrCzrcCX8IYQKF/e2
 oifPmC+J49ba6koD7ggfZOyGFUhIjC2N+16S6Grd6DDdO60jDtNJ02G4RaGXPqY1N6uF
 RAJX0qkM4aeq3FAX3HSSC4FdYlg494N45ZRXgjh3MBE2G5mA1qADr3Z3HX5PrnfAKsE+
 3qAF2nttDit3HJJA3df5v3MsyBoApdNtXGFtcvI+NrNFU5H4aNtop8fpoKoYE0tamXnY
 epxaeiEPpwQ3xxKm3aJ/LyLPCYh3aaXRXwiV6gV7AifLUaDZlElN6m9ZtJ0RNh42fQ/U
 D4XQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=eFymRECNSN5ye7k5OChXPswBlwaVnIJWXD7MjpienjQ=;
 b=gskyh8EZLcpe/xUWOQYFfVw9JjXtT7Jlkg8k4aN5lbqZRum2aLS715CRr00W1F8yPJ
 Hzao2Py1QT7hylbczzLaXorF0I8YHF4hTZaQRUo0B2hLb2N+Swz0rgeTSg4mm8QA8ZMi
 neM8tIUeLOJekfGPEnxyCcQ4AX5vgg7cy6qAL8KZLijUY6K/Gx0ht8XAf49B2mOS3V0G
 GuBsUs1U8xwQoci7spERATkhxhjpT36hv/P192PXGjJ8L/D+bSWEVjZZqezTBdv0xjyw
 VFqUhH+TjnpHKLkvhmg3U4zo32pyoWbz5WIjs9R4j1Pud5Wf9blzd9Ze35SDCgYqBudQ
 WFLA==
X-Gm-Message-State: AOAM532NSDjgjNKn2/CGFh4yRmGwNJ0Wp8/3iiAhV1xLu0gXPu42Sf5E
 7bm2E1qy6LVJLYMyMRdb7yBlRQ==
X-Google-Smtp-Source: ABdhPJysoqA/nzZ30scYkBwjFxjUK+dAiYf2mo8FGsNQSfR4U30SbuOWRSjFXYoH1g9Yg334VcVh6g==
X-Received: by 2002:a17:907:9690:b0:6f5:160a:25b8 with SMTP id
 hd16-20020a170907969000b006f5160a25b8mr25654920ejc.504.1652284811118; 
 Wed, 11 May 2022 09:00:11 -0700 (PDT)
Received: from [192.168.0.155] (xdsl-188-155-176-92.adslplus.ch.
 [188.155.176.92]) by smtp.gmail.com with ESMTPSA id
 z12-20020a50e68c000000b0042617ba63b7sm1513122edm.65.2022.05.11.09.00.09
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 11 May 2022 09:00:10 -0700 (PDT)
Message-ID: <bc4c395d-4e21-1d15-96be-00a5cad1d6f7@linaro.org>
Date: Wed, 11 May 2022 18:00:09 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.1
Subject: Re: [PATCH v3 1/3] dt-bindings: media: rockchip-vpu: Add RK3568 VEPU
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
References: <20220511155309.2637-1-frattaroli.nicolas@gmail.com>
 <20220511155309.2637-2-frattaroli.nicolas@gmail.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220511155309.2637-2-frattaroli.nicolas@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220511_170017_213458_BCA94B15 
X-CRM114-Status: GOOD (  18.35  )
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

On 11/05/2022 17:53, Nicolas Frattaroli wrote:
> The RK3568 and RK3566 have a Hantro VPU node solely dedicated to
> encoding. This patch adds a compatible for it, and also allows
> the bindings to only come with a vepu interrupt.
> 
> Signed-off-by: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
> ---
>  .../devicetree/bindings/media/rockchip-vpu.yaml | 17 ++++++++++++++++-
>  1 file changed, 16 insertions(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/media/rockchip-vpu.yaml b/Documentation/devicetree/bindings/media/rockchip-vpu.yaml
> index bacb60a34989..965ca80b5cea 100644
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
> @@ -39,7 +40,9 @@ properties:
>  
>    interrupt-names:
>      oneOf:
> -      - const: vdpu
> +      - enum:
> +          - vdpu
> +          - vepu
>        - items:
>            - const: vepu
>            - const: vdpu
> @@ -76,6 +79,18 @@ required:
>  
>  additionalProperties: false
>  
> +allOf:
> +  # compatibles that end in -vepu should only have the vepu interrupt
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            pattern: "^[a-zA-Z0-9\\-,_.]+\\-vepu$"

Why not listing the compatible how I asked? This is the common way of
handling allOf:if:then per variant.

https://lore.kernel.org/all/ea94f18d-3172-98bb-0892-a98236a08018@linaro.org/

Your patches do not apply on next, so the set might not have been tested
by Rob's bot.

Best regards,
Krzysztof

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
