Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EF228ECAAD3
	for <linux-rockchip@archiver.kernel.org>; Sat, 17 Sep 2022 14:27:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bL0K2j7uDbcurTZXbmTGq45pq45dXht7bB2ghLAtBBY=; b=rShgfxUJAe/wzr
	fYPwukRFemgCkzEvzN2BkeiKnm1ZupltQAM+U30x0Hv+3XVGcNlGYwEVw4SIayOKrdlmken5xzrpu
	0+EeobdMCdKH5XcfX0w7Q0uhGpQunTDqAL8X0dOXp/L+PcLvC76FTBX/qzdryoN1m41tn84vS18pr
	yP23rtV51vir+8+0blWFDFxdKmFey5tuSewu5DWGv/SbVrEYcEUL0910IEiGJpTM3Rrv1oOUQJ+4A
	Jr/NcNdArd5wWcyCnGR3OmLJG2D7/GfmFO1DNCQDXF1Jfv1qboOF7du+Ln0SMXob0D3XL6JW6VcuK
	tFtZPhO5mbiZQsVDKusA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oZYmh-006T8N-IB; Sat, 17 Sep 2022 14:27:07 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oZYmU-006T1k-7F; Sat, 17 Sep 2022 14:26:55 +0000
Received: from [88.128.88.164] (helo=phil.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1oZYmP-0001MV-VK; Sat, 17 Sep 2022 16:26:49 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Kever Yang <kever.yang@rock-chips.com>, Jagan Teki <jagan@edgeble.ai>
Cc: linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, Jagan Teki <jagan@edgeble.ai>
Subject: Re: [PATCH v5 5/6] ARM: dts: rockchip: Add Rockchip RV1126 pinctrl
Date: Sat, 17 Sep 2022 16:26:48 +0200
Message-ID: <3182731.oiGErgHkdL@phil>
In-Reply-To: <20220915163947.1922183-6-jagan@edgeble.ai>
References: <20220915163947.1922183-1-jagan@edgeble.ai> <20220915163947.1922183-6-jagan@edgeble.ai>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220917_072654_292011_58827B4F 
X-CRM114-Status: GOOD (  24.21  )
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

Hi Jagan,

Am Donnerstag, 15. September 2022, 18:39:46 CEST schrieb Jagan Teki:
> Add pinctrl definitions for Rockchip RV1126 and the pinctrl
> conf's are included it from arm64 rockchip devicetree path.

I'm not sure I remember the cause. So could you tell me
why they are needed in the arm64-space as well?


Thanks
Heiko



> Signed-off-by: Jagan Teki <jagan@edgeble.ai>
> ---
> Changes for v5:
> - none
> Changes for v4:
> - update i2c pins
> - rebase on -next
> Changes for v3:
> - none
> Changes for v2:
> - spilt pinctrl as separate patch 
> 
>  MAINTAINERS                           |   2 +-
>  arch/arm/boot/dts/rv1126-pinctrl.dtsi | 212 ++++++++++++++++++++++++++
>  2 files changed, 213 insertions(+), 1 deletion(-)
>  create mode 100644 arch/arm/boot/dts/rv1126-pinctrl.dtsi
> 
> diff --git a/MAINTAINERS b/MAINTAINERS
> index 9d7f64dc0efe..9ddb45285676 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -2690,7 +2690,7 @@ F:	Documentation/devicetree/bindings/i2c/i2c-rk3x.yaml
>  F:	Documentation/devicetree/bindings/mmc/rockchip-dw-mshc.yaml
>  F:	Documentation/devicetree/bindings/spi/spi-rockchip.yaml
>  F:	arch/arm/boot/dts/rk3*
> -F:	arch/arm/boot/dts/rv1108*
> +F:	arch/arm/boot/dts/rv11*
>  F:	arch/arm/mach-rockchip/
>  F:	drivers/*/*/*rockchip*
>  F:	drivers/*/*rockchip*
> diff --git a/arch/arm/boot/dts/rv1126-pinctrl.dtsi b/arch/arm/boot/dts/rv1126-pinctrl.dtsi
> new file mode 100644
> index 000000000000..8d660d7c81ba
> --- /dev/null
> +++ b/arch/arm/boot/dts/rv1126-pinctrl.dtsi
> @@ -0,0 +1,212 @@
> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> +/*
> + * Copyright (c) 2020 Fuzhou Rockchip Electronics Co., Ltd
> + * Copyright (c) 2022 Edgeble AI Technologies Pvt. Ltd.
> + */
> +
> +#include <dt-bindings/pinctrl/rockchip.h>
> +#include <arm64/rockchip/rockchip-pinconf.dtsi>
> +
> +/*
> + * This file is auto generated by pin2dts tool, please keep these code
> + * by adding changes at end of this file.
> + */
> +&pinctrl {
> +	emmc {
> +		/omit-if-no-ref/
> +		emmc_rstnout: emmc-rstnout {
> +			rockchip,pins =
> +				/* emmc_rstn */
> +				<1 RK_PA3 2 &pcfg_pull_none>;
> +		};
> +		/omit-if-no-ref/
> +		emmc_bus8: emmc-bus8 {
> +			rockchip,pins =
> +				/* emmc_d0 */
> +				<0 RK_PC4 2 &pcfg_pull_up_drv_level_2>,
> +				/* emmc_d1 */
> +				<0 RK_PC5 2 &pcfg_pull_up_drv_level_2>,
> +				/* emmc_d2 */
> +				<0 RK_PC6 2 &pcfg_pull_up_drv_level_2>,
> +				/* emmc_d3 */
> +				<0 RK_PC7 2 &pcfg_pull_up_drv_level_2>,
> +				/* emmc_d4 */
> +				<0 RK_PD0 2 &pcfg_pull_up_drv_level_2>,
> +				/* emmc_d5 */
> +				<0 RK_PD1 2 &pcfg_pull_up_drv_level_2>,
> +				/* emmc_d6 */
> +				<0 RK_PD2 2 &pcfg_pull_up_drv_level_2>,
> +				/* emmc_d7 */
> +				<0 RK_PD3 2 &pcfg_pull_up_drv_level_2>;
> +		};
> +		/omit-if-no-ref/
> +		emmc_clk: emmc-clk {
> +			rockchip,pins =
> +				/* emmc_clko */
> +				<0 RK_PD7 2 &pcfg_pull_up_drv_level_2>;
> +		};
> +		/omit-if-no-ref/
> +		emmc_cmd: emmc-cmd {
> +			rockchip,pins =
> +				/* emmc_cmd */
> +				<0 RK_PD5 2 &pcfg_pull_up_drv_level_2>;
> +		};
> +	};
> +	i2c0 {
> +		/omit-if-no-ref/
> +		i2c0_xfer: i2c0-xfer {
> +			rockchip,pins =
> +				/* i2c0_scl */
> +				<0 RK_PB4 1 &pcfg_pull_none_drv_level_0_smt>,
> +				/* i2c0_sda */
> +				<0 RK_PB5 1 &pcfg_pull_none_drv_level_0_smt>;
> +		};
> +	};
> +	sdmmc0 {
> +		/omit-if-no-ref/
> +		sdmmc0_bus4: sdmmc0-bus4 {
> +			rockchip,pins =
> +				/* sdmmc0_d0 */
> +				<1 RK_PA4 1 &pcfg_pull_up_drv_level_2>,
> +				/* sdmmc0_d1 */
> +				<1 RK_PA5 1 &pcfg_pull_up_drv_level_2>,
> +				/* sdmmc0_d2 */
> +				<1 RK_PA6 1 &pcfg_pull_up_drv_level_2>,
> +				/* sdmmc0_d3 */
> +				<1 RK_PA7 1 &pcfg_pull_up_drv_level_2>;
> +		};
> +		/omit-if-no-ref/
> +		sdmmc0_clk: sdmmc0-clk {
> +			rockchip,pins =
> +				/* sdmmc0_clk */
> +				<1 RK_PB0 1 &pcfg_pull_up_drv_level_2>;
> +		};
> +		/omit-if-no-ref/
> +		sdmmc0_cmd: sdmmc0-cmd {
> +			rockchip,pins =
> +				/* sdmmc0_cmd */
> +				<1 RK_PB1 1 &pcfg_pull_up_drv_level_2>;
> +		};
> +		/omit-if-no-ref/
> +		sdmmc0_det: sdmmc0-det {
> +			rockchip,pins =
> +				<0 RK_PA3 1 &pcfg_pull_none>;
> +		};
> +		/omit-if-no-ref/
> +		sdmmc0_pwr: sdmmc0-pwr {
> +			rockchip,pins =
> +				<0 RK_PC0 1 &pcfg_pull_none>;
> +		};
> +	};
> +	sdmmc1 {
> +		/omit-if-no-ref/
> +		sdmmc1_bus4: sdmmc1-bus4 {
> +			rockchip,pins =
> +				/* sdmmc1_d0 */
> +				<1 RK_PB4 1 &pcfg_pull_up_drv_level_2>,
> +				/* sdmmc1_d1 */
> +				<1 RK_PB5 1 &pcfg_pull_up_drv_level_2>,
> +				/* sdmmc1_d2 */
> +				<1 RK_PB6 1 &pcfg_pull_up_drv_level_2>,
> +				/* sdmmc1_d3 */
> +				<1 RK_PB7 1 &pcfg_pull_up_drv_level_2>;
> +		};
> +		/omit-if-no-ref/
> +		sdmmc1_clk: sdmmc1-clk {
> +			rockchip,pins =
> +				/* sdmmc1_clk */
> +				<1 RK_PB2 1 &pcfg_pull_up_drv_level_2>;
> +		};
> +		/omit-if-no-ref/
> +		sdmmc1_cmd: sdmmc1-cmd {
> +			rockchip,pins =
> +				/* sdmmc1_cmd */
> +				<1 RK_PB3 1 &pcfg_pull_up_drv_level_2>;
> +		};
> +		/omit-if-no-ref/
> +		sdmmc1_det: sdmmc1-det {
> +			rockchip,pins =
> +				<1 RK_PD0 2 &pcfg_pull_none>;
> +		};
> +		/omit-if-no-ref/
> +		sdmmc1_pwr: sdmmc1-pwr {
> +			rockchip,pins =
> +				<1 RK_PD1 2 &pcfg_pull_none>;
> +		};
> +	};
> +	uart0 {
> +		/omit-if-no-ref/
> +		uart0_xfer: uart0-xfer {
> +			rockchip,pins =
> +				/* uart0_rx */
> +				<1 RK_PC2 1 &pcfg_pull_up>,
> +				/* uart0_tx */
> +				<1 RK_PC3 1 &pcfg_pull_up>;
> +		};
> +		/omit-if-no-ref/
> +		uart0_ctsn: uart0-ctsn {
> +			rockchip,pins =
> +				<1 RK_PC1 1 &pcfg_pull_none>;
> +		};
> +		/omit-if-no-ref/
> +		uart0_rtsn: uart0-rtsn {
> +			rockchip,pins =
> +				<1 RK_PC0 1 &pcfg_pull_none>;
> +		};
> +		/omit-if-no-ref/
> +		uart0_rtsn_gpio: uart0-rts-pin {
> +			rockchip,pins =
> +				<1 RK_PC0 RK_FUNC_GPIO &pcfg_pull_none>;
> +		};
> +	};
> +	uart1 {
> +		/omit-if-no-ref/
> +		uart1m0_xfer: uart1m0-xfer {
> +			rockchip,pins =
> +				/* uart1_rx_m0 */
> +				<0 RK_PB7 2 &pcfg_pull_up>,
> +				/* uart1_tx_m0 */
> +				<0 RK_PB6 2 &pcfg_pull_up>;
> +		};
> +	};
> +	uart2 {
> +		/omit-if-no-ref/
> +		uart2m1_xfer: uart2m1-xfer {
> +			rockchip,pins =
> +				/* uart2_rx_m1 */
> +				<3 RK_PA3 1 &pcfg_pull_up>,
> +				/* uart2_tx_m1 */
> +				<3 RK_PA2 1 &pcfg_pull_up>;
> +		};
> +	};
> +	uart3 {
> +		/omit-if-no-ref/
> +		uart3m0_xfer: uart3m0-xfer {
> +			rockchip,pins =
> +				/* uart3_rx_m0 */
> +				<3 RK_PC7 4 &pcfg_pull_up>,
> +				/* uart3_tx_m0 */
> +				<3 RK_PC6 4 &pcfg_pull_up>;
> +		};
> +	};
> +	uart4 {
> +		/omit-if-no-ref/
> +		uart4m0_xfer: uart4m0-xfer {
> +			rockchip,pins =
> +				/* uart4_rx_m0 */
> +				<3 RK_PA5 4 &pcfg_pull_up>,
> +				/* uart4_tx_m0 */
> +				<3 RK_PA4 4 &pcfg_pull_up>;
> +		};
> +	};
> +	uart5 {
> +		/omit-if-no-ref/
> +		uart5m0_xfer: uart5m0-xfer {
> +			rockchip,pins =
> +				/* uart5_rx_m0 */
> +				<3 RK_PA7 4 &pcfg_pull_up>,
> +				/* uart5_tx_m0 */
> +				<3 RK_PA6 4 &pcfg_pull_up>;
> +		};
> +	};
> +};
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
