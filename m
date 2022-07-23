Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DFBECC43334
	for <linux-rockchip@archiver.kernel.org>; Sat, 23 Jul 2022 21:28:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JvY03Z11t9AzaPs/X9lz1wGusOLMk4QackxMB7lsouE=; b=pst3vsG9bZsg3z
	O7tvyD+2JuZqdnti2RdwkH3Cltta+kZzvYoVC53DoZp/TiZRKBOQtPXel8fvjrx2CXq/1ceRxYcyC
	3YAbjk01uL/6rUz2qfM/B7bQqvOabMp/333DJu0iVh7Y2oAg+59T4kwdQLg058udEggpi45cALI3/
	C8OaAkOxd7JUnJfX/Z+KCorqqxvBvoNRCp7K+bBO8Xicew7zWrguZsF4lZKfHRKYGuFQ3Q7o/nW52
	6wueyBCWO4MFiAVpvy+NlsWEKGDtnRz+JRg4SKyDQMZXCIKwey92icTh+NDFVN1VmU9Ll1pf1dQcK
	UnOsuX2Us74viazhdkNA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oFMfv-007Ve6-QC; Sat, 23 Jul 2022 21:28:39 +0000
Received: from mail-lf1-x132.google.com ([2a00:1450:4864:20::132])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oFMGB-007HkD-O2
	for linux-rockchip@lists.infradead.org; Sat, 23 Jul 2022 21:02:05 +0000
Received: by mail-lf1-x132.google.com with SMTP id t1so12638860lft.8
        for <linux-rockchip@lists.infradead.org>; Sat, 23 Jul 2022 14:02:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=NDOuFnAIE+sl0YBWuvYACRjja9BgkcP0ipfGZp4RleM=;
        b=nScvBFwZW3zCh+nENQWyufKd4C+RW72eSxsHwOtCWS4ogSUq4s8iqvTJAb02ZeGUN9
         rPFqoftLlG0HTjiiU8Nu5AQjg7vi0C56TO/ynSdzOv9MThnw7Et3MGCyvzSNZPh5+lEy
         4nwip0vDmylpGo14aDglRFckk7QC4/Lg2/LTew9+jmpN0bjLXnqFES8ujsJAGNVasJ2i
         FdRGWLEzhY6QI4PGEdDB8thGFSQKFBPJFrDb0bSzVWYaoYj+2Wv23jdf8/raNRplS7/c
         JoQO0U3G0k8dON8DoFQPLlK/ESM7GOQoVMDrOCErwoAHhiRE6qMbYYfnwS+mcEToUVU3
         cSfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=NDOuFnAIE+sl0YBWuvYACRjja9BgkcP0ipfGZp4RleM=;
        b=J/DSANBBbEZK89vegZUeX+CUS5eZ+z/tpIqfCaio6LcF8I6YeoBpx/MxnEYOJu0GjS
         ttdXzkl01MVvPzW9dJ/hrH5OLW9LF0NdOST7IV4gVz/sU/5FCIaSjlHbU246t1fgp3Vp
         Jem1Q2M9eicZlRLZuRQZ+XKKXt4uociSChJyKZav+TPwF4ezmXW0+hfI1eIhu8TxDZbw
         ua4qGIENRmeb/j3yYCtDuDtbeJugNiSvTnkD8rOeblZ+LXNMdrxC8e7zrC5AegQtPbNe
         mk8+AMEibKkNTiTRnOSVYdCF9wPd9D7vUorxpakNR3V1GhI3uMfLGrfnXVvEW/7lf4kb
         diIg==
X-Gm-Message-State: AJIora+iKqviwV/AkFrkZG1y5Vj+5vAz1/5Bd5CQ43WaeW/P4kyJb3Iv
	MFLj4wG/fjZ3or1/YGzShj3kCodjgJuzFQpE
