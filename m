From: Jakob Unterwurzacher <jakob.unterwurzacher@theobroma-systems.com>
Subject: [regression, bisected] rockchip rk3399 video output breakage
Date: Tue, 24 Apr 2018 14:19:47 +0200
Message-ID: <3beabd18-0c39-be65-cfe7-8498dc7c296b@theobroma-systems.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner@vger.kernel.org>
Content-Language: en-US
Sender: linux-kernel-owner@vger.kernel.org
To: linux-kernel@vger.kernel.org, Jeffy Chen <jeffy.chen@rock-chips.com>, Joerg Roedel <jroedel@suse.de>, linux-rockchip@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

I am working on getting HDMI output enabled in mainline Linux for our 
RK3399-Q7 module. It works fine on v4.16, but testing with v4.17-rc2 I 
get this, and the screen stays black:

> [    7.142712] alloc_contig_range: [7f061, 7f062) PFNs busy
> [    7.148862] alloc_contig_range: [7f066, 7f067) PFNs busy
> [    7.155041] alloc_contig_range: [7f067, 7f068) PFNs busy
> [    7.161139] alloc_contig_range: [7f070, 7f071) PFNs busy
> [    7.167295] alloc_contig_range: [7f071, 7f072) PFNs busy
> [    7.173413] alloc_contig_range: [7f072, 7f073) PFNs busy
> [    7.181387] alloc_contig_range: [7f073, 7f074) PFNs busy
> [    7.190623] alloc_contig_range: [7f074, 7f075) PFNs busy
> [    7.196668] alloc_contig_range: [7f075, 7f076) PFNs busy
> [    7.202793] alloc_contig_range: [7f076, 7f077) PFNs busy
> [    7.254911] hub 7-1:1.0: USB hub found
> [    7.259878] hub 7-1:1.0: 4 ports detected
> [    7.322543] rockchip-drm display-subsystem: master bind failed: -12
> [    7.329619] rockchip-vop: probe of ff900000.vop failed with error -12

Full dmesg: 
https://gist.github.com/jakob-tsd/33cf395e355bf9bb6956c36438d999e7

I have bisected the "master bind failed" down to:

> commit 9176a303d971dc0fb35469c531c0d263667d2277
> Author: Jeffy Chen <jeffy.chen@rock-chips.com>
> Date:   Fri Mar 23 15:38:10 2018 +0800
> 
>     iommu/rockchip: Use IOMMU device for dma mapping operations
> 
>     Use the first registered IOMMU device for dma mapping operations, and
>     drop the domain platform device.
> 
>     This is similar to exynos iommu driver.
> 
>     Signed-off-by: Jeffy Chen <jeffy.chen@rock-chips.com>
>     Reviewed-by: Tomasz Figa <tfiga@chromium.org>
>     Reviewed-by: Robin Murphy <robin.murphy@arm.com>
>     Signed-off-by: Joerg Roedel <jroedel@suse.de>

Moving to one commit earlier brings the screen to life. Just with 
colorful garbage, but I guess that's a different problem.

Is this a known issue with the IOMMU change?

Thanks,
Jakob
