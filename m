From: Katsuhiro Suzuki <katsuhiro@katsuster.net>
Subject: Re: [PATCH] arm64: dts: rockchip: add HDMI sound node for
 rk3328-rock64
Date: Mon, 4 Feb 2019 21:59:37 +0900
Message-ID: <c4ce7f7a-c791-ae0a-ad3d-02b2efa41709@katsuster.net>
References: <20190202043444.9308-1-katsuhiro@katsuster.net>
 <1970132.3b67tCGWFf@phil>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <1970132.3b67tCGWFf@phil>
Content-Language: en-US
Sender: linux-kernel-owner@vger.kernel.org
To: Heiko Stuebner <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

Hello Heiko,

On 2019/02/03 18:06, Heiko Stuebner wrote:
> Am Samstag, 2. Februar 2019, 05:34:44 CET schrieb Katsuhiro Suzuki:
>> This patch adds HDMI sound (I2S0) node and remove dma properties
>> from UART2 node for rock64.
>>
>> The DMAC of rk3328 can use 8 channels at same time. Currently, total
>> 7 channels are used as follows:
>>    - I2S1  2ch
>>    - UART2 2ch
>>    - SPDIF 1ch
>>    - SPI0  2ch
>>
>> HDMI audio using I2S0 that requires 2ch but DMAC has only 1 channel.
>>
>> UART2 can work without DMA resources, so this patch removes dma
>> allocation for UART2 and reuses it to I2S0.
> 
> I don't follow that description. How can i2s0 re-use the uart2 dma channels?
> Looking at the dma table in the TRM, uart2 has channels 6+7 while i2s0
> uses channels 11+12. They should just run concurrently?
> 

Sorry for confusing... 6 or 7 is as ID number of slave DMA channel.
TRM calls it 'Req number'. Req number 6+7 and 11+12 can work
concurrently but TRM says DMAC can transfer 8 DMA channels at same
time. So all 16 Req numbers cannot activate at same time. It should
be keep less or equal than 8 numbers.

For details, DMAC of RK3328 is ARM PL330 (or compatible IP).
   - Local variable 'chan_id' of of_dma_pl330_xlate() is Req number.
     This is from Device-Tree info.
   - Array 'channels' of struct pl330_dmac is DMA channels of DMAC.
pl330_request_channel() allocate DMA channel that is requested from
other drivers. Local variable 'chans' has max channels can run
concurrently.

Current setting:
   channels  chan_id
   0         8
   1         9
   2         14
   3         15
   4         10
   5         6
   6         7
   7         (not used)

Best Regards,
Katsuhiro Suzuki


>>
>> Signed-off-by: Katsuhiro Suzuki <katsuhiro@katsuster.net>
>> ---
>>   .../arm64/boot/dts/rockchip/rk3328-rock64.dts | 24 ++++++++++++++++++-
>>   arch/arm64/boot/dts/rockchip/rk3328.dtsi      |  1 +
>>   2 files changed, 24 insertions(+), 1 deletion(-)
>>
>> diff --git a/arch/arm64/boot/dts/rockchip/rk3328-rock64.dts b/arch/arm64/boot/dts/rockchip/rk3328-rock64.dts
>> index 2157a528276b..e21645aa3fa5 100644
>> --- a/arch/arm64/boot/dts/rockchip/rk3328-rock64.dts
>> +++ b/arch/arm64/boot/dts/rockchip/rk3328-rock64.dts
>> @@ -68,7 +68,8 @@
>>   	sound {
>>   		compatible = "audio-graph-card";
>>   		label = "rockchip,rk3328";
>> -		dais = <&i2s1_p0
>> +		dais = <&i2s0_p0
>> +			&i2s1_p0
>>   			&spdif_p0>;
>>   	};
>>   
>> @@ -141,6 +142,12 @@
>>   
>>   &hdmi {
>>   	status = "okay";
>> +
>> +	port@0 {
>> +		hdmi_p0_0: endpoint {
>> +			remote-endpoint = <&i2s0_p0_0>;
>> +		};
>> +	};
>>   };
>>   
>>   &hdmiphy {
>> @@ -256,6 +263,18 @@
>>   	};
>>   };
>>   
>> +&i2s0 {
>> +	status = "okay";
>> +
>> +	i2s0_p0: port {
>> +		i2s0_p0_0: endpoint {
>> +			dai-format = "i2s";
>> +			mclk-fs = <256>;
>> +			remote-endpoint = <&hdmi_p0_0>;
>> +		};
>> +	};
>> +};
>> +
>>   &i2s1 {
>>   	status = "okay";
>>   
>> @@ -343,6 +362,9 @@
>>   
>>   &uart2 {
>>   	status = "okay";
>> +
>> +	/delete-property/ dmas;
>> +	/delete-property/ dma-names;
>>   };
>>   
>>   &u2phy {
>> diff --git a/arch/arm64/boot/dts/rockchip/rk3328.dtsi b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
>> index 84f14b132e8f..374b5da93a35 100644
>> --- a/arch/arm64/boot/dts/rockchip/rk3328.dtsi
>> +++ b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
>> @@ -665,6 +665,7 @@
>>   		pinctrl-names = "default";
>>   		pinctrl-0 = <&hdmi_cec &hdmii2c_xfer &hdmi_hpd>;
>>   		rockchip,grf = <&grf>;
>> +		#sound-dai-cells = <0>;
> 
> please make that a separate patch
> 
> 
> Heiko
> 
> 
> 
