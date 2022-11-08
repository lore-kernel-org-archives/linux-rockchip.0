Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C42A5C4332F
	for <linux-rockchip@archiver.kernel.org>; Tue,  8 Nov 2022 18:05:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7nc8tC1xNW+F/yWgi5BVDLV170q51U+af9ygr2WB8R0=; b=gtvm6DPoYV5RiP
	9XhQRq+nJ1kf6GyphL+juEY+ipbZm3BOKTXSd8yIKtKXyah9DCuDwhZJaqIq0prTuEzyKaS/H+2t2
	WcXyiXXFDp1lTNNA7JeAJ6u3P3ZOpPSjt9l+GEUaS8VVwfvfetctOwNdEwc94Lxh6Z8aqtV/8DJsH
	5vydr+FXknUEHvRdUDiEf5rM+4RagUPA1Yd+BSrk9wDw4AfTF0018ROo4bJUEF7CKddRMx7izQzcr
	ZfU5l7sjtkedzdY0iHS5wbHUSIhcqE7cZnUxxKLHFte2NIS9Hr62548HkxJyaB7iQQj6OViKQGlMB
	E9ybhAMwGTKgGfD0qyxw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1osSy3-007M1G-Ty; Tue, 08 Nov 2022 18:04:59 +0000
Received: from mail-lj1-x234.google.com ([2a00:1450:4864:20::234])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1osSy0-007M0P-Qz
	for linux-rockchip@lists.infradead.org; Tue, 08 Nov 2022 18:04:58 +0000
Received: by mail-lj1-x234.google.com with SMTP id d20so22271952ljc.12
        for <linux-rockchip@lists.infradead.org>; Tue, 08 Nov 2022 10:04:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=d8lLQrLa9lfgAhLWiz3+cGR1Ww6pJngs3/YRtX20tqU=;
        b=sZTVQpeTSHFjr+vC32q4RN/mHfcdVDA7xMdjOfiBBiyUhOyrcNX8kulqsn9u47xJDy
         7g2p9vwgCTeTO32/qyifA0JKI49z7XHqzY84Xt6sPThEcTr/xLABqlKtdGPbTQifVLKB
         S4UrFVqJ+46VhcGCprDLY/KOmDBQ4l7O42VgEcaz+xcNPP3z1UBHAAt3YnQEYB/frwpW
         +RurAV5t7YFtRvczfhQgFKZJgy04tQsKUHFFCGLmcz0xzHnezTR2PtoQfkMJIyN4zsoE
         Vm88ikl9RysO6sqVxgD+/pYjn5o9CBP25LlHWaXD88BkLVtfPq291940TOPU+77Sa3yJ
         A4ng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=d8lLQrLa9lfgAhLWiz3+cGR1Ww6pJngs3/YRtX20tqU=;
        b=s+NDizKHACkNfbNlVvK9MbZVKkARNwdTA7uWkRqrk2uWqeJBXXRmO62botLhAD5lMA
         06ZGdLhGMjC+MKmi/5ueVQJb09BuY/4Q+AoJVLGt7x+j4qW2mqFki+vK5PbMFrUM+NQF
         5UmAhIRlacMntZy4UHz+WdYuKyVzBXmF34vLr1wfUuRdrFu5BTaXdNtp+J/YJg0Q1Icf
         pz+IYfmcoQmN/pjIB7rkLG95QtBPR2UiQ38dhigQstdXeC+G5nYKR6m/2TR/4jd6fmCh
         R90bOZq06isycpTf+SZXaKnI3As/esArm5p6C4DgGC4LdYJCb6hrC3iSVWmAYR7vCU5r
         0klQ==
X-Gm-Message-State: ACrzQf3bBWzWq8GNkStviJO9b73ToUB55woq1zx39ifq/A0WeP/LnMas
	9QlGYBx80nfDYPobMqT5aiurEA==
X-Google-Smtp-Source: AMsMyM4N+JvIZIj0O9kVtpNaG937zWm4KuV/52/nYkXR3qUQ3hkYMoNVIoxbh4ec7Z8LvK6zCWW6LQ==
X-Received: by 2002:a2e:9d5a:0:b0:25e:2c67:edaf with SMTP id y26-20020a2e9d5a000000b0025e2c67edafmr19844245ljj.437.1667930693415;
        Tue, 08 Nov 2022 10:04:53 -0800 (PST)
Received: from [192.168.0.20] (088156142199.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.199])
        by smtp.gmail.com with ESMTPSA id f4-20020a056512228400b00498f570aef2sm1868606lfu.209.2022.11.08.10.04.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 08 Nov 2022 10:04:52 -0800 (PST)
