From: Katsuhiro Suzuki <katsuhiro@katsuster.net>
Subject: Re: [PATCH] arm64: dts: rockchip: add SPDIF node for rk3399-rockpro64
Date: Mon, 10 Aug 2020 18:10:53 +0900
Message-ID: <14a2f659-675d-a530-eef5-9c965f3743b6@katsuster.net>
References: <20200801174950.2309273-1-katsuhiro@katsuster.net>
 <1e16b653-3820-7944-2254-a99627f9eeb0@gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <1e16b653-3820-7944-2254-a99627f9eeb0@gmail.com>
Content-Language: en-US
Sender: linux-kernel-owner@vger.kernel.org
To: Johan Jonker <jbx6244@gmail.com>, Heiko Stuebner <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

Hello Johan,

Sorry for late and thanks for your comment!

On 2020/08/03 2:52, Johan Jonker wrote:
> Hi Katsuhiro,
> 
> On 8/1/20 7:49 PM, Katsuhiro Suzuki wrote:
>> This patch adds 'disabled' SPDIF sound node and related settings
>> for rk3399-rockpro64.
>>
>> There are 2 reasons:
>>    - All RK3399 dma-bus channels have been already used by I2S0/1/2
>>    - RockPro64 does not have SPDIF optical nor coaxial connector,
>>      just have 3pins
>>
>> Signed-off-by: Katsuhiro Suzuki <katsuhiro@katsuster.net>
>> ---
>>   .../boot/dts/rockchip/rk3399-rockpro64.dtsi   | 28 +++++++++++++++++++
>>   1 file changed, 28 insertions(+)
>>
>> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi
>> index 6e553ff47534..e35b30f8a46e 100644
>> --- a/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi
>> +++ b/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi
>> @@ -76,6 +76,23 @@ sound {
>>   		dais = <&i2s1_p0>;
>>   	};
>>   
>> +	sound-dit {
>> +		compatible = "audio-graph-card";
>> +		label = "rockchip,rk3399";
>> +		dais = <&spdif_p0>;
>> +	};
>> +
>> +	spdif-dit {
>> +		compatible = "linux,spdif-dit";
>> +		#sound-dai-cells = <0>;
>> +
>> +		port {
>> +			dit_p0_0: endpoint {
>> +				remote-endpoint = <&spdif_p0_0>;
>> +			};
>> +		};
>> +	};
>> +
>>   	vcc12v_dcin: vcc12v-dcin {
>>   		compatible = "regulator-fixed";
>>   		regulator-name = "vcc12v_dcin";
>> @@ -698,6 +715,17 @@ &sdhci {
>>   	status = "okay";
>>   };
>>   
>> +&spdif {
>> +	pinctrl-0 = <&spdif_bus_1>;
> 
>> +	status = "disabled";
> 
> The status is already disabled.
> Adding more unused nodes and properties doesn't make sense here.
>> 	spdif: spdif@ff870000 {
> 		compatible = "rockchip,rk3399-spdif";
> 		reg = <0x0 0xff870000 0x0 0x1000>;
> 		interrupts = <GIC_SPI 66 IRQ_TYPE_LEVEL_HIGH 0>;
> 		dmas = <&dmac_bus 7>;
> 		dma-names = "tx";
> 		clock-names = "mclk", "hclk";
> 		clocks = <&cru SCLK_SPDIF_8CH>, <&cru HCLK_SPDIF>;
> 		pinctrl-names = "default";
> 		pinctrl-0 = <&spdif_bus>;
> 		power-domains = <&power RK3399_PD_SDIOAUDIO>;
> 		#sound-dai-cells = <0>;
> 		status = "disabled";
> 	};
> 

I see, I will remove this line and send V2 patch.

Best Regards,
Katsuhiro Suzuki


>> +
>> +	spdif_p0: port {
>> +		spdif_p0_0: endpoint {
>> +			remote-endpoint = <&dit_p0_0>;
>> +		};
>> +	};
>> +};
>> +
>>   &spi1 {
>>   	status = "okay";
>>   
>>
> 
