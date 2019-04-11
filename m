From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
Subject: Re: [PATCH] clk: rockchip: rk3288: Limit use of USB PHY clock to USB
Date: Thu, 11 Apr 2019 21:03:07 +0200
Message-ID: <3787637.WUkDPpUsF8@diego>
References: <20190411175917.173566-1-mka@chromium.org>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7Bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20190411175917.173566-1-mka@chromium.org>
Sender: linux-kernel-owner@vger.kernel.org
To: Matthias Kaehlcke <mka@chromium.org>
Cc: Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, Douglas Anderson <dianders@chromium.org>
List-Id: linux-rockchip.vger.kernel.org

Hi Matthias,

Am Donnerstag, 11. April 2019, 19:59:17 CEST schrieb Matthias Kaehlcke:
> The USB PHY clock can be configured as (grand) parent of uart0_sclk and
> sclk_gpu. It has been observed that UART0 doesn't work reliably in high
> speed mode with the PHY clock as input when certain USB devices are
> plugged to the USB HOST1 port (see https://crrev.com/c/320543).
> 
> Prefix the name of the PHY clock with a '.' in the non-USB muxes to
> effectively remove the clock as input from these muxes.
> 
> Signed-off-by: Matthias Kaehlcke <mka@chromium.org>
> ---
>  drivers/clk/rockchip/clk-rk3288.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/clk/rockchip/clk-rk3288.c b/drivers/clk/rockchip/clk-rk3288.c
> index 5a67b7869960..677bc5485201 100644
> --- a/drivers/clk/rockchip/clk-rk3288.c
> +++ b/drivers/clk/rockchip/clk-rk3288.c
> @@ -200,8 +200,8 @@ PNAME(mux_aclk_cpu_src_p)	= { "cpll_aclk_cpu", "gpll_aclk_cpu" };
>  PNAME(mux_pll_src_cpll_gpll_p)		= { "cpll", "gpll" };
>  PNAME(mux_pll_src_npll_cpll_gpll_p)	= { "npll", "cpll", "gpll" };
>  PNAME(mux_pll_src_cpll_gpll_npll_p)	= { "cpll", "gpll", "npll" };
> -PNAME(mux_pll_src_cpll_gpll_usb480m_p)	= { "cpll", "gpll", "usbphy480m_src" };
> -PNAME(mux_pll_src_cpll_gll_usb_npll_p)	= { "cpll", "gpll", "usbphy480m_src", "npll" };
> +PNAME(mux_pll_src_cpll_gpll_usb480m_p)	= { "cpll", "gpll", ".usbphy480m_src" };
> +PNAME(mux_pll_src_cpll_gll_usb_npll_p)	= { "cpll", "gpll", ".usbphy480m_src", "npll" };

In general I like to have things like the clock-tree described fully
and let the kernel handle correct sourcing ... but:

As you write this seems like a systemic problem when just connecting
random peripherals can create unstable clock source frequencies,
so I tend to agree here ... but:

Can we please find a more "talking" name for this ... because as with the
above someone will find the "." and submit a fix for it ;-) .

So just name it "unstable_dummy" or so?


Heiko
