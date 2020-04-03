From: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Subject: Re: [PATCH 1/3] media: dt-bindings: media: Document Rockchip CIF bindings
Date: Fri, 03 Apr 2020 18:25:05 +0200
Message-ID: <1766530.2SdDkCQg1P@phil>
References: <20200403142122.297283-1-maxime.chevallier@bootlin.com> <20200403142122.297283-2-maxime.chevallier@bootlin.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7Bit
Return-path: <devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20200403142122.297283-2-maxime.chevallier-LDxbnhwyfcJBDgjK7y7TUQ@public.gmane.org>
Sender: devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: Maxime Chevallier <maxime.chevallier-LDxbnhwyfcJBDgjK7y7TUQ@public.gmane.org>
Cc: Mauro Carvalho Chehab <mchehab-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>, Rob Herring <robh+dt-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>, Mark Rutland <mark.rutland-5wv7dgnIgG8@public.gmane.org>, Hans Verkuil <hverkuil-cisco-qWit8jRvyhVmR6Xm/wNWPw@public.gmane.org>, linux-media-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, devicetree-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, Thomas Petazzoni <thomas.petazzoni-LDxbnhwyfcJBDgjK7y7TUQ@public.gmane.org>, Miquel Raynal <miquel.raynal-LDxbnhwyfcJBDgjK7y7TUQ@public.gmane.org>, Paul Kocialkowski <paul.kocialkowski-LDxbnhwyfcJBDgjK7y7TUQ@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

Hi Maxime,

Am Freitag, 3. April 2020, 16:21:20 CEST schrieb Maxime Chevallier:
> Add a documentation for the Rockchip Camera Interface controller
> binding.
> 
> This controller can be found on platforms such as the PX30 or the
> RK3288, the PX30 being the only platform supported so far.
> 
> Signed-off-by: Maxime Chevallier <maxime.chevallier-LDxbnhwyfcJBDgjK7y7TUQ@public.gmane.org>
> ---
>  .../bindings/media/rockchip-cif.yaml          | 98 +++++++++++++++++++
>  1 file changed, 98 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/media/rockchip-cif.yaml
> 
> diff --git a/Documentation/devicetree/bindings/media/rockchip-cif.yaml b/Documentation/devicetree/bindings/media/rockchip-cif.yaml
> new file mode 100644
> index 000000000000..87fb5e136edd
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/media/rockchip-cif.yaml
> @@ -0,0 +1,98 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/media/rockchip-cif.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Rockchip Camera Interface (CIF)
> +
> +maintainers:
> +  - Maxime Chevallier <maxime.chevallier-LDxbnhwyfcJBDgjK7y7TUQ@public.gmane.org>
> +
> +description: |-
> +Camera Interface for Rockcip platforms
> +
> +properties:
> +  compatible:
> +    const: rockchip,px30-cif
> +
> +  reg:
> +    maxItems: 1
> +
> +  interrupts:
> +    maxItems: 1
> +
> +  clocks:
> +    items:
> +      - description: ACLK
> +      - description: HCLK
> +      - description: PCLK
> +      - description: CIF_OUT
> +
> +  clock-names:
> +    items:
> +      - const: aclk_cif
> +      - const: hclk_cif
> +      - const: pclk_cif
> +      - const: cif_out

names for clocks / reset are always local to the node/ip-block
so there is no need to have that _cif in them.

Also the pclk isn't coming from the cru but from some external source
at least on px30 and rk3288 (and I guess others as well), so maybe
that deserves a distinct name.

Maybe something like aclk, hclk, pclkin or so?

Also the cif_out clock is not actual part of the CIF block, on both
the rk3288 and px30 (and probably the others too) it is generated
in the SoC's clock controller and then just led to an output-pin on
the soc, so I'd assume a peripheral wanting to use that would take
care of setting+enabling that clock (similar to the i2s mclk)?


> +
> +  resets:
> +    items:
> +      - description: Reset CIF A
> +      - description: Reset CIF H
> +      - description: Reset CIF PCLK IN
> +
> +  reset-names:
> +    items:
> +      - const: rst_cif_a
> +      - const: rst_cif_h
> +      - const: rst_cif_pclkin

Same here, maybe just "axi", "ahb", "pclkin" like the
vop resets do?


Heiko
