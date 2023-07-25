Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D5519C001DF
	for <linux-rockchip@archiver.kernel.org>; Tue, 25 Jul 2023 16:12:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=PgdLSqLT49yRJLx5qlivecmyuF5z99ksoAYltEz3/Dw=; b=X+itK0YEitvp3ptiQgpgFewf9M
	pGHtzY7uChOr5lex7qdAEV5/9H1HhP/Nnx7IL70c8a2590lTI3s+zjzrtwfhoBhNWxJ/viFeLgO8K
	3c6vRESeZj5NDrXqYXpH7O806k4YAVo5ixEIlITPmZ5IjFgUtxERlbjrqCJrgvie26NqUyXAJ+SZF
	eALk5IiNAxp92VWjXod1Pzl+xGSq7Ag8ZjWw51jS6KN+opNWpkEsjVcRZGhc7YATWZphb5FeXuW5F
	5C+mQ/Lc0E6Gdxzo5JKqUE8wzjkGAcK/aXelZ5dHgOlxq/eyjyvnIb5oXKoJHQrw1Fpln0DwqX7KQ
	Bu1uGnHg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qOKdu-0080wm-28;
	Tue, 25 Jul 2023 16:12:10 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qOKdr-0080uX-0S;
	Tue, 25 Jul 2023 16:12:08 +0000
Received: from mercury (dyndsl-091-248-210-134.ewe-ip-backbone.de [91.248.210.134])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sre)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 1380A660211C;
	Tue, 25 Jul 2023 17:11:59 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1690301519;
	bh=4bbTYeg6o3GK3ctlOWBYSlX8MvZxKTA9HCFK8D/JeKY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=jfvTdK/7TxD0CTfGp38Xkh3x9X1hNLdtvJUoqdhQ4vKig7Q7A+IZXwidtsKxWxriE
	 5jkZH2Ib6CCChU3mXw/0P3BDKjDa9XlUdnTV1e31eE+o54S+1RNRMqI/JMgAVByS5s
	 7FcUa4BjxOdMEzbmlZSVKn4mDyhTNqjijb1AMlQkJu/dbR7Y6hHR3hIGm+mOYGlmpY
	 d8FEl281szwDT86G9ey7QorY/oVfz7ONV/NFoWtQ0pQSEp29LP19qUvZxoIrJ3WQWW
	 WJYOsHSlRlSsgM+ALJEl6kNG38BCH8MxKQfth3Mbdah3hMhcdlGxr1lpkopWh4N2pu
	 t9Q2qHS5DSyBQ==
Received: by mercury (Postfix, from userid 1000)
	id A830310609E8; Tue, 25 Jul 2023 18:11:56 +0200 (CEST)
Date: Tue, 25 Jul 2023 18:11:56 +0200
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Eugen Hristev <eugen.hristev@collabora.com>
Cc: linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
	netdev@vger.kernel.org, david.wu@rock-chips.com, heiko@sntech.de,
	krzysztof.kozlowski+dt@linaro.org, kernel@collabora.com
Subject: Re: [PATCH] dt-bindings: net: rockchip-dwmac: fix {tx|rx}-delay
 defaults in schema
Message-ID: <20230725161156.22uscijrot7gbnvj@mercury.elektranox.org>
References: <20230725155254.664361-1-eugen.hristev@collabora.com>
MIME-Version: 1.0
In-Reply-To: <20230725155254.664361-1-eugen.hristev@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230725_091207_306488_C813BCDE 
X-CRM114-Status: GOOD (  19.76  )
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
Content-Type: multipart/mixed; boundary="===============7812557103019018856=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============7812557103019018856==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="ofxuz3hwyjtmd4j4"
Content-Disposition: inline


