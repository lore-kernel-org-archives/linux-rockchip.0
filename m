Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 227141091904
	for <linux-rockchip@archiver.kernel.org>; Thu, 19 Mar 2026 19:12:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:Cc:To:From:Subject:Message-ID:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=dkNhNAqrh70HbyVHqUiwKzy0EgWGTGB9KCHdECYJUDI=; b=4T4FINBQ/dSQprD7juqAo9SlbZ
	Zi2xbzgzUObITJFdyu3mm/eqN14NVvYsBSE830t8wS4Nadl/Q7UUfA+lq9RPnx6NZTqy99K4apcAe
	FHvVBsi6ZRNSrV3riXoKXQGuXbFNxzEA/OGl55xJGg/fNnVh7LkY5umv3rCkVgxCOCwhhR1pY4G5w
	vxNDfrwd9Um7Gl6S1tA/4ZWnls8BNi9SVJomwS72rjBgBI3tSiixfl8c9pgb1ZWino6PVkiiap1lr
	lrXx+nsChpkR7H+wUZeYvyG4GiZo+wc0RInSY514Bo0fIh7UYv2LFNFvnrbw3NLUf1xcWWezNLriV
	LSnTo8hA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w3InI-0000000BQx6-1A7c;
	Thu, 19 Mar 2026 19:12:32 +0000
Received: from mail-qv1-xf29.google.com ([2607:f8b0:4864:20::f29])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w3InF-0000000BQwO-2TiB
	for linux-rockchip@lists.infradead.org;
	Thu, 19 Mar 2026 19:12:30 +0000
Received: by mail-qv1-xf29.google.com with SMTP id 6a1803df08f44-89c5340fed0so13451776d6.0
        for <linux-rockchip@lists.infradead.org>; Thu, 19 Mar 2026 12:12:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ndufresne-ca.20230601.gappssmtp.com; s=20230601; t=1773947548; x=1774552348; darn=lists.infradead.org;
        h=mime-version:user-agent:autocrypt:references:in-reply-to:date:cc:to
         :from:subject:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=r1LNLkE6o0tWIJ/OijIEt3qH5udkliSvAis8enwUuN4=;
        b=i+Q8nZPQFKwMByL6jfd8MErP4VaZn/IBdza3jo8a510Y9Kefe2Q/EmJ2/18cbS4boh
         sYHYXVIPgNYZ/++ZltUsQKS9gGmdkF+7NzOlTgG0nzNbfGgybuXovu5hpp9UbESG+eEp
         icTpqpc1CLEv/tlMOdOvDc96t/Q9z/lA2G6mJ23jC8tsdI0KgIcGowk/FLr0X4xzm+Vl
         OHfeMELSsukYZ9gJ7Br1IS+IfzK7jypXoGCqPZ9JklnfPNfS9rBDW0mS0H7wmSnE8tFA
         jZgroeXcn+oh3A2+Fd0Nl9e+gqy3KHYz4r2RckJSFlxvDxIqStrt/OUVpxlFcTj3ftsK
         VumA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773947548; x=1774552348;
        h=mime-version:user-agent:autocrypt:references:in-reply-to:date:cc:to
         :from:subject:message-id:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=r1LNLkE6o0tWIJ/OijIEt3qH5udkliSvAis8enwUuN4=;
        b=EwXJKGveer/hYuvU897u/IsnrrWbZJ5Q2rUcU93e7KuX70ba1xvt6trcVYOZ+og27R
         36S8BBmF6OpNQdQGvYWJFmaEchy+9cQ4vwzTL9W0UDBvBf6q9zzT5bYfrDxEuRmDvbTn
         ZKNJSvl96yJszo50iy3pVtUuiD3u9UvbO7l+TGsb4VwLu4et+5m9e4GibHJE5SPmZoTK
         IKp1rK3zK0vadrqtlwdDXkTv5HiT2z9XAyQ/ZOOnAqDZ0HR3p5Zk+JRpm9kJisGXIBtB
         FpzsDr86qw6XQYf7JSYksCQAANavu6bjUGFcXzdSkbSzIkfABq8fxvsBKT78dy+ovzhy
         r4Sg==
