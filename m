Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 70B8DE77361
	for <linux-rockchip@archiver.kernel.org>; Wed, 24 Dec 2025 15:03:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:Cc:To:From:Subject:Message-ID:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=g/kF+ssTfw8F/88r6nCvUBqq9iXOQYSkVy8PrcjUnCY=; b=fwIQAQomg2WgEJ/Rdpsh8fTMn8
	01oGUGPbr6Ol5AH6UPTm6sQlmwgG1QwSTNHrBRUBOXwL6la2sqIw0VoXwiRk+Lkj4POYUogMZnNKJ
	OE4DoHryuJ2f16lfSMthMy1Bdo018v3kVOrocskCZSOUO2ahhzMqDsb0HeWAf3p/zj6qJkims4nPC
	TaSRuCJhTKALYOSS2aTuH6GNtTOXkNuNTzmalpBYA8rvfjCc1Cz3QU3iq7UDSQcKjEKekPMOd0abj
	y7mzaoXWZ39qIL+TEfQW2jeM9pRkn0I6cP58Y522TLRylD99iRXbwUQ/5hqlKFVyeMd897VhYVNXF
	nNma7XvQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vYQOT-0000000H3RK-2DPK;
	Wed, 24 Dec 2025 15:03:17 +0000
Received: from mail-qv1-xf2c.google.com ([2607:f8b0:4864:20::f2c])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vYQOQ-0000000H3Pt-1Q4c
	for linux-rockchip@lists.infradead.org;
	Wed, 24 Dec 2025 15:03:16 +0000
Received: by mail-qv1-xf2c.google.com with SMTP id 6a1803df08f44-8888a1c50e8so76823426d6.0
        for <linux-rockchip@lists.infradead.org>; Wed, 24 Dec 2025 07:03:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ndufresne-ca.20230601.gappssmtp.com; s=20230601; t=1766588593; x=1767193393; darn=lists.infradead.org;
        h=mime-version:user-agent:autocrypt:references:in-reply-to:date:cc:to
         :from:subject:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=w64xTWyuKcyjwlXtEdhivm1+7YRXLmiG7pc3O8NKLas=;
        b=wpJt4b6uIeM3h8RLA5TGLqcv5HviC/jykdhcG7NLa75le4dozR5WGtq9sqGfqdOy7t
         BPruBtoZJoWxS3gGE+W60/NnCFvFTiEuZAnmUntXdQTwWagHQI17HfC7YVaHN0TgaD/v
         Dgp9UFhZCHPi5mUWQ/ItJ+hHQnOzWgLQW1f7kVHNiMF0FqYeTsAg0VoB3E4R0Jb6GLe+
         LYQS1Ffl59YMFMsTUIUfMvpdbiPQU4wA9BrKsxAoaJCEpzrhATw+HNvOkp21RQHh3bFy
         xKSV98BHC7EevdIP0oLgl/XZfMdYDkoVbxSrP2DEZi+HtDVz1s9Idk9l+gIVquoVJeGL
         q8Pg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766588593; x=1767193393;
        h=mime-version:user-agent:autocrypt:references:in-reply-to:date:cc:to
         :from:subject:message-id:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=w64xTWyuKcyjwlXtEdhivm1+7YRXLmiG7pc3O8NKLas=;
        b=KEE7RBPiHBEKqrNiGSmxdT9H36mGlDbDq19FjZil8BL++0A7G+rVltnu9Z3oOM7U6g
         +P5Oe7b7a0sn4Jyi1npN0GUgzpnCVQGck+oKAhwa0pvPpbwjl9H7xt4WhDnx0SWcwssR
         szNZIuqV50W+ADwR23SnNMpjQOD+426UUSXxZx1aqxgDKNhEMtka+k/UTbQ54SS4OJX6
         zOnBvhlrBJ+c5dcxBMLSQnwjZcgkKAydIFhzoVvRrNbrMeEBKuadTOsK3pZ127B7Y2G1
         UapBZM8wG+cgdS+EFHcw23NdcStFZ+p/TlbAMHRxEhcPvWDv3lrK+o4Nx7DuzpAIbnZw
         S0Lw==
