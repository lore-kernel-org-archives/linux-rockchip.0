From: Robin Murphy <robin.murphy@arm.com>
Subject: Re: [PATCH v2] arm64: dts: rockchip: add rk3399 UART DMAs
Date: Fri, 29 Mar 2019 23:24:16 +0000
Message-ID: <69d5d0fd-00c3-36ae-596e-1b9f9452a07a@arm.com>
References: <20190321162244.10080-1-katsuhiro@katsuster.net>
 <f2d0a95f-33c0-cdeb-80e3-0cd04bd0871d@arm.com>
 <e7bcf8b9-123e-eb30-f47d-7f8855f30ccb@katsuster.net>
 <14265087.Gbs4YZABJo@phil>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <14265087.Gbs4YZABJo@phil>
Content-Language: en-GB
Sender: linux-kernel-owner@vger.kernel.org
To: Heiko Stuebner <heiko@sntech.de>, Katsuhiro Suzuki <katsuhiro@katsuster.net>
Cc: linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

On 2019-03-27 12:00 pm, Heiko Stuebner wrote:
> Hi,
> 
> Am Dienstag, 26. März 2019, 14:49:16 CET schrieb Katsuhiro Suzuki:
>> Hello Robin,
>>
>> Sorry for inconvenience. Since I don't adhere enabling DMA for UARTs,
>> please revert my patch if you need.
> 
> I've dropped the patch from my queue now.
> 
>> BTW, there are DMA properties in RK3328 device-tree like as this patch.
>> RK3328 UART DMA could not work correctly too...??
> 
> I remember Rockcihip dma-controllers having issues with burst-sizes
> and flushing (there is a no-flushp option in pl330), so it's
> possible that all share the same error up to rk3399 and rk3328
> 
> But so far no-one has shouted regarding the rk3328.

Let me be the first, then, I guess :)

I found an easy way to observe the problem on my 3399, and I've just 
fired up my 3328 box with a 5.0 distro kernel to find that it behaves 
the same. Basically just dump a large pile of text into 'less' on the 
serial console, and scroll through line-by-line - certain lines get 
dropped except for a few characters at the end.

I'll see if I can narrow it down a bit, starting with trying 
broken-flushp...

Robin.