X-Forwarded-Encrypted: i=1; AJvYcCVGbhMZJfJnoc+C9SGipmF3T0xzdGaIK5T73P2dhX8THGO3lW6zlaFYPZWnuO52vLf5AGXYfPLxOh6nHJeFng==@lists.infradead.org
X-Gm-Message-State: AOJu0YwHSj+fd0NYEuQ9EU6Z6mkR4P7PPiU0E+GLKtPc1vaJslMgQ/qG
	AW7EqkTJUlbUZJKsRmnEEECEguueU+QTppOgZMzitfwRRskEOGnbscGstxD7AhDmEIA=
X-Gm-Gg: ATEYQzzaCjiRD7OIG5WXCZvLP4iyLK8DtxA2raoUTvtCBEvX912KHe/+BKZ9G3DVfEm
	StfHVtSVao2gNDxRrRzQGIVPEe5Z7U7Rifb27gMSGXAyKFEvJCaNS24HDW25pgdVdybbqfC1BNV
	K24TeOGDXUPebAHpISZWoS9L64NrTW3Bd2uWuqiZGj01ecmLitdoB5wrJytBLZOmFBQjaWy3e2B
	/s5c6opTCecUnA52ZyHpa0UCvXhQCQ54+S2v5x/108Q02UVjk8O1RxWw2B7dmqB1iIOCltkjAIJ
	N79Qk1S2CyFIaUs5j1J1wOOoa8SMt/n5NvycPdb3ldlIDS1sXcK27hUBH6QUAYPpL9e43MVJXx5
	p/LYFEBUM0k7gTWREcVY6la/rrGN9PAs63zhB1tgJp9VieN+RqJbCsH/8xmsVPFk8oAh92LUS8c
	IV+4t0lK9K2LyKZCWcPMhg4eSyYpI1
X-Received: by 2002:a05:6214:5f0e:b0:89c:4d59:bdf with SMTP id 6a1803df08f44-89c773d7d3cmr61987166d6.8.1773947547996;
        Thu, 19 Mar 2026 12:12:27 -0700 (PDT)
Received: from ?IPv6:2606:6d00:11:b76d::5ac? ([2606:6d00:11:b76d::5ac])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-89c8536ba60sm3331256d6.44.2026.03.19.12.12.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Mar 2026 12:12:27 -0700 (PDT)
Message-ID: <06b733be91f0b6455fc5c16832678a67d9de1945.camel@ndufresne.ca>
Subject: Re: [PATCH v3 05/27] media: v4l2-common: add
 v4l2_fill_pixfmt_mp_aligned helper
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
Date: Thu, 19 Mar 2026 15:12:25 -0400
In-Reply-To: <20260127-spu-rga3-v3-5-77b273067beb@pengutronix.de>
References: <20260127-spu-rga3-v3-0-77b273067beb@pengutronix.de>
	 <20260127-spu-rga3-v3-5-77b273067beb@pengutronix.de>
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
User-Agent: Evolution 3.58.3 (3.58.3-1.fc43) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260319_121229_677173_A3E10E85 
X-CRM114-Status: GOOD (  22.88  )
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
Content-Type: multipart/mixed; boundary="===============3698380785810109600=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============3698380785810109600==
Content-Type: multipart/signed; micalg="pgp-sha512";
	protocol="application/pgp-signature"; boundary="=-YSpqXCMYz4unuMVeMzx3"


