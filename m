Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 08091C54EBC
	for <linux-rockchip@archiver.kernel.org>; Tue, 10 Jan 2023 15:26:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=UikJjcGwu9nkyKBEgglOOgpRT1PvehEcwzf53wLzgK4=; b=4EKM2z+yxKPKjSQuwYXSKmE9og
	UNBquS3O2E5P2kSuCA6Sb7EGNM4+KtdI7FXhLDhKHlp2wnYG06z0VwgODHnUwLnikdqBt4fFfPDQG
	gDdGzzFzbeIEaAf2LUMKJJPw3IS3va/nhZLUVLmUaFKWElrk/qEPGXwTmA4Q0r0NQ0wo7QVakJZY7
	G8QrcXuNThG3RbXJaCV6IBpquBajWAN3khlTz6Cx5HFTOVjaTX4YhhEGsUV7P21MJ9H9x+9z7j++T
	R+DWEmHDr89ztThIi/3nqE95XywkNuWLtt5VPkyThTCulw98PjMWpYf7vkE7340UZkWRsrJ/7Yb5Z
	E1e6+aCw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFGWP-007a7g-Bg; Tue, 10 Jan 2023 15:26:41 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFGWM-007a5z-6u
	for linux-rockchip@lists.infradead.org; Tue, 10 Jan 2023 15:26:40 +0000
