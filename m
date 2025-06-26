Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B0742C7EE30
	for <linux-rockchip@archiver.kernel.org>; Thu, 26 Jun 2025 13:01:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:Cc:To:From:Subject:Message-ID:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=KDAYyfZ+TXFDJ3hpp3MQ912ut3fQnnYfavI0cnCiNns=; b=1AshJ9T0ombOfUK1u9cH94vfdm
	HXoXbpS7EvG9cGk30+Pvf9fFudIGrYTAUb439SaSgywdslka3AQ7JXtpqqS2/ns8aSEQUWHqAKe7L
	Nk1ksn7fvOFUakTiWea6HgvOZdJmaymqky26z5gXh3aUOsrkbh0sgkPBPMzZ7mA09LRSlO3tbrxNg
	CMxzFnkq5fbcUXC2mAzqK4KVOOXvsBCGW2wOaZL94mGicoo9weexwJPC4DxzcCSMtLjozd/78tO3x
	s98ISoNo8lUSExuFpRJ1FUvHczT2shkqKLjB1Br+E/rYoQT4jmWWvhgmifkk86mvjZ428S/fTborz
	W3JkD72w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uUmDn-0000000Bbgx-2YqT;
	Thu, 26 Jun 2025 13:00:55 +0000
Received: from bali.collaboradmins.com ([148.251.105.195])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uUmC2-0000000BbPa-18jU
	for linux-rockchip@lists.infradead.org;
	Thu, 26 Jun 2025 12:59:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1750942744;
	bh=vWZsTWEYyiseXKnsMjc+Ej2o40AytKq/Q/YXshCELco=;
	h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
	b=IfPIAzkK86cNlx+joISzT0lktX9hNc8EHL1j8sYgfT91UH2B8ieIqND/amayYoZlr
	 U1jN7EmjoV5/8m0QoRD3mROCe575iaaBG0R0VIBkBjNQI89CRsIdvRzXnESHwrn44d
	 eWWPxpl2Xu2Iyau8GRBjNavwHPvQUd8FfBXxCtDJ/RRiGNxiJhky2vVK/dROtlURzC
	 SANE/sgQzSbGVIN7o8LMbb/PxWEMMXNgsH+FHHVQrPQkr0iN6uPCn6b1frmA82dAW/
	 +X451FKvQFP2OZattOXR/odGYNmA/JIxHZcg0YulqMkXNjmzc3ff52VUuKYfZE0yxc
	 +u6+Qct1yCeHA==
Received: from [IPv6:2606:6d00:17:b699::bad] (unknown [IPv6:2606:6d00:17:b699::bad])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: nicolas)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 7CF0017E04EE;
	Thu, 26 Jun 2025 14:59:03 +0200 (CEST)
