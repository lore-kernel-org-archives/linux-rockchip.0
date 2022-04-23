Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2784EC433EF
	for <linux-rockchip@archiver.kernel.org>; Sat, 23 Apr 2022 10:10:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VJ8xDcbttdxIrWx7qoakshSDCd/SCX3/nd7IDSLAJi0=; b=msk5H1bq9yB144
	VcXg1lvA2qH+eGB61ouozuHldB3+TAPU5t8egqjgdtLZGlHqC6nJn4bX21FKOdpMWIpadTPETBdsw
	irmB56lJmkOI5izMxSYcz2AuCZU0fxNRduH6uvxeiHhGwH0Kond9XFdf6XO5hkJiQ1sF519uO5A0l
	r9WvbcC58GDav1hzTiv3QlegT8KB2KcUQeHan6oFDY8qfrsDTZPQ7HljX5Dy95GObJNesq2ByyzFQ
	2ByWUWKYFUMlLt/vANkOxefLN0TBFFtca4wiQo4iKWoVHKMyZrjYF1b1LFjjCZ3b8aBnlAQx7U++w
	ulkRInZqoH+Rosy15Q4A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1niCiS-0043LQ-SR; Sat, 23 Apr 2022 10:10:12 +0000
Received: from mail-ej1-x62b.google.com ([2a00:1450:4864:20::62b])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1niChg-0042xA-VR
 for linux-rockchip@lists.infradead.org; Sat, 23 Apr 2022 10:09:26 +0000
Received: by mail-ej1-x62b.google.com with SMTP id i27so20685766ejd.9
 for <linux-rockchip@lists.infradead.org>; Sat, 23 Apr 2022 03:09:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=message-id:date:mime-version:user-agent:subject:content-language:to
 :cc:references:from:in-reply-to:content-transfer-encoding;
 bh=DCeonWjVpVvFaDIUwzVDrsiqJjzTalP0OPLls+NZnWc=;
 b=Ti6mIMHpl+KN1/VH2J/2Cm2mTkZux/aaoLWdUgSJvMYK24cdjcpn/xrC3BuGDo4kU5
 zVPpBVbSqxfJsJOqUtG0AvsE5eno6MEaDIdYS5A5JMJ6H7ahribCTyyba0KYpA2nqLPJ
 BI8saKICCz7P89BZceexn4b0+G5zn3YM2hhIsdizMzQ0GYAcp2NhaS7unERZLNvZRkhV
 jyPbeGU5IJWhC21moe7MTkHHFwGGiJ9PXB0TzaGiZCsw3s83TzXTJOobl7nE8d5lHyzz
 nYMOCOeD9ctRMRRf9Rw8MYeHrcD2stIQr6yYnMX9fqRJQO1Oh7KtVK5a4d3dwe0wQOB1
 BhQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=DCeonWjVpVvFaDIUwzVDrsiqJjzTalP0OPLls+NZnWc=;
 b=mYI5vZpRS6X0EbgRdomtaRO65UjXfRXJdKu1+mXcjqaKNsDmYceWd4V5S7VzSGAm4K
 38yykNnfQ2R9LkXiDeFbYWVUhSzzrdummxUJkweBYjVr8iEA4WUiNGv5mW1R5FdcxCHG
 /wSaAjTWqEDkhazt440eBxhJnQaCLd8KjIMHt4UoPt2xEUs4/CQPF6OHQD0k9oRq3mvB
 vMrIhPbiI4P06Mspw1IB76nqoRqbqexqziHXxSG80oyqzflwrJAzwlSIbh1+r7ZD35Ff
 OBq9i76uKcSPjZ7Z2WZI+WrqxA6Xz3L6b3jlDGQ+hVH1GoHR39843wFk0DYBj0gjIi3u
 Wj3g==
X-Gm-Message-State: AOAM532zedqdCX/leRoknG0HAKGoebEcQ1R5l1ULCavD+Q4e3MMenO6e
 zG9rGip9N2nuOssV7jOQ0wDPeg==
X-Google-Smtp-Source: ABdhPJxH7lyOrG5mIRwnK45I7YIT1NaYQjc31HVx1K3KqPyODzSMcETNAdiuJaWQhGMZt5D/Z2kNzQ==
X-Received: by 2002:a17:906:8301:b0:6e4:896d:59b1 with SMTP id
 j1-20020a170906830100b006e4896d59b1mr7624358ejx.396.1650708563296; 
 Sat, 23 Apr 2022 03:09:23 -0700 (PDT)
