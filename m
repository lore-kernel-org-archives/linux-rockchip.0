Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4DEA0C433F5
	for <linux-rockchip@archiver.kernel.org>; Sat, 14 May 2022 20:41:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NW0zzVg3D78DHtBLFwgEw6dmvu7xfBHiGWU08tK762A=; b=r1YG3+quIp7I5G
	gFE+tPFrcmqceyV8nxfu8YIahsLQYtWsPqur/nEJyAYXHe4NMECKeHoAAnOy/HwVJ+RES40QRe4iq
	Z7YrrZjC92LJwxwSJjZqKROgo9BCcXA/ckW7w/NLO8KdOHWFD4pP3GC2nGl3bbZFQ4L5IX86MCZz2
	OV4qgzoKTzVJO7G/x/+WbvKoIO4wPX8bCwurMpVHeTY+JlPqZM7Zj+8hz2vZZZ48FP1Vn2nBp6GDr
	Wv09CxkwnMVD2G+771QZlzu1RuHj179xTZ96puj9aqsR+2L55gJrJpdc5hunJ35Nh87R3DGaLpM/q
	X/jVVDr1Oih3gG4uMWww==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1npya0-002CoO-Ks; Sat, 14 May 2022 20:41:36 +0000
Received: from mail-lj1-x22c.google.com ([2a00:1450:4864:20::22c])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1npyZx-002CnR-6I
 for linux-rockchip@lists.infradead.org; Sat, 14 May 2022 20:41:34 +0000
Received: by mail-lj1-x22c.google.com with SMTP id g16so14000294lja.3
 for <linux-rockchip@lists.infradead.org>; Sat, 14 May 2022 13:41:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=message-id:date:mime-version:user-agent:subject:content-language:to
 :cc:references:from:in-reply-to:content-transfer-encoding;
 bh=3iGzxhbVDLQZMgpEjJUgXyEyHAViP8oVHF1txcdlmV8=;
 b=N5MEGBb3bmfvLt1/VDR6ABuN7P+f9Tl+Bxv6+Q10oz9k6BZjpxCxTVG1ogxADxZEVK
 H+F6YZmN8Sc2NfAzdP7wCkmz2ppvmZ+fPwE53G10Roc4XXFAU7KHLlqmFx26bEgHYWSs
 AJMXNfa9t6QcsVrfjwnYJENCWd99ZM0lyolA4iWVr9CV9i3sjq/LI2cztTT5XXJ35D8x
 IH/IvnpsT2xS/dXXjtOBpXQaflHYwWGu/QknuGyuv6fVyiuomHC0cTWAOYIQlW/zZFmN
 aIDp5Ssp1R85gu8/sksKG+wAV9NE96tAO2fcEZ+FJc8MaMTEN1YiXa9pxcxSp68wT31A
 ueUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=3iGzxhbVDLQZMgpEjJUgXyEyHAViP8oVHF1txcdlmV8=;
 b=FgNqu+SRp0dpxYZf+0q/CsHD5MO69kHNRPLsIuNIo4PdxZKLqIXjOOQq5A053NvTm8
 Wns+YTEWRXXkcdjNnkoj5hEKie9wu8OVJcdOwG8qmlDWDMATsPpqC9eCTzlpy82oGnHZ
 62WLpmW6s8lfPPExl6rkihIj/BWja2PNKT5W2p5jaGHdVz1sorT5db1WgYlcFvuVNR94
 gthGEHx3NT8UekGBmChHqBVvtd83y5ObXAGEsO6VaqTNBkN7GuYDnKy5rVXV1ZdpFHnB
 22buPE6Qyov32mWj0PI2CVS97vj2kEbsHvA8uFaH3yrHLyH3YwWpMERMXais1k/NXIde
 YrMg==
X-Gm-Message-State: AOAM530x62Ph/FBtEBGHdQFluQCD2oJEphuB1lFpRfh1ysX5Gt90dUHa
 xNVrcH5ToGB4oRcpeeRTCt4lrw==
X-Google-Smtp-Source: ABdhPJwMF2agC7adkE7LOWfQCIhtnfSu8UkDs0sf2IPbdLJ15Vg9UmKKnsHofQjhK629bnaqat+Yrw==
X-Received: by 2002:a2e:b00a:0:b0:24f:e0f:dd1f with SMTP id
 y10-20020a2eb00a000000b0024f0e0fdd1fmr6651385ljk.221.1652560890936; 
 Sat, 14 May 2022 13:41:30 -0700 (PDT)
