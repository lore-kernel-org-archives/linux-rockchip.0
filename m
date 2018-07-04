From: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Subject: Re: [PATCH 0/4] arm64: dts: rockchip: add RK3399-Gru-Bob and prepare
 for Scarlet
Date: Wed, 04 Jul 2018 11:43:36 +0200
Message-ID: <6791706.GCJnhTN1Ea@phil>
References: <20180614113039.29117-1-heiko@sntech.de>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <20180614113039.29117-1-heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
Cc: briannorris-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org, dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, amstan-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

Am Donnerstag, 14. Juni 2018, 13:30:35 CEST schrieb Heiko Stuebner:
> So far the Gru series of ChromeOS devices has seen 3 public devices.
> Two clamshell devices with the already supported Kevin and Bob
> (aka Chromebook Flip C101PA), as well as one table-style device Scarlet.
> 
> So this series not only adds a devicetree file for Bob, but also prepares
> for Scarlets arrival, in that common properties of the clamshell-devices
> get moved into a rk3399-gru-chromebook.dtsi, similar to what we have on
> RK3288-Veyron, as Scarlet does some things a bit differently.
> 
> Scarlet itself needs a bit more time, as its display is connected via
> dual-dsi, where the patches are still pending.
> 
> 
> Heiko Stuebner (4):
>   arm64: dts: rockchip: move Chromebook-specific Gru-parts to a separate
>     file
>   arm64: dts: rockchip: add phandles to some nodes on rk3399-gru
>   arm64: dts: rockchip: move core edp from rk3399-kevin to shared
>     chromebook
>   arm64: dts: rockchip: add Google Bob

nobody complained for 3 weeks, so I've applied these 4 patches
for 4.19.
