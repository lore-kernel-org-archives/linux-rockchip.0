From: Markus Reichl <m.reichl@fivetechno.de>
Subject: Re: [PATCH] arm64: dts: rockchip: Add PCIe node on rk3399-roc-pc
Date: Thu, 31 Oct 2019 19:12:10 +0100
Message-ID: <f66fe5c3-6760-20b0-54cc-8f0c1a754bab@fivetechno.de>
References: <09300c2d-4298-1b01-ac41-d1b2610589d4@fivetechno.de>
 <1719506.vT9a8mQdzu@phil>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <1719506.vT9a8mQdzu@phil>
Content-Language: de-DE
Sender: linux-kernel-owner@vger.kernel.org
To: Heiko Stuebner <heiko@sntech.de>
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, Rob Herring <robh+dt@kernel.org>, Jagan Teki <jagan@amarulasolutions.com>, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

Hi Heiko,
Am 31.10.19 um 17:57 schrieb Heiko Stuebner:
> Hi,
> 
> Am Montag, 28. Oktober 2019, 15:47:27 CET schrieb Markus Reichl:
>> rk3399-roc-pc has a PCIe interface. Enable it for use with
>> the M.2 NGFF M_KEY slot on roc-rk3399-mezzanine board.
>> Tested with Samsung 970 evo plus SSD.
>> 
>> Signed-off-by: Markus Reichl <m.reichl@fivetechno.de>
>> ---
>>  .../arm64/boot/dts/rockchip/rk3399-roc-pc.dts | 38 +++++++++++++++++++
>>  1 file changed, 38 insertions(+)
>> 
>> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dts b/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dts
>> index 9313251765c7..2d637d54994b 100644
>> --- a/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dts
>> +++ b/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dts
>> @@ -158,6 +158,21 @@
>>  		regulator-max-microvolt = <1400000>;
>>  		vin-supply = <&vcc_sys>;
>>  	};
>> +
>> +	/* on roc-rk3399-mezzanine board */
> 
> I'm undecided on this. From what I've seen that mezzanine board is some
> sort of addon, like a raspberry pi hat. Therefore it's not always present,
> so probably should not be part of the base board dts.
> 
> I'm thinking a dt-overlay that can then be activated might be the solution
> of choice, but I've reached out to arm-soc poeple on irc to determine the
> correct course.
> 
I have seen some board.dtsi with board_only.dts respective board_extension.dts
in the arch/arm64/boot/dts/rockchip directory. Would that be ok?

Markus 

> 
> Heiko
> 
>> +	vcc3v3_pcie: vcc3v3-pcie {
>> +		compatible = "regulator-fixed";
>> +		regulator-name = "vcc3v3_pcie";
>> +		enable-active-high;
>> +		gpio = <&gpio1 RK_PC1 GPIO_ACTIVE_HIGH>;
>> +		pinctrl-names = "default";
>> +		pinctrl-0 = <&vcc3v3_pcie_en>;
>> +		regulator-always-on;
>> +		regulator-boot-on;
>> +		regulator-min-microvolt = <3300000>;
>> +		regulator-max-microvolt = <3300000>;
>> +		vin-supply = <&dc_12v>;
>> +	};
>>  };
>>  
>>  &cpu_l0 {
>> @@ -514,6 +529,19 @@
>>  	status = "okay";
>>  };
>>  
>> +&pcie_phy {
>> +	status = "okay";
>> +};
>> +
>> +&pcie0 {
>> +	ep-gpios = <&gpio4 RK_PD1 GPIO_ACTIVE_HIGH>;
>> +	num-lanes = <4>;
>> +	pinctrl-names = "default";
>> +	pinctrl-0 = <&pcie_perst>;
>> +	vpcie3v3-supply = <&vcc3v3_pcie>;
>> +	status = "okay";
>> +};
>> +
>>  &pinctrl {
>>  	lcd-panel {
>>  		lcd_panel_reset: lcd-panel-reset {
>> @@ -535,6 +563,16 @@
>>  		};
>>  	};
>>  
>> +	pcie {
>> +		vcc3v3_pcie_en: vcc3v3-pcie-en {
>> +			rockchip,pins = <1 RK_PC1 RK_FUNC_GPIO &pcfg_pull_none>;
>> +		};
>> +
>> +		pcie_perst: pcie-perst {
>> +			rockchip,pins = <4 RK_PD1 RK_FUNC_GPIO &pcfg_pull_none>;
>> +		};
>> +	};
>> +
>>  	pmic {
>>  		vsel1_gpio: vsel1-gpio {
>>  			rockchip,pins = <1 RK_PC2 RK_FUNC_GPIO &pcfg_pull_down>;
>> 
> 
> 
> 
> 
> 
> _______________________________________________
> Linux-rockchip mailing list
> Linux-rockchip@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-rockchip
> 
