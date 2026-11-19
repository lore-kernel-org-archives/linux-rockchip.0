Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB460606A320
	for <linux-rockchip@archiver.kernel.org>; Thu, 19 Nov 2026 22:01:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=AvdPoOYv;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=collabora.com header.i=@collabora.com header.a=rsa-sha256 header.s=mail header.b=HTQ+HkMa
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:Cc:To:From:Subject:Message-ID:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=x2uoPA7sJlW4aIT/WGEmtb5Wk4q96JC5HxKtujj8H6U=; b=AvdPoOYvQL6NhSGg+7h6zGa/w5
	UNmRNRccaaOdGAQHc2hccQ1FcdT+WAlcTgWYGmRt87fLmEhy649DxgxGhI6v+MvE7svOa4zIp87/X
	PGy8GA0qHnRc3LL04gPya6ktaEpDy9odXTlqYDLtdpUi2J9g+eDsoZWJ6bSYlMqEric0YMihPkroB
	9H6WU1yZ5VEZclChahzWFB69oWWvJ/WrH2JD1QYt+ZrWQRb/2FoOYscMYvRAAQlKFRNYid7ti2M10
	dL0AzCPUwZxg5dXUpCQOoYpCxxKzDFEWGdph/KNWkdwRmz5+Nz5gRz1ppYHpWE02filM1oDbRK63f
	y0T4hSFQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xUACP-0000000DWx2-2wHt;
	Thu, 19 Nov 2026 22:01:45 +0000
Received: from bali.collaboradmins.com ([148.251.105.195])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xUACN-0000000DWwe-1PVG
	for linux-rockchip@lists.infradead.org;
	Thu, 19 Nov 2026 22:01:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1795125701;
	bh=ANMivH/q60amS51egZxMp9rwlv7XQDk68NdQazduH/c=;
	h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
	b=HTQ+HkMakNtqgxTMf1rmVeqvFNB3hKbHwG6dIBnPA2y5w8VdcXgvI2psMBTMg5L2S
	 WW54JmTnmaOUJX5zrnvl/cEVodDCIXnnqBIL4tyXN2F6m7bh3ZFHvbWLFsufdm4U5a
	 rSpSPOLE/tkXbsR/IwZtRrCiOl/eR7FrvYcNFNwXjRMS4JTd3ySYMWNv3ATcc5GqmH
	 3VezNNsAE9OE8BmrxVyFxiR6CXRxiEpNpJzu2mOogD3TSLqr5estFv2zgGbDTw7DBG
	 FXqGuHruYdeCQ0VMwaomE5UEq26LVUKfig/f6UFbaMucCQMgLOnHd8RMif5kyC3VEo
	 WHmB8FzXNAayw==
Received: from [100.64.0.214] (unknown [100.64.0.214])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange secp256r1)
	(No client certificate requested)
	(Authenticated sender: nicolas)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 7B1D417E0311;
	Thu, 19 Nov 2026 23:01:40 +0100 (CET)
Message-ID: <21f16b602cbb1b581bb26356e39e86c845d5809a.camel@collabora.com>
Subject: Re: [PATCH v1 6/7] media: verisilicon: vp9: Use alloc/free helpers
 for auxiliary buffers
From: Nicolas Dufresne <nicolas.dufresne@collabora.com>
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>, 
	p.zabel@pengutronix.de, mchehab@kernel.org
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org, kernel@collabora.com
Date: Thu, 19 Nov 2026 17:01:39 -0500
In-Reply-To: <20260916125443.78602-7-benjamin.gaignard@collabora.com>
References: <20260916125443.78602-1-benjamin.gaignard@collabora.com>
	 <20260916125443.78602-7-benjamin.gaignard@collabora.com>
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
X-CRM114-CacheID: sfid-20261119_140143_535262_7FD12867 
X-CRM114-Status: GOOD (  13.36  )
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
Content-Type: multipart/mixed; boundary="===============6452758688705032522=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-13.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

--===============6452758688705032522==
Content-Type: multipart/signed; micalg="pgp-sha512";
	protocol="application/pgp-signature"; boundary="=-SHXXuNwkg3TPbXQrg/xe"

--=-SHXXuNwkg3TPbXQrg/xe
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Le mercredi 16 septembre 2026 =C3=A0 14:54 +0200, Benjamin Gaignard a =C3=
=A9crit=C2=A0:
> Simplify and clean up the code by using the helpers.
> For upstream it should be merged into only one commit.

What do you want me to do exactly?

>=20
> Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>

Reviewed-by: Nicolas Dufresne <nicolas.dufresne@collabora.com>

