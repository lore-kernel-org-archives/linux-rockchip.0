From: Chris Zhong <zyw@rock-chips.com>
Subject: Re: [PATCH v2 15/26] drm/rockchip: dw-mipi-dsi: ensure PHY is reset
Date: Sun, 22 Jan 2017 17:37:28 +0800
Message-ID: <58847D58.5080903@rock-chips.com>
References: <20170121163128.22240-1-john@metanate.com>
 <20170121163128.22240-16-john@metanate.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20170121163128.22240-16-john@metanate.com>
Sender: linux-kernel-owner@vger.kernel.org
To: John Keeping <john@metanate.com>, Mark Yao <mark.yao@rock-chips.com>
Cc: dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org


Reviewed-by: Chris Zhong <zyw@rock-chips.com>

On 01/22/2017 12:31 AM, John Keeping wrote:
> Also don't power up the DSI host at this point since this is not
> necessary in order to configure the PHY and we do so later when
> selecting video or command mode.
>
> Signed-off-by: John Keeping <john@metanate.com>
> ---
> Unchanged in v2
> ---
>   drivers/gpu/drm/rockchip/dw-mipi-dsi.c | 5 ++++-
>   1 file changed, 4 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/rockchip/dw-mipi-dsi.c b/drivers/gpu/drm/rockchip/dw-mipi-dsi.c
> index c2e0ba96e0a0..5b3068e9e8db 100644
> --- a/drivers/gpu/drm/rockchip/dw-mipi-dsi.c
> +++ b/drivers/gpu/drm/rockchip/dw-mipi-dsi.c
> @@ -397,7 +397,10 @@ static int dw_mipi_dsi_phy_init(struct dw_mipi_dsi *dsi)
>   		return testdin;
>   	}
>   
> -	dsi_write(dsi, DSI_PWR_UP, POWERUP);
> +	/* Start by clearing PHY state */
> +	dsi_write(dsi, DSI_PHY_TST_CTRL0, PHY_UNTESTCLR);
> +	dsi_write(dsi, DSI_PHY_TST_CTRL0, PHY_TESTCLR);
> +	dsi_write(dsi, DSI_PHY_TST_CTRL0, PHY_UNTESTCLR);
>   
>   	dw_mipi_dsi_phy_write(dsi, 0x10, BYPASS_VCO_RANGE |
>   					 VCO_RANGE_CON_SEL(vco) |
