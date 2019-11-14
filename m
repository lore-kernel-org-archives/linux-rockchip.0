From: Rob Herring <robh@kernel.org>
Subject: Re: [PATCH v2 4/5] dt-bindings: display: rockchip-dsi: add px30
 compatible
Date: Wed, 13 Nov 2019 19:52:22 -0600
Message-ID: <20191114015222.GA22800@bogus>
References: <20191108000253.8560-1-heiko.stuebner@theobroma-systems.com>
 <20191108000253.8560-5-heiko.stuebner@theobroma-systems.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Return-path: <linux-kernel-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <20191108000253.8560-5-heiko.stuebner@theobroma-systems.com>
Sender: linux-kernel-owner@vger.kernel.org
Cc: dri-devel@lists.freedesktop.org, a.hajda@samsung.com, hjc@rock-chips.com, robh+dt@kernel.org, mark.rutland@arm.com, narmstrong@baylibre.com, Laurent.pinchart@ideasonboard.com, jonas@kwiboo.se, jernej.skrabec@siol.net, philippe.cornu@st.com, yannick.fertre@st.com, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, heiko@sntech.de, christoph.muellner@theobroma-systems.com, Heiko Stuebner <heiko.stuebner@theobroma-systems.com>
List-Id: linux-rockchip.vger.kernel.org

On Fri,  8 Nov 2019 01:02:52 +0100, Heiko Stuebner wrote:
> The px30 SoC also uses a dw-mipi-dsi controller, so add the
> compatible value for it.
> 
> Signed-off-by: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>
> ---
>  .../bindings/display/rockchip/dw_mipi_dsi_rockchip.txt      | 6 ++++--
>  1 file changed, 4 insertions(+), 2 deletions(-)
> 

Acked-by: Rob Herring <robh@kernel.org>