X-Forwarded-Encrypted: i=1; AJvYcCW74UU19tHBQzvCqLMzKer1ppfmHs0KhzzsbbHGdT6//VuUUShM9SCblAgxnQb5UWbC1NdVQkEJ0bZn2i858w==@lists.infradead.org
X-Gm-Message-State: AOJu0YwH3wMUR1mK0ZJ1aTv49OUdF7H28u7PqiZmIorSwpqNRNDtVSNv
	ikWUpf2ae+HrNcbr/AickwW4RTvefPcuJOdlzJyaLGKkFWxVa2LQpa92uXqEMxtfsFw=
X-Gm-Gg: AY/fxX7WcTKTyG3MkOPyZ9sCz5rYiV+2jusxmfDUP93Vgp95Ep4J6RvFOrLLMUl7QZQ
	zefX8mL+BOYYD4PBOItvDsrdqIb+UkjT3MSyaRsDZ4PtA+KkZPyULfrQmIJCbqk8OGlUDcZljhN
	tsRVdWCE+DYdPWD3UsnhmfxgNv9b4t/M8lnIvQ8Jv2nIkQn+niYQRlF7jew9ij89BFJOmc3Vm5W
	dMGqvZCFO3BoQ+GVLunZoPfMZ7J/V4L1eyuIhig6B48LO9CEZD6t/X/HLgbzb/MHim6Q9vxPm3Q
	290mip1VcBGHZQZoYiIzozhoNN6RiUFZ1SkJdFO/YucXb7PSh1OLZ1sXCY1lV6fsKHmnBcVzYtP
	8KNjOSvLAurulKbEp/uHL0YzXZ/0DG6Yeuj9HMdaFcFuFo20IPad5m0PqZlzA6qx7DRY1ofad/m
	f3TPHzPc2SZ+AsgUHm
X-Google-Smtp-Source: AGHT+IG13tCOi+/wPYw3H8H+1kJrJic8pKz8a1mR2iPpKvfOI1YIO+tJgGI/sjTl+Zvh3EOTI/q99A==
X-Received: by 2002:a05:6214:4685:b0:87d:fde1:f88b with SMTP id 6a1803df08f44-88d8203ebe8mr257400426d6.4.1766588592827;
        Wed, 24 Dec 2025 07:03:12 -0800 (PST)
Received: from ?IPv6:2606:6d00:17:7b4b::c41? ([2606:6d00:17:7b4b::c41])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-88d9a83f6f3sm132079966d6.55.2025.12.24.07.03.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Dec 2025 07:03:11 -0800 (PST)
Message-ID: <2e84355c399fbce499d86e2b35b88d406460d6b1.camel@ndufresne.ca>
Subject: Re: [PATCH v2 06/22] media: rockchip: rga: remove redundant
 rga_frame variables
From: Nicolas Dufresne <nicolas@ndufresne.ca>
To: Sven =?ISO-8859-1?Q?P=FCschel?= <s.pueschel@pengutronix.de>, Jacob Chen
	 <jacob-chen@iotwrt.com>, Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>, 
 Mauro Carvalho Chehab
	 <mchehab@kernel.org>, Heiko Stuebner <heiko@sntech.de>, Rob Herring
	 <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
	 <conor+dt@kernel.org>
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org, kernel@pengutronix.de
Date: Wed, 24 Dec 2025 10:03:10 -0500
In-Reply-To: <20251203-spu-rga3-v2-6-989a67947f71@pengutronix.de>
References: <20251203-spu-rga3-v2-0-989a67947f71@pengutronix.de>
	 <20251203-spu-rga3-v2-6-989a67947f71@pengutronix.de>