> ---
>  .../media/platform/verisilicon/hantro_vp9.c   | 37 ++++++-------------
>  1 file changed, 11 insertions(+), 26 deletions(-)
>=20
> diff --git a/drivers/media/platform/verisilicon/hantro_vp9.c b/drivers/me=
dia/platform/verisilicon/hantro_vp9.c
> index 566cd376c097..7a46a4767254 100644
> --- a/drivers/media/platform/verisilicon/hantro_vp9.c
> +++ b/drivers/media/platform/verisilicon/hantro_vp9.c
> @@ -181,23 +181,17 @@ int hantro_vp9_dec_init(struct hantro_ctx *ctx)
>  =09size =3D hantro_vp9_tile_filter_size(max_height);
>  =09vp9_dec->bsd_ctrl_offset =3D size;
>  =09size +=3D hantro_vp9_bsd_control_size(max_height);
> -
> -=09tile_edge->cpu =3D dma_alloc_coherent(vpu->dev, size, &tile_edge->dma=
, GFP_KERNEL);
> -=09if (!tile_edge->cpu)
> +=09if (hantro_allocate_aux_buf(ctx, tile_edge, size))
>  =09=09return -ENOMEM;
> =20
> -=09tile_edge->size =3D size;
>  =09memset(tile_edge->cpu, 0, size);
> =20
>  =09size =3D hantro_vp9_segment_map_size(max_width, max_height);
>  =09vp9_dec->segment_map_size =3D size;
>  =09size *=3D 2; /* we need two areas of this size, used alternately */
> +=09if (hantro_allocate_aux_buf(ctx, segment_map, size))
> +=09=09goto error;
> =20
> -=09segment_map->cpu =3D dma_alloc_coherent(vpu->dev, size, &segment_map-=
>dma, GFP_KERNEL);
> -=09if (!segment_map->cpu)
> -=09=09goto err_segment_map;
> -
> -=09segment_map->size =3D size;
>  =09memset(segment_map->cpu, 0, size);
> =20
>  =09size =3D hantro_vp9_prob_tab_size();
> @@ -205,36 +199,27 @@ int hantro_vp9_dec_init(struct hantro_ctx *ctx)
>  =09size +=3D hantro_vp9_count_tab_size();
>  =09vp9_dec->tile_info_offset =3D size;
>  =09size +=3D hantro_vp9_tile_info_size();
> +=09if (hantro_allocate_aux_buf(ctx, misc, size))
> +=09=09goto error;
> =20
> -=09misc->cpu =3D dma_alloc_coherent(vpu->dev, size, &misc->dma, GFP_KERN=
EL);
> -=09if (!misc->cpu)
> -=09=09goto err_misc;
> -
> -=09misc->size =3D size;
>  =09memset(misc->cpu, 0, size);
> =20
>  =09init_v4l2_vp9_count_tbl(ctx);
> =20
>  =09return 0;
> =20
> -err_misc:
> -=09dma_free_coherent(vpu->dev, segment_map->size, segment_map->cpu, segm=
ent_map->dma);
> -
> -err_segment_map:
> -=09dma_free_coherent(vpu->dev, tile_edge->size, tile_edge->cpu, tile_edg=
e->dma);
> +error:
> +=09hantro_free_aux_buf(ctx, segment_map);
> +=09hantro_free_aux_buf(ctx, tile_edge);
> =20
>  =09return -ENOMEM;
>  }
> =20
>  void hantro_vp9_dec_exit(struct hantro_ctx *ctx)
>  {
> -=09struct hantro_dev *vpu =3D ctx->dev;
>  =09struct hantro_vp9_dec_hw_ctx *vp9_dec =3D &ctx->vp9_dec;
> -=09struct hantro_aux_buf *tile_edge =3D &vp9_dec->tile_edge;
> -=09struct hantro_aux_buf *segment_map =3D &vp9_dec->segment_map;
> -=09struct hantro_aux_buf *misc =3D &vp9_dec->misc;
> =20
> -=09dma_free_coherent(vpu->dev, misc->size, misc->cpu, misc->dma);
> -=09dma_free_coherent(vpu->dev, segment_map->size, segment_map->cpu, segm=
ent_map->dma);
> -=09dma_free_coherent(vpu->dev, tile_edge->size, tile_edge->cpu, tile_edg=
e->dma);
> +=09hantro_free_aux_buf(ctx, &vp9_dec->tile_edge);
> +=09hantro_free_aux_buf(ctx, &vp9_dec->segment_map);
> +=09hantro_free_aux_buf(ctx, &vp9_dec->misc);
>  }

--=-SHXXuNwkg3TPbXQrg/xe
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQTvDVKBFcTDwhoEbxLZQZRRKWBy9AUCav9xwwAKCRDZQZRRKWBy
9PpaAQCrbJCywZvoLReO0PLLa3rbPd7Mz0js3xyFsonVvBCcTQD7BSUTJgCdqtzO
kRtRf4dDAiPGIqL9SSArx+DZfoKn/wM=
=IjkY
-----END PGP SIGNATURE-----

--=-SHXXuNwkg3TPbXQrg/xe--


--===============6452758688705032522==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============6452758688705032522==--