X-Google-Smtp-Source: AGRyM1vf8kI2t4+ngts1aT3KR3C/wqmAIWyUVVeNcvL3MRsjG2G9bk3wqblJ+jSxU5DstUVMbWWWeQ==
X-Received: by 2002:a05:6512:ad6:b0:48a:20f9:c0e6 with SMTP id n22-20020a0565120ad600b0048a20f9c0e6mr2081027lfu.287.1658610121263;
        Sat, 23 Jul 2022 14:02:01 -0700 (PDT)
Received: from [192.168.10.173] (93.81-167-86.customer.lyse.net. [81.167.86.93])
        by smtp.gmail.com with ESMTPSA id v7-20020ac258e7000000b00486c14f0fe1sm1836729lfo.11.2022.07.23.14.02.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 23 Jul 2022 14:02:00 -0700 (PDT)
Message-ID: <3b38996f-e887-9130-36d0-6a02efe2034e@linaro.org>
Date: Sat, 23 Jul 2022 23:01:59 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [PATCH 09/22] dt-bindings: clock: rockchip: Document RV1126 CRU
Content-Language: en-US
To: Jagan Teki <jagan@edgeble.ai>, Heiko Stuebner <heiko@sntech.de>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Kever Yang <kever.yang@rock-chips.com>
Cc: linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, linux-clk@vger.kernel.org,
 Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>
References: <20220723204335.750095-1-jagan@edgeble.ai>
 <20220723204335.750095-10-jagan@edgeble.ai>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220723204335.750095-10-jagan@edgeble.ai>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220723_140203_839475_67181837 
X-CRM114-Status: GOOD (  17.53  )
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

On 23/07/2022 22:43, Jagan Teki wrote:
> Document dt-bindings for Rockchip RV1126 clock controller.
> 
> Cc: linux-clk@vger.kernel.org
> Cc: Michael Turquette <mturquette@baylibre.com>
> Cc: Stephen Boyd <sboyd@kernel.org>
> Signed-off-by: Jagan Teki <jagan@edgeble.ai>
> ---
>  .../bindings/clock/rockchip,rv1126-cru.yaml   | 70 +++++++++++++++++++
>  1 file changed, 70 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/clock/rockchip,rv1126-cru.yaml
> 
> diff --git a/Documentation/devicetree/bindings/clock/rockchip,rv1126-cru.yaml b/Documentation/devicetree/bindings/clock/rockchip,rv1126-cru.yaml
> new file mode 100644
> index 000000000000..cf4f11709125
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/clock/rockchip,rv1126-cru.yaml
> @@ -0,0 +1,70 @@
> +# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/clock/rockchip,rv1126-cru.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: ROCKCHIP RV1126 Family Clock Control Module Binding

s/Binding//

> +
> +maintainers:
> +  - Jagan Teki <jagan@edgeble.ai>
> +  - Finley Xiao <finley.xiao@rock-chips.com>
> +  - Heiko Stuebner <heiko@sntech.de>
> +
> +description: |

You can skip '|'. No formatting in text.

> +  The RV1126 clock controller generates the clock and also implements a
> +  reset controller for SoC peripherals.
> +
> +properties:
> +  compatible:
> +    enum:
> +      - rockchip,rv1126-cru
> +      - rockchip,rv1126-pmucru
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
> +    pmucru: clock-controller@ff480000 {
> +      compatible = "rockchip,rv1126-pmucru";
> +      reg = <0xff480000 0x1000>;
> +      rockchip,grf = <&grf>;
> +      #clock-cells = <1>;
> +      #reset-cells = <1>;
> +    };
> +  - |
> +    cru: clock-controller@ff490000 {
> +      compatible = "rockchip,rv1126-cru";
> +      reg = <0xff490000 0x1000>;
> +      rockchip,grf = <&grf>;
> +      #clock-cells = <1>;
> +      #reset-cells = <1>;
> +    };

I would keep just one example - they are the same, except compatible.
Less code to manage or to fix later...

With all the changes:

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
