From: William Wu <william.wu@rock-chips.com>
Subject: Re: [PATCH v2] arm64: dts: rockchip: add the power domain node for
 rk3399
Date: Sat, 02 Jul 2016 11:41:42 +0800
Message-ID: <577737F6.7000008@rock-chips.com>
References: <1467347575-11806-1-git-send-email-wxt@rock-chips.com> <CAD=FV=U0FU5P+seYYmJNZmcV1r-N6_UHtMW5LuVGM-NyPER8BQ@mail.gmail.com> <57771A39.8060606@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=GB2312
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <57771A39.8060606@rock-chips.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Caesar Wang <wxt@rock-chips.com>, Doug Anderson <dianders@chromium.org>
Cc: Tao Huang <huangtao@rock-chips.com>, =?GB2312?B?SGVpa28gU3SouWJuZXI=?= <heiko@sntech.de>, Elaine Zhang <zhangqing@rock-chips.com>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, Eddie Cai <eddie.cai@rock-chips.com>, "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
List-Id: linux-rockchip.vger.kernel.org

Dear Caesar & Doug,


On 07/02/2016 09:34 AM, Caesar Wang wrote:
>
> On 2016=C4=EA07=D4=C202=C8=D5 00:56, Doug Anderson wrote:
>> Caesar
>>
>> On Thu, Jun 30, 2016 at 9:32 PM, Caesar Wang <wxt@rock-chips.com> wr=
ote:
>>> From: Elaine Zhang <zhangqing@rock-chips.com>
>>>
>>> In order to meet low power requirements, a power management unit
>>> (PMU) is
>>> designed for controlling power resources in RK3399. The RK3399 PMU =
is
>>> dedicated for managing the power of the whole chip.
>>>
>>> 1. add pd node for RK3399 Soc
>>> 2. create power domain tree
>>> 3. add qos node for domain
>>>
>>> From the DT/binds and driver can get more detail information:
>>> The driver:
>>> drivers/soc/rockchip/pm_domains.c
>>> The document:
>>> Documentation/devicetree/bindings/soc/rockchip/power_domain.txt
>>> ---
>>>
>>> Changes in v2:
>>> - As Doug/Heiko commnets on
>>> https://patchwork.kernel.org/patch/9206415/.
>>> drop the debugfs-dump and Add the comments for alphabetical order.
>>>
>>> Note: As the TRM lists many voltage domains and power domains, then
>>> in actual we just need control some domains for driver.
>>> Due to some domains (e.g. emmc, usb, core)...We can't turn off it o=
n
>>> bootup.
>> I'm curious: why can't you turn off USB power domains if a board
>> doesn't usb USB? ...or GMAC on boards that don't use Ethernet? ...or
>> eDP on boards that don't use EDP?
>>
>> Maybe the driver for these things isn't ready to handle power domain=
s
>> yet so that's why they are left out for now?
>>
>> It seems like GMAC could at least be added because we don't even hav=
e
>> the GMAC listed in the current device tree so therefore there can't =
be
>> any users of it. When it's added we can make sure that the power
>> domains are added.
>
> At least, the gmac had been supported in rockchip inside.
> That's seem the gmac driver can't handle the power domain enough.
> --=20
>
> Frankly, I'm no test the GMAC=A3=ACthen this patch should support mos=
t of
> devices.
> We can send another patch to support it if someone=A3=A8usb/gmac) can
> handle the power domain.
>
>>
>> I think in the current upstream dtsi file there is also no xhci node=
,
>> so does that mean you could add the USB3 power domain?
>>
>>
>
> willam@RK, what's think of it=A3=BF
RK3399 support XHCI controller, but it's integrated in DWC3 IP core,
and we don't need to add xhci node separately, but just add dwc3
node like this:
usbdrd3_0: usb@fe800000 {
compatible =3D "rockchip,rk3399-dwc3";
=2E.....
ranges;
status =3D "disabled";
usbdrd_dwc3_0: dwc3@fe800000 {
compatible =3D "snps,dwc3";
reg =3D <0x0 0xfe800000 0x0 0x100000>;
interrupts =3D <GIC_SPI 105 IRQ_TYPE_LEVEL_HIGH>;
dr_mode =3D "otg";
=2E.....
};
};

And I'm working on DWC3 upstream.
RK3399 have two usb power domain (pd_perihp usb2 and pd_usb3),
usb driver isn't ready to handle power domain for the time being,
but we're trying to support usb power domain control.

