From: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Subject: Re: [PATCH v2 2/3] dt-bindings: display: panel: Add binding document for Elida KD35T133
Date: Sat, 29 Feb 2020 15:56:26 +0100
Message-ID: <12676917.Ei69fZKULH@phil>
References: <20200225093913.415844-1-heiko@sntech.de> <20200225093913.415844-2-heiko@sntech.de> <20200229125052.GB5447@ravnborg.org>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7Bit
Return-path: <devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20200229125052.GB5447-uyr5N9Q2VtJg9hUCZPvPmw@public.gmane.org>
Sender: devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: Sam Ravnborg <sam-uyr5N9Q2VtJg9hUCZPvPmw@public.gmane.org>
Cc: dri-devel-PD4FTy7X32lNgt0PjOBp9y5qC8QIuHrW@public.gmane.org, thierry.reding-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org, robh+dt-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org, devicetree-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, mark.rutland-5wv7dgnIgG8@public.gmane.org, christoph.muellner-SN7IsUiht6C/RdPyistoZJqQE7yCjDx5@public.gmane.org, robin.murphy-5wv7dgnIgG8@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

Hi Sam,

Am Samstag, 29. Februar 2020, 13:50:52 CET schrieb Sam Ravnborg:
> Hi Heiko.
> 
> On Tue, Feb 25, 2020 at 10:39:12AM +0100, Heiko Stuebner wrote:
> > From: Heiko Stuebner <heiko.stuebner-SN7IsUiht6C/RdPyistoZJqQE7yCjDx5@public.gmane.org>
> > 
> > The KD35T133 is a 3.5" 320x480 DSI display used in the RK3326-based
> > Odroid Go Advance handheld device.
> > 
> > Signed-off-by: Heiko Stuebner <heiko.stuebner-SN7IsUiht6C/RdPyistoZJqQE7yCjDx5@public.gmane.org>
> 
> One small comment, but anyway:
> 
> Reviewed-by: Sam Ravnborg <sam-uyr5N9Q2VtJg9hUCZPvPmw@public.gmane.org>
> > ---
> >  .../display/panel/elida,kd35t133.yaml         | 49 +++++++++++++++++++
> >  1 file changed, 49 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/display/panel/elida,kd35t133.yaml
> > 
> > diff --git a/Documentation/devicetree/bindings/display/panel/elida,kd35t133.yaml b/Documentation/devicetree/bindings/display/panel/elida,kd35t133.yaml
> > new file mode 100644
> > index 000000000000..4bd74eaa61be
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/display/panel/elida,kd35t133.yaml
> > @@ -0,0 +1,49 @@
> > +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/display/panel/elida,kd35t133.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: Elida KD35T133 3.5in 320x480 DSI panel
> > +
> > +maintainers:
> > +  - Heiko Stuebner <heiko.stuebner-SN7IsUiht6C/RdPyistoZJqQE7yCjDx5@public.gmane.org>
> > +
> > +allOf:
> > +  - $ref: panel-common.yaml#
> > +
> > +properties:
> > +  compatible:
> > +    const: elida,kd35t133
> > +  reg: true
> > +  backlight: true
> > +  reset-gpios: true
> > +  iovcc-supply:
> > +     description: regulator that supplies the iovcc voltage
> > +  vdd-supply:
> > +     description: regulator that supplies the vdd voltage
> > +
> > +required:
> > +  - compatible
> > +  - reg
> > +  - backlight
> Is backlight really required? If it is tied to for example vcc then
> there is nothing to express in the DT.

Not sure I follow. On the Odroid Go Advance (device in question)
the backlight is provided by a (adjustable) pwm-backlight.

So of course for probability it is not required by at least to make the
display usable it is ;-)

Heiko

> 
> 	Sam
> 
> > +  - iovcc-supply
> > +  - vdd-supply
> > +
> > +additionalProperties: false
> > +
> > +examples:
> > +  - |
> > +    dsi@ff450000 {
> > +        #address-cells = <1>;
> > +        #size-cells = <0>;
> > +        panel@0 {
> > +            compatible = "elida,kd35t133";
> > +            reg = <0>;
> > +            backlight = <&backlight>;
> > +            iovcc-supply = <&vcc_1v8>;
> > +            vdd-supply = <&vcc3v3_lcd>;
> > +        };
> > +    };
> > +
> > +...
> 
