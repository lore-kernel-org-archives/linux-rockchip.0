Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2AE34C4332F
	for <linux-rockchip@archiver.kernel.org>; Fri, 10 Nov 2023 08:33:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=tD0/k0lyHCswCfbWeh6fg0kz8RNQaeAcPvJJHc3XByA=; b=bCyf8AaqMS9D5J2iGmUPCI6cXw
	inF1ffX59eAPGZLqbZ+Zh9ojHe/J+rdFomTGCNcmHXJYk9QkZIdEhl3+OkvJOMHh+1GDmSvaSZJrI
	g2/u56ZekK3e3LsYJgvxtcrRXNwY4i4Mq9CIX/iUir3jkWmY3enWmgFFKG3E4t2ReORxWddz0wV/g
	d0y+Wil4EynBpdTvHQvolcaJO2Dbc/WmlqmgUJtN6z04iQ1JtRS6o4UaSEejmRaQ3Q3L+AjsK9yG7
	YnCzmmfOMlacwBYpINn/AKRhHiqFl7pUUFNqoERvTCYwjXDwglI0nWgvs5v2My8VhqcTtrima9C50
	hqd6GbTQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r1MxT-0086Ex-0Z;
	Fri, 10 Nov 2023 08:33:43 +0000
Received: from relay9-d.mail.gandi.net ([217.70.183.199])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r1MxQ-0086EA-0I
	for linux-rockchip@lists.infradead.org;
	Fri, 10 Nov 2023 08:33:42 +0000
Received: by mail.gandi.net (Postfix) with ESMTPSA id ECCC7FF816;
	Fri, 10 Nov 2023 08:33:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1699605215;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=gB43CUZmJbt1uK77TzguVku9sEfalDL3rG9/cdJIn2s=;
	b=mIP+a2PTDV/8iO84GywCAxWKSOAkV4Tz75EPrMTwnlyaXLCJYGq6wwTCzMfE0De3jpru4+
	SDdBoEdhZf0y3H5qhE55wxVmj7oT15D8MklPT8f9UQ38BFsbnaGPRxKPCEH23WKxIGZ6j7
	kAWx1QrpPFF6FUaJoSTTFYLSN/k8t9PIAKgaWdojBX4U16/csE2Qa3OiKPWjqa4G7eASbV
	QBaYcnJAnwNnruhSAuDzfiIdt/oB0Co4QCZyk0xCw7E5+ZLbilbNQ02liNpfVoFCCdw2xI
	BCVs6rvkT4viovqOK7Kcq6HS0wTYqpNCzWlXC44PBNL6VrfRfdZxgOsMy4JkqQ==
Date: Fri, 10 Nov 2023 09:33:31 +0100
From: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
To: Nicolas Dufresne <nicolas.dufresne@collabora.com>
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org, linux-staging@lists.linux.dev,
	Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Hans Verkuil <hverkuil-cisco@xs4all.nl>,
	Daniel Almeida <daniel.almeida@collabora.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Sebastian Fricke <sebastian.fricke@collabora.com>,
	Thomas Petazzoni <thomas.petazzoni@bootlin.com>
Subject: Re: [PATCH 3/4] media: verisilicon: Hook the (TRY_)DECODER_CMD
 stateless ioctls
Message-ID: <ZU3q2y_QA6Pznvtf@aptenodytes>
References: <20231109201640.340556-1-paul.kocialkowski@bootlin.com>
 <20231109201640.340556-3-paul.kocialkowski@bootlin.com>
 <fd9ca918dcbc892169b9f0dae7d0de537f4035ed.camel@collabora.com>
MIME-Version: 1.0
In-Reply-To: <fd9ca918dcbc892169b9f0dae7d0de537f4035ed.camel@collabora.com>
X-GND-Sasl: paul.kocialkowski@bootlin.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231110_003340_551483_1693AE9D 
X-CRM114-Status: GOOD (  25.13  )
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
Content-Type: multipart/mixed; boundary="===============2798938766129389365=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============2798938766129389365==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="3MXm4gGfTLjHj6aB"
Content-Disposition: inline


--3MXm4gGfTLjHj6aB
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Nicolas,

