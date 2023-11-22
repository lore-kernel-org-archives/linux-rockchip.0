Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9B4F4C61D9B
	for <linux-rockchip@archiver.kernel.org>; Wed, 22 Nov 2023 12:30:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6jXBzRbD/v9JIf4HFrpMaqIuhYU0i12U9PeiBrG/NT4=; b=z7splUzsXt3UHg
	DscdrFUGg9fWqiVnewHNTofXu+Ex2uXR1ucW3uukr79L2j265xEhoc8P1l1eRdT2QmCz/FxzLO9q8
	peKs4qTt7nYoKUmsBae4fQo7vtSrIaTrkG9/hU6A8VSnyfu88YL+LgaJSbd1cyuYGGRC4ZY47KgeH
	j1bIQzg1iJ/AaQ1vAyLLWz2OWfvrEQt2aJfiU37X4AxvauNL1fkoTW9VhGp0zLE9wbkCZydj0BmAB
	Likdy0Ter6ocyTBTqDrVQCvtjcsg7ZtXf61TIuGsl2+J3asJe1e1+HJPwkMJQ07H/m5EXJireUM/E
	2dP2aQ3Jy21KnBOZdlkA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r5mMd-001oW2-2F;
	Wed, 22 Nov 2023 12:29:55 +0000
Received: from mail-wm1-x332.google.com ([2a00:1450:4864:20::332])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r5mMa-001oSg-0P
	for linux-rockchip@lists.infradead.org;
	Wed, 22 Nov 2023 12:29:54 +0000
Received: by mail-wm1-x332.google.com with SMTP id 5b1f17b1804b1-40b2979a74eso13269845e9.0
        for <linux-rockchip@lists.infradead.org>; Wed, 22 Nov 2023 04:29:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1700656188; x=1701260988; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=D7/IEsPSoqcbCGnjQk9n9ACFMykT4O66DCufcUuNtlQ=;
        b=QsRRDdI42aWpJe+82keREkbH8eBe2hKN1+ZAZR+LZlP9XNZfiuF3abc72dQ8PcCs71
         PoOIPJW0uvsQt9/1DX8Q6qpuJMcrTFB/V9ywh31BZJVHUgkO66d5xrFui7pETNZeDehS
         hk+gsAUHge4dqvaLJLulLjffU0SRqTXQhtBUmDGmPHNq+mH7MqUpHS7qvuoIM5G8u7B/
         LZo1ivM8raSRrEDq8Swhe/4zWWzEyelBzCD5xCFIzsADOUdiB2PJ1CL9P4YBIJ9iUw7g
         YoglsP6oehCyE8y9+d3PWgA62nAMettdQMK0CvYgGbLWOjdrk9NPsTHkuZLaF7ajuwVg
         haWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700656188; x=1701260988;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=D7/IEsPSoqcbCGnjQk9n9ACFMykT4O66DCufcUuNtlQ=;
        b=gidjsAbITsEQ7Yxm9bqfzRVPqagkWUrQq5BloPoLEZZFYuGs8AIrJDkAdS38ew1QaU
         1BVuxvMgiU0Mm48ALr49e3jf4CKNq/g85znRbNjmm9uBXjA1yw5fVLm+Qjhien6Do5Zp
         N9ZWrx5ChAqlgJ8G2lOepVyFxW+isXf7a5Jz/byp5+wT0R/RaNxNYKDMpxy25GViF8dD
         FA0kbgvzP0ZZUaUSSJV9z52uLxWwEyX6/KE8T4BFYjUCraQxSwZiS3fpYCyFC55PX2oe
         5yxoF1V0YSKWUEchA9PIaOJUpBRcxZXusuzST4dK+zQyUkzrq04hczloVbaC2P4NWNB5
         M8bQ==
X-Gm-Message-State: AOJu0YwEwQyVKIDdFoEKAU07mSCxG8F7xceRBLIXAWidamG5fo2SGzMk
	4HKdt24yQWxhxHNHlpn1NQuEDA==
X-Google-Smtp-Source: AGHT+IHs+meqzVlrmHKTG91H+oZKP2cIaVi+IZTEjDwyYx+4zyzoSIJ9b16okQ4DpiF+VXH7aqKSzg==
X-Received: by 2002:adf:fece:0:b0:31f:d2dc:df26 with SMTP id q14-20020adffece000000b0031fd2dcdf26mr1261052wrs.28.1700656188295;
        Wed, 22 Nov 2023 04:29:48 -0800 (PST)
Received: from [192.168.1.20] ([178.197.218.100])
        by smtp.gmail.com with ESMTPSA id x5-20020adfffc5000000b0032fb17c65desm17017156wrs.19.2023.11.22.04.29.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 22 Nov 2023 04:29:47 -0800 (PST)
Message-ID: <813224c2-398d-4c2d-8909-1839ce63be60@linaro.org>
Date: Wed, 22 Nov 2023 13:29:47 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 4/9] ARM: dts: rockchip: rv1126: Add i2c2 nodes
Content-Language: en-US
To: Tim Lunn <tim@feathertop.org>, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org
Cc: Jagan Teki <jagan@edgeble.ai>, Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel@lists.infradead.org, Heiko Stuebner <heiko@sntech.de>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>
References: <20231122122232.952696-1-tim@feathertop.org>
 <20231122122232.952696-5-tim@feathertop.org>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <20231122122232.952696-5-tim@feathertop.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231122_042952_166237_9E9961E4 
X-CRM114-Status: GOOD (  12.74  )
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

On 22/11/2023 13:22, Tim Lunn wrote:
> Add i2c2 node and i2c2_xfer pinctrl for Rockchip RV1126
> 
> Signed-off-by: Tim Lunn <tim@feathertop.org>
> ---
> 
> (no changes since v1)
> 
>  arch/arm/boot/dts/rockchip/rv1126-pinctrl.dtsi | 10 ++++++++++
>  arch/arm/boot/dts/rockchip/rv1126.dtsi         | 15 +++++++++++++++
>  2 files changed, 25 insertions(+)
> 
> diff --git a/arch/arm/boot/dts/rockchip/rv1126-pinctrl.dtsi b/arch/arm/boot/dts/rockchip/rv1126-pinctrl.dtsi
> index 4f85b7b3fc4c..167a48afa3a4 100644
> --- a/arch/arm/boot/dts/rockchip/rv1126-pinctrl.dtsi
> +++ b/arch/arm/boot/dts/rockchip/rv1126-pinctrl.dtsi
> @@ -87,6 +87,16 @@ i2c0_xfer: i2c0-xfer {
>  				<0 RK_PB5 1 &pcfg_pull_none_drv_level_0_smt>;
>  		};
>  	};
> +	i2c2 {
> +		/omit-if-no-ref/
> +		i2c2_xfer: i2c2-xfer {
> +			rockchip,pins =
> +				/* i2c2_scl */
> +				<0 RK_PC2 1 &pcfg_pull_none_drv_level_0_smt>,
> +				/* i2c2_sda */
> +				<0 RK_PC3 1 &pcfg_pull_none_drv_level_0_smt>;
> +		};
> +	};
>  	pwm2 {
>  		/omit-if-no-ref/
>  		pwm2m0_pins: pwm2m0-pins {
> diff --git a/arch/arm/boot/dts/rockchip/rv1126.dtsi b/arch/arm/boot/dts/rockchip/rv1126.dtsi
> index 6c5c928f06c7..cf1df75df418 100644
> --- a/arch/arm/boot/dts/rockchip/rv1126.dtsi
> +++ b/arch/arm/boot/dts/rockchip/rv1126.dtsi
> @@ -21,6 +21,7 @@ / {
>  
>  	aliases {
>  		i2c0 = &i2c0;
> +		i2c2 = &i2c2;

No, this should be per-board to match board labeling/schematics.



Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
