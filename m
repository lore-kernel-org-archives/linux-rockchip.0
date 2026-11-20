Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3ED08606A6E7
	for <linux-rockchip@archiver.kernel.org>; Fri, 20 Nov 2026 20:10:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=f170uiDx;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=collabora.com header.i=@collabora.com header.a=rsa-sha256 header.s=mail header.b=i82JSpCj
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:Cc:To:From:Subject:Message-ID:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=CbElKFMfnTHkxUsWmxjO6/7+sWLgmrp9dHjLhX3uS2A=; b=f170uiDxuPaiDDBJy6aH0oCSIn
	J46d6XvFwoSy1/XfnCspnXgccxhEL7VzJTjtpz/o6FCUh/bKTqz28OjsvYpfPoE14LfUUqbXsrc4t
	2dY5AUDuY4lG1ysXYNWuapIbTFxokNCqHOsmhh+QtjIZttOILNiEBzYDDuszqq7GU1Wz/+CbrsoMg
	NGIr7cn1N04k0dJqFBG3A/233zSa6alwGwzM8EtX2RxmXJDKIIfPBHgZ8fnLZUwMaKYfOhnpX7nUM
	WmUc1QfsM12Y/MsVjJ/Y4ITN1fMA1Z/YHo64yzxUKQTYEf5r2dgTGzKDls2t45iLcl5Yxxxt9hTXD
	w4qj62Xw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xUUwT-0000000GCqg-2stg;
	Fri, 20 Nov 2026 20:10:41 +0000
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xUUwQ-0000000GCq5-3DqB
	for linux-rockchip@lists.infradead.org;
	Fri, 20 Nov 2026 20:10:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1795205436;
	bh=y8WIRtNa9ntKa66hdWT9XNsrnk+I3E36TFv0h428JSk=;
	h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
	b=i82JSpCjje+GdHGn6r/jQeQkXvDAhhCqdTHvGqlQwIS/9vuqoTzyzSO475QOFjDFQ
	 RUp+i/kVbCvfMSUok4Qe9iJT4Pg96mRmNrPoYkkZCP2ml+nSJPJ/pMh3LE25FudUju
	 2KhRahqKpFDQwWytbUrvqGcjzaIJjqQRtEz22j5fLDMemx1l4k2VaO8U9wHsEU78By
	 dpKcQdp1zONAYmPXUMQUmvUkP4TJ+ICm1LD+OSyfuq6jMksP9vtgLdUOFdUrPeQwP6
	 ZTtet/bUmYgl5XJR8rLwfLxkcW5qjJw4XlcGd2bw9qMh5vuT4rdqIAdr9wLhx57NRo
	 YZ7YgyN5kblpg==
Received: from [100.64.0.214] (unknown [100.64.0.214])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange secp256r1 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: nicolas)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 07E2517E07B5;
	Fri, 20 Nov 2026 21:10:34 +0100 (CET)
Message-ID: <aecaf769d7db9775e695b7d64e5723d9a6b0b17b.camel@collabora.com>
Subject: Re: [PATCH v2 2/7] media: verisilicon: AV1: Use alloc/free helpers
 for auxiliary buffers
From: Nicolas Dufresne <nicolas.dufresne@collabora.com>
To: Philipp Zabel <p.zabel@pengutronix.de>, Benjamin Gaignard
	 <benjamin.gaignard@collabora.com>, mchehab@kernel.org
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org
Date: Fri, 20 Nov 2026 15:10:32 -0500
In-Reply-To: <dca17004d6cd81f66ebadc0a227548a4e558f2df.camel@pengutronix.de>
References: <20261120151345.88802-1-benjamin.gaignard@collabora.com>
		 <20261120151345.88802-3-benjamin.gaignard@collabora.com>
	 <dca17004d6cd81f66ebadc0a227548a4e558f2df.camel@pengutronix.de>
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
X-CRM114-CacheID: sfid-20261120_121039_119974_CA8AA7C3 
X-CRM114-Status: GOOD (  17.86  )
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
Content-Type: multipart/mixed; boundary="===============1582371683398193096=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-13.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

