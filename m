From: Rob Herring <robh@kernel.org>
Subject: Re: [PATCH v2 1/6] dt-bindings: arm: rockchip: Update ROCKPi 4 with
 4A binding
Date: Thu, 23 Jul 2020 14:22:07 -0600
Message-ID: <20200723202207.GA794123@bogus>
References: <20200722190949.215656-1-jagan@amarulasolutions.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Return-path: <linux-kernel-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <20200722190949.215656-1-jagan@amarulasolutions.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Jagan Teki <jagan@amarulasolutions.com>
Cc: Heiko Stuebner <heiko@sntech.de>, Suniel Mahesh <sunil@amarulasolutions.com>, Michael Trimarchi <michael@amarulasolutions.com>, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-amarula <linux-amarula@amarulasolutions.com>
List-Id: linux-rockchip.vger.kernel.org

On Thu, Jul 23, 2020 at 12:39:44AM +0530, Jagan Teki wrote:
> ROCKPi 4 has 3 variants of hardware platforms called
> ROCKPi 4A, 4B, and 4C.
> 
> - ROCKPi 4A has no Wif/BT.
> - ROCKPi 4B has AP6256 Wifi/BT, PoE.
> - ROCKPi 4C has AP6256 Wifi/BT, PoE, miniDP, USB Host enabled
>   GPIO pin change compared to 4B, 4C
> 
> So, update the existing ROCKPi 4 with ROCKPi 4A binding.
> 
> Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
> ---
> Changes for v2:
> - new patch
> 
>  Documentation/devicetree/bindings/arm/rockchip.yaml | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
> index 41f919de1ad4..36057c9e4b83 100644
> --- a/Documentation/devicetree/bindings/arm/rockchip.yaml
> +++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
> @@ -442,9 +442,10 @@ properties:
>            - const: radxa,rock
>            - const: rockchip,rk3188
>  
> -      - description: Radxa ROCK Pi 4
> +      - description: Radxa ROCK Pi 4A
>          items:
>            - const: radxa,rockpi4
> +          - const: radxa,rockpi4a
>            - const: rockchip,rk3399

That's not what I suggested. And this is just wrong as the order is most 
specific to least specific.

This is what I suggest:

items:
  - enum:
      - radxa,rockpi4    # ROCK Pi 4A
      - radxa,rockpi4b
      - radxa,rockpi4c
  - const: rockchip,rk3399

>  
>        - description: Radxa ROCK Pi N8
> -- 
> 2.25.1
> 