Best regards,
William Wu
>
>>> Signed-off-by: Elaine Zhang <zhangqing@rock-chips.com>
>>> Signed-off-by: Caesar Wang <wxt@rock-chips.com>
>>> Cc: linux-arm-kernel@lists.infradead.org
>>> Cc: linux-rockchip@lists.infradead.org
>>> Cc: Heiko Stuebner <heiko@sntech.de>
>>>
>>> ---
>>> arch/arm64/boot/dts/rockchip/rk3399.dtsi | 179
>>> +++++++++++++++++++++++++++++++
>>> 1 file changed, 179 insertions(+)
>>>
>>> diff --git a/arch/arm64/boot/dts/rockchip/rk3399.dtsi
>>> b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
>>> index a6dd623..103e185 100644
>>> --- a/arch/arm64/boot/dts/rockchip/rk3399.dtsi
>>> +++ b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
>>> @@ -45,6 +45,7 @@
>>> #include <dt-bindings/interrupt-controller/arm-gic.h>
>>> #include <dt-bindings/interrupt-controller/irq.h>
>>> #include <dt-bindings/pinctrl/rockchip.h>
>>> +#include <dt-bindings/power/rk3399-power.h>
>>> #include <dt-bindings/thermal/thermal.h>
>>>
>>> / {
>>> @@ -594,6 +595,184 @@
>>> status =3D "disabled";
>>> };
>>>
>>> + qos_hdcp: qos_hdcp@ffa90000 {
>>> + compatible =3D "syscon";
>>> + reg =3D <0x0 0xffa90000 0x0 0x20>;
>>> + };
>>> +
>>> + qos_iep: qos_iep@ffa98000 {
>>> + compatible =3D "syscon";
>>> + reg =3D <0x0 0xffa98000 0x0 0x20>;
>>> + };
>>> +
>>> + qos_isp0_m0: qos_isp0_m0@ffaa0000 {
>>> + compatible =3D "syscon";
>>> + reg =3D <0x0 0xffaa0000 0x0 0x20>;
>>> + };
>>> +
>>> + qos_isp0_m1: qos_isp0_m1@ffaa0080 {
>>> + compatible =3D "syscon";
>>> + reg =3D <0x0 0xffaa0080 0x0 0x20>;
>>> + };
>>> +
>>> + qos_isp1_m0: qos_isp1_m0@ffaa8000 {
>>> + compatible =3D "syscon";
>>> + reg =3D <0x0 0xffaa8000 0x0 0x20>;
>>> + };
>>> +
>>> + qos_isp1_m1: qos_isp1_m1@ffaa8080 {
>>> + compatible =3D "syscon";
>>> + reg =3D <0x0 0xffaa8080 0x0 0x20>;
>>> + };
>>> +
>>> + qos_rga_r: qos_rga_r@ffab0000 {
>>> + compatible =3D "syscon";
>>> + reg =3D <0x0 0xffab0000 0x0 0x20>;
>>> + };
>>> +
>>> + qos_rga_w: qos_rga_w@ffab0080 {
>>> + compatible =3D "syscon";
>>> + reg =3D <0x0 0xffab0080 0x0 0x20>;
>>> + };
>>> +
>>> + qos_video_m0: qos_video_m0@ffab8000 {
>>> + compatible =3D "syscon";
>>> + reg =3D <0x0 0xffab8000 0x0 0x20>;
>>> + };
>>> +
>>> + qos_video_m1_r: qos_video_m1_r@ffac0000 {
>>> + compatible =3D "syscon";
>>> + reg =3D <0x0 0xffac0000 0x0 0x20>;
>>> + };
>>> +
>>> + qos_video_m1_w: qos_video_m1_w@ffac0080 {
>>> + compatible =3D "syscon";
>>> + reg =3D <0x0 0xffac0080 0x0 0x20>;
>>> + };
>>> +
>>> + qos_vop_big_r: qos_vop_big_r@ffac8000 {
>>> + compatible =3D "syscon";
>>> + reg =3D <0x0 0xffac8000 0x0 0x20>;
>>> + };
>>> +
>>> + qos_vop_big_w: qos_vop_big_w@ffac8080 {
>>> + compatible =3D "syscon";
>>> + reg =3D <0x0 0xffac8080 0x0 0x20>;
>>> + };
>>> +
>>> + qos_vop_little: qos_vop_little@ffad0000 {
>>> + compatible =3D "syscon";
>>> + reg =3D <0x0 0xffad0000 0x0 0x20>;
>>> + };
>>> +
>>> + qos_gpu: qos_gpu@ffae0000 {
>>> + compatible =3D "syscon";
>>> + reg =3D <0x0 0xffae0000 0x0 0x20>;
>>> + };
>>> +
>>> + pmu: power-management@ff310000 {
>>> + compatible =3D "rockchip,rk3399-pmu", "syscon", "simple-mfd";
>>> + reg =3D <0x0 0xff310000 0x0 0x1000>;
>>> +
>>> + /*
>>> + * Note: RK3399 supports 6 voltage domains including VD_CORE_L,
>>> + * VD_CORE_B, VD_CENTER, VD_GPU, VD_LOGIC and VD_PMU.
>>> + * Some of the power domains are grouped together for every
>>> + * voltage domain.
>>> + * The detail contents as below.
>>> + */
>>> + power: power-controller {
>>> + status =3D "okay";
>>> + compatible =3D "rockchip,rk3399-power-controller";
>>> + #power-domain-cells =3D <1>;
>>> + #address-cells =3D <1>;
>>> + #size-cells =3D <0>;
>>> +
>>> + /* These power domains are grouped by VD_LOGIC */
>>> + pd_vio@RK3399_PD_VIO {
>>> + reg =3D <RK3399_PD_VIO>;
>>> + #address-cells =3D <1>;
>>> + #size-cells =3D <0>;
>>> +
>>> + pd_isp0@RK3399_PD_ISP0 {
>>> + reg =3D <RK3399_PD_ISP0>;
>>> + clocks =3D <&cru ACLK_ISP0>,
>>> + <&cru HCLK_ISP0>;
>>> + pm_qos =3D <&qos_isp0_m0>,
>>> + <&qos_isp0_m1>;
>>> + };
>>> + pd_isp1@RK3399_PD_ISP1 {
>>> + reg =3D <RK3399_PD_ISP1>;
>>> + clocks =3D <&cru ACLK_ISP1>,
>>> + <&cru HCLK_ISP1>;
>>> + pm_qos =3D <&qos_isp1_m0>,
>>> + <&qos_isp1_m1>;
>>> + };
>>> + pd_vo@RK3399_PD_VO {
>>> + reg =3D <RK3399_PD_VO>;
>>> + #address-cells =3D <1>;
>>> + #size-cells =3D <0>;
>>> +
>>> + pd_vopb@RK3399_PD_VOPB {
>>> + reg =3D <RK3399_PD_VOPB>;
>>> + clocks =3D <&cru ACLK_VOP0>,
>>> + <&cru HCLK_VOP0>;
>>> + pm_qos =3D <&qos_vop_big_r>,
>>> + <&qos_vop_big_w>;
>>> + };
>>> + pd_vopl@RK3399_PD_VOP {
>>> + reg =3D <RK3399_PD_VOPL>;
>>> + clocks =3D <&cru ACLK_VOP1>,
>>> + <&cru HCLK_VOP1>;
>>> + pm_qos =3D <&qos_vop_little>;
>>> + };
>>> + };
>>> + pd_hdcp@RK3399_PD_HDCP {
>>> + reg =3D <RK3399_PD_HDCP>;
>>> + clocks =3D <&cru ACLK_HDCP>,
>>> + <&cru HCLK_HDCP>,
>>> + <&cru PCLK_HDCP>;
>>> + pm_qos =3D <&qos_hdcp>;
>>> + };
>> HDCP sorts earlier than ISP0, so should be above that. Basically:
>> anything in the same area should be sorted alphabetically.
>
> The sort is follow up the TRM. At least I'm according to every voltag=
e
> domain.
>
>>
>>> + };
>>> +
>>> + /* These power domains are grouped by VD_CENTER */
>>> + pd_vcodec@RK3399_PD_VCODEC {
>>> + reg =3D <RK3399_PD_VCODEC>;
>>> + clocks =3D <&cru ACLK_VCODEC>,
>>> + <&cru HCLK_VCODEC>;
>>> + pm_qos =3D <&qos_video_m0>;
>>> + };
>>> + pd_vdu@RK3399_PD_VDU {
>>> + reg =3D <RK3399_PD_VDU>;
>>> + clocks =3D <&cru ACLK_VDU>,
>>> + <&cru HCLK_VDU>;
>>> + pm_qos =3D <&qos_video_m1_r>,
>>> + <&qos_video_m1_w>;
>>> + };
>>> + pd_rga@RK3399_PD_RGA {
>>> + reg =3D <RK3399_PD_RGA>;
>>> + clocks =3D <&cru ACLK_RGA>,
>>> + <&cru HCLK_RGA>;
>>> + pm_qos =3D <&qos_rga_r>,
>>> + <&qos_rga_w>;
>>> + };
>>> + pd_iep@RK3399_PD_IE {
>>> + reg =3D <RK3399_PD_IEP>;
>>> + clocks =3D <&cru ACLK_IEP>,
>>> + <&cru HCLK_IEP>;
>>> + pm_qos =3D <&qos_iep>;
>>> + };
>> IE sorts before RGA. ...and both come before VCODEC / VDU.
>
> Ditto
>>
>>> +
>>> + /* These power domains are grouped by VD_GPU */
>>> + pd_gpu@RK3399_PD_GPU {
>>> + reg =3D <RK3399_PD_GPU>;
>>> + clocks =3D <&cru ACLK_GPU>;
>>> + pm_qos =3D <&qos_gpu>;
>>> + };
>>> + };
>>> + };
>>> +
>>> pmugrf: syscon@ff320000 {
>>> compatible =3D "rockchip,rk3399-pmugrf", "syscon", "simple-mfd";
>>> reg =3D <0x0 0xff320000 0x0 0x1000>;
>>> --=20
>>> 1.9.1
>>>
>> _______________________________________________
>> Linux-rockchip mailing list
>> Linux-rockchip@lists.infradead.org
>> http://lists.infradead.org/mailman/listinfo/linux-rockchip
>
>
