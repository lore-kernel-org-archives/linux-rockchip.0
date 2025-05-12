Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7087AC3ABC3
	for <linux-rockchip@archiver.kernel.org>; Mon, 12 May 2025 10:12:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=N7501wntL7ZSTbIhZP4kp/UIsb5bQa4JLbvx0mHxkuQ=; b=DiH/hGbflgBCx9bPQhgAnLEQ0h
	QSfTdaZ+iqBt7+iFyNiBDQ7xql2jBlJccUSvKxfUeBzhSBUqMAMfeU5eal4Tz6qg1Npn6GZ/IC8FO
	v1FfloxLlR2mYmb/m3vGOgmmlikFbjopHbjGjiXY1l8Qpo5JCNnZG14zn/BS11QNWSzVLE79vz7X5
	z/hIQno5yZfC5cGo0Dndz47KG6SszC7n9ycio3zeNXPhI5Wuo2/NL5lu9lRyF22WDzYrW9F9mxH+m
	8WHCJGp2cTJhxwGLKRNMM80HYz3L0mE7WDRl3DjHSVVSnmjIxYUgAIzUG+Bw5Ha6VE4dCtaWkKfaQ
	Qz9XqLNw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uEQ9M-000000094Hg-1d2X;
	Mon, 12 May 2025 10:12:44 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uEPPe-00000008vD3-344S;
	Mon, 12 May 2025 09:25:31 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id D97BF4A999;
	Mon, 12 May 2025 09:25:29 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 07A94C4CEE7;
	Mon, 12 May 2025 09:25:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747041929;
	bh=VeGFxthv7PYqrI06vu6pYTa8wWVH2rxaKIjcbEO/qxs=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=bLUm+jqxbtWq86ypa0XoBzPu4HEk5uslYonS1yB/ZBGc+js+JwiFqlmb4H+LWXXAW
	 b90v9LD9PruGgAdjKSB4vs3Vg5Ntz3OcylUUrEbuG8WFS8NVkHQ1XXKoJuS9UXozDK
	 GBUccOqaE4m+qiffJUQuXtgPcR+MZtETgEmu4IUNRu5SnbliuA4SQZx+g9OLw0U3s6
	 g3TMXzvPfN5/IMHGQjRbSGeAlHt4hgkeCp+rkt3fEOMtj6FLjDp+33it5OEg2o/caW
	 FSzjSWBml7EQZfovpHIGSCTROUn5w84u3qLmoLYO154FgVGjWxioH+0yXvACj+z9uY
	 o2NrfaT6csJZA==
Date: Mon, 12 May 2025 10:25:24 +0100
From: Conor Dooley <conor@kernel.org>
To: Quentin Schulz <quentin.schulz@cherry.de>
Subject: Re: [PATCH RESEND v4 1/3] dt-bindings: vendor-prefixes: Add luckfox
 prefix
Message-ID: <20250512-unshaken-educated-12738a347257@spud>
References: <20250509122637.26674-1-inindev@gmail.com>
 <20250509122637.26674-2-inindev@gmail.com>
 <e3339dfd-7d79-4d86-b522-d6b31976cd2e@cherry.de>
MIME-Version: 1.0
In-Reply-To: <e3339dfd-7d79-4d86-b522-d6b31976cd2e@cherry.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250512_022530_797101_D50E5982 
X-CRM114-Status: GOOD (  17.97  )
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
Cc: Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>, John Clark <inindev@gmail.com>, Heiko Stuebner <heiko@sntech.de>, Jonas Karlman <jonas@kwiboo.se>, Conor Dooley <conor.dooley@microchip.com>, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, Andrew Lunn <andrew@lunn.ch>, Krzysztof Kozlowski <krzk+dt@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============2013303809181705267=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============2013303809181705267==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="GU6PMH/TcwUywzE1"
Content-Disposition: inline


--GU6PMH/TcwUywzE1
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, May 12, 2025 at 10:12:24AM +0200, Quentin Schulz wrote:
> Hi John,
>=20
> On 5/9/25 2:26 PM, John Clark wrote:
> > Add vendor prefix for Shenzhen Luckfox Technology Co., Ltd., which
> > produces development boards like the Luckfox Omni3576.
> >=20
> > Signed-off-by: John Clark <inindev@gmail.com>
> > Acked-by: Conor Dooley <conor.dooley@microchip.com>
> > ---
> >   Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
> >   1 file changed, 2 insertions(+)
> >=20
> > diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/D=
ocumentation/devicetree/bindings/vendor-prefixes.yaml
> > index 86f6a19b28ae..9391e0c31bb8 100644
> > --- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
> > +++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
> > @@ -892,6 +892,8 @@ patternProperties:
> >       description: Liebherr-Werk Nenzing GmbH
> >     "^lxa,.*":
> >       description: Linux Automation GmbH
> > +  "^luckfox,.*":
> > +    description: Shenzhen Luckfox Technology Co., Ltd.
>=20
> Looking at the file, I think we order the vendor prefixes alphanumericall=
y?
>=20
> So this would be the wrong location for this new vendor prefix and should
> rather be between lsi and lunzn?

Oh, I missed that. Yeah, alphanumeric ordering please.

--GU6PMH/TcwUywzE1
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCaCG+gAAKCRB4tDGHoIJi
0tsqAP4ixoSNyieeRkbazndj3nNkW+K7Q1diS68t1I/8BNuNcQD/SXduhZflon2y
JiZDzqW/LhScPYo34ESbXVbqz9G1AwY=
=cMJa
-----END PGP SIGNATURE-----

--GU6PMH/TcwUywzE1--


--===============2013303809181705267==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============2013303809181705267==--