Autocrypt: addr=nicolas@ndufresne.ca; prefer-encrypt=mutual;
 keydata=mDMEaCN2ixYJKwYBBAHaRw8BAQdAM0EHepTful3JOIzcPv6ekHOenE1u0vDG1gdHFrChD
 /e0J05pY29sYXMgRHVmcmVzbmUgPG5pY29sYXNAbmR1ZnJlc25lLmNhPoicBBMWCgBEAhsDBQsJCA
 cCAiICBhUKCQgLAgQWAgMBAh4HAheABQkJZfd1FiEE7w1SgRXEw8IaBG8S2UGUUSlgcvQFAmibrjo
 CGQEACgkQ2UGUUSlgcvQlQwD/RjpU1SZYcKG6pnfnQ8ivgtTkGDRUJ8gP3fK7+XUjRNIA/iXfhXMN
 abIWxO2oCXKf3TdD7aQ4070KO6zSxIcxgNQFtDFOaWNvbGFzIER1ZnJlc25lIDxuaWNvbGFzLmR1Z
 nJlc25lQGNvbGxhYm9yYS5jb20+iJkEExYKAEECGwMFCwkIBwICIgIGFQoJCAsCBBYCAwECHgcCF4
 AWIQTvDVKBFcTDwhoEbxLZQZRRKWBy9AUCaCyyxgUJCWX3dQAKCRDZQZRRKWBy9ARJAP96pFmLffZ
 smBUpkyVBfFAf+zq6BJt769R0al3kHvUKdgD9G7KAHuioxD2v6SX7idpIazjzx8b8rfzwTWyOQWHC
 AAS0LU5pY29sYXMgRHVmcmVzbmUgPG5pY29sYXMuZHVmcmVzbmVAZ21haWwuY29tPoiZBBMWCgBBF
 iEE7w1SgRXEw8IaBG8S2UGUUSlgcvQFAmibrGYCGwMFCQll93UFCwkIBwICIgIGFQoJCAsCBBYCAw
 ECHgcCF4AACgkQ2UGUUSlgcvRObgD/YnQjfi4+L8f4fI7p1pPMTwRTcaRdy6aqkKEmKsCArzQBAK8
 bRLv9QjuqsE6oQZra/RB4widZPvphs78H0P6NmpIJ
User-Agent: Evolution 3.58.2 (3.58.2-1.fc43) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251224_070314_418604_11444632 
X-CRM114-Status: GOOD (  19.08  )
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
Content-Type: multipart/mixed; boundary="===============2161842064523764428=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============2161842064523764428==
Content-Type: multipart/signed; micalg="pgp-sha512";
	protocol="application/pgp-signature"; boundary="=-78I1Q0OO2YaNMqG0/1Yc"


--=-78I1Q0OO2YaNMqG0/1Yc
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Le mercredi 03 d=C3=A9cembre 2025 =C3=A0 16:52 +0100, Sven P=C3=BCschel a =
=C3=A9crit=C2=A0:
> Remove the redundant rga_frame variables width, height and color space.
> The value of these variables is already contained in the pix member
> of rga_frame. The code also keeps these values in sync. Therefore drop
> them in favor of the existing pix member.
>=20
> Signed-off-by: Sven P=C3=BCschel <s.pueschel@pengutronix.de>

Reviewed-by: Nicolas Dufresne <nicolas.dufresne@collabora.com>

> ---
> =C2=A0drivers/media/platform/rockchip/rga/rga-buf.c |=C2=A0 6 ++---
> =C2=A0drivers/media/platform/rockchip/rga/rga-hw.c=C2=A0 |=C2=A0 6 ++---
> =C2=A0drivers/media/platform/rockchip/rga/rga.c=C2=A0=C2=A0=C2=A0=C2=A0 |=
 32 ++++++++++-----------------
