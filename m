Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 24D13C77B7C
	for <linux-rockchip@archiver.kernel.org>; Sun, 22 Jun 2025 22:47:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=9R6098RV6GyIY/c0IDo0jt4MHKnjAIuVqQ/+FZcDJ08=; b=z8sB7HZ8DCjslkEYzGHfXh1GWX
	OopbpX/eEbbYUX3DZuvgNDeqr62jaVtNnKH1i9jDjrcUMrCbwwIEK+KQTPHHJCB2dUq5jefgx8x4r
	0+oDUT3JJhxq5mXufNJMmeOEuaK7PLhP0nbmLSS56HiO+Zfaxg6iG27K23OjcHizucfDo+YbC92dI
	hedR+eZ20v/DwO3HY19Jl4jnIz5PRVKlvM7xgCcE8F0+r0FzVzzUMUWlxy4UmRQHV1rwiBrSJ88OS
	X7hIHarErpH/cK0ub9xEXgqAA5r5ius2csg0k4/wzwb+4QhJbPLQN+9t6vYW/0VY3WQHUEn7LWg+0
	JVL6Wq/g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uTTTS-00000001ItK-1cXg;
	Sun, 22 Jun 2025 22:47:42 +0000
Received: from sender4-pp-f112.zoho.com ([136.143.188.112])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uTTTP-00000001Isz-1q5I
	for linux-rockchip@lists.infradead.org;
	Sun, 22 Jun 2025 22:47:40 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1750632453; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=aSNmAaBWGqwYm5ifpqxKARKFH+sOltOQq30OC8NKHmR1nLAzptQBx3/R98ov+ao4W6zDQfzdUoAX5TYz53FmpQFW3Uh7MO6OZAsdaNKNkQnJgF3Bbacg4UsvNrilbnznuBlMwbKBxDIU4wZzz9pKajNt0HEp4mdTV0BmanXiIIo=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1750632453; h=Content-Type:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=FLTDefBRu7uvHjg2VxiCdIswI1ScktAYB8JH2A31wgk=; 
	b=b7oabcZzw6M17kbEzgmfW4y2D97rm55cVEH83xUGV5GPhjJVwGJyPQJb5cwaoX0iQ6u54/ePy+JRDjtKOEcnnqVgXZBwhSnoaKbccCNZ5R+wMymFSpP8DDW5F2z1qw42t/+I14zU4j7QARAbgOsWz8VYhp9bCsA27OwRFjMqxwI=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=sebastian.reichel@collabora.com;
	dmarc=pass header.from=<sebastian.reichel@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1750632453;
	s=zohomail; d=collabora.com; i=sebastian.reichel@collabora.com;
	h=Date:Date:From:From:To:To:Cc:Cc:Subject:Subject:Message-ID:References:MIME-Version:Content-Type:In-Reply-To:Message-Id:Reply-To;
	bh=FLTDefBRu7uvHjg2VxiCdIswI1ScktAYB8JH2A31wgk=;
	b=RQd+iyQEYfvrCkIu6E+Df53JBVIvOAw88bgsqt6TSpQgEFTk0D2pFBL/6kxfNW3R
	7rD7WNYn6kZ/YBpT1voidYP1eCMR5C1xq7QfpWBpWfDJwGkFnVoRt/dAilkhH0ZSO8Z
	dpmwt7Bq8FMB5l99Beq/X00Fha5JqvCn3yAsYFQ0=
Received: by mx.zohomail.com with SMTPS id 1750632450810618.0680305123891;
	Sun, 22 Jun 2025 15:47:30 -0700 (PDT)
Received: by venus (Postfix, from userid 1000)
	id B8606180956; Mon, 23 Jun 2025 00:47:26 +0200 (CEST)
Date: Mon, 23 Jun 2025 00:47:26 +0200
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Chris Morgan <macroalpha82@gmail.com>
Cc: linux-pm@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	devicetree@vger.kernel.org, broonie@kernel.org, lgirdwood@gmail.com, heiko@sntech.de, 
	conor+dt@kernel.org, krzk+dt@kernel.org, robh@kernel.org, lee@kernel.org, 
	Chris Morgan <macromorgan@hotmail.com>
Subject: Re: [PATCH V2 1/5] dt-bindings: mfd: ti,bq25703a: Add TI BQ25703A
 Charger
Message-ID: <hfpcsyaaywtqk6j74pjquqw5zbgiy4msqf4uzvp5zk4d2ndko3@ogjl6w5queeh>
References: <20250621180119.163423-1-macroalpha82@gmail.com>
 <20250621180119.163423-2-macroalpha82@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20250621180119.163423-2-macroalpha82@gmail.com>
