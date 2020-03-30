From: Mark Kettenis <mark.kettenis@xs4all.nl>
Subject: Re: [PATCH v2 1/4] arm64: dts: rk3399-u-boot: Delete vop
 assigned-clocks/rates
Date: Mon, 30 Mar 2020 21:36:17 +0200 (CEST)
Message-ID: <016151d6786a0ea4@bloch.sibelius.xs4all.nl>
References: <20200330181613.29462-1-jagan@amarulasolutions.com>
 <20200330181613.29462-2-jagan@amarulasolutions.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Return-path: <u-boot-bounces@lists.denx.de>
In-reply-to: <20200330181613.29462-2-jagan@amarulasolutions.com> (message from
 Jagan Teki on Mon, 30 Mar 2020 23:46:10 +0530)
List-Unsubscribe: <https://lists.denx.de/options/u-boot>,
 <mailto:u-boot-request@lists.denx.de?subject=unsubscribe>
List-Archive: <https://lists.denx.de/pipermail/u-boot/>
List-Post: <mailto:u-boot@lists.denx.de>
List-Help: <mailto:u-boot-request@lists.denx.de?subject=help>
List-Subscribe: <https://lists.denx.de/listinfo/u-boot>,
 <mailto:u-boot-request@lists.denx.de?subject=subscribe>
Errors-To: u-boot-bounces@lists.denx.de
Sender: "U-Boot" <u-boot-bounces@lists.denx.de>
Cc: kever.yang@rock-chips.com, sjg@chromium.org, philipp.tomsich@theobroma-systems.com, agust@denx.de, sunil@amarulasolutions.com, u-boot@lists.denx.de, linux-rockchip@lists.infradead.org, linux-amarula@amarulasolutions.com, jagan@amarulasolutions.com
List-Id: linux-rockchip.vger.kernel.org

> From: Jagan Teki <jagan@amarulasolutions.com>
> Cc: sunil@amarulasolutions.com, u-boot@lists.denx.de,
>         linux-rockchip@lists.infradead.org, linux-amarula@amarulasolutions.com,
>         Jagan Teki <jagan@amarulasolutions.com>
> Date: Mon, 30 Mar 2020 23:46:10 +0530
> Content-Type: text/plain; charset=UTF-8
> 
> Linux supporting assigned-clocks for VOP on rk3399 by assuming
> U-Boot not initializing it on this linux commit:
> 
> commit <617f4472bdd3> ("arm64: dts: rockchip: init rk3399 vop clock rates")
> 
> There is no specific need to initialize these assigned clock
> in U-Boot as video drivers still work with default aclk and  
> hclk values. So, these clocks are simply not supported by rk3399
> clock driver.
> 
> But, during stdio probe of vidconsole, the device probe
> will try to check whether the assigned clocks on that video
> console node is initialized or not? and return error if not.
> 
> So, delete these property via -u-boot dtsi as there is
> no specific need in U-Boot.

Deleting these properties isn't very helpful as it means the U-Boot
device tree can no longer be used by the kernel.  Isn't it a better
idea to implement these clocks as stubs in the u-boot clock driver?

> Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
> ---
> Changes for v2:
> - none
> 
>  arch/arm/dts/rk3399-u-boot.dtsi | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/arch/arm/dts/rk3399-u-boot.dtsi b/arch/arm/dts/rk3399-u-boot.dtsi
> index 8b857ccfc7..b846f9cde7 100644
> --- a/arch/arm/dts/rk3399-u-boot.dtsi
> +++ b/arch/arm/dts/rk3399-u-boot.dtsi
> @@ -99,9 +99,13 @@
>  };
>  
>  &vopb {
> +	/delete-property/ assigned-clocks;
> +	/delete-property/ assigned-clock-rates;
>  	u-boot,dm-pre-reloc;
>  };
>  
>  &vopl {
> +	/delete-property/ assigned-clocks;
> +	/delete-property/ assigned-clock-rates;
>  	u-boot,dm-pre-reloc;
>  };
> -- 
> 2.17.1
> 
> 
