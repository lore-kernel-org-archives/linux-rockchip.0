From: Katsuhiro Suzuki <katsuhiro@katsuster.net>
Subject: Re: [PATCH] arm64: dts: rockchip: decrease rising edge time of UART2
Date: Sun, 3 Mar 2019 23:03:29 +0900
Message-ID: <e722acb4-167f-8333-5c8a-b693815273f4@katsuster.net>
References: <20190303122705.27094-1-katsuhiro@katsuster.net>
 <1623469.Hy6pdcMFRX@phil>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <1623469.Hy6pdcMFRX@phil>
Content-Language: en-US
Sender: linux-kernel-owner@vger.kernel.org
To: Heiko Stuebner <heiko@sntech.de>, Akash Gajjar <Akash_Gajjar@mentor.com>, Brian Norris <briannorris@chromium.org>, Christoph Muellner <christoph.muellner@theobroma-systems.com>, Dmitry Torokhov <dmitry.torokhov@gmail.com>, Douglas Anderson <dianders@chromium.org>, Enric Balletbo i Serra <enric.balletbo@collabora.com>, Ezequiel Garcia <ezequiel@collabora.com>, Jakob Unterwurzacher <jakob.unterwurzacher@theobroma-systems.com>, Klaus Goger <klaus.goger@theobroma-systems.com>, Levin Du <djw@t-chip.com.cn>, Linus Walleij <linus.walleij@linaro.org>, Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>, Matthias Brugger <mbrugger@suse.com>, Oskari Lemmela <oskari@lemmela.net>, Robin Murphy <robin.murphy@arm.com>, Shawn Lin <shawn.lin@rock-chips.com>Sh
Cc: linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

Hello Heiko,

Thank you for comments.

On 2019/03/03 22:19, Heiko Stuebner wrote:
> Hi,
> 
> Am Sonntag, 3. März 2019, 13:27:05 CET schrieb Katsuhiro Suzuki:
>> This patch increases drive strength of UART2 from 3mA to 12mA for
>> getting more faster rising edge.
>>
>> RockPro64 is using a very high speed rate (1.5Mbps) for UART2. In
>> this setting, a bit width of UART is about 667ns.
>>
>> In my environment (RockPro64 UART2 with FTDI FT232RL UART-USB
>> converter), falling time of RockPro64 UART2 is 40ns, but riging time
>> is over 650ns. So UART receiver will get wrong data, because receiver
>> read intermediate data of rising edge.
>>
>> Rising time becomes 300ns from 650ns if apply this patch. This is not
>> perfect solution but better than now.
>>
>> Signed-off-by: Katsuhiro Suzuki <katsuhiro@katsuster.net>
>> ---
>>   arch/arm64/boot/dts/rockchip/rk3399.dtsi | 9 +++++++--
>>   1 file changed, 7 insertions(+), 2 deletions(-)
> 
> your changing a core rk3399 property here, so I'd really like to get
> input from other board stakeholders on this before applying a core
> change.
> 
> Could you either include the submitters of other rk3399-boards in the
> recipient list so that they're aware or limit the change to rockpro64 for
> the time being (aka overriding the property in the board-dts) please?
> 

OK, I'm adding other boards members.
by ./scripts/get_maintainer.pl arch/arm64/boot/dts/rockchip/rk3399-*.dts


RockPro64 directly connect UART2 pins of RK3399 to external connector.
I think maybe other RK3399 boards are facing same problem, but I cannot
check it because I have RockPro64 only...

I'm happy if someone tell me other boards situation.

Best Regards,
Katsuhiro Suzuki


> Thanks
> Heiko
> 
> 
> 
>> diff --git a/arch/arm64/boot/dts/rockchip/rk3399.dtsi b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
>> index beaa92744a64..e3c8f91ead50 100644
>> --- a/arch/arm64/boot/dts/rockchip/rk3399.dtsi
>> +++ b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
>> @@ -2000,6 +2000,11 @@
>>   			drive-strength = <8>;
>>   		};
>>   
>> +		pcfg_pull_up_12ma: pcfg-pull-up-12ma {
>> +			bias-pull-up;
>> +			drive-strength = <12>;
>> +		};
>> +
>>   		pcfg_pull_up_18ma: pcfg-pull-up-18ma {
>>   			bias-pull-up;
>>   			drive-strength = <18>;
>> @@ -2521,8 +2526,8 @@
>>   		uart2c {
>>   			uart2c_xfer: uart2c-xfer {
>>   				rockchip,pins =
>> -					<4 RK_PC3 RK_FUNC_1 &pcfg_pull_up>,
>> -					<4 RK_PC4 RK_FUNC_1 &pcfg_pull_none>;
>> +					<4 RK_PC3 RK_FUNC_1 &pcfg_pull_up_12ma>,
>> +					<4 RK_PC4 RK_FUNC_1 &pcfg_pull_none_12ma>;
>>   			};
>>   		};
>>   
>>
> 
> 
> 
> 
> 
> 
