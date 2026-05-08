Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 19805CD342F
	for <linux-rockchip@archiver.kernel.org>; Fri,  8 May 2026 21:18:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:Cc:To:From:Subject:Message-ID:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=wMIuBdCF7Xhi+WX4gq7bTU9Noo8u7Vgc+Ln4Us2kQfw=; b=Dh9a6jbfwKmwTjC8J/9jGurD0j
	rkioJCptt6aTXwZphvJ9QIo2xoHZRqLjpt/wQGqBkN1CSfJE95oAuktCpJ9MkKIHKdvOyah/tTNIw
	uBZdthcis5Fn9IeV++l0U2igVo0t4qjXXUfaUTamzYGW2IdfgcAEjRo15xAiJP+Ns+QuxC27E34kb
	YcIwaTm+ndXnNSkVEaWpSeRvAWsgj0lyjjDC987y0BXyUY+q1VETJ2wz8tMmIKglOpapMq7pPs6D5
	dKijQG41skn+ctUAk6LXOzoeGC43uT7vg5NrLWycHENgDARqgf0N++njmzmmZiWHdtaQRfnqLfjy5
	54UvwNEA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wLSay-00000007X7V-2TWH;
	Fri, 08 May 2026 21:18:52 +0000
Received: from mail-qt1-x82c.google.com ([2607:f8b0:4864:20::82c])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wLSaw-00000007X6h-0Qxn
	for linux-rockchip@lists.infradead.org;
	Fri, 08 May 2026 21:18:51 +0000
Received: by mail-qt1-x82c.google.com with SMTP id d75a77b69052e-50d876329bbso22315101cf.2
        for <linux-rockchip@lists.infradead.org>; Fri, 08 May 2026 14:18:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ndufresne-ca.20251104.gappssmtp.com; s=20251104; t=1778275129; x=1778879929; darn=lists.infradead.org;
        h=mime-version:user-agent:autocrypt:references:in-reply-to:date:cc:to
         :from:subject:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=NuDyd+pdDE/YN+9KZpt+S8gMDx02yjwA/CK1DnFyXwo=;
        b=fbXEn+IZhvqJRgmzmmN3IAvQJgTL5j3QAu2JUkvDbwUjwHKeF/RByQxKT7yYkI2+Ng
         JgBKEFZ70hx9w/RSHVccTxiU7ZPkWB4Mjb6bJUPA7z0Xh2aUD9Vswb9sBQKJt36x+lN3
         ++wioAH/fdUGIFP3muXfelbfbzm8RMHaEqJFO7fx+oZxdR/3jc4EZbKFihrSH2LzvyMY
         IiUpUZg2vV/1IRLuxnUh1A0P3m8w+9/rKCmEBGdvwMK0KtRc2FsP2pdEVPUzr+185W1u
         xqAb2O2Zaod6eJKdPM7PUO76Hmpz/u5gghxnkyNoM5xF4OzJh19w6IhqcX5XRYWB0+Gu
         8Ljg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778275129; x=1778879929;
        h=mime-version:user-agent:autocrypt:references:in-reply-to:date:cc:to
         :from:subject:message-id:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=NuDyd+pdDE/YN+9KZpt+S8gMDx02yjwA/CK1DnFyXwo=;
        b=Gcg8L7xJ3LCqOdzJl0C6k2BxUmSzIVUvtTamGfKUNAW+JuVAqyDWl+LOJ0Yhm4U35H
         M9lAxKevqpUmYaAgxI6dwPSXSfabN1eeFadzFaJQRzw20G5q7vIwWO9o7dk+sb2eAKJR
         1PKKAA5hQ7AuFhRcikH73R/PH3mN8EHFFQqNHatXaRKwmAma5fQZ/4bxCicDJrvSgRuS
         4YceB2TVcXd5JJZF5u5OdJhlCsQoQSPAarhckSesWTDpbpOoA+qbQuodsjDIyyz7CB9N
         qydw4WSd483tpJ+Q2N7bQNNdXeq1HmEILPw2mSDLgu64iVDmz2sDGjQQUkVq9in581Zc
         Sy1g==
