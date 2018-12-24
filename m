From: Katsuhiro Suzuki <katsuhiro@katsuster.net>
Subject: Re: [PATCH] arm64: dts: rockchip: enable analog audio node for rock64
Date: Mon, 24 Dec 2018 21:58:51 +0900
Message-ID: <df1c3cb9-5661-724d-4443-5b19930f4348@katsuster.net>
References: <20181223101026.12998-1-katsuhiro@katsuster.net>
 <16987084.rf60fZEaYD@phil>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <16987084.rf60fZEaYD@phil>
Content-Language: en-US
Sender: linux-kernel-owner@vger.kernel.org
To: Heiko Stuebner <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

Hello Heiko,

I understand. Thanks a lot!

Best Regards,
Katsuhiro Suzuki

On 2018/12/24 16:16, Heiko Stuebner wrote:
> Hi,
> 
> Am Sonntag, 23. Dezember 2018, 11:10:26 CET schrieb Katsuhiro Suzuki:
>> The Rock64 boards has analog audio jack on it. RK3328 can output
>> analog audio signal using I2S1 and ACODEC core.
>>
>> This patch adds sound node for analog audio for Rock64.
>>
>> Signed-off-by: Katsuhiro Suzuki <katsuhiro@katsuster.net>
> 
> I've put a patch collecting the sound-dai-cells in rk3328.dtsi
> before this one, dropped the sound-dai-cells from here and
> applied the patch for 4.22.
> 
> Thanks
> Heiko
> 
> 
> 
