From: Rob Herring <robh@kernel.org>
Subject: Re: [PATCH v2 1/2] dt-bindings: arm: rockchip: Add libretech for
 roc-pc binding
Date: Tue, 3 Dec 2019 16:37:04 -0600
Message-ID: <20191203223704.GA29109@bogus>
References: <20191119185817.11216-1-jagan@amarulasolutions.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Return-path: <linux-kernel-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <20191119185817.11216-1-jagan@amarulasolutions.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Jagan Teki <jagan@amarulasolutions.com>
Cc: Heiko Stuebner <heiko@sntech.de>, Levin Du <djw@t-chip.com.cn>, Akash Gajjar <akash@openedev.com>, Mark Rutland <mark.rutland@arm.com>, Da Xue <da@lessconfused.com>, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, linux-amarula@amarulasolutions.com
List-Id: linux-rockchip.vger.kernel.org

On Wed, Nov 20, 2019 at 12:28:16AM +0530, Jagan Teki wrote:
> Though the ROC-PC is manufactured by firefly, it is co-designed
> by libretch like other Libretech computer boards from allwinner,
> amlogic does.
> 
> It is always meaningful to keep maintain those vendors who are
> part of design participation, so add libretech roc-pc compatible
> with existing binding.

Maybe so, but this is pretty pointless if it's not different h/w. 
Compatible strings are simply a h/w identifier.

> Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
> ---
>  Documentation/devicetree/bindings/arm/rockchip.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
> index f7470ed1e17d..45728fd22af8 100644
> --- a/Documentation/devicetree/bindings/arm/rockchip.yaml
> +++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
> @@ -100,6 +100,7 @@ properties:
>        - description: Firefly ROC-RK3399-PC
>          items:
>            - enum:
> +              - libretech,roc-rk3399-pc
>                - firefly,roc-rk3399-pc
>                - firefly,roc-rk3399-pc-mezzanine

This doesn't match your change in the dts. file. The schema says there 
are 2 strings with the first one being 1 of these 3.

>            - const: rockchip,rk3399
> -- 
> 2.18.0.321.gffc6fa0e3
> 
