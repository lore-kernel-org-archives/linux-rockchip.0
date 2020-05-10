From: Suniel Mahesh <sunil@amarulasolutions.com>
Subject: Re: [PATCH v3 2/6] clk: rk3399: Enable/Disable the PCIEPHY clk
Date: Mon, 11 May 2020 01:57:29 +0530
Message-ID: <CAM+7aWtMQcis5ocJ-rPcbCdqNTSd4GKqZhSY9mb5kCit_gbHKQ@mail.gmail.com>
References: <20200509165624.20791-1-jagan@amarulasolutions.com>
 <20200509165624.20791-3-jagan@amarulasolutions.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Return-path: <u-boot-bounces@lists.denx.de>
In-Reply-To: <20200509165624.20791-3-jagan@amarulasolutions.com>
List-Unsubscribe: <https://lists.denx.de/options/u-boot>,
 <mailto:u-boot-request@lists.denx.de?subject=unsubscribe>
List-Archive: <https://lists.denx.de/pipermail/u-boot/>
List-Post: <mailto:u-boot@lists.denx.de>
List-Help: <mailto:u-boot-request@lists.denx.de?subject=help>
List-Subscribe: <https://lists.denx.de/listinfo/u-boot>,
 <mailto:u-boot-request@lists.denx.de?subject=subscribe>
Errors-To: u-boot-bounces@lists.denx.de
Sender: "U-Boot" <u-boot-bounces@lists.denx.de>
To: Jagan Teki <jagan@amarulasolutions.com>
Cc: Kever Yang <kever.yang@rock-chips.com>, Simon Glass <sjg@chromium.org>, Philipp Tomsich <philipp.tomsich@theobroma-systems.com>, shawn.lin@rock-chips.com, patrick@blueri.se, u-boot@lists.denx.de, linux-rockchip@lists.infradead.org, linux-amarula@amarulasolutions.com
List-Id: linux-rockchip.vger.kernel.org

On Sat, May 9, 2020 at 10:26 PM Jagan Teki <jagan@amarulasolutions.com>
wrote:

> Enable/Disable the PCIEPHY clk for rk3399.
>
> CLK is clear in both enable and disable functionality.
>
> Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
> ---
> Changes for v3:
> - none
>
>  drivers/clk/rockchip/clk_rk3399.c | 6 ++++++
>  1 file changed, 6 insertions(+)
>
> diff --git a/drivers/clk/rockchip/clk_rk3399.c
> b/drivers/clk/rockchip/clk_rk3399.c
> index 5d2bdb42c7..5fb72d83c2 100644
> --- a/drivers/clk/rockchip/clk_rk3399.c
> +++ b/drivers/clk/rockchip/clk_rk3399.c
> @@ -1136,6 +1136,9 @@ static int rk3399_clk_enable(struct clk *clk)
>         case HCLK_HOST1_ARB:
>                 rk_clrreg(&priv->cru->clksel_con[20], BIT(8));
>                 break;
> +       case SCLK_PCIEPHY_REF:
> +               rk_clrreg(&priv->cru->clksel_con[18], BIT(10));
> +               break;
>         default:
>                 debug("%s: unsupported clk %ld\n", __func__, clk->id);
>                 return -ENOENT;
> @@ -1209,6 +1212,9 @@ static int rk3399_clk_disable(struct clk *clk)
>         case HCLK_HOST1_ARB:
>                 rk_setreg(&priv->cru->clksel_con[20], BIT(8));
>                 break;
> +       case SCLK_PCIEPHY_REF:
> +               rk_clrreg(&priv->cru->clksel_con[18], BIT(10));
> +               break;
>         default:
>                 debug("%s: unsupported clk %ld\n", __func__, clk->id);
>                 return -ENOENT;
> --
> 2.17.1
>

Tested-by: Suniel Mahesh <sunil@amarulasolutions.com> #roc-rk3399-pc
