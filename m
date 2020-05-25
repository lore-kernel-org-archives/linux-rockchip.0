From: Kever Yang <kever.yang@rock-chips.com>
Subject: Re: [PATCH] clk: rk3399: Fix eMMC get_clk reg offset
Date: Mon, 25 May 2020 10:48:57 +0800
Message-ID: <42c92007-a638-7ab6-bd2b-133747af4dda@rock-chips.com>
References: <20200524164315.124527-1-jagan@amarulasolutions.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Return-path: <u-boot-bounces@lists.denx.de>
In-Reply-To: <20200524164315.124527-1-jagan@amarulasolutions.com>
Content-Language: en-US
List-Unsubscribe: <https://lists.denx.de/options/u-boot>,
 <mailto:u-boot-request@lists.denx.de?subject=unsubscribe>
List-Archive: <https://lists.denx.de/pipermail/u-boot/>
List-Post: <mailto:u-boot@lists.denx.de>
List-Help: <mailto:u-boot-request@lists.denx.de?subject=help>
List-Subscribe: <https://lists.denx.de/listinfo/u-boot>,
 <mailto:u-boot-request@lists.denx.de?subject=subscribe>
Errors-To: u-boot-bounces@lists.denx.de
Sender: "U-Boot" <u-boot-bounces@lists.denx.de>
To: Jagan Teki <jagan@amarulasolutions.com>, Simon Glass <sjg@chromium.org>, Philipp Tomsich <philipp.tomsich@theobroma-systems.com>
Cc: sunil@amarulasolutions.com, u-boot@lists.denx.de, linux-rockchip@lists.infradead.org, linux-amarula@amarulasolutions.com
List-Id: linux-rockchip.vger.kernel.org


On 2020/5/25 上午12:43, Jagan Teki wrote:
> Actual eMMC get_clk register is clksel_con22 instead of
> clksel_con21.
>
> Fix it.
>
> Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>

Reviewed-by: Kever Yang <kever.yang@rock-chips.com>

Thanks,
- Kever
> ---
>   drivers/clk/rockchip/clk_rk3399.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/clk/rockchip/clk_rk3399.c b/drivers/clk/rockchip/clk_rk3399.c
> index 6a78837619..4caf3b5617 100644
> --- a/drivers/clk/rockchip/clk_rk3399.c
> +++ b/drivers/clk/rockchip/clk_rk3399.c
> @@ -728,7 +728,7 @@ static ulong rk3399_mmc_get_clk(struct rockchip_cru *cru, uint clk_id)
>   		div = 2;
>   		break;
>   	case SCLK_EMMC:
> -		con = readl(&cru->clksel_con[21]);
> +		con = readl(&cru->clksel_con[22]);
>   		div = 1;
>   		break;
>   	default:
