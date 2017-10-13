From: Archit Taneja <architt@codeaurora.org>
Subject: Re: [PATCH v2 2/8] drm/rockchip/dsi: add dual mipi channel support
Date: Fri, 13 Oct 2017 13:48:23 +0530
Message-ID: <99994e8b-2698-77f0-9f56-c3aa5962a06a@codeaurora.org>
References: <1506412523-1766-1-git-send-email-nickey.yang@rock-chips.com>
 <1506412523-1766-2-git-send-email-nickey.yang@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <1506412523-1766-2-git-send-email-nickey.yang@rock-chips.com>
Content-Language: en-US
Sender: linux-kernel-owner@vger.kernel.org
To: Nickey Yang <nickey.yang@rock-chips.com>, mark.yao@rock-chips.com, robh+dt@kernel.org, heiko@sntech.de, mark.rutland@arm.com, airlied@linux.ie
Cc: linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org, seanpaul@chromium.org, briannorris@chromium.org, hl@rock-chips.com, zyw@rock-chips.com, bivvy.bi@rock-chips.com, xbl@rock-chips.com
List-Id: linux-rockchip.vger.kernel.org

Hi,

Comment below.

On 09/26/2017 01:25 PM, Nickey Yang wrote:
> This patch add dual mipi channel support:
> 1.add definition of dsi1 register and grf operation.
> 2.dsi0 and dsi1 will work in master and slave mode
> when driving dual mipi panel.
> 
<snip>

>   
> @@ -1226,6 +1367,13 @@ static int rockchip_mipi_parse_dt(struct dw_mipi_dsi *dsi)
>   	.grf_switch_reg = RK3399_GRF_SOC_CON20,
>   	.grf_dsi0_mode = RK3399_GRF_DSI_MODE,
>   	.grf_dsi0_mode_reg = RK3399_GRF_SOC_CON22,
> +	.grf_dsi1_mode = RK3399_GRF_DSI1_MODE,
> +	.grf_dsi1_enable = RK3399_GRF_DSI1_ENABLE,
> +	.grf_dsi1_mode_reg1 = RK3399_GRF_SOC_CON23,
> +	.dsi1_basedir = RK3399_TXRX_BASEDIR,
> +	.dsi1_masterslavez = RK3399_TXRX_MASTERSLAVEZ,
> +	.dsi1_enableclk = RK3399_TXRX_ENABLECLK,
> +	.grf_dsi1_mode_reg2 = RK3399_GRF_SOC_CON24,
>   	.flags = DW_MIPI_NEEDS_PHY_CFG_CLK | DW_MIPI_NEEDS_GRF_CLK,
>   	.max_data_lanes = 4,
>   };
> @@ -1242,17 +1390,107 @@ static int rockchip_mipi_parse_dt(struct dw_mipi_dsi *dsi)
>   };
>   MODULE_DEVICE_TABLE(of, dw_mipi_dsi_dt_ids);
>   
> +
> +static int rockchip_dsi_dual_channel_probe(struct dw_mipi_dsi *dsi)
> +{
> +	struct device_node *np;
> +	struct platform_device *secondary;
> +
> +	np = of_parse_phandle(dsi->dev->of_node, "rockchip,dual-channel", 0);
> +	if (np) {
> +		secondary = of_find_device_by_node(np);
> +		dsi->slave = platform_get_drvdata(secondary);
> +		of_node_put(np);
> +
> +		if (!dsi->slave)
> +			return -EPROBE_DEFER;
> +
> +		dsi->slave->master = dsi;

This is not a suitable DT binding. It doesn't really represent HW, it's more of
a configuration that allows 2 DSIs to work together.

You can use the of-graph bindings to figure out whether you are operating in dual
mode or not: If the output ports of both the DSIs are connected to the same DT
node (i.e, both DSIs driving the same bridge chip/panel), then you know that you
need to configure the DSIs in dual channel mode.

Thanks,
Archit

-- 
Qualcomm Innovation Center, Inc. is a member of Code Aurora Forum,
a Linux Foundation Collaborative Project