Received: from [192.168.0.17] (78-11-189-27.static.ip.netia.com.pl.
 [78.11.189.27]) by smtp.gmail.com with ESMTPSA id
 v10-20020a2e504a000000b0024f3d1dae93sm945554ljd.27.2022.05.14.13.41.29
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 14 May 2022 13:41:30 -0700 (PDT)
Message-ID: <440a7dc6-7ec4-d7a9-0c56-3b3dc15b79d0@linaro.org>
Date: Sat, 14 May 2022 22:41:29 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.1
Subject: Re: [PATCH v4 1/3] media: dt-binding: media: Add rockchip-vepu binding
Content-Language: en-US
To: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring
 <robh+dt@kernel.org>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>, Heiko Stuebner <heiko@sntech.de>
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20220514133604.174905-1-frattaroli.nicolas@gmail.com>
 <20220514133604.174905-2-frattaroli.nicolas@gmail.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220514133604.174905-2-frattaroli.nicolas@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220514_134133_286328_2853CDEC 
X-CRM114-Status: GOOD (  22.50  )
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

On 14/05/2022 15:36, Nicolas Frattaroli wrote:
> The RK3568 and RK3566 have a Hantro VPU node solely dedicated to
> encoding. This patch adds a new binding to describe it, as it
> does not really fit the rockchip-vpu binding, since there is no
> decoder.
> 
> Signed-off-by: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
> ---
>  .../bindings/media/rockchip-vepu.yaml         | 64 +++++++++++++++++++
>  MAINTAINERS                                   |  1 +
>  2 files changed, 65 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/media/rockchip-vepu.yaml
> 
> diff --git a/Documentation/devicetree/bindings/media/rockchip-vepu.yaml b/Documentation/devicetree/bindings/media/rockchip-vepu.yaml
> new file mode 100644
> index 000000000000..b7ba5bf3517a
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/media/rockchip-vepu.yaml

Filename: vendor,device (not hyphen)
It would be actually better if it followed the first compatible, so
"rockchip,rk3568-vepu.yaml"


> @@ -0,0 +1,64 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +
> +%YAML 1.2
> +---
> +$id: "http://devicetree.org/schemas/media/rockchip-vepu.yaml#"
> +$schema: "http://devicetree.org/meta-schemas/core.yaml#"
> +
> +title: Hantro G1 VPU encoders implemented on Rockchip SoCs
> +
> +maintainers:
> +  - Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
> +
> +description:
> +  Hantro G1 video encode-only accelerators present on Rockchip SoCs.
> +
> +properties:
> +  compatible:
> +    enum:
> +      - rockchip,rk3568-vepu
> +
> +  reg:
> +    maxItems: 1
> +
> +  interrupts:
> +    maxItems: 1
> +
> +  clocks:
> +    maxItems: 2
> +
> +  clock-names:
> +    items:
> +      - const: aclk
> +      - const: hclk

Since these are new bindings, it would be good to follow DT convention
and not add common "clk" prefix to clocks. Just like DMA is "tx" not
"txdma". However clock names "a" and "h" are also not good and maybe
this is already shared implementation?

> + 
> +  power-domains:
> +    maxItems: 1
> +
> +  iommus:
> +    maxItems: 1
> +
> +required:
> +  - compatible
> +  - reg
> +  - interrupts
> +  - clocks
> +  - clock-names
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +        #include <dt-bindings/clock/rk3568-cru.h>

Indentation starts at "|" (so four spaces)

> +        #include <dt-bindings/interrupt-controller/arm-gic.h>
> +        #include <dt-bindings/power/rk3568-power.h>
> +
> +        vepu: video-codec@fdee0000 {

four spaces.

> +                compatible = "rockchip,rk3568-vepu";
> +                reg = <0x0 0xfdee0000 0x0 0x800>;
> +                interrupts = <GIC_SPI 64 IRQ_TYPE_LEVEL_HIGH>;
> +                clocks = <&cru ACLK_JENC>, <&cru HCLK_JENC>;
> +                clock-names = "aclk", "hclk";
> +                iommus = <&vepu_mmu>;
> +                power-domains = <&power RK3568_PD_RGA>;
> +        };
> diff --git a/MAINTAINERS b/MAINTAINERS
> index 9ce78f2275dc..f901a42e5d0f 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -8637,6 +8637,7 @@ L:	linux-media@vger.kernel.org
>  L:	linux-rockchip@lists.infradead.org
>  S:	Maintained
>  F:	Documentation/devicetree/bindings/media/nxp,imx8mq-vpu.yaml
> +F:	Documentation/devicetree/bindings/media/rockchip-vepu.yaml
>  F:	Documentation/devicetree/bindings/media/rockchip-vpu.yaml
>  F:	drivers/staging/media/hantro/
>  


Best regards,
Krzysztof

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