Received: from mercury (dyndsl-091-096-058-120.ewe-ip-backbone.de [91.96.58.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sre)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 82EAA6602D7A;
	Tue, 10 Jan 2023 15:26:36 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1673364396;
	bh=XxxllFQyKLcPicYwexS4RG382EsoS8CobRkzPF1Pkqk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=jjvL4Wy19CMkfS5XRsnAPlPMN2e+AeWRzMVAmwO/cvKXGRZ9n80p1/kVUmCPUb4Hx
	 QvATCVrDlfg6r1HQ9K8uG/vGw8sa77sz2EtuWbDmIantIOmjP2gamdzxSO8V+bnVeg
	 AVBrV56Ioqdss0wLnyEWY1zmDj+grKSziS4l5DxErev6QMoIgVrUojpvXfdwJvRoc2
	 owlsxoXFYFw3O8yu/F6/Q9WwzMxL/qV33i2E6QHO78lsCdzjveI9ilfwPp63ilHI5G
	 1yJZoduQIe1LC2Z6WiAyJpgJ+QCr9sYtkckuIr7YGq0usfU8aa4wobVN1R1P7AcZBr
	 /KqRFf9/o065A==
Received: by mercury (Postfix, from userid 1000)
	id E7D3B1060774; Tue, 10 Jan 2023 16:26:31 +0100 (CET)
Date: Tue, 10 Jan 2023 16:26:31 +0100
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Heiko =?utf-8?Q?St=C3=BCbner?= <heiko@sntech.de>
Cc: Jagan Teki <jagan@edgeble.ai>,
	Christopher Obbard <chris.obbard@collabora.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Marc Zyngier <maz@kernel.org>,
	Linus Walleij <linus.walleij@linaro.org>,
	Benjamin Gaignard <benjamin.gaignard@collabora.com>,
	linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, kernel@collabora.com,
	Michael Riesch <michael.riesch@wolfvision.net>
Subject: Re: [PATCHv8 7/7] arm64: dts: rockchip: Add rock-5b board
Message-ID: <20230110152631.etavxhpofd2qmi3t@mercury.elektranox.org>
References: <20230109155801.51642-1-sebastian.reichel@collabora.com>
 <CA+VMnFxb1P4tP5sef5ME3jCcCq2Y3rD-0bpv1B0TsUZ3RXXuqg@mail.gmail.com>
 <996e39448350d4f6318f7ff59c6a2ca249fb30a7.camel@collabora.com>
 <37476486.XM6RcZxFsP@diego>
MIME-Version: 1.0
In-Reply-To: <37476486.XM6RcZxFsP@diego>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230110_072638_529012_00AC2D17 
X-CRM114-Status: GOOD (  31.20  )
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
Content-Type: multipart/mixed; boundary="===============0953201959678694396=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============0953201959678694396==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="l4ezfuydhkzkiruc"
Content-Disposition: inline


--l4ezfuydhkzkiruc
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Tue, Jan 10, 2023 at 04:07:46PM +0100, Heiko St=FCbner wrote:
> Am Dienstag, 10. Januar 2023, 15:50:17 CET schrieb Christopher Obbard:
> > On Tue, 2023-01-10 at 19:30 +0530, Jagan Teki wrote:
> > > On Mon, 9 Jan 2023 at 21:28, Sebastian Reichel
> > > <sebastian.reichel@collabora.com> wrote:
> > > >=20
> > > > From: Christopher Obbard <chris.obbard@collabora.com>
> > > >=20
> > > > Add board file for the RK3588 Rock 5B board. This is a basic
> > > > implementation which just brings up the eMMC and UART which is
> > > > enough to successfully boot Linux.
> > > >=20
> > > > The ethernet controller is connected via PCIe so support will
> > > > come in a follow-up patch.
> > > >=20
> > > > Signed-off-by: Christopher Obbard <chris.obbard@collabora.com>
> > > > Reviewed-by: Michael Riesch <michael.riesch@wolfvision.net>
> > > > Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
> > > > ---
> > > >  arch/arm64/boot/dts/rockchip/Makefile         |  1 +
> > > >  .../boot/dts/rockchip/rk3588-rock-5b.dts      | 44
> > > > +++++++++++++++++++
> > > >  2 files changed, 45 insertions(+)
> > > >  create mode 100644 arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
> > > >=20
> > > > diff --git a/arch/arm64/boot/dts/rockchip/Makefile
> > > > b/arch/arm64/boot/dts/rockchip/Makefile
> > > > index 87a853435142..c5bdd0176ce0 100644
> > > > --- a/arch/arm64/boot/dts/rockchip/Makefile
> > > > +++ b/arch/arm64/boot/dts/rockchip/Makefile
> > > > @@ -83,4 +83,5 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) +=3D rk3568-evb1-
> > > > v10.dtb
> > > >  dtb-$(CONFIG_ARCH_ROCKCHIP) +=3D rk3568-odroid-m1.dtb
> > > >  dtb-$(CONFIG_ARCH_ROCKCHIP) +=3D rk3568-rock-3a.dtb
> > > >  dtb-$(CONFIG_ARCH_ROCKCHIP) +=3D rk3588-evb1-v10.dtb
> > > > +dtb-$(CONFIG_ARCH_ROCKCHIP) +=3D rk3588-rock-5b.dtb
> > > >  dtb-$(CONFIG_ARCH_ROCKCHIP) +=3D rk3588s-rock-5a.dtb
> > > > diff --git a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
> > > > b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
> > > > new file mode 100644
> > > > index 000000000000..d2f1e963ce06
> > > > --- /dev/null
> > > > +++ b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
> > > > @@ -0,0 +1,44 @@
> > > > +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> > > > +
> > > > +/dts-v1/;
> > > > +
> > > > +#include "rk3588.dtsi"
> > > > +
> > > > +/ {
> > > > +       model =3D "Radxa ROCK 5 Model B";
> > > > +       compatible =3D "radxa,rock-5b", "rockchip,rk3588";
> > > > +
> > > > +       aliases {
> > > > +               mmc1 =3D &sdhci;
> > >=20
> > > I think sdhci - emmc has to be mmc0 due to boot priority.
> >=20
> > Hi Jagan,
> >=20
> > We kept eMMC as mmc1 for both ROCK 5 Model A and B to keep
> > compatibility with vendor kernel:
> > https://github.com/radxa/kernel/blob/stable-5.10-rock5/arch/arm64/boot/=
dts/rockchip/rk3588-rock-5b.dts#L31
> >=20
> > But I am happy to change the alias to mmc0, @Sebastian what do you
> > think?
>=20
> In any case, if you decide to swap things around, please just send a foll=
ow
> up patch, as I just applied this series :-)

No strong opinion regarding the device enumeration from my side.
I'm fine either way.

@Heiko: Thanks for merging the series.

-- Sebastian

--l4ezfuydhkzkiruc
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE72YNB0Y/i3JqeVQT2O7X88g7+poFAmO9g6AACgkQ2O7X88g7
+pr44RAAkXwmE424okAqcVR+nWqsE8cKoZCl0Rpyt1jc2ks9V570cxvC4b0FP5ON
bMub1n1T/h1+xGkWcSGUiE7gO7F99bobD6UYfRIzOSTSDFovlN4R8UhZtMgJ0OUn
7+yxlCoybbjNoiJq2MCH0igkGxeRGE2Jyi9CoRfYZIyk5jzZlTPM8cEPX3I48Nod
/dBrxbgktSC6/qlOld2fRGfjUo0JYRtQOUKB7wkKfEeUDfeOpz23XYQAFmI1knTT
fSMdTqU+BC4hanSXqDd5OBwo4vjyynxChfgRssWbnLl2k485QPMcz5epyrB/VMOi
GNZsWU545kXa4RFmF3Uv2RAEzctEyKDyCHtL9WEyEtGsAri9CciCRqxK3UOjObww
xs2cSEYn5AIjEXk1sOmFPCyBIhf/DTLFD+2deS9MX9vybg+3cvtjVnGx02+ycLt8
PUM2XrQ0hiD6OuZgWu8OMOT8BTnIs/TTf1B7tHiOqEJSalMTmh7HE05qUskx64Li
kPBdnDvjlnqmjzHoFwFUJ2k90KE5nGOPFY7uFFZIhHjCsHaTcVQ01zNfJfrHS94k
rsM9+K/1QvqtZv0RTlStzkUIXmOGj+hu93QMKukC0ZGKFIH2VHOgmotRaPma9x7q
5oSmhjw6KmD41Ut7lOBXPrdkbr3c79muPZzE05aGd2rokaEQjJA=
=XnXS
-----END PGP SIGNATURE-----

--l4ezfuydhkzkiruc--


--===============0953201959678694396==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============0953201959678694396==--

