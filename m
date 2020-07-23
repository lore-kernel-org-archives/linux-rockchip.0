From: Rob Herring <robh-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>
Subject: Re: [PATCH v3 1/4] dt-bindings: arm: rockchip: Update ROCKPi 4
 binding
Date: Thu, 23 Jul 2020 09:51:49 -0600
Message-ID: <20200723155149.GA436360@bogus>
References: <20200723090210.41201-1-jagan@amarulasolutions.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Return-path: <devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <20200723090210.41201-1-jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
Sender: devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
Cc: linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, Michael Trimarchi <michael-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>, Suniel Mahesh <sunil-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-amarula <linux-amarula-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>, devicetree-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, Rob Herring <robh+dt-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>, Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

On Thu, 23 Jul 2020 14:32:07 +0530, Jagan Teki wrote:
> ROCKPi 4 has 3 variants of hardware platforms called
> ROCKPi 4A, 4B, and 4C.
> 
> - ROCKPi 4A has no Wif/BT.
> - ROCKPi 4B has AP6256 Wifi/BT, PoE.
> - ROCKPi 4C has AP6256 Wifi/BT, PoE, miniDP, USB Host enabled
>   GPIO pin change compared to 4B, 4C
> 
> So, update the existing ROCKPi 4 binding to support
> ROCKPi 4A/B/C hardware platforms.
> 
> Signed-off-by: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
> ---
> Changes for v3:
> - new patch
> 
>  Documentation/devicetree/bindings/arm/rockchip.yaml | 6 +++++-
>  1 file changed, 5 insertions(+), 1 deletion(-)
> 


My bot found errors running 'make dt_binding_check' on your patch:

/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/arm/rockchip.yaml: properties:compatible:oneOf:48:items: [{'enum': [{'const': 'radxa,rockpi4a'}, {'const': 'radxa,rockpi4b'}, {'const': 'radxa,rockpi4c'}]}, {'const': 'radxa,rockpi4'}, {'const': 'rockchip,rk3399'}] is not valid under any of the given schemas (Possible causes of the failure):
	/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/arm/rockchip.yaml: properties:compatible:oneOf:48:items: [{'enum': [{'const': 'radxa,rockpi4a'}, {'const': 'radxa,rockpi4b'}, {'const': 'radxa,rockpi4c'}]}, {'const': 'radxa,rockpi4'}, {'const': 'rockchip,rk3399'}] is not of type 'object'
	/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/arm/rockchip.yaml: properties:compatible:oneOf:48:items:0:enum:0: {'const': 'radxa,rockpi4a'} is not of type 'string'
	/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/arm/rockchip.yaml: properties:compatible:oneOf:48:items:0:enum:1: {'const': 'radxa,rockpi4b'} is not of type 'string'
	/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/arm/rockchip.yaml: properties:compatible:oneOf:48:items:0:enum:2: {'const': 'radxa,rockpi4c'} is not of type 'string'

Documentation/devicetree/bindings/Makefile:20: recipe for target 'Documentation/devicetree/bindings/arm/rockchip.example.dts' failed
make[1]: *** [Documentation/devicetree/bindings/arm/rockchip.example.dts] Error 1
make[1]: *** Waiting for unfinished jobs....
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/arm/rockchip.yaml: ignoring, error in schema: properties: compatible: oneOf: 48: items
warning: no schema found in file: ./Documentation/devicetree/bindings/arm/rockchip.yaml
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/arm/rockchip.yaml: ignoring, error in schema: properties: compatible: oneOf: 48: items
warning: no schema found in file: ./Documentation/devicetree/bindings/arm/rockchip.yaml
Makefile:1347: recipe for target 'dt_binding_check' failed
make: *** [dt_binding_check] Error 2


See https://patchwork.ozlabs.org/patch/1334641

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure dt-schema is up to date:

pip3 install git+https://github.com/devicetree-org/dt-schema.git@master --upgrade

Please check and re-submit.
