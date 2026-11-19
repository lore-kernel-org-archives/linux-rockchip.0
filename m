Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60FAD606A332
	for <linux-rockchip@archiver.kernel.org>; Thu, 19 Nov 2026 21:59:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=kPBXfbuH;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=collabora.com header.i=@collabora.com header.a=rsa-sha256 header.s=mail header.b=jkv8thA2
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:Cc:To:From:Subject:Message-ID:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=DCPzIsZc2hM0HEzmDrNznC5vESmS54a9eL7lTRefNUU=; b=kPBXfbuHHwbn5LKS0dePasHpGs
	aTewG7xohKbWkbYdBD4S4JURrrZUCG3MauSNH1ONDm5y9AnJEul01G1zZ+K3NsJ6h9FKiqtypqiTJ
	CnpBbPG7I5JtjYcB2YGRqxjWOBDI1oPejqYe/caXJgYB/S2KfggAPmYAIpn7ne6f/o9D67tP/47+U
	yYBfZB0fMeLBI7aO9I5wUECrZA3YWZp9iBXAor8tQcdXA0gGXowNL8BPxnh3jSqglrqD5cRskAbI5
	39MLSLYASu8ucnzp52FGF0VZ68JWPr6dnjfktdkSoQvv6IuIhOpwk4bukntZYYgs0v0+xGxTsKkqB
	6vCRCauw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xUA9x-0000000DWcH-3yip;
	Thu, 19 Nov 2026 21:59:13 +0000
Received: from bali.collaboradmins.com ([148.251.105.195])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xUA9v-0000000DWbW-27tl
	for linux-rockchip@lists.infradead.org;
	Thu, 19 Nov 2026 21:59:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1795125549;
	bh=g2+437ztqr4k5/Nt3TwPvwOv/VW0szNOdeYD1YnvEvE=;
	h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
	b=jkv8thA2FVc+KkkEAG9w/rDKd6Z93iTEMt+0JpoJt4WuJ9tcIYGWtxGrVWcL0ZL8z
	 norGkN1BB5uIHSbGJIKSFALuyRJfhw4B5L9/S4Nb0WfNvx/Mh35rUgmhwxKtRhaG9w
	 Qv9KY/LZlO1NXNXagURtopgbsTb82LUVrrxekzbmAxfln29+VXDrD3+oUEOMmRey4I
	 vQMxUUcEB1CN37TXB/HTFbNGdp2Dg4SQCI56PFA58X+WhV2R5pSUZ+Jvd2WYwJbN1H
	 IkYgTD4Pxr3fQSlJFfAEsUDSDk3UwaSSoKKrG8kre03MMvLyymyNlGN1xBhmZta6lV
	 HTENjhaNgx+cw==
Received: from [100.64.0.214] (unknown [100.64.0.214])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange secp256r1)
	(No client certificate requested)
	(Authenticated sender: nicolas)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 60C3917E00E8;
	Thu, 19 Nov 2026 22:59:08 +0100 (CET)
Message-ID: <1839823f5991456eda0e6b447f3eac34a1cdd1cf.camel@collabora.com>
Subject: Re: [PATCH v1 2/7] media: verisilicon: AV1: Use alloc/free helpers
 for auxiliary buffers
From: Nicolas Dufresne <nicolas.dufresne@collabora.com>
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>, 
	p.zabel@pengutronix.de, mchehab@kernel.org
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org, kernel@collabora.com
Date: Thu, 19 Nov 2026 16:59:07 -0500
In-Reply-To: <20260916125443.78602-3-benjamin.gaignard@collabora.com>
References: <20260916125443.78602-1-benjamin.gaignard@collabora.com>
	 <20260916125443.78602-3-benjamin.gaignard@collabora.com>
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
X-CRM114-CacheID: sfid-20261119_135911_700700_BAE3C557 
X-CRM114-Status: GOOD (  13.34  )
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
Content-Type: multipart/mixed; boundary="===============9022733426569586506=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-13.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

--===============9022733426569586506==
Content-Type: multipart/signed; micalg="pgp-sha512";
	protocol="application/pgp-signature"; boundary="=-Z4q7h468eKJupmFx2cax"

--=-Z4q7h468eKJupmFx2cax
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Le mercredi 16 septembre 2026 =C3=A0 14:54 +0200, Benjamin Gaignard a =C3=
=A9crit=C2=A0:
> Simplify and clean up the code by using the helpers.
>=20
> Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>

