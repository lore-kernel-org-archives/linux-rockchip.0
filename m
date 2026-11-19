Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B9E9606A320
	for <linux-rockchip@archiver.kernel.org>; Thu, 19 Nov 2026 22:00:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=kQTGE79B;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=collabora.com header.i=@collabora.com header.a=rsa-sha256 header.s=mail header.b=mD3KMJqM
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:Cc:To:From:Subject:Message-ID:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=Dkxa2hYOJODATwgIz3m8A2QiTRH1my/9AowSGGpYxCU=; b=kQTGE79BWi48ajmFnMTgKJp8Pt
	Pgzd12lns99roZZcyX5XvV71vbgCeM+f4FgoeEE0KE98e+GSgq0f4AgYzwQ9THhkbz88rVcf/Pqdf
	Qw4uco+KPGWuHoR88M+r2r7UskvbThc+8vYXnV7d9RErpLRirVkGUFxndGzzIdnSC43UXJeppSX4S
	ARWqdzKokUBTY6Hbw43q6lpDejBCDd6nebJU+J6pV6aR9og+vuO2qqVWI6HtqAVYAEFb/+x/z+Afq
	22lDgYGzz+9y0WDL9ffsSvbCmAHqHUZ4JyWoPQJJAaB/DXb/LaPgBBdkna5Nvcdho41pl8wnFwXNB
	a83WzAoA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xUAAw-0000000DWnL-1Brq;
	Thu, 19 Nov 2026 22:00:14 +0000
Received: from bali.collaboradmins.com ([148.251.105.195])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xUAAs-0000000DWmd-1aJW
	for linux-rockchip@lists.infradead.org;
	Thu, 19 Nov 2026 22:00:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1795125608;
	bh=yPie2JFk3z5BHC8U+5RNQzc1hLl+oTmCgkNUpsBRj0U=;
	h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
	b=mD3KMJqMWgiWgPU4dijEHTB832GOfirF7iuTrEUpgs3hvWcUC/2aFq0WpgIV9GRE1
	 mJ3EYyeag0W4LEtwkPB9EQ+QChJ7S7x2F+BBws/EcdzgQFPgc0HGQJ/VsEj1vR8b3M
	 gh4LJB9R9Oqdzj5udh8siMOMrIi1WJkmAamP6xdjplN61aLWz2tNxPpT5puVN1nAYi
	 BxahU2rB+HtwijlgvYJ/HbK9l+0aJz+Oh7Gdah0+3Y7R/n1yzEEjbMUQ9rYEtyEkGX
	 NJVzBCBrqDGeAnzMtaNm+82FaRLvi2T5eamLulK1w2THkV+9zovkQtPOV1keD4YaDD
	 NFkxymAZutZqQ==
Received: from [100.64.0.214] (unknown [100.64.0.214])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange secp256r1)
	(No client certificate requested)
	(Authenticated sender: nicolas)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 665B817E00E8;
	Thu, 19 Nov 2026 23:00:07 +0100 (CET)
Message-ID: <4cb0a15ebb28d3121b761f5acc006c9f0da2a709.camel@collabora.com>
Subject: Re: [PATCH v1 4/7] media: verisilicon: hevc: Use alloc/free helpers
 for auxiliary buffers
From: Nicolas Dufresne <nicolas.dufresne@collabora.com>
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>, 
	p.zabel@pengutronix.de, mchehab@kernel.org
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org, kernel@collabora.com
Date: Thu, 19 Nov 2026 17:00:06 -0500
In-Reply-To: <20260916125443.78602-5-benjamin.gaignard@collabora.com>
References: <20260916125443.78602-1-benjamin.gaignard@collabora.com>
	 <20260916125443.78602-5-benjamin.gaignard@collabora.com>
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
X-CRM114-CacheID: sfid-20261119_140010_571659_7FABD25E 
X-CRM114-Status: GOOD (  14.19  )
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
Content-Type: multipart/mixed; boundary="===============3030750149151057716=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-13.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

--===============3030750149151057716==
Content-Type: multipart/signed; micalg="pgp-sha512";
	protocol="application/pgp-signature"; boundary="=-UbsCRD9e17KQymsF/Ytm"

--=-UbsCRD9e17KQymsF/Ytm
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Le mercredi 16 septembre 2026 =C3=A0 14:54 +0200, Benjamin Gaignard a =C3=
=A9crit=C2=A0:
> Simplify and clean up the code by using the helpers.
>=20
> Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>

