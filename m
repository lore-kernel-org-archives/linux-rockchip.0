From: Helen Koike <helen@koikeco.de>
Subject: Re: [PATCH 3/4] arm64: dts: rockchip: add rx0 mipi-phy for rk3399
Date: Thu, 2 Apr 2020 11:43:08 -0300
Message-ID: <2fa1b497-509a-d02f-b893-058639655133@koikeco.de>
References: <20200402000234.226466-4-helen.koike@collabora.com>
 <970b9e48-e38f-7e7a-3472-7dc5a4737e58@gmail.com> <105956984.FXDh2DO4ZE@diego>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <105956984.FXDh2DO4ZE@diego>
Content-Language: en-US
Sender: linux-kernel-owner@vger.kernel.org
To: =?UTF-8?Q?Heiko_St=c3=bcbner?= <heiko@sntech.de>, Johan Jonker <jbx6244@gmail.com>
Cc: helen.koike@collabora.com, dafna.hirschfeld@collabora.com, devel@driverdev.osuosl.org, devicetree@vger.kernel.org, ezequiel@collabora.com, hverkuil-cisco@xs4all.nl, karthik.poduval@gmail.com, kernel@collabora.com, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, mark.rutland@arm.com, robh+dt@kernel.org
List-Id: linux-rockchip.vger.kernel.org

Hi,

On 4/2/20 11:31 AM, Heiko Stübner wrote:
> Am Donnerstag, 2. April 2020, 15:48:02 CEST schrieb Johan Jonker:
>> Hi Helen,
>>
>>> From: Helen Koike <helen.koike@collabora.com>
>>
>>> diff --git a/arch/arm64/boot/dts/rockchip/rk3399.dtsi b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
>>> index 33cc21fcf4c10..fc0295d2a65a1 100644
>>> --- a/arch/arm64/boot/dts/rockchip/rk3399.dtsi
>>> +++ b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
>>> @@ -1394,6 +1394,17 @@ io_domains: io-domains {
>>>  			status = "disabled";
>>>  		};
>>>  
>>
>>> +		mipi_dphy_rx0: mipi-dphy-rx0 {
>>
>> For Heiko sort syscon@ff770000 subnodes alphabetical or reg value first?
> 
> Similar to main nodes ... so things without reg alphabetical,
> the rest by reg address
> 
> 
>>
>>> +			compatible = "rockchip,rk3399-mipi-dphy-rx0";
>>> +			clocks = <&cru SCLK_MIPIDPHY_REF>,
>>
>>> +				<&cru SCLK_DPHY_RX0_CFG>,
>>> +				<&cru PCLK_VIO_GRF>;
>>
>> Align                            ^

ack.

Thanks
Helen

>>
>>> +			clock-names = "dphy-ref", "dphy-cfg", "grf";
>>> +			power-domains = <&power RK3399_PD_VIO>;
>>> +			#phy-cells = <0>;
>>> +			status = "disabled";
>>> +		};
>>> +
>>>  		u2phy0: usb2-phy@e450 {
>>>  			compatible = "rockchip,rk3399-usb2phy";
>>>  			reg = <0xe450 0x10>;
>>
>>
> 
> 
> 
> 
