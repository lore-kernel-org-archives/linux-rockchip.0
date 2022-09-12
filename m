Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DAA23ECAAD5
	for <linux-rockchip@archiver.kernel.org>; Mon, 12 Sep 2022 10:53:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/ibtnouOvqvXwLAQGDKl9kW11qmMe0BqLJKuE/v9aVg=; b=kbw7swElf2wW/S
	lDQsRvkTZMzAl778Wdhoao37+4N1Y3GM/yS0avQHVLaHKPdkx4zfpp29CILChEXuoZpyfDgcxgeUP
	CRvbGf9ABJX7FBeguuz0gmKvUF7qY8gY4xHbshx6TztamQy8cod1/OfTsome0dKgFA7rKub4S4A8+
	vd3An4Snk5wTAYw0EVD6HOsKFWLaHnfdr6AWNdRVdrWnC4ThIEv2M2NH2flBnUJvLbsP9zeSRPVLa
	880yvIV1zHOWPVAjFZcNDX1oyI3SZXib8QbclPRRU0GMs2bQrgaL85l/cOwrgsA8WGemN3oJhUKxk
	14EoKIyd8dOS6TsbK4DQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oXh3r-0091hx-JV; Mon, 12 Sep 2022 10:53:07 +0000
Received: from mail-lj1-x236.google.com ([2a00:1450:4864:20::236])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oXh2C-0090X7-5U
	for linux-rockchip@lists.infradead.org; Mon, 12 Sep 2022 10:51:26 +0000
Received: by mail-lj1-x236.google.com with SMTP id 9so9143963ljr.2
        for <linux-rockchip@lists.infradead.org>; Mon, 12 Sep 2022 03:51:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=JyxZJBDxwa1juNFoQDcnNx8kzZcf1BUcQHxFamfBS9U=;
        b=ol/VATnLs6JCVymJeLMyS2ANExMLVBlpsGNJCzRIcNIEumS6IS4Y8ZFSmBuInRU1YP
         5pwlePB8AIjfMmLI7BDksVLpV7C92efrimaWI2/owvq5NFJHK6DTiIfwoIhiwElyVNpN
         13FnRgm3CbJSI9TEiOkwwz7EnK8b/hF88zTBBWECRy1Jf1I8RUFe3K80YJVvsDBb2xQ1
         WqRs+9yV4++IkJP0CjVXEXa8fFFJc00VV2btLPtEdnC9aAhjSiLSzw/8s9HXycU+i0Wh
         2IuL0zGZkf69gLqn9u6ZtW38fTBofCLyf/9CakO7RjOCzEFut6tC09dJPYwyaW3XKtwm
         hAcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=JyxZJBDxwa1juNFoQDcnNx8kzZcf1BUcQHxFamfBS9U=;
        b=oj1/ioIYCSOuvoD8GQHnwjBBA5vbYlaG3gCIFyXvxRYqT0mrRgcyn4yHgoFee/5eUI
         ohbPhZMagpes14aYgcj4FnHOUS5dZ+hAbzpj94kNJnXp3ZmuHHt4d5IjUeOwDRVfbhDp
         fSJKPRvs+8yfsznnEvQAloRJHfehPNsNxLnk4VYXgfpvj/+DsTpjlj1Tm5m7RtV8a4li
         0/s403CVfjZ8+4WcpNXPKSFdszM85wT6e4ce4JmKZnmBlK/ALJDiIAkxcwCpJE9pIZax
         5BWTUSYDdO/a6ru3AFxu56lJE5RJczO4uTE0YnNQPaSXrEF3Vcw9v85ooouC5mJ/ynuJ
         Yw2Q==
X-Gm-Message-State: ACgBeo2RYX8KvG915BehBpCKcTozHPgSVxJXDjEszot0PL04xd1MLwEs
	vgLZtZ718mL4BO0niWznrA4PkA==
X-Google-Smtp-Source: AA6agR79aoCpEogSUJhr9xxLEteFdk51Jg5L0gCGuub7enPMTGd6uvgE8eglysHg+QSpeMwTWtu5sw==
X-Received: by 2002:a2e:a552:0:b0:25e:6fa1:a6c4 with SMTP id e18-20020a2ea552000000b0025e6fa1a6c4mr7292256ljn.90.1662979881408;
        Mon, 12 Sep 2022 03:51:21 -0700 (PDT)