Message-ID: <dc841d1e6b12c46388aec8ebcd0b002f56d30d1c.camel@collabora.com>
Subject: Re: [PATCH] media: verisilicon: Export only needed pixels formats.
From: Nicolas Dufresne <nicolas.dufresne@collabora.com>
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>, 
	p.zabel@pengutronix.de, mchehab@kernel.org, hverkuil@xs4all.nl
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org, kernel@collabora.com
Date: Thu, 26 Jun 2025 08:59:00 -0400
In-Reply-To: <20250624122938.62004-1-benjamin.gaignard@collabora.com>
References: <20250624122938.62004-1-benjamin.gaignard@collabora.com>
Autocrypt: addr=nicolas.dufresne@collabora.com; prefer-encrypt=mutual;
 keydata=mQGiBEUQN0MRBACQYceNSezSdMjx7sx6gwKkMghrrODgl3B0eXBTgNp6c431IfOOEsdvk
 oOh1kwoYcQgbg4MXw6beOltysX4e8fFWsiRkc2nvvRW9ir9kHDm49MkBLqaDjTqOkYKNMiurFW+go
 zpr/lUW15QqT6v68RYe0zRdtwGZqeLzX2LVuukGwCg4AISzswrrYHNV7vQLcbaUhPgIl0D+gILYT9
 TJgAEK4YHW+bFRcY+cgUFoLQqQayECMlctKoLOE69nIYOc/hDr9uih1wxrQ/yL0NJvQCohSPyoyLF
 9b2EuIGhQVp05XP7FzlTxhYvGO/DtO08ec85+bTfVBMV6eeY4MS3ZU+1z7ObD7Pf29YjyTehN2Dan
 6w1g2rBk5MoA/9nDocSlk4pbFpsYSFmVHsDiAOFje3+iY4ftVDKunKYWMhwRVBjAREOByBagmRau0
 cLEcElpf4hX5f978GoxSGIsiKoDAlXX+ICDOWC1/EXhEEmBR1gL0QJgiVviNyLfGJlZWnPjw6xhhm
 tHYWTDxBOP5peztyc2PqeKsLsLWzAr7QnTmljb2xhcyBEdWZyZXNuZSA8bmljb2xhc0BuZHVmcmVz
 bmUuY2E+iGIEExECACIFAlXA3CACGwMGCwkIBwMCBhUIAgkKCwQWAgMBAh4BAheAAAoJEHFTAi2sB
 qgcJngAnRDBTr8bhzuH0KQwFP1nEYtfgpKdAKCrQ/sJfuG/8zsd7J8wVl7y3e8ARbRDTmljb2xhcy
 BEdWZyZXNuZSAoQi4gU2MuIEluZm9ybWF0aXF1ZSkgPG5pY29sYXMuZHVmcmVzbmVAZ21haWwuY29
 tPohgBBMRAgAgBQJFlCyOAhsDBgsJCAcDAgQVAggDBBYCAwECHgECF4AACgkQcVMCLawGqBwhLQCg
 zYlrLBj6KIAZ4gmsfjXD6ZtddT8AoIeGDicVq5WvMHNWign6ApQcZUihtElOaWNvbGFzIER1ZnJlc
 25lIChCLiBTYy4gSW5mb3JtYXRpcXVlKSA8bmljb2xhcy5kdWZyZXNuZUBjb2xsYWJvcmEuY28udW
 s+iGIEExECACIFAkuzca8CGwMGCwkIBwMCBhUIAgkKCwQWAgMBAh4BAheAAAoJEHFTAi2sBqgcQX8
 An2By6LDEeMxi4B9hUbpvRnzaaeNqAJ9Rox8rfqHZnSErw9bCHiBwvwJZ77QxTmljb2xhcyBEdWZy
 ZXNuZSA8bmljb2xhcy5kdWZyZXNuZUBjb2xsYWJvcmEuY29tPohiBBMRAgAiBQJNzZzPAhsDBgsJC
 AcDAgYVCAIJCgsEFgIDAQIeAQIXgAAKCRBxUwItrAaoHLlxAKCYAGf4JL7DYDLs/188CPMGuwLypw
 CfWKc9DorA9f5pyYlD5pQo6SgSoiC0R05pY29sYXMgRHVmcmVzbmUgKEIgU2MuIEluZm9ybWF0aXF
 1ZSkgPG5pY29sYXMuZHVmcmVzbmVAdXNoZXJicm9va2UuY2E+iGAEExECACAFAkUQN0MCGwMGCwkI
 BwMCBBUCCAMEFgIDAQIeAQIXgAAKCRBxUwItrAaoHPTnAJ0WGgJJVspoctAvEcI00mtp5WAFGgCgr
 +E7ItOqZEHAs+xabBgknYZIFPU=
Organization: Collabora Canada
User-Agent: Evolution 3.56.2 (3.56.2-1.fc42) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250626_055906_611415_C399F19A 
X-CRM114-Status: GOOD (  18.85  )
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
Content-Type: multipart/mixed; boundary="===============7192524808938737922=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============7192524808938737922==
Content-Type: multipart/signed; micalg="pgp-sha1"; protocol="application/pgp-signature";
	boundary="=-sB3Sk195f1XnVNw57mvc"


--=-sB3Sk195f1XnVNw57mvc
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Benjamin,

