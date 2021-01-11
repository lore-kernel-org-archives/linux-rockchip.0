Return-Path: <SRS0=mNPc=GO=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-9.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B06F4C433DB
	for <linux-rockchip@archiver.kernel.org>; Mon, 11 Jan 2021 17:23:35 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 62AC622AAD
	for <linux-rockchip@archiver.kernel.org>; Mon, 11 Jan 2021 17:23:35 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 62AC622AAD
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=bootlin.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=BqCX8sVZbtZhVE2wGm1ML87A4PyfyGdFXkXp9uo8OMk=; b=eR4qmagubuWT2gH1RdW0k4Q9F
	PI4O19yd+jDJ57fiyv2fGycWhACpg/cHuZ1iGXtiZOX4gkigbGIrGN3ioyfi7sBu8h+Ix48Fq3JIV
	bk+fHChoY2A9SxrmGyK0qYjSyOg05Z6ONNPL/O9X4rmdYdt8KF9HfhSZc/ONdV7KMEAk4eTGlO93W
	9w98VSIVEMoYCn1+Mvk1J11sMhXoklXPbsgmaFjE4o65Arp5/t5y6TRtUT4HWOlu/bcP6ZXimdvvq
	l8xvChxgMHUW/38ewx7e4Ovqv2l85lm3E2Cdz/PA/V5tUPf9+zV09X1AfpqfbTVox6UK50jCenfLq
	iXlKXHygg==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kz0uh-0007BG-Vk; Mon, 11 Jan 2021 17:23:32 +0000
Received: from relay6-d.mail.gandi.net ([217.70.183.198])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kz0uW-00076D-S7; Mon, 11 Jan 2021 17:23:23 +0000
X-Originating-IP: 93.29.109.196
Received: from aptenodytes (196.109.29.93.rev.sfr.net [93.29.109.196])
 (Authenticated sender: paul.kocialkowski@bootlin.com)
 by relay6-d.mail.gandi.net (Postfix) with ESMTPSA id 926CBC0005;
 Mon, 11 Jan 2021 17:23:14 +0000 (UTC)
Date: Mon, 11 Jan 2021 18:23:13 +0100
From: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
To: Ezequiel Garcia <ezequiel@collabora.com>
Subject: Re: [PATCH 5/5] media: hantro: Add support for the Rockchip PX30
Message-ID: <X/yJgRXToYvYlapj@aptenodytes>
References: <20210107134101.195426-1-paul.kocialkowski@bootlin.com>
 <20210107134101.195426-6-paul.kocialkowski@bootlin.com>
 <f7291b83fe39d71c3192ea58ebf71e3909bd38af.camel@collabora.com>
 <X/ggTOOTBhGoFDpW@aptenodytes>
 <f9a163675ae05cc77b2d527ea5d68064fbbeead9.camel@collabora.com>
