Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6BAEDE77378
	for <linux-rockchip@archiver.kernel.org>; Wed, 24 Dec 2025 15:10:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:Cc:To:From:Subject:Message-ID:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=DYSsD0IpYfK18cfplhX7Cpv3R5ql82Uvjk0QE0Yg3HE=; b=J1EuWc2BUS81UsUSG7oYrEBeYQ
	7+Ym2lShn7T7m3KI1zPxFZH1j48D8km7q5J4Qm/HSjMUwr62UOVR9Lu3RGQzZYmqqytX3i7BCV/WH
	asifLYGKBNXraRkHbmzjDJUNJNVUkZBBcsACF6WzhzUkbdDjYk5LGyiRBZCoEVu3FSSitZidJQYjf
	/+dzQYUHQfX7NhBcCwjQl0K7R9HcY2cRfusi1BJlSdJStLzzCZ+O5FH086hnTLpTupR0kqxXXAz+3
	h2qF9gotAMf7t32KTP4ANxAb3QCcz2HgwzW2ZC6qAaCxRHxGBYndCq0srUhWTiNo8WYYXKL84tt1Z
	BSTBTTkA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vYQVj-0000000H4pn-0UV5;
	Wed, 24 Dec 2025 15:10:47 +0000
Received: from mail-ot1-x335.google.com ([2607:f8b0:4864:20::335])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vYQVd-0000000H4pF-0bJ7
	for linux-rockchip@lists.infradead.org;
	Wed, 24 Dec 2025 15:10:43 +0000
Received: by mail-ot1-x335.google.com with SMTP id 46e09a7af769-7cdae63171aso2327563a34.1
        for <linux-rockchip@lists.infradead.org>; Wed, 24 Dec 2025 07:10:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ndufresne-ca.20230601.gappssmtp.com; s=20230601; t=1766589040; x=1767193840; darn=lists.infradead.org;
        h=mime-version:user-agent:autocrypt:references:in-reply-to:date:cc:to
         :from:subject:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=dGe1Kg/Ewwa4AXdQbZdoUP/58mpe9Y5O7Uc0GbJIQbI=;
        b=w+B8vTj7fO+9Px2iVBBNHSPEuwjLk1PytYM529KYVU52KXyo3ggH9sCwH/+JESNSIL
         hxB9O29GJHzMcRdS8Y1yeRw8nUHUFs2sqhBnrJVt5UX/KaNkx9TSlXLvm/qkljX41qq6
         pBJiaSjkchwnD5cQjm4Cl0R0rISJZUrXjP2HUQkDGq9mAvfFTBiMrGou0xqXHRWZo4qJ
         fp9szgEOLFWImPNEogHL/rueLEqgnGKq8ti1jpinZmfi7qEUrJIH3++Kir4468spXHTF
         RitvaUkmT2BEhi39+6JrrYQq7n2WpPw8McN0pLCZnvn0YSK1tlDifUmyAucGiSnfIksi
         OCbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766589040; x=1767193840;
        h=mime-version:user-agent:autocrypt:references:in-reply-to:date:cc:to
         :from:subject:message-id:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=dGe1Kg/Ewwa4AXdQbZdoUP/58mpe9Y5O7Uc0GbJIQbI=;
        b=BXHEDx63k6+iU3FjHSa0wn7F/IsJS9IaFBOrW+rRPgu1xWixfObDeTF0IPwuAM5+iJ
         WD5/MjYLMFPJqd77EI9yfnkseXCl6yvZndKNNptN+UJF0CG2EuYjbATi4YoWub5NdBXv
         wVje2P1QzLsuz1uJBsZQhRZ5rKfNemRUKAAwI3kqVdWt/fWyU09Ye2F1/jDZ2wXNgHY2
         NeUcZGtsuQYoy43tlUefw/N7m1dfy/a/J8nfdHslo9HQoGaOAr/Rr1gTP+spfLR+RXwH
         88RxUev21odB0yuKWlMvvFkgKTwvKIwtOzPlW83VeHWGZW/TTlKLAPmwoG8N0WuRyNA8
         gPpQ==
