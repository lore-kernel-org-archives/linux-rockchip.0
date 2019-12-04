From: Rob Herring <robh@kernel.org>
Subject: Re: [PATCH v2 1/5] dt-bindings: arm: rockchip: Add VMARC RK3399Pro
 SOM binding
Date: Wed, 4 Dec 2019 13:32:40 -0600
Message-ID: <20191204193240.GA6772@bogus>
References: <20191121141445.28712-1-jagan@amarulasolutions.com>
 <20191121141445.28712-2-jagan@amarulasolutions.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Return-path: <linux-kernel-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <20191121141445.28712-2-jagan@amarulasolutions.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Jagan Teki <jagan@amarulasolutions.com>
Cc: Heiko Stuebner <heiko@sntech.de>, Mark Rutland <mark.rutland@arm.com>, Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>, Akash Gajjar <akash@openedev.com>, Tom Cubie <tom@radxa.com>, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, linux-amarula@amarulasolutions.com
List-Id: linux-rockchip.vger.kernel.org

On Thu, Nov 21, 2019 at 07:44:41PM +0530, Jagan Teki wrote:
> VMARC RK3399Pro SOM is a standard SMARC SOM design with
> Rockchip RK3399Pro SoC, which is designed by Vamrs.
> 
> Since it is a standard SMARC design, it can be easily
> mounted on the supporting Carrier board. Radxa has
> suitable carrier board to mount and use it as a final
> version board.
> 
> Add dt-bindings for it.
> 
> Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
> ---
> Changes for v2:
> - none
> 
>  Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
>  1 file changed, 5 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
> index 45728fd22af8..51aa458833a9 100644
> --- a/Documentation/devicetree/bindings/arm/rockchip.yaml
> +++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
> @@ -526,4 +526,9 @@ properties:
>          items:
>            - const: tronsmart,orion-r68-meta
>            - const: rockchip,rk3368
> +
> +      - description: Vamrs VMARC RK3399Pro SOM
> +        items:
> +          - const: vamrs,rk3399pro-vmarc-som

Why do you need this? You just override it in your dts files, so it is 
not really used. Perhaps the top-level should have all 3 compatibles? If 
so, then the schemas are wrong.

> +          - const: rockchip,rk3399pro
>  ...
> -- 
> 2.18.0.321.gffc6fa0e3
> 
