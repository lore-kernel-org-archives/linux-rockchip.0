Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 13CBC1099B2D
	for <linux-rockchip@archiver.kernel.org>; Fri, 20 Mar 2026 17:50:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:Cc:To:From:Subject:Message-ID:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Q9iibZlYoHFgmpxyeWF+QlwfaNU1vIFdNSGvZk5PhNk=; b=GctA6tqhi2ucxWkilm9RK/aqtK
	/M4/KA51uQDJmCQPfjAgbVYffiKQbcVNmguPUdk0AiYtetqia6kJc+qbeCP+YuxhIn+nFdc5cn+fn
	Apsqz8XLK822rHxsfCU28F2gdikcSNY5W7ODpxaJGuq+c7pOHEC3fKRwBW3IkF5PQRq7IpBeUNQQc
	JybN/aQSvskhYytmuhDJY+xQoDaWnGIgomP1PUw7Faju3x9kL0pMAHGICey4DUyDpdoB9XcRMS/jW
	HdSsMb7NtjKisTIMD1cvj9+olmnh3UBuQCWpYOmj5uddlbNMfLDgwYic5mGqP7pgDZG+fNQ8eubDU
	htR3nKNw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w3dzd-0000000DK1o-0G7I;
	Fri, 20 Mar 2026 17:50:41 +0000
Received: from mail-vs1-xe2c.google.com ([2607:f8b0:4864:20::e2c])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w3dzV-0000000DK0e-0kLs
	for linux-rockchip@lists.infradead.org;
	Fri, 20 Mar 2026 17:50:38 +0000
Received: by mail-vs1-xe2c.google.com with SMTP id ada2fe7eead31-602849cfe17so687546137.2
        for <linux-rockchip@lists.infradead.org>; Fri, 20 Mar 2026 10:50:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ndufresne-ca.20230601.gappssmtp.com; s=20230601; t=1774029032; x=1774633832; darn=lists.infradead.org;
        h=mime-version:user-agent:references:in-reply-to:date:cc:to:from
         :subject:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=9+3wqGsFiKB/araXt5Rn1zva+s4bqIbZIKgO/Chh82k=;
        b=Y4xdrimun4SGRb2oG1ymW6yeebLiRxbxzYsWOcaZwDQkpO9Mk8wf4bz45y9gTU4OkB
         fmwHB7GBPql0cDflI+qxLHIubLBeMfMMq+UI5/JwBsBQ6rRsX379hvnb+PJZzlBQDBwb
         zOcdygNwLJ3PBKxw6/WfP2QsxGGHgMIhreSuLVfBZ+ZMzUwROMb72nC0mZ4JP3e7x31j
         VlWukUYFTw1JsiStiCIhJe62qqJZleRE866kOTRleb9CdM38TD37aBCZZv7hRU+ugnsu
         ZwSgNKcYWgk/PhnoF4RbDcZF8VcD/sWw+pwUsTFYx+8VMJ6NROjYqOwMOuwkNlK/fG7c
         WegA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1774029032; x=1774633832;
        h=mime-version:user-agent:references:in-reply-to:date:cc:to:from
         :subject:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=9+3wqGsFiKB/araXt5Rn1zva+s4bqIbZIKgO/Chh82k=;
        b=lq6lAj7s3WAAqcMbcgDrtOVRi2XapmZrIhWNSvx+IJg+olB+VP1O0Pu53vVm5vz/RY
         LWcCdV34HzvlC/EeLcMI3qUW6qJTwqN3ZVjdaXZag3/4sJbdOkPr7PysvMj00kHwDHBP
         UOFJzd7bRikLXL79bPNJll9vzOpcuVLnh5PtaU5X2LMFw2XkdS+UU5BIrMagUq87Q0J3
         3T8zyFpKxOL6HdakhOs7odAyIGY4p58qRCXf1BOAk7yWpWH3RWbi+k4Ou7AOzvhH81N5
         +gqltwSG7+hUvfDHQP/5fYiPMPlFTlrTWxg07YIGeCTbbF+7cKd8i8xlID11JMreG213
         LvnA==
X-Forwarded-Encrypted: i=1; AJvYcCXugh+nyCCi7314WAU0VX/afCnTb8jTxbvCs19/zbu8zhhjqbpCYMQKGvNtzpra64ZVhIkIHiswLGNM08Hpew==@lists.infradead.org
X-Gm-Message-State: AOJu0Yw5cbHo4So8Z574Iul5fpXX0+bVLFpxYXWiqygolnXwg/8gtf5u
	6VWSyudBWwur3Vs/3oYXPFlCuuxwgZy6fMeG7+5skhR6nA5KPazqWGZlYQp0fKEOHzc=