X-Forwarded-Encrypted: i=1; AJvYcCXwz3+0g7YEI4w8F4GIKJN/s+Ms3akk62oC3fkwcjkmt6hd4p0ULbUdbsZklDL8zWzC2X+/T3hE89NlcSZ2oQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YyxYFZm4xdmbDZXtmqPAiG4Gu48NJzr7b5NY36qzvxffjAiixEE
	N1glF2k9jU4jPzq1QPdB9jks4owjLMvwHXf11eKrZ1u5QEgx41pcDpIa+8dyCS+mIUkhoi/LD7I
	vRWhGWH8=
X-Gm-Gg: AY/fxX6Igc8DOrT7Vp1C+/iwYsDFRKn8KEE3tBLJXx7+EuiHBsyUq8lJuPgsgpkR/T6
	423qKI1mzuZuRo+ArBIGrcRBABDmyITqrUl8csbXNk+D1EVw1nZRb5dNpoN4ckCptxk4vDLzvdq
	SdMOfwzXQbDnUy4UC96BIfDxrosAYChhP3rUNadHFA0wHN3i/2lPkH+GzC9M+0eLDzMfmrz+ov1
	87Fv2C3b7JnFxzRw2ESI14cAxj8JyeoX3yg8DhU2wHmpWPkTyOoibeYq7JoBEEUDAVtS9FLJq22
	+FKXLv0AWjiCkLLrdzFRI6JaHX+IyvftaRN550uf3p7IGJ2MtogxZpyuoRfe1Oqy4oyPXQ77vQL
	FRVIbUcxbarxeZh6fD3YPPJj+LJieDEx5Y6I4HC9Um7KsLBQxrqSnJgr8lvtSlWVrIdp3P/MOGT
	6PbU9b/ul/TRj37tYM
X-Google-Smtp-Source: AGHT+IGOdP4bNjuz9Xy+2p3DsTDzLsDPb65a5Nil+bEYmD7FurogSj7bVj14d+sYewwSE7RZ5v7Z8A==
X-Received: by 2002:a05:622a:2b49:b0:4f1:cab1:9d3c with SMTP id d75a77b69052e-4f4abda9df8mr272131511cf.57.1766588436448;
        Wed, 24 Dec 2025 07:00:36 -0800 (PST)
Received: from ?IPv6:2606:6d00:17:7b4b::c41? ([2606:6d00:17:7b4b::c41])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-4f4ac62e1e7sm123162401cf.21.2025.12.24.07.00.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Dec 2025 07:00:35 -0800 (PST)
Message-ID: <7d9f41a8609fdae7631305585cab47fd45297c5c.camel@ndufresne.ca>
Subject: Re: [PATCH v2 05/22] media: rockchip: rga: use stride for offset
 calculation
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
Date: Wed, 24 Dec 2025 10:00:34 -0500
In-Reply-To: <20251203-spu-rga3-v2-5-989a67947f71@pengutronix.de>
References: <20251203-spu-rga3-v2-0-989a67947f71@pengutronix.de>
	 <20251203-spu-rga3-v2-5-989a67947f71@pengutronix.de>
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
X-CRM114-CacheID: sfid-20251224_071042_167077_9715630C 
X-CRM114-Status: GOOD (  18.80  )
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
Content-Type: multipart/mixed; boundary="===============4314268340412329441=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============4314268340412329441==
Content-Type: multipart/signed; micalg="pgp-sha512";
	protocol="application/pgp-signature"; boundary="=-rHJMEXILUMoROeBsgJ5B"


