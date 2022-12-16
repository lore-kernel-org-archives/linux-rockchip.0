Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0F041C4332F
	for <linux-rockchip@archiver.kernel.org>; Fri, 16 Dec 2022 16:10:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=W9mAfeHs5xCZBzNvFqN5CgDSPetsm0L99Gqx7EIOt50=; b=nSXv5TlR9BRsFNXCddNqWNWXfH
	RCxVC7uDKuM0thOk5XmSwiiI76uKeu8dsqdD+SEh6NSIsPB/P5yG2ps57p9uh36Z4Sml1gPSOzsS/
	3rWbyPDlWxF+ApKUd4PeJWtLX1y7Pjjclag5TSvYFtfPjQLyk4NE+38PuVBGVRTVf3SyPEGP+6iNi
	i4Jm9bYdrkL7BTG9LYvBdi4i3NM2TAqXSKasIgiZz+jzc27WZPFzJN0H48ghuylCx2oQ6WW7kMt/k
	aRZaLjf7/rl2QokwGqohIK0QzwWxYvBi1KG6238xvf93iyMdt+g1zJWuOpuFHxTj+3vunO/xSjCtg
	lAUgL5Fg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p6DI5-00GHoM-Cq; Fri, 16 Dec 2022 16:10:29 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p6DI2-00GHlo-0S
	for linux-rockchip@lists.infradead.org; Fri, 16 Dec 2022 16:10:27 +0000
Received: from mercury (dyndsl-095-033-168-084.ewe-ip-backbone.de [95.33.168.84])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sre)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 219466602C8B;
	Fri, 16 Dec 2022 16:10:22 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1671207022;
	bh=o4asnBNMNldi0GAOXTX9gpzPOFWRzzLDqEYDqvmLRnE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=LY3IQ2HVNIM9vdRzIu9dDdiibe0qTBCHpstWGj6ZToHtkNa5u1Ts8CBAZMschlOR7
	 Y8GGcx+hSa49b9aSqMte+UVc02vt717giWMnuFHiSBnCAxP5qg9zn0wWFZoz0gCgRa
	 SxwxIiqpeGkoKBGUSbonL+w976yS8yi0zNZbjJKTjyDEOLIfYrqCM6PQb7Y941Jwq6
	 FIuRVXa/v38BvpI1qd9zBAS1QYfXQJAxkzGE2Okni8CZq5js68scOZWbVYPdXp2A5u
	 +8clcsSGbOkDAOQ9feAU8mtBP2+A4i4UWfBu+Qwm9RlPMBNSN+ynm2ykPbrhAoEpwL
	 taNbY8nBPoblQ==
Received: by mercury (Postfix, from userid 1000)
	id 29B391060F45; Fri, 16 Dec 2022 17:10:20 +0100 (CET)
Date: Fri, 16 Dec 2022 17:10:20 +0100
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Nicolas Dufresne <nicolas.dufresne@collabora.com>
Cc: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Marc Zyngier <maz@kernel.org>, Jagan Teki <jagan@edgeble.ai>,
	Linus Walleij <linus.walleij@linaro.org>,
	Christopher Obbard <chris.obbard@collabora.com>,
	Benjamin Gaignard <benjamin.gaignard@collabora.com>,
	linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, kernel@collabora.com,
	Michael Riesch <michael.riesch@wolfvision.net>
Subject: Re: [PATCHv7 7/7] arm64: dts: rockchip: Add rock-5b board
Message-ID: <20221216161020.pih47wezxwpinnoo@mercury.elektranox.org>
References: <20221215183002.211081-1-sebastian.reichel@collabora.com>
 <20221215183002.211081-8-sebastian.reichel@collabora.com>
 <e3c73d1c20e12ab351a74ef1abc949810fc1ba77.camel@collabora.com>
MIME-Version: 1.0
In-Reply-To: <e3c73d1c20e12ab351a74ef1abc949810fc1ba77.camel@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221216_081026_338141_DF927212 
X-CRM114-Status: GOOD (  31.63  )
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
Content-Type: multipart/mixed; boundary="===============0712719594078425509=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============0712719594078425509==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="uizst23pjx7zvr6t"
Content-Disposition: inline


--uizst23pjx7zvr6t
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Nicolas,

