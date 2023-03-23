Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 28483C7619A
	for <linux-rockchip@archiver.kernel.org>; Thu, 23 Mar 2023 09:11:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=WSqrEyDmZ04Xwz1gpNKfrSaSlM6aA+fsty96JhDQxuU=; b=MbpQyYMx1v0b+3Db7AnRrXeWYJ
	y9FPa5tsLhE01nxV7yXVzYETs7gMwTdpc3uT03uETuJLhvZ3wcD/Nb6+rZmdPqzpStJGHYDY6dTd2
	UHQ2fG2r3NSTxx7SAPT5LIuShm+x+39MvYZkyfmlcVojo+NfIZD2HuBhOnY6PdG+/DLPb8c3DRwOn
	wPkRyMNpDCEqHicN9f7AzGFg9fW3EfptbMG1YtPNHkXbm+XJnuzEkb/wCVQ5FQeAkpRtlfFoLBJzU
	S+mSHYuZhelODDlruIvb08YTi1yn2TCLHKSa6wQfe8xmKxUZKI3FVNK2p5G4rvwYxGaaJjLmsj0qt
	SkgzzQ3A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pfGy3-001NWj-1J;
	Thu, 23 Mar 2023 09:10:43 +0000
Received: from mail-wm1-x329.google.com ([2a00:1450:4864:20::329])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pfGxz-001NVO-05
	for linux-rockchip@lists.infradead.org;
	Thu, 23 Mar 2023 09:10:42 +0000
Received: by mail-wm1-x329.google.com with SMTP id p34so7978557wms.3
        for <linux-rockchip@lists.infradead.org>; Thu, 23 Mar 2023 02:10:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1679562637;
        h=content-transfer-encoding:in-reply-to:organization:references:cc:to
         :content-language:subject:reply-to:from:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=1Q9t9Il4QCvc+OYsFCOq2Y2kM3JhY3Ymwzc544wPMKY=;
        b=JAXG7TVxy3oUXnP5lw4wYb5eUI0PguXzTm0MUJRZOgGNg+x9sJrgIZfwXD8V6uJAlu
         WT0ELZzwgjZWE2rZ34WVtUCDvXKHam0T5lPtLHmgTgp8/e+X6S/6KNHKqFnc8pPKdetw
         vmYxxs4d+HE3pxtvWwA+3OF92i32upKk4N37YAiK8X0gi0GcRSywHiyEGx2eEzSoO6V9
         cLqMWqKMJvceB5POvhgrb6SBGgT9jODoQno0y6IPsK/42icg50bW2/rhalI2bXBGFhy0
         JcuFkp9O56MUzU/aDCQoKcMJR+0UFYuAc/HQTHCIW/umRJSObRIHc95BSAqGn+ouIdPi
         osbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679562637;
        h=content-transfer-encoding:in-reply-to:organization:references:cc:to
         :content-language:subject:reply-to:from:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=1Q9t9Il4QCvc+OYsFCOq2Y2kM3JhY3Ymwzc544wPMKY=;
        b=OFT6v/EGYDxQdhynTktYPi40WJ4yQJNIJLBGlQsvQB8wXRem3TjY779t7F7vNK30pf
         m39dQ1+Tr9sGTu8QkWeZJDizn7RBx463d2KTuY2OsbJwmi2e0kKykztG+TN8H+A6BBLb
         q4TFXb5pzve76vi3xzhyPQUWaROLE7g6xcCLgiOLb4EKPGw8SL7ItAb+lPguHBx/ibVy
         dhbilnkiN01PGx3QO4zIDFx2Oot18v8TaJx23Y4Y/y7LO1F2vYm8CcmKDzT6uJGcL5hW
         YVVNnD+MFV/24BblbdVqxvw6vgwoZx3aN7PPUi1/oREPPo8jAupjDbGEsfxxRKNhjpfV
         M98w==
X-Gm-Message-State: AO0yUKWG7F9soYFpGJfX/M+oFqstONwk2PW6zoyw8ZU3PRBDK12W7BnZ
	FAsPqMT1pSbPszw3t7CqSuvHWA==
X-Google-Smtp-Source: AK7set9xyYcinzWn6c0YukVAn7Jmk43wPs8OMq65solPUGlI33Pxd/Jqw8KMSSdh+BGnWmDSul5q8Q==
X-Received: by 2002:a7b:cbc8:0:b0:3ed:34e6:df4c with SMTP id n8-20020a7bcbc8000000b003ed34e6df4cmr1732318wmi.16.1679562637271;
        Thu, 23 Mar 2023 02:10:37 -0700 (PDT)
