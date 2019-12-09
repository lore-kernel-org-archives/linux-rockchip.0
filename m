From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
Subject: Re: [PATCH 1/2] dt-bindings: phy: drop #clock-cells from rockchip,px30-dsi-dphy
Date: Mon, 09 Dec 2019 10:27:28 +0100
Message-ID: <2785558.xRCxUMSmLi@diego>
References: <20191108000640.8775-1-heiko.stuebner@theobroma-systems.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7Bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20191108000640.8775-1-heiko.stuebner@theobroma-systems.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>, kishon@ti.com
Cc: robh+dt@kernel.org, mark.rutland@arm.com, bivvy.bi@rock-chips.com, linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, christoph.muellner@theobroma-systems.com
List-Id: linux-rockchip.vger.kernel.org

Hi Kishon,

Am Freitag, 8. November 2019, 01:06:39 CET schrieb Heiko Stuebner:
> Further review of the dsi components for the px30 revealed that the
> phy shouldn't expose the pll as clock but instead handle settings
> via phy parameters.
> 
> As the phy binding is new and not used anywhere yet, just drop them
> so they don't get used.
> 
> Fixes: 3817c7961179 ("dt-bindings: phy: add yaml binding for rockchip,px30-dsi-dphy")
> Signed-off-by: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>
> ---
> Hi Kishon,
> 
> this should ideally get into 5.5 as a fix for the previous change
> so that the binding doesn't accidentially get used.

Could you take a look at these 2 changes for the newly added dsi-phy
for some Rockchip SoCs? From a dt-binding-hardliner standpoint, it should
ideally get fixed in 5.5, so that the (wrong) binding doesn't get released
with a full kernel release.

But as it is very much Rockchip-specific and doesn't touch other part,
5.6 would also be ok I guess ;-)


Thanks
Heiko

>  .../devicetree/bindings/phy/rockchip,px30-dsi-dphy.yaml      | 5 -----
>  1 file changed, 5 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/phy/rockchip,px30-dsi-dphy.yaml b/Documentation/devicetree/bindings/phy/rockchip,px30-dsi-dphy.yaml
> index bb0da87bcd84..476c56a1dc8c 100644
> --- a/Documentation/devicetree/bindings/phy/rockchip,px30-dsi-dphy.yaml
> +++ b/Documentation/devicetree/bindings/phy/rockchip,px30-dsi-dphy.yaml
> @@ -13,9 +13,6 @@ properties:
>    "#phy-cells":
>      const: 0
>  
> -  "#clock-cells":
> -    const: 0
> -
>    compatible:
>      enum:
>        - rockchip,px30-dsi-dphy
> @@ -49,7 +46,6 @@ properties:
>  
>  required:
>    - "#phy-cells"
> -  - "#clock-cells"
>    - compatible
>    - reg
>    - clocks
> @@ -66,7 +62,6 @@ examples:
>          reg = <0x0 0xff2e0000 0x0 0x10000>;
>          clocks = <&pmucru 13>, <&cru 12>;
>          clock-names = "ref", "pclk";
> -        #clock-cells = <0>;
>          resets = <&cru 12>;
>          reset-names = "apb";
>          #phy-cells = <0>;
> 
