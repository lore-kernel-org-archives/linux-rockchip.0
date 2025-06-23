Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 416ACC83000
	for <linux-rockchip@archiver.kernel.org>; Tue, 24 Jun 2025 01:38:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=1rr48666rbj3Piow8fjnTT1OszsBJJv7vTFal5fSUVg=; b=GBcgm4pxkklmCg74RQcSvDqvWA
	WehNfhKJ/GrnB1lWlevjSEXS6UxafTRjkxKnn9fkUtA0GlDHY3ijQIovft8v3Evc4x5eDbhIt1kER
	T8T9VyRlIAg2dp1EoWPblIfeGUATgq5jiW0WeDRyk/liEd7lFYEKbb9r/wSWwUtNpzgbgJdmxuUp8
	st30e0Hd/6LqwMQoeq52MgIWAiMQfkqOBkg4uWoVH3hAQixcKxlCE36FeFoXxGvxp8+hm9NJZUCDu
	RCpX4+4gmuV2usxF8sbKUgbpg2hL0YMfsq+6MmloqLw7iX4lkDkettEVz5DjebPbYR5eYC3I0uG8m
	qGt0UzQQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uTscJ-00000004Nek-1oUe;
	Tue, 24 Jun 2025 01:38:31 +0000
Received: from sender4-pp-f112.zoho.com ([136.143.188.112])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uTndO-00000003uiS-0YYw
	for linux-rockchip@lists.infradead.org;
	Mon, 23 Jun 2025 20:19:19 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1750709953; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=bkbF+nsxW+c2fu/pGDBxSBiZDscg8OZvZVf5mfnMZpNNS/w/sGTpXB43X/Q9LwlZjdO9Qg4lSg51rZnzVbuXHb6/D/y0Bwef4l9iaekQj9d4b9rr5+1X+RPDvcfgvHxcRclnMGvqotSpxUpGwWSFhe+oZHvh3A+rLJUPg6wj3Do=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1750709953; h=Content-Type:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=h8MtJKaV6LBmqUhsJAGXnQjLZJk41ZfDqmd1LYlum3E=; 
	b=SlCwsG1ggw48Nk/7WBjjcJSJTKTE9tGfDKo2ANk2UdV1IPzYtkZOTPkffVrnsyqDP8mplT5ENJi9bwHGdPbJTzcLJfwS2lVpg/jRokN/zychg2d0W6Wdjwi2+6BseK6SgoLMZ1FsoaDFLeVEYsWem/ajS7c3nUMupbXLU5sNRMI=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=sebastian.reichel@collabora.com;
	dmarc=pass header.from=<sebastian.reichel@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1750709953;
	s=zohomail; d=collabora.com; i=sebastian.reichel@collabora.com;
	h=Date:Date:From:From:To:To:Cc:Cc:Subject:Subject:Message-ID:References:MIME-Version:Content-Type:In-Reply-To:Message-Id:Reply-To;
	bh=h8MtJKaV6LBmqUhsJAGXnQjLZJk41ZfDqmd1LYlum3E=;
	b=WSRc4MDaVNZ74MnCc1pQiwzzIi5RHcnIi7xhTlHqJ08kHINdb4hGd9HeFKuiyfbc
	gpvhAiElpe+NzkHpiFquQ8f/n+Z75thvpXhv+zU1pVTr4X73980McLBrVQ8ZRO5mCkJ
	aGTspJnOS6HxTiqd44Gj5MOjmuNNlOakvIcx+PsQ=
Received: by mx.zohomail.com with SMTPS id 1750709950577845.0006651962747;
	Mon, 23 Jun 2025 13:19:10 -0700 (PDT)
Received: by venus (Postfix, from userid 1000)
	id D3DFE180AAB; Mon, 23 Jun 2025 22:19:05 +0200 (CEST)
