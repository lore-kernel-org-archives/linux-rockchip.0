From: Robin Murphy <robin.murphy@arm.com>
Subject: Re: [PATCH v2] arm64: dts: rockchip: add rk3399 UART DMAs
Date: Thu, 11 Apr 2019 14:48:12 +0100
Message-ID: <8d164cfe-c345-aa45-aaf3-11983f9142e5@arm.com>
References: <20190321162244.10080-1-katsuhiro@katsuster.net>
 <14265087.Gbs4YZABJo@phil> <69d5d0fd-00c3-36ae-596e-1b9f9452a07a@arm.com>
 <2463729.IUJ8mRE5Ts@phil>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <2463729.IUJ8mRE5Ts@phil>
Content-Language: en-GB
Sender: linux-kernel-owner@vger.kernel.org
To: Heiko Stuebner <heiko@sntech.de>
Cc: Katsuhiro Suzuki <katsuhiro@katsuster.net>, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

On 11/04/2019 13:46, Heiko Stuebner wrote:
> Hi Robin,
> 
> Am Samstag, 30. März 2019, 00:24:16 CEST schrieb Robin Murphy:
>> On 2019-03-27 12:00 pm, Heiko Stuebner wrote:
>>> Hi,
>>>
>>> Am Dienstag, 26. März 2019, 14:49:16 CET schrieb Katsuhiro Suzuki:
>>>> Hello Robin,
>>>>
>>>> Sorry for inconvenience. Since I don't adhere enabling DMA for UARTs,
>>>> please revert my patch if you need.
>>>
>>> I've dropped the patch from my queue now.
>>>
>>>> BTW, there are DMA properties in RK3328 device-tree like as this patch.
>>>> RK3328 UART DMA could not work correctly too...??
>>>
>>> I remember Rockcihip dma-controllers having issues with burst-sizes
>>> and flushing (there is a no-flushp option in pl330), so it's
>>> possible that all share the same error up to rk3399 and rk3328
>>>
>>> But so far no-one has shouted regarding the rk3328.
>>
>> Let me be the first, then, I guess :)
>>
>> I found an easy way to observe the problem on my 3399, and I've just
>> fired up my 3328 box with a 5.0 distro kernel to find that it behaves
>> the same. Basically just dump a large pile of text into 'less' on the
>> serial console, and scroll through line-by-line - certain lines get
>> dropped except for a few characters at the end.
>>
>> I'll see if I can narrow it down a bit, starting with trying
>> broken-flushp...
> 
> did you manage to find time for that test you wanted to do?

Sadly not - I got somewhat distracted by the ethernet thing, and since 
then I've had too much else going on to follow up on any of my 'for fun' 
projects :(

If it helps, from a quick look based on what I can remember off-hand, 
Rockchip UARTs in general have probably been using DMA since 4.19 with 
d8095f94e195 ("dmaengine: add support for reporting pause and resume 
separately").

Robin.