--=-YSpqXCMYz4unuMVeMzx3
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Le mardi 27 janvier 2026 =C3=A0 15:39 +0100, Sven P=C3=BCschel a =C3=A9crit=
=C2=A0:
> Add a v4l2_fill_pixfmt_mp_aligned helper which allows the user to
> specify a custom stride alignment in bytes. This is necessary for
> hardware like the Rockchip RGA3, which requires the stride value to be
> aligned to a 16 bytes boundary.
>=20
> Signed-off-by: Sven P=C3=BCschel <s.pueschel@pengutronix.de>
> ---
> =C2=A0drivers/media/v4l2-core/v4l2-common.c | 45 ++++++++++++++++++++++++=
+----------
> =C2=A0include/media/v4l2-common.h=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 |=C2=A0 4 ++++
> =C2=A02 files changed, 37 insertions(+), 12 deletions(-)
>=20
> diff --git a/drivers/media/v4l2-core/v4l2-common.c b/drivers/media/v4l2-c=
ore/v4l2-common.c
> index 2b5ccedeb6841..e61506ead9150 100644
> --- a/drivers/media/v4l2-core/v4l2-common.c
> +++ b/drivers/media/v4l2-core/v4l2-common.c
> @@ -431,14 +431,15 @@ static inline unsigned int v4l2_format_block_height=
(const struct v4l2_format_inf
> =C2=A0}
> =C2=A0
> =C2=A0static inline unsigned int v4l2_format_plane_stride(const struct v4=
l2_format_info *info, int plane,
> -						=C2=A0=C2=A0=C2=A0 unsigned int width)
> +						=C2=A0=C2=A0=C2=A0 unsigned int width, u8 byte_alignment)
> =C2=A0{
> =C2=A0	unsigned int hdiv =3D plane ? info->hdiv : 1;
> =C2=A0	unsigned int aligned_width =3D
> =C2=A0		ALIGN(width, v4l2_format_block_width(info, plane));
> =C2=A0
> -	return DIV_ROUND_UP(aligned_width, hdiv) *
> -	=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 info->bpp[plane] / info->bpp_div[p=
lane];
> +	return ALIGN(DIV_ROUND_UP(aligned_width, hdiv) * info->bpp[plane] /
> +			=C2=A0=C2=A0=C2=A0=C2=A0 info->bpp_div[plane],
> +		=C2=A0=C2=A0=C2=A0=C2=A0 byte_alignment);
> =C2=A0}
> =C2=A0
> =C2=A0static inline unsigned int v4l2_format_plane_height(const struct v4=
l2_format_info *info, int plane,
> @@ -452,9 +453,10 @@ static inline unsigned int v4l2_format_plane_height(=
const struct v4l2_format_inf
> =C2=A0}
> =C2=A0
> =C2=A0static inline unsigned int v4l2_format_plane_size(const struct v4l2=
_format_info *info, int plane,
> -						=C2=A0 unsigned int width, unsigned int height)
> +						=C2=A0 unsigned int width, unsigned int height,
> +						=C2=A0 u8 stride_alignment)
> =C2=A0{
> -	return v4l2_format_plane_stride(info, plane, width) *
> +	return v4l2_format_plane_stride(info, plane, width, stride_alignment) *
> =C2=A0	=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 v4l2_format_plane_height(info=
, plane, height);
> =C2=A0}
> =C2=A0
> @@ -475,8 +477,9 @@ void v4l2_apply_frmsize_constraints(u32 *width, u32 *=
height,
> =C2=A0}
> =C2=A0EXPORT_SYMBOL_GPL(v4l2_apply_frmsize_constraints);
> =C2=A0
> -int v4l2_fill_pixfmt_mp(struct v4l2_pix_format_mplane *pixfmt,
> -			u32 pixelformat, u32 width, u32 height)
> +int v4l2_fill_pixfmt_mp_aligned(struct v4l2_pix_format_mplane *pixfmt,
> +				u32 pixelformat, u32 width, u32 height,
> +				u8 stride_alignment)
> =C2=A0{
> =C2=A0	const struct v4l2_format_info *info;
> =C2=A0	struct v4l2_plane_pix_format *plane;
> @@ -493,23 +496,41 @@ int v4l2_fill_pixfmt_mp(struct v4l2_pix_format_mpla=
ne *pixfmt,
> =C2=A0
> =C2=A0	if (info->mem_planes =3D=3D 1) {
> =C2=A0		plane =3D &pixfmt->plane_fmt[0];
> -		plane->bytesperline =3D v4l2_format_plane_stride(info, 0, width);
> +		/*
> +		 * In case of multiple planes the stride of the other planes
> +		 * is derived from the y stride. To avoid breaking the stride
> +		 * alignment for the non y plane, multiply it by 2.
> +		 */
> +		if (info->comp_planes > 1)
> +			stride_alignment *=3D 2;

This generalization does not seem right for NV12, or YUV444 formats. Perhap=
s
move the correction down into v4l2_format_plane_stride() implementation. It
already have code for scaling the stride, maybe it can be leverage to pre-s=
cale
the alignment.

Nicolas

> +		plane->bytesperline =3D v4l2_format_plane_stride(info, 0, width,
> +							=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 stride_alignment);
> =C2=A0		plane->sizeimage =3D 0;
> =C2=A0
> =C2=A0		for (i =3D 0; i < info->comp_planes; i++)
> =C2=A0			plane->sizeimage +=3D
> -				v4l2_format_plane_size(info, i, width, height);
> +				v4l2_format_plane_size(info, i, width, height,
> +						=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 stride_alignment);
> =C2=A0	} else {
> =C2=A0		for (i =3D 0; i < info->comp_planes; i++) {
> =C2=A0			plane =3D &pixfmt->plane_fmt[i];
> =C2=A0			plane->bytesperline =3D
> -				v4l2_format_plane_stride(info, i, width);
> +				v4l2_format_plane_stride(info, i, width,
> +							 stride_alignment);
> =C2=A0			plane->sizeimage =3D plane->bytesperline *
> =C2=A0				v4l2_format_plane_height(info, i, height);
> =C2=A0		}
> =C2=A0	}
> =C2=A0	return 0;
> =C2=A0}
> +EXPORT_SYMBOL_GPL(v4l2_fill_pixfmt_mp_aligned);
> +
> +int v4l2_fill_pixfmt_mp(struct v4l2_pix_format_mplane *pixfmt,
> +			u32 pixelformat, u32 width, u32 height)
> +{
> +	return v4l2_fill_pixfmt_mp_aligned(pixfmt, pixelformat,
> +					=C2=A0=C2=A0 width, height, 1);
> +}
> =C2=A0EXPORT_SYMBOL_GPL(v4l2_fill_pixfmt_mp);
> =C2=A0
> =C2=A0int v4l2_fill_pixfmt(struct v4l2_pix_format *pixfmt, u32 pixelforma=
t,
> @@ -529,12 +550,12 @@ int v4l2_fill_pixfmt(struct v4l2_pix_format *pixfmt=
, u32 pixelformat,
> =C2=A0	pixfmt->width =3D width;
> =C2=A0	pixfmt->height =3D height;
> =C2=A0	pixfmt->pixelformat =3D pixelformat;
> -	pixfmt->bytesperline =3D v4l2_format_plane_stride(info, 0, width);
> +	pixfmt->bytesperline =3D v4l2_format_plane_stride(info, 0, width, 1);
> =C2=A0	pixfmt->sizeimage =3D 0;
> =C2=A0
> =C2=A0	for (i =3D 0; i < info->comp_planes; i++)
> =C2=A0		pixfmt->sizeimage +=3D
> -			v4l2_format_plane_size(info, i, width, height);
> +			v4l2_format_plane_size(info, i, width, height, 1);
> =C2=A0	return 0;
> =C2=A0}
> =C2=A0EXPORT_SYMBOL_GPL(v4l2_fill_pixfmt);
> diff --git a/include/media/v4l2-common.h b/include/media/v4l2-common.h
> index 401d8506c24b5..edd416178c333 100644
> --- a/include/media/v4l2-common.h
> +++ b/include/media/v4l2-common.h
> @@ -558,6 +558,10 @@ int v4l2_fill_pixfmt(struct v4l2_pix_format *pixfmt,=
 u32 pixelformat,
> =C2=A0		=C2=A0=C2=A0=C2=A0=C2=A0 u32 width, u32 height);
> =C2=A0int v4l2_fill_pixfmt_mp(struct v4l2_pix_format_mplane *pixfmt, u32 =
pixelformat,
> =C2=A0			u32 width, u32 height);
> +/* @stride_alignment is a power of 2 value in bytes */
> +int v4l2_fill_pixfmt_mp_aligned(struct v4l2_pix_format_mplane *pixfmt,
> +				u32 pixelformat, u32 width, u32 height,
> +				u8 stride_alignment);
> =C2=A0
> =C2=A0/**
> =C2=A0 * v4l2_get_link_freq - Get link rate from transmitter

--=-YSpqXCMYz4unuMVeMzx3
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQTvDVKBFcTDwhoEbxLZQZRRKWBy9AUCabxKmQAKCRDZQZRRKWBy
9AicAQC2kxYDBl49pgCzY7V2crCovY7JdWUNcNxML7TuCyI+6wD/VtaSm1mNxep9
nIXndGUv8JfuXrxAFbJoAMPIRp++3QA=
=OHGz
-----END PGP SIGNATURE-----

--=-YSpqXCMYz4unuMVeMzx3--


--===============3698380785810109600==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============3698380785810109600==--