--=-rHJMEXILUMoROeBsgJ5B
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Le mercredi 03 d=C3=A9cembre 2025 =C3=A0 16:52 +0100, Sven P=C3=BCschel a =
=C3=A9crit=C2=A0:
> Use the stride instead of the width for the offset calculation. This
> ensures that the bytesperline value doesn't need to match the width
> value of the image.
>=20
> Furthermore this patch removes the dependency on the uv_factor property
> and instead reuses the v4l2_format_info to determine the correct
> division factor.
>=20
> Signed-off-by: Sven P=C3=BCschel <s.pueschel@pengutronix.de>
> ---
> =C2=A0drivers/media/platform/rockchip/rga/rga-buf.c | 14 +++++++++-----
> =C2=A01 file changed, 9 insertions(+), 5 deletions(-)
>=20
> diff --git a/drivers/media/platform/rockchip/rga/rga-buf.c b/drivers/medi=
a/platform/rockchip/rga/rga-buf.c
> index 730bdf98565a5..b5e6b1b527ca8 100644
> --- a/drivers/media/platform/rockchip/rga/rga-buf.c
> +++ b/drivers/media/platform/rockchip/rga/rga-buf.c
> @@ -14,7 +14,6 @@
> =C2=A0#include <media/videobuf2-dma-sg.h>
> =C2=A0#include <media/videobuf2-v4l2.h>
> =C2=A0
> -#include "rga-hw.h"
> =C2=A0#include "rga.h"
> =C2=A0
> =C2=A0static ssize_t fill_descriptors(struct rga_dma_desc *desc, size_t m=
ax_desc,
> @@ -92,14 +91,19 @@ static int rga_buf_init(struct vb2_buffer *vb)
> =C2=A0	return 0;
> =C2=A0}
> =C2=A0
> -static int get_plane_offset(struct rga_frame *f, int plane)
> +static int get_plane_offset(struct rga_frame *f,
> +			=C2=A0=C2=A0=C2=A0 const struct v4l2_format_info *info,
> +			=C2=A0=C2=A0=C2=A0 int plane)
> =C2=A0{
> +	u32 stride =3D f->pix.plane_fmt[0].bytesperline;
> +
> =C2=A0	if (plane =3D=3D 0)
> =C2=A0		return 0;
> =C2=A0	if (plane =3D=3D 1)
> -		return f->width * f->height;
> +		return stride * f->height;
> =C2=A0	if (plane =3D=3D 2)
> -		return f->width * f->height + (f->width * f->height / f->fmt->uv_facto=
r);
> +		return stride * f->height +
> +		=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 (stride * f->height / info->hdiv =
/ info->vdiv);

This was the only user of uv_factor, please cleanup rga.h/rga.c. I see ther=
e is
also redudant x_div/y_div, with this similar code re-implemented in
rga_get_addr_offset(), can you check for v3 if we can cleanup some more ?

One thought though is that this code is already hidden inside v4l2-common,
perhaps you could just expose it, this ensure that we don't accidently have
different information when configuring the HW and communicating with the us=
er.

Nicolas

> =C2=A0
> =C2=A0	return -EINVAL;
> =C2=A0}
> @@ -145,7 +149,7 @@ static int rga_buf_prepare(struct vb2_buffer *vb)
> =C2=A0	/* Fill the remaining planes */
> =C2=A0	info =3D v4l2_format_info(f->fmt->fourcc);
> =C2=A0	for (i =3D info->mem_planes; i < info->comp_planes; i++)
> -		offsets[i] =3D get_plane_offset(f, i);
> +		offsets[i] =3D get_plane_offset(f, info, i);
> =C2=A0
> =C2=A0	rbuf->offset.y_off =3D offsets[0];
> =C2=A0	rbuf->offset.u_off =3D offsets[1];

--=-rHJMEXILUMoROeBsgJ5B
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQTvDVKBFcTDwhoEbxLZQZRRKWBy9AUCaUwAEgAKCRDZQZRRKWBy
9NO5AQDtdSqseG94qsfu8XsdEZ4bOfZiTOs9HyX/19Fq1IgEnAEAhFdciooE5zhz
sU15mlCk3SHkGaBmmOl7z63Xkb4AnAo=
=7AqG
-----END PGP SIGNATURE-----

--=-rHJMEXILUMoROeBsgJ5B--


--===============4314268340412329441==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============4314268340412329441==--

