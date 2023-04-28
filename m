Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A89D5C77B60
	for <linux-rockchip@archiver.kernel.org>; Fri, 28 Apr 2023 13:35:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=I4vZ+pQbiFWt8cweZ8JnmAITxqhGM/JCVJgRMOXmwuY=; b=RrkzLSjbyypemd
	qDveBl08oID9pNY2ri8ANPAubVsI+CUiHPHxeNHh5RtFeNxW3FXlc8LP/iSv0PkaJXZIrUxAe4qkR
	Q80/jEUymZywz0nq4KtTrrvT1+OSvgvJlt0Pl1K/3f6oZXMtCSKdFJmaCBt8+KRe4PQxXu8GQTS5i
	HeOdM1lnbmWs+vddX2aups6bNHbAzERgAnSn4OxPsq4sqaFJ3kB7SeMzie0MN2EGnLI5pxQYIWbUU
	5a/DxwVwijqBIswIu1yQNEzF/ND8/05oiZceg0lLqQI/w6RHSMIH5Pivyvf18brmvDOh67Km8HS+P
	PGhfsVOxYO86pQlomPdg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1psOFZ-00ATbl-2o;
	Fri, 28 Apr 2023 13:35:01 +0000
Received: from mail-wm1-x32f.google.com ([2a00:1450:4864:20::32f])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1psOFW-00ATYR-2g
	for linux-rockchip@lists.infradead.org;
	Fri, 28 Apr 2023 13:35:00 +0000
Received: by mail-wm1-x32f.google.com with SMTP id 5b1f17b1804b1-3f315712406so61429915e9.0
        for <linux-rockchip@lists.infradead.org>; Fri, 28 Apr 2023 06:34:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1682688897; x=1685280897;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=0mmAAEtOPUAr1bd+bTw4cvKl1TPg5Xn9TRA7Ti52FfU=;
        b=OQcSidFEQtSbCNHlInufClZsAvwSkpY1FQYDH+WYqwGzfBtvyGtTMtDvdTFaW1XrR5
         Tx3tl5PtUfZUrWklSSN5UvxJ15d4MgE9KWeH026UynnZY3dMmAs8aoUAmBylQZFyQjKp
         LzXIWdiEmYcA3S4bpwtLsi2/9sZdPHuObDVZ5lcFB20/+JT1pShjl7YPOpC2kQmYNv9A
         A4BF/52Y4THhbEt3wx9gRDGV5ZEVSPyIaDjM3gNbDZ5Pn3dHJIyaKr6E1SItmij0MaM5
         j621PTbJ3MRnluBQHBauXPevQBuMAFXHcuqnnABSRCMFK34BGLlciTZOS/R+YUTfO8B5
         /sOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682688897; x=1685280897;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=0mmAAEtOPUAr1bd+bTw4cvKl1TPg5Xn9TRA7Ti52FfU=;
        b=ksDBZx9NJZM61uMfCLfv6y/5+e1OogOfWv66tt37/6NCaI7U/C+QxImS8KFJ8IQ/ni
         DQql/PRx9D3WKmy9EUuZCsibDMAbPs4ViTmiMTbFMFRBDosAYn6W39DY/1+1UEves9pj
         KSxGUWDgHQHuYZ6qkp52I0xK3HuYkNQDvUnIOsLdMPPONcLNKpHZqrlLk3KX54D08eyY
         Gv1FMt9BI0hf89ITBtFEEAKlz7rljwshnr9VWgFFXd18GzvldtnELHoEnjLSzgqEbIBj
         H502nlg579syat+4VTUKTgrSdh5Hto1k01OjSjXKutkFeJeit0PQNIS32ReVq+Ebly+X
         nK5Q==
X-Gm-Message-State: AC+VfDwCqCe6FvLlTiM1a1BIZr2m3oRRJCv0AxuBoSiT7/py1CR3mHHU
	8ClwC3Qtwqa8uTz2SEw5cA3rxg==
X-Google-Smtp-Source: ACHHUZ50NyQZaa4YfPHncp8v3Q2ICEDpU1JVTtxWjO4UOvR08Zk0+e/uit7Me/trCaa7Pmi1ZQ+dyw==
X-Received: by 2002:a05:600c:2101:b0:3f1:7848:6740 with SMTP id u1-20020a05600c210100b003f178486740mr4078764wml.8.1682688897162;
        Fri, 28 Apr 2023 06:34:57 -0700 (PDT)
Received: from [172.23.2.142] ([195.167.132.10])
        by smtp.gmail.com with ESMTPSA id l18-20020a05600c4f1200b003f07ef4e3e0sm36176284wmq.0.2023.04.28.06.34.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 28 Apr 2023 06:34:56 -0700 (PDT)
