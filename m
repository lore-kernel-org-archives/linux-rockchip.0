From: William Wu <william.wu@rock-chips.com>
Subject: Re: [PATCH v4 5/5] usb: dwc3: rockchip: add devicetree bindings documentation
Date: Fri, 17 Jun 2016 17:18:59 +0800
Message-ID: <5763C083.2030304@rock-chips.com>
References: <1464870896-25612-1-git-send-email-william.wu@rock-chips.com> <12544596.GMXFpFZvx9@phil>
Mime-Version: 1.0
Content-Type: text/plain; charset=ISO-8859-1;
	format=flowed
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <12544596.GMXFpFZvx9@phil>
Sender: linux-kernel-owner@vger.kernel.org
To: =?ISO-8859-1?Q?Heiko_St=FCbner?= <heiko@sntech.de>
Cc: gregkh@linuxfoundation.org, balbi@kernel.org, linux-rockchip@lists.infradead.org, briannorris@google.com, dianders@google.com, kever.yang@rock-chips.com, huangtao@rock-chips.com, frank.wang@rock-chips.com, eddie.cai@rock-chips.com, John.Youn@synopsys.com, linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org, sergei.shtylyov@cogentembedded.com
List-Id: linux-rockchip.vger.kernel.org

Dear Heiko,

On 06/17/2016 07:15 AM, Heiko St=FCbner wrote:
> Hi William,
>
> Am Donnerstag, 2. Juni 2016, 20:34:56 schrieb William Wu:
>> This patch adds the devicetree documentation required for Rockchip
>> USB3.0 core wrapper consisting of USB3.0 IP from Synopsys.
>>
>> It supports DRD mode, and could operate in device mode (SS, HS, FS)
>> and host mode (SS, HS, FS, LS).
>>
>> Signed-off-by: William Wu <william.wu@rock-chips.com>
> devicetree binding documentation patches should include the devicetre=
e
> maintainers (scripts/get_maintainer.pl)
I'll add devicetree maintainers in next patch v5.
>
>> ---
>> Changes in v4:
>> - modify commit log, and add phy documentation location (Sergei)
>>
>> Changes in v3:
>> - add dwc3 address (balbi)
>>
>> Changes in v2:
>> - add rockchip,dwc3.txt to Documentation/devicetree/bindings/ (balbi=
,
> Brian)
>>   .../devicetree/bindings/usb/rockchip,dwc3.txt      | 46
>> ++++++++++++++++++++++ 1 file changed, 46 insertions(+)
>>   create mode 100644
> Documentation/devicetree/bindings/usb/rockchip,dwc3.txt
>> diff --git a/Documentation/devicetree/bindings/usb/rockchip,dwc3.txt
>> b/Documentation/devicetree/bindings/usb/rockchip,dwc3.txt new file m=
ode
>> 100644
>> index 0000000..0edf013
>> --- /dev/null
>> +++ b/Documentation/devicetree/bindings/usb/rockchip,dwc3.txt
>> @@ -0,0 +1,46 @@
>> +Rockchip SuperSpeed DWC3 USB SoC controller
>> +
>> +Required properties:
>> +- compatible:	should contain "rockchip,dwc3"
> are you sure this will work for all future socs in the same way? I gu=
ess
> doing this as rockchip,rk3399-dwc3 might make our lifes easier down t=
he road
> :-) [both the xilinx and st dwc3 bindings do already that]
I'm not sure that whether our future socs dwc3 will work well in the=20
same way.
So I think "rockchip,rk3399-dwc3" is more appropriate.
Thanks very much for your suggestion.
>
>> +- clocks:		A list of phandle + clock-specifier pairs for the
>> +				clocks listed in clock-names
>> +- clock-names:	Should contain the following:
>> +  "clk_usb3otg0_ref"	Controller reference clk
>> +  "clk_usb3otg0_suspend"Controller suspend clk, can use 24 MHz or 3=
2 KHz
>> +  "aclk_usb3"		Master/Core clock, have to be >=3D 62.5 MHz for SS
> operation
>
> clock names should always be in the scope of the device block (named =
after
> what it supplies). And looking at the dwc3-xilinx.txt binding, I'd su=
ggest
> getting inspiration from their clock names (bus_clk, ref_clk, suspend=
_clk or
> so)
I'll fix the clock names next patch v5.
>
>> +Optional clocks:
>> +  "aclk_usb3otg0"	Aclk for specific usb controller clock.
>> +  "aclk_usb3_rksoc_axi_perf"  USB AXI perf clock.  Not present on a=
ll
>> platforms.
> The clock names looks pretty strange. What are they for? Especially a=
s
> nothing seems to use them right now.

"aclk_usb3_rksoc_axi_perf", it's the clk for usb3 performance monitor m=
odule,
you can refer to the GRF_USB3_PERF_xxx. And we don't use the usb3 perfo=
rmance
monitor control registers right now.

>
>
>> +  "aclk_usb3_grf"	USB grf clock.  Not present on all platforms.
> for my own education, which part of the GRF does this clock supply?

"aclk_usb3_grf", it's the clk for USB3 grf, e.g. GRF_USB3OTGX_CONX

>
>
>> +
>> +Required child node:
>> +A child node must exist to represent the core DWC3 IP block. The na=
me of
>> +the node is not important. The content of the node is defined in dw=
c3.txt.
>> +
>> +Phy documentation is provided in the following places:
>> +Documentation/devicetree/bindings/phy/rockchip,dwc3-usb-phy.txt
>> +
>> +Example device nodes:
>> +
>> +	usbdrd3_0: usb@fe800000 {
>> +		compatible =3D "rockchip,dwc3";
>> +		clocks =3D <&cru SCLK_USB3OTG0_REF>, <&cru SCLK_USB3OTG0_SUSPEND>=
,
>> +			 <&cru ACLK_USB3>, <&cru ACLK_USB3OTG0>,
>> +			 <&cru ACLK_USB3_RKSOC_AXI_PERF>, <&cru ACLK_USB3_GRF>;
>> +		clock-names =3D "clk_usb3otg0_ref", "clk_usb3otg0_suspend",
>> +			      "aclk_usb3", "aclk_usb3otg0",
>> +			      "aclk_usb3_rksoc_axi_perf", "aclk_usb3_grf";
>> +		#address-cells =3D <2>;
>> +		#size-cells =3D <2>;
>> +		ranges;
>> +		status =3D "disabled";
>> +		usbdrd_dwc3_0: dwc3@fe800000 {
>> +			compatible =3D "snps,dwc3";
>> +			reg =3D <0x0 0xfe800000 0x0 0x100000>;
>> +			interrupts =3D <GIC_SPI 105 IRQ_TYPE_LEVEL_HIGH>;
>> +			dr_mode =3D "otg";
>> +			status =3D "disabled";
>> +		};
>> +	};
>
>
