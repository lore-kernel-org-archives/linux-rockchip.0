Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E668760A2605
	for <linux-rockchip@archiver.kernel.org>; Fri, 20 Nov 2026 23:00:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=uM0MLmNg;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=collabora.com header.i=@collabora.com header.a=rsa-sha256 header.s=mail header.b=Z/1j7BYT
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:Cc:To:From:Subject:Message-ID:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=Im786kEW4J1+InpVaqLgY+FEjnR66vv7GeWlLDt+zy8=; b=uM0MLmNg4bZz/61Nl1zqQP0QJp
	8ZDJH9IrwHVdWHcq11CQT9zImd00bjqm8bjQkyZylsUKP3Rix8ESvvdJouZMFB20kqW8xkdoSjGJG
	q0lgQb9AJlAU6T9l5HacmIH6aWeU+fG88+0KGt+5Atx95aSgI9KXRiZB+ZmZRtBxH3fu25Mn4AZ+n
	89jqatAorIQBGpz9i58XKWZeQlhD0az2rskQyfBxwbNqX83ntVDyUyFke5Xpacs8bB4ZNXwVYLIbP
	4aKKTmrYw6uIJBNoVEHNqdiGiHFt/WE8tNwAa/38U32CPirbgWvf6Scct1yKyyuYnAMuZZ4A+4O3R
	NSEaHM7g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xUXay-0000000GN1r-1wci;
	Fri, 20 Nov 2026 23:00:40 +0000
Received: from bali.collaboradmins.com ([148.251.105.195])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xUXav-0000000GN11-3tRn
	for linux-rockchip@lists.infradead.org;
	Fri, 20 Nov 2026 23:00:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1795215636;
	bh=K4e2VYLcZ7zQZ1eaew87SzkYvCxdTvZku1cYHYpTPgU=;
	h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
	b=Z/1j7BYTouF+EtT7x0CGNjcC4PA/1iHzmstb10kAZVHxyu78YuHl6DORcSRJrBR73
	 sNfW0hOl52VD/n26S6gChpA+pJD68RbeYN5gvyE4TZmVon789H/OxhLhlf3sl/WKTr
	 mujbz0GANbNhNbLxrPJjadw/LBBd/6yfCWHKcNSfI1TY3HCUrQxJKYuw7n4TY+Ctna
	 oRygGJavGwKMei+xISbIrQurFffOV2z6Kd2meObHeK2N0u9QC668S6F8+wx4Lpt2Cq
	 W+8yH52utLnM22rnNG1LQ1sGb/s+F/y3Xyc+C3woQAfXNRQrS9zG2Tf/pXzw4FvE11
	 CvVPdsNSWhH/w==
Received: from [100.64.0.214] (unknown [100.64.0.214])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange secp256r1)
	(No client certificate requested)
	(Authenticated sender: nicolas)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 11FDC17E0060;
	Sat, 21 Nov 2026 00:00:34 +0100 (CET)
Message-ID: <53db01280c85529e09daf56af48e55311f4a38fa.camel@collabora.com>
Subject: Re: [PATCH v2 3/7] media: verisilicon: h264: Use alloc/free helpers
 for auxiliary buffers
From: Nicolas Dufresne <nicolas.dufresne@collabora.com>
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>, 
	p.zabel@pengutronix.de, mchehab@kernel.org
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org
Date: Fri, 20 Nov 2026 18:00:34 -0500
In-Reply-To: <20261120151345.88802-4-benjamin.gaignard@collabora.com>
References: <20261120151345.88802-1-benjamin.gaignard@collabora.com>
	 <20261120151345.88802-4-benjamin.gaignard@collabora.com>
Autocrypt: addr=nicolas.dufresne@collabora.com; prefer-encrypt=mutual;
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
Organization: Collabora Canada
User-Agent: Evolution 3.62.1 (3.62.1-1.fc45) 
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261120_150038_135695_54054D00 
X-CRM114-Status: GOOD (  11.12  )
X-Spam-Score: -2.1 (--)
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============4054985784390197950=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-13.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

--===============4054985784390197950==
Content-Type: multipart/signed; micalg="pgp-sha512";
	protocol="application/pgp-signature"; boundary="=-4aiA40uwE+TdXv0yb5Ab"

--=-4aiA40uwE+TdXv0yb5Ab
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Le vendredi 20 novembre 2026 =C3=A0 16:13 +0100, Benjamin Gaignard a =C3=A9=
crit=C2=A0:
> Simplify and clean up the code by using the helpers.
>=20
> Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
> Reviewed-by: Nicolas Dufresne <nicolas.dufresne@collabora.com>
> ---
>  drivers/media/platform/verisilicon/hantro_h264.c | 9 ++-------
>  1 file changed, 2 insertions(+), 7 deletions(-)
>=20
> diff --git a/drivers/media/platform/verisilicon/hantro_h264.c b/drivers/m=
edia/platform/verisilicon/hantro_h264.c
> index 2414782f1eb6..68dde1cd1ac2 100644
> --- a/drivers/media/platform/verisilicon/hantro_h264.c
> +++ b/drivers/media/platform/verisilicon/hantro_h264.c
> @@ -494,26 +494,21 @@ int hantro_h264_dec_prepare_run(struct hantro_ctx *=
ctx)
> =20
>  void hantro_h264_dec_exit(struct hantro_ctx *ctx)
>  {
> -=09struct hantro_dev *vpu =3D ctx->dev;
>  =09struct hantro_h264_dec_hw_ctx *h264_dec =3D &ctx->h264_dec;
>  =09struct hantro_aux_buf *priv =3D &h264_dec->priv;
> =20
> -=09dma_free_coherent(vpu->dev, priv->size, priv->cpu, priv->dma);
> +=09hantro_free_aux_buf(ctx, priv);
>  }
> =20
>  int hantro_h264_dec_init(struct hantro_ctx *ctx)
>  {
> -=09struct hantro_dev *vpu =3D ctx->dev;
>  =09struct hantro_h264_dec_hw_ctx *h264_dec =3D &ctx->h264_dec;
>  =09struct hantro_aux_buf *priv =3D &h264_dec->priv;
>  =09struct hantro_h264_dec_priv_tbl *tbl;
> =20
> -=09priv->cpu =3D dma_alloc_coherent(vpu->dev, sizeof(*tbl), &priv->dma,
> -=09=09=09=09       GFP_KERNEL);
> -=09if (!priv->cpu)
> +=09if (hantro_allocate_aux_buf(ctx, priv, sizeof(*tbl)))
>  =09=09return -ENOMEM;

EINVAL is masked.

> =20
> -=09priv->size =3D sizeof(*tbl);
>  =09tbl =3D priv->cpu;
>  =09memcpy(tbl->cabac_table, h264_cabac_table, sizeof(tbl->cabac_table));
> =20

--=-4aiA40uwE+TdXv0yb5Ab
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQTvDVKBFcTDwhoEbxLZQZRRKWBy9AUCawDREgAKCRDZQZRRKWBy
9IOWAQCA6UMU7WmyeqL6t8usni3NYUSWMeAYUQioq7Dqqp8+rgD/cCV+mPm0VO+V
j4uYJ4mnXDb1FfNqhctT0j0qE341jQM=
=mi1m
-----END PGP SIGNATURE-----

--=-4aiA40uwE+TdXv0yb5Ab--


--===============4054985784390197950==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============4054985784390197950==--

