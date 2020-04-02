From: Helen Koike <helen.koike-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
Subject: Re: [PATCH 4/4] arm64: dts: rockchip: add isp0 node for rk3399
Date: Thu, 2 Apr 2020 16:46:28 -0300
Message-ID: <d8b05dd4-1ece-9513-b2ec-0cb58f665c5e@collabora.com>
References: <20200402000234.226466-5-helen.koike@collabora.com>
 <1187d28a-6fb9-fd12-a422-8a4220a11e79@gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Return-path: <devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <1187d28a-6fb9-fd12-a422-8a4220a11e79-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Content-Language: en-US
Sender: devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: Johan Jonker <jbx6244-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Cc: dafna.hirschfeld-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org, devel-gWbeCf7V1WCQmaza687I9mD2FQJk+8+b@public.gmane.org, devicetree-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, ezequiel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org, heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org, hverkuil-cisco-qWit8jRvyhVmR6Xm/wNWPw@public.gmane.org, karthik.poduval-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org, kernel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-media-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, mark.rutland-5wv7dgnIgG8@public.gmane.org, robh+dt-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org



On 4/2/20 2:20 PM, Johan Jonker wrote:
> Hi Helen,
> 
>> diff --git a/arch/arm64/boot/dts/rockchip/rk3399.dtsi b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
>> index fc0295d2a65a1..815099a0cd0dd 100644
>> --- a/arch/arm64/boot/dts/rockchip/rk3399.dtsi
>> +++ b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
>> @@ -1718,6 +1718,33 @@ vopb_mmu: iommu@ff903f00 {
>>  		status = "disabled";
>>  	};
>>  
>> +	isp0: isp0@ff910000 {
>> +		compatible = "rockchip,rk3399-cif-isp";
>> +		reg = <0x0 0xff910000 0x0 0x4000>;
>> +		interrupts = <GIC_SPI 43 IRQ_TYPE_LEVEL_HIGH 0>;
>> +		clocks = <&cru SCLK_ISP0>,
>> +			 <&cru ACLK_ISP0>, <&cru ACLK_ISP0_WRAPPER>,
>> +			 <&cru HCLK_ISP0>, <&cru HCLK_ISP0_WRAPPER>;
>> +		clock-names = "clk_isp",
>> +			      "aclk_isp", "aclk_isp_wrap",
>> +			      "hclk_isp", "hclk_isp_wrap";
> 
>> +		power-domains = <&power RK3399_PD_ISP0>;
>> +		iommus = <&isp0_mmu>;
>> +		phys = <&mipi_dphy_rx0>;
>> +		phy-names = "dphy";
> 
> Maybe a little sort? But keep rest as it is. Also in example.
> 
> 		iommus = <&isp0_mmu>;
> 		phys = <&mipi_dphy_rx0>;
> 		phy-names = "dphy";
> 		power-domains = <&power RK3399_PD_ISP0>;

Are you proposing only to move power-domains after phy? And keep the rest?
What is the main logic?

Thanks
Helen

> 
>> +
>> +		ports {
>> +			#address-cells = <1>;
>> +			#size-cells = <0>;
>> +
>> +			port@0 {
> 
>> +				#address-cells = <1>;
>> +				#size-cells = <0>;
>> +				reg = <0>;
> 
> Move reg above #address-cells. Change that in example as well.
> 
> 				reg = <0>;
> 				#address-cells = <1>;
> 				#size-cells = <0>;
> 
>> +			};
>> +		};
>> +	};
>> +
>>  	isp0_mmu: iommu@ff914000 {
>>  		compatible = "rockchip,iommu";
>>  		reg = <0x0 0xff914000 0x0 0x100>, <0x0 0xff915000 0x0 0x100>;
>> -- 
>> 2.26.0
> 
