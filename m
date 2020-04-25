From: Mark Kettenis <mark.kettenis@xs4all.nl>
Subject: Re: [PATCH 3/8] clk: rk3399: Enable PCIE_PHY clock
Date: Sat, 25 Apr 2020 22:24:14 +0200 (CEST)
Message-ID: <016196395ae8077b@bloch.sibelius.xs4all.nl>
References: <20200425110354.12381-1-jagan@amarulasolutions.com>
 <20200425110354.12381-4-jagan@amarulasolutions.com>
Return-path: <u-boot-bounces@lists.denx.de>
In-reply-to: <20200425110354.12381-4-jagan@amarulasolutions.com> (message from
 Jagan Teki on Sat, 25 Apr 2020 16:33:49 +0530)
List-Unsubscribe: <https://lists.denx.de/options/u-boot>,
 <mailto:u-boot-request@lists.denx.de?subject=unsubscribe>
List-Archive: <https://lists.denx.de/pipermail/u-boot/>
List-Post: <mailto:u-boot@lists.denx.de>
List-Help: <mailto:u-boot-request@lists.denx.de?subject=help>
List-Subscribe: <https://lists.denx.de/listinfo/u-boot>,
 <mailto:u-boot-request@lists.denx.de?subject=subscribe>
Errors-To: u-boot-bounces@lists.denx.de
Sender: "U-Boot" <u-boot-bounces@lists.denx.de>
Cc: kever.yang@rock-chips.com, sjg@chromium.org, philipp.tomsich@theobroma-systems.com, patrick@blueri.se, sunil@amarulasolutions.com, u-boot@lists.denx.de, linux-rockchip@lists.infradead.org, linux-amarula@amarulasolutions.com, jagan@amarulasolutions.com
List-Id: linux-rockchip.vger.kernel.org

> From: Jagan Teki <jagan@amarulasolutions.com>
> Date: Sat, 25 Apr 2020 16:33:49 +0530
> 
> Add PCIE_PHY clock enablement support on rk3399
> clock driver.
> 
> This clock is enabled by default, so do nothing
> if it triggers during the PCIe PHY probe other
> PHY users on this clock will simply fail.

This breaks Ethernet on my firefly-rk3399, and I suspect it does the
same on other boards:

  In:    serial@ff1a0000
  Out:   serial@ff1a0000
  Err:   serial@ff1a0000
  Model: Firefly-RK3399 Board
  Net:   failed to enable clock 0
  No ethernet found.

Looking at the px30 clock driver, I think you need to add a few more
clocks here:

  SCLK_MAC,
  SCLK_MAC_RX,
  SCLK_MAC_TX,
  SCLK_MACREF,
  SCLK_MACREF_OUT,
  ACLK_GMAC,
  PCLK_GMAC

That makes it work again for me.

Cheers,

Mark

> Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
> ---
>  drivers/clk/rockchip/clk_rk3399.c | 15 +++++++++++++++
>  1 file changed, 15 insertions(+)
> 
> diff --git a/drivers/clk/rockchip/clk_rk3399.c b/drivers/clk/rockchip/clk_rk3399.c
> index d822acace1..8e069fbade 100644
> --- a/drivers/clk/rockchip/clk_rk3399.c
> +++ b/drivers/clk/rockchip/clk_rk3399.c
> @@ -1071,12 +1071,27 @@ static int __maybe_unused rk3399_clk_set_parent(struct clk *clk,
>  	return -ENOENT;
>  }
>  
> +static int rk3399_clk_enable(struct clk *clk)
> +{
> +	switch (clk->id) {
> +	case SCLK_PCIEPHY_REF:
> +		/* do nothing, clk is enabled by default */
> +		break;
> +	default:
> +		debug("%s: unsupported clk %ld\n", __func__, clk->id);
> +		return -ENOENT;
> +	}
> +
> +	return 0;
> +}
> +
>  static struct clk_ops rk3399_clk_ops = {
>  	.get_rate = rk3399_clk_get_rate,
>  	.set_rate = rk3399_clk_set_rate,
>  #if CONFIG_IS_ENABLED(OF_CONTROL) && !CONFIG_IS_ENABLED(OF_PLATDATA)
>  	.set_parent = rk3399_clk_set_parent,
>  #endif
> +	.enable = rk3399_clk_enable,
>  };
>  
>  #ifdef CONFIG_SPL_BUILD
> -- 
> 2.17.1
> 
> 
