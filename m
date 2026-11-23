Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B645606A31F
	for <linux-rockchip@archiver.kernel.org>; Mon, 23 Nov 2026 19:15:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=VpGHKES1;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=collabora.com header.i=@collabora.com header.a=rsa-sha256 header.s=mail header.b=RZnu+8vT
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:Cc:To:From:Subject:Message-ID:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=DMBw2/bHYWGBk5G5ED6Hx8HoA8wSguqa3BHnjBKD1Y0=; b=VpGHKES1P8GNhNaNeecL9nv1q2
	L6X2x7CoY/HAWsM9LeDuthdYcX/EldGG+dGEH3ImVDnUpIFKKevBVP05Ceh1f7PcxX2rEw2s8sI8z
	oKXwiYjZj8kJOeKTwZ5zC1Z9/LAk3TYb+fpwLsw7pphc5H3nP7Z9gn20J5ivHnlkB2ngpfWpQCa5q
	U8zuVESmnJBaPrw/odZg0sjyyCNmNEcR+Nz2eFelXUaaZestZS4dketY1CJGatRB1RkmOvTp0YcZE
	iZJCsx01VQ21+9hWVchd9B6E/vZfUTMZ8Uk44Vy5WWbOwWb38Ash1+rWzJYv7VHB30opC0/qd3JL9
	OZxF0wTQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVZVU-00000004dDA-0rYh;
	Mon, 23 Nov 2026 19:15:16 +0000
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVZVQ-00000004dCD-2UzO
	for linux-rockchip@lists.infradead.org;
	Mon, 23 Nov 2026 19:15:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1795461309;
	bh=1UTK7C2L/leKYOV1vpyJUfwzZPkqImLHSYWPJ0HxDWA=;
	h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
	b=RZnu+8vT52sXp8u5MzM7OVRlx+tCuz5kp2Q710LRjID98hbmD6aG+rcG+vtjbjChJ
	 vIb8qB554gew2pq2FKrpk/f5HmivAHinpFmzMKaTsXa6CVDeZxqlvV7WSw8Eveea4B
	 DKVVfizmpDtQJFGs1gVTEncZMI7oqMODQlN9Ubf27C5ZsfZ/yYMRcg6DMw5WfgfPdk
	 lMkQKWxr7DszHYqomtMGa11CJM951Bp/9WzIh6zBOL+4H9SfH7VUa8ScM1XAShOmVk
	 VcVe47GHSLFV8CQPyqxB304vTOhWC9dZ8sOd++u+sRghyiR5BGKU3ML5rMbmCbkuU6
	 pueGA33+BUMAQ==
Received: from [100.64.0.214] (unknown [100.64.0.214])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange secp256r1 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: nicolas)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 71DAE17E00B2;
	Mon, 23 Nov 2026 20:15:08 +0100 (CET)
Message-ID: <5b5b87d40c3a3ac5c9b04ea77e9310c92f9f4e49.camel@collabora.com>
Subject: Re: [PATCH v3 7/7] media: verisilicon: mpeg4: Use alloc/free
 helpers for auxiliary buffers
From: Nicolas Dufresne <nicolas.dufresne@collabora.com>
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>, 
	p.zabel@pengutronix.de, mchehab@kernel.org
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org
Date: Mon, 23 Nov 2026 14:15:06 -0500
In-Reply-To: <20261123095905.60622-8-benjamin.gaignard@collabora.com>
References: <20261123095905.60622-1-benjamin.gaignard@collabora.com>
	 <20261123095905.60622-8-benjamin.gaignard@collabora.com>
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
X-CRM114-CacheID: sfid-20261123_111513_524009_B898751D 
X-CRM114-Status: GOOD (  13.25  )
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
Content-Type: multipart/mixed; boundary="===============4570644726680447275=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-13.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

--===============4570644726680447275==
Content-Type: multipart/signed; micalg="pgp-sha512";
	protocol="application/pgp-signature"; boundary="=-6OhJFZ1YC2eqKEd3+Wjr"

--=-6OhJFZ1YC2eqKEd3+Wjr
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Le lundi 23 novembre 2026 =C3=A0 10:59 +0100, Benjamin Gaignard a =C3=A9cri=
t=C2=A0:
> Simplify and clean up the code by using the helpers.

I'll pick the series, just wanted to mention that I will edit your subject =
line
from mpeg4 to mpeg2.

Nicolas

>=20
> Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
> Reviewed-by: Nicolas Dufresne <nicolas.dufresne@collabora.com>
> ---
> changes in v3:
> - As suggested by Philipp do not mask hantro_allocate_aux_buf() returned
>   value.
>=20
>  .../media/platform/verisilicon/hantro_mpeg2.c | 19 ++-----------------
>  1 file changed, 2 insertions(+), 17 deletions(-)
>=20
> diff --git a/drivers/media/platform/verisilicon/hantro_mpeg2.c b/drivers/=
media/platform/verisilicon/hantro_mpeg2.c
> index 04e545eb0a83..7386cc50b11b 100644
> --- a/drivers/media/platform/verisilicon/hantro_mpeg2.c
> +++ b/drivers/media/platform/verisilicon/hantro_mpeg2.c
> @@ -37,25 +37,10 @@ void hantro_mpeg2_dec_copy_qtable(u8 *qtable,
> =20
>  int hantro_mpeg2_dec_init(struct hantro_ctx *ctx)
>  {
> -=09struct hantro_dev *vpu =3D ctx->dev;
> -
> -=09ctx->mpeg2_dec.qtable.size =3D ARRAY_SIZE(zigzag) * 4;
> -=09ctx->mpeg2_dec.qtable.cpu =3D
> -=09=09dma_alloc_coherent(vpu->dev,
> -=09=09=09=09   ctx->mpeg2_dec.qtable.size,
> -=09=09=09=09   &ctx->mpeg2_dec.qtable.dma,
> -=09=09=09=09   GFP_KERNEL);
> -=09if (!ctx->mpeg2_dec.qtable.cpu)
> -=09=09return -ENOMEM;
> -=09return 0;
> +=09return hantro_allocate_aux_buf(ctx, &ctx->mpeg2_dec.qtable, ARRAY_SIZ=
E(zigzag) * 4);
>  }
> =20
>  void hantro_mpeg2_dec_exit(struct hantro_ctx *ctx)
>  {
> -=09struct hantro_dev *vpu =3D ctx->dev;
> -
> -=09dma_free_coherent(vpu->dev,
> -=09=09=09  ctx->mpeg2_dec.qtable.size,
> -=09=09=09  ctx->mpeg2_dec.qtable.cpu,
> -=09=09=09  ctx->mpeg2_dec.qtable.dma);
> +=09hantro_free_aux_buf(ctx, &ctx->mpeg2_dec.qtable);
>  }

--=-6OhJFZ1YC2eqKEd3+Wjr
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQTvDVKBFcTDwhoEbxLZQZRRKWBy9AUCawSQugAKCRDZQZRRKWBy
9DGRAQCUAeCDyxVQ+dajb9KwTStV2mLTHQA7lvvU5/davwOQJwD/e9YUVaBM3LkJ
BAk47rc4UTDzFemhor+2FOHt4ASpjAE=
=IhE2
-----END PGP SIGNATURE-----

--=-6OhJFZ1YC2eqKEd3+Wjr--


--===============4570644726680447275==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============4570644726680447275==--

