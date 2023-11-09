Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 194F0C4332F
	for <linux-rockchip@archiver.kernel.org>; Thu,  9 Nov 2023 14:14:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=UtkiPEzJbKi3MyatyIkTpmWfogQPg3tcB1dK2bunNiE=; b=YD642EWFOe7Em/VYjW6VV4tCtI
	2kAicl6c/PhoCTrCWPJ3Oau3LjyayJ578cNkxbmS+NDduYAAhZ5g3pgQ+iYcCLN3HkNCzXbdRAhn4
	TMHV0GgrYDqfyh5NR4q+b3M3c1ztqvtR0/mqGE3e+2UV+QJWXJE9B1JSFFKk0O1PLRHZ3u34Nk6gz
	O9B8DObuDncfCY0hB6d0jtZX0B4YSRbwCYYiCzuJs2U3qu2QH/XFLGAUh5CkNrPtBc/6LPREDolOa
	4Bv6j/yRDXpFAYlCIn+qjbEvzmW2ABPaEoVfjxE8HlOXZq13o4/x+S/YmsRDf6VLGClcN3xMlX834
	T6eIbF2A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r15nz-006TNP-38;
	Thu, 09 Nov 2023 14:14:47 +0000
Received: from relay9-d.mail.gandi.net ([2001:4b98:dc4:8::229])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r15nv-006TK3-0S;
	Thu, 09 Nov 2023 14:14:45 +0000
Received: by mail.gandi.net (Postfix) with ESMTPSA id 7EDA8FF811;
	Thu,  9 Nov 2023 14:14:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1699539275;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=APCi42wGghFpV470GSiQEdNcIDMvIEDMF3+RieFFueo=;
	b=c595DB66E2eB1WRaQWp9gL2zGk8J6AwF8ELwcjlLYU9+hBlcxVu3DhpikAF9df4p3OS4LL
	CxPv6uUs1ZCxAJs9vZium5/ng83PiWLkJRTR2p+0daDKs/Kr6NN7ARKAnXXv6/iBoVoEdb
	kcAsIorCol0hHqz3dS8PXhAWu/th6IijYdjO0+iYqaGQF8qYK32EgzOPC5ZkBpleLxnyUQ
	qqsecvK9at+HETjeeKfwWyG22uW8AQAng/EBsCVTqLI8sC1nt9TR7yTPuSVQXosqmuuIrb
	yfQBy7Phmn+miNfPf1I33rxnJJ1sFgXntEF9U75z4rxvsZNF2ZIz6SnGn+WsJw==
Date: Thu, 9 Nov 2023 15:14:33 +0100
From: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
To: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
Cc: Benjamin Gaignard <benjamin.gaignard@collabora.com>, mchehab@kernel.org,
	tfiga@chromium.org, m.szyprowski@samsung.com, ming.qian@nxp.com,
	ezequiel@vanguardiasur.com.ar, p.zabel@pengutronix.de,
	gregkh@linuxfoundation.org, hverkuil-cisco@xs4all.nl,
	nicolas.dufresne@collabora.com, linux-media@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org, linux-arm-msm@vger.kernel.org,
	linux-rockchip@lists.infradead.org, linux-staging@lists.linux.dev,
	kernel@collabora.com, Maxime Ripard <mripard@kernel.org>
Subject: Re: [PATCH v14 35/56] media: cedrus: Stop direct calls to queue
 num_buffers field
Message-ID: <ZUzpSXDbO60uGr0t@aptenodytes>
References: <20231031163104.112469-1-benjamin.gaignard@collabora.com>
 <20231031163104.112469-36-benjamin.gaignard@collabora.com>
 <083e43d9-452a-4b11-b7f1-f75992bc795e@collabora.com>
MIME-Version: 1.0
In-Reply-To: <083e43d9-452a-4b11-b7f1-f75992bc795e@collabora.com>
X-GND-Sasl: paul.kocialkowski@bootlin.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231109_061443_482965_4A4C058E 
X-CRM114-Status: GOOD (  21.59  )
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
Content-Type: multipart/mixed; boundary="===============0245131941378278947=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============0245131941378278947==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="7c+nUYvD/peQ8Q55"
Content-Disposition: inline


--7c+nUYvD/peQ8Q55
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Andrej,

On Thu 09 Nov 23, 12:27, Andrzej Pietrasiewicz wrote:
> Hi Paul,
>=20
> W dniu 31.10.2023 o=C2=A017:30, Benjamin Gaignard pisze:
> > Use vb2_get_num_buffers() to avoid using queue num_buffers field direct=
ly.
> > This allows us to change how the number of buffers is computed in the
> > future.
> >=20
> > Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
> > Acked-by: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
>=20
> Given you've alaredy A-b, would you be ok with adding this sentence:
>=20
> "While at it, check the return value of vb2_get_buffer()."
>=20
> to the commit message body?

