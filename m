Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 24B4AC3ABBC
	for <linux-rockchip@archiver.kernel.org>; Tue,  6 May 2025 04:07:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VxqKzaL3s9cnuPmLdDssSyzfqCRf4p5/ntQHhJpz7gg=; b=OEbgFLXJ/91vQE
	DKiwE7jCDKX9vQBBNNXxpJ/Bj+MkdL107ky5Ad8UyLuzFT3H0O3V7jwPTf64uDp97ga/QpG7JoLbO
	lxeZqRuXPC2g5NRMmslQ6dN13uk7YVFOedUwlRu/uxhfypKbJbWCxvKbWR3Volgw97ELNkDfR7Iu8
	BzEsGPPmHiPd63eiQxL2BEdlZbkG+OktzjX7IpvwKD/Y0uwBeCRw7iebEl+yHiOBAUPx1tjJ/AK7R
	S2kL7PJ4wtJmLbdhImbrdxH8+BpcnYg39NTVxYzVtqnO2KoeAz3yBzneqKTWrlnm+VReXKcSQI0Fr
	ayeqys5aY85AzG8MMeRg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uC9aZ-0000000A8Yy-3MpD;
	Tue, 06 May 2025 04:07:27 +0000
Received: from smtp.forwardemail.net ([121.127.44.73])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uC4zc-00000008z8L-3LO2
	for linux-rockchip@lists.infradead.org;
	Mon, 05 May 2025 23:13:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: Content-Type: In-Reply-To: From: References:
 Cc: To: Subject: MIME-Version: Date: Message-ID; q=dns/txt;
 s=fe-e1b5cab7be; t=1746486779;
 bh=hreABS4yBfCC7+5bh2avmFHQCqO0LIR8soO0wntiKLc=;
 b=eknjcBrCMTWh2x/GwZ5l/CkINt0qbr33EoJIu0yXjApGR9hNoJbFJYMzNwP6X2bld8kmEys0p
 mtm0WzTYo9DfalAgkMyUsZYAIdPcYMEZKiUhm9E6kgVO02DC9DV2HOdYoeSau09T8edT8OdJJkx
 AUfKmimZAPBcvdz9eTZMhKjAekjjsJbjhY0s6dSYTMznhu0Yh01pkqQqZmBvBZkKgrySKTQ56Vo
 4+I1Omr3ljia7QsAzmYFlwCVJm5z+U2zai0GlxpiTPNVX1A+wN8ddtfD5uFcuSnyF3G6OhbwGzY
 x93Zdhw36+GGDyElSxVIDTfBtsxP70Ys5d6yA+ky2qsw==
X-Forward-Email-ID: 681945fa46c37f8647c22e46
X-Forward-Email-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 121.127.44.73
X-Forward-Email-Version: 1.0.2
X-Forward-Email-Website: https://forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Report-Abuse-To: abuse@forwardemail.net
Message-ID: <621e33ff-f43f-48cc-a316-aa3e19d513d8@kwiboo.se>
Date: Tue, 6 May 2025 01:12:54 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 2/2] arm64: dts: rockchip: Enable regulators for Radxa
 E20C
To: Chukun Pan <amadeus@jmu.edu.cn>, Heiko Stuebner <heiko@sntech.de>
Cc: Yao Zi <ziyao@disroot.org>, Rob Herring <robh@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Krzysztof Kozlowski
 <krzk+dt@kernel.org>, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org
References: <20250401120020.976343-1-amadeus@jmu.edu.cn>
 <20250401120020.976343-3-amadeus@jmu.edu.cn>
Content-Language: en-US
From: Jonas Karlman <jonas@kwiboo.se>
In-Reply-To: <20250401120020.976343-3-amadeus@jmu.edu.cn>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250505_161300_941047_C4FC1093 
X-CRM114-Status: GOOD (  12.53  )
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

On 2025-04-01 14:00, Chukun Pan wrote:
> Enable pwm and fixed regulators for Radxa E20C. The pwm regulator is
> used to power the CPU and GPU. Note that the LPDDR4 voltage is 1.1V.
> 
> Signed-off-by: Chukun Pan <amadeus@jmu.edu.cn>

