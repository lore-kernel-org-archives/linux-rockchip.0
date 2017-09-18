From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
Subject: Re: [PATCH 5/7] arm64: dts: rockchip: rk3399: Correct MIPI DPHY PLL clock
Date: Mon, 18 Sep 2017 13:31:59 +0200
Message-ID: <1555719.xlEhX7V6v3@diego>
References: <1505725539-6309-1-git-send-email-nickey.yang@rock-chips.com> <1505725539-6309-5-git-send-email-nickey.yang@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7Bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <1505725539-6309-5-git-send-email-nickey.yang@rock-chips.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Nickey Yang <nickey.yang@rock-chips.com>
Cc: mark.yao@rock-chips.com, robh+dt@kernel.org, mark.rutland@arm.com, airlied@linux.ie, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org, seanpaul@chromium.org, briannorris@chromium.org, hl@rock-chips.com, zyw@rock-chips.com, bivvy.bi@rock-chips.com, xbl@rock-chips.com
List-Id: linux-rockchip.vger.kernel.org

Hi Nickey,

Am Montag, 18. September 2017, 17:05:37 CEST schrieb Nickey Yang:
> clk_24m --> Gate11[14] --> clk_mipidphy_ref --> Gate21[0] --> clk_dphy_pll

please try to be a bit more verbose in your commit messages :-) .

It looks to me, like this patch does not depend on the other ones and
I can just pick it directly. Correct?


Heiko

> Signed-off-by: Nickey Yang <nickey.yang@rock-chips.com>
> ---
>  arch/arm64/boot/dts/rockchip/rk3399.dtsi | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3399.dtsi
> b/arch/arm64/boot/dts/rockchip/rk3399.dtsi index d79e9b3..6aa43fd 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3399.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
> @@ -1629,7 +1629,7 @@
>  		compatible = "rockchip,rk3399-mipi-dsi", "snps,dw-mipi-dsi";
>  		reg = <0x0 0xff960000 0x0 0x8000>;
>  		interrupts = <GIC_SPI 45 IRQ_TYPE_LEVEL_HIGH 0>;
> -		clocks = <&cru SCLK_MIPIDPHY_REF>, <&cru PCLK_MIPI_DSI0>,
> +		clocks = <&cru SCLK_DPHY_PLL>, <&cru PCLK_MIPI_DSI0>,
>  			 <&cru SCLK_DPHY_TX0_CFG>;
>  		clock-names = "ref", "pclk", "phy_cfg";
>  		power-domains = <&power RK3399_PD_VIO>;
