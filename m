Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 378E7C3DA49
	for <linux-rockchip@archiver.kernel.org>; Tue, 16 Jul 2024 16:27:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=fg/3CZgeeyLCit6TY6epWyZ6lvMsJFeHCzDMpWB9pDo=; b=jW+31280piPqtdL8H9FyYXR6Uu
	pv+HHIce/hmDA4sqcxmmwpHY7S1jU1rax6Kts2fC9UUGKgbou9sfbq3djv9exw7SCbkzA8pcnYyJV
	vaezJJSfGJ9P7morE/nUKAZfnt5tQceo76dBTK4GQWzHO4TwB3sp2cMR3m2keX3gOKmT7FMAJwxM8
	/0jsVKxHtMm6az4FQYUYORcAtSUJgFFGf5cTvM/K84V/OqbcNAGwv2+KjOpOUMqFU3T3Hsh6GT17t
	bCCuRP5XJLtOjTqLdZNwFxHKgjZQ68IWmoFNlbDNld34vg9INJkyKOuaDvrG3T02dQCZcpYKaXP9s
	2t+HdF/Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sTl1N-0000000B2cL-1rCS;
	Tue, 16 Jul 2024 16:27:21 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sTl11-0000000B2Y8-3pVV;
	Tue, 16 Jul 2024 16:27:01 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 1B1C6612AB;
	Tue, 16 Jul 2024 16:26:59 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B8E48C116B1;
	Tue, 16 Jul 2024 16:26:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721147218;
	bh=hWMA5ZEulYvS9ECH5hAW6jjM53zk1odFlK8gbvRHo3w=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=D2bimyib7tcYagDYISZZlOfz71OvZP1NiMUJUy3jvhRQFWFe2RgVBwZ/oX4M/tlqC
	 T2uQx0PFII3CTQhikMdE9KKx6SI+N1pAEIsmctVKWUy8GiL1zd5552mVqKyI+jLEnV
	 XCFew8rgMbEkLNGZ12MvZZyD+Vn/ii34uOpr2F3E6cDQvKo0EdBWrNc03VoZgYaYnz
	 KRzuL8rbYXWoY7lBDfWkvu3Kpx8TYd4BzxtwBP67r1DVxAQu6fhy5F0ahO9gdBUaaq
	 NXtua/+lXAh0hkdTh/NS+esN7zDi3ZBrv4RRTjkRKEgHj1uleroroCI7PScdkrZfur
	 0k9K0OkG3VAOg==
Date: Tue, 16 Jul 2024 17:26:54 +0100
From: Conor Dooley <conor@kernel.org>
To: Christopher Obbard <chris.obbard@collabora.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
	Kever Yang <kever.yang@rock-chips.com>
Subject: Re: [PATCH 1/2] dt-bindings: arm: rockchip: add Firefly CORE PX30 JD4
Message-ID: <20240716-wrinkly-carving-686b84bc0933@spud>
References: <20240716-rockchip-px30-firefly-v1-0-60cdad3023a3@collabora.com>
 <20240716-rockchip-px30-firefly-v1-1-60cdad3023a3@collabora.com>
MIME-Version: 1.0
In-Reply-To: <20240716-rockchip-px30-firefly-v1-1-60cdad3023a3@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240716_092700_039887_66AFFE7C 
X-CRM114-Status: GOOD (  15.81  )
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
Content-Type: multipart/mixed; boundary="===============5063800492459692429=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============5063800492459692429==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="YcU9VkBeP8WS67xd"
Content-Disposition: inline


--YcU9VkBeP8WS67xd
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Jul 16, 2024 at 04:51:04PM +0100, Christopher Obbard wrote:
> The Firefly CORE PX30 JD4 board is a SOM and motherboard bundle from
> Firefly. Add devicetree binding documentation for it.
>=20
> Signed-off-by: Christopher Obbard <chris.obbard@collabora.com>
> ---
>  Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
>  1 file changed, 5 insertions(+)
>=20
> diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Docume=
ntation/devicetree/bindings/arm/rockchip.yaml
> index e04c213a0dee4..19e06e1253e15 100644
> --- a/Documentation/devicetree/bindings/arm/rockchip.yaml
> +++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
> @@ -148,6 +148,11 @@ properties:
>            - const: engicam,px30-core
>            - const: rockchip,px30
> =20
> +      - description: Firefly Core PX30 JD4
> +        items:
> +          - const: firefly,core-px30-jd4
> +          - const: rockchip,px30

Not having individual compatibles for the carrier and som seems odd to,
given there's no requirement to use the som with this particular
carrier.

> +
>        - description: Firefly Firefly-RK3288
>          items:
>            - enum:
>=20
> --=20
> 2.45.2
>=20

--YcU9VkBeP8WS67xd
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZpafTgAKCRB4tDGHoIJi
0o6AAQDrTvLr4RKz+qy9+vNdyfRPgO1rpCmIaL3RG9MifsDdhQD/e2Syd6Zd8H3n
5dgvcst5/bD2D/tN+PXDKfWUEYhKmwY=
=vZf0
-----END PGP SIGNATURE-----

--YcU9VkBeP8WS67xd--


--===============5063800492459692429==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============5063800492459692429==--

