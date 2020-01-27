From: Rob Herring <robh-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>
Subject: Re: [PATCH v4, 1/1] arm64: dts: rockchip: add ROCK Pi S DTS support
Date: Mon, 27 Jan 2020 09:36:47 -0600
Message-ID: <20200127153647.GA32343@bogus>
References: <20200125063153.2720-1-akash@openedev.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Return-path: <devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <20200125063153.2720-1-akash-oRp2ZoJdM/RWk0Htik3J/w@public.gmane.org>
Sender: devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
Cc: heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org, jagan-oRp2ZoJdM/RWk0Htik3J/w@public.gmane.org, Akash Gajjar <akash-oRp2ZoJdM/RWk0Htik3J/w@public.gmane.org>, Mark Rutland <mark.rutland-5wv7dgnIgG8@public.gmane.org>, Douglas Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, Andy Yan <andy.yan-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, Alexis Ballier <aballier-aBrp7R+bbdUdnm+yROfE0A@public.gmane.org>, Matthias Kaehlcke <mka-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, Nick Xie <nick-XW3xCAIBE2TQT0dZR+AlfA@public.gmane.org>, Kever Yang <kever.yang-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, Markus Reichl <m.reichl-SRyzfwRm/0rPTwkrwQOX7A@public.gmane.org>, Vivek Unune <npcomplete13-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Robin Murphy <robin.murphy-5wv7dgnIgG8@public.gmane.org>, Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>, devicetree-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

On Sat, 25 Jan 2020 12:01:37 +0530, Akash Gajjar wrote:
> ROCK Pi S is RK3308 based SBC from radxa.com. ROCK Pi S has a,
> - 256MB/512MB DDR3 RAM
> - SD, NAND flash (optional on board 1/2/4/8Gb)
> - 100MB ethernet, PoE (optional)
> - Onboard 802.11 b/g/n wifi + Bluetooth 4.0 Module
> - USB2.0 Type-A HOST x1
> - USB3.0 Type-C OTG x1
> - 26-pin expansion header
> - USB Type-C DC 5V Power Supply
> 
> This patch enables
> - Console
> - NAND Flash
> - SD Card
> 
> Signed-off-by: Akash Gajjar <akash-oRp2ZoJdM/RWk0Htik3J/w@public.gmane.org>
> ---
> Changes in v4
> - remove supports-sd/sdio, nums-slots property
> - use vmmc-supply for emmc node
> 
> Changes in v3
> - Use small S on dts file name
> - Add missing semicolon
> - Remove USB2.0 node support
> 
> Changes in v2
> - Use pwm-supply for vdd_core node instead of vi-supply
> - Add USB2.0 node support
>  
>  .../devicetree/bindings/arm/rockchip.yaml     |   5 +
>  arch/arm64/boot/dts/rockchip/Makefile         |   1 +
>  .../boot/dts/rockchip/rk3308-rock-pi-s.dts    | 216 ++++++++++++++++++
>  3 files changed, 222 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/rockchip/rk3308-rock-pi-s.dts
> 

Please add Acked-by/Reviewed-by tags when posting new versions. However,
there's no need to repost patches *only* to add the tags. The upstream
maintainer will do that for acks received on the version they apply.

If a tag was not added on purpose, please state why and what changed.