Le mardi 24 juin 2025 =C3=A0 14:29 +0200, Benjamin Gaignard a =C3=A9crit=C2=
=A0:
> When enumerating the pixels formats check if the context
> request to only export post-processed pixels formats.
> The exception is when V4L2_FMTDESC_FLAG_ENUM_ALL is set, we
> need to export all pixels formats.

The change looks good. The explanation could perhaps be improved. Perhaps
something along this instead ?

	Some pixel formats can only be produced if the decoder outputs=C2=A0
	reference=C2=A0pictures directly. In some cases, such as AV1 film-grain,
	the use of the post-processor is strictly required. In this case,
	only enumerate the post-processor supported formats. The exception is
	when V4L2_FMTDESC_FLAG_ENUM_ALL is set, in this case, we enumerate
	everything regardless of the state.

Perhaps long term we should rename need_postproc by force_postproc. I think=
 this
would help reading the code.

>=20
> Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
> Fixes: bcd4f091cf1e ("media: verisilicon: Use V4L2_FMTDESC_FLAG_ENUM_ALL =
flag")

Reviewed-by: Nicolas Dufresne <nicolas.dufresne@collabora.com>

> ---
> =C2=A0drivers/media/platform/verisilicon/hantro_v4l2.c | 6 +++++-
> =C2=A01 file changed, 5 insertions(+), 1 deletion(-)
>=20
> diff --git a/drivers/media/platform/verisilicon/hantro_v4l2.c b/drivers/m=
edia/platform/verisilicon/hantro_v4l2.c
> index 7c3515cf7d64..7869faf921f4 100644
> --- a/drivers/media/platform/verisilicon/hantro_v4l2.c
> +++ b/drivers/media/platform/verisilicon/hantro_v4l2.c
> @@ -222,6 +222,7 @@ static int vidioc_enum_fmt(struct file *file, void *p=
riv,
> =C2=A0	unsigned int num_fmts, i, j =3D 0;
> =C2=A0	bool skip_mode_none, enum_all_formats;
> =C2=A0	u32 index =3D f->index & ~V4L2_FMTDESC_FLAG_ENUM_ALL;
> +	bool need_postproc =3D ctx->need_postproc;
> =C2=A0
> =C2=A0	/*
> =C2=A0	 * If the V4L2_FMTDESC_FLAG_ENUM_ALL flag is set, we want to enume=
rate all
> @@ -230,6 +231,9 @@ static int vidioc_enum_fmt(struct file *file, void *p=
riv,
> =C2=A0	enum_all_formats =3D !!(f->index & V4L2_FMTDESC_FLAG_ENUM_ALL);
> =C2=A0	f->index =3D index;
> =C2=A0
> +	if (enum_all_formats)
> +		need_postproc =3D HANTRO_AUTO_POSTPROC;
> +
> =C2=A0	/*
> =C2=A0	 * When dealing with an encoder:
> =C2=A0	 *=C2=A0 - on the capture side we want to filter out all MODE_NONE=
 formats.
> @@ -242,7 +246,7 @@ static int vidioc_enum_fmt(struct file *file, void *p=
riv,
> =C2=A0	 */
> =C2=A0	skip_mode_none =3D capture =3D=3D ctx->is_encoder;
> =C2=A0
> -	formats =3D hantro_get_formats(ctx, &num_fmts, HANTRO_AUTO_POSTPROC);
> +	formats =3D hantro_get_formats(ctx, &num_fmts, need_postproc);
> =C2=A0	for (i =3D 0; i < num_fmts; i++) {
> =C2=A0		bool mode_none =3D formats[i].codec_mode =3D=3D HANTRO_MODE_NONE;
> =C2=A0		fmt =3D &formats[i];

--=-sB3Sk195f1XnVNw57mvc
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iF0EABECAB0WIQSScpfJiL+hb5vvd45xUwItrAaoHAUCaF1EFQAKCRBxUwItrAao
HN+uAKDZJpOTbi3XRGHgmRHEOJte9UVyBACbBmNozfzUgXXYoUEvfUr4S4lMT6k=
=WH3I
-----END PGP SIGNATURE-----

--=-sB3Sk195f1XnVNw57mvc--


--===============7192524808938737922==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============7192524808938737922==--

