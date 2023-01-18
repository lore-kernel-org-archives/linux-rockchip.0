Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 91BD2C38147
	for <linux-rockchip@archiver.kernel.org>; Wed, 18 Jan 2023 15:35:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=T5EX1tgiAfPOHmeQWUcXWkfimNu7xfNs/odNldEa5Eg=; b=pN/a5E6U5/3REk
	BbaqAugQj3IxK/tVB7DDkFUb22oy4CTHqPof+uWaOmgzUuGb00Sm3GvNDJ6wYMF+XWKhNdmxUAp0n
	/zELsSDpGUbptzioHJExlnHqXUVGVc9MC9cdpTux27kQ628XJN67Phv2HGGJwxWU0s5lLKHBAtUB3
	AkyDwOaJy1Kd2hsMwQrN5Q3XciFOekYx3J94NgOh13Cn8SJLLa3rIhcRkym43e9L7Qbb4EWMLN9Ns
	eDAEp4Vd97lRA7oWbr+gVnolBVvdMcbUSu7CabBCLRIL7Y/vIkdhHWIMcM5xARFkyGMFTGVLA21Sz
	AtOLxH7HVGZwU6q3GqsA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pIATG-001aLY-6L; Wed, 18 Jan 2023 15:35:26 +0000
Received: from mail-wr1-x42e.google.com ([2a00:1450:4864:20::42e])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pIAT4-001aFy-BQ
	for linux-rockchip@lists.infradead.org; Wed, 18 Jan 2023 15:35:16 +0000
Received: by mail-wr1-x42e.google.com with SMTP id h16so34326634wrz.12
        for <linux-rockchip@lists.infradead.org>; Wed, 18 Jan 2023 07:35:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=LoHH2nj7NXm/nL0+Tx9tLOdfs2jN6SHgUks6Yuk9t9Q=;
        b=gQ1Qcz5Xj2Q5vrDeF87Lwa/WHWtCPfHaFRIZ4IvKdaND+T7rTVeimD9FZoFTBRFZCo
         l3AS0Te1y404bmoKZqWKu3m2bqQyehETXIBXez0WwVhWCtdrFHNYSAhaBid7ZF+FLGsz
         LAhhU9y8Gymvdxu6JcW1lo0Qc34H41ASSKQEymQDN+c3n3nDxius4uoeqLRv6p1Re9nE
         5Jr73WnpXPXYoWRMClcKXu+JrrE1+G6Mz74ffawad/WaR77pOPy12TBCVdugGKfK4pU2
         RdAI1eyU6TFjaQ+MrRa6r4SwGEzlqeD04i1IE7SvtgEPU6DYaGL8pJKwKKNZJV7umSQH
         pDqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=LoHH2nj7NXm/nL0+Tx9tLOdfs2jN6SHgUks6Yuk9t9Q=;
        b=exuya4Z+irrWPGTN6lACz9KHQrVOIirpDLeEWwsArv8XLlhcwWoOl2NDoE6uOProdU
         wRwLDW/GZOYZ2NL/JgkUa2nEIIJ3mVCJu3/e5pCJN55kMn5Qz3gOHxR65ZAuak7f0x9w
         W5/rFL+hKOgstCEt21Zouc5xuvw6cxw17D7hvfJBbcXvnRGzxMtSw6kP581MocNIHUIz
         /cABw5F76dz2GoRIbz/RAN+PKVKsQbpq0fn5NEW1FOsE8KtJw6+j060pgM1FucAi4YI3
         PrJcivQm7V2mAp3yYAN5zDz/bEoDDGLmUDHjOw8Nk1f9m2EMhfLRA8LUGSfEc0N6hY3U
         wlGQ==
X-Gm-Message-State: AFqh2kpidzDx9eMv05OpqR+2GgUwzCC6FdiG1lj9TtWyz4szNlLw2umn
	KqwVkRJNPAZiNHQO5isCGd4E4w==
