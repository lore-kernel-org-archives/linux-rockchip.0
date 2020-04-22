From: Rob Herring <robh-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>
Subject: Re: [PATCH v7 5/8] dt-bindings: display: add i.MX6 MIPI DSI host
 controller doc
Date: Wed, 22 Apr 2020 14:42:31 -0500
Message-ID: <20200422194231.GA6333@bogus>
References: <20200421161610.1501827-1-adrian.ratiu@collabora.com>
 <20200421161610.1501827-6-adrian.ratiu@collabora.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Return-path: <devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <20200421161610.1501827-6-adrian.ratiu-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
Sender: devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: Adrian Ratiu <adrian.ratiu-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
Cc: linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, devicetree-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, Jernej Skrabec <jernej.skrabec-gGgVlfcn5nU@public.gmane.org>, Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, Jonas Karlman <jonas-uIzNG4q0ceqzQB+pC5nmwQ@public.gmane.org>, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, dri-devel-PD4FTy7X32lNgt0PjOBp9y5qC8QIuHrW@public.gmane.org, Andrzej Hajda <a.hajda-Sze3O3UU22JBDgjK7y7TUQ@public.gmane.org>, Laurent Pinchart <Laurent.pinchart-ryLnwIuWjnjg/C1BVhZhaw@public.gmane.org>, kernel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org, linux-stm32-XDFAJ8BFU24N7RejjzZ/Li2xQDfSxrLKVpNB7YpNyf8@public.gmane.org, linux-imx-3arQi8VN3Tc@public.gmane.org, Neil Armstrong <narmstrong-rdvid1DuHRBWk0Htik3J/w@public.gmane.org>, Fabio Estevam <festevam-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Laurent Pinchart <laurent.pinchart-ryLnwIuWjnjg/C1BVhZhaw@public.gmane.org>, Adrian Pop <pop.adrian61-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Arnaud Ferraris <arnaud.ferraris-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>, Sjoerd Simons <sjoerd.simons-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>, Martyn Welch <martyn.welch-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

On Tue, 21 Apr 2020 19:16:07 +0300, Adrian Ratiu wrote:
> This provides an example DT binding for the MIPI DSI host controller
> present on the i.MX6 SoC based on Synopsis DesignWare v1.01 IP.
> 
> Cc: Rob Herring <robh-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>
> Cc: Neil Armstrong <narmstrong-rdvid1DuHRBWk0Htik3J/w@public.gmane.org>
> Cc: Fabio Estevam <festevam-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> Cc: Laurent Pinchart <laurent.pinchart-ryLnwIuWjnjg/C1BVhZhaw@public.gmane.org>
> Cc: devicetree-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
> Tested-by: Adrian Pop <pop.adrian61-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> Tested-by: Arnaud Ferraris <arnaud.ferraris-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
> Signed-off-by: Sjoerd Simons <sjoerd.simons-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
> Signed-off-by: Martyn Welch <martyn.welch-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
> Signed-off-by: Adrian Ratiu <adrian.ratiu-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
> ---
> Changes since v6:
>   - Added ref to the newly created snps,dw-mipi-dsi.yaml (Laurent)
>   - Moved *-cells properties outside patternProperties (Laurent)
>   - Removed the panel port documentation (Laurent)
>   - Wrapped lines at 80 chars, typo fixes, sort includes (Laurent)
> 
> Changes since v5:
>   - Fixed missing reg warning (Fabio)
>   - Updated dt-schema and fixed warnings (Rob)
> 
> Changes since v4:
>   - Fixed yaml binding to pass `make dt_binding_check dtbs_check`
>   and addressed received binding feedback (Rob)
> 
> Changes since v3:
>   - Added commit message (Neil)
>   - Converted to yaml format (Neil)
>   - Minor dt node + driver fixes (Rob)
>   - Added small panel example to the host controller binding
> 
> Changes since v2:
>   - Fixed commit tags (Emil)
> ---
>  .../display/imx/fsl,mipi-dsi-imx6.yaml        | 135 ++++++++++++++++++
>  1 file changed, 135 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/display/imx/fsl,mipi-dsi-imx6.yaml
> 

My bot found errors running 'make dt_binding_check' on your patch:

Unknown file referenced: [Errno 2] No such file or directory: '/usr/local/lib/python3.6/dist-packages/dtschema/schemas/display/bridge/snps,dw-mipi-dsi.yaml'
Documentation/devicetree/bindings/Makefile:11: recipe for target 'Documentation/devicetree/bindings/display/imx/fsl,mipi-dsi-imx6.example.dts' failed
make[1]: *** [Documentation/devicetree/bindings/display/imx/fsl,mipi-dsi-imx6.example.dts] Error 255
make[1]: *** Waiting for unfinished jobs....
Makefile:1300: recipe for target 'dt_binding_check' failed
make: *** [dt_binding_check] Error 2

See https://patchwork.ozlabs.org/patch/1274360

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure dt-schema is up to date:

pip3 install git+https://github.com/devicetree-org/dt-schema.git@master --upgrade

Please check and re-submit.
