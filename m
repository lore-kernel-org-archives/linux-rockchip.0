Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 901B7C27C79
	for <linux-rockchip@archiver.kernel.org>; Thu, 20 Jun 2024 13:41:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=04Sb7KGcz7p4dnWW05qbTu3C8QhbCAVI9bps+RDTaP8=; b=pu/ruvgU6TOr+57rcTqwfKRwEw
	z/akAy9HRoUiWbLdXaVKG3X0uYecNXSo74c1SSjxOonjO3gB28JZ5EvH7YTUCSiO7agAGIbP36eEe
	bgrrAlnmNqdtyKxtPX56u9OdsC6c8LDx9AApZ+rJULOF/ydZB8f61qz0tsXyr6YushP1f/Ms3zAv1
	ovbaTgMqaU5avMx/KB8vHtadsxnCm86ijEK9AjIVRlk6ljbivwsISMExGIUc2kJZXw/4E9bX3evFd
	dCetmLXEx499JmDMpWd7UEQnqRupy+ppqgYOReoiC0aNEL+/mhKOGj4+wYC311lpb4E6Uhlyrv8Mj
	EnGuz6Vg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sKI2I-00000005FhA-1gd3;
	Thu, 20 Jun 2024 13:41:10 +0000
Received: from madrid.collaboradmins.com ([46.235.227.194])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sKI2E-00000005FgB-2LZB;
	Thu, 20 Jun 2024 13:41:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1718890863;
	bh=MXb/JFel+g0jLVI/vSHtNdzpSZ2gi9otcO1O+OJ3IgI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=31rEfK1zKEp5adqlU6WR3ZhzqN8vRiZ/q5Jwns/Crg+wTVk0x3NL5HOstTmAEV19l
	 s4BYiQLQ1V4N0kbAREM9oDSc/0Pz5WY8vNt8MkfQ+n9zCdD7y1PKLSDXLpo+fOcdcu
	 rRV/HsL0xJRQIYWEgn2UuOvGIcAZ62MCZu71WC7EC4YcRwlzGm9r3Qs4Ctz+tBmCOc
	 lklEVSIK4VXQ6+7ik4TIb/fIv9zp7ioBtLy9CZKa+wc1TqMlPv0tDdwcCqzj4P5VKo
	 qzQzwpItuPD/572aWhfGjTCB0uoKZnYgVrtuldPj4Gpm+OkGH2RPrzlfrbx8giTGjw
	 CeZE78Srmwcdw==
Received: from mercury (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sre)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id 5D1773782039;
	Thu, 20 Jun 2024 13:41:03 +0000 (UTC)
Received: by mercury (Postfix, from userid 1000)
	id 0687C106045A; Thu, 20 Jun 2024 15:41:03 +0200 (CEST)
Date: Thu, 20 Jun 2024 15:41:03 +0200
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Detlev Casanova <detlev.casanova@collabora.com>, 
	linux-kernel@vger.kernel.org, Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>, 
	Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	Dragan Simic <dsimic@manjaro.org>, Diederik de Haas <didi.debian@cknow.org>, 
	Andy Yan <andy.yan@rock-chips.com>, Boris Brezillon <boris.brezillon@collabora.com>, 
	Hans Verkuil <hverkuil-cisco@xs4all.nl>, Daniel Almeida <daniel.almeida@collabora.com>, 
	Paul Kocialkowski <paul.kocialkowski@bootlin.com>, Nicolas Dufresne <nicolas.dufresne@collabora.com>, 
	Benjamin Gaignard <benjamin.gaignard@collabora.com>, Jonas Karlman <jonas@kwiboo.se>, Alex Bee <knaerzche@gmail.com>, 
	linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-staging@lists.linux.dev
Subject: Re: [PATCH v2 2/4] media: rockchip: Introduce the rkvdec2 driver
Message-ID: <klzru2ak3yxccywqr57bslyctqtmrl2d3eghgv5letp7jkel6s@rlupljmxfijg>
References: <20240619150029.59730-1-detlev.casanova@collabora.com>
 <20240619150029.59730-3-detlev.casanova@collabora.com>
 <dc232a01-1495-42ff-ad2a-5a0aa780b60c@kernel.org>