Received: from [192.168.0.234] (xdsl-188-155-176-92.adslplus.ch.
 [188.155.176.92]) by smtp.gmail.com with ESMTPSA id
 p12-20020a50c94c000000b00425c48132bfsm1362892edh.55.2022.04.23.03.09.22
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 23 Apr 2022 03:09:22 -0700 (PDT)
Message-ID: <46e72600-b96a-03a9-134d-28a0cb4bc078@linaro.org>
Date: Sat, 23 Apr 2022 12:09:21 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [PATCHv1 19/19] arm64: dts: rockchip: Add rk3588-evb1 board
Content-Language: en-US
To: Sebastian Reichel <sebastian.reichel@collabora.com>,
 Heiko Stuebner <heiko@sntech.de>
Cc: Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski
 <krzk+dt@kernel.org>, Linus Walleij <linus.walleij@linaro.org>,
 Bartosz Golaszewski <brgl@bgdev.pl>, Adrian Hunter
 <adrian.hunter@intel.com>, Ulf Hansson <ulf.hansson@linaro.org>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Michael Turquette <mturquette@baylibre.com>, Stephen Boyd
 <sboyd@kernel.org>, linux-clk@vger.kernel.org, linux-mmc@vger.kernel.org,
 linux-gpio@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, kernel@lists.collabora.co.uk,
 Kever Yang <kever.yang@rock-chips.com>, kernel@collabora.com
References: <20220422170920.401914-1-sebastian.reichel@collabora.com>
 <20220422170920.401914-20-sebastian.reichel@collabora.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220422170920.401914-20-sebastian.reichel@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220423_030925_044679_40D4DD62 
X-CRM114-Status: GOOD (  19.05  )
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

On 22/04/2022 19:09, Sebastian Reichel wrote:
> From: Kever Yang <kever.yang@rock-chips.com>
> 
> Add board file for the RK3588 evaluation board. While the hardware
> offers plenty of peripherals and connectivity this basic implementation
> just handles things required to successfully boot Linux from eMMC
> and connect via UART.
> 
> Signed-off-by: Kever Yang <kever.yang@rock-chips.com>
> [rebase, update commit message, use EVB1 for SoC bringup]
> Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
> ---
>  .../devicetree/bindings/arm/rockchip.yaml     |  5 +++
>  arch/arm64/boot/dts/rockchip/Makefile         |  1 +
>  .../boot/dts/rockchip/rk3588-evb1-v10.dts     | 34 +++++++++++++++++++
>  3 files changed, 40 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/rockchip/rk3588-evb1-v10.dts
> 
> diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
> index eece92f83a2d..b14d0c84c69b 100644
> --- a/Documentation/devicetree/bindings/arm/rockchip.yaml
> +++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
> @@ -664,6 +664,11 @@ properties:
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
> index 4ae9f35434b8..8a53ab6d37a1 100644
> --- a/arch/arm64/boot/dts/rockchip/Makefile
> +++ b/arch/arm64/boot/dts/rockchip/Makefile
> @@ -61,3 +61,4 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-pinenote-v1.2.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-quartz64-a.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3568-evb1-v10.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3568-bpi-r2-pro.dtb
> +dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-evb1-v10.dtb
> diff --git a/arch/arm64/boot/dts/rockchip/rk3588-evb1-v10.dts b/arch/arm64/boot/dts/rockchip/rk3588-evb1-v10.dts
> new file mode 100644
> index 000000000000..68b19acb1550
> --- /dev/null
> +++ b/arch/arm64/boot/dts/rockchip/rk3588-evb1-v10.dts
> @@ -0,0 +1,34 @@
> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> +/*
> + * Copyright (c) 2021 Rockchip Electronics Co., Ltd.
> + *
> + */
> +
> +/dts-v1/;
> +
> +#include "rk3588.dtsi"
> +
> +/ {
> +	model = "Rockchip RK3588 EVB1 V10 Board";
> +	compatible = "rockchip,rk3588-evb1-v10", "rockchip,rk3588";
> +
> +	chosen {
> +		stdout-path = "serial2:1500000n8";
> +	};
> +};
> +
> +&sdhci {
> +	bus-width = <8>;
> +	no-sdio;
> +	no-sd;
> +	non-removable;
> +	max-frequency = <200000000>;
> +	mmc-hs400-1_8v;
> +	mmc-hs400-enhanced-strobe;
> +	status = "ok";
> +};
> +
> +&uart2 {
> +	status = "ok";

Usually status goes at the end of properties and rockchip sources use
"okay" instead of "ok".

It's a nit, so in any case:

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