Received: from [192.168.7.188] (679773502.box.freepro.com. [212.114.21.58])
        by smtp.gmail.com with ESMTPSA id e7-20020a05600c4e4700b003ee91983003sm803157wmq.4.2023.03.23.02.10.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 23 Mar 2023 02:10:36 -0700 (PDT)
Message-ID: <f3429a2a-9796-e071-923e-3af8f20d0e91@linaro.org>
Date: Thu, 23 Mar 2023 10:10:34 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
From: Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH] media: dt-bindings: Drop unneeded quotes
Content-Language: en-US
To: Rob Herring <robh@kernel.org>, Mauro Carvalho Chehab
 <mchehab@kernel.org>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>, Chen-Yu Tsai <wens@csie.org>,
 Jernej Skrabec <jernej.skrabec@gmail.com>,
 Samuel Holland <samuel@sholland.org>, Kevin Hilman <khilman@baylibre.com>,
 Jerome Brunet <jbrunet@baylibre.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Joe Tessler <jrt@google.com>, Dongchun Zhu <dongchun.zhu@mediatek.com>,
 Jacopo Mondi <jacopo+renesas@jmondi.org>,
 Kieran Bingham <kieran.bingham+renesas@ideasonboard.com>,
 Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>,
 =?UTF-8?Q?Niklas_S=c3=b6derlund?= <niklas.soderlund+renesas@ragnatech.se>,
 Tiffany Lin <tiffany.lin@mediatek.com>,
 Andrew-CT Chen <andrew-ct.chen@mediatek.com>,
 Yunfei Dong <yunfei.dong@mediatek.com>,
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Philipp Zabel <p.zabel@pengutronix.de>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>,
 Robert Foss <rfoss@kernel.org>, Todor Tomov <todor.too@gmail.com>,
 Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>,
 Stanimir Varbanov <stanimir.k.varbanov@gmail.com>,
 Vikash Garodia <quic_vgarodia@quicinc.com>, Heiko Stuebner
 <heiko@sntech.de>, Benoit Parrot <bparrot@ti.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev,
 linux-kernel@vger.kernel.org, linux-amlogic@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-arm-msm@vger.kernel.org,
 linux-mediatek@lists.infradead.org
References: <20230320233944.2920964-1-robh@kernel.org>
Organization: Linaro Developer Services
In-Reply-To: <20230320233944.2920964-1-robh@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230323_021039_074405_59ADCDE6 
X-CRM114-Status: GOOD (  17.60  )
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
Reply-To: neil.armstrong@linaro.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On 21/03/2023 00:39, Rob Herring wrote:
> Cleanup bindings dropping unneeded quotes. Once all these are fixed,
> checking for this can be enabled in yamllint.
> 
> Signed-off-by: Rob Herring <robh@kernel.org>
> ---
>   .../devicetree/bindings/media/allwinner,sun4i-a10-ir.yaml | 2 +-
>   .../bindings/media/allwinner,sun50i-h6-vpu-g2.yaml        | 4 ++--
>   .../devicetree/bindings/media/amlogic,axg-ge2d.yaml       | 4 ++--
>   .../devicetree/bindings/media/amlogic,gx-vdec.yaml        | 4 ++--
>   .../devicetree/bindings/media/amlogic,meson-ir-tx.yaml    | 4 ++--

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>