X-Zoho-Virus-Status: 1
X-Zoho-Virus-Status: 1
X-Zoho-AV-Stamp: zmail-av-1.4.3/250.624.82
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250622_154739_514388_03643BCD 
X-CRM114-Status: GOOD (  19.19  )
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
Content-Type: multipart/mixed; boundary="===============3158601073143826052=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============3158601073143826052==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="4rnet4dgd5gakwez"
Content-Disposition: inline


--4rnet4dgd5gakwez
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH V2 1/5] dt-bindings: mfd: ti,bq25703a: Add TI BQ25703A
 Charger
MIME-Version: 1.0

Hi,

On Sat, Jun 21, 2025 at 01:01:15PM -0500, Chris Morgan wrote:
> From: Chris Morgan <macromorgan@hotmail.com>
>=20
> Document the Texas instruments BQ25703A series of charger managers/
> buck/boost regulators.
>=20
> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
> ---
>  .../devicetree/bindings/mfd/ti,bq25703a.yaml  | 123 ++++++++++++++++++
>  1 file changed, 123 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/mfd/ti,bq25703a.yaml
>=20
> diff --git a/Documentation/devicetree/bindings/mfd/ti,bq25703a.yaml b/Doc=
umentation/devicetree/bindings/mfd/ti,bq25703a.yaml
> new file mode 100644
> index 000000000000..baaeadc2a3ab
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/mfd/ti,bq25703a.yaml
> @@ -0,0 +1,123 @@
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
> +properties:
> +  compatible:
> +    const: ti,bq25703a
> +
> +  reg:
> +    const: 0x6b
> +    description: I2C slave address

You can drop the description here.

> +  interrupts:
> +    maxItems: 1
> +
> +  power-supplies:
> +    description:
> +      The phandle for a power supply that provides input power.
> +    $ref: /schemas/types.yaml#/definitions/phandle
> +

allOf:
  - $ref: /schemas/power/supply/power-supply.yaml#

power-supplies: true

> +  monitored-battery:
> +    description:
> +      The phandle for a simple-battery connected to this gauge.
> +      A minimum of constant-charge-current-max-microamp,
> +      constant-charge-voltage-max-microvolt, and
> +      voltage-min-design-microvolt are required.
> +    $ref: /schemas/types.yaml#/definitions/phandle

Drop the $ref here, once power-supply.yaml is referenced.

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
> +additionalProperties: false

You need to use "unevaluatedProperties: false" instead once the
power-supply.yaml is referenced.

Greetings,

-- Sebastian

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

--4rnet4dgd5gakwez
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE72YNB0Y/i3JqeVQT2O7X88g7+poFAmhYh/4ACgkQ2O7X88g7
+prdJw//fzLDc4jjhLjYmLF04He7wbFHMpnbSMSY1oy8fIsi6cW5KdjP+cMFpLNl
t/hBEl13gAPdzyy0WbRURG1StcoInXOD7wrFEgEivby5WuO7QxcgeWlEqJ9k6O/i
TqdsZCxleByn/KRgP2NdXfsF463Ss2wKj6pe3VoxZpogzmal9NXG2fYHUtr2k69k
pas+hMPq2sj9L5X4R7eGNVVr/kNAPosOHSNp023Fwjsoymckgw87m4FwUwY2N00+
J+UwOYNEehnXjMqotz48W6pmyqUatXSKTzWo9y2cxYo6sYB3QRcmCvQQ+z+znIzJ
g1ofNo+WK72StrPs4j8583sXloOaBvTHtKQMeW2F/DPlLABZFOwJUtTDyKNA7Mag
/MfUNJozgc5Np722xJYSiHriIgwcXc6JP8hX6aVwISMSYMKXgI3RX9ywJS1kGGxo
nfr9jCdlI7CUmf3J9DxU8tg/YX6lLJ7OPacs1KxEAhjT7Fg2ADydVRRsobS90uPZ
opyy3sNvYQ9JPJxcEEDrm7OyLXRXd+o343D2AGeNaFy0YxS/zsYtFhi0BhqVynOU
gFjjuodRQXLmbiGp9eb71Lab5mtfrnwQVZND1Cdv+kfvdX/ZxO/KjTiUPmDsyNoK
4Tnal0ENwadPWOhYOD40aeuqfRiJMaODs8UavVENzF97KakmhwM=
=qteQ
-----END PGP SIGNATURE-----

--4rnet4dgd5gakwez--


--===============3158601073143826052==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============3158601073143826052==--

