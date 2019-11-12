From: Kever Yang <kever.yang@rock-chips.com>
Subject: Re: [PATCH 2/3] arm64: dts: rk3399-rock960: add vdd_log
Date: Tue, 12 Nov 2019 16:10:17 +0800
Message-ID: <3d129826-7705-819e-e68b-cc9080eb6c95@rock-chips.com>
References: <20191111005158.25070-1-kever.yang@rock-chips.com>
 <20191111005158.25070-2-kever.yang@rock-chips.com>
 <20191111052232.GA2842@Mani-XPS-13-9360>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20191111052232.GA2842@Mani-XPS-13-9360>
Content-Language: en-US
Sender: linux-kernel-owner@vger.kernel.org
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Cc: heiko@sntech.de, linux-rockchip@lists.infradead.org, Akash Gajjar <akash@openedev.com>, Ezequiel Garcia <ezequiel@collabora.com>, Jagan Teki <jagan@amarulasolutions.com>, Mark Rutland <mark.rutland@arm.com>, Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org


On 2019/11/11 下午1:22, Manivannan Sadhasivam wrote:
> Hi Kever,
>
> On Mon, Nov 11, 2019 at 08:51:57AM +0800, Kever Yang wrote:
>> Add vdd_log node according to rock960 schematic V13.
>>
>> Signed-off-by: Kever Yang <kever.yang@rock-chips.com>
>> ---
>>
>>   arch/arm64/boot/dts/rockchip/rk3399-rock960.dtsi | 12 ++++++++++++
>>   1 file changed, 12 insertions(+)
>>
>> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rock960.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-rock960.dtsi
>> index c7d48d41e184..73afee257115 100644
>> --- a/arch/arm64/boot/dts/rockchip/rk3399-rock960.dtsi
>> +++ b/arch/arm64/boot/dts/rockchip/rk3399-rock960.dtsi
>> @@ -76,6 +76,18 @@
>>   		regulator-always-on;
>>   		vin-supply = <&vcc5v0_sys>;
>>   	};
>> +
>> +	vdd_log: vdd-log {
>> +		compatible = "pwm-regulator";
>> +		pwms = <&pwm2 0 25000 1>;
>> +		regulator-name = "vdd_log";
>> +		regulator-always-on;
>> +		regulator-boot-on;
>> +		regulator-min-microvolt = <800000>;
>> +		regulator-max-microvolt = <1400000>;
>> +		regulator-init-microvolt = <950000>;
> The default value seems to be 0.9v as per both Rock960 and Ficus schematics.


The default value is 0.9V when pwm-regulator is not enabled, and this 
'init-microvolt' suppose to set the

init value when pwm-regulator is enabled. I set this to 950mV because 
Peter report that he experience

the system hang during Fedora boot  up, and update the vdd_log to 950mV 
can fix the issue due to

engineer measure on another rk3399 board puma-Q7.


Thanks,

- Kever

>
> Other than that,
> Acked-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
>
> Thanks,
> Mani
>
>> +		vin-supply = <&vcc_sys>;
>> +	};
>>   };
>>   
>>   &cpu_l0 {
>> -- 
>> 2.17.1
>>
