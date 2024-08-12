Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 113B4C3DA7F
	for <linux-rockchip@archiver.kernel.org>; Mon, 12 Aug 2024 16:14:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=rRgCPkZ2FweRdqxfsSXZmps5izG1gYHSpE9wgCt67AE=; b=3qJA/9e3xyYPiTaUz2O9Rq8Nko
	puw0q5qgIcOHguDVLPutYEcDEe9LEIaj475w0vZLm7UA9ACL6cFb1RSJeGMxa1Up/lPEGXU7OxelH
	eKs07yY86+rHLSJJaaxpIWaZ4hT047pzFjKXjOBV65gsP3FJ0zIu+YdmenaqH5giMcbdIcHomYn+P
	1cPnqemRlg7oB+MLkgyhOnlnK8JcZ24euNVGe9qgCo5q101PTomuq725eYtG8CK/6q3SsKTCN2qCq
	BozjcDCaX/rfWH1kxO77oVHQ5WIFKWhJVgM0jlR5EYkRtvpMRWYilQwsowQPtCi8TwRYLPxCPj593
	WE1S/MEA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sdXgT-00000000rqm-3EmA;
	Mon, 12 Aug 2024 16:14:13 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sdXfs-00000000rj8-0jnW;
	Mon, 12 Aug 2024 16:13:37 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 36F19CE0FCA;
	Mon, 12 Aug 2024 16:13:34 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F1F4BC32782;
	Mon, 12 Aug 2024 16:13:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723479213;
	bh=0YjTgfH3hHB0i3WXLphUYB3PzSTXzdLghJd8Rv3Ffaw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=MhSrpplFKEYwtlVk144Qnb8h6EgRQApUaHgFeIzJ5rs43Qfcz8fhW/dkaEb+7Nt8z
	 rqh4DVYf4igXuO0rM8BQTq2xhjR3SOa2cYOUkeUtF2rBPoTBHyFBoeF4SasAAPZWJ3
	 /uY8fnW4neVjRNvNGUbf45h+AMGfj68syPoslq2NUjo/K9fJduRzrKTY3UJ8Mocwxk
	 t+W+iR5bLko/qUffP5PTtVImPXvg3hE2ADeLvg72O0hMh8T6gf3M2g+WKruUvxIKlG
	 8tyFukIH8gXw3pQOCx2KtB3MCJUX0P8ZRPodoDudjTgEvsTw1uEO327Z5BM7qiiwSD
	 x9NcN6ClbhvUQ==
Date: Mon, 12 Aug 2024 17:13:28 +0100
From: Conor Dooley <conor@kernel.org>
To: Detlev Casanova <detlev.casanova@collabora.com>
Cc: linux-kernel@vger.kernel.org, Linus Walleij <linus.walleij@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>, linux-gpio@vger.kernel.org,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, kernel@collabora.com
Subject: Re: [PATCH v2 1/2] dt-bindings: pinctrl: Add rk3576 pinctrl bindings
Message-ID: <20240812-decibel-abdomen-90354e0ad4e6@spud>
References: <20240808164132.81306-1-detlev.casanova@collabora.com>
 <20240808164132.81306-2-detlev.casanova@collabora.com>
 <20240809-dexterity-attention-8376b3b16d59@spud>
 <22382840.EfDdHjke4D@trenzalore>
MIME-Version: 1.0
In-Reply-To: <22382840.EfDdHjke4D@trenzalore>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240812_091336_590585_81FE5DAF 
X-CRM114-Status: GOOD (  22.55  )
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
Content-Type: multipart/mixed; boundary="===============0583575287894966040=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============0583575287894966040==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="puv11dB6IoxYMEpS"
Content-Disposition: inline


--puv11dB6IoxYMEpS
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Aug 09, 2024 at 01:53:16PM -0400, Detlev Casanova wrote:
> On Friday, 9 August 2024 10:58:38 EDT Conor Dooley wrote:
> > On Thu, Aug 08, 2024 at 12:39:55PM -0400, Detlev Casanova wrote:
> > > Add the compatible string as well as the optional rockchip,sys-grf fi=
eld.
> >=20
> > Optional for all rockchip devices supported by this binding, or just the
> > one you're adding?
>=20
> It is only optionally used by rk3576. I can add it in an 'if:', or update=
 the=20
> description with somthing like "It is used on rk3576 for i3c software=20
> controlled weak pull-up"

And if/else that restricts it to where it is available please.

>=20
> > > Signed-off-by: Detlev Casanova <detlev.casanova@collabora.com>
> > > ---
> > >=20
> > >  .../devicetree/bindings/pinctrl/rockchip,pinctrl.yaml      | 7 +++++=
++
> > >  1 file changed, 7 insertions(+)
> > >=20
> > > diff --git
> > > a/Documentation/devicetree/bindings/pinctrl/rockchip,pinctrl.yaml
> > > b/Documentation/devicetree/bindings/pinctrl/rockchip,pinctrl.yaml ind=
ex
> > > 20e806dce1ecb..cd527ccc9e6bf 100644
> > > --- a/Documentation/devicetree/bindings/pinctrl/rockchip,pinctrl.yaml
> > > +++ b/Documentation/devicetree/bindings/pinctrl/rockchip,pinctrl.yaml
> > >=20
> > > @@ -45,6 +45,7 @@ properties:
> > >        - rockchip,rk3368-pinctrl
> > >        - rockchip,rk3399-pinctrl
> > >        - rockchip,rk3568-pinctrl
> > >=20
> > > +      - rockchip,rk3576-pinctrl
> > >=20
> > >        - rockchip,rk3588-pinctrl
> > >        - rockchip,rv1108-pinctrl
> > >        - rockchip,rv1126-pinctrl
> > >=20
> > > @@ -54,6 +55,12 @@ properties:
> > >      description:
> > >        The phandle of the syscon node for the GRF registers.
> > >=20
> > > +  rockchip,sys-grf:
> > > +    $ref: /schemas/types.yaml#/definitions/phandle
> > > +    description:
> > > +      The phandle of the syscon node for the SYS GRF registers.
> > > +      It is used for i3c software controlled weak pull-up.
> > > +
> > >=20
> > >    rockchip,pmu:
> > >      $ref: /schemas/types.yaml#/definitions/phandle
> > >      description:
>=20
>=20
>=20
>=20

--puv11dB6IoxYMEpS
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZro0qAAKCRB4tDGHoIJi
0kTXAQDyKDk5IqP6NphVJj1ZkDK5QCADbb+uzV5TA37RTt+HHgEAvaubL5mfaR+X
heIH+qlN/7beb49IzJi3Kvx5wCZqXgE=
=c1VS
-----END PGP SIGNATURE-----

--puv11dB6IoxYMEpS--


--===============0583575287894966040==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============0583575287894966040==--

