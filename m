From: Justin Swartz <justin.swartz-4mSLLtuPuFdOJuVFMUvaKw@public.gmane.org>
Subject: Re: [PATCH v2 1/2] ARM: dts: rockchip: add rga node for rk322x
Date: Tue, 21 Jan 2020 23:45:23 +0200
Message-ID: <d2661596ca26a4b8041a9fac7ee61593@risingedge.co.za>
References: <20200121201146.18038-2-justin.swartz@risingedge.co.za>
 <7d85210b-e554-d875-0615-c2e93a264b5b@gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=US-ASCII;
 format=flowed
Content-Transfer-Encoding: 7bit
Return-path: <devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <7d85210b-e554-d875-0615-c2e93a264b5b-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Sender: devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: Johan Jonker <jbx6244-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Cc: devicetree-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, mark.rutland-5wv7dgnIgG8@public.gmane.org, robh+dt-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

Hi Johan,

On 2020-01-21 23:34, Johan Jonker wrote:

> Hi Justin,
> 
> rga is now inserted above vpu_mmu.
> Please check the address.
> 
> rga:       rga@20060000 {
> vpu_mmu: iommu@20020800 {
> 
> Should go between vop_mmu and iep_mmu.
> 
> vop_mmu: iommu@20053f00 {
> rga:       rga@20060000 {
> iep_mmu: iommu@20070800 {

Thanks!

>> Add a node to define the presence of RGA, a 2D raster graphic
>> acceleration unit.
>> 
>> Signed-off-by: Justin Swartz <justin.swartz-4mSLLtuPuFdOJuVFMUvaKw@public.gmane.org>
>> ---
>> arch/arm/boot/dts/rk322x.dtsi | 11 +++++++++++
>> 1 file changed, 11 insertions(+)
>> 
>> diff --git a/arch/arm/boot/dts/rk322x.dtsi 
>> b/arch/arm/boot/dts/rk322x.dtsi
>> index 340ed6ccb..efa733207 100644
>> --- a/arch/arm/boot/dts/rk322x.dtsi
>> +++ b/arch/arm/boot/dts/rk322x.dtsi
>> @@ -566,6 +566,17 @@
>> status = "disabled";
>> };
>> 
>> +    rga: rga@20060000 {
>> +        compatible = "rockchip,rk3228-rga", "rockchip,rk3288-rga";
>> +        reg = <0x20060000 0x1000>;
>> +        interrupts = <GIC_SPI 33 IRQ_TYPE_LEVEL_HIGH>;
>> +        clocks = <&cru ACLK_RGA>, <&cru HCLK_RGA>, <&cru SCLK_RGA>;
>> +        clock-names = "aclk", "hclk", "sclk";
>> +        resets = <&cru SRST_RGA>, <&cru SRST_RGA_A>, <&cru 
>> SRST_RGA_H>;
>> +        reset-names = "core", "axi", "ahb";
>> +        status = "disabled";
>> +    };
>> +
>> vpu_mmu: iommu@20020800 {
>> compatible = "rockchip,iommu";
>> reg = <0x20020800 0x100>;
>> --
>> 2.11.0