X-Forwarded-Encrypted: i=1; AFNElJ9GB36n7XvMEC4m+gfJc0cU3j+tjRTjt5awAajlwstK5/TaNIOJmnSB8XAGaeRPpYY35rRh5R+Ix0jrywdQsQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YyNkKWAQWdvliuZgsU1cHARO41q2fY0f440LplUsFTcrxdFHiGJ
	woNGZ+vmTImR73I4S8kV6XmSOdYns90kSTgTXf4dWaIiMZPrSZo8vwLQtAIq7LEIoTI=
X-Gm-Gg: AeBDies8pVt6LjfYQi7P782ZZnuXgBz+quM5S4y77rMdMMHRKeOdOBQ9OJ+km49YFKt
	PBxYo+QWK1zikZKMjmZbOXULY3OiTcZemZu3dDXBz0dLR8CJclvc/qWe6Caghtf+UBR25wssBCd
	2RqJy6v4L/o36mJO7nE7eM6kYI9lrDB3XQol6w2Q2Hf4Mk+/f9+4n2YTo2Ik9vOMCTkfgnGx+LV
	O+vYlcxKa5wcfeLJCUTo8UlDNMmO0dQPNSGUNt3+VlqxQ/d7wTc/kLY/zrrC1OvNvP9N5cWAdl7
	aPUG1vmFzIoO2tzS/bLklw2Gw6cvfYfKVG8Lxvhz/natXK5l+uq85msHB1DFvVBDc3pJomTvzli
	KRQcfy0n7XDi8qQcQyz1ey95oEL7J0EZnAX8X750pxXUKsq7ArDYZUa0+3S8l94J4fv2LPaiXNU
	z01Fnj64dcW4ciQ21nrdNb4EJ6cotW01yy8iaHjvI=
X-Received: by 2002:a05:622a:4d4e:b0:50b:5336:1d20 with SMTP id d75a77b69052e-514621d5127mr196554381cf.53.1778275128704;
        Fri, 08 May 2026 14:18:48 -0700 (PDT)
Received: from ?IPv6:2606:6d00:15:e06b::c41? ([2606:6d00:15:e06b::c41])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-8bf3b0c7600sm28019116d6.1.2026.05.08.14.18.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 08 May 2026 14:18:47 -0700 (PDT)
Message-ID: <4f5e481c8883b358ee4cef64f26f3f00f0ac7304.camel@ndufresne.ca>
Subject: Re: [PATCH v5 12/29] media: rockchip: rga: avoid odd frame sizes
 for YUV formats
From: Nicolas Dufresne <nicolas@ndufresne.ca>
To: Sven =?ISO-8859-1?Q?P=FCschel?= <s.pueschel@pengutronix.de>, Jacob Chen
	 <jacob-chen@iotwrt.com>, Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>, 
 Mauro Carvalho Chehab
	 <mchehab@kernel.org>, Heiko Stuebner <heiko@sntech.de>, Rob Herring
	 <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
	 <conor+dt@kernel.org>, Hans Verkuil <hverkuil@kernel.org>
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org, kernel@pengutronix.de, 
	sebastian.reichel@collabora.com
Date: Fri, 08 May 2026 17:18:46 -0400
In-Reply-To: <20260428-spu-rga3-v5-12-eb7f5d019d86@pengutronix.de>
References: <20260428-spu-rga3-v5-0-eb7f5d019d86@pengutronix.de>
	 <20260428-spu-rga3-v5-12-eb7f5d019d86@pengutronix.de>
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
User-Agent: Evolution 3.60.1 (3.60.1-1.fc44) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260508_141850_200213_0B0126CA 
X-CRM114-Status: GOOD (  19.57  )
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
Content-Type: multipart/mixed; boundary="===============0365852573730296555=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============0365852573730296555==
Content-Type: multipart/signed; micalg="pgp-sha512";
	protocol="application/pgp-signature"; boundary="=-qZ2RVVDen/K+BWJk4jzk"


