From: Johan Jonker <jbx6244-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [PATCH 3/4] arm64: dts: rockchip: add rx0 mipi-phy for rk3399
Date: Thu, 2 Apr 2020 16:37:52 +0200
Message-ID: <76211530-73ff-5f36-8915-8bdc036d4369@gmail.com>
References: <20200402000234.226466-4-helen.koike@collabora.com>
 <970b9e48-e38f-7e7a-3472-7dc5a4737e58@gmail.com> <105956984.FXDh2DO4ZE@diego>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Return-path: <devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <105956984.FXDh2DO4ZE@diego>
Content-Language: en-US
Sender: devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: =?UTF-8?Q?Heiko_St=c3=bcbner?= <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Cc: helen.koike-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org, dafna.hirschfeld-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org, devel-gWbeCf7V1WCQmaza687I9mD2FQJk+8+b@public.gmane.org, devicetree-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, ezequiel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org, hverkuil-cisco-qWit8jRvyhVmR6Xm/wNWPw@public.gmane.org, karthik.poduval-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org, kernel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-media-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, mark.rutland-5wv7dgnIgG8@public.gmane.org, robh+dt-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

On 4/2/20 4:31 PM, Heiko Stübner wrote:
> Am Donnerstag, 2. April 2020, 15:48:02 CEST schrieb Johan Jonker:
>> Hi Helen,
>>
>>> From: Helen Koike <helen.koike-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
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
alphabetical first:

io-domains
mipi-dphy-rx0
usb2-phy@e450
.@..

or

with reg values first:

.@..
emmc_phy: phy@f780
mipi-dphy-rx0
pcie-phy

> 
>>
>>> +			compatible = "rockchip,rk3399-mipi-dphy-rx0";
>>> +			clocks = <&cru SCLK_MIPIDPHY_REF>,
>>
>>> +				<&cru SCLK_DPHY_RX0_CFG>,
>>> +				<&cru PCLK_VIO_GRF>;
>>
>> Align                            ^
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