MIME-Version: 1.0
In-Reply-To: <dc232a01-1495-42ff-ad2a-5a0aa780b60c@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240620_064106_750391_549FC05A 
X-CRM114-Status: GOOD (  24.38  )
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
Content-Type: multipart/mixed; boundary="===============5716705739887243868=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============5716705739887243868==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="twf4p3kbbzlssnu2"
Content-Disposition: inline


--twf4p3kbbzlssnu2
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Thu, Jun 20, 2024 at 12:30:00PM GMT, Krzysztof Kozlowski wrote:
> On 19/06/2024 16:57, Detlev Casanova wrote:
> > +static const char * const rkvdec2_clk_names[] =3D {
> > +	"axi",
> > +	"ahb",
> > +	"core",
> > +	"cabac",
> > +	"hevc_cabac",
> > +};
> > +
> > +/*
> > + * Some SoCs, like RK3588 have multiple identical vdpu34x cores, but t=
he
> > + * kernel is currently missing support for multi-core handling. Exposi=
ng
> > + * separate devices for each core to userspace is bad, since that does
> > + * not allow scheduling tasks properly (and creates ABI). With this wo=
rkaround
> > + * the driver will only probe for the first core and early exit for th=
e other
> > + * cores. Once the driver gains multi-core support, the same technique
> > + * for detecting the main core can be used to cluster all cores togeth=
er.
> > + */
> > +static int rkvdec2_disable_multicore(struct rkvdec2_dev *rkvdec)
> > +{
> > +	const char *compatible;
> > +	struct device_node *node;
> > +	int ret;
> > +
> > +	/* Intentionally ignores the fallback strings */
> > +	ret =3D of_property_read_string(rkvdec->dev->of_node, "compatible", &=
compatible);
> > +	if (ret)
> > +		return ret;
> > +
> > +	/* first compatible node found from the root node is considered the m=
ain core */
>=20
> So you rely on order of nodes? Before you claim "identical cores", but
> now "main core" suggests one is different than others.

Heh, I wrote that comment for Hantro. By main core I was referencing
the software side of things. With a number of equal cores and no DT
node describing a cluster (from HW point of view it's just equal
cores), they somehow need to be combined into a single entity to allow
scheduling work between them. This solves the issue by making one of
the devices the "main" device. From the HW point it's exactly the same
as the others. The function could also use the last core or the second
one. It does not matter as long as there is only one "main" core.

Greetings,

-- Sebastian

--twf4p3kbbzlssnu2
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE72YNB0Y/i3JqeVQT2O7X88g7+poFAmZ0MWQACgkQ2O7X88g7
+pqbMA//Z5Ti8uy0mdUzAGS0Mfn5J1NUNWqus8fR5S7wDtYVJYvyqrsEkSeJ0iFw
1f3sPaNTIQQS4KTPhRtjCi6BImU9MnfOAJYELHFqibESxacqAIDxGhqiQkC57t2h
9tI13kcEiUM69czxT6cmJIeZ3Y9cJ0znaJ+HTs/QRGYM+OnOr4tIDdC5/CRWK3od
7cZizdGpbg0q2f/OaY7AAmNLlTL/5UgWD5xXQzud1hAAR1FhZlK3VSp4OPsdlpP+
+zEArBx9XtW+Os6l4Nn73T5p+Ibqgood9dxdq58MEkHhlFzWwoDjCgItqSBMJkby
y8u0whzx/EjJ/onaeBtuzAXsf7OAALtnkz5WV8Cs8lqBI7ekhG5QkMOxZ0AGbKI/
ZmtOrA3n1995HJqxMpKuepyF3oVy28YloNbA/5PNWqOFLAEM3pM7r0/fF6DeMrZf
evKFG4n3BXHcACwScohbaIgBXAsm8fkcoiS2Wh6cyC1nqjhbXtd+jYrlOsdYrziQ
IYpL8zSf5FtjD8uOjFlGNYuVc5tAqit2NBz3ok7VXvY2KdVy6CQpjhdxTk1ZJxwh
cMNGsGx/sKSatNWURaNqmyYKoxaZe/TglJS6sl1Wfk2A8m88krx6aRj2qIfhm8B2
PMoDwflLXjwBRC+gXa7h+SS/yZFcCZ+4DcM/T5WNCmdc8qiJ2ys=
=okQ+
-----END PGP SIGNATURE-----

--twf4p3kbbzlssnu2--


--===============5716705739887243868==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============5716705739887243868==--

