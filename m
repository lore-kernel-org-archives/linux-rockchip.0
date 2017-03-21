From: Brian Norris <briannorris@chromium.org>
Subject: Re: [PATCH v3 4/4] drm/rockchip/dsi: correct the grf_switch_reg name
Date: Tue, 21 Mar 2017 12:56:00 -0700
Message-ID: <20170321195557.GA74389@google.com>
References: <1489722865-22122-1-git-send-email-zyw@rock-chips.com>
 <1489722865-22122-5-git-send-email-zyw@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org>
Content-Disposition: inline
In-Reply-To: <1489722865-22122-5-git-send-email-zyw@rock-chips.com>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org
To: Chris Zhong <zyw@rock-chips.com>
Cc: Heiko Stuebner <heiko@sntech.de>, David Airlie <airlied@linux.ie>, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org, Mark Yao <mark.yao@rock-chips.com>
List-Id: linux-rockchip.vger.kernel.org

On Fri, Mar 17, 2017 at 11:54:24AM +0800, Chris Zhong wrote:
> For the RK3399, the grf_switch_reg name should be RK3399_GRF_SOC_CON20,
> not RK3399_GRF_SOC_CON19.

Matches the TRM for me, and otherwise it's a no-op:

Reviewed-by: Brian Norris <briannorris@chromium.org>

> Signed-off-by: Chris Zhong <zyw@rock-chips.com>
> ---
> 
> Changes in v3: None
> Changes in v2: None
> 
>  drivers/gpu/drm/rockchip/dw-mipi-dsi.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/rockchip/dw-mipi-dsi.c b/drivers/gpu/drm/rockchip/dw-mipi-dsi.c
> index 5a18281..19b9208 100644
> --- a/drivers/gpu/drm/rockchip/dw-mipi-dsi.c
> +++ b/drivers/gpu/drm/rockchip/dw-mipi-dsi.c
> @@ -34,7 +34,7 @@
>  #define RK3288_DSI0_SEL_VOP_LIT		BIT(6)
>  #define RK3288_DSI1_SEL_VOP_LIT		BIT(9)
>  
> -#define RK3399_GRF_SOC_CON19		0x6250
> +#define RK3399_GRF_SOC_CON20		0x6250
>  #define RK3399_DSI0_SEL_VOP_LIT		BIT(0)
>  #define RK3399_DSI1_SEL_VOP_LIT		BIT(4)
>  
> @@ -1151,7 +1151,7 @@ static struct dw_mipi_dsi_plat_data rk3288_mipi_dsi_drv_data = {
>  static struct dw_mipi_dsi_plat_data rk3399_mipi_dsi_drv_data = {
>  	.dsi0_en_bit = RK3399_DSI0_SEL_VOP_LIT,
>  	.dsi1_en_bit = RK3399_DSI1_SEL_VOP_LIT,
> -	.grf_switch_reg = RK3399_GRF_SOC_CON19,
> +	.grf_switch_reg = RK3399_GRF_SOC_CON20,
>  	.grf_dsi0_mode = RK3399_GRF_DSI_MODE,
>  	.grf_dsi0_mode_reg = RK3399_GRF_SOC_CON22,
>  	.flags = DW_MIPI_NEEDS_PHY_CFG_CLK | DW_MIPI_NEEDS_GRF_CLK,
> -- 
> 2.6.3