Date: Mon, 23 Jun 2025 22:19:05 +0200
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Chris Morgan <macroalpha82@gmail.com>
Cc: linux-pm@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	devicetree@vger.kernel.org, broonie@kernel.org, lgirdwood@gmail.com, heiko@sntech.de, 
	conor+dt@kernel.org, krzk+dt@kernel.org, robh@kernel.org, lee@kernel.org, 
	Chris Morgan <macromorgan@hotmail.com>
Subject: Re: [PATCH V3 1/5] dt-bindings: mfd: ti,bq25703a: Add TI BQ25703A
 Charger
Message-ID: <5oeod74qqyfsxa6nqwafc6cfljaoh55yfyx2k73tudgwo5k5q5@4qvjgcmgbjpg>
References: <20250623162223.184304-1-macroalpha82@gmail.com>
 <20250623162223.184304-2-macroalpha82@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20250623162223.184304-2-macroalpha82@gmail.com>
X-Zoho-Virus-Status: 1
X-Zoho-Virus-Status: 1
X-Zoho-AV-Stamp: zmail-av-1.4.3/250.696.82
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250623_131918_235424_0424C13A 
X-CRM114-Status: GOOD (  18.95  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============3578789009280885452=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============3578789009280885452==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="udhuuq6bc53kdlcm"
Content-Disposition: inline


--udhuuq6bc53kdlcm
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH V3 1/5] dt-bindings: mfd: ti,bq25703a: Add TI BQ25703A
 Charger
MIME-Version: 1.0

Hi,

On Mon, Jun 23, 2025 at 11:22:19AM -0500, Chris Morgan wrote:
> From: Chris Morgan <macromorgan@hotmail.com>
>=20
> Document the Texas instruments BQ25703A series of charger managers/
> buck/boost regulators.
>=20
> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
> ---

Reviewed-by: Sebastian Reichel <sebastian.reichel@collabora.com>

Greetings,

-- Sebastian

>  .../devicetree/bindings/mfd/ti,bq25703a.yaml  | 121 ++++++++++++++++++
>  1 file changed, 121 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/mfd/ti,bq25703a.yaml
>=20
> diff --git a/Documentation/devicetree/bindings/mfd/ti,bq25703a.yaml b/Doc=
umentation/devicetree/bindings/mfd/ti,bq25703a.yaml
> new file mode 100644
> index 000000000000..0727f24b8e54
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/mfd/ti,bq25703a.yaml
> @@ -0,0 +1,121 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/mfd/ti,bq25703a.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: BQ25703A Charger Manager/Buck/Boost Converter
> +
> +maintainers:
> +  - Chris Morgan <macromorgan@hotmail.com>
> +
> +allOf:
> +  - $ref: /schemas/power/supply/power-supply.yaml#
> +
> +properties:
> +  compatible:
> +    const: ti,bq25703a
> +
> +  reg:
> +    const: 0x6b
> +
> +  interrupts:
> +    maxItems: 1
> +
> +  power-supplies: true
> +
> +  monitored-battery:
> +    description:
> +      The phandle for a simple-battery connected to this gauge.
> +      A minimum of constant-charge-current-max-microamp,
> +      constant-charge-voltage-max-microvolt, and
> +      voltage-min-design-microvolt are required.
> +
> +  input-current-limit-microamp:
> +    description:
> +      Maximum total input current allowed used for both charging and
> +      powering the device.
> +    minimum: 50000
> +    maximum: 6400000
> +    default: 3250000
> +
> +  regulators:
> +    type: object
> +    additionalProperties: false
> +    description:
> +      Boost converter regulator output of bq257xx.
> +
> +    properties:
> +      "usb-otg-vbus":
> +        type: object
> +        $ref: /schemas/regulator/regulator.yaml
> +
> +        properties:
> +          regulator-name: true
> +          regulator-min-microamp:
> +            minimum: 0
> +            maximum: 6350000
> +          regulator-max-microamp:
> +            minimum: 0
> +            maximum: 6350000
> +          regulator-min-microvolt:
> +            minimum: 4480000
> +            maximum: 20800000
> +          regulator-max-microvolt:
> +            minimum: 4480000
> +            maximum: 20800000
> +          enable-gpios:
> +            description:
> +              The BQ25703 may require both a register write and a GPIO
> +              toggle to enable the boost regulator.
> +
> +        additionalProperties: false
> +
> +        required:
> +          - regulator-name
> +          - regulator-min-microamp
> +          - regulator-max-microamp
> +          - regulator-min-microvolt
> +          - regulator-max-microvolt
> +
> +unevaluatedProperties: false
> +
> +required:
> +  - compatible
> +  - reg
> +  - input-current-limit-microamp
> +  - monitored-battery
> +  - power-supplies
> +
> +examples:
> +  - |
> +    #include <dt-bindings/gpio/gpio.h>
> +    #include <dt-bindings/interrupt-controller/irq.h>
> +    #include <dt-bindings/pinctrl/rockchip.h>
> +    i2c {
> +        #address-cells =3D <1>;
> +        #size-cells =3D <0>;
> +
> +        bq25703: charger@6b {
> +            compatible =3D "ti,bq25703a";
> +            reg =3D <0x6b>;
> +            input-current-limit-microamp =3D <5000000>;
> +            interrupt-parent =3D <&gpio0>;
> +            interrupts =3D <RK_PD5 IRQ_TYPE_LEVEL_LOW>;
> +            monitored-battery =3D <&battery>;
> +            power-supplies =3D <&fusb302>;
> +
> +            regulators {
> +                usb_otg_vbus: usb-otg-vbus {
> +                    enable-gpios =3D <&gpio4 RK_PA6 GPIO_ACTIVE_HIGH>;
> +                    regulator-max-microamp =3D <960000>;
> +                    regulator-max-microvolt =3D <5088000>;
> +                    regulator-min-microamp =3D <512000>;
> +                    regulator-min-microvolt =3D <4992000>;
> +                    regulator-name =3D "usb_otg_vbus";
> +                };
> +            };
> +        };
> +    };
> +
> +...
> --=20
> 2.43.0
>=20