--===============1582371683398193096==
Content-Type: multipart/signed; micalg="pgp-sha512";
	protocol="application/pgp-signature"; boundary="=-ZKa5jFkrGUs7quLmIcXR"

--=-ZKa5jFkrGUs7quLmIcXR
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Le vendredi 20 novembre 2026 =C3=A0 16:56 +0100, Philipp Zabel a =C3=A9crit=
=C2=A0:
> On Fr, 2026-11-20 at 16:13 +0100, Benjamin Gaignard wrote:
> > Simplify and clean up the code by using the helpers.
> >=20
> > Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
> > Reviewed-by: Nicolas Dufresne <nicolas.dufresne@collabora.com>
> > ---
> >  .../media/platform/verisilicon/hantro_av1.c   | 177 ++++--------------
> >  1 file changed, 39 insertions(+), 138 deletions(-)
> >=20
> > diff --git a/drivers/media/platform/verisilicon/hantro_av1.c b/drivers/=
media/platform/verisilicon/hantro_av1.c
> > index 2cde32f0e935..e05816c7dfa3 100644
> > --- a/drivers/media/platform/verisilicon/hantro_av1.c
> > +++ b/drivers/media/platform/verisilicon/hantro_av1.c
> > @@ -235,40 +235,17 @@ size_t hantro_av1_chroma_size(struct hantro_ctx *=
ctx)
> > =20
> >  static void hantro_av1_tiles_free(struct hantro_ctx *ctx)
> >  {
> > -=09struct hantro_dev *vpu =3D ctx->dev;
> >  =09struct hantro_av1_dec_hw_ctx *av1_dec =3D &ctx->av1_dec;
> > =20
> > -=09if (av1_dec->db_data_col.cpu)
> > -=09=09dma_free_coherent(vpu->dev, av1_dec->db_data_col.size,
> > -=09=09=09=09  av1_dec->db_data_col.cpu,
> > -=09=09=09=09  av1_dec->db_data_col.dma);
> > -=09av1_dec->db_data_col.cpu =3D NULL;
> > -
> > -=09if (av1_dec->db_ctrl_col.cpu)
> > -=09=09dma_free_coherent(vpu->dev, av1_dec->db_ctrl_col.size,
> > -=09=09=09=09  av1_dec->db_ctrl_col.cpu,
> > -=09=09=09=09  av1_dec->db_ctrl_col.dma);
> > -=09av1_dec->db_ctrl_col.cpu =3D NULL;
> > -
> > -=09if (av1_dec->cdef_col.cpu)
> > -=09=09dma_free_coherent(vpu->dev, av1_dec->cdef_col.size,
> > -=09=09=09=09  av1_dec->cdef_col.cpu, av1_dec->cdef_col.dma);
> > -=09av1_dec->cdef_col.cpu =3D NULL;
> > -
> > -=09if (av1_dec->sr_col.cpu)
> > -=09=09dma_free_coherent(vpu->dev, av1_dec->sr_col.size,
> > -=09=09=09=09  av1_dec->sr_col.cpu, av1_dec->sr_col.dma);
> > -=09av1_dec->sr_col.cpu =3D NULL;
> > -
> > -=09if (av1_dec->lr_col.cpu)
> > -=09=09dma_free_coherent(vpu->dev, av1_dec->lr_col.size,
> > -=09=09=09=09  av1_dec->lr_col.cpu, av1_dec->lr_col.dma);
> > -=09av1_dec->lr_col.cpu =3D NULL;
> > +=09hantro_free_aux_buf(ctx, &av1_dec->db_data_col);
> > +=09hantro_free_aux_buf(ctx, &av1_dec->db_ctrl_col);
> > +=09hantro_free_aux_buf(ctx, &av1_dec->cdef_col);
> > +=09hantro_free_aux_buf(ctx, &av1_dec->sr_col);
> > +=09hantro_free_aux_buf(ctx, &av1_dec->lr_col);
> >  }
> > =20
> >  static int hantro_av1_tiles_reallocate(struct hantro_ctx *ctx)
> >  {
> > -=09struct hantro_dev *vpu =3D ctx->dev;
> >  =09struct hantro_av1_dec_hw_ctx *av1_dec =3D &ctx->av1_dec;
> >  =09struct hantro_av1_dec_ctrls *ctrls =3D &av1_dec->ctrls;
> >  =09const struct v4l2_av1_tile_info *tile_info =3D &ctrls->frame->tile_=
info;
> > @@ -277,6 +254,7 @@ static int hantro_av1_tiles_reallocate(struct hantr=
o_ctx *ctx)
> >  =09unsigned int height_in_sb =3D height / 64;
> >  =09unsigned int stripe_num =3D ((height + 8) + 63) / 64;
> >  =09size_t size;
> > +=09int ret;
> > =20
> >  =09if (av1_dec->db_data_col.size >=3D
> >  =09    ALIGN(height * 12 * ctx->bit_depth / 8, 128) * num_tile_cols)
> > @@ -285,44 +263,22 @@ static int hantro_av1_tiles_reallocate(struct han=
tro_ctx *ctx)
> >  =09hantro_av1_tiles_free(ctx);
> > =20
> >  =09size =3D ALIGN(height * 12 * ctx->bit_depth / 8, 128) * num_tile_co=
ls;
> > -=09av1_dec->db_data_col.cpu =3D dma_alloc_coherent(vpu->dev, size,
> > -=09=09=09=09=09=09      &av1_dec->db_data_col.dma,
> > -=09=09=09=09=09=09      GFP_KERNEL);
> > -=09if (!av1_dec->db_data_col.cpu)
> > -=09=09goto buffer_allocation_error;
> > -=09av1_dec->db_data_col.size =3D size;
> > +=09ret =3D hantro_allocate_aux_buf(ctx, &av1_dec->db_data_col, size);
> > =20
> >  =09size =3D ALIGN(height * 2 * 16 / 4, 128) * num_tile_cols;
> > -=09av1_dec->db_ctrl_col.cpu =3D dma_alloc_coherent(vpu->dev, size,
> > -=09=09=09=09=09=09      &av1_dec->db_ctrl_col.dma,
> > -=09=09=09=09=09=09      GFP_KERNEL);
> > -=09if (!av1_dec->db_ctrl_col.cpu)
> > -=09=09goto buffer_allocation_error;
> > -=09av1_dec->db_ctrl_col.size =3D size;
> > +=09ret |=3D hantro_allocate_aux_buf(ctx, &av1_dec->db_ctrl_col, size);
>=20
> Please don't |=3D error return values. Even if it happens to work here
> because hantro_allocate_aux_buf() is guaranteed to return the same
> error, it may inspire others to copy this in places where it's invalid.
>=20
> Further, hantro_allocate_aux_buf() looks like it can return -EINVAL and
> -ENOMEM, not sure if that can happen inside reallocate. That would
> combine into -ENOENT, which makes no sense to return.

Fair enough, I reviewed too quickly and assumed it was boolean. Not very co=
mmon,
but something I've seen in the past:

  =09ret =3D func(params1, ret);
=09ret =3D func(params2, ret);
=09...

And then:

int func(params, int ret)
{
=09if (!ret)
=09=09return ret;
=09
=09...

=09return ret;
}

That would allow moving the repetitive branch inside hantro_allocate_aux_bu=
f()
and keep the proposed simplification.

Nicolas

>=20
> regards
> Philipp

--=-ZKa5jFkrGUs7quLmIcXR
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQTvDVKBFcTDwhoEbxLZQZRRKWBy9AUCawCpOAAKCRDZQZRRKWBy
9Mk+AP9rxBt8WJt8L/siIRkqPG4cX8VRHZfapljBbwQquzWw8gD/RMQgkR0xMM5a
HwF4v+9kCMeurUc+h5VUP/Nz1Ry2iAo=
=mSPK
-----END PGP SIGNATURE-----

--=-ZKa5jFkrGUs7quLmIcXR--


--===============1582371683398193096==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============1582371683398193096==--

