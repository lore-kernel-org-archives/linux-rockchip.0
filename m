Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AE568C27C53
	for <linux-rockchip@archiver.kernel.org>; Wed, 12 Jun 2024 22:21:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=rLTlwg+QSCp1j+Q+4WXl/oJbO04Yo+JwADhXFibH9Fo=; b=Q2WkPIb8toGcZEAtr4jDt3O3Vt
	LGlnUYGT0qniwyQ2OyImg48LzUyRPLTAniLumm/kFghwrSwa+wJIYezAY+Y9mtv59Ic+iGJWc/BWX
	1w5ImPCvNkF3/HHnb3S9VSpJw82xnOHlZO0pBWSLW1xydqd1MLXoPz0iFnb/NmswVD8bfqKRuWfAL
	3Brf6nRXJpE/C9oHUU0X8ggrX9g6kIy07GXQ9Fc404LJ5eBP8vcA7nvf+7vPx+etfW8zT+W2C4A7a
	0YCtDnrwslOGdNQ3ADesWzuVPEGCvwwLDaQZQd2Ce/40e6pCR9cvqr81VP02DpefoYv+JQJP2Kvkw
	9uYjA8zg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sHWL2-0000000EJFd-1IQX;
	Wed, 12 Jun 2024 22:21:04 +0000
Received: from madrid.collaboradmins.com ([46.235.227.194])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sHWKy-0000000EJF4-2UZO
	for linux-rockchip@lists.infradead.org;
	Wed, 12 Jun 2024 22:21:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1718230858;
	bh=z6S78JodWNuADElHskPehWDvqD/HSQ05v50azD0XDU0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=4wrKYE+oAXWGyeA4J+OREQFqe0MxZHe+9mW95n0gTbaGx42th4Uxk3SHZJyHGNEef
	 /zxCJZA6nGfVgomHsVv0MdEC/nZxaEyJeTiR0HKfJNLaO1l0wTHhuXXKbz28wACs7g
	 /F+NpfIw3rAVgVHV+b4XmdPdMqugLVCXVkKWAW0x6yJPx6B5mk/S3kTkBayuGCPY+S
	 UdYX7Rsavr27VU486ZXami/ExF0Mc1p1FjWF/0KLB+0CKsANr2+1G0YIjUJId9Q1OH
	 bt7gqm92sMaL0X1VhC6r1U1/4sYbVPQg/zsCutfGEG1nzEv9NraGzElM5PQSeM0xs4
	 pMI5ZuPFNnqbQ==
Received: from mercury (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sre)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id 6ED2137820F9;
	Wed, 12 Jun 2024 22:20:58 +0000 (UTC)
Received: by mercury (Postfix, from userid 1000)
	id E54E110608F7; Thu, 13 Jun 2024 00:20:57 +0200 (CEST)
Date: Thu, 13 Jun 2024 00:20:57 +0200
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: "Rob Herring (Arm)" <robh@kernel.org>
Cc: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>, 
	devicetree@vger.kernel.org, Nicolas Dufresne <nicolas.dufresne@collabora.com>, 
	Jianfeng Liu <liujianfeng1994@gmail.com>, linux-rockchip@lists.infradead.org, 
	Nicolas Frattaroli <frattaroli.nicolas@gmail.com>, Emmanuel Gil Peyrot <linkmauve@linkmauve.fr>, 
	kernel@collabora.com, Heiko Stuebner <heiko@sntech.de>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, linux-media@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Philipp Zabel <p.zabel@pengutronix.de>, Conor Dooley <conor+dt@kernel.org>
Subject: Re: [PATCH v5 1/5] media: dt-bindings: rk3568-vepu: Add RK3588
 VEPU121
Message-ID: <t5yyanxuweou6edj3subsbtndow6nwwexcgkhctfx3mdkoi7dl@zjtqmvklwzz4>
References: <20240612173213.42827-1-sebastian.reichel@collabora.com>
 <20240612173213.42827-2-sebastian.reichel@collabora.com>
 <171821679246.3419351.9732124883795406633.robh@kernel.org>
MIME-Version: 1.0
In-Reply-To: <171821679246.3419351.9732124883795406633.robh@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240612_152100_814800_9C249869 
X-CRM114-Status: GOOD (  22.86  )
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
Content-Type: multipart/mixed; boundary="===============7959689457702110184=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============7959689457702110184==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="ntp3lma6src7nirh"
Content-Disposition: inline


