From: Jonathan Cameron <jic23-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>
Subject: Re: [PATCH v1 1/3] dt-bindings: iio: adc: convert rockchip saradc
 bindings to yaml
Date: Sun, 15 Mar 2020 14:31:09 +0000
Message-ID: <20200315143109.5474434b@archlinux>
References: <20200313132926.10543-1-jbx6244@gmail.com>
        <20200315112223.07dd863b@archlinux>
        <1892398.6xOoJH07Ba@diego>
Mime-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
Return-path: <linux-iio-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <1892398.6xOoJH07Ba@diego>
Sender: linux-iio-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Cc: Johan Jonker <jbx6244-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, knaack.h-Mmb7MZpHnFY@public.gmane.org, lars-Qo5EllUWu/uELgA04lAiVw@public.gmane.org, pmeerw-jW+XmwGofnusTnJN9+BGXg@public.gmane.org, robh+dt-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org, linux-iio-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, devicetree-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

On Sun, 15 Mar 2020 15:09:56 +0100
Heiko St=C3=BCbner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org> wrote:

> Hi Jonathan,
>=20
> Am Sonntag, 15. M=C3=A4rz 2020, 12:22:23 CET schrieb Jonathan Cameron:
> > On Fri, 13 Mar 2020 14:29:24 +0100
> > Johan Jonker <jbx6244-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org> wrote:
> >=20
> > > Current dts files with 'saradc' nodes are manually verified.
> > > In order to automate this process rockchip-saradc.txt
> > > has to be converted to yaml.
> > >=20
> > > Signed-off-by: Johan Jonker <jbx6244-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> >=20
> > Hi Johan,
> >=20
> > A question inline which may just be my lack of yaml knowledge
> > showing itself!
> >=20
> > Jonathan
> >=20
> > > ---
> > >  .../bindings/iio/adc/rockchip-saradc.txt           | 37 ----------
> > >  .../bindings/iio/adc/rockchip-saradc.yaml          | 79 ++++++++++++=
++++++++++
> > >  2 files changed, 79 insertions(+), 37 deletions(-)
> > >  delete mode 100644 Documentation/devicetree/bindings/iio/adc/rockchi=
p-saradc.txt
> > >  create mode 100644 Documentation/devicetree/bindings/iio/adc/rockchi=
p-saradc.yaml
> > >=20
> > > diff --git a/Documentation/devicetree/bindings/iio/adc/rockchip-sarad=
c.txt b/Documentation/devicetree/bindings/iio/adc/rockchip-saradc.txt
> > > deleted file mode 100644
> > > index c2c50b598..000000000
> > > --- a/Documentation/devicetree/bindings/iio/adc/rockchip-saradc.txt
> > > +++ /dev/null
> > > @@ -1,37 +0,0 @@
> > > -Rockchip Successive Approximation Register (SAR) A/D Converter bindi=
ngs
> > > -
> > > -Required properties:
> > > -- compatible: should be "rockchip,<name>-saradc" or "rockchip,rk3066=
-tsadc"
> > > -   - "rockchip,saradc": for rk3188, rk3288
> > > -   - "rockchip,rk3066-tsadc": for rk3036
> > > -   - "rockchip,rk3328-saradc", "rockchip,rk3399-saradc": for rk3328
> > > -   - "rockchip,rk3399-saradc": for rk3399
> > > -   - "rockchip,rv1108-saradc", "rockchip,rk3399-saradc": for rv1108
> > > -
> > > -- reg: physical base address of the controller and length of memory =
mapped
> > > -       region.
> > > -- interrupts: The interrupt number to the cpu. The interrupt specifi=
er format
> > > -              depends on the interrupt controller.
> > > -- clocks: Must contain an entry for each entry in clock-names.
> > > -- clock-names: Shall be "saradc" for the converter-clock, and "apb_p=
clk" for
> > > -               the peripheral clock.
> > > -- vref-supply: The regulator supply ADC reference voltage.
> > > -- #io-channel-cells: Should be 1, see ../iio-bindings.txt
> > > -
> > > -Optional properties:
> > > -- resets: Must contain an entry for each entry in reset-names if nee=
d support
> > > -	  this option. See ../reset/reset.txt for details.
> > > -- reset-names: Must include the name "saradc-apb".
> > > -
> > > -Example:
> > > -	saradc: saradc@2006c000 {
> > > -		compatible =3D "rockchip,saradc";
> > > -		reg =3D <0x2006c000 0x100>;
> > > -		interrupts =3D <GIC_SPI 26 IRQ_TYPE_LEVEL_HIGH>;
> > > -		clocks =3D <&cru SCLK_SARADC>, <&cru PCLK_SARADC>;
> > > -		clock-names =3D "saradc", "apb_pclk";
> > > -		resets =3D <&cru SRST_SARADC>;
> > > -		reset-names =3D "saradc-apb";
> > > -		#io-channel-cells =3D <1>;
> > > -		vref-supply =3D <&vcc18>;
> > > -	};
> > > diff --git a/Documentation/devicetree/bindings/iio/adc/rockchip-sarad=
c.yaml b/Documentation/devicetree/bindings/iio/adc/rockchip-saradc.yaml
> > > new file mode 100644
> > > index 000000000..2908788b3
> > > --- /dev/null
> > > +++ b/Documentation/devicetree/bindings/iio/adc/rockchip-saradc.yaml
> > > @@ -0,0 +1,79 @@
> > > +# SPDX-License-Identifier: GPL-2.0
> > > +%YAML 1.2
> > > +---
> > > +$id: http://devicetree.org/schemas/iio/adc/rockchip-saradc.yaml#
> > > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > > +
> > > +title: Rockchip Successive Approximation Register (SAR) A/D Converter
> > > +
> > > +maintainers:
> > > +  - Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
> > > +
> > > +properties:
> > > +  compatible:
> > > +    oneOf:
> > > +      - const: rockchip,saradc
> > > +      - const: rockchip,rk3066-tsadc
> > > +      - const: rockchip,rk3399-saradc
> > > +      - items:
> > > +          - enum:
> > > +            - rockchip,rk3328-saradc
> > > +            - rockchip,rv1108-saradc
> > > +          - const: rockchip,rk3399-saradc
> >=20
> > My yaml knowledge isn't great.  Why do we have this nested
> > structure rather than a straight forward list?
>=20
> That should be the
> - one of rk3328-saradc / rv1108-saradc
> - plus always rk3399-saradc
>=20
> i.e. both rk3328 and rv1108 are compatible with the rk3399-saradc variant
> (at least if no flaws get found at some point) so have the double compati=
ble
>=20
> compatible =3D "rockchip,rk3328-saradc", "rockchip,rk3399-saradc"
> compatible =3D "rockchip,rv1108-saradc", "rockchip,rk3399-saradc"
Ah. That makes sense.  Thanks to Johan as well for the explanation he sent

