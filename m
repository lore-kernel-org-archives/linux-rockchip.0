From: Johan Jonker <jbx6244@gmail.com>
Subject: Re: [RFC PATCH] arm64: dts: rockchip: fix dmas dma-names for rk3308
 i2s node
Date: Thu, 21 May 2020 14:28:59 +0200
Message-ID: <094fa89d-61f7-1eb4-be78-b430502c5d3e@gmail.com>
References: <20200520064816.3954-1-jbx6244@gmail.com>
 <543270ad-dd11-2bd4-8959-e898834c19e5@arm.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <543270ad-dd11-2bd4-8959-e898834c19e5@arm.com>
Content-Language: en-US
Sender: linux-kernel-owner@vger.kernel.org
To: Robin Murphy <robin.murphy@arm.com>, heiko@sntech.de
Cc: devicetree@vger.kernel.org, robh+dt@kernel.org, linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, kever.yang@rock-chips.com, wxt@rock-chips.com
List-Id: linux-rockchip.vger.kernel.org

Hi Robin, Kever, Caesar,

On 5/21/20 1:48 PM, Robin Murphy wrote:
> On 2020-05-20 07:48, Johan Jonker wrote:
>> One of the current rk3308 'i2s' nodes has a different dma layout
>> with only 1 item. Table 9-2 DMAC1 Request Mapping Table shows that
>> there 2 dma sources available, so fix the dmas and dma-names
>> for the rk3308 'i2s' node.
>>
>> 10 I2S/PCM_2CH_1 tx High level
>> 11 I2S/PCM_2CH_1 rx High level
> 
> ...however table 1-5 in the same manual (at least that I could find)
> says request 10 is reserved. Does that mean it was intended to be wired
> up for this, but ended up broken for some reason?
> 
> Do you have hardware to confirm whether this works reliably or not?

No, I don't.
A description for 3308 was added to rockchip-i2s.yaml with only rx by
myself.
It would be nice if someone could test, confirm or give a hint.

Could someone from Rockchip(Kever, Caesar) explain the 'Reserved' in
Table 1-5 ?

Table 1-5 RK3308 DMAC1 hardware request connection list

10 Reserved     High level
11 I2S_2CH_1 rx High level

> 
> Robin.
> 
>> Signed-off-by: Johan Jonker <jbx6244@gmail.com>
>> ---
>>   arch/arm64/boot/dts/rockchip/rk3308.dtsi | 4 ++--
>>   1 file changed, 2 insertions(+), 2 deletions(-)
>>
>> diff --git a/arch/arm64/boot/dts/rockchip/rk3308.dtsi
>> b/arch/arm64/boot/dts/rockchip/rk3308.dtsi
>> index ac7f69407..79c1dd1fe 100644
>> --- a/arch/arm64/boot/dts/rockchip/rk3308.dtsi
>> +++ b/arch/arm64/boot/dts/rockchip/rk3308.dtsi
>> @@ -564,8 +564,8 @@
>>           interrupts = <GIC_SPI 53 IRQ_TYPE_LEVEL_HIGH>;
>>           clocks = <&cru SCLK_I2S1_2CH>, <&cru HCLK_I2S1_2CH>;
>>           clock-names = "i2s_clk", "i2s_hclk";
>> -        dmas = <&dmac1 11>;
>> -        dma-names = "rx";
>> +        dmas = <&dmac1 10>, <&dmac1 11>;
>> +        dma-names = "tx", "rx";
>>           resets = <&cru SRST_I2S1_2CH_M>, <&cru SRST_I2S1_2CH_H>;
>>           reset-names = "reset-m", "reset-h";
>>           status = "disabled";
>>
