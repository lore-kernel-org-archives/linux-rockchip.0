Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 49B37C77B7E
	for <linux-rockchip@archiver.kernel.org>; Thu, 25 May 2023 15:17:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=QP4BBo3uBNZfGooZAVY2GqImm73iXDwVmy26nh/s764=; b=yTHq9Oc9k/NQ5EoTp694HdFMu2
	YoEIxhxeVm9l1wgtofXYJvlzNUe9O0c+Cq0T+KiV6ygqj6PlJJ/4pxVIRvVhVdrOQ20qpfuqktWh0
	Ox0oIC/FscX6Io0Wjdn4AvoJjsCzvvOQoQGPwBOzOYymFkzU6/77gkDxwbMLrpzNGi2FfW+axL+Nw
	NUmqVqRpTbots3eTcjWoHOW2QUlccExxi0X8cXFAWMU4vMzFfLCXQCg8CiRHfoj15hF1lTAXp32kX
	Vj3drxb+2uScZBZiw8i0o0/EhdpIvVmdrGn9ZbiipmkLFsip4XZuKsmK9QLYC8rd7qVd0vu3TZC9n
	F6hBjiWQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q2Ci8-00GwdG-2R;
	Thu, 25 May 2023 15:17:04 +0000
Received: from relay9-d.mail.gandi.net ([2001:4b98:dc4:8::229])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q2Ci4-00Gwbd-0O
	for linux-rockchip@lists.infradead.org;
	Thu, 25 May 2023 15:17:02 +0000
X-GND-Sasl: didi.debian@cknow.org
X-GND-Sasl: didi.debian@cknow.org
X-GND-Sasl: didi.debian@cknow.org
X-GND-Sasl: didi.debian@cknow.org
X-GND-Sasl: didi.debian@cknow.org
X-GND-Sasl: didi.debian@cknow.org
X-GND-Sasl: didi.debian@cknow.org
X-GND-Sasl: didi.debian@cknow.org
X-GND-Sasl: didi.debian@cknow.org
X-GND-Sasl: didi.debian@cknow.org
X-GND-Sasl: didi.debian@cknow.org
X-GND-Sasl: didi.debian@cknow.org
Received: by mail.gandi.net (Postfix) with ESMTPSA id 9C8A0FF805;
	Thu, 25 May 2023 15:16:47 +0000 (UTC)
From: Diederik de Haas <didi.debian@cknow.org>
To: ezequiel@vanguardiasur.com.ar, p.zabel@pengutronix.de, mchehab@kernel.org,
 hverkuil-cisco@xs4all.nl, benjamin.gaignard@collabora.com,
 linux-rockchip@lists.infradead.org, debian-qa@lists.debian.org,
 Nicolas Dufresne <nicolas@ndufresne.ca>
Cc: linux-media@vger.kernel.org, kernel@pengutronix.de,
 m.tretter@pengutronix.de,
 "Linux regression tracking (Thorsten Leemhuis)" <regressions@leemhuis.info>
Subject: Re: [PATCH] media: verisilicon: Fix null pointer dereference in try_fmt
Date: Thu, 25 May 2023 17:16:36 +0200
Message-ID: <2952965.Kq1lg62c9O@prancing-pony>
Organization: Connecting Knowledge
In-Reply-To: <a651486dbfdc2f755098b3f400c48ae3958eb6d8.camel@ndufresne.ca>
References: <20230516091209.3098262-1-m.tretter@pengutronix.de>
 <6444204.lOV4Wx5bFT@bagend>
 <a651486dbfdc2f755098b3f400c48ae3958eb6d8.camel@ndufresne.ca>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230525_081700_471513_65AEF914 
X-CRM114-Status: GOOD (  26.80  )
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
Content-Type: multipart/mixed; boundary="===============6558176692996160430=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

--===============6558176692996160430==
Content-Type: multipart/signed; boundary="nextPart4188323.5loy5DmCSj";
 micalg="pgp-sha256"; protocol="application/pgp-signature"

--nextPart4188323.5loy5DmCSj
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"; protected-headers="v1"
From: Diederik de Haas <didi.debian@cknow.org>
Date: Thu, 25 May 2023 17:16:36 +0200
Message-ID: <2952965.Kq1lg62c9O@prancing-pony>
Organization: Connecting Knowledge
MIME-Version: 1.0

Hi Nicolas,