Reviewed-by: Nicolas Dufresne <nicolas.dufresne@collabora.com>

> ---
>  .../media/platform/verisilicon/hantro_hevc.c  | 130 +++++-------------
>  1 file changed, 33 insertions(+), 97 deletions(-)
>=20
> diff --git a/drivers/media/platform/verisilicon/hantro_hevc.c b/drivers/m=
edia/platform/verisilicon/hantro_hevc.c
> index 83cd12b0ddd6..cc6fa233c0a0 100644
> --- a/drivers/media/platform/verisilicon/hantro_hevc.c
> +++ b/drivers/media/platform/verisilicon/hantro_hevc.c
> @@ -74,7 +74,6 @@ int hantro_hevc_add_ref_buf(struct hantro_ctx *ctx, int=
 poc, dma_addr_t addr)
> =20
>  static int tile_buffer_reallocate(struct hantro_ctx *ctx)
>  {
> -=09struct hantro_dev *vpu =3D ctx->dev;
>  =09struct hantro_hevc_dec_hw_ctx *hevc_dec =3D &ctx->hevc_dec;
>  =09const struct hantro_hevc_dec_ctrls *ctrls =3D &ctx->hevc_dec.ctrls;
>  =09const struct v4l2_ctrl_hevc_pps *pps =3D ctrls->pps;
> @@ -82,74 +81,40 @@ static int tile_buffer_reallocate(struct hantro_ctx *=
ctx)
>  =09unsigned int num_tile_cols =3D pps->num_tile_columns_minus1 + 1;
>  =09unsigned int height64 =3D (sps->pic_height_in_luma_samples + 63) & ~6=
3;
>  =09unsigned int size;
> +=09int ret;
> =20
>  =09if (num_tile_cols <=3D 1 ||
>  =09    num_tile_cols <=3D hevc_dec->num_tile_cols_allocated)
>  =09=09return 0;
> =20
>  =09/* Need to reallocate due to tiles passed via PPS */
> -=09if (hevc_dec->tile_filter.cpu) {
> -=09=09dma_free_coherent(vpu->dev, hevc_dec->tile_filter.size,
> -=09=09=09=09  hevc_dec->tile_filter.cpu,
> -=09=09=09=09  hevc_dec->tile_filter.dma);
> -=09=09hevc_dec->tile_filter.cpu =3D NULL;
> -=09}
> -
> -=09if (hevc_dec->tile_sao.cpu) {
> -=09=09dma_free_coherent(vpu->dev, hevc_dec->tile_sao.size,
> -=09=09=09=09  hevc_dec->tile_sao.cpu,
> -=09=09=09=09  hevc_dec->tile_sao.dma);
> -=09=09hevc_dec->tile_sao.cpu =3D NULL;
> -=09}
> -
> -=09if (hevc_dec->tile_bsd.cpu) {
> -=09=09dma_free_coherent(vpu->dev, hevc_dec->tile_bsd.size,
> -=09=09=09=09  hevc_dec->tile_bsd.cpu,
> -=09=09=09=09  hevc_dec->tile_bsd.dma);
> -=09=09hevc_dec->tile_bsd.cpu =3D NULL;
> -=09}
> +=09hantro_free_aux_buf(ctx, &hevc_dec->tile_filter);
> +=09hantro_free_aux_buf(ctx, &hevc_dec->tile_sao);
> +=09hantro_free_aux_buf(ctx, &hevc_dec->tile_bsd);
> =20
>  =09size =3D (VERT_FILTER_RAM_SIZE * height64 * (num_tile_cols - 1) * ctx=
->bit_depth) / 8;
> -=09hevc_dec->tile_filter.cpu =3D dma_alloc_coherent(vpu->dev, size,
> -=09=09=09=09=09=09       &hevc_dec->tile_filter.dma,
> -=09=09=09=09=09=09       GFP_KERNEL);
> -=09if (!hevc_dec->tile_filter.cpu)
> -=09=09return -ENOMEM;
> -=09hevc_dec->tile_filter.size =3D size;
> +=09hevc_dec->tile_filter.attrs =3D DMA_ATTR_NO_KERNEL_MAPPING;
> +=09ret =3D hantro_allocate_aux_buf(ctx, &hevc_dec->tile_filter, size);
> =20
>  =09size =3D (VERT_SAO_RAM_SIZE * height64 * (num_tile_cols - 1) * ctx->b=
it_depth) / 8;
> -=09hevc_dec->tile_sao.cpu =3D dma_alloc_coherent(vpu->dev, size,
> -=09=09=09=09=09=09    &hevc_dec->tile_sao.dma,
> -=09=09=09=09=09=09    GFP_KERNEL);
> -=09if (!hevc_dec->tile_sao.cpu)
> -=09=09goto err_free_tile_buffers;
> -=09hevc_dec->tile_sao.size =3D size;
> +=09hevc_dec->tile_sao.attrs =3D DMA_ATTR_NO_KERNEL_MAPPING;
> +=09ret |=3D hantro_allocate_aux_buf(ctx, &hevc_dec->tile_sao, size);
> =20
>  =09size =3D BSD_CTRL_RAM_SIZE * height64 * (num_tile_cols - 1);
> -=09hevc_dec->tile_bsd.cpu =3D dma_alloc_coherent(vpu->dev, size,
> -=09=09=09=09=09=09    &hevc_dec->tile_bsd.dma,
> -=09=09=09=09=09=09    GFP_KERNEL);
> -=09if (!hevc_dec->tile_bsd.cpu)
> -=09=09goto err_free_sao_buffers;
> -=09hevc_dec->tile_bsd.size =3D size;
> +=09hevc_dec->tile_bsd.attrs =3D DMA_ATTR_NO_KERNEL_MAPPING;
> +=09ret |=3D hantro_allocate_aux_buf(ctx, &hevc_dec->tile_bsd, size);
> +
> +=09if (ret)
> +=09=09goto error;
> =20
>  =09hevc_dec->num_tile_cols_allocated =3D num_tile_cols;
> =20
>  =09return 0;
> =20
> -err_free_sao_buffers:
> -=09if (hevc_dec->tile_sao.cpu)
> -=09=09dma_free_coherent(vpu->dev, hevc_dec->tile_sao.size,
> -=09=09=09=09  hevc_dec->tile_sao.cpu,
> -=09=09=09=09  hevc_dec->tile_sao.dma);
> -=09hevc_dec->tile_sao.cpu =3D NULL;
> -
> -err_free_tile_buffers:
> -=09if (hevc_dec->tile_filter.cpu)
> -=09=09dma_free_coherent(vpu->dev, hevc_dec->tile_filter.size,
> -=09=09=09=09  hevc_dec->tile_filter.cpu,
> -=09=09=09=09  hevc_dec->tile_filter.dma);
> -=09hevc_dec->tile_filter.cpu =3D NULL;
> +error:
> +=09hantro_free_aux_buf(ctx, &hevc_dec->tile_filter);
> +=09hantro_free_aux_buf(ctx, &hevc_dec->tile_sao);
> +=09hantro_free_aux_buf(ctx, &hevc_dec->tile_bsd);
> =20
>  =09return -ENOMEM;
>  }
> @@ -214,45 +179,20 @@ int hantro_hevc_dec_prepare_run(struct hantro_ctx *=
ctx)
> =20
>  void hantro_hevc_dec_exit(struct hantro_ctx *ctx)
>  {
> -=09struct hantro_dev *vpu =3D ctx->dev;
>  =09struct hantro_hevc_dec_hw_ctx *hevc_dec =3D &ctx->hevc_dec;
> =20
> -=09if (hevc_dec->tile_sizes.cpu)
> -=09=09dma_free_coherent(vpu->dev, hevc_dec->tile_sizes.size,
> -=09=09=09=09  hevc_dec->tile_sizes.cpu,
> -=09=09=09=09  hevc_dec->tile_sizes.dma);
> -=09hevc_dec->tile_sizes.cpu =3D NULL;
> -
> -=09if (hevc_dec->scaling_lists.cpu)
> -=09=09dma_free_coherent(vpu->dev, hevc_dec->scaling_lists.size,
> -=09=09=09=09  hevc_dec->scaling_lists.cpu,
> -=09=09=09=09  hevc_dec->scaling_lists.dma);
> -=09hevc_dec->scaling_lists.cpu =3D NULL;
> -
> -=09if (hevc_dec->tile_filter.cpu)
> -=09=09dma_free_coherent(vpu->dev, hevc_dec->tile_filter.size,
> -=09=09=09=09  hevc_dec->tile_filter.cpu,
> -=09=09=09=09  hevc_dec->tile_filter.dma);
> -=09hevc_dec->tile_filter.cpu =3D NULL;
> -
> -=09if (hevc_dec->tile_sao.cpu)
> -=09=09dma_free_coherent(vpu->dev, hevc_dec->tile_sao.size,
> -=09=09=09=09  hevc_dec->tile_sao.cpu,
> -=09=09=09=09  hevc_dec->tile_sao.dma);
> -=09hevc_dec->tile_sao.cpu =3D NULL;
> -
> -=09if (hevc_dec->tile_bsd.cpu)
> -=09=09dma_free_coherent(vpu->dev, hevc_dec->tile_bsd.size,
> -=09=09=09=09  hevc_dec->tile_bsd.cpu,
> -=09=09=09=09  hevc_dec->tile_bsd.dma);
> -=09hevc_dec->tile_bsd.cpu =3D NULL;
> +=09hantro_free_aux_buf(ctx, &hevc_dec->tile_sizes);
> +=09hantro_free_aux_buf(ctx, &hevc_dec->scaling_lists);
> +=09hantro_free_aux_buf(ctx, &hevc_dec->tile_filter);
> +=09hantro_free_aux_buf(ctx, &hevc_dec->tile_sao);
> +=09hantro_free_aux_buf(ctx, &hevc_dec->tile_bsd);
>  }
> =20
>  int hantro_hevc_dec_init(struct hantro_ctx *ctx)
>  {
> -=09struct hantro_dev *vpu =3D ctx->dev;
>  =09struct hantro_hevc_dec_hw_ctx *hevc_dec =3D &ctx->hevc_dec;
>  =09unsigned int size;
> +=09int ret;
> =20
>  =09memset(hevc_dec, 0, sizeof(*hevc_dec));
> =20
> @@ -262,21 +202,11 @@ int hantro_hevc_dec_init(struct hantro_ctx *ctx)
>  =09 * chunk (HW guys wanted to have this).
>  =09 */
>  =09size =3D round_up(MAX_TILE_COLS * MAX_TILE_ROWS * 4 * sizeof(u16) + 1=
6, 16);
> -=09hevc_dec->tile_sizes.cpu =3D dma_alloc_coherent(vpu->dev, size,
> -=09=09=09=09=09=09      &hevc_dec->tile_sizes.dma,
> -=09=09=09=09=09=09      GFP_KERNEL);
> -=09if (!hevc_dec->tile_sizes.cpu)
> -=09=09return -ENOMEM;
> -
> -=09hevc_dec->tile_sizes.size =3D size;
> -
> -=09hevc_dec->scaling_lists.cpu =3D dma_alloc_coherent(vpu->dev, SCALING_=
LIST_SIZE,
> -=09=09=09=09=09=09=09 &hevc_dec->scaling_lists.dma,
> -=09=09=09=09=09=09=09 GFP_KERNEL);
> -=09if (!hevc_dec->scaling_lists.cpu)
> -=09=09return -ENOMEM;
> +=09ret =3D hantro_allocate_aux_buf(ctx, &hevc_dec->tile_sizes, size);
> +=09ret =3D hantro_allocate_aux_buf(ctx, &hevc_dec->scaling_lists, SCALIN=
G_LIST_SIZE);
> =20
> -=09hevc_dec->scaling_lists.size =3D SCALING_LIST_SIZE;
> +=09if (ret)
> +=09=09goto error;
> =20
>  =09hantro_hevc_ref_init(ctx);
> =20
> @@ -284,4 +214,10 @@ int hantro_hevc_dec_init(struct hantro_ctx *ctx)
>  =09=09hevc_use_compression & hantro_needs_postproc(ctx, ctx->vpu_dst_fmt=
);
> =20
>  =09return 0;
> +
> +error:
> +=09hantro_free_aux_buf(ctx, &hevc_dec->tile_sizes);
> +=09hantro_free_aux_buf(ctx, &hevc_dec->scaling_lists);
> +
> +=09return -ENOMEM;
>  }

--=-UbsCRD9e17KQymsF/Ytm
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQTvDVKBFcTDwhoEbxLZQZRRKWBy9AUCav9xZgAKCRDZQZRRKWBy
9BoKAP9lHQSuYVvLFue2xJO/7JWg4UvuizSsobcyTimHAf8tEgD/aJWRatDDiwuu
yqxhj3NbKOiG7nlqcngw9Ztb2waznwQ=
=fAxr
-----END PGP SIGNATURE-----

--=-UbsCRD9e17KQymsF/Ytm--


--===============3030750149151057716==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============3030750149151057716==--