X-Google-Smtp-Source: AMrXdXs66UXpqSe4xSmFeXLloUSAe1sRQSuZ068jrjBRmIzvXouEACawSgZsSQgK8yYKPRgL8jbGwg==
X-Received: by 2002:adf:e703:0:b0:2bd:d948:3c3e with SMTP id c3-20020adfe703000000b002bdd9483c3emr6597146wrm.19.1674056110682;
        Wed, 18 Jan 2023 07:35:10 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id s2-20020adff802000000b00241bd7a7165sm31586447wrp.82.2023.01.18.07.35.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 18 Jan 2023 07:35:10 -0800 (PST)
Message-ID: <ced7741a-3bd4-3be5-ab9f-ae388373d38a@linaro.org>
Date: Wed, 18 Jan 2023 16:35:08 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.0
Subject: Re: [PATCH v1 2/4] gpio: gpio-rockchip: add compatible string per SoC
Content-Language: en-US
To: Johan Jonker <jbx6244@gmail.com>, linus.walleij@linaro.org, brgl@bgdev.pl
Cc: robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, heiko@sntech.de,
 linux-gpio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, kever.yang@rock-chips.com, sjg@chromium.org,
 philipp.tomsich@vrull.eu
References: <08de3f4b-e33f-95c8-3297-814ea107272a@gmail.com>
 <1510c02c-f640-9924-e42e-fa34e28a580f@gmail.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <1510c02c-f640-9924-e42e-fa34e28a580f@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230118_073514_430637_0326580E 
X-CRM114-Status: GOOD (  16.46  )
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

On 18/01/2023 13:14, Johan Jonker wrote:
> Currently all Rockchip gpio nodes have the same compatible.
> Replace all the compatibles in gpio nodes to be able to
> give them a consistent ID independent from probe order or alias.
> 
> Signed-off-by: Johan Jonker <jbx6244@gmail.com>
> ---
> 
> For now only add new compatibles.
> No changes to rockchip_gpio_probe() function yet.
> ---
>  drivers/gpio/gpio-rockchip.c | 15 +++++++++++++++
>  1 file changed, 15 insertions(+)
> 
> diff --git a/drivers/gpio/gpio-rockchip.c b/drivers/gpio/gpio-rockchip.c
> index e5de15a2a..493207de1 100644
> --- a/drivers/gpio/gpio-rockchip.c
> +++ b/drivers/gpio/gpio-rockchip.c
> @@ -790,7 +790,22 @@ static int rockchip_gpio_remove(struct platform_device *pdev)
> 
>  static const struct of_device_id rockchip_gpio_match[] = {
>  	{ .compatible = "rockchip,gpio-bank", },
> +	{ .compatible = "rockchip,px30-gpio-bank", },
> +	{ .compatible = "rockchip,rk3036-gpio-bank", },
> +	{ .compatible = "rockchip,rk3066a-gpio-bank", },
> +	{ .compatible = "rockchip,rk3128-gpio-bank", },
> +	{ .compatible = "rockchip,rk3188-gpio-bank", },
>  	{ .compatible = "rockchip,rk3188-gpio-bank0" },
> +	{ .compatible = "rockchip,rk3228-gpio-bank", },
> +	{ .compatible = "rockchip,rk3288-gpio-bank", },
> +	{ .compatible = "rockchip,rk3328-gpio-bank", },
> +	{ .compatible = "rockchip,rk3308-gpio-bank", },
> +	{ .compatible = "rockchip,rk3368-gpio-bank", },
> +	{ .compatible = "rockchip,rk3399-gpio-bank", },
> +	{ .compatible = "rockchip,rk3568-gpio-bank", },
> +	{ .compatible = "rockchip,rk3588-gpio-bank", },
> +	{ .compatible = "rockchip,rv1108-gpio-bank", },
> +	{ .compatible = "rockchip,rv1126-gpio-bank", },

No, this list is useless. Entire patch should be dropped. Just use fallback.


Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