>   .../devicetree/bindings/media/i2c/chrontel,ch7322.yaml    | 4 ++--
>   .../devicetree/bindings/media/i2c/dongwoon,dw9768.yaml    | 6 +++---
>   .../devicetree/bindings/media/i2c/maxim,max9286.yaml      | 2 +-
>   .../devicetree/bindings/media/i2c/ovti,ov02a10.yaml       | 2 +-
>   .../devicetree/bindings/media/mediatek,mdp3-rdma.yaml     | 2 +-
>   .../bindings/media/mediatek,vcodec-subdev-decoder.yaml    | 4 ++--
>   .../devicetree/bindings/media/microchip,sama5d4-vdec.yaml | 4 ++--
>   .../devicetree/bindings/media/nxp,imx8mq-vpu.yaml         | 4 ++--
>   .../devicetree/bindings/media/qcom,msm8916-camss.yaml     | 4 ++--
>   .../devicetree/bindings/media/qcom,msm8916-venus.yaml     | 8 ++++----
>   .../devicetree/bindings/media/qcom,msm8996-camss.yaml     | 4 ++--
>   .../devicetree/bindings/media/qcom,msm8996-venus.yaml     | 4 ++--
>   .../devicetree/bindings/media/qcom,sc7180-venus.yaml      | 4 ++--
>   .../devicetree/bindings/media/qcom,sc7280-venus.yaml      | 4 ++--
>   .../devicetree/bindings/media/qcom,sdm660-camss.yaml      | 4 ++--
>   .../devicetree/bindings/media/qcom,sdm660-venus.yaml      | 4 ++--
>   .../devicetree/bindings/media/qcom,sdm845-camss.yaml      | 4 ++--
>   .../devicetree/bindings/media/qcom,sdm845-venus-v2.yaml   | 4 ++--
>   .../devicetree/bindings/media/qcom,sdm845-venus.yaml      | 4 ++--
>   .../devicetree/bindings/media/qcom,sm8250-camss.yaml      | 4 ++--
>   .../devicetree/bindings/media/qcom,sm8250-venus.yaml      | 4 ++--
>   Documentation/devicetree/bindings/media/rc.yaml           | 2 +-
>   .../devicetree/bindings/media/rockchip,rk3568-vepu.yaml   | 4 ++--
>   Documentation/devicetree/bindings/media/rockchip-vpu.yaml | 4 ++--
>   Documentation/devicetree/bindings/media/ti,cal.yaml       | 2 +-
>   30 files changed, 57 insertions(+), 57 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/media/allwinner,sun4i-a10-ir.yaml b/Documentation/devicetree/bindings/media/allwinner,sun4i-a10-ir.yaml
> index 53945c61325c..42dfe22ad5f1 100644
> --- a/Documentation/devicetree/bindings/media/allwinner,sun4i-a10-ir.yaml
> +++ b/Documentation/devicetree/bindings/media/allwinner,sun4i-a10-ir.yaml
> @@ -11,7 +11,7 @@ maintainers:
>     - Maxime Ripard <mripard@kernel.org>
>   
>   allOf:
> -  - $ref: "rc.yaml#"
> +  - $ref: rc.yaml#
>   
>   properties:
>     compatible:
> diff --git a/Documentation/devicetree/bindings/media/allwinner,sun50i-h6-vpu-g2.yaml b/Documentation/devicetree/bindings/media/allwinner,sun50i-h6-vpu-g2.yaml
> index 9d44236f2deb..a4f06bbdfe49 100644
> --- a/Documentation/devicetree/bindings/media/allwinner,sun50i-h6-vpu-g2.yaml
> +++ b/Documentation/devicetree/bindings/media/allwinner,sun50i-h6-vpu-g2.yaml
> @@ -2,8 +2,8 @@
>   
>   %YAML 1.2
>   ---
> -$id: "http://devicetree.org/schemas/media/allwinner,sun50i-h6-vpu-g2.yaml#"
> -$schema: "http://devicetree.org/meta-schemas/core.yaml#"
> +$id: http://devicetree.org/schemas/media/allwinner,sun50i-h6-vpu-g2.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
>   
>   title: Hantro G2 VPU codec implemented on Allwinner H6 SoC
>   
> diff --git a/Documentation/devicetree/bindings/media/amlogic,axg-ge2d.yaml b/Documentation/devicetree/bindings/media/amlogic,axg-ge2d.yaml
> index e551be5e680e..f23fa6d06ad0 100644
> --- a/Documentation/devicetree/bindings/media/amlogic,axg-ge2d.yaml
> +++ b/Documentation/devicetree/bindings/media/amlogic,axg-ge2d.yaml
> @@ -2,8 +2,8 @@
>   # Copyright 2020 BayLibre, SAS
>   %YAML 1.2
>   ---
> -$id: "http://devicetree.org/schemas/media/amlogic,axg-ge2d.yaml#"
> -$schema: "http://devicetree.org/meta-schemas/core.yaml#"
> +$id: http://devicetree.org/schemas/media/amlogic,axg-ge2d.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
>   
>   title: Amlogic GE2D Acceleration Unit
>   
> diff --git a/Documentation/devicetree/bindings/media/amlogic,gx-vdec.yaml b/Documentation/devicetree/bindings/media/amlogic,gx-vdec.yaml
> index b827edabcafa..55930f6107c9 100644
> --- a/Documentation/devicetree/bindings/media/amlogic,gx-vdec.yaml
> +++ b/Documentation/devicetree/bindings/media/amlogic,gx-vdec.yaml
> @@ -2,8 +2,8 @@
>   # Copyright 2019 BayLibre, SAS
>   %YAML 1.2
>   ---
> -$id: "http://devicetree.org/schemas/media/amlogic,gx-vdec.yaml#"
> -$schema: "http://devicetree.org/meta-schemas/core.yaml#"
> +$id: http://devicetree.org/schemas/media/amlogic,gx-vdec.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
>   
>   title: Amlogic Video Decoder
>   
> diff --git a/Documentation/devicetree/bindings/media/amlogic,meson-ir-tx.yaml b/Documentation/devicetree/bindings/media/amlogic,meson-ir-tx.yaml
> index 4432fea32650..377acce93423 100644
> --- a/Documentation/devicetree/bindings/media/amlogic,meson-ir-tx.yaml
> +++ b/Documentation/devicetree/bindings/media/amlogic,meson-ir-tx.yaml
> @@ -2,8 +2,8 @@
>   
>   %YAML 1.2
>   ---
> -$id: "http://devicetree.org/schemas/media/amlogic,meson-ir-tx.yaml#"
> -$schema: "http://devicetree.org/meta-schemas/core.yaml#"
> +$id: http://devicetree.org/schemas/media/amlogic,meson-ir-tx.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
>   
>   title: Amlogic Meson IR transmitter
>   
> diff --git a/Documentation/devicetree/bindings/media/i2c/chrontel,ch7322.yaml b/Documentation/devicetree/bindings/media/i2c/chrontel,ch7322.yaml
> index af8ada55b3f2..4e69b6a7ffcc 100644
> --- a/Documentation/devicetree/bindings/media/i2c/chrontel,ch7322.yaml
> +++ b/Documentation/devicetree/bindings/media/i2c/chrontel,ch7322.yaml
> @@ -1,8 +1,8 @@
>   # SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
>   %YAML 1.2
>   ---
> -$id: "http://devicetree.org/schemas/media/i2c/chrontel,ch7322.yaml#"
> -$schema: "http://devicetree.org/meta-schemas/core.yaml#"
> +$id: http://devicetree.org/schemas/media/i2c/chrontel,ch7322.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
>   
>   title: Chrontel HDMI-CEC Controller
>   
> diff --git a/Documentation/devicetree/bindings/media/i2c/dongwoon,dw9768.yaml b/Documentation/devicetree/bindings/media/i2c/dongwoon,dw9768.yaml
> index 82d3d18c16a1..a0855d3b7577 100644
> --- a/Documentation/devicetree/bindings/media/i2c/dongwoon,dw9768.yaml
> +++ b/Documentation/devicetree/bindings/media/i2c/dongwoon,dw9768.yaml
> @@ -38,7 +38,7 @@ properties:
>     dongwoon,aac-mode:
>       description:
>         Indication of AAC mode select.
> -    $ref: "/schemas/types.yaml#/definitions/uint32"
> +    $ref: /schemas/types.yaml#/definitions/uint32
>       enum:
>         - 1    #  AAC2 mode(operation time# 0.48 x Tvib)
>         - 2    #  AAC3 mode(operation time# 0.70 x Tvib)
> @@ -50,7 +50,7 @@ properties:
>       description:
>         Number of AAC Timing count that controlled by one 6-bit period of
>         vibration register AACT[5:0], the unit of which is 100 us.
> -    $ref: "/schemas/types.yaml#/definitions/uint32"
> +    $ref: /schemas/types.yaml#/definitions/uint32
>       default: 0x20
>       minimum: 0x00
>       maximum: 0x3f
> @@ -59,7 +59,7 @@ properties:
>       description:
>         Indication of VCM internal clock dividing rate select, as one multiple
>         factor to calculate VCM ring periodic time Tvib.
> -    $ref: "/schemas/types.yaml#/definitions/uint32"
> +    $ref: /schemas/types.yaml#/definitions/uint32
>       enum:
>         - 0    #  Dividing Rate -  2
>         - 1    #  Dividing Rate -  1
> diff --git a/Documentation/devicetree/bindings/media/i2c/maxim,max9286.yaml b/Documentation/devicetree/bindings/media/i2c/maxim,max9286.yaml
> index 0c4213adbf6a..8df859136047 100644
> --- a/Documentation/devicetree/bindings/media/i2c/maxim,max9286.yaml
> +++ b/Documentation/devicetree/bindings/media/i2c/maxim,max9286.yaml
> @@ -86,7 +86,7 @@ properties:
>         is 100000 micro volts
>   
>     maxim,gpio-poc:
> -    $ref: '/schemas/types.yaml#/definitions/uint32-array'
> +    $ref: /schemas/types.yaml#/definitions/uint32-array
>       minItems: 2
>       maxItems: 2
>       description: |
> diff --git a/Documentation/devicetree/bindings/media/i2c/ovti,ov02a10.yaml b/Documentation/devicetree/bindings/media/i2c/ovti,ov02a10.yaml
> index 54df9d73dc86..763cebe03dc2 100644
> --- a/Documentation/devicetree/bindings/media/i2c/ovti,ov02a10.yaml
> +++ b/Documentation/devicetree/bindings/media/i2c/ovti,ov02a10.yaml
> @@ -88,7 +88,7 @@ properties:
>           properties:
>             link-frequencies: true
>             ovti,mipi-clock-voltage:
> -            $ref: "/schemas/types.yaml#/definitions/uint32"
> +            $ref: /schemas/types.yaml#/definitions/uint32
>               description:
>                 Definition of MIPI clock voltage unit. This entry corresponds to
>                 the link speed defined by the 'link-frequencies' property.
> diff --git a/Documentation/devicetree/bindings/media/mediatek,mdp3-rdma.yaml b/Documentation/devicetree/bindings/media/mediatek,mdp3-rdma.yaml
> index 9cfc0c7d23e0..7032c7e15039 100644
> --- a/Documentation/devicetree/bindings/media/mediatek,mdp3-rdma.yaml
> +++ b/Documentation/devicetree/bindings/media/mediatek,mdp3-rdma.yaml
> @@ -27,7 +27,7 @@ properties:
>       maxItems: 1
>   
>     mediatek,gce-client-reg:
> -    $ref: '/schemas/types.yaml#/definitions/phandle-array'
> +    $ref: /schemas/types.yaml#/definitions/phandle-array
>       items:
>         items:
>           - description: phandle of GCE
> diff --git a/Documentation/devicetree/bindings/media/mediatek,vcodec-subdev-decoder.yaml b/Documentation/devicetree/bindings/media/mediatek,vcodec-subdev-decoder.yaml
> index c4f20acdc1f8..20675f9ba3cd 100644
> --- a/Documentation/devicetree/bindings/media/mediatek,vcodec-subdev-decoder.yaml
> +++ b/Documentation/devicetree/bindings/media/mediatek,vcodec-subdev-decoder.yaml
> @@ -2,8 +2,8 @@
>   
>   %YAML 1.2
>   ---
> -$id: "http://devicetree.org/schemas/media/mediatek,vcodec-subdev-decoder.yaml#"
> -$schema: "http://devicetree.org/meta-schemas/core.yaml#"
> +$id: http://devicetree.org/schemas/media/mediatek,vcodec-subdev-decoder.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
>   
>   title: Mediatek Video Decode Accelerator With Multi Hardware
>   
> diff --git a/Documentation/devicetree/bindings/media/microchip,sama5d4-vdec.yaml b/Documentation/devicetree/bindings/media/microchip,sama5d4-vdec.yaml
> index 4b77103ca913..59b805ca47c5 100644
> --- a/Documentation/devicetree/bindings/media/microchip,sama5d4-vdec.yaml
> +++ b/Documentation/devicetree/bindings/media/microchip,sama5d4-vdec.yaml
> @@ -2,8 +2,8 @@
>   
>   %YAML 1.2
>   ---
> -$id: "http://devicetree.org/schemas/media/microchip,sama5d4-vdec.yaml#"
> -$schema: "http://devicetree.org/meta-schemas/core.yaml#"
> +$id: http://devicetree.org/schemas/media/microchip,sama5d4-vdec.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
>   
>   title: Hantro G1 VPU codec implemented on Microchip SAMA5D4 SoCs
>   
> diff --git a/Documentation/devicetree/bindings/media/nxp,imx8mq-vpu.yaml b/Documentation/devicetree/bindings/media/nxp,imx8mq-vpu.yaml
> index 7dc13a4b1805..3d58f02b0c5d 100644
> --- a/Documentation/devicetree/bindings/media/nxp,imx8mq-vpu.yaml
> +++ b/Documentation/devicetree/bindings/media/nxp,imx8mq-vpu.yaml
> @@ -2,8 +2,8 @@
>   
>   %YAML 1.2
>   ---
> -$id: "http://devicetree.org/schemas/media/nxp,imx8mq-vpu.yaml#"
> -$schema: "http://devicetree.org/meta-schemas/core.yaml#"
> +$id: http://devicetree.org/schemas/media/nxp,imx8mq-vpu.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
>   
>   title: Hantro G1/G2 VPU codecs implemented on i.MX8M SoCs
>   
> diff --git a/Documentation/devicetree/bindings/media/qcom,msm8916-camss.yaml b/Documentation/devicetree/bindings/media/qcom,msm8916-camss.yaml
> index 12ec3e1ea869..eb1499912c58 100644
> --- a/Documentation/devicetree/bindings/media/qcom,msm8916-camss.yaml
> +++ b/Documentation/devicetree/bindings/media/qcom,msm8916-camss.yaml
> @@ -2,8 +2,8 @@
>   
>   %YAML 1.2
>   ---
> -$id: "http://devicetree.org/schemas/media/qcom,msm8916-camss.yaml#"
> -$schema: "http://devicetree.org/meta-schemas/core.yaml#"
> +$id: http://devicetree.org/schemas/media/qcom,msm8916-camss.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
>   
>   title: Qualcomm CAMSS ISP
>   
> diff --git a/Documentation/devicetree/bindings/media/qcom,msm8916-venus.yaml b/Documentation/devicetree/bindings/media/qcom,msm8916-venus.yaml
> index 2abb7d21c0d1..4ad42b8f19e6 100644
> --- a/Documentation/devicetree/bindings/media/qcom,msm8916-venus.yaml
> +++ b/Documentation/devicetree/bindings/media/qcom,msm8916-venus.yaml
> @@ -2,8 +2,8 @@
>   
>   %YAML 1.2
>   ---
> -$id: "http://devicetree.org/schemas/media/qcom,msm8916-venus.yaml#"
> -$schema: "http://devicetree.org/meta-schemas/core.yaml#"
> +$id: http://devicetree.org/schemas/media/qcom,msm8916-venus.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
>   
>   title: Qualcomm Venus video encode and decode accelerators
>   
> @@ -47,7 +47,7 @@ properties:
>   
>       properties:
>         compatible:
> -        const: "venus-decoder"
> +        const: venus-decoder
>   
>       required:
>         - compatible
> @@ -59,7 +59,7 @@ properties:
>   
>       properties:
>         compatible:
> -        const: "venus-encoder"
> +        const: venus-encoder
>   
>       required:
>         - compatible
> diff --git a/Documentation/devicetree/bindings/media/qcom,msm8996-camss.yaml b/Documentation/devicetree/bindings/media/qcom,msm8996-camss.yaml
> index 6aeb3d6d02d5..8a10aa1cafc5 100644
> --- a/Documentation/devicetree/bindings/media/qcom,msm8996-camss.yaml
> +++ b/Documentation/devicetree/bindings/media/qcom,msm8996-camss.yaml
> @@ -2,8 +2,8 @@
>   
>   %YAML 1.2
>   ---
> -$id: "http://devicetree.org/schemas/media/qcom,msm8996-camss.yaml#"
> -$schema: "http://devicetree.org/meta-schemas/core.yaml#"
> +$id: http://devicetree.org/schemas/media/qcom,msm8996-camss.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
>   
>   title: Qualcomm CAMSS ISP
>   
> diff --git a/Documentation/devicetree/bindings/media/qcom,msm8996-venus.yaml b/Documentation/devicetree/bindings/media/qcom,msm8996-venus.yaml
> index 29d0cb6c6ebe..213247a43ef2 100644
> --- a/Documentation/devicetree/bindings/media/qcom,msm8996-venus.yaml
> +++ b/Documentation/devicetree/bindings/media/qcom,msm8996-venus.yaml
> @@ -2,8 +2,8 @@
>   
>   %YAML 1.2
>   ---
> -$id: "http://devicetree.org/schemas/media/qcom,msm8996-venus.yaml#"
> -$schema: "http://devicetree.org/meta-schemas/core.yaml#"
> +$id: http://devicetree.org/schemas/media/qcom,msm8996-venus.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
>   
>   title: Qualcomm Venus video encode and decode accelerators
>   
> diff --git a/Documentation/devicetree/bindings/media/qcom,sc7180-venus.yaml b/Documentation/devicetree/bindings/media/qcom,sc7180-venus.yaml
> index 42ee3f06c6be..5128a254fd25 100644
> --- a/Documentation/devicetree/bindings/media/qcom,sc7180-venus.yaml
> +++ b/Documentation/devicetree/bindings/media/qcom,sc7180-venus.yaml
> @@ -2,8 +2,8 @@
>   
>   %YAML 1.2
>   ---
> -$id: "http://devicetree.org/schemas/media/qcom,sc7180-venus.yaml#"
> -$schema: "http://devicetree.org/meta-schemas/core.yaml#"
> +$id: http://devicetree.org/schemas/media/qcom,sc7180-venus.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
>   
>   title: Qualcomm Venus video encode and decode accelerators
>   
> diff --git a/Documentation/devicetree/bindings/media/qcom,sc7280-venus.yaml b/Documentation/devicetree/bindings/media/qcom,sc7280-venus.yaml
> index cf361dd9de08..eb9ce438dbe0 100644
> --- a/Documentation/devicetree/bindings/media/qcom,sc7280-venus.yaml
> +++ b/Documentation/devicetree/bindings/media/qcom,sc7280-venus.yaml
> @@ -2,8 +2,8 @@
>   
>   %YAML 1.2
>   ---
> -$id: "http://devicetree.org/schemas/media/qcom,sc7280-venus.yaml#"
> -$schema: "http://devicetree.org/meta-schemas/core.yaml#"
> +$id: http://devicetree.org/schemas/media/qcom,sc7280-venus.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
>   
>   title: Qualcomm Venus video encode and decode accelerators
>   
> diff --git a/Documentation/devicetree/bindings/media/qcom,sdm660-camss.yaml b/Documentation/devicetree/bindings/media/qcom,sdm660-camss.yaml
> index b28c8e17f158..0a109e126064 100644
> --- a/Documentation/devicetree/bindings/media/qcom,sdm660-camss.yaml
> +++ b/Documentation/devicetree/bindings/media/qcom,sdm660-camss.yaml
> @@ -2,8 +2,8 @@
>   
>   %YAML 1.2
>   ---
> -$id: "http://devicetree.org/schemas/media/qcom,sdm660-camss.yaml#"
> -$schema: "http://devicetree.org/meta-schemas/core.yaml#"
> +$id: http://devicetree.org/schemas/media/qcom,sdm660-camss.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
>   
>   title: Qualcomm CAMSS ISP
>   
> diff --git a/Documentation/devicetree/bindings/media/qcom,sdm660-venus.yaml b/Documentation/devicetree/bindings/media/qcom,sdm660-venus.yaml
> index 45e3f58f52bd..4a0a9ca33cad 100644
> --- a/Documentation/devicetree/bindings/media/qcom,sdm660-venus.yaml
> +++ b/Documentation/devicetree/bindings/media/qcom,sdm660-venus.yaml
> @@ -2,8 +2,8 @@
>   
>   %YAML 1.2
>   ---
> -$id: "http://devicetree.org/schemas/media/qcom,sdm660-venus.yaml#"
> -$schema: "http://devicetree.org/meta-schemas/core.yaml#"
> +$id: http://devicetree.org/schemas/media/qcom,sdm660-venus.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
>   
>   title: Qualcomm Venus video encode and decode accelerators
>   
> diff --git a/Documentation/devicetree/bindings/media/qcom,sdm845-camss.yaml b/Documentation/devicetree/bindings/media/qcom,sdm845-camss.yaml
> index f9a003882f84..1530ad0d80bd 100644
> --- a/Documentation/devicetree/bindings/media/qcom,sdm845-camss.yaml
> +++ b/Documentation/devicetree/bindings/media/qcom,sdm845-camss.yaml
> @@ -2,8 +2,8 @@
>   
>   %YAML 1.2
>   ---
> -$id: "http://devicetree.org/schemas/media/qcom,sdm845-camss.yaml#"
> -$schema: "http://devicetree.org/meta-schemas/core.yaml#"
> +$id: http://devicetree.org/schemas/media/qcom,sdm845-camss.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
>   
>   title: Qualcomm CAMSS ISP
>   
> diff --git a/Documentation/devicetree/bindings/media/qcom,sdm845-venus-v2.yaml b/Documentation/devicetree/bindings/media/qcom,sdm845-venus-v2.yaml
> index 8edc8a2f43a5..d81c3ee53ed6 100644
> --- a/Documentation/devicetree/bindings/media/qcom,sdm845-venus-v2.yaml
> +++ b/Documentation/devicetree/bindings/media/qcom,sdm845-venus-v2.yaml
> @@ -2,8 +2,8 @@
>   
>   %YAML 1.2
>   ---
> -$id: "http://devicetree.org/schemas/media/qcom,sdm845-venus-v2.yaml#"
> -$schema: "http://devicetree.org/meta-schemas/core.yaml#"
> +$id: http://devicetree.org/schemas/media/qcom,sdm845-venus-v2.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
>   
>   title: Qualcomm Venus video encode and decode accelerators
>   
> diff --git a/Documentation/devicetree/bindings/media/qcom,sdm845-venus.yaml b/Documentation/devicetree/bindings/media/qcom,sdm845-venus.yaml
> index 57d503373efe..1bf043c4c8fb 100644
> --- a/Documentation/devicetree/bindings/media/qcom,sdm845-venus.yaml
> +++ b/Documentation/devicetree/bindings/media/qcom,sdm845-venus.yaml
> @@ -2,8 +2,8 @@
>   
>   %YAML 1.2
>   ---
> -$id: "http://devicetree.org/schemas/media/qcom,sdm845-venus.yaml#"
> -$schema: "http://devicetree.org/meta-schemas/core.yaml#"
> +$id: http://devicetree.org/schemas/media/qcom,sdm845-venus.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
>   
>   title: Qualcomm Venus video encode and decode accelerators
>   
> diff --git a/Documentation/devicetree/bindings/media/qcom,sm8250-camss.yaml b/Documentation/devicetree/bindings/media/qcom,sm8250-camss.yaml
> index 07a2af12f37d..fa5073c0fd1e 100644
> --- a/Documentation/devicetree/bindings/media/qcom,sm8250-camss.yaml
> +++ b/Documentation/devicetree/bindings/media/qcom,sm8250-camss.yaml
> @@ -2,8 +2,8 @@
>   
>   %YAML 1.2
>   ---
> -$id: "http://devicetree.org/schemas/media/qcom,sm8250-camss.yaml#"
> -$schema: "http://devicetree.org/meta-schemas/core.yaml#"
> +$id: http://devicetree.org/schemas/media/qcom,sm8250-camss.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
>   
>   title: Qualcomm CAMSS ISP
>   
> diff --git a/Documentation/devicetree/bindings/media/qcom,sm8250-venus.yaml b/Documentation/devicetree/bindings/media/qcom,sm8250-venus.yaml
> index 4b7a12523dcf..8c8141723524 100644
> --- a/Documentation/devicetree/bindings/media/qcom,sm8250-venus.yaml
> +++ b/Documentation/devicetree/bindings/media/qcom,sm8250-venus.yaml
> @@ -2,8 +2,8 @@
>   
>   %YAML 1.2
>   ---
> -$id: "http://devicetree.org/schemas/media/qcom,sm8250-venus.yaml#"
> -$schema: "http://devicetree.org/meta-schemas/core.yaml#"
> +$id: http://devicetree.org/schemas/media/qcom,sm8250-venus.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
>   
>   title: Qualcomm Venus video encode and decode accelerators
>   
> diff --git a/Documentation/devicetree/bindings/media/rc.yaml b/Documentation/devicetree/bindings/media/rc.yaml
> index e732b7f3a635..6cecd7d941ca 100644
> --- a/Documentation/devicetree/bindings/media/rc.yaml
> +++ b/Documentation/devicetree/bindings/media/rc.yaml
> @@ -18,7 +18,7 @@ properties:
>       description:
>         Specifies the scancode/key mapping table defined in-kernel for
>         the remote controller.
> -    $ref: '/schemas/types.yaml#/definitions/string'
> +    $ref: /schemas/types.yaml#/definitions/string
>       enum:
>         - rc-adstech-dvb-t-pci
>         - rc-alink-dtu-m
> diff --git a/Documentation/devicetree/bindings/media/rockchip,rk3568-vepu.yaml b/Documentation/devicetree/bindings/media/rockchip,rk3568-vepu.yaml
> index 81b26eb4cd35..9d90d8d0565a 100644
> --- a/Documentation/devicetree/bindings/media/rockchip,rk3568-vepu.yaml
> +++ b/Documentation/devicetree/bindings/media/rockchip,rk3568-vepu.yaml
> @@ -2,8 +2,8 @@
>   
>   %YAML 1.2
>   ---
> -$id: "http://devicetree.org/schemas/media/rockchip,rk3568-vepu.yaml#"
> -$schema: "http://devicetree.org/meta-schemas/core.yaml#"
> +$id: http://devicetree.org/schemas/media/rockchip,rk3568-vepu.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
>   
>   title: Hantro G1 VPU encoders implemented on Rockchip SoCs
>   
> diff --git a/Documentation/devicetree/bindings/media/rockchip-vpu.yaml b/Documentation/devicetree/bindings/media/rockchip-vpu.yaml
> index 6cc4d3e5a61d..ee622a8ee1cc 100644
> --- a/Documentation/devicetree/bindings/media/rockchip-vpu.yaml
> +++ b/Documentation/devicetree/bindings/media/rockchip-vpu.yaml
> @@ -2,8 +2,8 @@
>   
>   %YAML 1.2
>   ---
> -$id: "http://devicetree.org/schemas/media/rockchip-vpu.yaml#"
> -$schema: "http://devicetree.org/meta-schemas/core.yaml#"
> +$id: http://devicetree.org/schemas/media/rockchip-vpu.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
>   
>   title: Hantro G1 VPU codecs implemented on Rockchip SoCs
>   
> diff --git a/Documentation/devicetree/bindings/media/ti,cal.yaml b/Documentation/devicetree/bindings/media/ti,cal.yaml
> index 26b3fedef355..f1a940a110d2 100644
> --- a/Documentation/devicetree/bindings/media/ti,cal.yaml
> +++ b/Documentation/devicetree/bindings/media/ti,cal.yaml
> @@ -47,7 +47,7 @@ properties:
>       maxItems: 1
>   
>     ti,camerrx-control:
> -    $ref: "/schemas/types.yaml#/definitions/phandle-array"
> +    $ref: /schemas/types.yaml#/definitions/phandle-array
>       items:
>         - items:
>             - description: phandle to device control module


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
