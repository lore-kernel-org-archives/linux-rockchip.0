Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C4E24CD98F3
	for <linux-rockchip@archiver.kernel.org>; Wed, 17 Jun 2026 15:52:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=yXjsl1J6kRvGiRnipZzsA1Qkyxk5xVL3rW+ZuU/pR/I=; b=mBPmfb05SZn0QpN1xMXZ6Guz8h
	as9hzQ9ddmiVm2XWMGNWeagCchgQri3DJkG8nE5jf1sJU5DC2s3A3zdN58T7060FUGEBvOJc1t9fI
	S5UM15GnMEKZTOGU1hh47QAdzkY4uOv59Nv9cw/tbmwhOCNn+K9kD81O5YrWDxjhSyjbgrgd33Buy
	SElb4bOiPbuWxRXSwVXQHL2cTIJKiBtfezBs/Sw1zPOdVlMtekKAGoIiP1zZ91IXN0UnQZ7b44TMX
	Ory9Wp8kEF4LjLWn8t8jopwXNkwHE8+uWQUip1zS5lIbWv/7UxZzHlHBCJVpJZkcTbgnqOiIL7V4c
	B5vEQa3A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wZsYd-0000000Hage-0RfA;
	Wed, 17 Jun 2026 15:52:03 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wZsYb-0000000HagF-1klU;
	Wed, 17 Jun 2026 15:52:01 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id C0B6A4018E;
	Wed, 17 Jun 2026 15:52:00 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5F0201F000E9;
	Wed, 17 Jun 2026 15:51:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781711520;
	bh=gtj5dg64TxuCBekH6gIVDZSCybZ/XwBRYoS+TH55748=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=QfTlOKUslYhUnlz4WPjprU6l2Bl/sK2EoRV2qIAAC5HWapAwMLx7cqGNoOMvIoZKa
	 pQwwbHZp+EhIju41Y7LJbOCm1rP2AXYk4qsepwBUGAnd3iBZeuNHNxBZqijpo/btbI
	 hl9xcmLSc7Pb2uuDHAaUNJEssiVY8/zB5D0qzZvDnEOh6c7NMi7IlLHT5eGywT84RJ
	 VvpEtQt1guRuw7maw33RyAKAByb3uf3y6SWf3N4QFzpTQ45GtjB+gZMZId07PF4ehX
	 a1yblVlKREyF/URZRXJumKWDGYgzRUYiZajGC+bJ7S2RunBm7VEWGhAOJ9zz1NGTSh
	 kqobO8NFZoUuQ==
Date: Wed, 17 Jun 2026 16:51:56 +0100
From: Conor Dooley <conor@kernel.org>
To: Gerald Loacker <gerald.loacker@wolfvision.net>
Cc: Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, linux-phy@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: Re: [PATCH 2/3] dt-bindings: phy: rockchip-inno-csi-dphy: add
 rockchip,clk-lane-phase property
Message-ID: <20260617-deviate-sulk-c57104ef939f@spud>
References: <20260617-feature-mipi-csi-dphy-4k60-v1-0-4611ff00b0ff@wolfvision.net>
 <20260617-feature-mipi-csi-dphy-4k60-v1-2-4611ff00b0ff@wolfvision.net>
MIME-Version: 1.0
In-Reply-To: <20260617-feature-mipi-csi-dphy-4k60-v1-2-4611ff00b0ff@wolfvision.net>
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
Content-Type: multipart/mixed; boundary="===============1219075781575561782=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============1219075781575561782==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="VWeXfw4mhda8KfwY"
Content-Disposition: inline


--VWeXfw4mhda8KfwY
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Jun 17, 2026 at 02:23:14PM +0200, Gerald Loacker wrote:
> Add support for the optional rockchip,clk-lane-phase device tree property
> to allow board-specific tuning of the clock lane sampling phase for
> improved signal integrity across supported data rates.
>=20
> Signed-off-by: Gerald Loacker <gerald.loacker@wolfvision.net>
> ---
>  Documentation/devicetree/bindings/phy/rockchip-inno-csi-dphy.yaml | 7 ++=
+++++
>  1 file changed, 7 insertions(+)
>=20
> diff --git a/Documentation/devicetree/bindings/phy/rockchip-inno-csi-dphy=
=2Eyaml b/Documentation/devicetree/bindings/phy/rockchip-inno-csi-dphy.yaml
> index 03950b3cad08c..0d824d1511bc0 100644
> --- a/Documentation/devicetree/bindings/phy/rockchip-inno-csi-dphy.yaml
> +++ b/Documentation/devicetree/bindings/phy/rockchip-inno-csi-dphy.yaml
> @@ -56,6 +56,13 @@ properties:
>      description:
>        Some additional phy settings are access through GRF regs.
> =20
> +  rockchip,clk-lane-phase:
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    minimum: 0
> +    maximum: 7
> +    description:
> +      Clock lane sampling phase in 40 ps steps. The hardware default is =
3.

Can this instead become rockchip,clk-lane-phase-ps and be listed in the
actual unit?
With the -ps suffix, you can then drop the $ref.
The default should be listed as "default: 3" (or default: 120)

pw-bot: changes-requested

> +
>  required:
>    - compatible
>    - reg
>=20
> --=20
> 2.34.1
>=20

--VWeXfw4mhda8KfwY
Content-Type: application/pgp-signature; name=signature.asc

-----BEGIN PGP SIGNATURE-----

iHQEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCajLCnAAKCRB4tDGHoIJi
0gDoAP9k3dz45bxi4cXPTLEgr6PZeKMsVt1LStk2R98sBcwk2AD3bcuGGmbrTcuM
+Q1nqKDjDPHzxpNyJkTPhyVUuYB5AA==
=kgQi
-----END PGP SIGNATURE-----

--VWeXfw4mhda8KfwY--


--===============1219075781575561782==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============1219075781575561782==--

