From: Archit Taneja <architt@codeaurora.org>
Subject: Re: [PATCH v3 5/6] dt-bindings: add the rockchip, dual-channel for
 dw-mipi-dsi
Date: Thu, 26 Oct 2017 10:23:29 +0530
Message-ID: <816a1d2d-d213-709d-f357-63e7c5248ad3@codeaurora.org>
References: <1508903463-7254-1-git-send-email-nickey.yang@rock-chips.com>
 <1508903463-7254-5-git-send-email-nickey.yang@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <1508903463-7254-5-git-send-email-nickey.yang@rock-chips.com>
Content-Language: en-US
Sender: linux-kernel-owner@vger.kernel.org
To: Nickey Yang <nickey.yang@rock-chips.com>, mark.yao@rock-chips.com, robh+dt@kernel.org, heiko@sntech.de, mark.rutland@arm.com, airlied@linux.ie
Cc: hl@rock-chips.com, zyw@rock-chips.comg, briannorris@chromium.org, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org, xbl@rock-chips.com
List-Id: linux-rockchip.vger.kernel.org



On 10/25/2017 09:21 AM, Nickey Yang wrote:
> Configure dsi slave channel when driving a panel
> which needs 2 DSI links.
> 
> Signed-off-by: Nickey Yang <nickey.yang@rock-chips.com>
> ---
>   .../devicetree/bindings/display/rockchip/dw_mipi_dsi_rockchip.txt       | 2 ++
>   1 file changed, 2 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/display/rockchip/dw_mipi_dsi_rockchip.txt b/Documentation/devicetree/bindings/display/rockchip/dw_mipi_dsi_rockchip.txt
> index 6bb59ab..a2bea22 100644
> --- a/Documentation/devicetree/bindings/display/rockchip/dw_mipi_dsi_rockchip.txt
> +++ b/Documentation/devicetree/bindings/display/rockchip/dw_mipi_dsi_rockchip.txt
> @@ -19,6 +19,8 @@ Optional properties:
>   - power-domains: a phandle to mipi dsi power domain node.
>   - resets: list of phandle + reset specifier pairs, as described in [3].
>   - reset-names: string reset name, must be "apb".
> +- rockchip,dual-channel: phandle to a 2nd DSI channel, useful as a slave
> +channel when driving a panel which needs 2 DSI links.
The example below is how dual DSI bindings could look like. Let me know what
you think of it.

If both DSI outputs drive the same device (i.e, point to the same panel DT
node), then I think it's reasonable enough to assume that the DSIs are
operating in a 'dual-channel' mode. That being said, we still need DT to
describe which of the DSIs generates the clock for both the channels. This
is done with the 'clock-master' DT binding.

Thanks,
Archit

mipi_dsi: mipi@ff960000 {
	...
	...

	clock-master;	/* implies that this DSI instance drivers the clock
			 * for both the DSIs.
			 */

	ports {
		mipi_in: port {
			...
			...
		};

		/* add extra output ports for both DSIs */
		mipi_out: port {
			mipi_panel_out: endpoint {
				remote-endpoint = <&panel_in_channel0>;
			};
		};
	};

	panel {
		...
		...
		/*
		 * panel node can describe its input ports, if both the DSIs output
		 * ports are connected to the same device (i.e, the same DSI panel),
		 * we can assume that the DSIs need to operate in dual DSI mode
		 */
		ports {
			...
			port@0 {
				panel_in_channel0: endpoint {
					remote-endpoint = <&mipi_panel_out>;
				};
			};

			port@1 {
				panel_in_channel1: endpoint {
					remote-endpoint = <&mipi1_panel_out>;
				};
	
			};
		};
	};
};


mipi_dsi1: mipi@ff968000 {
	...
	...

	ports {
		mipi1_in: port {
			...
			...
		};

		mipi1_out: port {
			mipi1_panel_out: endpoint {
				remote-endpoint = <&panel_in_channel1>;
			};
		};
	};
};

>   
>   [1] Documentation/devicetree/bindings/clock/clock-bindings.txt
>   [2] Documentation/devicetree/bindings/media/video-interfaces.txt
> 

-- 
Qualcomm Innovation Center, Inc. is a member of Code Aurora Forum,
a Linux Foundation Collaborative Project
