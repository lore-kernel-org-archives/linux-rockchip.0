From: Kever Yang <kever.yang@rock-chips.com>
Subject: Re: [PATCH v5 02/16] clk: rk3399: Set empty for TCPHY assigned-clocks
Date: Fri, 15 May 2020 10:15:29 +0800
Message-ID: <44dd1187-6a74-ba67-fa78-c34501152867@rock-chips.com>
References: <20200513071344.5430-1-frank.wang@rock-chips.com>
 <20200513071344.5430-3-frank.wang@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Return-path: <u-boot-bounces@lists.denx.de>
In-Reply-To: <20200513071344.5430-3-frank.wang@rock-chips.com>
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
To: Frank Wang <frank.wang@rock-chips.com>, heiko@sntech.de, marex@denx.de, bmeng.cn@gmail.com, philipp.tomsich@theobroma-systems.com, klaus.goger@theobroma-systems.com, jagan@amarulasolutions.com, sjg@chromium.org
Cc: u-boot@lists.denx.de, linux-rockchip@lists.infradead.org, linux-amarula@amarulasolutions.com, marek.belisko@gmail.com, william.wu@rock-chips.com, jianing.ren@rock-chips.com, chenjh@rock-chips.com, wmc@rock-chips.com
List-Id: linux-rockchip.vger.kernel.org


On 2020/5/13 下午3:13, Frank Wang wrote:
> From: Jagan Teki <jagan@amarulasolutions.com>
>
> Due to v5.7-rc1 sync the SD controller nodes in rk3399.dtsi
> have SCLK_UPHY0_TCPDCORE, SCLK_UPHY1_TCPDCORE assigned-clocks
> which are usually required for Linux and don't require to
> handle them in U-Boot.
>
>    assigned-clocks = <&cru SCLK_UPHY0_TCPDCORE>;
>    assigned-clocks = <&cru SCLK_UPHY1_TCPDCORE>;
>
> So, mark them as empty in clock otherwise device probe on
> those typec phy driver would fail.
>
> Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
Reviewed-by: Kever Yang <kever.yang@rock-chips.com>

Thanks,
- Kever
> ---
>   drivers/clk/rockchip/clk_rk3399.c | 2 ++
>   1 file changed, 2 insertions(+)
>
> diff --git a/drivers/clk/rockchip/clk_rk3399.c b/drivers/clk/rockchip/clk_rk3399.c
> index b53f2f984e..98fc6a3267 100644
> --- a/drivers/clk/rockchip/clk_rk3399.c
> +++ b/drivers/clk/rockchip/clk_rk3399.c
> @@ -997,6 +997,8 @@ static ulong rk3399_clk_set_rate(struct clk *clk, ulong rate)
>   	case ACLK_VOP1:
>   	case HCLK_VOP1:
>   	case HCLK_SD:
> +	case SCLK_UPHY0_TCPDCORE:
> +	case SCLK_UPHY1_TCPDCORE:
>   		/**
>   		 * assigned-clocks handling won't require for vopl, so
>   		 * return 0 to satisfy clk_set_defaults during device probe.