Received: from [10.129.96.84] ([109.232.243.34])
        by smtp.gmail.com with ESMTPSA id d28-20020a0565123d1c00b0048a8586293asm1005267lfv.48.2022.09.12.03.51.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 12 Sep 2022 03:51:20 -0700 (PDT)
Message-ID: <14d7bbb5-51c4-8fc0-2303-f5164c6da903@linaro.org>
Date: Mon, 12 Sep 2022 12:51:18 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Subject: Re: [PATCH v1] dt-bindings: clock: convert rockchip,rk3128-cru.txt to
 YAML
Content-Language: en-US
To: Johan Jonker <jbx6244@gmail.com>, heiko@sntech.de
Cc: zhangqing@rock-chips.com, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, sboyd@kernel.org,
 mturquette@baylibre.com, linux-clk@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
References: <76d87f49-6a44-0a05-c9dc-af870fade924@gmail.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <76d87f49-6a44-0a05-c9dc-af870fade924@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220912_035124_338464_4014DD2B 
X-CRM114-Status: GOOD (  18.92  )
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

On 11/09/2022 23:20, Johan Jonker wrote:
> Convert rockchip,rk3128-cru.txt to YAML.
> 
> Signed-off-by: Johan Jonker <jbx6244@gmail.com>

Thank you for your patch. There is something to discuss/improve.

> diff --git a/Documentation/devicetree/bindings/clock/rockchip,rk3128-cru.yaml b/Documentation/devicetree/bindings/clock/rockchip,rk3128-cru.yaml
> new file mode 100644
> index 000000000..03e5d7f0e
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/clock/rockchip,rk3128-cru.yaml
> @@ -0,0 +1,73 @@
> +# SPDX-License-Identifier: GPL-2.0

Can't it be Dual licensed?

> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/clock/rockchip,rk3128-cru.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Rockchip RK3126/RK3128 Clock and Reset Unit (CRU)
> +
> +maintainers:
> +  - Elaine Zhang <zhangqing@rock-chips.com>
> +  - Heiko Stuebner <heiko@sntech.de>
> +
> +description: |
> +  The RK3126/RK3128 clock controller generates and supplies clock to various
> +  controllers within the SoC and also implements a reset controller for SoC
> +  peripherals.
> +  Each clock is assigned an identifier and client nodes can use this identifier
> +  to specify the clock which they consume. All available clocks are defined as
> +  preprocessor macros in the dt-bindings/clock/rk3128-cru.h headers and can be
> +  used in device tree sources. Similar macros exist for the reset sources in
> +  these files.
> +  There are several clocks that are generated outside the SoC. It is expected
> +  that they are defined using standard clock bindings with following
> +  clock-output-names:
> +    - "xin24m"     - crystal input       - required
> +    - "ext_i2s"    - external I2S clock  - optional
> +    - "gmac_clkin" - external GMAC clock - optional
> +
> +properties:
> +  compatible:
> +    enum:
> +      - rockchip,rk3126-cru
> +      - rockchip,rk3128-cru
> +
> +  reg:
> +    maxItems: 1
> +
> +  "#clock-cells":
> +    const: 1
> +
> +  "#reset-cells":
> +    const: 1
> +
> +  clocks:
> +    maxItems: 1
> +
> +  clock-names:
> +    const: xin24m

More clocks were mentioned in old binding.

> +
> +  rockchip,grf:
> +    $ref: /schemas/types.yaml#/definitions/phandle
> +    description:
> +      Phandle to the syscon managing the "general register files" (GRF),
> +      if missing pll rates are not changeable, due to the missing pll
> +      lock status.
> +
> +required:
> +  - compatible
> +  - reg
> +  - "#clock-cells"
> +  - "#reset-cells"
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    cru: clock-controller@20000000 {
> +      compatible = "rockchip,rk3128-cru";
> +      reg = <0x20000000 0x1000>;
> +      rockchip,grf = <&grf>;
> +      #clock-cells = <1>;
> +      #reset-cells = <1>;
> +    };


Best regards,
Krzysztof

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