X-Gm-Gg: ATEYQzxJbkNw6wv/idfeaI/PqMprJXI20Y35fXTuBPuL3gFZEUZYrTMDnnUPf//GHyX
	+RSbTLZ2uLgsrUypIIVf0EWf6jXrwchyDVlx9RVZP6aM6eERw1sulQaDjuPtQ0Wiq1+mBgk4mRm
	/sGAQZBkS1Xe9B2QIF38f5nNSOSEqLIkhSeqdmmXwZLCj0uNrNfu/tjXhv+RbO01aLcrJEjbN7O
	3AwUErLUKdVchfiRvRLmE6YhC9lIjHEHG3qGKRTrkmBsgJxe8the7iFnh5HM4nd3Z3VowX5I8gK
	ibb6y2JK9EimxkzbhSXQM781inykSoeQErV617NYfUpjudRUNNIaXuIyWQysM1skpBSg/4S5XUc
	i2ZjfVz68ahI1+4xjJXai8ULlQuZ57mDLKrMZSwBjShyyU1CoOPbKrBjkLqfN5Ekz1nu6OphZdD
	T9Y2Gchh0klzQNdOsFilnurNEq6fOr
X-Received: by 2002:a67:e7cc:0:b0:5ff:ea89:44c8 with SMTP id ada2fe7eead31-602aea8d86cmr2035276137.2.1774029031769;
        Fri, 20 Mar 2026 10:50:31 -0700 (PDT)
Received: from ?IPv6:2606:6d00:11:b76d::5ac? ([2606:6d00:11:b76d::5ac])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-56cddcadfaesm1907968e0c.13.2026.03.20.10.50.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 20 Mar 2026 10:50:30 -0700 (PDT)
Message-ID: <79bed98f003cbd09ffddc4ad21bdbad998f29477.camel@ndufresne.ca>
Subject: Re: [PATCH v3 12/27] media: rockchip: rga: calculate x_div/y_div
 using v4l2_format_info
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
Date: Fri, 20 Mar 2026 13:50:29 -0400
In-Reply-To: <20260127-spu-rga3-v3-12-77b273067beb@pengutronix.de>
References: <20260127-spu-rga3-v3-0-77b273067beb@pengutronix.de>
	 <20260127-spu-rga3-v3-12-77b273067beb@pengutronix.de>
User-Agent: Evolution 3.58.3 (3.58.3-1.fc43) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260320_105033_263625_6A5ABE07 
X-CRM114-Status: GOOD (  17.40  )
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
Content-Type: multipart/mixed; boundary="===============1909447820551190124=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============1909447820551190124==
Content-Type: multipart/signed; micalg="pgp-sha512";
	protocol="application/pgp-signature"; boundary="=-8llJ0AxXppJ7Gm/JlUMB"


--=-8llJ0AxXppJ7Gm/JlUMB
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Le mardi 27 janvier 2026 =C3=A0 15:39 +0100, Sven P=C3=BCschel a =C3=A9crit=
=C2=A0:
> Calculate the x_div and y_div variables with the information from
> v4l2_format_info instead of storing these in the rga_fmt struct.
>=20
> Signed-off-by: Sven P=C3=BCschel <s.pueschel@pengutronix.de>

Reviewed-by: Nicolas Dufresne <nicolas.dufresne@collabora.com>

> ---
> =C2=A0drivers/media/platform/rockchip/rga/rga-hw.c | 45 +++++++----------=
-----------
> =C2=A0drivers/media/platform/rockchip/rga/rga.h=C2=A0=C2=A0=C2=A0 |=C2=A0=
 2 --