> =C2=A0drivers/media/platform/rockchip/rga/rga.h=C2=A0=C2=A0=C2=A0=C2=A0 |=
=C2=A0 5 -----
> =C2=A04 files changed, 18 insertions(+), 31 deletions(-)
>=20
> diff --git a/drivers/media/platform/rockchip/rga/rga-buf.c b/drivers/medi=
a/platform/rockchip/rga/rga-buf.c
> index b5e6b1b527ca8..0c59a4d330888 100644
> --- a/drivers/media/platform/rockchip/rga/rga-buf.c
> +++ b/drivers/media/platform/rockchip/rga/rga-buf.c
> @@ -100,10 +100,10 @@ static int get_plane_offset(struct rga_frame *f,
> =C2=A0	if (plane =3D=3D 0)
> =C2=A0		return 0;
> =C2=A0	if (plane =3D=3D 1)
> -		return stride * f->height;
> +		return stride * f->pix.height;
> =C2=A0	if (plane =3D=3D 2)
> -		return stride * f->height +
> -		=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 (stride * f->height / info->hdiv =
/ info->vdiv);
> +		return stride * f->pix.height +
> +		=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 (stride * f->pix.height / info->h=
div / info->vdiv);
> =C2=A0
> =C2=A0	return -EINVAL;
> =C2=A0}
> diff --git a/drivers/media/platform/rockchip/rga/rga-hw.c b/drivers/media=
/platform/rockchip/rga/rga-hw.c
> index 43ed742a16492..f1d5237472941 100644
> --- a/drivers/media/platform/rockchip/rga/rga-hw.c
> +++ b/drivers/media/platform/rockchip/rga/rga-hw.c
> @@ -53,7 +53,7 @@ rga_get_addr_offset(struct rga_frame *frm, struct rga_a=
ddr_offset *offset,
> =C2=A0	x_div =3D frm->fmt->x_div;
> =C2=A0	y_div =3D frm->fmt->y_div;
> =C2=A0	uv_stride =3D frm->stride / x_div;
> -	pixel_width =3D frm->stride / frm->width;
> +	pixel_width =3D frm->stride / frm->pix.width;
> =C2=A0
> =C2=A0	lt->y_off =3D offset->y_off + y * frm->stride + x * pixel_width;
> =C2=A0	lt->u_off =3D offset->u_off + (y / y_div) * uv_stride + x / x_div;
> @@ -191,7 +191,7 @@ static void rga_cmd_set_trans_info(struct rga_ctx *ct=
x)
> =C2=A0
> =C2=A0	if (RGA_COLOR_FMT_IS_YUV(ctx->in.fmt->hw_format) &&
> =C2=A0	=C2=A0=C2=A0=C2=A0 RGA_COLOR_FMT_IS_RGB(ctx->out.fmt->hw_format)) =
{
> -		switch (ctx->in.colorspace) {
> +		switch (ctx->in.pix.colorspace) {
> =C2=A0		case V4L2_COLORSPACE_REC709:
> =C2=A0			src_info.data.csc_mode =3D RGA_SRC_CSC_MODE_BT709_R0;
> =C2=A0			break;
> @@ -203,7 +203,7 @@ static void rga_cmd_set_trans_info(struct rga_ctx *ct=
x)
> =C2=A0
> =C2=A0	if (RGA_COLOR_FMT_IS_RGB(ctx->in.fmt->hw_format) &&
> =C2=A0	=C2=A0=C2=A0=C2=A0 RGA_COLOR_FMT_IS_YUV(ctx->out.fmt->hw_format)) =
{
> -		switch (ctx->out.colorspace) {
> +		switch (ctx->out.pix.colorspace) {
> =C2=A0		case V4L2_COLORSPACE_REC709:
> =C2=A0			dst_info.data.csc_mode =3D RGA_SRC_CSC_MODE_BT709_R0;
> =C2=A0			break;
> diff --git a/drivers/media/platform/rockchip/rga/rga.c b/drivers/media/pl=
atform/rockchip/rga/rga.c
> index ef568b3758380..f50fbbab0645e 100644
> --- a/drivers/media/platform/rockchip/rga/rga.c
> +++ b/drivers/media/platform/rockchip/rga/rga.c
> @@ -345,9 +345,6 @@ static struct rga_fmt *rga_fmt_find(u32 pixelformat)
> =C2=A0}
> =C2=A0
> =C2=A0static struct rga_frame def_frame =3D {
> -	.width =3D DEFAULT_WIDTH,
> -	.height =3D DEFAULT_HEIGHT,
> -	.colorspace =3D V4L2_COLORSPACE_DEFAULT,
> =C2=A0	.crop.left =3D 0,
> =C2=A0	.crop.top =3D 0,
> =C2=A0	.crop.width =3D DEFAULT_WIDTH,
> @@ -379,9 +376,9 @@ static int rga_open(struct file *file)
> =C2=A0	ctx->out =3D def_frame;
> =C2=A0
> =C2=A0	v4l2_fill_pixfmt_mp(&ctx->in.pix,
> -			=C2=A0=C2=A0=C2=A0 ctx->in.fmt->fourcc, ctx->out.width, ctx->out.heig=
ht);
> +			=C2=A0=C2=A0=C2=A0 ctx->in.fmt->fourcc, DEFAULT_WIDTH, DEFAULT_HEIGHT=
);
> =C2=A0	v4l2_fill_pixfmt_mp(&ctx->out.pix,
> -			=C2=A0=C2=A0=C2=A0 ctx->out.fmt->fourcc, ctx->out.width, ctx->out.hei=
ght);
> +			=C2=A0=C2=A0=C2=A0 ctx->out.fmt->fourcc, DEFAULT_WIDTH, DEFAULT_HEIGH=
T);
> =C2=A0
> =C2=A0	if (mutex_lock_interruptible(&rga->mutex)) {
> =C2=A0		kfree(ctx);
> @@ -469,10 +466,8 @@ static int vidioc_g_fmt(struct file *file, void *pri=
v, struct v4l2_format *f)
> =C2=A0	if (IS_ERR(frm))
> =C2=A0		return PTR_ERR(frm);
> =C2=A0
> -	v4l2_fill_pixfmt_mp(pix_fmt, frm->fmt->fourcc, frm->width, frm->height)=
;
> -
> +	*pix_fmt =3D frm->pix;
> =C2=A0	pix_fmt->field =3D V4L2_FIELD_NONE;
> -	pix_fmt->colorspace =3D frm->colorspace;
> =C2=A0
> =C2=A0	return 0;
> =C2=A0}
> @@ -521,27 +516,24 @@ static int vidioc_s_fmt(struct file *file, void *pr=
iv, struct v4l2_format *f)
> =C2=A0	frm =3D rga_get_frame(ctx, f->type);
> =C2=A0	if (IS_ERR(frm))
> =C2=A0		return PTR_ERR(frm);
> -	frm->width =3D pix_fmt->width;
> -	frm->height =3D pix_fmt->height;
> =C2=A0	frm->size =3D 0;
> =C2=A0	for (i =3D 0; i < pix_fmt->num_planes; i++)
> =C2=A0		frm->size +=3D pix_fmt->plane_fmt[i].sizeimage;
> =C2=A0	frm->fmt =3D rga_fmt_find(pix_fmt->pixelformat);
> =C2=A0	frm->stride =3D pix_fmt->plane_fmt[0].bytesperline;
> -	frm->colorspace =3D pix_fmt->colorspace;
> =C2=A0
> =C2=A0	/* Reset crop settings */
> =C2=A0	frm->crop.left =3D 0;
> =C2=A0	frm->crop.top =3D 0;
> -	frm->crop.width =3D frm->width;
> -	frm->crop.height =3D frm->height;
> +	frm->crop.width =3D pix_fmt->width;
> +	frm->crop.height =3D pix_fmt->height;
> =C2=A0
> =C2=A0	frm->pix =3D *pix_fmt;
> =C2=A0
> =C2=A0	v4l2_dbg(debug, 1, &rga->v4l2_dev,
> =C2=A0		 "[%s] fmt - %p4cc %dx%d (stride %d, sizeimage %d)\n",
> =C2=A0		=C2=A0 V4L2_TYPE_IS_OUTPUT(f->type) ? "OUTPUT" : "CAPTURE",
> -		=C2=A0 &frm->fmt->fourcc, frm->width, frm->height,
> +		=C2=A0 &frm->fmt->fourcc, pix_fmt->width, pix_fmt->height,
> =C2=A0		=C2=A0 frm->stride, frm->size);
> =C2=A0
> =C2=A0	for (i =3D 0; i < pix_fmt->num_planes; i++) {
> @@ -595,8 +587,8 @@ static int vidioc_g_selection(struct file *file, void=
 *priv,
> =C2=A0	} else {
> =C2=A0		s->r.left =3D 0;
> =C2=A0		s->r.top =3D 0;
> -		s->r.width =3D f->width;
> -		s->r.height =3D f->height;
> +		s->r.width =3D f->pix.width;
> +		s->r.height =3D f->pix.height;
> =C2=A0	}
> =C2=A0
> =C2=A0	return 0;
> @@ -645,8 +637,8 @@ static int vidioc_s_selection(struct file *file, void=
 *priv,
> =C2=A0		return -EINVAL;
> =C2=A0	}
> =C2=A0
> -	if (s->r.left + s->r.width > f->width ||
> -	=C2=A0=C2=A0=C2=A0 s->r.top + s->r.height > f->height ||
> +	if (s->r.left + s->r.width > f->pix.width ||
> +	=C2=A0=C2=A0=C2=A0 s->r.top + s->r.height > f->pix.height ||
> =C2=A0	=C2=A0=C2=A0=C2=A0 s->r.width < MIN_WIDTH || s->r.height < MIN_HEI=
GHT) {
> =C2=A0		v4l2_dbg(debug, 1, &rga->v4l2_dev, "unsupported crop value.\n");
> =C2=A0		return -EINVAL;
> @@ -836,8 +828,8 @@ static int rga_probe(struct platform_device *pdev)
> =C2=A0		goto rel_m2m;
> =C2=A0	}
> =C2=A0
> -	def_frame.stride =3D (def_frame.width * def_frame.fmt->depth) >> 3;
> -	def_frame.size =3D def_frame.stride * def_frame.height;
> +	def_frame.stride =3D (DEFAULT_WIDTH * def_frame.fmt->depth) >> 3;
> +	def_frame.size =3D def_frame.stride * DEFAULT_HEIGHT;
> =C2=A0
> =C2=A0	ret =3D video_register_device(vfd, VFL_TYPE_VIDEO, -1);
> =C2=A0	if (ret) {
> diff --git a/drivers/media/platform/rockchip/rga/rga.h b/drivers/media/pl=
atform/rockchip/rga/rga.h
> index a922fac0c01a3..7ec1fcc03ed32 100644
> --- a/drivers/media/platform/rockchip/rga/rga.h
> +++ b/drivers/media/platform/rockchip/rga/rga.h
> @@ -25,11 +25,6 @@ struct rga_fmt {
> =C2=A0};
> =C2=A0
> =C2=A0struct rga_frame {
> -	/* Original dimensions */
> -	u32 width;
> -	u32 height;
> -	u32 colorspace;
> -
> =C2=A0	/* Crop */
> =C2=A0	struct v4l2_rect crop;
> =C2=A0

--=-78I1Q0OO2YaNMqG0/1Yc
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQTvDVKBFcTDwhoEbxLZQZRRKWBy9AUCaUwArgAKCRDZQZRRKWBy
9A0yAQCCdNmpE/3ZXrpqQp5jF0piH9kcLZVkaDc3dtv3fykfjgEAtgDBc0HKjKfr
xlZVSDKGRX+5p6SCLET0zHTumbpqnQg=
=wPCe
-----END PGP SIGNATURE-----

--=-78I1Q0OO2YaNMqG0/1Yc--


--===============2161842064523764428==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============2161842064523764428==--

