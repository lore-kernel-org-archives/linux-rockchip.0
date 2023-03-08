Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 39CA6C6FD1F
	for <linux-rockchip@archiver.kernel.org>; Wed,  8 Mar 2023 11:31:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=S3a1VQvX/I9bqlv8RRSaO3Tuyk1aSCqsFVDxwVJwz6k=; b=HDpLZedP+cnypg
	DH2BlnIUX+tcyAhg8dXkuYI30ydYBNJIk3hiOkd4mrMbuhsqClRAC+hRHvVsHs8a8InT+LcL/Njbq
	VDp5w/N8qBaKVC40a41wQH1Q6J+ripPKd/QvUkzubsM4TBoc9D+EhEyaJOhNHn4S1S+yelnSocFUu
	i26ezg/He6e07NEb44DE2UM/eIoUFFzuF/fXnEqgh2vCP/+M1yoSBxCyGiV0jhYsG2xa35/f2EJMZ
	k/ZySGB9BDs3/Ft+hhnEZNEorBKHjIYhY+Plbfo7odBXJCzvk7m9YsW6SwZLUdN6p/qHqfdpHPaAh
	yKNRaVLQNOy06jIwx1Zw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pZs1G-004cSu-LL; Wed, 08 Mar 2023 11:31:42 +0000
Received: from mail-ed1-x52c.google.com ([2a00:1450:4864:20::52c])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pZs1E-004cRl-LW
	for linux-rockchip@lists.infradead.org; Wed, 08 Mar 2023 11:31:42 +0000
Received: by mail-ed1-x52c.google.com with SMTP id j11so44890887edq.4
        for <linux-rockchip@lists.infradead.org>; Wed, 08 Mar 2023 03:31:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1678275099;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=SlEPc3hcrmapBm9NauxvzSjilndCIvXC382t1TVmJ6w=;
        b=yrXqGP4vYmpFUk6t4mwR+2OQS943kWX0+q9ngxezl5yW+dv3aIvRnye8fIHWujpoKV
         Y/dw9uVzHqTEwJtjpoK54vX58BApIurr5vNmHTSlOwtYTqH3Z4ruQ8+V5sfQkBg3fl0t
         lJ0rKK9VO1LosNr8QGSieZf949tzYhEcUUhXg2ly6E/dxMchlkgNyfN+rsvKBNtwt7oe
         oqybiYwJVH0bUSiEJY0p0CsPw+VwHJ4eUN3jJdvW5JLwV3Z3mJRmExL82oHi7k7C1mJx
         6JZTg+dg1qfsnI3l3eTNcERj72RurlTNKGBpOP4w7ABTf1m21rLGArARA2RkAs5xqd0v
         mVDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678275099;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=SlEPc3hcrmapBm9NauxvzSjilndCIvXC382t1TVmJ6w=;
        b=dKxSizyFqyLCBmDawcfZSf607kJtzQtu8NIdiBslj7tf0kmVo6HgRhE6WJIUorOxDY
         XVYynJHquUGKzqTa9XHqnndlyGwUzWTFPFviN8ra08mdASpYZxHVimai/fKcLvmChB2r
         D0D2+lt/tUlv0XZQ0ozn9PKad6VExU82h+bY36AfqI5yEVHokuxad5IrMI8I7eHnZn/9
         LHNHl58Car2A20oUvU1SgR5N65AubmebMRJzI+gctOKJ01srneXPSTUCA/+lv/NqEPTc
         oUeQBQ9oaG5cOPZLph5rS99n81n3q+oOqUqmJgClY9cvPGyP9B//viHQDTwFve3gRxDT
         cvqw==
X-Gm-Message-State: AO0yUKXmwoZoRt91T82CZePdXDhzk6MnUvsicnWDoAlgvzQL3R0dk58C
	92xtXvDcc0rQkBpqyiZe0Rq13g==
X-Google-Smtp-Source: AK7set+avemZThhDRSso8zHgwhY4mcE82Opsw6cakNWEKQlVoJSZxxbxy34TPwRQ/xGFmLTADrekIg==
X-Received: by 2002:a17:906:64d:b0:8b1:77bf:3be6 with SMTP id t13-20020a170906064d00b008b177bf3be6mr17141027ejb.10.1678275099075;
        Wed, 08 Mar 2023 03:31:39 -0800 (PST)
Received: from ?IPV6:2a02:810d:15c0:828:ff33:9b14:bdd2:a3da? ([2a02:810d:15c0:828:ff33:9b14:bdd2:a3da])
        by smtp.gmail.com with ESMTPSA id s15-20020a170906454f00b008d8f1b238fdsm7480048ejq.149.2023.03.08.03.31.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 08 Mar 2023 03:31:38 -0800 (PST)
Message-ID: <4204317f-6715-cdeb-343d-611aea0d554a@linaro.org>
Date: Wed, 8 Mar 2023 12:31:36 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH 1/2] dt-bindings: Add doc for FriendlyARM NanoPi R5S
Content-Language: en-US
To: Vasily Khoruzhick <anarsoul@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Heiko Stuebner <heiko@sntech.de>, Jagan Teki <jagan@amarulasolutions.com>,
 Peter Geis <pgwipeout@gmail.com>, Andy Yan <andyshrk@163.com>,
 Chris Morgan <macromorgan@hotmail.com>,
 Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
 Brian Norris <briannorris@chromium.org>,
 Sebastian Reichel <sebastian.reichel@collabora.com>,
 Andrew Lunn <andrew@lunn.ch>, Michael Riesch
 <michael.riesch@wolfvision.net>, Maya Matuszczyk <maccraft123mc@gmail.com>,
 Chukun Pan <amadeus@jmu.edu.cn>, Sascha Hauer <s.hauer@pengutronix.de>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, Tianling Shen <cnsztl@gmail.com>
References: <20230308063240.107178-1-anarsoul@gmail.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230308063240.107178-1-anarsoul@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230308_033140_761665_30ACDB6B 
X-CRM114-Status: GOOD (  13.24  )
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

On 08/03/2023 07:32, Vasily Khoruzhick wrote:
> Add devicetree binding documentation for the FriendlyARM NanoPi R5S.
> 
> Signed-off-by: Vasily Khoruzhick <anarsoul@gmail.com>
> ---
>  Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
>  1 file changed, 5 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
> index 35f74eda30ae..0813ad22dc76 100644
> --- a/Documentation/devicetree/bindings/arm/rockchip.yaml
> +++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
> @@ -201,6 +201,11 @@ properties:
>                - friendlyarm,nanopi-r4s-enterprise
>            - const: rockchip,rk3399
>  
> +      - description: FriendlyElec NanoPi R5S board
> +

Does not look like ordered alphabetically. Are you sure this is correct
place for it?

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
