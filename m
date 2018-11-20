From: Katsuhiro Suzuki <katsuhiro@katsuster.net>
Subject: Re: [PATCH] clk: rockchip: fix ID of 8ch clock of I2S1 for rk3328
Date: Tue, 20 Nov 2018 09:35:52 +0900
Message-ID: <c0f4e568-3941-3fae-a259-88661c4715f1@katsuster.net>
References: <20181118041802.11660-1-katsuhiro@katsuster.net>
 <12656761.yaB328pSP6@phil>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <12656761.yaB328pSP6@phil>
Content-Language: en-US
Sender: linux-kernel-owner@vger.kernel.org
To: Heiko Stuebner <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

Hello,

Thank you for applying my patch and sorry for mistake...

On 2018年11月19日 22:43, Heiko Stuebner wrote:
> Am Sonntag, 18. November 2018, 05:18:02 CET schrieb Katsuhiro Suzuki:
>> This patch fixes mistakes in HCLK_I2S1_8CH for running I2S1
>> successfully.
>>
>> Signed-off-by: Katsuhiro Suzuki <katsuhiro@katsuster.net>
>> ---
>>   include/dt-bindings/clock/rk3328-cru.h | 3 ++-
>>   1 file changed, 2 insertions(+), 1 deletion(-)
>>
>> diff --git a/include/dt-bindings/clock/rk3328-cru.h b/include/dt-bindings/clock/rk3328-cru.h
>> index a82a0109faff..bcaa4559ab1b 100644
>> --- a/include/dt-bindings/clock/rk3328-cru.h
>> +++ b/include/dt-bindings/clock/rk3328-cru.h
>> @@ -172,13 +172,14 @@
>>   #define PCLK_HDCP		232
>>   #define PCLK_DCF		233
>>   #define PCLK_SARADC		234
>> +#define PCLK_ACODECPHY		235
> 
> I've dropped this unrelated change and applied the
> real id fix from the rest of the patch for 4.21
> 
> 
> Thanks
> Heiko
> 
> 
> 

Best Regards,
---
Katsuhiro Suzuki
