Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AE43CC54EE9
	for <linux-rockchip@archiver.kernel.org>; Thu,  8 Sep 2022 11:54:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7iAStkRv4aCiTzYHE7TTZ5enfAkZwXGpUSHH+GzXq6c=; b=E59HqCBcu1qz2y
	Jjlr7hSn6tsFYf1Md4XbPG+Nw+RMubXHIfjor6tWgegql0K5e3Vp8JL/aZnKdK4HoBOztiGjTagPb
	IDI76/ZmQBDYM7lSSLpqjqeHmwhVkRSgWpYjW7UPm2vFvcT3k/wf4ogtSsMKYGiUddfZ1fJMPD8Bu
	wyO7dJn8dEKrzeYI/zxteI0ZWV5Oy7pb5GzZ7xJzm+grl2wj4Oz7WcOIzGTmcDrzEjmcyX0IW3rFW
	sALadY+xsNlU6kxizxLdKzyyC7/8GkK8YnzNmwJp4qWowvkvcBT7XT3hZ7f74Ri6iBwZP3d8UMzxV
	9Dv1N4qNYvFgq0wta+vQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oWG6g-002wSb-3Z; Thu, 08 Sep 2022 11:54:06 +0000
Received: from mail-lf1-x12f.google.com ([2a00:1450:4864:20::12f])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oWG6d-002wPO-VR
	for linux-rockchip@lists.infradead.org; Thu, 08 Sep 2022 11:54:05 +0000
Received: by mail-lf1-x12f.google.com with SMTP id x14so11936063lfu.10
        for <linux-rockchip@lists.infradead.org>; Thu, 08 Sep 2022 04:54:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=VQGJlHRUp9nhyc0mzEwq4F9INwDBtUr5VdutZE2f0C0=;
        b=rpOWzDfsWc/FX3v+6r9PYQh7U5C1YOoTSXb4txAsmoBQGG3ORBVLbBqvRIDdYVpFPY
         t115kYTzdwfuixU/4HZIsr5zkGaN68n2B0DoEP1z5MM9pKZKuP4NIJmNfhvCw9X+Sc7z
         PDI+/+OhZucTNjh6kzCSGVKicS0be6JqB0iMm7ALH8KKSZW5sPfSMOGznKBiHBSxvk5C
         xjJIC9J3jw9cWTaHgS2O8bbAROKO7fYmZXCLPSEsElj7SMMte8pY6XU5UH8zD4dRe3RY
         XCCKmdAtnSxG6PpMuZP/D8DVBoMYxRPkik02ETeOtYTfbhKn8J+ebinCesIW28MgpZEf
         xW6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=VQGJlHRUp9nhyc0mzEwq4F9INwDBtUr5VdutZE2f0C0=;
        b=VmdZNgqYZ+QmUH4CypQYK+7fMxiCOr0+L5OW1nLhsurfCqih3hpq4cS1rh4sL5vvJR
         YQc+f11Zs41qKeerDiCUIf1gCZX5kkZjhegAeUCX3rduanyVFKsjGYraBUihOg2Lnv1m
         ZO6mJ0Q0WJBKIdnR4uHCfQLcCbzwYw/lmmj7/PIQNNpk9safo2VVApdNh/XfxYbmg5aO
         Fhy9d+aZ97OvHc6xmd+nsV5zfoC5wVxjtwRZT4GLBiObQrzMzuLBGhFLmwqkVfCkC+rK
         qB3MC8JHojXB0IXiJzWsqxBSBuujJsGJImd8CZxUznSNUTPs8yfpMWZWeZd8iou/U/7C
         IstA==
X-Gm-Message-State: ACgBeo2WNGfr8bN+lvYotnG5pQiGQ1Cqozgd1bLhjC2EJHAiEc13YIXo
	GSn4gSEKyANsomMjUY7o05DmcA==
X-Google-Smtp-Source: AA6agR55o8YlOLOcDDvDdE3Ln5Z6r6dux+o/bKmvUpIRktp1YWOKL8JyrdpmTvZvgjal7Wn8hbwa3Q==
X-Received: by 2002:a05:6512:1581:b0:492:8c61:5bef with SMTP id bp1-20020a056512158100b004928c615befmr2732713lfb.518.1662638040100;
        Thu, 08 Sep 2022 04:54:00 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id u9-20020a056512094900b0048b143c09c2sm3001480lft.259.2022.09.08.04.53.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 08 Sep 2022 04:53:59 -0700 (PDT)
Message-ID: <c9adeeeb-8edd-f912-1aab-b19508187eef@linaro.org>
Date: Thu, 8 Sep 2022 13:53:58 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Subject: Re: [PATCH 4/8] arm64: dts: rockchip: add the internal audio codec
Content-Language: en-US
To: luca.ceresoli@bootlin.com, alsa-devel@alsa-project.org,
 linux-rockchip@lists.infradead.org
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, Liam Girdwood <lgirdwood@gmail.com>,
 Mark Brown <broonie@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Heiko Stuebner <heiko@sntech.de>, Jaroslav Kysela <perex@perex.cz>,
 Takashi Iwai <tiwai@suse.com>,
 Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
 Philipp Zabel <p.zabel@pengutronix.de>, Johan Jonker <jbx6244@gmail.com>,
 Chris Morgan <macromorgan@hotmail.com>
References: <20220907142124.2532620-1-luca.ceresoli@bootlin.com>
 <20220907142124.2532620-5-luca.ceresoli@bootlin.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220907142124.2532620-5-luca.ceresoli@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220908_045404_063576_9D292024 
X-CRM114-Status: GOOD (  14.55  )
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

On 07/09/2022 16:21, luca.ceresoli@bootlin.com wrote:
> From: Luca Ceresoli <luca.ceresoli@bootlin.com>
> 
> The RK3308 has a built-in audio codec that connects internally to i2s_8ch_2
> or i2s_8ch_3.
> 
> Signed-off-by: Luca Ceresoli <luca.ceresoli@bootlin.com>
> ---
>  arch/arm64/boot/dts/rockchip/rk3308.dtsi | 14 ++++++++++++++
>  1 file changed, 14 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3308.dtsi b/arch/arm64/boot/dts/rockchip/rk3308.dtsi
> index 093b70563b23..221cde49dc98 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3308.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3308.dtsi
> @@ -808,6 +808,20 @@ cru: clock-controller@ff500000 {
>  		assigned-clock-rates = <32768>;
>  	};
>  
> +	acodec: acodec@ff560000 {

Node names should be generic.
https://devicetree-specification.readthedocs.io/en/latest/chapter2-devicetree-basics.html#generic-names-recommendation


Best regards,
Krzysztof

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