On Thu 09 Nov 23, 16:38, Nicolas Dufresne wrote:
> Le jeudi 09 novembre 2023 =C3=A0 21:16 +0100, Paul Kocialkowski a =C3=A9c=
rit=C2=A0:
> > The (TRY_)DECODER_CMD ioctls are used to support flushing when holding =
capture
> > buffers is supported. This is the case of this driver but the ioctls we=
re never
> > hooked to the ioctl ops.
> >=20
> > Add them to correctly support flushing.
>=20
> While this CMD looks useful on paper, we have had no use for it in any
> open source user space. So with this in mind, shall we really enable it
> ? How can we be sure that its actually working as intended ?

Well I think it's part of the spec that it needs to be supportd.

I must admit I have never used it in a real use case either, but it can be =
fixed
later (without changing the uAPI) if the implementation turns out to be
malfunctioning.

Cheers,

Paul

> > Fixes: 340ce50f75a6 ("media: hantro: Enable HOLD_CAPTURE_BUF for H.264")
> > Signed-off-by: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
> > ---
> >  drivers/media/platform/verisilicon/hantro_drv.c  | 2 ++
> >  drivers/media/platform/verisilicon/hantro_v4l2.c | 3 +++
> >  2 files changed, 5 insertions(+)
> >=20
> > diff --git a/drivers/media/platform/verisilicon/hantro_drv.c b/drivers/=
media/platform/verisilicon/hantro_drv.c
> > index a9fa05ac56a9..3a2a0f28cbfe 100644
> > --- a/drivers/media/platform/verisilicon/hantro_drv.c
> > +++ b/drivers/media/platform/verisilicon/hantro_drv.c
> > @@ -905,6 +905,8 @@ static int hantro_add_func(struct hantro_dev *vpu, =
unsigned int funcid)
> > =20
> >  	if (funcid =3D=3D MEDIA_ENT_F_PROC_VIDEO_ENCODER) {
> >  		vpu->encoder =3D func;
> > +		v4l2_disable_ioctl(vfd, VIDIOC_TRY_DECODER_CMD);
> > +		v4l2_disable_ioctl(vfd, VIDIOC_DECODER_CMD);
> >  	} else {
> >  		vpu->decoder =3D func;
> >  		v4l2_disable_ioctl(vfd, VIDIOC_TRY_ENCODER_CMD);
> > diff --git a/drivers/media/platform/verisilicon/hantro_v4l2.c b/drivers=
/media/platform/verisilicon/hantro_v4l2.c
> > index b3ae037a50f6..db145519fc5d 100644
> > --- a/drivers/media/platform/verisilicon/hantro_v4l2.c
> > +++ b/drivers/media/platform/verisilicon/hantro_v4l2.c
> > @@ -785,6 +785,9 @@ const struct v4l2_ioctl_ops hantro_ioctl_ops =3D {
> >  	.vidioc_g_selection =3D vidioc_g_selection,
> >  	.vidioc_s_selection =3D vidioc_s_selection,
> > =20
> > +	.vidioc_decoder_cmd =3D v4l2_m2m_ioctl_stateless_decoder_cmd,
> > +	.vidioc_try_decoder_cmd =3D v4l2_m2m_ioctl_stateless_try_decoder_cmd,
> > +
> >  	.vidioc_try_encoder_cmd =3D v4l2_m2m_ioctl_try_encoder_cmd,
> >  	.vidioc_encoder_cmd =3D vidioc_encoder_cmd,
> >  };
>=20

--=20
Paul Kocialkowski, Bootlin
Embedded Linux and kernel engineering
https://bootlin.com

--3MXm4gGfTLjHj6aB
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEEJZpWjZeIetVBefti3cLmz3+fv9EFAmVN6tsACgkQ3cLmz3+f
v9GVsgf8DMLAlPBim8kfNcpPsxElmqMySid66bm7l6rB8E0DGEkIhTw6taMy9Ymh
5auzxmmd70FN07tX+OIUj6Pmal3Cj89meSTs51d08lSFQYJfhoQYbEQW1dt1sV+F
T5CUni7z0F0oiWcCYDAwYcWoeB2FvUdzONn5eI++jJCwr4JQjnc1N1QoAFnhCjUe
sx0VbiGR0kzbzAkMzn58RsignlPo4ogTCdUhabzlsc89nKWHxKdQZFlRvgqWC2Zy
A1oHds2fjTEtUklvB9f8QwEaTTXqS1QtocDVXsCKe3Y6ye0atsjNCLpnPRNmP2ZP
qbC23m0lvg48Zm78iBtBZK5KTgZD2A==
=st8d
-----END PGP SIGNATURE-----

--3MXm4gGfTLjHj6aB--


--===============2798938766129389365==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============2798938766129389365==--