Thanks,

Jonathan

>=20
>=20
> Heiko
>=20
>=20
> > > +
> > > +  reg:
> > > +    maxItems: 1
> > > +
> > > +  interrupts:
> > > +    maxItems: 1
> > > +
> > > +  clocks:
> > > +    items:
> > > +      - description: converter clock
> > > +      - description: peripheral clock
> > > +
> > > +  clock-names:
> > > +    items:
> > > +      - const: saradc
> > > +      - const: apb_pclk
> > > +
> > > +  resets:
> > > +    maxItems: 1
> > > +
> > > +  reset-names:
> > > +    const: saradc-apb
> > > +
> > > +  vref-supply:
> > > +    description:
> > > +      The regulator supply for the ADC reference voltage.
> > > +
> > > +  "#io-channel-cells":
> > > +    const: 1
> > > +
> > > +required:
> > > +  - compatible
> > > +  - reg
> > > +  - interrupts
> > > +  - clocks
> > > +  - clock-names
> > > +  - vref-supply
> > > +  - "#io-channel-cells"
> > > +
> > > +additionalProperties: false
> > > +
> > > +examples:
> > > +  - |
> > > +    #include <dt-bindings/clock/rk3288-cru.h>
> > > +    #include <dt-bindings/interrupt-controller/arm-gic.h>
> > > +    #include <dt-bindings/interrupt-controller/irq.h>
> > > +    saradc: saradc@2006c000 {
> > > +      compatible =3D "rockchip,saradc";
> > > +      reg =3D <0x2006c000 0x100>;
> > > +      interrupts =3D <GIC_SPI 26 IRQ_TYPE_LEVEL_HIGH>;
> > > +      clocks =3D <&cru SCLK_SARADC>, <&cru PCLK_SARADC>;
> > > +      clock-names =3D "saradc", "apb_pclk";
> > > +      resets =3D <&cru SRST_SARADC>;
> > > +      reset-names =3D "saradc-apb";
> > > +      vref-supply =3D <&vcc18>;
> > > +      #io-channel-cells =3D <1>;
> > > +    };
> >=20
> >=20
>=20
>=20
>=20
>=20
