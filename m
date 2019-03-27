From: Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH v2] arm64: dts: rockchip: add rk3399 UART DMAs
Date: Wed, 27 Mar 2019 13:00:16 +0100
Message-ID: <14265087.Gbs4YZABJo@phil>
References: <20190321162244.10080-1-katsuhiro@katsuster.net> <f2d0a95f-33c0-cdeb-80e3-0cd04bd0871d@arm.com> <e7bcf8b9-123e-eb30-f47d-7f8855f30ccb@katsuster.net>
Mime-Version: 1.0
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: 8BIT
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <e7bcf8b9-123e-eb30-f47d-7f8855f30ccb@katsuster.net>
Sender: linux-kernel-owner@vger.kernel.org
To: Katsuhiro Suzuki <katsuhiro@katsuster.net>
Cc: Robin Murphy <robin.murphy@arm.com>, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

Hi,

Am Dienstag, 26. März 2019, 14:49:16 CET schrieb Katsuhiro Suzuki:
> Hello Robin,
> 
> Sorry for inconvenience. Since I don't adhere enabling DMA for UARTs,
> please revert my patch if you need.

I've dropped the patch from my queue now.

> BTW, there are DMA properties in RK3328 device-tree like as this patch.
> RK3328 UART DMA could not work correctly too...??

I remember Rockcihip dma-controllers having issues with burst-sizes
and flushing (there is a no-flushp option in pl330), so it's
possible that all share the same error up to rk3399 and rk3328

But so far no-one has shouted regarding the rk3328.


Heiko

> On 2019/03/26 20:48, Robin Murphy wrote:
> > On 25/03/2019 12:34, Heiko Stuebner wrote:
> >> Am Donnerstag, 21. März 2019, 17:22:44 CET schrieb Katsuhiro Suzuki:
> >>> Add UART dma channels as specified by the rk3399 TRM.
> >>>
> >>> Refer:
> >>> RK3399 TRM V1.4: Chapter 12 DMA Controller
> >>>
> >>> Signed-off-by: Katsuhiro Suzuki <katsuhiro@katsuster.net>
> >>
> >> applied for 5.2
> > 
> > As a heads-up, I did manage to try my board with this patch applied over 
> > the weekend, and it makes probing the bluetooth adapter fail with 
> > communication errors, so I'm not sure the 8250 and pl330 drivers are 
> > really cooperating well enough :(
> > 
> > Robin.
> > 
> 
> 
