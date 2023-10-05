Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 72E96E82CDE
	for <linux-rockchip@archiver.kernel.org>; Thu,  5 Oct 2023 10:08:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UGmQk4+2Y+/KzwXUnwkqOQnuYag2DPzq08yv/pv3d1Q=; b=SS/PyD75WPMGFa
	toUTd262wtv2SdRVXnmxYP2PowqeG7DnSHO4KYQdV25FVupk2ukyV/u+0Z2n/U6S5efP5Gy0SeT5G
	CPcUoJvLPidZMCXEHIiFGrOhOZfkBoboBR7NmoU2/BN8v906eE4ttGU8hkFUtoSDDFTipi0X2uqZk
	/fYaGv+VrhEZJs0cVu8KWWpdTntzlZzzwtUZ7sSCkoLdisYJlz6KjY2vAfpxI/dp6HFz0OWK2g1ua
	ZTF6NKiqHpTvH5r/k7ELRMMk0mbbflZk5YCCZpg5ByQJfiNUR11yUoUIoFZiAIyJ6PCq2hWy7/VJB
	n2CajbaFtQs/6ZdtuKcA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qoLGx-001rUC-1M;
	Thu, 05 Oct 2023 10:07:59 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qoLGt-001rTF-2O;
	Thu, 05 Oct 2023 10:07:57 +0000
Received: from i53875a3c.versanet.de ([83.135.90.60] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1qoLGr-0004EJ-Ds; Thu, 05 Oct 2023 12:07:53 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Jagan Teki <jagan@edgeble.ai>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, Jagan Teki <jagan@edgeble.ai>
Subject: Re: [PATCH 1/3] arm64: dts: rockchip: Add Radxa ROCK 4C+ DSI DT-overlay
Date: Thu, 05 Oct 2023 12:07:52 +0200
Message-ID: <2194166.1BCLMh4Saa@diego>
In-Reply-To: <20230731200559.635629-1-jagan@edgeble.ai>
References: <20230731200559.635629-1-jagan@edgeble.ai>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231005_030755_782052_B8624435 
X-CRM114-Status: GOOD (  22.04  )
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

Am Montag, 31. Juli 2023, 22:05:57 CEST schrieb Jagan Teki:
> Add DSI pipeline for Radxa ROCK 4C+ board via DT-overlay.
> 
> The DSI connector in Radxa ROCK 4C+ board support different
> resolution panels and those compatible is added in another
> DT-overlay.
> 
> Signed-off-by: Jagan Teki <jagan@edgeble.ai>
> ---
>  arch/arm64/boot/dts/rockchip/Makefile         |  1 +
>  .../rk3399-rock-4c-plus-mipi-dsi.dtso         | 69 +++++++++++++++++++
>  2 files changed, 70 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/rockchip/rk3399-rock-4c-plus-mipi-dsi.dtso
> 
> diff --git a/arch/arm64/boot/dts/rockchip/Makefile b/arch/arm64/boot/dts/rockchip/Makefile
> index 1ebbb3e9c2f9..3a4c4cd769eb 100644
> --- a/arch/arm64/boot/dts/rockchip/Makefile
> +++ b/arch/arm64/boot/dts/rockchip/Makefile
> @@ -58,6 +58,7 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-roc-pc.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-roc-pc-mezzanine.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-roc-pc-plus.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-rock-4c-plus.dtb
> +dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-rock-4c-plus-mipi-dsi.dtbo
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-rock-4se.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-rock-pi-4a.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-rock-pi-4a-plus.dtb
> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rock-4c-plus-mipi-dsi.dtso b/arch/arm64/boot/dts/rockchip/rk3399-rock-4c-plus-mipi-dsi.dtso
> new file mode 100644
> index 000000000000..271717040b6c
> --- /dev/null
> +++ b/arch/arm64/boot/dts/rockchip/rk3399-rock-4c-plus-mipi-dsi.dtso
> @@ -0,0 +1,69 @@
> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> +/*
> + * Copyright (c) 2023 Radxa Computer Co., Ltd.
> + * Copyright (c) 2023 Edgeble AI Technologies Pvt. Ltd.
> + *
> + * DT-overlay for Radxa ROCK 4C+ DSI Connector.
> + */
> +
> +/dts-v1/;
> +/plugin/;
> +
> +#include <dt-bindings/gpio/gpio.h>
> +#include <dt-bindings/pinctrl/rockchip.h>
> +
> +&{/} {
> +	backlight: backlight {
> +		compatible = "pwm-backlight";
> +		pwms = <&pwm2 0 25000 0>;
> +	};
> +};
> +
> +&mipi_dsi {
> +	clock-master;
> +	#address-cells = <1>;
> +	#size-cells = <0>;
> +	status = "okay";
> +
> +	ports {
> +		#address-cells = <1>;
> +		#size-cells = <0>;
> +
> +		mipi_out: port@1 {
> +			reg = <1>;
> +
> +			mipi_out_panel: endpoint {
> +				remote-endpoint = <&mipi_in_panel>;
> +			};
> +		};
> +	};
> +
> +	panel: panel@0 {
> +		/* different resolution panels are used, compatibles are in DTO */

then I guess, the panel node should get a disabled here (and the mipi_dsi
should stay disabled at this point) and both should get enabled in the final
dtbo where the compatible lives?



> +		reg = <0>;
> +		backlight = <&backlight>;
> +		vdd-supply = <&lcd_3v3>;
> +		vccio-supply = <&vcc_1v8_s0>;
> +		reset-gpios = <&gpio1 RK_PC2 GPIO_ACTIVE_HIGH>;
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&lcd_panel_reset>;
> +
> +		port {
> +			mipi_in_panel: endpoint {
> +				remote-endpoint = <&mipi_out_panel>;
> +			};
> +		};
> +	};
> +};
> +
> +&pinctrl {
> +	lcd {
> +		lcd_panel_reset: lcd-panel-reset {
> +			rockchip,pins = <1 RK_PC2 RK_FUNC_GPIO &pcfg_pull_up>;
> +		};
> +	};
> +};
> +
> +&pwm2 {
> +	status = "okay";
> +};
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
