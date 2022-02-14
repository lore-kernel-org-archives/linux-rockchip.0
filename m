Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 00303C433EF
	for <linux-rockchip@archiver.kernel.org>; Mon, 14 Feb 2022 17:13:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6Hh/WVOWRrZfT7GPLsOlUFd0RfsvHPOByhv7EzcVRvk=; b=IjeGOmej2KmMLi
	T3BxrxHi29Qrk/Y9BLYy7CH1VVixqhVbKCseeflFdhEgFE7cwjFmGt/ZpGxBzCa4lpmEdpg8b+99K
	EjXLsIyPvE7jTA7jt/wL73YzDsg1IRJ2qKrJX2/fKx/IbBObUIjH+/WDe6fGFaivXfpO8pbA9zE1s
	GL/A3sO5b7KJ4mztNB2WOzYwp5cK8svM+0wx2lWc1cy4bUV2Q56y6g5S7AKFYXnl8n7kB9Y1hUeZC
	K8WYav5u7fBkmDcTz9HHbVbtm5nMjEeOnXRfryy5al3LrIaQ9WLnGJDLFj+6L8Jc3s2bnwibHjDsJ
	nr9CVnLtF3P4seFYNh4Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nJeuy-00GKHN-FI; Mon, 14 Feb 2022 17:13:40 +0000
Received: from mail-ej1-x62f.google.com ([2a00:1450:4864:20::62f])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nJeuS-00GK40-EO; Mon, 14 Feb 2022 17:13:11 +0000
Received: by mail-ej1-x62f.google.com with SMTP id lw4so8054272ejb.12;
 Mon, 14 Feb 2022 09:13:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=3Fk8twNCDj+wvRPPnauS0r1tDhPrGepWuPsXEFLTKTk=;
 b=NDAe7fCLf6sA/zxhNxQ77owR34T8UGjUGbAzZikk4FcorqiCJK7lWuW/PEigNr6TDZ
 tT+BBY45s4+cKDEYBWfD61KxSAsdIsalAEo26xD37BJMrWH8ichvKOaVbNtpNSG3e+O1
 OFP+uRStpbszEyHXQH4E7zmSB5F1o/g9/1OcJ1LJVXVSMwfpJC+Z7QdB7457m+aeGtss
 eVwivFzm1n31yfxocGOGwnuiv73LrZIksNQx/Ko+HDM3JZihJpE08XV1/n7RXrZzlXG2
 2RZ0Gc0PSH9UXf5IY4wI7xqoRzyIs1C6YZXHdi7T1aQs2LLpwFGUkRVN5dA09LDjTVQJ
 7gVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=3Fk8twNCDj+wvRPPnauS0r1tDhPrGepWuPsXEFLTKTk=;
 b=1q0cQlUljRC4r9VrJiv3zVICKOpqzdZqxOGfnx/Sk/o0IAEZQirjxA4CLAaVA1bR6Q
 ax+DlU4uOYnDi1Ogxvl+8KMK8j6zru9hzBpfr/l3GgOXM4ybhy/4RgpCPBxcqm8IK28V
 cOFeqT32/KcK3DL1uuKb4xKU5e/emPC/FlMW4MKeH+dvEfkv9fBzZ69X7VHXiE7IFTIV
 dRS5C+gFQPU8cmCa+5NQhozmazUTK+LZ+NWyzaZ5/wPW8OqjSlMQTlMbU7cJxA0jjMPe
 ODzdVpHRUULyawPqXo/DvS9dUGzm1RwHIeyP0cFa9E68SS8NZXtXsdl9PiUNB+KHXSye
 kHuA==
X-Gm-Message-State: AOAM533SjLVOKxsC2Ohl4Qkr2zzpQXtfVxx1w7LPxHPr5xWC+6+zlPIL
 s8yC+Gi7/aaI7q5kHmle7uc=
X-Google-Smtp-Source: ABdhPJzg4slRDT/mw7ZOBMAOQzMQYAcNt8auS9xTWhsl5NDb/5V8h4eVpjx6YXnsY8ve32KgLbEa+A==
X-Received: by 2002:a17:907:a428:: with SMTP id
 sg40mr512036ejc.128.1644858784198; 
 Mon, 14 Feb 2022 09:13:04 -0800 (PST)
