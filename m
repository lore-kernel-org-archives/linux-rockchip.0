From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
Subject: Re: [PATCH v2] arm64: dts: rockchip: Split rk3399-roc-pc for with and without mezzanine board.
Date: Mon, 04 Nov 2019 15:14:26 +0100
Message-ID: <7600269.ktiZa05prH@diego>
References: <17c7c736-46a2-fee6-9bf3-f351a7871e20@fivetechno.de>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7Bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <17c7c736-46a2-fee6-9bf3-f351a7871e20@fivetechno.de>
Sender: linux-kernel-owner@vger.kernel.org
To: Markus Reichl <m.reichl@fivetechno.de>
Cc: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>, Jagan Teki <jagan@amarulasolutions.com>, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

Hi Markus,

Am Montag, 4. November 2019, 15:08:55 CET schrieb Markus Reichl:
> For rk3399-roc-pc is a mezzanine board available that carries M.2 and
> POE interfaces. Use it with a separate dts.
> 
> Signed-off-by: Markus Reichl <m.reichl@fivetechno.de>
> ---
> v2: Add new compatible string for roc-pc with mezzanine board.
> ---
>  .../devicetree/bindings/arm/rockchip.yaml     |   7 +-
>  arch/arm64/boot/dts/rockchip/Makefile         |   1 +
>  .../boot/dts/rockchip/rk3399-roc-pc-mezz.dts  |  72 ++
>  .../arm64/boot/dts/rockchip/rk3399-roc-pc.dts | 757 +----------------
>  .../boot/dts/rockchip/rk3399-roc-pc.dtsi      | 770 ++++++++++++++++++
>  5 files changed, 850 insertions(+), 757 deletions(-)
>  create mode 100644 arch/arm64/boot/dts/rockchip/rk3399-roc-pc-mezz.dts
>  create mode 100644 arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi
> 
> diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
> index bf86e8237363..e46af071a5fe 100644
> --- a/Documentation/devicetree/bindings/arm/rockchip.yaml
> +++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
> @@ -87,11 +87,16 @@ properties:
>            - const: firefly,roc-rk3328-cc
>            - const: rockchip,rk3328
>  
> -      - description: Firefly ROC-RK3399-PC
> +      - description: Firefly ROC-RK3399-PC standalone
>          items:
>            - const: firefly,roc-rk3399-pc
>            - const: rockchip,rk3399
>  
> +      - description: Firefly ROC-RK3399-PC with mezzanine
> +        items:
> +          - const: firefly,roc-rk3399-pc-mezz
> +          - const: rockchip,rk3399
> +

Please do this similar to like the NanoPC boards, so like

      - description: Firefly ROC-RK3399-PC
         items:
          - enum:
              - firefly,roc-rk3399-pc
              - firefly,roc-rk3399-pc-mezzanine
           - const: rockchip,rk3399

including using the full name (-mezzanine) here and in the
actual dts filename+compatible.

Thanks
Heiko