MIME-Version: 1.0
In-Reply-To: <f9a163675ae05cc77b2d527ea5d68064fbbeead9.camel@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210111_122321_138039_411CA9CE 
X-CRM114-Status: GOOD (  26.08  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Cc: devicetree@vger.kernel.org, Heiko Stuebner <heiko@sntech.de>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, linux-rockchip@lists.infradead.org,
 Jacob Chen <jacob-chen@iotwrt.com>, Philipp Zabel <p.zabel@pengutronix.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: multipart/mixed; boundary="===============1652067816347027958=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============1652067816347027958==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="1emMtAQaK8QkpPQv"
Content-Disposition: inline


--1emMtAQaK8QkpPQv
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Fri 08 Jan 21, 10:13, Ezequiel Garcia wrote:
> On Fri, 2021-01-08 at 10:05 +0100, Paul Kocialkowski wrote:
> > Hi Ezequiel,
> >=20
> > On Thu 07 Jan 21, 16:08, Ezequiel Garcia wrote:
> > > Happy to see this patch. It was on my TODO list,
> > > but I hadn't had time to bringup my rk3326 device.
> >=20
> > Same here, I just had an occasion to use it again these days so I jumped
> > on it!
> >=20
> > > A few comments.
> > >=20
> > > On Thu, 2021-01-07 at 14:41 +0100, Paul Kocialkowski wrote:
> > > > The PX30 SoC includes both the VDPU2 and VEPU2 blocks which are sim=
ilar
> > > > to the RK3399 (Hantro G1/H1 with shuffled registers).
> > > >=20
> > > > Besides taking an extra clock, it also shares an interrupt with the=
 IOMMU
> > > > so it's necessary to request the interrupt shared.
> > > >=20
> > >=20
> [..]
> > > > diff --git a/drivers/staging/media/hantro/hantro_hw.h b/drivers/sta=
ging/media/hantro/hantro_hw.h
> > > > index 34c9e4649a25..07f516fd7a2e 100644
> > > > --- a/drivers/staging/media/hantro/hantro_hw.h
> > > > +++ b/drivers/staging/media/hantro/hantro_hw.h
> > > > @@ -148,6 +148,7 @@ enum hantro_enc_fmt {
> > > > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0RK3288_VPU_ENC_FMT_=
UYVY422 =3D 3,
> > > > =C2=A0};
> > > > =C2=A0
> > > > +extern const struct hantro_variant px30_vpu_variant;
> > > > =C2=A0extern const struct hantro_variant rk3399_vpu_variant;
> > > > =C2=A0extern const struct hantro_variant rk3328_vpu_variant;
> > > > =C2=A0extern const struct hantro_variant rk3288_vpu_variant;
> > > > diff --git a/drivers/staging/media/hantro/rk3399_vpu_hw.c b/drivers=
/staging/media/hantro/rk3399_vpu_hw.c
> > > > index 7a7962cf771e..4112f98baa60 100644
> > > > --- a/drivers/staging/media/hantro/rk3399_vpu_hw.c
> > > > +++ b/drivers/staging/media/hantro/rk3399_vpu_hw.c
> > >=20
> > > Perhaps it's time to rename this to rockchip_vpu_hw.c,
> > > and merge rk3288 and rk3399? It's a nitpick, though.
> >=20
> > Haha, I was thinking the exact same thing but wasn't sure it would be w=
elcome!
> >=20
> > I was thinking of rockchip_vpu2_hw.c or rockchip_vdpu2_hw.c since that's
> > apparently how it's called in Rockchip terminology: VDPU2 and VEPU2 for=
 the
> > Hantro G1 and H1 with the shuffled register layout. The rk3288 stuff is
> > probably VDPU1/VEPU1 and we might want to rename it accordingly as well.
> >=20
>=20
> I'd rather keep it simple as rockchip_vpu_hw.c and just throw in there
> all the rockchip stuff.

Do you also mean merging all the rk*_vpu_hw.c files into one or just coveri=
ng
the general helpers (and not the platform-specific structures)?

Cheers,

Paul

--=20
Paul Kocialkowski, Bootlin
Embedded Linux and kernel engineering
https://bootlin.com

--1emMtAQaK8QkpPQv
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEEJZpWjZeIetVBefti3cLmz3+fv9EFAl/8iYEACgkQ3cLmz3+f
v9Go3wf8CY2beRCaepip+ySAr3f0rsAttGwT8TjAqe+dBrzZTyFhjEDEi2azyUgp
bA49M4gc6+nCMtbfoGmOUrgffYiFy2SJqyTeICeTQviFY9I6xDjUprn5SSO40ohA
Hh762PMKF47CXeC6mYAQ9Np2merbDP4kqNcUmCNctOKy4mSGec94BgdHIx8ABlBW
exWvVw8AS0TzMoeIJALRzGV5BMTqKpwb5yHnTdwfN2UtiKJDl2J8GIP2koHTpSDw
OE6ZVsY7ksYjvu7Kzs8RGjWksHNTViiCHygSrdSIYMYV22H6l5Gj2pgKMWpMs7hR
I/F/7cVY0gP+RMFIVzTALLgvQWhFIA==
=fdgl
-----END PGP SIGNATURE-----

--1emMtAQaK8QkpPQv--


--===============1652067816347027958==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============1652067816347027958==--

