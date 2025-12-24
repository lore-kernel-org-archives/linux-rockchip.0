Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1A753E77361
	for <linux-rockchip@archiver.kernel.org>; Wed, 24 Dec 2025 15:54:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:Cc:To:From:Subject:Message-ID:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=dd6zCQijUNsySbb7hjvS5edId0hRQ/dB4ge9ycQNGZg=; b=24jLiDxIz+6yiQodanwnv/e7TQ
	t+JsKrcTMTXFPosFCAYo/ZENpHyCC5DwUIXJNwOXvJMHLUes7g/JWN9FiOT1tOrwVwPRVoi5dltFa
	z/e7ZfS0+5oHW9XWML/Gbka6a4pqhDwLzNHHtAl348ETxvh/DuU7BcXm8d6hEt4x0SLUjgrsU8hZE
	oTIWPi+Zy5lr1jjVaLvjFP1cLPoX1cWYGv05ZIqqkorCSxcz1XgCt5bXk3uqTqye5X4F0GOFRiDPf
	zmVtec31oe4aBKLzmwHC9TsONY7tf2hW9miKHAmeU/CKMM2JuvXTEe09ZRxwlumxvlqURnkInRD88
	/Ug3KtXg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vYRCI-0000000HAFQ-1Nke;
	Wed, 24 Dec 2025 15:54:46 +0000