Reviewed-by: Nicolas Dufresne <nicolas.dufresne@collabora.com>

> ---
>  .../media/platform/verisilicon/hantro_av1.c   | 177 ++++--------------
>  1 file changed, 39 insertions(+), 138 deletions(-)
>=20
> diff --git a/drivers/media/platform/verisilicon/hantro_av1.c b/drivers/me=
dia/platform/verisilicon/hantro_av1.c
> index 2cde32f0e935..e05816c7dfa3 100644
> --- a/drivers/media/platform/verisilicon/hantro_av1.c
> +++ b/drivers/media/platform/verisilicon/hantro_av1.c
> @@ -235,40 +235,17 @@ size_t hantro_av1_chroma_size(struct hantro_ctx *ct=
x)
> =20
>  static void hantro_av1_tiles_free(struct hantro_ctx *ctx)
>  {
> -=09struct hantro_dev *vpu =3D ctx->dev;
>  =09struct hantro_av1_dec_hw_ctx *av1_dec =3D &ctx->av1_dec;
> =20
> -=09if (av1_dec->db_data_col.cpu)
> -=09=09dma_free_coherent(vpu->dev, av1_dec->db_data_col.size,
> -=09=09=09=09  av1_dec->db_data_col.cpu,
> -=09=09=09=09  av1_dec->db_data_col.dma);
> -=09av1_dec->db_data_col.cpu =3D NULL;
> -
> -=09if (av1_dec->db_ctrl_col.cpu)
> -=09=09dma_free_coherent(vpu->dev, av1_dec->db_ctrl_col.size,
> -=09=09=09=09  av1_dec->db_ctrl_col.cpu,
> -=09=09=09=09  av1_dec->db_ctrl_col.dma);
> -=09av1_dec->db_ctrl_col.cpu =3D NULL;
> -
> -=09if (av1_dec->cdef_col.cpu)
> -=09=09dma_free_coherent(vpu->dev, av1_dec->cdef_col.size,
> -=09=09=09=09  av1_dec->cdef_col.cpu, av1_dec->cdef_col.dma);
> -=09av1_dec->cdef_col.cpu =3D NULL;
> -
> -=09if (av1_dec->sr_col.cpu)
> -=09=09dma_free_coherent(vpu->dev, av1_dec->sr_col.size,
> -=09=09=09=09  av1_dec->sr_col.cpu, av1_dec->sr_col.dma);
> -=09av1_dec->sr_col.cpu =3D NULL;
> -
> -=09if (av1_dec->lr_col.cpu)
> -=09=09dma_free_coherent(vpu->dev, av1_dec->lr_col.size,
> -=09=09=09=09  av1_dec->lr_col.cpu, av1_dec->lr_col.dma);
> -=09av1_dec->lr_col.cpu =3D NULL;
> +=09hantro_free_aux_buf(ctx, &av1_dec->db_data_col);
> +=09hantro_free_aux_buf(ctx, &av1_dec->db_ctrl_col);
> +=09hantro_free_aux_buf(ctx, &av1_dec->cdef_col);
> +=09hantro_free_aux_buf(ctx, &av1_dec->sr_col);
> +=09hantro_free_aux_buf(ctx, &av1_dec->lr_col);
>  }
> =20
>  static int hantro_av1_tiles_reallocate(struct hantro_ctx *ctx)
>  {
> -=09struct hantro_dev *vpu =3D ctx->dev;
>  =09struct hantro_av1_dec_hw_ctx *av1_dec =3D &ctx->av1_dec;
>  =09struct hantro_av1_dec_ctrls *ctrls =3D &av1_dec->ctrls;
>  =09const struct v4l2_av1_tile_info *tile_info =3D &ctrls->frame->tile_in=
fo;
> @@ -277,6 +254,7 @@ static int hantro_av1_tiles_reallocate(struct hantro_=
ctx *ctx)
>  =09unsigned int height_in_sb =3D height / 64;
>  =09unsigned int stripe_num =3D ((height + 8) + 63) / 64;
>  =09size_t size;
> +=09int ret;
> =20
>  =09if (av1_dec->db_data_col.size >=3D
>  =09    ALIGN(height * 12 * ctx->bit_depth / 8, 128) * num_tile_cols)
> @@ -285,44 +263,22 @@ static int hantro_av1_tiles_reallocate(struct hantr=
o_ctx *ctx)
>  =09hantro_av1_tiles_free(ctx);
> =20
>  =09size =3D ALIGN(height * 12 * ctx->bit_depth / 8, 128) * num_tile_cols=
;
> -=09av1_dec->db_data_col.cpu =3D dma_alloc_coherent(vpu->dev, size,
> -=09=09=09=09=09=09      &av1_dec->db_data_col.dma,
> -=09=09=09=09=09=09      GFP_KERNEL);
> -=09if (!av1_dec->db_data_col.cpu)
> -=09=09goto buffer_allocation_error;
> -=09av1_dec->db_data_col.size =3D size;
> +=09ret =3D hantro_allocate_aux_buf(ctx, &av1_dec->db_data_col, size);
> =20
>  =09size =3D ALIGN(height * 2 * 16 / 4, 128) * num_tile_cols;
> -=09av1_dec->db_ctrl_col.cpu =3D dma_alloc_coherent(vpu->dev, size,
> -=09=09=09=09=09=09      &av1_dec->db_ctrl_col.dma,
> -=09=09=09=09=09=09      GFP_KERNEL);
> -=09if (!av1_dec->db_ctrl_col.cpu)
> -=09=09goto buffer_allocation_error;
> -=09av1_dec->db_ctrl_col.size =3D size;
> +=09ret |=3D hantro_allocate_aux_buf(ctx, &av1_dec->db_ctrl_col, size);
> =20
>  =09size =3D ALIGN(height_in_sb * 44 * ctx->bit_depth * 16 / 8, 128) * nu=
m_tile_cols;
> -=09av1_dec->cdef_col.cpu =3D dma_alloc_coherent(vpu->dev, size,
> -=09=09=09=09=09=09   &av1_dec->cdef_col.dma,
> -=09=09=09=09=09=09   GFP_KERNEL);
> -=09if (!av1_dec->cdef_col.cpu)
> -=09=09goto buffer_allocation_error;
> -=09av1_dec->cdef_col.size =3D size;
> +=09ret |=3D hantro_allocate_aux_buf(ctx, &av1_dec->cdef_col, size);
> =20
>  =09size =3D ALIGN(height_in_sb * (3040 + 1280), 128) * num_tile_cols;
> -=09av1_dec->sr_col.cpu =3D dma_alloc_coherent(vpu->dev, size,
> -=09=09=09=09=09=09 &av1_dec->sr_col.dma,
> -=09=09=09=09=09=09 GFP_KERNEL);
> -=09if (!av1_dec->sr_col.cpu)
> -=09=09goto buffer_allocation_error;
> -=09av1_dec->sr_col.size =3D size;
> +=09ret |=3D hantro_allocate_aux_buf(ctx, &av1_dec->sr_col, size);
> =20
>  =09size =3D ALIGN(stripe_num * 1536 * ctx->bit_depth / 8, 128) * num_til=
e_cols;
> -=09av1_dec->lr_col.cpu =3D dma_alloc_coherent(vpu->dev, size,
> -=09=09=09=09=09=09 &av1_dec->lr_col.dma,
> -=09=09=09=09=09=09 GFP_KERNEL);
> -=09if (!av1_dec->lr_col.cpu)
> +=09ret |=3D hantro_allocate_aux_buf(ctx, &av1_dec->lr_col, size);
> +
> +=09if (ret)
>  =09=09goto buffer_allocation_error;
> -=09av1_dec->lr_col.size =3D size;
> =20
>  =09av1_dec->num_tile_cols_allocated =3D num_tile_cols;
>  =09return 0;
> @@ -334,105 +290,50 @@ static int hantro_av1_tiles_reallocate(struct hant=
ro_ctx *ctx)
> =20
>  void hantro_av1_exit(struct hantro_ctx *ctx)
>  {
> -=09struct hantro_dev *vpu =3D ctx->dev;
>  =09struct hantro_av1_dec_hw_ctx *av1_dec =3D &ctx->av1_dec;
> =20
> -=09if (av1_dec->global_model.cpu)
> -=09=09dma_free_coherent(vpu->dev, av1_dec->global_model.size,
> -=09=09=09=09  av1_dec->global_model.cpu,
> -=09=09=09=09  av1_dec->global_model.dma);
> -=09av1_dec->global_model.cpu =3D NULL;
> -
> -=09if (av1_dec->tile_info.cpu)
> -=09=09dma_free_coherent(vpu->dev, av1_dec->tile_info.size,
> -=09=09=09=09  av1_dec->tile_info.cpu,
> -=09=09=09=09  av1_dec->tile_info.dma);
> -=09av1_dec->tile_info.cpu =3D NULL;
> -
> -=09if (av1_dec->film_grain.cpu)
> -=09=09dma_free_coherent(vpu->dev, av1_dec->film_grain.size,
> -=09=09=09=09  av1_dec->film_grain.cpu,
> -=09=09=09=09  av1_dec->film_grain.dma);
> -=09av1_dec->film_grain.cpu =3D NULL;
> -
> -=09if (av1_dec->prob_tbl.cpu)
> -=09=09dma_free_coherent(vpu->dev, av1_dec->prob_tbl.size,
> -=09=09=09=09  av1_dec->prob_tbl.cpu, av1_dec->prob_tbl.dma);
> -=09av1_dec->prob_tbl.cpu =3D NULL;
> -
> -=09if (av1_dec->prob_tbl_out.cpu)
> -=09=09dma_free_coherent(vpu->dev, av1_dec->prob_tbl_out.size,
> -=09=09=09=09  av1_dec->prob_tbl_out.cpu,
> -=09=09=09=09  av1_dec->prob_tbl_out.dma);
> -=09av1_dec->prob_tbl_out.cpu =3D NULL;
> -
> -=09if (av1_dec->tile_buf.cpu)
> -=09=09dma_free_coherent(vpu->dev, av1_dec->tile_buf.size,
> -=09=09=09=09  av1_dec->tile_buf.cpu, av1_dec->tile_buf.dma);
> -=09av1_dec->tile_buf.cpu =3D NULL;
> +=09hantro_free_aux_buf(ctx, &av1_dec->global_model);
> +=09hantro_free_aux_buf(ctx, &av1_dec->tile_info);
> +=09hantro_free_aux_buf(ctx, &av1_dec->film_grain);
> +=09hantro_free_aux_buf(ctx, &av1_dec->prob_tbl);
> +=09hantro_free_aux_buf(ctx, &av1_dec->prob_tbl_out);
> =20
>  =09hantro_av1_tiles_free(ctx);
>  }
> =20
>  int hantro_av1_init(struct hantro_ctx *ctx)
>  {
> -=09struct hantro_dev *vpu =3D ctx->dev;
>  =09struct hantro_av1_dec_hw_ctx *av1_dec =3D &ctx->av1_dec;
> +=09int ret =3D 0;
> =20
>  =09memset(av1_dec, 0, sizeof(*av1_dec));
> =20
> -=09av1_dec->global_model.cpu =3D dma_alloc_coherent(vpu->dev, GLOBAL_MOD=
EL_SIZE,
> -=09=09=09=09=09=09       &av1_dec->global_model.dma,
> -=09=09=09=09=09=09       GFP_KERNEL);
> -=09if (!av1_dec->global_model.cpu)
> -=09=09return -ENOMEM;
> -=09av1_dec->global_model.size =3D GLOBAL_MODEL_SIZE;
> -
> -=09av1_dec->tile_info.cpu =3D dma_alloc_coherent(vpu->dev, AV1_TILE_INFO=
_SIZE,
> -=09=09=09=09=09=09    &av1_dec->tile_info.dma,
> -=09=09=09=09=09=09    GFP_KERNEL);
> -=09if (!av1_dec->tile_info.cpu)
> -=09=09return -ENOMEM;
> -=09av1_dec->tile_info.size =3D AV1_TILE_INFO_SIZE;
> -
> -=09av1_dec->film_grain.cpu =3D dma_alloc_coherent(vpu->dev,
> -=09=09=09=09=09=09     ALIGN(sizeof(struct hantro_av1_film_grain),
> -=09=09=09=09=09=09=09   2048),
> -=09=09=09=09=09=09     &av1_dec->film_grain.dma,
> -=09=09=09=09=09=09     GFP_KERNEL);
> -=09if (!av1_dec->film_grain.cpu)
> -=09=09return -ENOMEM;
> -=09av1_dec->film_grain.size =3D ALIGN(sizeof(struct hantro_av1_film_grai=
n), 2048);
> -
> -=09av1_dec->prob_tbl.cpu =3D dma_alloc_coherent(vpu->dev,
> -=09=09=09=09=09=09   ALIGN(sizeof(struct av1cdfs), 2048),
> -=09=09=09=09=09=09   &av1_dec->prob_tbl.dma,
> -=09=09=09=09=09=09   GFP_KERNEL);
> -=09if (!av1_dec->prob_tbl.cpu)
> -=09=09return -ENOMEM;
> -=09av1_dec->prob_tbl.size =3D ALIGN(sizeof(struct av1cdfs), 2048);
> -
> -=09av1_dec->prob_tbl_out.cpu =3D dma_alloc_coherent(vpu->dev,
> -=09=09=09=09=09=09       ALIGN(sizeof(struct av1cdfs), 2048),
> -=09=09=09=09=09=09       &av1_dec->prob_tbl_out.dma,
> -=09=09=09=09=09=09       GFP_KERNEL);
> -=09if (!av1_dec->prob_tbl_out.cpu)
> -=09=09return -ENOMEM;
> -=09av1_dec->prob_tbl_out.size =3D ALIGN(sizeof(struct av1cdfs), 2048);
> +=09ret |=3D hantro_allocate_aux_buf(ctx, &av1_dec->global_model, GLOBAL_=
MODEL_SIZE);
> +=09ret |=3D hantro_allocate_aux_buf(ctx, &av1_dec->tile_info, AV1_TILE_I=
NFO_SIZE);
> +=09ret |=3D hantro_allocate_aux_buf(ctx, &av1_dec->film_grain,
> +=09=09=09=09       ALIGN(sizeof(struct hantro_av1_film_grain), 2048));
> +=09ret |=3D hantro_allocate_aux_buf(ctx, &av1_dec->prob_tbl,
> +=09=09=09=09       ALIGN(sizeof(struct av1cdfs), 2048));
> +=09ret |=3D hantro_allocate_aux_buf(ctx, &av1_dec->prob_tbl_out,
> +=09=09=09=09       ALIGN(sizeof(struct av1cdfs), 2048));
> +=09if (ret)
> +=09=09goto buffer_allocation_error;
> +
>  =09av1_dec->cdfs =3D &av1_dec->default_cdfs;
>  =09av1_dec->cdfs_ndvc =3D &av1_dec->default_cdfs_ndvc;
> =20
>  =09hantro_av1_set_default_cdfs(av1_dec->cdfs, av1_dec->cdfs_ndvc);
> =20
> -=09av1_dec->tile_buf.cpu =3D dma_alloc_coherent(vpu->dev,
> -=09=09=09=09=09=09   AV1_TILE_SIZE,
> -=09=09=09=09=09=09   &av1_dec->tile_buf.dma,
> -=09=09=09=09=09=09   GFP_KERNEL);
> -=09if (!av1_dec->tile_buf.cpu)
> -=09=09return -ENOMEM;
> -=09av1_dec->tile_buf.size =3D AV1_TILE_SIZE;
> -
>  =09return 0;
> +
> +buffer_allocation_error:
> +=09hantro_free_aux_buf(ctx, &av1_dec->global_model);
> +=09hantro_free_aux_buf(ctx, &av1_dec->tile_info);
> +=09hantro_free_aux_buf(ctx, &av1_dec->film_grain);
> +=09hantro_free_aux_buf(ctx, &av1_dec->prob_tbl);
> +=09hantro_free_aux_buf(ctx, &av1_dec->prob_tbl_out);
> +
> +=09return -ENOMEM;
>  }
> =20
>  int hantro_av1_prepare_run(struct hantro_ctx *ctx)

--=-Z4q7h468eKJupmFx2cax
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQTvDVKBFcTDwhoEbxLZQZRRKWBy9AUCav9xKwAKCRDZQZRRKWBy
9OHMAQC+TWXI38eBHPknbbtbL2jr+9eqj/aXmYHexHkj1R4rYwEAlBz7ww/UMcR8
STq0L4G+OKnCIfYR1rypm0nIwf6+5Qw=
=Pxmb
-----END PGP SIGNATURE-----

--=-Z4q7h468eKJupmFx2cax--


--===============9022733426569586506==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============9022733426569586506==--