On Thursday, 25 May 2023 16:36:13 CEST Nicolas Dufresne wrote:
> Le mardi 23 mai 2023 =E0 16:22 +0200, Diederik de Haas a =E9crit :
> > On Tuesday, 16 May 2023 11:12:09 CEST Michael Tretter wrote:
> > > Since commit db6f68b51e5c ("media: verisilicon: Do not set context
> > > src/dst formats in reset functions"), vpu_src_fmt is not set in the
> > > reset function, but only set in hantro_set_fmt_out, which calls
> > > hantro_try_fmt before setting the format. Therefore, hantro_try_fmt
> > > might be called with vpu_src_fmt still being null.
> > >=20
> > > Add a test if the format is actually set before checking the format.
> > >=20
> > > Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
> > > Fixes: db6f68b51e5c ("media: verisilicon: Do not set context src/dst
> > > formats in reset functions") ---
> > >=20
> > >  drivers/media/platform/verisilicon/hantro_v4l2.c | 9 ++++++---
> > >  1 file changed, 6 insertions(+), 3 deletions(-)
> > >=20
> > > diff --git a/drivers/media/platform/verisilicon/hantro_v4l2.c
> > > b/drivers/media/platform/verisilicon/hantro_v4l2.c index
> > > 835518534e3b..ec37d2646fde 100644
> > > --- a/drivers/media/platform/verisilicon/hantro_v4l2.c
> > > +++ b/drivers/media/platform/verisilicon/hantro_v4l2.c
> > > @@ -313,17 +313,20 @@ static int hantro_try_fmt(const struct hantro_c=
tx
> > > *ctx, /* Fill remaining fields */
> > >=20
> > >  		v4l2_fill_pixfmt_mp(pix_mp, fmt->fourcc, pix_mp->width,
> > >  	=09
> > >  				    pix_mp->height);
> > >=20
> > > -		if (ctx->vpu_src_fmt->fourcc =3D=3D=20
V4L2_PIX_FMT_H264_SLICE
> >=20
> > &&
> >=20
> > > +		if (ctx->vpu_src_fmt &&
> > > +		    ctx->vpu_src_fmt->fourcc =3D=3D V4L2_PIX_FMT_H264_SLICE
> >=20
> > &&
> >=20
> > >  		    !hantro_needs_postproc(ctx, fmt))
> > >  		=09
> > >  			pix_mp->plane_fmt[0].sizeimage +=3D
> > >  		=09
> > >  				hantro_h264_mv_size(pix_mp-
> > >=20
> > > width,
> > >=20
> > >  						   =20
pix_mp-
> > >=20
> > > height);
> > > -		else if (ctx->vpu_src_fmt->fourcc =3D=3D
> >=20
> > V4L2_PIX_FMT_VP9_FRAME &&
> >=20
> > > +		else if (ctx->vpu_src_fmt &&
> > > +			 ctx->vpu_src_fmt->fourcc =3D=3D
> >=20
> > V4L2_PIX_FMT_VP9_FRAME &&
> >=20
> > >  			 !hantro_needs_postproc(ctx, fmt))
> > >  		=09
> > >  			pix_mp->plane_fmt[0].sizeimage +=3D
> > >  		=09
> > >  				hantro_vp9_mv_size(pix_mp-
>width,
> > >  			=09
> > >  						   pix_mp-
> > >=20
> > > height);
> > > -		else if (ctx->vpu_src_fmt->fourcc =3D=3D
> >=20
> > V4L2_PIX_FMT_HEVC_SLICE &&
> >=20
> > > +		else if (ctx->vpu_src_fmt &&
> > > +			 ctx->vpu_src_fmt->fourcc =3D=3D
> >=20
> > V4L2_PIX_FMT_HEVC_SLICE &&
> >=20
> > >  			 !hantro_needs_postproc(ctx, fmt))
> > >  		=09
> > >  			pix_mp->plane_fmt[0].sizeimage +=3D
> > >  		=09
> > >  				hantro_hevc_mv_size(pix_mp-
> > >=20
> > > width,
> >=20
> > I have verified that this patch fixes the crash I was seeing since 6.4.
> > https://lore.kernel.org/linux-media/12724349.O9o76ZdvQC@bagend/ is a/the
> > other patch which also fixed the crash.
>=20
> An official form of this comment would be Tested-by: <name> <email>, would
> you agree to have this added ?

I don't have a principle objection to that, but I already did give my=20
"Tested-by" for what I think is the latest version to fix this issue:
https://lore.kernel.org/linux-media/3187393.mvXUDI8C0e@bagend/

I was about to 'raise concern', but I just saw that Hans Verkuil already we=
nt=20
with the patch for which I had (officially) added my "Tested-by"

Cheers,
  Diederik
--nextPart4188323.5loy5DmCSj
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQT1sUPBYsyGmi4usy/XblvOeH7bbgUCZG971AAKCRDXblvOeH7b
boF4AP0ZiatWpDLodWGpp9DAtCWHTEb2UX5e0q4FiDu3jtuucgEA3etbSX+6bSgq
vyFyB6HXT/QTMbG26Dp2yDTLG8jwQAs=
=1Pcb
-----END PGP SIGNATURE-----

--nextPart4188323.5loy5DmCSj--





--===============6558176692996160430==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============6558176692996160430==--




