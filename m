Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8FD4F606A326
	for <linux-rockchip@archiver.kernel.org>; Thu, 19 Nov 2026 22:02:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=FLATDRUb;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=collabora.com header.i=@collabora.com header.a=rsa-sha256 header.s=mail header.b=AOpY1SSz
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:Cc:To:From:Subject:Message-ID:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=vS53NjlQPG8T+mplqDYVS8vrRjXciievMziafFd3cIY=; b=FLATDRUbn8yPeJCobak5TirmF+
	AWOuJXj3COFgrnOmSvPePijKktYREdPMOggTP4KE/gd2JlZrmmE4EvA2LiQ74cs86iYf4YE7UEoNf
	RmJIvgygubd3rfVjK+c60skYYMcqkHGW50dXPalGItN7bx3kn2hgFjukl4QkW9cVgCDmtMxeIaVdE
	CqzulVEb3nHpo5/GH07I3UZfKCq6rMf6mXL9XTbtEujO/87YwIzi5YLe1KComgVwwMtv+tuFwok/r
	kJJKi8VgtFfsBw0sVX6DqYL/eTSwfWxv4wc9H3AX9w4aDzd/cvaCuFCyRoRH4x8oRtLbRX1qxUnQQ
	i9wZxG1A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xUACe-0000000DWzs-3MP4;
	Thu, 19 Nov 2026 22:02:00 +0000
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xUACc-0000000DWzO-0OYE
	for linux-rockchip@lists.infradead.org;
	Thu, 19 Nov 2026 22:01:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1795125715;
	bh=X23YaxjFeV2zYUTZgzInNORDdEE5msEkxPHU1jfRRjA=;
	h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
	b=AOpY1SSzKfxYWCzhMCz3lter8jnMMJqqYqXT6o5Mc4mAN3GaPg9c1gJlDjsQryifw
	 4gpzmUXLoUWeruuLYaAuUvbTKqs64+sOMsI62+bNXX17PuBvTkpCGjMls5y62XMP2M
	 lt+bxCKC3+V36KfpdA9rbccnubCfI3rJflwVOYLPV1EZwOE3UIVsVfJ/3RdZArvqRx
	 LKFJPtPwloQzVvcknNQtC+dIN7CwD54pHIebkuG9uKJ8RJ2NjLqPu9P9ey5amyg/h6
	 II3c5ge6yqfb6iJ14OtOD2vyLQcwGNJAe0bntdW6eyuKGP57JNkBTkKZ5B3l6yax+l
	 TRMdyg/Fv74rQ==
Received: from [100.64.0.214] (unknown [100.64.0.214])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange secp256r1 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: nicolas)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 9CD7A17E0311;
	Thu, 19 Nov 2026 23:01:54 +0100 (CET)
Message-ID: <dc33dcf5fbc332d02dc54b2068787dc63f193f46.camel@collabora.com>
Subject: Re: [PATCH v1 7/7] media: verisilicon: mpeg4: Use alloc/free
 helpers for auxiliary buffers
From: Nicolas Dufresne <nicolas.dufresne@collabora.com>
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>, 
	p.zabel@pengutronix.de, mchehab@kernel.org
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org, kernel@collabora.com
Date: Thu, 19 Nov 2026 17:01:53 -0500
In-Reply-To: <20260916125443.78602-8-benjamin.gaignard@collabora.com>
References: <20260916125443.78602-1-benjamin.gaignard@collabora.com>
	 <20260916125443.78602-8-benjamin.gaignard@collabora.com>
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
X-CRM114-CacheID: sfid-20261119_140158_304296_26ABFB9E 
X-CRM114-Status: GOOD (  12.47  )
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
Content-Type: multipart/mixed; boundary="===============5008007656365388188=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-13.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

--===============5008007656365388188==
Content-Type: multipart/signed; micalg="pgp-sha512";
	protocol="application/pgp-signature"; boundary="=-7qE1DpbACoyuWbHd2Qx0"

--=-7qE1DpbACoyuWbHd2Qx0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Le mercredi 16 septembre 2026 =C3=A0 14:54 +0200, Benjamin Gaignard a =C3=
=A9crit=C2=A0:
> Simplify and clean up the code by using the helpers.
>=20
> Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>

Reviewed-by: Nicolas Dufresne <nicolas.dufresne@collabora.com>

> ---
>  .../media/platform/verisilicon/hantro_mpeg2.c   | 17 ++---------------
>  1 file changed, 2 insertions(+), 15 deletions(-)
>=20
> diff --git a/drivers/media/platform/verisilicon/hantro_mpeg2.c b/drivers/=
media/platform/verisilicon/hantro_mpeg2.c
> index 04e545eb0a83..f21115e6bdbe 100644
> --- a/drivers/media/platform/verisilicon/hantro_mpeg2.c
> +++ b/drivers/media/platform/verisilicon/hantro_mpeg2.c
> @@ -37,25 +37,12 @@ void hantro_mpeg2_dec_copy_qtable(u8 *qtable,
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
> +=09if (hantro_allocate_aux_buf(ctx, &ctx->mpeg2_dec.qtable, ARRAY_SIZE(z=
igzag) * 4))
>  =09=09return -ENOMEM;
>  =09return 0;
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

--=-7qE1DpbACoyuWbHd2Qx0
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQTvDVKBFcTDwhoEbxLZQZRRKWBy9AUCav9x0QAKCRDZQZRRKWBy
9I5WAP0bVAbmeSLRHwv8CO5B/BZyJJ/7mKqBLZN3iIqZIpe4+wEA0LPjqPmZCWD8
2oRxjuRdHBGrPG4tB6J/F2paCcVd5gE=
=QSYg
-----END PGP SIGNATURE-----

--=-7qE1DpbACoyuWbHd2Qx0--


--===============5008007656365388188==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============5008007656365388188==--