--udhuuq6bc53kdlcm
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE72YNB0Y/i3JqeVQT2O7X88g7+poFAmhZtrUACgkQ2O7X88g7
+ppxkBAAmN2V9bGgWBb9mg1QmZkYemThuB92a6g1OBgXIYLvlP7YQ2phWa5UfJfy
h1VcsX9BmNDxPkUlbxCp0cw+rW6/eE7/WlBOs2Ga5lr65hGonoLvYqNWJ1ysMtZu
dtEKaJpT1L8+IO0/8THERH8LBDYtHjw+CDYzVLPG4kB+cao8k7n5aX4nyOVDDuRa
NR4FzLO5HNGO5HyMyeznGgwuDRlvjkGTJQDCGVa/ibF7yJU7G6jjZkzQoE+TALun
kIDY1v5eBHGhxV+dXYRYjE9xLf2GlLWbBkpCuHN3MgBGfslaO3AEAT6rfvA9yc6b
r/CcCM072idMz/oHMeWAlQVGgdXuSPzIl6r2qkGPAhGUwqNRJDI0qam/PGo4OiQ2
9ru1vLrz6z/Od3rmdO/Xo+sB4YlDugu4arFQzXUYWZAz5XaFieJL6EIsZ+snhYFO
UsdUc0DpeyT1L3oeDLaaxvg1wOyYR8vBKeIwjKFNwTBeSD7I2CSTZ91Y+2gwqLeX
dWJaKfMPEDHCeBBRjNZzgVZUBMKPL53xOQqVEbcFxybPVsunnMWJEp4uEJfslqTt
dsOZ4/Op+a7ZU1iOSLWQAoPjUCT8TXfe18ueO8VMlpbqjtUKcI/fUMLrRBIUcZA2
rhISTn4OXcdeyZ9iG/VnOmGeekCD+BrCEL/ma2W1ziBHeh9Ajj0=
=4zuD
-----END PGP SIGNATURE-----

--udhuuq6bc53kdlcm--


--===============3578789009280885452==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============3578789009280885452==--