> =C2=A02 files changed, 11 insertions(+), 36 deletions(-)
>=20
> diff --git a/drivers/media/platform/rockchip/rga/rga-hw.c b/drivers/media=
/platform/rockchip/rga/rga-hw.c
> index c0218a71fee04..7405355c334ad 100644
> --- a/drivers/media/platform/rockchip/rga/rga-hw.c
> +++ b/drivers/media/platform/rockchip/rga/rga-hw.c
> @@ -42,6 +42,7 @@ rga_get_addr_offset(struct rga_frame *frm, struct rga_a=
ddr_offset *offset,
> =C2=A0{
> =C2=A0	struct rga_corners_addr_offset offsets;
> =C2=A0	struct rga_addr_offset *lt, *lb, *rt, *rb;
> +	const struct v4l2_format_info *format_info;
> =C2=A0	unsigned int x_div =3D 0,
> =C2=A0		=C2=A0=C2=A0=C2=A0=C2=A0 y_div =3D 0, uv_stride =3D 0, pixel_widt=
h =3D 0;
> =C2=A0
> @@ -50,8 +51,16 @@ rga_get_addr_offset(struct rga_frame *frm, struct rga_=
addr_offset *offset,
> =C2=A0	rt =3D &offsets.right_top;
> =C2=A0	rb =3D &offsets.right_bottom;
> =C2=A0
> -	x_div =3D frm->fmt->x_div;
> -	y_div =3D frm->fmt->y_div;
> +	format_info =3D v4l2_format_info(frm->pix.pixelformat);
> +	/* x_div is only used for the u/v planes.
> +	 * When the format doesn't have these, use 1 to avoid a division by zer=
o.
> +	 */
> +	if (format_info->bpp[1])
> +		x_div =3D format_info->hdiv * format_info->bpp_div[1] /
> +			format_info->bpp[1];
> +	else
> +		x_div =3D 1;
> +	y_div =3D format_info->vdiv;
> =C2=A0	uv_stride =3D frm->stride / x_div;
> =C2=A0	pixel_width =3D frm->stride / frm->pix.width;
> =C2=A0
> @@ -476,128 +485,96 @@ static struct rga_fmt formats[] =3D {
> =C2=A0		.color_swap =3D RGA_COLOR_ALPHA_SWAP,
> =C2=A0		.hw_format =3D RGA_COLOR_FMT_ABGR8888,
> =C2=A0		.depth =3D 32,
> -		.y_div =3D 1,
> -		.x_div =3D 1,
> =C2=A0	},
> =C2=A0	{
> =C2=A0		.fourcc =3D V4L2_PIX_FMT_ABGR32,
> =C2=A0		.color_swap =3D RGA_COLOR_RB_SWAP,
> =C2=A0		.hw_format =3D RGA_COLOR_FMT_ABGR8888,
> =C2=A0		.depth =3D 32,
> -		.y_div =3D 1,
> -		.x_div =3D 1,
> =C2=A0	},
> =C2=A0	{
> =C2=A0		.fourcc =3D V4L2_PIX_FMT_XBGR32,
> =C2=A0		.color_swap =3D RGA_COLOR_RB_SWAP,
> =C2=A0		.hw_format =3D RGA_COLOR_FMT_XBGR8888,
> =C2=A0		.depth =3D 32,
> -		.y_div =3D 1,
> -		.x_div =3D 1,
> =C2=A0	},
> =C2=A0	{
> =C2=A0		.fourcc =3D V4L2_PIX_FMT_RGB24,
> =C2=A0		.color_swap =3D RGA_COLOR_NONE_SWAP,
> =C2=A0		.hw_format =3D RGA_COLOR_FMT_RGB888,
> =C2=A0		.depth =3D 24,
> -		.y_div =3D 1,
> -		.x_div =3D 1,
> =C2=A0	},
> =C2=A0	{
> =C2=A0		.fourcc =3D V4L2_PIX_FMT_BGR24,
> =C2=A0		.color_swap =3D RGA_COLOR_RB_SWAP,
> =C2=A0		.hw_format =3D RGA_COLOR_FMT_RGB888,
> =C2=A0		.depth =3D 24,
> -		.y_div =3D 1,
> -		.x_div =3D 1,
> =C2=A0	},
> =C2=A0	{
> =C2=A0		.fourcc =3D V4L2_PIX_FMT_ARGB444,
> =C2=A0		.color_swap =3D RGA_COLOR_RB_SWAP,
> =C2=A0		.hw_format =3D RGA_COLOR_FMT_ABGR4444,
> =C2=A0		.depth =3D 16,
> -		.y_div =3D 1,
> -		.x_div =3D 1,
> =C2=A0	},
> =C2=A0	{
> =C2=A0		.fourcc =3D V4L2_PIX_FMT_ARGB555,
> =C2=A0		.color_swap =3D RGA_COLOR_RB_SWAP,
> =C2=A0		.hw_format =3D RGA_COLOR_FMT_ABGR1555,
> =C2=A0		.depth =3D 16,
> -		.y_div =3D 1,
> -		.x_div =3D 1,
> =C2=A0	},
> =C2=A0	{
> =C2=A0		.fourcc =3D V4L2_PIX_FMT_RGB565,
> =C2=A0		.color_swap =3D RGA_COLOR_RB_SWAP,
> =C2=A0		.hw_format =3D RGA_COLOR_FMT_BGR565,
> =C2=A0		.depth =3D 16,
> -		.y_div =3D 1,
> -		.x_div =3D 1,
> =C2=A0	},
> =C2=A0	{
> =C2=A0		.fourcc =3D V4L2_PIX_FMT_NV21,
> =C2=A0		.color_swap =3D RGA_COLOR_UV_SWAP,
> =C2=A0		.hw_format =3D RGA_COLOR_FMT_YUV420SP,
> =C2=A0		.depth =3D 12,
> -		.y_div =3D 2,
> -		.x_div =3D 1,
> =C2=A0	},
> =C2=A0	{
> =C2=A0		.fourcc =3D V4L2_PIX_FMT_NV61,
> =C2=A0		.color_swap =3D RGA_COLOR_UV_SWAP,
> =C2=A0		.hw_format =3D RGA_COLOR_FMT_YUV422SP,
> =C2=A0		.depth =3D 16,
> -		.y_div =3D 1,
> -		.x_div =3D 1,
> =C2=A0	},
> =C2=A0	{
> =C2=A0		.fourcc =3D V4L2_PIX_FMT_NV12,
> =C2=A0		.color_swap =3D RGA_COLOR_NONE_SWAP,
> =C2=A0		.hw_format =3D RGA_COLOR_FMT_YUV420SP,
> =C2=A0		.depth =3D 12,
> -		.y_div =3D 2,
> -		.x_div =3D 1,
> =C2=A0	},
> =C2=A0	{
> =C2=A0		.fourcc =3D V4L2_PIX_FMT_NV12M,
> =C2=A0		.color_swap =3D RGA_COLOR_NONE_SWAP,
> =C2=A0		.hw_format =3D RGA_COLOR_FMT_YUV420SP,
> =C2=A0		.depth =3D 12,
> -		.y_div =3D 2,
> -		.x_div =3D 1,
> =C2=A0	},
> =C2=A0	{
> =C2=A0		.fourcc =3D V4L2_PIX_FMT_NV16,
> =C2=A0		.color_swap =3D RGA_COLOR_NONE_SWAP,
> =C2=A0		.hw_format =3D RGA_COLOR_FMT_YUV422SP,
> =C2=A0		.depth =3D 16,
> -		.y_div =3D 1,
> -		.x_div =3D 1,
> =C2=A0	},
> =C2=A0	{
> =C2=A0		.fourcc =3D V4L2_PIX_FMT_YUV420,
> =C2=A0		.color_swap =3D RGA_COLOR_NONE_SWAP,
> =C2=A0		.hw_format =3D RGA_COLOR_FMT_YUV420P,
> =C2=A0		.depth =3D 12,
> -		.y_div =3D 2,
> -		.x_div =3D 2,
> =C2=A0	},
> =C2=A0	{
> =C2=A0		.fourcc =3D V4L2_PIX_FMT_YUV422P,
> =C2=A0		.color_swap =3D RGA_COLOR_NONE_SWAP,
> =C2=A0		.hw_format =3D RGA_COLOR_FMT_YUV422P,
> =C2=A0		.depth =3D 16,
> -		.y_div =3D 1,
> -		.x_div =3D 2,
> =C2=A0	},
> =C2=A0	{
> =C2=A0		.fourcc =3D V4L2_PIX_FMT_YVU420,
> =C2=A0		.color_swap =3D RGA_COLOR_UV_SWAP,
> =C2=A0		.hw_format =3D RGA_COLOR_FMT_YUV420P,
> =C2=A0		.depth =3D 12,
> -		.y_div =3D 2,
> -		.x_div =3D 2,
> =C2=A0	},
> =C2=A0};
> =C2=A0
> diff --git a/drivers/media/platform/rockchip/rga/rga.h b/drivers/media/pl=
atform/rockchip/rga/rga.h
> index 640e510285341..27b3c9b4f220c 100644
> --- a/drivers/media/platform/rockchip/rga/rga.h
> +++ b/drivers/media/platform/rockchip/rga/rga.h
> @@ -20,8 +20,6 @@
> =C2=A0struct rga_fmt {
> =C2=A0	u32 fourcc;
> =C2=A0	int depth;
> -	u8 y_div;
> -	u8 x_div;
> =C2=A0	u8 color_swap;
> =C2=A0	u8 hw_format;
> =C2=A0};

--=-8llJ0AxXppJ7Gm/JlUMB
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQTvDVKBFcTDwhoEbxLZQZRRKWBy9AUCab2I5QAKCRDZQZRRKWBy
9HXSAP9GjiFmMpaSBl7D7aoiLJ85W7ghWm/nFJLKJ4Yic8msvAEApMGuun1hXrrx
DPKjOSakcRloYNmZpjU2L1vH4k7Jwg4=
=9BJ9
-----END PGP SIGNATURE-----

--=-8llJ0AxXppJ7Gm/JlUMB--


--===============1909447820551190124==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============1909447820551190124==--

