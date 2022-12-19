Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 571F1C4167B
	for <linux-rockchip@archiver.kernel.org>; Mon, 19 Dec 2022 13:05:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eOrfcLNNn7qAviRVZrERQV8MWfkImycaXgkNRJbfJBg=; b=Md6RyS9RnAehxA
	Tm4sgcRAHgILD3yAPc3r6aimqqKceFcdNMcZiUIFR2cj7pV717WzbTAl37vWwhZyul1W/TArbzkGu
	F3/8HXBSL5Xup0uHDV0JWV816cX7sWeflEUNUh1/cZq0hBdlz51RABAsdM1u3SlplMZnZn0akqS7g
	aWO7ducCm2ITmjiUjSRTEaVoabaR/WmkMtCzTivyaOEFgtAFNowUdTU9UjvMWEL1AVsoJQCxY1ZkI
	Q4+IS/bkDLQos1yyRsDbnF5qNx0D9ScxlcFNZX6Qy00kp2GMcvdT/BSFtQteBqr+bpjDRSk4/k6db
	gxL3t045Bfe+XvR2wz+Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p7FpO-00Da8p-Iy; Mon, 19 Dec 2022 13:05:10 +0000
Received: from mail-lf1-x135.google.com ([2a00:1450:4864:20::135])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p7FpL-00Da1v-6w
	for linux-rockchip@lists.infradead.org; Mon, 19 Dec 2022 13:05:09 +0000
Received: by mail-lf1-x135.google.com with SMTP id cf42so13574482lfb.1
        for <linux-rockchip@lists.infradead.org>; Mon, 19 Dec 2022 05:05:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=uEl6FOWuKZ6UAvDbu88RJHguk6sS9ZMQHT6dYgluwo8=;
        b=R/5PgBXYN7w1BEUCUag9ctmn2yHfIYDc+7U39SyBATEkLrp1YnFu2oN66OukgektU/
         mbno7A9xcaWtKv9gWhNdsBdyYtoapM6RAYvSUtNC8ptvyQC7HngaSIT5/bUD8TFhnsva
         SpPT27ILprpmZUHuijYB1j5Lng7rDSDxlR/VIm3s7yNcMIR2OpzEDgdlVPd9Hg/tC84Z
         bipcn9Cr4tA+hZsFOoaIFW6PCI1VMpaGbJvj/GDEG522BbqhyTecbt9rDohQgQuldaCg
         AibJcJlF23LXi5pvb/QVwNQjhK6avWxKxXUVw46FIbFZ1ApZ+DgW6y6RE7Kq04zs2Gcf
         QPaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=uEl6FOWuKZ6UAvDbu88RJHguk6sS9ZMQHT6dYgluwo8=;
        b=15Kq+tFHGgAxGgENVRUlbPdCQBLFUwF9YTevSGV9IJsSx8ZPWHm0b7saOGge3B4njN
         uRxD/HhVFkep3Suvk9dKMbTKhswa+kGyAa7bGQyX+09ICdPYIqzQOxFTae918jB4Aaug
         UBBeHXgkl/AhhGZ6a4Al/J/sVq8ODAdcY1rBVWksagbxn9Gk/sXNwCoVfRuZflhdvJZC
         EmG62b5q+POIXp5v3R6P5YB+ifdWWxN1TCA0q/o5KF6UFmdmuyJ4pTwgXttlK9v+jBll
         qqFaaLLd5uzuv2sgOSQ3/JqgGBu3QNpGIEhH3txE8Eu7IN/FEN+DG2axDkzDUiiEtnfd
         MUHw==
X-Gm-Message-State: ANoB5pkndUQdDqlGec5n1o1uwZ02xJJpaGrUPEuov0hUHgyrELg+12CM
	OXTwbU0GMTKzPT47y/z1ewt9rA==
X-Google-Smtp-Source: AA0mqf4f6yLjzCLg63fIkw03LtleqxYyfk7pE3QJAm9UmsEgN4eh100In7UsKiQD/PwDJArNOWxX6g==
X-Received: by 2002:a19:e051:0:b0:4b5:b7be:136b with SMTP id g17-20020a19e051000000b004b5b7be136bmr10806206lfj.69.1671455101743;
        Mon, 19 Dec 2022 05:05:01 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id z11-20020a056512370b00b004b4f1ea713csm1097577lfr.73.2022.12.19.05.04.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 19 Dec 2022 05:05:00 -0800 (PST)
