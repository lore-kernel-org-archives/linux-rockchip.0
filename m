From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
Subject: Re: [PATCH] arm64: dts: rockchip: add HDMI sound node for rk3328-rock64
Date: Tue, 12 Feb 2019 12:12:57 +0100
Message-ID: <2275914.n7pQDzs7mT@diego>
References: <20190202043444.9308-1-katsuhiro@katsuster.net> <1970132.3b67tCGWFf@phil> <c4ce7f7a-c791-ae0a-ad3d-02b2efa41709@katsuster.net>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7Bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <c4ce7f7a-c791-ae0a-ad3d-02b2efa41709@katsuster.net>
Sender: linux-kernel-owner@vger.kernel.org
To: Katsuhiro Suzuki <katsuhiro@katsuster.net>
Cc: linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

Hi,

Am Montag, 4. Februar 2019, 13:59:37 CET schrieb Katsuhiro Suzuki:
> On 2019/02/03 18:06, Heiko Stuebner wrote:
> > Am Samstag, 2. Februar 2019, 05:34:44 CET schrieb Katsuhiro Suzuki:
> >> This patch adds HDMI sound (I2S0) node and remove dma properties
> >> from UART2 node for rock64.
> >> 
> >> The DMAC of rk3328 can use 8 channels at same time. Currently, total
> >> 
> >> 7 channels are used as follows:
> >>    - I2S1  2ch
> >>    - UART2 2ch
> >>    - SPDIF 1ch
> >>    - SPI0  2ch
> >> 
> >> HDMI audio using I2S0 that requires 2ch but DMAC has only 1 channel.
> >> 
> >> UART2 can work without DMA resources, so this patch removes dma
> >> allocation for UART2 and reuses it to I2S0.
> > 
> > I don't follow that description. How can i2s0 re-use the uart2 dma
> > channels? Looking at the dma table in the TRM, uart2 has channels 6+7
> > while i2s0 uses channels 11+12. They should just run concurrently?
> 
> Sorry for confusing... 6 or 7 is as ID number of slave DMA channel.
> TRM calls it 'Req number'. Req number 6+7 and 11+12 can work
> concurrently but TRM says DMAC can transfer 8 DMA channels at same
> time. So all 16 Req numbers cannot activate at same time. It should
> be keep less or equal than 8 numbers.

But that "shortcoming" of having more requests than channels is not
something specific to the pl330, instead most dma controllers have that
"problem", which seems to get solved by the virt-dma mechanism of
dmaengine - which pl330 doesn't use so far. (but see pl080 for example)

The devicetree only describes the hardware and is never meant as a
configuration space for kernel-code shortcomings.


Heiko
