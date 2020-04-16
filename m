From: Johan Jonker <jbx6244-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [PATCH 2/4] arm64: dts: rockchip: Add RGA support to the PX30
Date: Thu, 16 Apr 2020 16:02:38 +0200
Message-ID: <f97d7661-834d-3fbf-2cd9-0b37c487e8f7@gmail.com>
References: <20200416115047.233720-1-paul.kocialkowski@bootlin.com>
 <20200416115047.233720-3-paul.kocialkowski@bootlin.com>
 <478f0a8b-f819-62f4-83b8-27918c4c2431@gmail.com>
 <20200416132442.GI125838@aptenodytes>
 <f4ad8ea4-7904-1458-e564-2d20c87ed417@gmail.com>
 <20200416135519.GJ125838@aptenodytes>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane-mx.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <20200416135519.GJ125838@aptenodytes>
Content-Language: en-US
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane-mx.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Paul Kocialkowski <paul.kocialkowski-LDxbnhwyfcJBDgjK7y7TUQ@public.gmane.org>
Cc: Mark Rutland <mark.rutland-5wv7dgnIgG8@public.gmane.org>, devicetree-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, Rob Herring <robh+dt-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>, Hans Verkuil <hansverk-FYB4Gu1CFyUAvxtiuMwx3w@public.gmane.org>, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, Jacob Chen <jacob-chen-fyOeoxGR3m/QT0dZR+AlfA@public.gmane.org>, Thomas Petazzoni <thomas.petazzoni-LDxbnhwyfcJBDgjK7y7TUQ@public.gmane.org>, Mauro Carvalho Chehab <mchehab-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>, Ezequiel Garcia <ezequiel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-media-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

On 4/16/20 3:55 PM, Paul Kocialkowski wrote:
> Hi,
> 
> On Thu 16 Apr 20, 15:44, Johan Jonker wrote:
>> On 4/16/20 3:24 PM, Paul Kocialkowski wrote:
>>> Hi,
>>>
>>> On Thu 16 Apr 20, 15:02, Johan Jonker wrote:
>>>> Hi Paul,
>>>>
>>>> The conversion of rockchip-rga.txt to rockchip-rga.yaml by myself just
>>>> has been approved by robh.
>>>
>>> Huh, I looked around for ongoing related work but missed it.
>>> I'll definitely rebase on top of your series and use the yaml description
>>> instead. Thanks!
>>>
>>>> Maybe place dts patches at the end of a patch serie.
>>>> Could you include a &rga patch if your device is supported in mainline,
>>>> so we can test with:
>>>> make ARCH=arm64 dtbs_check
>>>> DT_SCHEMA_FILES=Documentation/devicetree/bindings/media/rockchip-rga.yaml
>>>
>>> I tested with the PX30 EVB so I can surely add a node there if that turns
>>> out necessary (see below).
>>>
>>>> Johan
>>>>
>>>> On 4/16/20 1:50 PM, Paul Kocialkowski wrote:
>>>>> The PX30 features a RGA block: add the necessary node to support it.
>>>>>
>>>>> Signed-off-by: Paul Kocialkowski <paul.kocialkowski-LDxbnhwyfcJBDgjK7y7TUQ@public.gmane.org>
>>>>> ---
>>>>>  arch/arm64/boot/dts/rockchip/px30.dtsi | 11 +++++++++++
>>>>>  1 file changed, 11 insertions(+)
>>>>>
>>>>> diff --git a/arch/arm64/boot/dts/rockchip/px30.dtsi b/arch/arm64/boot/dts/rockchip/px30.dtsi
>>>>> index 75908c587511..4bfbee9d4123 100644
>>>>> --- a/arch/arm64/boot/dts/rockchip/px30.dtsi
>>>>> +++ b/arch/arm64/boot/dts/rockchip/px30.dtsi
>>>>> @@ -1104,6 +1104,17 @@ vopl_mmu: iommu@ff470f00 {
>>>>>  		status = "disabled";
>>>>>  	};
>>>>>  
>>>>> +	rga: rga@ff480000 {
>>>>> +		compatible = "rockchip,px30-rga";
>>>>> +		reg = <0x0 0xff480000 0x0 0x10000>;
>>>>> +		interrupts = <GIC_SPI 76 IRQ_TYPE_LEVEL_HIGH 0>;
>>>>> +		clocks = <&cru ACLK_RGA>, <&cru HCLK_RGA>, <&cru SCLK_RGA_CORE>;
>>>>> +		clock-names = "aclk", "hclk", "sclk";
>>>>> +		resets = <&cru SRST_RGA>, <&cru SRST_RGA_A>, <&cru SRST_RGA_H>;
>>>>> +		reset-names = "core", "axi", "ahb";
>>>>> +		power-domains = <&power PX30_PD_VO>;
>>>>
>>>> 		status = "disabled";
>>>
>>> As of 5.6, the rk3399 has the node enabled by default. Did that change?
>>
>> 'status' disappeared during review for rk3399 between v2 and v3, but
>> doesn't mention the reason. If someone can give more info here?
>>
>> https://lore.kernel.org/lkml/1500101920-24039-5-git-send-email-jacob-chen-fyOeoxGR3m/QT0dZR+AlfA@public.gmane.org/
>>
>> https://lore.kernel.org/lkml/1501470460-12014-5-git-send-email-jacob-chen-fyOeoxGR3m/QT0dZR+AlfA@public.gmane.org/
>>
>>>
>>> Since it's a standalone block that has no I/O dependency, I don't really see
>>> the point of disabling it by default.
>>
>> Vop, hdmi and other video devices are also disabled.
>> Follow the rest I think...
> 
> Well, these blocks do have related I/O ports so it makes sense not to enable
> them by default because of pinmux, or because there might be no connector
> populated/routed.
> 
> For a memory to memory internal block, I don't see any reason why.
> It's definitely not board-specific and having to add these nodes for every board
> that has them is kind of a pain and might be overlooked. This will easily result
> in the feature not being available for end users without having to change the
> dt.
> 
> Also, the vpu node is always enabled on rockchip (and sunxi) platforms.
> I think these are better examples to follow.

From PX30 TRM-Part1:

Power domain is shared by vop and dsi.
It's up to the user what blocks he/she enables and what power it uses.

PD_VO: VOP_M, VOP_S, RGA and DSI

> 
> Cheers,
> 
> Paul
> 
>>>
>>> What do you think?
>>>
>>> Cheers,
>>>
>>> Paul
>>>
>>>>> +	};
>>>>> +
>>>>>  	qos_gmac: qos@ff518000 {
>>>>>  		compatible = "syscon";
>>>>>  		reg = <0x0 0xff518000 0x0 0x20>;
>>>>>
>>>>
>>>
>>
> 
