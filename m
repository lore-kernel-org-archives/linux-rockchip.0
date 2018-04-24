From: JeffyChen <jeffy.chen@rock-chips.com>
Subject: Re: [regression, bisected] rockchip rk3399 video output breakage
Date: Tue, 24 Apr 2018 20:37:07 +0800
Message-ID: <5ADF24F3.6070106@rock-chips.com>
References: <3beabd18-0c39-be65-cfe7-8498dc7c296b@theobroma-systems.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <3beabd18-0c39-be65-cfe7-8498dc7c296b@theobroma-systems.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Jakob Unterwurzacher <jakob.unterwurzacher@theobroma-systems.com>, linux-kernel@vger.kernel.org, Joerg Roedel <jroedel@suse.de>, linux-rockchip@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

Hi Jakob,

Thanks for your message.

On 04/24/2018 08:19 PM, Jakob Unterwurzacher wrote:
>
> Full dmesg:
> https://gist.github.com/jakob-tsd/33cf395e355bf9bb6956c36438d999e7
>
> I have bisected the "master bind failed" down to:
>
>> commit 9176a303d971dc0fb35469c531c0d263667d2277
>> Author: Jeffy Chen <jeffy.chen@rock-chips.com>
>> Date:   Fri Mar 23 15:38:10 2018 +0800
>>
>>     iommu/rockchip: Use IOMMU device for dma mapping operations
>>
>>     Use the first registered IOMMU device for dma mapping operations, and
>>     drop the domain platform device.
>>
>>     This is similar to exynos iommu driver.
>>
>>     Signed-off-by: Jeffy Chen <jeffy.chen@rock-chips.com>
>>     Reviewed-by: Tomasz Figa <tfiga@chromium.org>
>>     Reviewed-by: Robin Murphy <robin.murphy@arm.com>
>>     Signed-off-by: Joerg Roedel <jroedel@suse.de>
>
> Moving to one commit earlier brings the screen to life. Just with
> colorful garbage, but I guess that's a different problem.
>
> Is this a known issue with the IOMMU change?

right, i think it's a known issue, as the iommu failed to get clks:
[    1.525153] rk_iommu ff8f3f00.iommu: Failed to get clk 'iface': -2
[    1.525316] rk_iommu: probe of ff8f3f00.iommu failed with error -2
[    1.525484] rk_iommu ff903f00.iommu: Failed to get clk 'iface': -2
[    1.525643] rk_iommu: probe of ff903f00.iommu failed with error -2


there's a followed patch to add those clks to the dtsi, and also a fix 
patch to make those clks optional(by heiko):

https://www.spinics.net/lists/arm-kernel/msg645696.html

http://lists.infradead.org/pipermail/linux-rockchip/2018-April/020349.html

>
> Thanks,
> Jakob
