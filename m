Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4C9CDC4829B
	for <linux-rockchip@archiver.kernel.org>; Sun, 11 Feb 2024 17:36:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=+rHMq714U5t5M8j4UfP8u5L+lnN+Yiu0LMex/cuhfvI=; b=3Qk7ia/yMYCs3GVS6BzuHnSU8K
	ObP1TFNSSscZuxbIEYvWz8NFb/Kx935DNC4FtnIMTDKolBSwjw9YG5zovrxkBk0Cy2OV5qFsOn/s1
	dsnkqUkoHnXqRc+9g22tNBsA3F/yv9DeVBUVU5eiIT7KwmJDU52rq38SoCB4tP9iF3+/5fLSCLkx3
	8S8o7KqpAdZyQzgdV2oW9ef5p2eQ3QxwVhqQ5b0jIiVJbVKvpF0Y1k4W+/dvvGlXeRHzebjil4xBf
	p8hLvrDjTv558/sC9p4VWd4v8TNZY8XE51BIvDSJ9/gTA3Ds4dBUCvaHQeOj56URhRNK+U+ZD+SPy
	UKOm+iog==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rZDl8-00000003591-0AUf;
	Sun, 11 Feb 2024 17:36:54 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rZDl4-00000003580-0k8C;
	Sun, 11 Feb 2024 17:36:51 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 4D450CE00A0;
	Sun, 11 Feb 2024 17:36:46 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BDF80C433C7;
	Sun, 11 Feb 2024 17:36:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707673005;
	bh=c9VGEH3Oe3xuX6OuU6L8icH1iRHcqV6VJVjAxeBYb6o=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=iO/K+rqJLKRy4abh7+0vArChYtijI8Hy5IyVaGZje+bo2N/wclkoQqIq61avdxnfi
	 3s+t915EY1bt+AOg0czRAjgPa6LOzRZP3liOsOYBRa0Hs/qqHounO2IQ/bhkjln5ha
	 OQU2y7pIcLtRX5DGsC0uwkEDSHRFaiFM48VV8r8HYtGsLJv/d/Lh8WvpLx9SXaEuha
	 WF70ULtQCdDkGLkW7bWH9K+zBH63jyPKq3xiCvyr94k2kQl+NnDa4cEqVXXIw8dSR8
	 7Suphydj0QJfqnvBAJbcWyWvjlV2G104b6BjCL08cc8Y4OyBJwCFeIxH7DUkteQwFY
	 nGnxrRxXGL6Uw==
Date: Sun, 11 Feb 2024 17:36:40 +0000
From: Conor Dooley <conor@kernel.org>
To: Heiko =?iso-8859-1?Q?St=FCbner?= <heiko@sntech.de>
Cc: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	linux-rockchip@lists.infradead.org, linux-phy@lists.infradead.org,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Frank Wang <frank.wang@rock-chips.com>,
	Kever Yang <kever.yang@rock-chips.com>, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, kernel@collabora.com
Subject: Re: [PATCH v1 03/10] dt-bindings: phy: add rockchip usbdp combo phy
 document
Message-ID: <20240211-uproot-awoke-b3c70f168e17@spud>
References: <20240209181831.104687-1-sebastian.reichel@collabora.com>
 <20240209181831.104687-4-sebastian.reichel@collabora.com>
 <3267388.oiGErgHkdL@diego>
MIME-Version: 1.0
In-Reply-To: <3267388.oiGErgHkdL@diego>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240211_093650_422726_7BF98C69 
X-CRM114-Status: GOOD (  13.16  )
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
Content-Type: multipart/mixed; boundary="===============8909243107133240550=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============8909243107133240550==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="Y3S4+lww4bcgDsY0"
Content-Disposition: inline


--Y3S4+lww4bcgDsY0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Feb 09, 2024 at 11:17:40PM +0100, Heiko St=FCbner wrote:
> Am Freitag, 9. Februar 2024, 19:17:19 CET schrieb Sebastian Reichel:

> > +  rockchip,dp-lane-mux:

Why "mux" and not "map"?

> > +    $ref: /schemas/types.yaml#/definitions/uint32-array
> > +    minItems: 2
> > +    maxItems: 4
> > +    description:
> > +      An array of physical Tyep-C lanes indexes. Position of an entry =
determines
>=20
> nit: Type-C lane indexes
>=20
> > +      the dp lane index, while the value of an entry indicater physica=
l Type-C lane.
>=20
> nit: indicates instead of indicater?

If we are talking nits, the first use of "dp" should be "DisplayPort (DP)"
and s/dp/DP/ elsewhere.

>=20
> > +      The support dp lanes number are 2 or 4. e.g. for 2 lanes dp lane=
s map, we could
>=20
> nit: The supported dp lane numbers ... ?
>=20
>=20
> > +      have "rockchip,dp-lane-mux =3D <2, 3>;", assuming dp lane0 on Ty=
pe-C phy lane2,
> > +      dp lane1 on Type-C phy lane3. For 4 lanes dp lanes map, we could=
 have
> > +      "rockchip,dp-lane-mux =3D <0, 1, 2, 3>;", assuming dp lane0 on T=
ype-C phy lane0,
> > +      dp lane1 on Type-C phy lane1, dp lane2 on Type-C phy lane2, dp l=
ane3 on Type-C
> > +      phy lane3.

And

> If dp lane map by DisplayPort Alt mode, this property is not need.

"If DP lanes are mapped by" "not needed."

Cheers,
Conor.

--Y3S4+lww4bcgDsY0
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZckFqAAKCRB4tDGHoIJi
0mdTAQDyQTT+aO5vXfGBJ344i7lWsxRedOFHbKlJ1OGgglszlwEA4pLizuhJUa9l
cE8jarPeJgs3wrqeqmKQwRLTt0f+BgI=
=Fvfu
-----END PGP SIGNATURE-----

--Y3S4+lww4bcgDsY0--


--===============8909243107133240550==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============8909243107133240550==--

