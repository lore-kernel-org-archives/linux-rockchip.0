Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 80564CA0FFD
	for <linux-rockchip@archiver.kernel.org>; Wed, 27 Aug 2025 19:15:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=z+M+xUpVjVk1Dxft5NjEqWH2GkbHKUBDlPiIhNtK5nQ=; b=HTCDYHbEjGy0+8cHDOy49z/Ug1
	bToPyJnTAknPotwRcfEst6XTqOCpfzk1SzZN9cP+r8IjBFr/eRJBnlb1oJlfDK24AyypdDNTf/Xqs
	WyaRtTylP8Ay27EohH3UBbtFhgB7f5FzV4i6wHs3LHnYWdEnvS7NEReyNSnGHByJpy0QLrF8ckaqz
	Z9n7MgN6wOANdQdptRvTI4vr0eKtxZSunpG02II38lzSFHEVF62new7seZR5ZXt2p/elHYpz/dbdu
	u8RPloNjgmx+dcDE5v5aheAbHjvHOaICJJs3wr0Hv8q3OsmSEGJ8lU2elumfLiLlmMUpr105lSo8F
	7pkPKNdw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1urLbv-0000000GZFA-08ET;
	Wed, 27 Aug 2025 19:15:07 +0000
Received: from leonov.paulk.fr ([185.233.101.22])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1urIke-0000000G99r-3VhF
	for linux-rockchip@lists.infradead.org;
	Wed, 27 Aug 2025 16:11:58 +0000
Received: from laika.paulk.fr (12.234.24.109.rev.sfr.net [109.24.234.12])
	by leonov.paulk.fr (Postfix) with ESMTPS id 842481F0005E
	for <linux-rockchip@lists.infradead.org>; Wed, 27 Aug 2025 16:11:54 +0000 (UTC)
Received: by laika.paulk.fr (Postfix, from userid 65534)
	id A940CB020DB; Wed, 27 Aug 2025 16:11:53 +0000 (UTC)
Received: from shepard (unknown [192.168.1.1])
	by laika.paulk.fr (Postfix) with ESMTPSA id AB57FB020D6;
	Wed, 27 Aug 2025 16:11:52 +0000 (UTC)
Date: Wed, 27 Aug 2025 18:11:50 +0200
From: Paul Kocialkowski <paulk@sys-base.io>
To: Nicolas Dufresne <nicolas.dufresne@collabora.com>
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Benjamin Gaignard <benjamin.gaignard@collabora.com>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Mauro Carvalho Chehab <mchehab@kernel.org>
Subject: Re: [PATCH] media: verisilicon: Explicitly disable all encoder
 ioctls for decoders
Message-ID: <aK8uRrlbMWZsA88Q@shepard>
References: <20250826190416.1287089-1-paulk@sys-base.io>
 <ee7416c9db2128ab1a8c1bbdc7cd231da21e5b53.camel@collabora.com>
MIME-Version: 1.0
In-Reply-To: <ee7416c9db2128ab1a8c1bbdc7cd231da21e5b53.camel@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250827_091157_189293_4F2EC137 
X-CRM114-Status: GOOD (  28.34  )
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
Content-Type: multipart/mixed; boundary="===============8372727571673814636=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============8372727571673814636==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="C71n5l9ay7s/mv82"
Content-Disposition: inline


--C71n5l9ay7s/mv82
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Nicolas,

On Wed 27 Aug 25, 10:30, Nicolas Dufresne wrote:
> Hi Paul,
>=20
> Le mardi 26 ao=C3=BBt 2025 =C3=A0 21:04 +0200, Paul Kocialkowski a =C3=A9=
crit=C2=A0:
> > Call the dedicated v4l2_disable_ioctl helper instead of manually
> > checking whether the current context is an encoder for the selection
> > ioctls.
> >=20
> > Signed-off-by: Paul Kocialkowski <paulk@sys-base.io>
> > ---
> > =C2=A0drivers/media/platform/verisilicon/hantro_drv.c=C2=A0 | 2 ++
> > =C2=A0drivers/media/platform/verisilicon/hantro_v4l2.c | 6 ++----
> > =C2=A02 files changed, 4 insertions(+), 4 deletions(-)
> >=20
> > diff --git a/drivers/media/platform/verisilicon/hantro_drv.c
> > b/drivers/media/platform/verisilicon/hantro_drv.c
> > index 4cc9d00fd293..6fb28a6293e7 100644
> > --- a/drivers/media/platform/verisilicon/hantro_drv.c
> > +++ b/drivers/media/platform/verisilicon/hantro_drv.c
> > @@ -916,6 +916,8 @@ static int hantro_add_func(struct hantro_dev *vpu,
> > unsigned int funcid)
> > =C2=A0		vpu->decoder =3D func;
> > =C2=A0		v4l2_disable_ioctl(vfd, VIDIOC_TRY_ENCODER_CMD);
> > =C2=A0		v4l2_disable_ioctl(vfd, VIDIOC_ENCODER_CMD);
> > +		v4l2_disable_ioctl(vfd, VIDIOC_G_SELECTION);
> > +		v4l2_disable_ioctl(vfd, VIDIOC_S_SELECTION);
>=20
> Disabling this IOCTL for JPEG is fine, but for VP8, H.264, HEVC, VP9 and =
AV1, it
> is pretty much mandatory. Otherwise your stream will advertise the padded
> dimentions and there would be no way to tell it that what is the cropping=
 window