Message-ID: <8db62d1a-365c-d41d-90aa-4c78c5d5e9ce@linaro.org>
Date: Mon, 19 Dec 2022 14:04:59 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: [PATCH v3] dt-bindings: display: rockchip: convert
 rockchip-lvds.txt to YAML
To: Johan Jonker <jbx6244@gmail.com>, heiko@sntech.de
Cc: hjc@rock-chips.com, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, airlied@gmail.com, daniel@ffwll.ch,
 dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <fd51df66-147d-d40f-913e-385625a71984@gmail.com>
Content-Language: en-US
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <fd51df66-147d-d40f-913e-385625a71984@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221219_050507_370408_3511D8B8 
X-CRM114-Status: GOOD (  17.67  )
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

On 19/12/2022 13:32, Johan Jonker wrote:
> Convert rockchip-lvds.txt to YAML.
> 
> Changed:
>   Add power-domains property.
>   Requirements between PX30 and RK3288
> 
> Signed-off-by: Johan Jonker <jbx6244@gmail.com>
> ---
> 
> Changed V3:
>   Filename matching compatible style
>   Drop "Regulator phandle for "
>   Specify properties and requirements per SoC
>   Sort order and restyle
> 
> Changed V2:
>   Fix title
> ---
>  .../display/rockchip/rockchip,lvds.yaml       | 170 ++++++++++++++++++
>  .../display/rockchip/rockchip-lvds.txt        |  92 ----------
>  2 files changed, 170 insertions(+), 92 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/display/rockchip/rockchip,lvds.yaml
>  delete mode 100644 Documentation/devicetree/bindings/display/rockchip/rockchip-lvds.txt
> 
> diff --git a/Documentation/devicetree/bindings/display/rockchip/rockchip,lvds.yaml b/Documentation/devicetree/bindings/display/rockchip/rockchip,lvds.yaml
> new file mode 100644
> index 000000000..03b002a05
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/display/rockchip/rockchip,lvds.yaml
> @@ -0,0 +1,170 @@
> +# SPDX-License-Identifier: GPL-2.0
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/display/rockchip/rockchip,lvds.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Rockchip low-voltage differential signal (LVDS) transmitter
> +
> +maintainers:
> +  - Sandy Huang <hjc@rock-chips.com>
> +  - Heiko Stuebner <heiko@sntech.de>
> +
> +properties:
> +  compatible:
> +    enum:
> +      - rockchip,px30-lvds
> +      - rockchip,rk3288-lvds
> +
> +  reg:
> +    maxItems: 1
> +
> +  clocks:
> +    maxItems: 1
> +
> +  clock-names:
> +    const: pclk_lvds
> +
> +  avdd1v0-supply:
> +    description: 1.0V analog power.
> +
> +  avdd1v8-supply:
> +    description: 1.8V analog power.
> +
> +  avdd3v3-supply:
> +    description: 3.3V analog power.
> +
> +  rockchip,grf:
> +    $ref: /schemas/types.yaml#/definitions/phandle
> +    description: Phandle to the general register files syscon.
> +
> +  rockchip,output:
> +    $ref: /schemas/types.yaml#/definitions/string
> +    enum: [rgb, lvds, duallvds]
> +    description: This describes the output interface.
> +
> +  phys:
> +    maxItems: 1
> +
> +  phy-names:
> +    const: dphy
> +
> +  pinctrl-names:
> +    const: lcdc
> +
> +  pinctrl-0: true
> +
> +  power-domains:
> +    maxItems: 1
> +
> +  ports:
> +    $ref: /schemas/graph.yaml#/properties/ports
> +
> +    properties:
> +      port@0:
> +        $ref: /schemas/graph.yaml#/properties/port
> +        description:
> +          Video port 0 for the VOP input.
> +          The remote endpoint maybe vopb or vopl.
> +
> +      port@1:
> +        $ref: /schemas/graph.yaml#/properties/port
> +        description:
> +          Video port 1 for either a panel or subsequent encoder.
> +
> +    required:
> +      - port@0
> +      - port@1
> +
> +required:
> +  - compatible
> +  - rockchip,grf
> +  - rockchip,output
> +  - ports
> +
> +allOf:
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            const: rockchip,px30-lvds
> +
> +    then:
> +      properties:
> +        reg: false
> +        clocks: false
> +        clock-names: false
> +        avdd1v0-supply: false
> +        avdd1v8-supply: false
> +        avdd3v3-supply: false
> +

I see one compatible expects regmap from parent (grf is the parent here)
and other is directly on MMIO bus. Not the best combination... Maybe
this  should be just split to two separate bindings? Looking at driver,
their code is also very different between these two variants.

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