Message-ID: <32911b1c-7f32-7078-27e8-7b168d295993@linaro.org>
Date: Fri, 28 Apr 2023 15:34:55 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Subject: Re: [PATCH 2/3] arm64: dts: rockchip: Add Lunzn Fastrhino R66S
Content-Language: en-US
To: Tianling Shen <cnsztl@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Heiko Stuebner <heiko@sntech.de>, Jagan Teki <jagan@amarulasolutions.com>,
 Peter Geis <pgwipeout@gmail.com>, Andy Yan <andyshrk@163.com>,
 Chris Morgan <macromorgan@hotmail.com>,
 Brian Norris <briannorris@chromium.org>, Andrew Lunn <andrew@lunn.ch>,
 Shawn Guo <shawnguo@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Sebastian Reichel <sebastian.reichel@collabora.com>,
 Maya Matuszczyk <maccraft123mc@gmail.com>,
 Michael Riesch <michael.riesch@wolfvision.net>,
 Sascha Hauer <s.hauer@pengutronix.de>, Vasily Khoruzhick <anarsoul@gmail.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20230428013738.30735-1-cnsztl@gmail.com>
 <20230428013738.30735-2-cnsztl@gmail.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230428013738.30735-2-cnsztl@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230428_063458_880087_3C1FCC4E 
X-CRM114-Status: GOOD (  16.27  )
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

On 28/04/2023 03:37, Tianling Shen wrote:
> Lunzn Fastrhino R66S is a high-performance mini router.
> 
> Specification:
> - Rockchip RK3568
> - 1/2GB LPDDR4 RAM
> - SD card slot
> - M.2 Connector
> - 2x USB 3.0 Port
> - 2x 2500 Base-T (PCIe, r8125b)
> - 12v DC Jack
> 
> Signed-off-by: Tianling Shen <cnsztl@gmail.com>
> ---
>  arch/arm64/boot/dts/rockchip/Makefile         |   1 +
>  .../dts/rockchip/rk3568-fastrhino-r66s.dts    |  27 +
>  .../dts/rockchip/rk3568-fastrhino-r66s.dtsi   | 507 ++++++++++++++++++
>  3 files changed, 535 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/rockchip/rk3568-fastrhino-r66s.dts
>  create mode 100644 arch/arm64/boot/dts/rockchip/rk3568-fastrhino-r66s.dtsi
> 
> diff --git a/arch/arm64/boot/dts/rockchip/Makefile b/arch/arm64/boot/dts/rockchip/Makefile
> index 2d585bbb8f3a..15089a78555a 100644
> --- a/arch/arm64/boot/dts/rockchip/Makefile
> +++ b/arch/arm64/boot/dts/rockchip/Makefile
> @@ -85,6 +85,7 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-box-demo.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-lubancat-1.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3568-bpi-r2-pro.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3568-evb1-v10.dtb
> +dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3568-fastrhino-r66s.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3568-lubancat-2.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3568-nanopi-r5c.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3568-nanopi-r5s.dtb
> diff --git a/arch/arm64/boot/dts/rockchip/rk3568-fastrhino-r66s.dts b/arch/arm64/boot/dts/rockchip/rk3568-fastrhino-r66s.dts
> new file mode 100644
> index 000000000000..fc9e1bdab128
> --- /dev/null
> +++ b/arch/arm64/boot/dts/rockchip/rk3568-fastrhino-r66s.dts
> @@ -0,0 +1,27 @@
> +// SPDX-License-Identifier: GPL-2.0-or-later OR MIT
> +
> +#include "rk3568-fastrhino-r66s.dtsi"
> +
> +/ {
> +	model = "Lunzn FastRhino R66S";
> +	compatible = "lunzn,fastrhino-r66s", "rockchip,rk3568";
> +
> +	aliases {
> +		mmc0 = &sdmmc0;
> +	};
> +};
> +
> +&sdmmc0 {
> +	max-frequency = <150000000>;
> +	no-sdio;
> +	no-mmc;
> +	bus-width = <4>;
> +	cap-mmc-highspeed;
> +	cap-sd-highspeed;
> +	disable-wp;
> +	vmmc-supply = <&vcc3v3_sd>;
> +	vqmmc-supply = <&vccio_sd>;
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&sdmmc0_bus4 &sdmmc0_clk &sdmmc0_cmd &sdmmc0_det>;
> +	status = "okay";
> +};
> diff --git a/arch/arm64/boot/dts/rockchip/rk3568-fastrhino-r66s.dtsi b/arch/arm64/boot/dts/rockchip/rk3568-fastrhino-r66s.dtsi
> new file mode 100644
> index 000000000000..a58592b2f13b
> --- /dev/null
> +++ b/arch/arm64/boot/dts/rockchip/rk3568-fastrhino-r66s.dtsi
> @@ -0,0 +1,507 @@
> +// SPDX-License-Identifier: GPL-2.0-or-later OR MIT
> +
> +/dts-v1/;
> +#include <dt-bindings/gpio/gpio.h>
> +#include <dt-bindings/input/input.h>
> +#include <dt-bindings/leds/common.h>
> +#include <dt-bindings/pinctrl/rockchip.h>
> +#include <dt-bindings/soc/rockchip,vop2.h>
> +#include "rk3568.dtsi"
> +
> +/ {
> +	aliases {
> +		led-boot = &status_led;
> +		led-failsafe = &status_led;
> +		led-running = &status_led;
> +		led-upgrade = &status_led;

Why do you need these? Which upstream kernel driver parses these?


Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
