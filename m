From: Markus Reichl <m.reichl@fivetechno.de>
Subject: Re: [PATCH 5/5] arm64: dts: rockchip: Enable mp8859 regulator on
 rk3399-roc-pc
Date: Sun, 5 Jan 2020 10:16:09 +0100
Message-ID: <2dd59b6a-7890-8546-8030-198c6ae8608b@fivetechno.de>
References: <20200104153321.6584-1-m.reichl@fivetechno.de>
 <20200104153321.6584-6-m.reichl@fivetechno.de> <11639547.aalzkRAYeW@phil>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <11639547.aalzkRAYeW@phil>
Content-Language: de-DE
Sender: linux-kernel-owner@vger.kernel.org
To: Heiko Stuebner <heiko@sntech.de>
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, Rob Herring <robh+dt@kernel.org>, Jagan Teki <jagan@amarulasolutions.com>, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

Hi Heiko,

Am 04.01.20 um 22:23 schrieb Heiko Stuebner:
> Hi Markus,
> 
> Am Samstag, 4. Januar 2020, 16:32:49 CET schrieb Markus Reichl:
>> The rk3399-roc-pc uses a MP8859 DC/DC converter for 12V supply.
>> This supplies 5V only in default state after booting.
> 
> Just for my understanding ... both the old static regulator before as
> well as the new i2c node said to supply 12V, but above you say that
> the default is 5V ... so I'm wondering who configured the 12V before.
> 
> Or was it the case that the old regulator node was just wrong and we
> had 5V running on the dc_12v line?

Yes, the dc_12v line was running at 5V (measured 4,7V) as it is the
default power up value for the MP8859. This is as documented in the data
sheet [1].

[1] https://www.monolithicpower.com/en/documentview/productdocument/index/version/2/document_type/Datasheet/lang/en/sku/MP8859/document_id/4033/

Gruß
--
Markus
> 
> Thanks
> Heiko
> 
>> Now we can control the output voltage via I2C interface.
>> Add a node for the driver to reach 12V.
>> 
>> Signed-off-by: Markus Reichl <m.reichl@fivetechno.de>
>> ---
>>  .../boot/dts/rockchip/rk3399-roc-pc.dtsi      | 32 +++++++++++--------
>>  1 file changed, 18 insertions(+), 14 deletions(-)
>> 
>> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi
>> index 8e01b04144b7..9f225e9c3d54 100644
>> --- a/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi
>> +++ b/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi
>> @@ -110,20 +110,6 @@ vcc_vbus_typec0: vcc-vbus-typec0 {
>>  		regulator-max-microvolt = <5000000>;
>>  	};
>>  
>> -	/*
>> -	 * should be placed inside mp8859, but not until mp8859 has
>> -	 * its own dt-binding.
>> -	 */
>> -	dc_12v: mp8859-dcdc1 {
>> -		compatible = "regulator-fixed";
>> -		regulator-name = "dc_12v";
>> -		regulator-always-on;
>> -		regulator-boot-on;
>> -		regulator-min-microvolt = <12000000>;
>> -		regulator-max-microvolt = <12000000>;
>> -		vin-supply = <&vcc_vbus_typec0>;
>> -	};
>> -
>>  	/* switched by pmic_sleep */
>>  	vcc1v8_s3: vcca1v8_s3: vcc1v8-s3 {
>>  		compatible = "regulator-fixed";
>> @@ -546,6 +532,24 @@ fusb0: usb-typec@22 {
>>  		vbus-supply = <&vcc_vbus_typec0>;
>>  		status = "okay";
>>  	};
>> +
>> +	mp8859: regulator@66 {
>> +		compatible = "mps,mp8859";
>> +		reg = <0x66>;
>> +		dc_12v: mp8859_dcdc {
>> +			regulator-name = "dc_12v";
>> +			regulator-min-microvolt = <12000000>;
>> +			regulator-max-microvolt = <12000000>;
>> +			regulator-always-on;
>> +			regulator-boot-on;
>> +			vin-supply = <&vcc_vbus_typec0>;
>> +
>> +			regulator-state-mem {
>> +				regulator-on-in-suspend;
>> +				regulator-suspend-microvolt = <12000000>;
>> +			};
>> +		};
>> +	};
>>  };
>>  
>>  &i2s0 {
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