--ntp3lma6src7nirh
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Wed, Jun 12, 2024 at 12:26:32PM GMT, Rob Herring (Arm) wrote:
> On Wed, 12 Jun 2024 19:15:41 +0200, Sebastian Reichel wrote:
> > From: Emmanuel Gil Peyrot <linkmauve@linkmauve.fr>
> >=20
> > This encoder-only device is present four times on this SoC, and should
> > support everything the rk3568 vepu supports (so JPEG, H.264 and VP8
> > encoding). No fallback compatible has been added, since the operating
> > systems might already support RK3568 VEPU and want to avoid registering
> > four of them separately considering they can be used as a cluster.
> >=20
> > Signed-off-by: Emmanuel Gil Peyrot <linkmauve@linkmauve.fr>
> > Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
> > ---
> >  .../devicetree/bindings/media/rockchip,rk3568-vepu.yaml      | 5 +++--
> >  1 file changed, 3 insertions(+), 2 deletions(-)
> >=20
>=20
> My bot found errors running 'make dt_binding_check' on your patch:
>=20
> yamllint warnings/errors:
>=20
> dtschema/dtc warnings/errors:
> /builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/m=
edia/rockchip,rk3568-vepu.yaml: properties:compatible:oneOf: [{'const': 'ro=
ckchip,rk3568-vepu'}, {'const': 'rockchip,rk3588-vepu121'}] should not be v=
alid under {'items': {'propertyNames': {'const': 'const'}, 'required': ['co=
nst']}}
> 	hint: Use 'enum' rather than 'oneOf' + 'const' entries
> 	from schema $id: http://devicetree.org/meta-schemas/keywords.yaml#
>=20
> doc reference errors (make refcheckdocs):
>=20
> See https://patchwork.ozlabs.org/project/devicetree-bindings/patch/202406=
12173213.42827-2-sebastian.reichel@collabora.com
>=20
> The base for the series is generally the latest rc1. A different dependen=
cy
> should be noted in *this* patch.
>=20
> If you already ran 'make dt_binding_check' and didn't see the above
> error(s), then make sure 'yamllint' is installed and dt-schema is up to
> date:
>=20
> pip3 install dtschema --upgrade
>=20
> Please check and re-submit after running the above command yourself. Note
> that DT_SCHEMA_FILES can be set to your schema file to speed up checking
> your schema. However, it must be unset to test all examples with your sch=
ema.

oops. That's on me for not doing another test and doing something
stupid. I obviously wanted this and didn't recheck the bindings
after dropping the fallback compatible.

enum:
  - rockchip,rk3568-vepu
  - rockchip,rk3588-vepu121

I will change it in v6 if people are fine with this solution.

-- Sebastian

--ntp3lma6src7nirh
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE72YNB0Y/i3JqeVQT2O7X88g7+poFAmZqH0IACgkQ2O7X88g7
+pqdoA/9EV2En/+YR2Jzd8BcFmaqKhPrT3iarETgvi+l5Pil5FpQk+4uPvpRYTpJ
XsvG36RWz2jDBnHwqIwcqbU6fzM/YdEQbyk6RzCQwbJ7aZrDgq+Va4+RzlwNb9YG
Cvd00NTkP+Nvj1vdP7YQ4hkB9jHpGNAU6AsF+Te+A3K/YDkqvSMwDAyAL+n5bN8D
i8n3x0R5DOUVKibVFZgQgf+onqXPf9HGOfZhxGzyPArnK8i9ccyu6BGSjwcQYWIr
q24mfPKWIKmRR8+7BQvyG0gA/YPhtYzmCei4zAVXEmM9ZzK3CjNub7jHOBsBTdX/
BEAWc/S1LBboiHF1Nk3eDZr7GyUGL3i+mnMS7VJ9i35GKMNqUo/dLc9su+UVWHGK
V4T89f+yADLH1ojY4aUB9Ay3f96D3bVnHlH+RcqNvS4L0R+0lhEJ7DS5NW6yq+kn
MR+odxWpNJoQvbQJ66vb0xCr57YmKSOXNqq+k4IBXUbLG8fQf7XytmqVstZ90iGy
/PEfFTG1gjpySqENBccrQd2liRWtxsEfF/AQe3N1tthyXMORiCc1805FThm7IsFr
tTN2vaFTZt5FCv/07WzT5KyP6iQkxwiKnshN6L7wIhovNj/yo6HkW1GJ1jZx/Eab
QnzlBXW2SJpf4q6z3PMLd7ZzjBaYio+FIBDsv4PvO3mOymc6lMs=
=977a
-----END PGP SIGNATURE-----

--ntp3lma6src7nirh--


--===============7959689457702110184==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============7959689457702110184==--