--ofxuz3hwyjtmd4j4
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Tue, Jul 25, 2023 at 06:52:54PM +0300, Eugen Hristev wrote:
> The defaults are specified in the description instead of being specified
> in the schema.
> Fix it by adding the default value in the `default` field.
>=20
> Fixes: b331b8ef86f0 ("dt-bindings: net: convert rockchip-dwmac to json-sc=
hema")
> Signed-off-by: Eugen Hristev <eugen.hristev@collabora.com>
> ---

Maybe also fix the allowed range while at it? I.e.

minimum: 0x00
maximum: 0x7F

-- Sebastian

>  Documentation/devicetree/bindings/net/rockchip-dwmac.yaml | 6 ++++--
>  1 file changed, 4 insertions(+), 2 deletions(-)
>=20
> diff --git a/Documentation/devicetree/bindings/net/rockchip-dwmac.yaml b/=
Documentation/devicetree/bindings/net/rockchip-dwmac.yaml
> index bb943c96c196..6d08260ad828 100644
> --- a/Documentation/devicetree/bindings/net/rockchip-dwmac.yaml
> +++ b/Documentation/devicetree/bindings/net/rockchip-dwmac.yaml
> @@ -92,12 +92,14 @@ properties:
>      $ref: /schemas/types.yaml#/definitions/phandle
> =20
>    tx_delay:
> -    description: Delay value for TXD timing. Range value is 0~0x7F, 0x30=
 as default.
> +    description: Delay value for TXD timing. Range value is 0~0x7F.
>      $ref: /schemas/types.yaml#/definitions/uint32
> +    default: 0x30
> =20
>    rx_delay:
> -    description: Delay value for RXD timing. Range value is 0~0x7F, 0x10=
 as default.
> +    description: Delay value for RXD timing. Range value is 0~0x7F.
>      $ref: /schemas/types.yaml#/definitions/uint32
> +    default: 0x10
> =20
>    phy-supply:
>      description: PHY regulator
> --=20
> 2.34.1
>=20
>=20
> --=20
> To unsubscribe, send mail to kernel-unsubscribe@lists.collabora.co.uk.

--ofxuz3hwyjtmd4j4
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE72YNB0Y/i3JqeVQT2O7X88g7+poFAmS/9D4ACgkQ2O7X88g7
+pqWAw//R7tq9H+hx6ddYWSomL1O1WHXSMG7plrm8NK9/POt61Z3yqFvP/yXBTDF
k1S9ivLyv7/A0rA5lu2CzCRxud21fiGTeRd2KpShauXWdvX0kJ9W/tpEInhOqhz4
7K4+ODw8kq+XcL54ZFeGp6fUeGbBrNRMhA2aORfec0QeFlPT1WKQdXnnRsm/PzXf
j7Hg1kk4MrINxtXUHqMqbTI9kduWnUSJIWkAX72lkQdzMjAcBBwhu/7S58VfKVhi
rsermYFcMTE3/R5VIxpMn+AW3691H3fc6GUEE1PTUkyRdK4BCDVVrm1zxuE9xF74
eKEowlL2LPRPVELnykN89ye3brTb0vovCVbcy5EXZj8viiKyclNM7EaX+jXsEJXl
8ohKS0TVDtRfnin+C7d2RM/qADwemGT8v6B0JFFIp+ofNyNv06e5tsHJ8l9GrEof
tVtL8ziPZp7kgTtKv9MiLbw4yzXxPvZfDrZI3y2VE4QGaRZ7JF6opNqtwsZaz19Z
0H4BPh0zCa4HWNrxWg525tOF8VvHS/k3kRvjH6EQwoCipVjdMm+BnmOhPs7PtcBR
Wuay9qKw7uepG9tRdZlMu4PORfpswZvng1nmtcU0rrprFzFL99T0NVqWzHdrP3q9
iTh6q2vKVetxxA4bME4nIDiyr2xTGKb+FDh49TgmQtDfOhJ8vsw=
=vZvT
-----END PGP SIGNATURE-----

--ofxuz3hwyjtmd4j4--


--===============7812557103019018856==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============7812557103019018856==--

