Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 77664CD6E7D
	for <linux-rockchip@archiver.kernel.org>; Fri,  5 Jun 2026 16:26:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=+Rv6ofsj1dUbO9rVY/7Btcg8fJ7UHCx5NIjfuVtgWos=; b=yldzonrJFs6HJgMtsTwQGQhYLx
	gGkRSrW8Jgrx5sQnjjgjK9Z22DpBX+WWUPkPPfvEMpR2tURSgHIpXPzIhpirdAM9J95LvyxY/GUKq
	r4/U4aPtd/xWUKcL/oM+OXeIFMPch5+tOeYuu6kI5EKpfWt4xPQ17Y1XGhdaCRwZ2qmCuDQF4gzwv
	qTFy+itlS1Wgr+1JqbczsJ3H+1hyWj0Qd2ouRPw/EW9vRvJ2xagnLUlUYrASNj9h0SA4OMSrV8SYQ
	SR4oLvLF/RUl1QvnM1AOq7yjcUCKjoBnMUyxKb2s7fv7z3geJ6dLlhjki7GIKSOouBfSXIsq1P7hj
	gPwvrNVw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wVXNc-00000000uVw-0Ftv;
	Fri, 05 Jun 2026 16:26:44 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wVXNa-00000000uVq-1Rpv
	for linux-rockchip@lists.infradead.org;
	Fri, 05 Jun 2026 16:26:42 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 71031601DD;
	Fri,  5 Jun 2026 16:26:41 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 079C31F00893;
	Fri,  5 Jun 2026 16:26:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780676801;
	bh=TDkJX3CC6ghJvaftv3jQASO7eqNjjXTkyuVDTdp/ScI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=JgOQ5SJQ1QgrMS3Hn9s8P0qgFtx+m1AbuDD1+R06pmKcILq35OnCyplA4sBULMUtQ
	 fP6As5l98FZRyNwm9m+zQ5VyNIyC1G9OPHU9cyeso3lfxd0jlHEBZrfCghgX62jT/3
	 7arajdfT431RhkQqkNuQ4pXLybjlU2xuCk1HsPzR7xRQY5KbErkqGlLgSYEw2i4yZG
	 /ep3neWwwfCIgVbVh7CJoufJjA36qkGbIMksZSFiC0eLamSqRXvRgR/y/z9/kZ7Nwa
	 2nyO1u8MuiLikyQI/JJFP8mHdVYVDpqt6nm0iy3ZusAgYGndvdpx3RMb2/IkLwayXX
	 UjtO+xqJK7Yfg==
Date: Fri, 5 Jun 2026 17:26:36 +0100
From: Conor Dooley <conor@kernel.org>
To: Chris Morgan <macroalpha82@gmail.com>
Cc: linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
	xsf@rock-chips.com, sre@kernel.org, simona@ffwll.ch,
	airlied@gmail.com, tzimmermann@suse.de, mripard@kernel.org,
	maarten.lankhorst@linux.intel.com, jesszhan0024@gmail.com,
	neil.armstrong@linaro.org, heiko@sntech.de, conor+dt@kernel.org,
	krzk+dt@kernel.org, robh@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: Re: [PATCH V5 3/6] dt-bindings: display: panel: Add Anbernic TD4310
 panel
Message-ID: <20260605-carless-mouth-92684e2ee74e@spud>
References: <20260604220802.119107-1-macroalpha82@gmail.com>
 <20260604220802.119107-4-macroalpha82@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20260604220802.119107-4-macroalpha82@gmail.com>
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
Content-Type: multipart/mixed; boundary="===============4907410993430746471=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============4907410993430746471==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="puxlIvdh/rKnMLXj"
Content-Disposition: inline


--puxlIvdh/rKnMLXj
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Jun 04, 2026 at 05:07:58PM -0500, Chris Morgan wrote:
> From: Chris Morgan <macromorgan@hotmail.com>
>=20
> The panel used by Anbernic in the RG Vita-Pro is a DSI panel based
> on the TD4310 controller IC. It measures approximately 5.5 inches
> diagonally and is 1080x1920 in resolution.
>=20
> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
> ---
>  .../display/panel/anbernic,td4310.yaml        | 66 +++++++++++++++++++
>  1 file changed, 66 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/display/panel/anber=
nic,td4310.yaml
>=20
> diff --git a/Documentation/devicetree/bindings/display/panel/anbernic,td4=
310.yaml b/Documentation/devicetree/bindings/display/panel/anbernic,td4310.=
yaml
> new file mode 100644
> index 000000000000..6f7f92b9c860
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/display/panel/anbernic,td4310.yaml
> @@ -0,0 +1,66 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/display/panel/anbernic,td4310.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Anbernic TD4310 Based Panels
> +
> +maintainers:
> +  - Chris Morgan <macromorgan@hotmail.com>
> +
> +description:
> +  Anbernic TD4310 Based Panels, such as the RG-Vita-Pro panel
> +  (a 1080x1920 5.5 inch panel).
> +
> +allOf:
> +  - $ref: panel-common.yaml#
> +
> +properties:
> +  compatible:
> +    items:
> +      - enum:
> +          - anbernic,panel-vita-pro
> +      - const: anbernic,td4310
> +
> +  reg:
> +    maxItems: 1
> +
> +  vdd-supply:
> +    description: Panel power supply
> +
> +required:
> +  - compatible
> +  - port
> +  - reg
> +  - reset-gpios
> +  - vdd-supply
> +
> +unevaluatedProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/gpio/gpio.h>
> +
> +    dsi {
> +        #address-cells =3D <1>;
> +        #size-cells =3D <0>;
> +
> +        panel@0 {
> +            compatible =3D "anbernic,panel-vita-pro", "anbernic,td4310";
> +            reg =3D <0>;
> +            backlight =3D <&backlight>;
> +            enable-gpios =3D <&gpio0 9 GPIO_ACTIVE_HIGH>;
> +            reset-gpios =3D <&gpio0 13 GPIO_ACTIVE_LOW>;
> +            rotation =3D <270>;
> +            vdd-supply =3D <&vdd_lcd>;
> +
> +            port {
> +                panel_in: endpoint {

Drop the label if you respin.
Reviewed-by: Conor Dooley <conor.dooley@microchip.com>
pw-bot: not-applicable

> +                    remote-endpoint =3D <&dsi_out>;
> +                };
> +            };
> +        };
> +    };
> +
> +...
> --=20
> 2.43.0
>=20

--puxlIvdh/rKnMLXj
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCaiL4uwAKCRB4tDGHoIJi
0irKAP9L+hIB/TYnCd82iGYGbBpXm8onM2v9d1tkIAL4ndCnAQEAiXWKVveu8dZx
zselpGMyAyU19cu2tFx1NY1q2/1BdAs=
=wQ7A
-----END PGP SIGNATURE-----

--puxlIvdh/rKnMLXj--


--===============4907410993430746471==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============4907410993430746471==--

