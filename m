Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C4F73ECAAD3
	for <linux-rockchip@archiver.kernel.org>; Wed,  7 Sep 2022 08:33:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5aPXHJiuV7jCP9vJ/TPWS+Y/+846+3k+wkID+gNKaM8=; b=fOt7xzHVMjED4P
	cPGuh/cRouf3OsaL6IBFh584RLk/7IPM/n8gcmf1wKh1cecLABrHZEe/XNYL8hz+o+hI7JTGcH1vk
	BjUzN+HVaO8bmqCTx4oy/cTuBs6h3BYvU67EtlS3E0ULvl1VnM0sheaFozDN2j2GQCVktlxZsHrrH
	Gu0Hg0qpibk9rQVA+uEdw4FvulM76Red3RrBkdPCLrhNAKjUmPvC2OlfawpBSOO5Y8JuLAm1RrleU
	tPgJnnCKmVGbqVQSKxSrP+i5HhoHu1pfN0c56nNfGzURmcUJD6whmGu35+MprR2O/oCIc+Pl2+wSd
	Akaj0XZjTKfP+PSJ0xAA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oVqV4-004JOQ-DX; Wed, 07 Sep 2022 08:33:34 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oVqJh-004BR2-FL; Wed, 07 Sep 2022 08:21:50 +0000
Received: from ip5b412258.dynamic.kabel-deutschland.de ([91.65.34.88] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1oVqJc-00040V-IP; Wed, 07 Sep 2022 10:21:44 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: FUKAUMI Naoki <naoki@radxa.com>
Cc: linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, FUKAUMI Naoki <naoki@radxa.com>
Subject: Re: [PATCH 1/2] arm64: dts: rockchip: add LED for ROCK Pi 4A/B/C/A+/B+
Date: Wed, 07 Sep 2022 10:21:43 +0200
Message-ID: <19268570.jiFIW2sfyF@diego>
In-Reply-To: <20220907045925.1284785-1-naoki@radxa.com>
References: <20220907045925.1284785-1-naoki@radxa.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220907_012149_574178_D33CBA9E 
X-CRM114-Status: GOOD (  17.92  )
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

Hi,

Am Mittwoch, 7. September 2022, 06:59:24 CEST schrieb FUKAUMI Naoki:
> only user_led2 (blue) is supported.
> 
> user_led1 (green) is not connected to any gpio so it cannot be
> controlled.
> 
> Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
> ---
>  .../boot/dts/rockchip/rk3399-rock-pi-4.dtsi   | 20 +++++++++++++++++++
>  1 file changed, 20 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dtsi
> index 401e1ae9d944..49126560b30b 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dtsi
> @@ -6,6 +6,7 @@
>  
>  /dts-v1/;
>  #include <dt-bindings/input/linux-event-codes.h>
> +#include <dt-bindings/leds/common.h>
>  #include <dt-bindings/pwm/pwm.h>
>  #include "rk3399.dtsi"
>  #include "rk3399-opp.dtsi"
> @@ -27,6 +28,19 @@ clkin_gmac: external-gmac-clock {
>  		#clock-cells = <0>;
>  	};
>  
> +	leds {
> +		compatible = "gpio-leds";
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&user_led2>;
> +
> +		user_led2 {

Node names should definitly use "-" not underscores.

Also gpio-leds define a pattern for node names in the yaml binding:
	"(^led-[0-9a-f]$|led)":

So running dtbscheck on those new nodes should have found new
errors with that addition.

See commit e916d85b922f ("arm64: dts: rockchip: rename and label gpio-led subnodes")
where existing already were already converted to be binding compliant.


Heiko


> +			function = LED_FUNCTION_STATUS;
> +			color = <LED_COLOR_ID_BLUE>;
> +			gpios = <&gpio3 RK_PD5 GPIO_ACTIVE_HIGH>;
> +			linux,default-trigger = "heartbeat";
> +		};
> +	};
> +
>  	sdio_pwrseq: sdio-pwrseq {
>  		compatible = "mmc-pwrseq-simple";
>  		clocks = <&rk808 1>;
> @@ -553,6 +567,12 @@ hp_int: hp-int {
>  		};
>  	};
>  
> +	leds {
> +		user_led2: user-led2 {
> +			rockchip,pins = <3 RK_PD5 RK_FUNC_GPIO &pcfg_pull_none>;
> +		};
> +	};
> +
>  	pcie {
>  		pcie_pwr_en: pcie-pwr-en {
>  			rockchip,pins = <2 RK_PD2 RK_FUNC_GPIO &pcfg_pull_none>;
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