> for bitstream generation purpose.

Maybe the lack of context around the patch doesn't make it clear, but this =
is
to disable the ioctls for decoders (not encoders), which don't need to use =
the
selection API. This keeps the ioctls enabled and available for all encoders.

> Considering you are looking forward adding H.264 encoding, do you really =
want
> to apply this fix ?

I am well aware that this is required to setup the crop in the coded bitstr=
eam
and I am definitely using it in my encoding work :)

Cheers,

Paul

>=20
> Nicolas
>=20
> > =C2=A0	}
> > =C2=A0
> > =C2=A0	video_set_drvdata(vfd, vpu);
> > diff --git a/drivers/media/platform/verisilicon/hantro_v4l2.c
> > b/drivers/media/platform/verisilicon/hantro_v4l2.c
> > index 6bcd892e7bb4..fcf3bd9bcda2 100644
> > --- a/drivers/media/platform/verisilicon/hantro_v4l2.c
> > +++ b/drivers/media/platform/verisilicon/hantro_v4l2.c
> > @@ -663,8 +663,7 @@ static int vidioc_g_selection(struct file *file, vo=
id
> > *priv,
> > =C2=A0	struct hantro_ctx *ctx =3D file_to_ctx(file);
> > =C2=A0
> > =C2=A0	/* Crop only supported on source. */
> > -	if (!ctx->is_encoder ||
> > -	=C2=A0=C2=A0=C2=A0 sel->type !=3D V4L2_BUF_TYPE_VIDEO_OUTPUT)
> > +	if (sel->type !=3D V4L2_BUF_TYPE_VIDEO_OUTPUT)
> > =C2=A0		return -EINVAL;
> > =C2=A0
> > =C2=A0	switch (sel->target) {
> > @@ -696,8 +695,7 @@ static int vidioc_s_selection(struct file *file, vo=
id
> > *priv,
> > =C2=A0	struct vb2_queue *vq;
> > =C2=A0
> > =C2=A0	/* Crop only supported on source. */
> > -	if (!ctx->is_encoder ||
> > -	=C2=A0=C2=A0=C2=A0 sel->type !=3D V4L2_BUF_TYPE_VIDEO_OUTPUT)
> > +	if (sel->type !=3D V4L2_BUF_TYPE_VIDEO_OUTPUT)
> > =C2=A0		return -EINVAL;
> > =C2=A0
> > =C2=A0	/* Change not allowed if the queue is streaming. */



--=20
Paul Kocialkowski,

Independent contractor - sys-base - https://www.sys-base.io/
Free software developer - https://www.paulk.fr/

Expert in multimedia, graphics and embedded hardware support with Linux.

--C71n5l9ay7s/mv82
Content-Type: application/pgp-signature; name=signature.asc

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEAbcMXZQMtj1fphLChP3B6o/ulQwFAmivLkYACgkQhP3B6o/u
lQxk1A/9ELY5RTuo/mlmxWE7Lq+eC0ax4KNowasbC3RE5o9RQ18n2yDBD1TCeXlv
4ZAQVTjE/oBy4/tQ43FH7vt3xgMLjvZ09+XUefXvT00ITtMekW4POd+oqeEaNyWi
jfr128LANaLTRODiDIeuufVOK9KTlcIpR7aZjA/FXgq8iOtibWzQxWBQV1JiWwTS
fwiTRfkSYAxyIIHRBYbLh/lhorl34uDp44i4vZdmg7Dy77RVzn7zwz4al5Gsut7w
WGWgsUPX1UDMvJ6jXEHw99JRAhR168M1VSo8zAD3iC2I8hxH7HSHaY5zZXraolEL
8pBysbXDWNV8AjxcyIDdykgnlLqrY6fhctQA7x6cOF0ls1Z/tO7yc8YckjK/Scnw
/cBPAxbalXEGeB+8AEIFiJAe6WE/ciyq28cm75xadkkIc9iBLw7KJD1aDVF7g9kC
yVV0LHoeNlVBR82MsxFAzIRyPvSnjqF92gBLmFqU5tgygxMtLTse44Hvq3drlc3M
/vcZqfdRMZFkrkcw5D1HPxirPPuF+nv2XPlF/PBOTSxexg73PpZLfzJYD5MQGNHD
YIlhOOpmBEJLhD5kQswvACua6Av3wbeO2/nGFk9ZZuF2BHYGsRKL2gxOmqe07beG
1WRv8r+M0hHzKYC/MnjZWgPMWnCp0J/H8WnrLktVIrlv2L/zNyM=
=87s1
-----END PGP SIGNATURE-----

--C71n5l9ay7s/mv82--


--===============8372727571673814636==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============8372727571673814636==--