On Fri, Dec 16, 2022 at 10:47:44AM -0500, Nicolas Dufresne wrote:
> Hi Sebastian and Christopher,
>=20
> Le jeudi 15 d=E9cembre 2022 =E0 19:30 +0100, Sebastian Reichel a =E9crit=
=A0:
> > From: Christopher Obbard <chris.obbard@collabora.com>
> >=20
> > Add board file for the RK3588 Rock 5B board. This is a basic
> > implementation which just brings up the eMMC and UART which is
> > enough to successfully boot Linux.
> >=20
> > The ethernet controller is connected via PCIe so support will
> > come in a follow-up patch.
> >=20
> > Signed-off-by: Christopher Obbard <chris.obbard@collabora.com>
> > Reviewed-by: Michael Riesch <michael.riesch@wolfvision.net>
> > Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
> > ---
> >  arch/arm64/boot/dts/rockchip/Makefile         |  1 +
> >  .../boot/dts/rockchip/rk3588-rock-5b.dts      | 44 +++++++++++++++++++
> >  2 files changed, 45 insertions(+)
> >  create mode 100644 arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
> >=20
> > diff --git a/arch/arm64/boot/dts/rockchip/Makefile b/arch/arm64/boot/dt=
s/rockchip/Makefile
> > index 87a853435142..c5bdd0176ce0 100644
> > --- a/arch/arm64/boot/dts/rockchip/Makefile
> > +++ b/arch/arm64/boot/dts/rockchip/Makefile
> > @@ -83,4 +83,5 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) +=3D rk3568-evb1-v10.dtb
> >  dtb-$(CONFIG_ARCH_ROCKCHIP) +=3D rk3568-odroid-m1.dtb
> >  dtb-$(CONFIG_ARCH_ROCKCHIP) +=3D rk3568-rock-3a.dtb
> >  dtb-$(CONFIG_ARCH_ROCKCHIP) +=3D rk3588-evb1-v10.dtb
> > +dtb-$(CONFIG_ARCH_ROCKCHIP) +=3D rk3588-rock-5b.dtb
> >  dtb-$(CONFIG_ARCH_ROCKCHIP) +=3D rk3588s-rock-5a.dtb
> > diff --git a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts b/arch/arm=
64/boot/dts/rockchip/rk3588-rock-5b.dts
> > new file mode 100644
> > index 000000000000..baf46bd30b38
> > --- /dev/null
> > +++ b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
> > @@ -0,0 +1,44 @@
> > +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> > +
> > +/dts-v1/;
> > +
> > +#include "rk3588.dtsi"
> > +
> > +/ {
> > +	model =3D "Radxa Rock 5B Board";
> > +	compatible =3D "radxa,rock-5b", "rockchip,rk3588";
> > +
> > +	aliases {
> > +		mmc1 =3D &sdhci;
>=20
> I have no useful knowledge, but it seems the mmc alias don't match the ve=
ndor.
> When I run your branch on Rock5B, the EMMC endup on /dev/mmcblk1 (aka mmc=
1 alias
> I think) while when I boot the vendor kernel, it is always mmcblk0 (aka m=
mc0
> alias?). Perhaps the vendor didn't add aliases ?
>
> There could also be mainline rules to number based on the boot order. In =
this
> case, the difference would be acceptable, since SPL boot order is (usb?) =
> SD
> Card > EMMC > SPI NOR. Though, the SPL is picked from the opposite order =
(spi,
> emmc, sd card). Anyway, I'm just trying to express that I noticed a diffe=
rence,
> and its not guarantied to be a bug.

The public vendor tree specifies the same alias, so I expected the
vendor kernel to have the eMMC at /dev/mmcblk1:

https://github.com/radxa/kernel/blob/stable-5.10-rock5/arch/arm64/boot/dts/=
rockchip/rk3588-rock-5b.dts#L31

checking the vendor tree again, it also has a rk3588-rock-5b-v11.dts,
which does not have any aliases configured. Are you using that?

-- Sebastian

>=20
> > +		serial2 =3D &uart2;
> > +	};
> > +
> > +	chosen {
> > +		stdout-path =3D "serial2:1500000n8";
> > +	};
> > +
> > +	vcc5v0_sys: vcc5v0-sys-regulator {
> > +		compatible =3D "regulator-fixed";
> > +		regulator-name =3D "vcc5v0_sys";
> > +		regulator-always-on;
> > +		regulator-boot-on;
> > +		regulator-min-microvolt =3D <5000000>;
> > +		regulator-max-microvolt =3D <5000000>;
> > +	};
> > +};
> > +
> > +&sdhci {
> > +	bus-width =3D <8>;
> > +	no-sdio;
> > +	no-sd;
> > +	non-removable;
> > +	max-frequency =3D <200000000>;
> > +	mmc-hs400-1_8v;
> > +	mmc-hs400-enhanced-strobe;
> > +	status =3D "okay";
> > +};
> > +
> > +&uart2 {
> > +	pinctrl-0 =3D <&uart2m0_xfer>;
> > +	status =3D "okay";
> > +};
> > --=20
> > 2.39.0
> >=20
> >=20
>=20

--uizst23pjx7zvr6t
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE72YNB0Y/i3JqeVQT2O7X88g7+poFAmOcmGIACgkQ2O7X88g7
+poKFBAAk/ViyvA3js9BdWAsSxBXZ/aqK/eZascewUf/suIrDZt0eARO7R8vwZo6
N32KNA6SAGcrpTu31QbqKs+98P54ICmZvZyyrXXlfkWGcdJj+f0VYwumbdtNulxj
pYL2YfZKzsHImLZDGNjkGHKC6QuPLPxNmANRYSFSWxe4lFCnwgA10kYCNCtPGv6R
Uiy6M6Ntv++0E8LPaLOPKlcykOTVYmA37oaCEQsnBODk3nf1UQzjrNQTdq4SceJ1
RKQtajtOz9q3R7O+eZfCVfy3gaLwsi/DEA8gt8OsqeQGxeBg0YtQytFGlV/gpULR
4UyDa5EAj7TOt7p0LktB0ti7iQYw2lniZjQftK2zeAK3874grSabWW/zcN+UgCm1
pzSTvX3VUIF87CVRwsjsJghvnfg/y6lxg/wwBs10kuFT1gA5O4v+VuneMuuqthB+
KxnZ/wWxZYEcWsIIuBAjvOc/DiNHK4nLvrfWaG+HfT/tNzUe0ITN90VQvQaIFFis
GrPIQJmWaVe9lBbRvcrMc+UeQ9bWK/MYaybWCZYgG5LsT88R8WSOo26QCQHbAa/6
DPD7iccK/34ROy++KfquxhKYMbDLxLVL+NM+62gdEZdHGf9FQsrsAk54iBsJeJlK
8Qw7AkNOz+I1CEu+/vXSRrH8wF01fd2v8BjJJa/mKsoYYcAogJo=
=2pu7
-----END PGP SIGNATURE-----

--uizst23pjx7zvr6t--


--===============0712719594078425509==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============0712719594078425509==--