Received: from mail-qv1-xf31.google.com ([2607:f8b0:4864:20::f31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vYRCB-0000000HADE-1ts4
	for linux-rockchip@lists.infradead.org;
	Wed, 24 Dec 2025 15:54:44 +0000
Received: by mail-qv1-xf31.google.com with SMTP id 6a1803df08f44-88a367a1db0so98809816d6.3
        for <linux-rockchip@lists.infradead.org>; Wed, 24 Dec 2025 07:54:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ndufresne-ca.20230601.gappssmtp.com; s=20230601; t=1766591678; x=1767196478; darn=lists.infradead.org;
        h=mime-version:user-agent:autocrypt:references:in-reply-to:date:cc:to
         :from:subject:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=2psI/aP141t9WJvg+/Adc2m4sAlYqZvtnAn83waLW1A=;
        b=XB/w+rEUwRBS0TTRScmVGb8g4zJeoozQ3Tj1e/FgLbTg7iSjgwZijCzE2ojVVfMYW8
         eNtHFxBpQ/njDp/WONnx8JHyIOX8vVq8u+6s2+ubQ4zhxmSiQTr7I9HbY8gSFmFAk058
         PXA2a2N732edAdfaAQncN+XKaGv7fc6BD2hjDNSXeCkIS6Eirrl46e+1pul5img3v26L
         OQhvtJLuxhTWJ0+3BhkZXkUPKP4B32PhjcjQOANzHRNQNIgBSkCpOAqxcVikRVLedTiq
         BgBxf7bLQs1vGDRz5uFP5AhWbj1pbG0CFJhGVbZlvmmSQ3XgWi2mXCzjbIcpGqjLTr0b
         w/UQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766591678; x=1767196478;
        h=mime-version:user-agent:autocrypt:references:in-reply-to:date:cc:to
         :from:subject:message-id:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=2psI/aP141t9WJvg+/Adc2m4sAlYqZvtnAn83waLW1A=;
        b=aFHZ6/GSROhV8ysOJBF26ZiSmJKmNtQytukdsikK/7XgRtS8fyAQMPpqf9KItjyNd6
         8fs3kS5z6f4plEb7gbU8K+ZJYfZzbCcJaKLFzqs6zlhTNFgzAzEm3RyzeIGt0EBmOjC5
         r0G1lDodsvC1t889955ai4FsFJmFB3h+Gjeiq54/pZzG/bnK/vxvI8/j7W64eJgjWfBZ
         pr0K9+6qa4Gl+lbIpdFR4shBhriMDWXpPjrHXj+x2ERT1/Lp2kOItoFn5Pk9u26uxPBh
         pq1WubALzmP166C1kFlrz3yYnPulaKrhHxp0+6/U6I2h/RLg/EtVUrGShHHdejanJ/eX
         xi3g==
X-Forwarded-Encrypted: i=1; AJvYcCVi5zdwUhjBVTEGa/AwoMEzyanYxoYMXK+3Ij/c4GH9tdgtA/C5gcB3bOpRIoDB909F8NdKmcUnaH0ZQaJZpQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YwzB6pgw659W2AN0mS5CXkU0uJSC9rzCP+gTGq47V7DHr/3qkH1
	fkm0RFiFF2s634ZWYLaXorL5arFlW1V23kpHP/3xAhhfe5kW9InmM/nuj2/7XYd82VU=
X-Gm-Gg: AY/fxX4rLWRrbNzKa7bmIiOBy+DyO9JkEyMeA8XwSYB/Jlt16sJkCtj8TYAOzXeLn7f
	nZdmgJq1RlUWt6lpMWt5GrXbhK+aTxbN+Tz64SisSabWROXx5TKy0NhVyUrZRP3aRF3/P66gHcz
	jHa91sEDmFXIEeMBCjwxg03EfQ08rTv/lMlCLV7N3nCUZ+8ETOlC4bOafewN3z6M1zh/MD2gTvY
	IVLMNgGUcKnolh0Okeah8Sa5ezsmj6wkRcpywKcr2mQvfUbByRIc9XrI6z+bRqaABlarp5AfQhT
	wWXghM/PW++G75S46IAgJsF9ZoyxJNnF9DNqqb9Vp0SLnGJyam3vY17izpVqLFZpjrxcpgvISA7
	VhATRdd1+BKkSdCJwGxIdX6Nm80baqkMWz8abikz+jkgKp8M3mgbDMOtCe4SIbLwTyCmqbj1x6D
	pkCEXWrcE8mg0GbJ/m
X-Google-Smtp-Source: AGHT+IFedl+Q8MBCrfyVIi5r/7wpFkhmE319oxOmZ6vllizWd7jQjQ9oQPtTNc+Zn0Eoas5UOmjdHQ==
X-Received: by 2002:a05:6214:240f:b0:88a:449d:73d7 with SMTP id 6a1803df08f44-88d82339423mr299817076d6.28.1766591678130;
        Wed, 24 Dec 2025 07:54:38 -0800 (PST)
Received: from ?IPv6:2606:6d00:17:7b4b::c41? ([2606:6d00:17:7b4b::c41])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-88d9759f164sm128316756d6.24.2025.12.24.07.54.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Dec 2025 07:54:37 -0800 (PST)
Message-ID: <7c25b77adbadf5f325ce15996ff609c893a1e7b8.camel@ndufresne.ca>
Subject: Re: [PATCH v2 16/22] media: rockchip: rga: remove size from
 rga_frame
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
Date: Wed, 24 Dec 2025 10:54:36 -0500
In-Reply-To: <20251203-spu-rga3-v2-16-989a67947f71@pengutronix.de>
References: <20251203-spu-rga3-v2-0-989a67947f71@pengutronix.de>
	 <20251203-spu-rga3-v2-16-989a67947f71@pengutronix.de>
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
X-CRM114-CacheID: sfid-20251224_075439_509406_1528CBA3 
X-CRM114-Status: GOOD (  19.48  )
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
Content-Type: multipart/mixed; boundary="===============1573661960771956433=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============1573661960771956433==
Content-Type: multipart/signed; micalg="pgp-sha512";
	protocol="application/pgp-signature"; boundary="=-iHp+SZRXdImhT9S7j5MC"


--=-iHp+SZRXdImhT9S7j5MC
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Le mercredi 03 d=C3=A9cembre 2025 =C3=A0 16:52 +0100, Sven P=C3=BCschel a =
=C3=A9crit=C2=A0:
> The size member is only used for the mmu page table mapping.
> Therefore avoid storing the value and instead only calculate it
> in place. This also avoids the calculation entirely when an external
> iommu is used.
>=20
> Signed-off-by: Sven P=C3=BCschel <s.pueschel@pengutronix.de>
> ---
> =C2=A0drivers/media/platform/rockchip/rga/rga-buf.c | 6 +++++-
> =C2=A0drivers/media/platform/rockchip/rga/rga.c=C2=A0=C2=A0=C2=A0=C2=A0 |=
 8 ++------
> =C2=A0drivers/media/platform/rockchip/rga/rga.h=C2=A0=C2=A0=C2=A0=C2=A0 |=
 1 -
> =C2=A03 files changed, 7 insertions(+), 8 deletions(-)
>=20
> diff --git a/drivers/media/platform/rockchip/rga/rga-buf.c b/drivers/medi=
a/platform/rockchip/rga/rga-buf.c
> index e8d1e2e579140..8de6b9c3fd615 100644
> --- a/drivers/media/platform/rockchip/rga/rga-buf.c
> +++ b/drivers/media/platform/rockchip/rga/rga-buf.c
> @@ -79,9 +79,13 @@ static int rga_buf_init(struct vb2_buffer *vb)
> =C2=A0	struct rockchip_rga *rga =3D ctx->rga;
> =C2=A0	struct rga_frame *f =3D rga_get_frame(ctx, vb->vb2_queue->type);
> =C2=A0	size_t n_desc =3D 0;
> +	u32 size =3D 0;
> +	u8 i;

Move in it the scope it is being used.

> =C2=A0
> =C2=A0	if (rga_has_internal_iommu(rga)) {

though, after looking more attentively, this function is a no-op when the i=
s an
external iommu. Using an early return would make this so much clearer, and =
you
can then drop the indent.

	if (rga_has_internal_iommu(rga))
		return 0;

Perhaps a comment to be applied on patch 14 though.

> -		n_desc =3D DIV_ROUND_UP(f->size, PAGE_SIZE);
> +		for (i =3D 0; i < f->pix.num_planes; i++)
> +			size +=3D f->pix.plane_fmt[i].sizeimage;
> +		n_desc =3D DIV_ROUND_UP(size, PAGE_SIZE);
> =C2=A0
> =C2=A0		rbuf->n_desc =3D n_desc;
> =C2=A0		rbuf->dma_desc =3D dma_alloc_coherent(rga->dev,
> diff --git a/drivers/media/platform/rockchip/rga/rga.c b/drivers/media/pl=
atform/rockchip/rga/rga.c
> index 1bfc4021f4a7b..0d7b0bcac950e 100644
> --- a/drivers/media/platform/rockchip/rga/rga.c
> +++ b/drivers/media/platform/rockchip/rga/rga.c
> @@ -221,7 +221,6 @@ static int rga_open(struct file *file)
> =C2=A0	};
> =C2=A0
> =C2=A0	def_frame.stride =3D (def_width * def_frame.fmt->depth) >> 3;
> -	def_frame.size =3D def_frame.stride * def_height;
> =C2=A0
> =C2=A0	ctx =3D kzalloc(sizeof(*ctx), GFP_KERNEL);
> =C2=A0	if (!ctx)
> @@ -428,9 +427,6 @@ static int vidioc_s_fmt(struct file *file, void *priv=
, struct v4l2_format *f)
> =C2=A0	frm =3D rga_get_frame(ctx, f->type);
> =C2=A0	if (IS_ERR(frm))
> =C2=A0		return PTR_ERR(frm);
> -	frm->size =3D 0;
> -	for (i =3D 0; i < pix_fmt->num_planes; i++)
> -		frm->size +=3D pix_fmt->plane_fmt[i].sizeimage;
> =C2=A0	frm->fmt =3D rga_fmt_find(rga, pix_fmt->pixelformat);
> =C2=A0	frm->stride =3D pix_fmt->plane_fmt[0].bytesperline;
> =C2=A0
> @@ -443,10 +439,10 @@ static int vidioc_s_fmt(struct file *file, void *pr=
iv, struct v4l2_format *f)
> =C2=A0	frm->pix =3D *pix_fmt;
> =C2=A0
> =C2=A0	v4l2_dbg(debug, 1, &rga->v4l2_dev,
> -		 "[%s] fmt - %p4cc %dx%d (stride %d, sizeimage %d)\n",
> +		 "[%s] fmt - %p4cc %dx%d (stride %d)\n",
> =C2=A0		=C2=A0 V4L2_TYPE_IS_OUTPUT(f->type) ? "OUTPUT" : "CAPTURE",
> =C2=A0		=C2=A0 &frm->fmt->fourcc, pix_fmt->width, pix_fmt->height,
> -		=C2=A0 frm->stride, frm->size);
> +		=C2=A0 frm->stride);
> =C2=A0
> =C2=A0	for (i =3D 0; i < pix_fmt->num_planes; i++) {
> =C2=A0		v4l2_dbg(debug, 1, &rga->v4l2_dev,
> diff --git a/drivers/media/platform/rockchip/rga/rga.h b/drivers/media/pl=
atform/rockchip/rga/rga.h
> index fc81bc5562792..466d568b9e614 100644
> --- a/drivers/media/platform/rockchip/rga/rga.h
> +++ b/drivers/media/platform/rockchip/rga/rga.h
> @@ -37,7 +37,6 @@ struct rga_frame {
> =C2=A0
> =C2=A0	/* Variables that can calculated once and reused */
> =C2=A0	u32 stride;
> -	u32 size;
> =C2=A0};
> =C2=A0
> =C2=A0struct rga_dma_desc {

--=-iHp+SZRXdImhT9S7j5MC
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQTvDVKBFcTDwhoEbxLZQZRRKWBy9AUCaUwMvAAKCRDZQZRRKWBy
9MazAP9SPSZieUXA48LDd5tOkCfcSw+tIQ3exEWQZqU4r0gOYQD+NnIkcgsXCMtT
DnOj2pkPBBxXjYYajH29kpn5EGDkJwM=
=AGpj
-----END PGP SIGNATURE-----

--=-iHp+SZRXdImhT9S7j5MC--


--===============1573661960771956433==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============1573661960771956433==--