Received: from kista.localnet (cpe-86-58-32-107.static.triera.net.
 [86.58.32.107])
 by smtp.gmail.com with ESMTPSA id 23sm2427068ejg.209.2022.02.14.09.13.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 14 Feb 2022 09:13:03 -0800 (PST)
From: Jernej =?utf-8?B?xaBrcmFiZWM=?= <jernej.skrabec@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>, 
 =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <u.kleine-koenig@pengutronix.de>, 
 Lee Jones <lee.jones@linaro.org>, Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
 Maxime Ripard <mripard@kernel.org>, 
 Chen-Yu Tsai <wens@csie.org>, Florian Fainelli <f.fainelli@gmail.com>, 
 bcm-kernel-feedback-list@broadcom.com, Shawn Guo <shawnguo@kernel.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>, 
 Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>,
 Heiko Stuebner <heiko@sntech.de>, 
 Palmer Dabbelt <palmer@dabbelt.com>, Paul Walmsley <paul.walmsley@sifive.com>, 
 Nobuhiro Iwamatsu <nobuhiro1.iwamatsu@toshiba.co.jp>,
 Philipp Zabel <p.zabel@pengutronix.de>, 
 Anson Huang <anson.huang@nxp.com>, 
 Vijayakannan Ayyathurai <vijayakannan.ayyathurai@intel.com>,
 Rahul Tanwar <rtanwar@maxlinear.com>, 
 Jeff LaBundy <jeff@labundy.com>, Yash Shah <yash.shah@sifive.com>, 
 Sagar Kadam <sagar.kadam@sifive.com>, Vignesh R <vigneshr@ti.com>, 
 Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>, 
 Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>,
 linux-pwm@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-sunxi@lists.linux.dev, linux-kernel@vger.kernel.org, 
 linux-rockchip@lists.infradead.org, linux-riscv@lists.infradead.org
Subject: Re: [PATCH 01/15] dt-bindings: pwm: allwinner,
 sun4i-a10: include generic pwm schema
Date: Mon, 14 Feb 2022 18:13:01 +0100
Message-ID: <3485219.R56niFO833@kista>
In-Reply-To: <20220214081605.161394-1-krzysztof.kozlowski@canonical.com>
References: <20220214081605.161394-1-krzysztof.kozlowski@canonical.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220214_091308_587763_40ECBEC8 
X-CRM114-Status: GOOD (  13.19  )
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

Dne ponedeljek, 14. februar 2022 ob 09:15:51 CET je Krzysztof Kozlowski 
napisal(a):
> Include generic pwm.yaml schema, which enforces PWM node naming and
> brings pwm-cells requirement.
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>

Acked-by: Jernej Skrabec <jernej.skrabec@gmail.com>

Best regards,
Jernej

> ---
>  .../bindings/pwm/allwinner,sun4i-a10-pwm.yaml | 53 ++++++++++---------
>  1 file changed, 28 insertions(+), 25 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/pwm/allwinner,sun4i-a10-
pwm.yaml b/Documentation/devicetree/bindings/pwm/allwinner,sun4i-a10-pwm.yaml
> index 800d511502c4..e93e935564fb 100644
> --- a/Documentation/devicetree/bindings/pwm/allwinner,sun4i-a10-pwm.yaml
> +++ b/Documentation/devicetree/bindings/pwm/allwinner,sun4i-a10-pwm.yaml
> @@ -52,33 +52,36 @@ properties:
>    resets:
>      maxItems: 1
>  
> -if:
> -  properties:
> -    compatible:
> -      contains:
> -        const: allwinner,sun50i-h6-pwm
> -
> -then:
> -  properties:
> -    clocks:
> -      maxItems: 2
> -
> -    clock-names:
> -      items:
> -        - const: mod
> -        - const: bus
> -
> -  required:
> -    - clock-names
> -    - resets
> -
> -else:
> -  properties:
> -    clocks:
> -      maxItems: 1
> +
> +allOf:
> +  - $ref: pwm.yaml#
> +
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            const: allwinner,sun50i-h6-pwm
> +
> +    then:
> +      properties:
> +        clocks:
> +          maxItems: 2
> +
> +        clock-names:
> +          items:
> +            - const: mod
> +            - const: bus
> +
> +      required:
> +        - clock-names
> +        - resets
> +
> +    else:
> +      properties:
> +        clocks:
> +          maxItems: 1
>  
>  required:
> -  - "#pwm-cells"
>    - compatible
>    - reg
>    - clocks
> -- 
> 2.32.0
> 
> 



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