This seem to match the schematics of the E20C and the regulators work on
my E20C:

   regulator                      use open bypass  opmode voltage current     min     max
  ---------------------------------------------------------------------------------------
   regulator-dummy                  1    0      0 unknown     0mV     0mA     0mV     0mV
   vcc5v0_sys                       7    6      0 unknown  5000mV     0mA  5000mV  5000mV
      vdd_0v9                       1    0      0 unknown   900mV     0mA   900mV   900mV
      vcc_ddr                       1    0      0 unknown  1100mV     0mA  1100mV  1100mV
      vcc_3v3                       5    5      0 unknown  3300mV     0mA  3300mV  3300mV
         ffbf0000.mmc-vmmc          1                                 0mA  3300mV  3400mV
         ffc30000.mmc-vmmc          1                                 0mA  3300mV  3400mV
         1-0050-vcc                 0                                 0mA     0mV     0mV
         ffbe0000.ethernet-phy      1                                 0mA     0mV     0mV
         vcc_1v8                    3    2      0 unknown  1800mV     0mA  1800mV  1800mV
            ffbf0000.mmc-vqmmc      1                                 0mA     0mV     0mV
            ffae0000.adc-vref       1                                 0mA     0mV     0mV
      vccio_sd                      2    1      0 unknown  1800mV     0mA  1800mV  3300mV
         ffc30000.mmc-vqmmc         1                                 0mA  1800mV  1950mV
      vdd_arm                       1    0      0 unknown  1201mV     0mA   746mV  1201mV
      vdd_logic                     1    0      0 unknown  1006mV     0mA   705mV  1006mV

Without any opp table or the pwm-regulators not being initialized in
U-Boot they seem to default to max voltage, should be fine so this is:

Reviewed-by: Jonas Karlman <jonas@kwiboo.se>

Regards,
Jonas

> ---
>  .../boot/dts/rockchip/rk3528-radxa-e20c.dts   | 73 +++++++++++++++++++
>  1 file changed, 73 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3528-radxa-e20c.dts b/arch/arm64/boot/dts/rockchip/rk3528-radxa-e20c.dts
> index 57a446b5cbd6..14770bd63ae7 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3528-radxa-e20c.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3528-radxa-e20c.dts
> @@ -9,6 +9,7 @@
>  
>  #include <dt-bindings/input/input.h>
>  #include <dt-bindings/leds/common.h>
> +#include <dt-bindings/pwm/pwm.h>
>  #include "rk3528.dtsi"
>  
>  / {
> @@ -80,6 +81,26 @@ led-wan {
>  		};
>  	};
>  
> +	vdd_0v9: regulator-0v9-vdd {
> +		compatible = "regulator-fixed";
> +		regulator-name = "vdd_0v9";
> +		regulator-always-on;
> +		regulator-boot-on;
> +		regulator-min-microvolt = <900000>;
> +		regulator-max-microvolt = <900000>;
> +		vin-supply = <&vcc5v0_sys>;
> +	};
> +
> +	vcc_ddr: regulator-1v1-vcc-ddr {
> +		compatible = "regulator-fixed";
> +		regulator-name = "vcc_ddr";
> +		regulator-always-on;
> +		regulator-boot-on;
> +		regulator-min-microvolt = <1100000>;
> +		regulator-max-microvolt = <1100000>;
> +		vin-supply = <&vcc5v0_sys>;
> +	};
> +
>  	vcc_1v8: regulator-1v8-vcc {
>  		compatible = "regulator-fixed";
>  		regulator-name = "vcc_1v8";
> @@ -108,6 +129,46 @@ vcc5v0_sys: regulator-5v0-vcc-sys {
>  		regulator-min-microvolt = <5000000>;
>  		regulator-max-microvolt = <5000000>;
>  	};
> +
> +	vdd_arm: regulator-vdd-arm {
> +		compatible = "pwm-regulator";
> +		pwms = <&pwm1 0 5000 PWM_POLARITY_INVERTED>;
> +		pwm-supply = <&vcc5v0_sys>;
> +		regulator-name = "vdd_arm";
> +		regulator-always-on;
> +		regulator-boot-on;
> +		regulator-min-microvolt = <746000>;
> +		regulator-max-microvolt = <1201000>;
> +		regulator-settling-time-up-us = <250>;
> +	};
> +
> +	vdd_logic: regulator-vdd-logic {
> +		compatible = "pwm-regulator";
> +		pwms = <&pwm2 0 5000 PWM_POLARITY_INVERTED>;
> +		pwm-supply = <&vcc5v0_sys>;
> +		regulator-name = "vdd_logic";
> +		regulator-always-on;
> +		regulator-boot-on;
> +		regulator-min-microvolt = <705000>;
> +		regulator-max-microvolt = <1006000>;
> +		regulator-settling-time-up-us = <250>;
> +	};
> +};
> +
> +&cpu0 {
> +	cpu-supply = <&vdd_arm>;
> +};
> +
> +&cpu1 {
> +	cpu-supply = <&vdd_arm>;
> +};
> +
> +&cpu2 {
> +	cpu-supply = <&vdd_arm>;
> +};
> +
> +&cpu3 {
> +	cpu-supply = <&vdd_arm>;
>  };
>  
>  &pinctrl {
> @@ -132,6 +193,18 @@ wan_led_g: wan-led-g {
>  	};
>  };
>  
> +&pwm1 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pwm1m0_pins>;
> +	status = "okay";
> +};
> +
> +&pwm2 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pwm2m0_pins>;
> +	status = "okay";
> +};
> +
>  &saradc {
>  	vref-supply = <&vcc_1v8>;
>  	status = "okay";


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
