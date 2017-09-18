From: Brian Norris <briannorris@chromium.org>
Subject: Re: [PATCH 3/7] dt-bindings: add the rockchip,dual-channel for
 dw-mipi-dsi
Date: Mon, 18 Sep 2017 14:56:15 -0700
Message-ID: <20170918215614.GA106623@google.com>
References: <1505725539-6309-1-git-send-email-nickey.yang@rock-chips.com>
 <1505725539-6309-3-git-send-email-nickey.yang@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Return-path: <linux-kernel-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <1505725539-6309-3-git-send-email-nickey.yang@rock-chips.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Nickey Yang <nickey.yang@rock-chips.com>
Cc: mark.yao@rock-chips.com, robh+dt@kernel.org, heiko@sntech.de, mark.rutland@arm.com, airlied@linux.ie, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org, seanpaul@chromium.org, hl@rock-chips.com, zyw@rock-chips.com, bivvy.bi@rock-chips.com, xbl@rock-chips.com
List-Id: linux-rockchip.vger.kernel.org

Hi,

On Mon, Sep 18, 2017 at 05:05:35PM +0800, Nickey Yang wrote:
> Configure dsi slave channel when driving a panel
> which needs 2 DSI links.
> 
> Signed-off-by: Nickey Yang <nickey.yang@rock-chips.com>
> ---
>  .../devicetree/bindings/display/rockchip/dw_mipi_dsi_rockchip.txt       | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/display/rockchip/dw_mipi_dsi_rockchip.txt b/Documentation/devicetree/bindings/display/rockchip/dw_mipi_dsi_rockchip.txt
> index 6bb59ab..e13e1a3 100644
> --- a/Documentation/devicetree/bindings/display/rockchip/dw_mipi_dsi_rockchip.txt
> +++ b/Documentation/devicetree/bindings/display/rockchip/dw_mipi_dsi_rockchip.txt
> @@ -19,6 +19,8 @@ Optional properties:
>  - power-domains: a phandle to mipi dsi power domain node.
>  - resets: list of phandle + reset specifier pairs, as described in [3].
>  - reset-names: string reset name, must be "apb".
> +- rockchip,dual-channel: configure dsi slave channel when driving a panel

The wording "configure dsi slave channel" doesn't really tell you
exactly what this *is*; in fact, it's more like a description of the SW
than the HW (DT is supposed to describe HW).

You probably want something like "phandle to a 2nd DSI channel; useful
as a slave channel when driving a panel which needs 2 DSI links".

Brian

> +  which needs 2 DSI links.
>  
>  [1] Documentation/devicetree/bindings/clock/clock-bindings.txt
>  [2] Documentation/devicetree/bindings/media/video-interfaces.txt
> -- 
> 1.9.1
> 
> 
