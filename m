Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D2CB2C54EBC
	for <linux-rockchip@archiver.kernel.org>; Sat,  7 Jan 2023 12:51:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zAnQQScM3xGheYuJrQ1iHmVq9Ya4zV3nupAAMvZ2VcY=; b=reQPdmluCcRhXz
	pjOTEbJlevey5JBYFPc5y/XerEfCh0Y+muQueRj4Upm5hCTJySlTFzKMoMLaNj+2t5Tw2/nv+jECX
	3xqkHoY0+3bI6hIywyqGYQm/f9WWDxyfINTjZ2Y3b+CyysLVAqgwBnnyqEkxNSMvtS7DPIoeNPQWN
	LTkfyeDnhDmWGFaLQbWA7Cbyb2trff4UClRRw/OQg5p6iv3MiaT4PBFt39kP8K0j/LkNKwoQiEGgz
	Fm0AxhVK/NaJyYtj/aX+R2k4lbHSfuqsznxx/xfFSIpdD3nBdbxjbYZWc9b0YnGIzPeOpqN9SWyrd
	3V9J0TsFBuf02mrnEMDQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pE8fb-004ylW-BR; Sat, 07 Jan 2023 12:51:31 +0000
Received: from mail-wm1-x336.google.com ([2a00:1450:4864:20::336])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pE8fY-004yiu-My
	for linux-rockchip@lists.infradead.org; Sat, 07 Jan 2023 12:51:30 +0000
Received: by mail-wm1-x336.google.com with SMTP id ay2-20020a05600c1e0200b003d22e3e796dso2871257wmb.0
        for <linux-rockchip@lists.infradead.org>; Sat, 07 Jan 2023 04:51:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=6kmoQ/u+G9G8zOvmN8BbgXLEcMlL+8PUMUot4O7oTYU=;
        b=dknDOhZiOZx6N8mxrLxmzfEGaVB/HnbxjqdFLw5Hh5lat8whsxNiUpbrXJZ/QpNuZB
         qxj8EEWJevM9ZkMVPw+waMFv57StmKbYPk4Y56hgENFawyjqMFfRepcGBA4wa2kHiZ/h
         nAXHcCudu/yMVDIzK3pSaZsHrswTHjIGjy+CWstzt05koUq9ojtEFJMtspNz0AN0H6xs
         864Z5C/7YNZDXaUED4BNaxlPiHWVbh2MC2qxeCwk67RDvpqSJQPQrthlwkbV6LbQtt6H
         1v4mRqOJS/SiOdb8OAQDaehKloUKa4AKZtgNc+52YOo60MV+ykMlbEoyFkWxF3BPe4T2
         uDCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=6kmoQ/u+G9G8zOvmN8BbgXLEcMlL+8PUMUot4O7oTYU=;
        b=wvHbvMbKnVKlH4RuT9xJe9GT6+hQHOVhzIE5kAY7dIEHRar4cdOxPc+oOVvpJMMmny
         iT8FDvuY0QXVG2fK9Mzio+ywjY97SDLlD5rbKu+hY32KsfErz45OfiPA3EqONuWEAotE
         hza8UYaU+aInQBfm/XZINGC5lya0t6XK2L/Q272PJGRCIXP5MD2gLxO+wkKomRlkeuZv
         la/kGa56AwIzeA9U9e8vcS5/u9GG+FhGeyeSRixF+XkuMUihFXwoXc2l2EaNlVgX1Y2Q
         PIcQtoVFQC3QKw/PSW3hpRlGFArWHZuLP6A6t6reM8Z4TdXPBoi2ddCH+1qqnSktCUmZ
         guCA==
X-Gm-Message-State: AFqh2kqDZz0bX/J0PqLS79PfypgZfSqXdkRaB3ZcfhK0KJ99fJlU2P7B
	jKotSccDpf5d2fsOuFIKx+kh+Q==
X-Google-Smtp-Source: AMrXdXtsspADlUPwT3zNqefHd0aEud7EVXUZY6ZyOJcd15kj/Gbaw0+SfMbh9vvJtXz+AvbtR6APXQ==
X-Received: by 2002:a7b:cb8a:0:b0:3d2:7e0:3d51 with SMTP id m10-20020a7bcb8a000000b003d207e03d51mr44260530wmi.17.1673095885793;
        Sat, 07 Jan 2023 04:51:25 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id h8-20020a05600c350800b003d990372dd5sm10691037wmq.20.2023.01.07.04.51.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 07 Jan 2023 04:51:25 -0800 (PST)
Message-ID: <2b2abd3f-469b-91ff-12ed-c8422c50ba6f@linaro.org>
Date: Sat, 7 Jan 2023 13:51:23 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Subject: Re: [PATCH 1/2] dt-bindings: arm: rockchip: Add EmbedFire LubanCat 2
To: Andy Yan <andyshrk@163.com>, heiko@sntech.de,
 krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org
Cc: lasstp5011@gmail.com
References: <20230107115159.2125308-1-andyshrk@163.com>
 <20230107115221.2125368-1-andyshrk@163.com>
Content-Language: en-US
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230107115221.2125368-1-andyshrk@163.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230107_045128_787025_D1A36900 
X-CRM114-Status: GOOD (  11.32  )
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

On 07/01/2023 12:52, Andy Yan wrote:
> Add EmbedFire LubanCat 2>
> Signed-off-by: Andy Yan <andyshrk@163.com>
> 
> ---
> 
>  Documentation/devicetree/bindings/arm/rockchip.yaml | 6 ++++++
>  1 file changed, 6 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
> index 058ed707f3cd..870c32f8574b 100644
> --- a/Documentation/devicetree/bindings/arm/rockchip.yaml
> +++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
> @@ -100,6 +100,12 @@ properties:
>            - const: embedfire,lubancat-1
>            - const: rockchip,rk3566
>  
> +      - description: EmbedFire LubanCat 2
> +        items:
> +          - const: embedfire,lubancat-2
> +          - const: rockchip,rk3568
> +
> +

Only one blank line.
With above:

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


>        - description: Engicam PX30.Core C.TOUCH 2.0
>          items:
>            - const: engicam,px30-core-ctouch2

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