Message-ID: <357a9396-57b2-ce55-5825-eed14ff3c14e@linaro.org>
Date: Tue, 8 Nov 2022 19:04:52 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Subject: Re: [PATCH 4/5] arm64: dts: rockchip: Add rk3588-evb1 board
Content-Language: en-US
To: Sebastian Reichel <sebastian.reichel@collabora.com>,
 Heiko Stuebner <heiko@sntech.de>
Cc: Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Linus Walleij <linus.walleij@linaro.org>,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Kever Yang <kever.yang@rock-chips.com>,
 kernel@collabora.com
References: <20221108171500.99599-1-sebastian.reichel@collabora.com>
 <20221108171500.99599-5-sebastian.reichel@collabora.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221108171500.99599-5-sebastian.reichel@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221108_100456_915842_B5D167AB 
X-CRM114-Status: GOOD (  20.04  )
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

On 08/11/2022 18:14, Sebastian Reichel wrote:
> From: Kever Yang <kever.yang@rock-chips.com>
> 
> Add board file for the RK3588 evaluation board. While the hardware
> offers plenty of peripherals and connectivity this basic implementation
> just handles things required to successfully boot Linux from eMMC,
> connect via UART or Ethernet.
> 
> Signed-off-by: Kever Yang <kever.yang@rock-chips.com>
> [rebase, update commit message, use EVB1 for SoC bringup]
> Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

I acked something very different. This has several new stuff with things
to fix, so please drop my ack.

> Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
> ---
>  .../devicetree/bindings/arm/rockchip.yaml     |   5 +
>  arch/arm64/boot/dts/rockchip/Makefile         |   1 +
>  .../boot/dts/rockchip/rk3588-evb1-v10.dts     | 156 ++++++++++++++++++
>  3 files changed, 162 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/rockchip/rk3588-evb1-v10.dts
> 
> diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
> index c6c69a4e3777..4230881371fa 100644
> --- a/Documentation/devicetree/bindings/arm/rockchip.yaml
> +++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
> @@ -739,6 +739,11 @@ properties:
>            - const: rockchip,rk3568-bpi-r2pro
>            - const: rockchip,rk3568
>  
> +      - description: Rockchip RK3588 Evaluation board
> +        items:
> +          - const: rockchip,rk3588-evb1-v10
> +          - const: rockchip,rk3588
> +
>  additionalProperties: true
>  
>  ...
> diff --git a/arch/arm64/boot/dts/rockchip/Makefile b/arch/arm64/boot/dts/rockchip/Makefile
> index 8c15593c0ca4..12ed53de11eb 100644
> --- a/arch/arm64/boot/dts/rockchip/Makefile
> +++ b/arch/arm64/boot/dts/rockchip/Makefile
> @@ -72,3 +72,4 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-soquartz-cm4.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3568-bpi-r2-pro.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3568-evb1-v10.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3568-rock-3a.dtb
> +dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-evb1-v10.dtb
> diff --git a/arch/arm64/boot/dts/rockchip/rk3588-evb1-v10.dts b/arch/arm64/boot/dts/rockchip/rk3588-evb1-v10.dts
> new file mode 100644
> index 000000000000..a9b8e0ed1125
> --- /dev/null
> +++ b/arch/arm64/boot/dts/rockchip/rk3588-evb1-v10.dts
> @@ -0,0 +1,156 @@
> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> +/*
> + * Copyright (c) 2021 Rockchip Electronics Co., Ltd.
> + *
> + */
> +
> +/dts-v1/;
> +
> +#include <dt-bindings/pinctrl/rockchip.h>
> +#include <dt-bindings/gpio/gpio.h>
> +#include "rk3588.dtsi"
> +
> +/ {
> +	model = "Rockchip RK3588 EVB1 V10 Board";
> +	compatible = "rockchip,rk3588-evb1-v10", "rockchip,rk3588";
> +
> +	chosen {
> +		stdout-path = "serial2:1500000n8";
> +	};
> +
> +	vcc12v_dcin: vcc12v-dcin {

Node names should be generic, so at least regualtor prefix or suffix
https://devicetree-specification.readthedocs.io/en/latest/chapter2-devicetree-basics.html#generic-names-recommendation

> +		compatible = "regulator-fixed";
> +		regulator-name = "vcc12v_dcin";
> +		regulator-always-on;
> +		regulator-boot-on;
> +		regulator-min-microvolt = <12000000>;
> +		regulator-max-microvolt = <12000000>;
> +	};
> +
> +	vcc5v0_sys: vcc5v0-sys {
> +		compatible = "regulator-fixed";
> +		regulator-name = "vcc5v0_sys";
> +		regulator-always-on;
> +		regulator-boot-on;
> +		regulator-min-microvolt = <5000000>;
> +		regulator-max-microvolt = <5000000>;
> +		vin-supply = <&vcc12v_dcin>;
> +	};
> +
Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
