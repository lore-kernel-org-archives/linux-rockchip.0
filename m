Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8EBA4C27C79
	for <linux-rockchip@archiver.kernel.org>; Thu, 20 Jun 2024 16:02:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Jr0LiRyzdE8kEF/k0aiRzXnMZqSEzoTJQsrFqnwrosk=; b=X5uBfSk7nDzMmUh+X3jI3NndQB
	DS4R8SJ8f+ZemxCOe3YxqPk2AWTpYWYuXkWsKQhpElkeQFqv2m4MZDMnZbOnypgSgorDpm5a6D1Wj
	yVL1UaXisoSOuQ7IXHwBZWImnina1Zj7arpAcK/eRBBfsfT+cVK0h1AIhWVAjSRVQf6q2wiWOHpqg
	XQB7RmIlIEkX934zqvx1OBzqn43jQ9cEc0VNFmA/8r9wh/MFlilQdVdQ7yJ+VjRiC8Pc7C86ZQt5/
	PU2IVxpjNqfoRnidOYCalFX72JRMKaOs7uHSylZPWV3qMEj0DKi0iTjs1Foz1iObZZA4DMPBTP4YG
	/sxxpDqw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sKKEc-00000005jZv-0VjP;
	Thu, 20 Jun 2024 16:02:02 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sKKEY-00000005jYs-2V3J;
	Thu, 20 Jun 2024 16:02:00 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 61B52CE21BC;
	Thu, 20 Jun 2024 16:01:56 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A1166C2BD10;
	Thu, 20 Jun 2024 16:01:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718899315;
	bh=V0ZRCVEkL9xvrdNgLyQfRm+vLHBlxj8ql16aQp+/5OM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Aq74HY/evqwGDs7XSFADEXqTYws3XqaPebwjZAD0k6cwiWKR8Gy1OynOqu51L0Q4h
	 xfh0fvcxVb+b7uZgIkZhB4609aGNiJdHdFgyoZ4L6OKgrcXNlt+XVN3Ld2aXHHGjWc
	 isk2r47WfEod6S2tsJ6jF7g/mOpnRDkRHBwLkCjbCf+LCU20DKwrOhX8CIA7GIE4Vc
	 cLh1yMoUahoqVMz+RZwk1RvrQ1XhCH9IwAiZoHBzD2uAkjWLBKbZDO57fDdPOwNjpb
	 glhmsr041yPbE69ciTuYWED3QcUAeIDi5M2bclc5FHJ/vlrJzDTMEcvqXnGHi9c8Nr
	 yOWE6F38jJYSg==
Date: Thu, 20 Jun 2024 17:01:48 +0100
From: Conor Dooley <conor@kernel.org>
To: Detlev Casanova <detlev.casanova@collabora.com>
Cc: linux-kernel@vger.kernel.org,
	Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	Dragan Simic <dsimic@manjaro.org>,
	Diederik de Haas <didi.debian@cknow.org>,
	Andy Yan <andy.yan@rock-chips.com>,
	Boris Brezillon <boris.brezillon@collabora.com>,
	Hans Verkuil <hverkuil-cisco@xs4all.nl>,
	Daniel Almeida <daniel.almeida@collabora.com>,
	Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
	Nicolas Dufresne <nicolas.dufresne@collabora.com>,
	Benjamin Gaignard <benjamin.gaignard@collabora.com>,
	Jonas Karlman <jonas@kwiboo.se>, Alex Bee <knaerzche@gmail.com>,
	linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-staging@lists.linux.dev
Subject: Re: [PATCH v3 3/4] media: dt-bindings: rockchip: Document RK3588
 Video Decoder bindings
Message-ID: <20240620-unsmooth-surfer-b62ed94b4a5e@spud>
References: <20240620142532.406564-1-detlev.casanova@collabora.com>
 <20240620142532.406564-4-detlev.casanova@collabora.com>
MIME-Version: 1.0
In-Reply-To: <20240620142532.406564-4-detlev.casanova@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240620_090159_342224_D680132E 
X-CRM114-Status: GOOD (  14.51  )
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
Content-Type: multipart/mixed; boundary="===============6107561647861387484=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============6107561647861387484==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="ZhJn1SX/DkOq9GFq"
Content-Disposition: inline


--ZhJn1SX/DkOq9GFq
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Jun 20, 2024 at 10:19:45AM -0400, Detlev Casanova wrote:
> Document the Rockchip RK3588 Video Decoder bindings.
>=20
> Signed-off-by: Detlev Casanova <detlev.casanova@collabora.com>
> ---
>  .../bindings/media/rockchip,vdec.yaml         | 55 +++++++++++++++++++
>  1 file changed, 55 insertions(+)
>=20
> diff --git a/Documentation/devicetree/bindings/media/rockchip,vdec.yaml b=
/Documentation/devicetree/bindings/media/rockchip,vdec.yaml
> index 08b02ec16755..d44f6b0d2c55 100644
> --- a/Documentation/devicetree/bindings/media/rockchip,vdec.yaml
> +++ b/Documentation/devicetree/bindings/media/rockchip,vdec.yaml
> @@ -17,6 +17,7 @@ properties:
>    compatible:
>      oneOf:
>        - const: rockchip,rk3399-vdec
> +      - const: rockchip,rk3588-vdec
>        - items:
>            - enum:
>                - rockchip,rk3228-vdec
> @@ -30,29 +31,56 @@ properties:
>      maxItems: 1
> =20
>    clocks:
> +    minItems: 4
>      items:
>        - description: The Video Decoder AXI interface clock
>        - description: The Video Decoder AHB interface clock
>        - description: The Video Decoded CABAC clock
>        - description: The Video Decoder core clock
> +      - description: The Video decoder HEVC CABAC clock
> =20
>    clock-names:
> +    minItems: 4
>      items:
>        - const: axi
>        - const: ahb
>        - const: cabac
>        - const: core
> +      - const: hevc_cabac
> =20
>    assigned-clocks: true
> =20
>    assigned-clock-rates: true
> =20
> +  resets:
> +    items:
> +      - description: The Video Decoder AXI interface reset
> +      - description: The Video Decoder AHB interface reset
> +      - description: The Video Decoded CABAC reset
> +      - description: The Video Decoder core reset
> +      - description: The Video decoder HEVC CABAC reset
> +
> +  reset-names:
> +    items:
> +      - const: rst_axi
> +      - const: rst_ahb
> +      - const: rst_cabac
> +      - const: rst_core
> +      - const: rst_hevc_cabac

I should have noticed this last time, but drop the "rst_", these are all
resets. With that,
Reviewed-by: Conor Dooley <conor.dooley@microchip.com>

--ZhJn1SX/DkOq9GFq
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZnRSbAAKCRB4tDGHoIJi
0q7QAQDJlNfQDbzPdmJ1RausFnn0zlMVyAJTYhKDcOeA2MbIbwEAr09bKJzKA6Th
GXbZJTjRrfW0abU6ps1HhASV6DVAQAs=
=fWXH
-----END PGP SIGNATURE-----

--ZhJn1SX/DkOq9GFq--


--===============6107561647861387484==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============6107561647861387484==--

