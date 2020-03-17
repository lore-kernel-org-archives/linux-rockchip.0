From: Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH] ARM: dts: rockchip: use DMA channels for UARTs for RK3288
Date: Tue, 17 Mar 2020 01:26:21 +0100
Message-ID: <2031112.Bdp2p14rd6@phil>
References: <20200315095115.10106-1-katsuhiro@katsuster.net>
Mime-Version: 1.0
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: 8BIT
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20200315095115.10106-1-katsuhiro@katsuster.net>
Sender: linux-kernel-owner@vger.kernel.org
To: Katsuhiro Suzuki <katsuhiro@katsuster.net>
Cc: linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

Am Sonntag, 15. März 2020, 10:51:15 CET schrieb Katsuhiro Suzuki:
> This patch enables to use DMAC for all UARTs that are connected to
> dmac_peri core for Rochchip RK3288.
> 
> Only uart2 is connected different DMAC (dmac_bus_s) so keep current
> settings on this patch.
> 
> Signed-off-by: Katsuhiro Suzuki <katsuhiro@katsuster.net>

applied for 5.7

Thanks
Heiko
