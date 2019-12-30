From: Robin Murphy <robin.murphy@arm.com>
Subject: Re: [PATCH] arm64: dts: rockchip: Add RK3328 GPU OPPs
Date: Mon, 30 Dec 2019 01:14:30 +0000
Message-ID: <3c95c29b-6c07-5945-ac22-d683997e1ca0@arm.com>
References: <48607c137d46452291510e88d5891e705dc7993c.1577650403.git.robin.murphy@arm.com>
 <HE1PR06MB4011483BC5EF6C87066983CCAC270@HE1PR06MB4011.eurprd06.prod.outlook.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Content-Transfer-Encoding: 7bit
Return-path: <linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org>
In-Reply-To: <HE1PR06MB4011483BC5EF6C87066983CCAC270@HE1PR06MB4011.eurprd06.prod.outlook.com>
Content-Language: en-GB
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org
To: Jonas Karlman <jonas@kwiboo.se>, "heiko@sntech.de" <heiko@sntech.de>
Cc: "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>, "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
List-Id: linux-rockchip.vger.kernel.org

On 2019-12-30 12:09 am, Jonas Karlman wrote:
> On 2019-12-29 21:14, Robin Murphy wrote:
>> Add OPPs for the GPU, derived from the downstream Beelink A1 DTB.
> 
> My RK3328 devices (rock64, roc-cc and other android tv boxes) used to become
> unstable when I used similar OPPs as these and vdd_logic got changed to anything
> below 1.05v some time ago, network speeds slowed down and devices usually
> become unresponsive.
> 
> I do use vendor ddr init blobs to run ddr at 786 or 933 MHz, gpu runs at 500 Mhz
> and rock64/roc-cc LDO3 is set to use 1.0v instead of 1.1v used in A1 dts,
> in case that could be affecting the stability at lower vdd_logic voltages.
> 
> These observations was a few months back so I will redo some tests and see if I
> still get unstable systems using anything below default 1.1v for vdd_logic.

Indeed, as noted on the lima devfreq thread it turns out voltage scaling 
wasn't actually happening, so things weren't as thoroughly exercised as 
I might have thought. I do note that downstream appears to have DRAM 
DVFS also operating on the VDD_LOGIC domain (not to mention the video 
decoder), so it's quite possible that in lieu of that we might need to 
forcibly limit the minimum voltage as a compromise.

Thanks,
Robin.

> 
> Best regards,
> Jonas
> 
>>
>> Signed-off-by: Robin Murphy <robin.murphy@arm.com>
>> ---
>>   arch/arm64/boot/dts/rockchip/rk3328.dtsi | 22 ++++++++++++++++++++++
>>   1 file changed, 22 insertions(+)
>>
>> diff --git a/arch/arm64/boot/dts/rockchip/rk3328.dtsi b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
>> index 91306ebed4da..e1b1b4551a8b 100644
>> --- a/arch/arm64/boot/dts/rockchip/rk3328.dtsi
>> +++ b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
>> @@ -605,6 +605,28 @@
>>   		clocks = <&cru ACLK_GPU>, <&cru ACLK_GPU>;
>>   		clock-names = "bus", "core";
>>   		resets = <&cru SRST_GPU_A>;
>> +		operating-points-v2 = <&gpu_opp_table>;
>> +	};
>> +
>> +	gpu_opp_table: opp_table1 {
>> +		compatible = "operating-points-v2";
>> +
>> +		opp-200000000 {
>> +			opp-hz = /bits/ 64 <200000000>;
>> +			opp-microvolt = <900000>;
>> +		};
>> +		opp-300000000 {
>> +			opp-hz = /bits/ 64 <300000000>;
>> +			opp-microvolt = <950000>;
>> +		};
>> +		opp-400000000 {
>> +			opp-hz = /bits/ 64 <400000000>;
>> +			opp-microvolt = <1025000>;
>> +		};
>> +		opp-500000000 {
>> +			opp-hz = /bits/ 64 <500000000>;
>> +			opp-microvolt = <1125000>;
>> +		};
>>   	};
>>   
>>   	h265e_mmu: iommu@ff330200 {
> 
