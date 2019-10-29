From: Rob Herring <robh@kernel.org>
Subject: Re: [PATCH 2/3] dt-bindings: phy: add yaml binding for
 rockchip,px30-dsi-dphy
Date: Tue, 29 Oct 2019 14:16:58 -0500
Message-ID: <20191029191658.GA9628@bogus>
References: <20191023223851.3030-1-heiko@sntech.de>
 <20191023223851.3030-2-heiko@sntech.de>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Return-path: <linux-kernel-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <20191023223851.3030-2-heiko@sntech.de>
Sender: linux-kernel-owner@vger.kernel.org
To: Heiko Stuebner <heiko@sntech.de>
Cc: kishon@ti.com, mark.rutland@arm.com, bivvy.bi@rock-chips.com, linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, christoph.muellner@theobroma-systems.com
List-Id: linux-rockchip.vger.kernel.org

On Thu, Oct 24, 2019 at 12:38:50AM +0200, Heiko Stuebner wrote:
> This adds a yaml binding for the external dsi phy found on Rockchip
> socs of the px30, rk3128 and rk3368 variants.
> 
> Signed-off-by: Heiko Stuebner <heiko@sntech.de>
> ---
>  .../bindings/phy/rockchip,px30-dsi-dphy.yaml  | 75 +++++++++++++++++++
>  1 file changed, 75 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/phy/rockchip,px30-dsi-dphy.yaml
> 
> diff --git a/Documentation/devicetree/bindings/phy/rockchip,px30-dsi-dphy.yaml b/Documentation/devicetree/bindings/phy/rockchip,px30-dsi-dphy.yaml
> new file mode 100644
> index 000000000000..c2e1a998a766
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/phy/rockchip,px30-dsi-dphy.yaml
> @@ -0,0 +1,75 @@
> +# SPDX-License-Identifier: GPL-2.0

(GPL-2.0-only OR BSD-2-Clause) for new bindings.

Otherwise,

Reviewed-by: Rob Herring <robh@kernel.org>
