Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0C9E1E7718E
	for <linux-rockchip@archiver.kernel.org>; Sun, 22 Dec 2024 14:52:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=C8Y33AIKS6N3azpe7O20QD2LznprEUtL+3brBzfydRg=; b=kncEOkhRJq8OiHff4SgpDhcnNy
	V1xxqcWwxcyoWOcCJ1LTJhD0zDsRUsKRWOHkY7kFQfPv7vkdeT5u+dPwyGEoMuwsL0mE7jiUcksUm
	SREU6bQ/URYf8nf0Q37CQNJBmxmv5bmuCYmLXaO273ErPMeEiPXyhwRzUHPyjF28FWdEpU/2Ku6R6
	BafJTH9WG4Xe+wQw5o9YSRMPDeRiA6YKHR8WAWHakBLY+4a7RLJmxS5x7kx4XVVIum3oHLIR2bM4r
	Bv7xJOL5rpmglMFkWjkFj5hyO9ukTd6MwT1Upu+h9rrlY+a02kN5k1SAGEzG/bjxQJzl13X0g8D6q
	jIXOdqgw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tPNJw-00000008Ppk-0ws6;
	Sun, 22 Dec 2024 14:52:40 +0000
Received: from nyc.source.kernel.org ([147.75.193.91])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tPNIk-00000008Pi9-2pbO;
	Sun, 22 Dec 2024 14:51:28 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 4FDDEA406E9;
	Sun, 22 Dec 2024 14:49:35 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CF6D0C4CECD;
	Sun, 22 Dec 2024 14:51:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734879085;
	bh=usjZ2ZTH34TQ1C1N/Wpm4Rx7OSioMF26Mal38rPNRY8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=J2wvSQGfuB/AjjrxeUvDs8Yw4zPVyKUgOou1CNiG1/v+jlnQ3UjtBYc/f9ppxoVcA
	 CWIuXD2VAnJcsO3SSNOgRkGxVNgaK57pSRvjZiArCb15XaOyGcx4Zdg+bp7UJ7iryT
	 jC4TdJcMRLQ2MaVwpbzw3X1xWxW7xN162/4S1tTBVA+wtrbV7fK8DnbTD7eVAQUYFr
	 Hlb3iGPZrNdDkH04XefuM7TvB6cY0W1iT+c5AT6yc09NdG0EuEoarzH1gLNilRGXUQ
	 8k1kUPvdi0j/8nMip6BH6qQ6CZ1QG7GJ2tvzO61C8z2C59St55geuR+PltnzKkuKds
	 CeOt0sS6Ekxzg==
Date: Sun, 22 Dec 2024 14:51:20 +0000
From: Conor Dooley <conor@kernel.org>
To: Kever Yang <kever.yang@rock-chips.com>
Cc: heiko@sntech.de, linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>,
	Michael Turquette <mturquette@baylibre.com>,
	Rob Herring <robh@kernel.org>, Stephen Boyd <sboyd@kernel.org>,
	linux-kernel@vger.kernel.org,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Elaine Zhang <zhangqing@rock-chips.com>, linux-clk@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 01/38] dt-bindings: clock: add rk3562 cru bindings
Message-ID: <20241222-grandpa-vessel-66e9ca9cde75@spud>
References: <20241220103825.3509421-1-kever.yang@rock-chips.com>
 <20241220103825.3509421-2-kever.yang@rock-chips.com>
MIME-Version: 1.0
In-Reply-To: <20241220103825.3509421-2-kever.yang@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241222_065126_859364_794AE025 
X-CRM114-Status: GOOD (  19.20  )
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
Content-Type: multipart/mixed; boundary="===============2984607191558290039=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============2984607191558290039==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="WwHE6zSlu1Iv1ITo"
Content-Disposition: inline


--WwHE6zSlu1Iv1ITo
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Dec 20, 2024 at 06:37:47PM +0800, Kever Yang wrote:
> Document the device tree bindings of the rockchip rk3562 SoC
> clock and reset unit.
>=20
> Signed-off-by: Kever Yang <kever.yang@rock-chips.com>
> ---
>=20
>  .../bindings/clock/rockchip,rk3562-cru.yaml   | 62 +++++++++++++++++++
>  1 file changed, 62 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/clock/rockchip,rk35=
62-cru.yaml
>=20
> diff --git a/Documentation/devicetree/bindings/clock/rockchip,rk3562-cru.=
yaml b/Documentation/devicetree/bindings/clock/rockchip,rk3562-cru.yaml
> new file mode 100644
> index 000000000000..aa8dedf2bfce
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/clock/rockchip,rk3562-cru.yaml
> @@ -0,0 +1,62 @@
> +# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/clock/rockchip,rk3562-cru.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Rockchip rk3562 Clock and Reset Control Module
> +
> +maintainers:
> +  - Elaine Zhang <zhangqing@rock-chips.com>
> +  - Heiko Stuebner <heiko@sntech.de>
> +
> +description:
> +  The RK3562 clock controller generates the clock and also implements a =
reset
> +  controller for SoC peripherals. For example it provides SCLK_UART2 and
> +  PCLK_UART2, as well as SRST_P_UART2 and SRST_S_UART2 for the second UA=
RT
> +  module.
> +
> +properties:
> +  compatible:
> +    const: rockchip,rk3562-cru
> +
> +  reg:
> +    maxItems: 1
> +
> +  "#clock-cells":
> +    const: 1
> +
> +  "#reset-cells":
> +    const: 1
> +
> +  clocks:
> +    maxItems: 2
> +
> +  clock-names:
> +    items:
> +      - const: xin24m
> +      - const: xin32k
> +
> +  rockchip,grf:
> +    $ref: /schemas/types.yaml#/definitions/phandle
> +    description:
> +      Phandle to the syscon managing the "general register files" (GRF),
> +      if missing pll rates are not changeable, due to the missing pll
> +      lock status.

Two questions:
- Why would it ever be missing? Seems like you should make it required.
- Why is it not possible to look the grf up by compatible rather than
  phandle?

Cheers,
Conor.

> +
> +required:
> +  - compatible
> +  - reg
> +  - "#clock-cells"
> +  - "#reset-cells"
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    clock-controller@ff100000 {
> +      compatible =3D "rockchip,rk3562-cru";
> +      reg =3D <0xff100000 0x40000>;
> +      #clock-cells =3D <1>;
> +      #reset-cells =3D <1>;
> +    };
> --=20
> 2.25.1
>=20
>=20

--WwHE6zSlu1Iv1ITo
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZ2gnaAAKCRB4tDGHoIJi
0iI5AP9UIw3hr7XnZEKTMekdzNbzE8jdl/gywdcNsXRR8649PAD+J3EGtf7uIB8X
Xkt+VkIy6zUhiBUZdP3KF3OCqcEkgQE=
=PnXt
-----END PGP SIGNATURE-----

--WwHE6zSlu1Iv1ITo--


--===============2984607191558290039==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============2984607191558290039==--

