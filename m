From: Rob Herring <robh@kernel.org>
Subject: Re: [PATCH V3, 1/1] arm64: dts: rockchip: add ROCK Pi S DTS support
Date: Fri, 3 Jan 2020 17:39:39 -0700
Message-ID: <20200104003939.GA15565@bogus>
References: <20191230145008.5899-1-akash@openedev.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Return-path: <linux-kernel-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <20191230145008.5899-1-akash@openedev.com>
Sender: linux-kernel-owner@vger.kernel.org
Cc: heiko@sntech.de, jagan@openedev.com, tom@radxa.com, Akash Gajjar <akash@openedev.com>, Mark Rutland <mark.rutland@arm.com>, Andy Yan <andy.yan@rock-chips.com>, Robin Murphy <robin.murphy@arm.com>, Douglas Anderson <dianders@chromium.org>, Vivek Unune <npcomplete13@gmail.com>, Matthias Kaehlcke <mka@chromium.org>, Kever Yang <kever.yang@rock-chips.com>, Markus Reichl <m.reichl@fivetechno.de>, Jagan Teki <jagan@amarulasolutions.com>, Nick Xie <nick@khadas.com>, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

On Mon, 30 Dec 2019 20:19:32 +0530, Akash Gajjar wrote:
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
> Signed-off-by: Akash Gajjar <akash@openedev.com>
> ---
> Changes for v2
> - Use pwm-supply for vdd_core node instead of vi-supply
> - Add USB2.0 node support
>  
> Changes for v3
> - Use small S on dts file name
> - Add missing semicolon
> - Remove USB2.0 node support
> 
>  .../devicetree/bindings/arm/rockchip.yaml     |   5 +
>  arch/arm64/boot/dts/rockchip/Makefile         |   1 +
>  .../boot/dts/rockchip/rk3308-rock-pi-s.dts    | 221 ++++++++++++++++++
>  3 files changed, 227 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/rockchip/rk3308-rock-pi-s.dts
> 

Reviewed-by: Rob Herring <robh@kernel.org>