--=-qZ2RVVDen/K+BWJk4jzk
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Le mardi 28 avril 2026 =C3=A0 11:00 +0200, Sven P=C3=BCschel a =C3=A9crit=
=C2=A0:
> Avoid odd frame sizes for YUV formats, as they may cause undefined
> behavior. This is done in preparation for the RGA3, which hangs when the
> output format is set to 129x129 pixel YUV420 SP (NV12).
>=20
> This requirement is documented explicitly for the RGA3 in=C2=A0 section 5=
.6.3
> of the RK3588 TRM Part 2. For the RGA2 the RK3588 TRM Part 2
> (section 6.1.2) and RK3568 TRM Part 2 (section 14.2) only mentions the
> x/y offsets and stride aligning requirements. But the vendor driver for
> the RGA2 also contains checks for the width and height to be aligned to
> 2 bytes.
>=20
> Signed-off-by: Sven P=C3=BCschel <s.pueschel@pengutronix.de>
> ---
> =C2=A0drivers/media/platform/rockchip/rga/rga.c | 19 ++++++++++++++-----
> =C2=A01 file changed, 14 insertions(+), 5 deletions(-)
>=20
> diff --git a/drivers/media/platform/rockchip/rga/rga.c b/drivers/media/pl=
atform/rockchip/rga/rga.c
> index f599c992829dd..77b8c7ab74274 100644
> --- a/drivers/media/platform/rockchip/rga/rga.c
> +++ b/drivers/media/platform/rockchip/rga/rga.c
> @@ -337,6 +337,19 @@ static int vidioc_try_fmt(struct file *file, void *p=
riv, struct v4l2_format *f)
> =C2=A0	struct rga_ctx *ctx =3D file_to_rga_ctx(file);
> =C2=A0	const struct rga_hw *hw =3D ctx->rga->hw;
> =C2=A0	struct rga_fmt *fmt;
> +	struct v4l2_frmsize_stepwise frmsize =3D {
> +		.min_width =3D hw->min_width,
> +		.max_width =3D hw->max_width,
> +		.min_height =3D hw->min_height,
> +		.max_height =3D hw->max_height,
> +		.step_width =3D 1,
> +		.step_height =3D 1,
> +	};
> +
> +	if (v4l2_is_format_yuv(v4l2_format_info(pix_fmt->pixelformat))) {
> +		frmsize.step_width =3D 2;
> +		frmsize.step_height =3D 2;

I think its fine like this, so let's start with:

Reviewed-by: Nicolas Dufresne <nicolas.dufresne@collabora.com>

But it does not feel like a hardware alignment to me. When we process in
software these things, the minimum alignment is bound to the subsampling, s=
ince
there is no way to store half or quarter pixels, the padded width/height
requires a step that follow the subsampling, something like:

		frmsize.step_width =3D finfo->hdiv;
		frmsize.step_height =3D finfo->vdiv;

Nicolas


> +	}
> =C2=A0
> =C2=A0	if (V4L2_TYPE_IS_CAPTURE(f->type)) {
> =C2=A0		const struct rga_frame *frm;
> @@ -358,11 +371,7 @@ static int vidioc_try_fmt(struct file *file, void *p=
riv, struct v4l2_format *f)
> =C2=A0	if (!fmt)
> =C2=A0		fmt =3D &hw->formats[0];
> =C2=A0
> -	pix_fmt->width =3D clamp(pix_fmt->width,
> -			=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 hw->min_width, hw->max_width);
> -	pix_fmt->height =3D clamp(pix_fmt->height,
> -				hw->min_height, hw->max_height);
> -
> +	v4l2_apply_frmsize_constraints(&pix_fmt->width, &pix_fmt->height, &frms=
ize);
> =C2=A0	v4l2_fill_pixfmt_mp(pix_fmt, fmt->fourcc, pix_fmt->width, pix_fmt-=
>height);
> =C2=A0	pix_fmt->field =3D V4L2_FIELD_NONE;
> =C2=A0

--=-qZ2RVVDen/K+BWJk4jzk
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQTvDVKBFcTDwhoEbxLZQZRRKWBy9AUCaf5TNgAKCRDZQZRRKWBy
9K22AP9NA5svkOS4YL++qXSzMq8kynIFrKCnDRWKeJx++AbT9AD/dLvKF5HRQ8Cf
i9PlqWBZXkzVLS+1T8+GiOLpb3UFXAQ=
=85ga
-----END PGP SIGNATURE-----

--=-qZ2RVVDen/K+BWJk4jzk--


--===============0365852573730296555==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============0365852573730296555==--