Not only do I agree, but because this is done in a function returning void,
you could even:

if (WARN_ON(!vb))
	continue;

so that it doesn't go completely unnoticed.

What do you think?

Cheers,

Paul

> @Benjamin:
>=20
> With this change, you can add my
>=20
> Reviewed-by: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
>=20
> > CC: Maxime Ripard <mripard@kernel.org>
> > ---
> >   drivers/staging/media/sunxi/cedrus/cedrus_h264.c | 9 +++++++--
> >   drivers/staging/media/sunxi/cedrus/cedrus_h265.c | 9 +++++++--
> >   2 files changed, 14 insertions(+), 4 deletions(-)
> >=20
> > diff --git a/drivers/staging/media/sunxi/cedrus/cedrus_h264.c b/drivers=
/staging/media/sunxi/cedrus/cedrus_h264.c
> > index dfb401df138a..3e2843ef6cce 100644
> > --- a/drivers/staging/media/sunxi/cedrus/cedrus_h264.c
> > +++ b/drivers/staging/media/sunxi/cedrus/cedrus_h264.c
> > @@ -653,8 +653,13 @@ static void cedrus_h264_stop(struct cedrus_ctx *ct=
x)
> >   	vq =3D v4l2_m2m_get_vq(ctx->fh.m2m_ctx, V4L2_BUF_TYPE_VIDEO_CAPTURE);
> > -	for (i =3D 0; i < vq->num_buffers; i++) {
> > -		buf =3D vb2_to_cedrus_buffer(vb2_get_buffer(vq, i));
> > +	for (i =3D 0; i < vb2_get_num_buffers(vq); i++) {
> > +		struct vb2_buffer *vb =3D vb2_get_buffer(vq, i);
> > +
> > +		if (!vb)
> > +			continue;
> > +
> > +		buf =3D vb2_to_cedrus_buffer(vb);
> >   		if (buf->codec.h264.mv_col_buf_size > 0) {
> >   			dma_free_attrs(dev->dev,
> > diff --git a/drivers/staging/media/sunxi/cedrus/cedrus_h265.c b/drivers=
/staging/media/sunxi/cedrus/cedrus_h265.c
> > index fc9297232456..52e94c8f2f01 100644
> > --- a/drivers/staging/media/sunxi/cedrus/cedrus_h265.c
> > +++ b/drivers/staging/media/sunxi/cedrus/cedrus_h265.c
> > @@ -869,8 +869,13 @@ static void cedrus_h265_stop(struct cedrus_ctx *ct=
x)
> >   	vq =3D v4l2_m2m_get_vq(ctx->fh.m2m_ctx, V4L2_BUF_TYPE_VIDEO_CAPTURE);
> > -	for (i =3D 0; i < vq->num_buffers; i++) {
> > -		buf =3D vb2_to_cedrus_buffer(vb2_get_buffer(vq, i));
> > +	for (i =3D 0; i < vb2_get_num_buffers(vq); i++) {
> > +		struct vb2_buffer *vb =3D vb2_get_buffer(vq, i);
> > +
> > +		if (!vb)
> > +			continue;
> > +
> > +		buf =3D vb2_to_cedrus_buffer(vb);
> >   		if (buf->codec.h265.mv_col_buf_size > 0) {
> >   			dma_free_attrs(dev->dev,
>=20

--=20
Paul Kocialkowski, Bootlin
Embedded Linux and kernel engineering
https://bootlin.com

--7c+nUYvD/peQ8Q55
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEEJZpWjZeIetVBefti3cLmz3+fv9EFAmVM6UkACgkQ3cLmz3+f
v9G8eQf/fxDOw/McA6p0ag9INEakes8Ua0qEao7YS/kLZ/JwI5ygYQwNQ+/Ic/Xc
pCbIbSa/Q1tRq5/L2rQfypMR1SX0tCBbZIpRQV+TRGxHi9/0+aGTpS4WAncwQ97T
E4u21UW6o0+jl3blbrMPF01cFDFaIEacz3QBCb7gL7ibnhSWqHd6PHXj/9j5NLLa
IzI2YNE0M6rykJFqCJrCqHdHr9S32FTuysaLqTiDT5b8V7hp/tEHfjsroUZ8TeNM
8wF24X8gdH1MjL0qMcjJsTHuqcgpeO7q689zgpRBJEjr4VdxKrYIamMYQPTxftJ3
dVOth8P5P0jxAJdjz8aiMiI7aYoNcw==
=ZLrQ
-----END PGP SIGNATURE-----

--7c+nUYvD/peQ8Q55--


--===============0245131941378278947==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============0245131941378278947==--

