Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AE022C43334
	for <linux-rockchip@archiver.kernel.org>; Fri,  1 Jul 2022 08:47:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=7mYlODn+6Shlz6YoXQ3XMl2dSc5QEi5t5z44Ph32tmk=; b=YJLP9KOkXLVaTSYijf5gwgiuG4
	zV/q7xOoJ9lxKZCd6CM08woMKQ9bEdwKykyuicvvX/mP4gEOj6I/TmKOKcO25LNcfzKWQyzanW1XL
	SZk+GzbxpU5Tu1N3D6te0xA7wpK/vj5LmU1BHoeofUchI4Lgpp6ymuCQstR4/Gdv6PHElrW9ufHdI
	T9vDDyOnIazpF3Mf79nf7Ezk5SjQ+eMK4S2/KHUzaTgSR0MZnTphRDwVU3LpbExmh5VqkY0Qf1DP1
	s4cadl7o0zEzJOH8ngK71iVTlEN1cVJCKM/H98SiG0/HhpnGgETmBhZQCd57kt7macDQAnSmTcF2B
	iL23hCjA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o7CJF-003hnz-Gh; Fri, 01 Jul 2022 08:47:29 +0000
Received: from relay7-d.mail.gandi.net ([217.70.183.200])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o7CJ4-003hkB-QG; Fri, 01 Jul 2022 08:47:20 +0000
Received: (Authenticated sender: paul.kocialkowski@bootlin.com)
	by mail.gandi.net (Postfix) with ESMTPSA id 5FFB220015;
	Fri,  1 Jul 2022 08:47:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1656665233;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=tCKiu9UVJfksHqgDLzozOfGbaUpNB7t/2OMHm7HVzjc=;
	b=PKR6wnsqRd5W9qPKz+LIaEvioP/9C+wbOgTd6SC+Z0WenLwqtVEd9+IMm7IOnFq/ZIQRp5
	IoexIv7cUOXK0I4dg18iVKxDDpa4MjvVLoZpI1ECwCw67XWjTpaUiBH2LBpH0sVP8F1ep/
	rYd038j4mBXtzPhCEcnafds3P3xBHhxEupo4HQMPMdIujpxFxIw3GqlynjvCGQz5DL1k1h
	LAsND+4U6thEgQtSrwjW9q1hyp1FmispmvSg3ZWGNvnYKz+Ac+E6H72U+lrM1XXddl1FDh
	IgayEjMo/EMxCZS4BC/g6nbYdhCcTmUD6t+dM3mGT0DKPC2RPhjqCi9iE+8x1Q==
Date: Fri, 1 Jul 2022 10:47:10 +0200
From: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>
Cc: mchehab@kernel.org, hverkuil@xs4all.nl, ezequiel@vanguardiasur.com.ar,
	p.zabel@pengutronix.de, gregkh@linuxfoundation.org,
	mripard@kernel.org, wens@csie.org, jernej.skrabec@gmail.com,
	samuel@sholland.org, nicolas.dufresne@collabora.com,
	andrzej.p@collabora.com, linux-media@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
	linux-staging@lists.linux.dev, linux-arm-kernel@lists.infradead.org,
	linux-sunxi@lists.linux.dev, kernel@collabora.com
Subject: Re: [PATCH 3/7] media: hantro: HEVC: Fix chroma offset computation
Message-ID: <Yr60jj4OOAM6plWC@aptenodytes>
References: <20220617115802.396442-1-benjamin.gaignard@collabora.com>
 <20220617115802.396442-4-benjamin.gaignard@collabora.com>
MIME-Version: 1.0
In-Reply-To: <20220617115802.396442-4-benjamin.gaignard@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220701_014719_024837_CEB01860 
X-CRM114-Status: GOOD (  16.55  )
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
Content-Type: multipart/mixed; boundary="===============6557570162617447518=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============6557570162617447518==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="a0X7j1VNZJp1Rx4A"
Content-Disposition: inline


--a0X7j1VNZJp1Rx4A
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Benjamin,

On Fri 17 Jun 22, 13:57, Benjamin Gaignard wrote:
> The chroma offset depends of the bitstream depth.
> Make sure that ctx->bit_depth is used to compute it.
>=20
> Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
> ---
>  drivers/staging/media/hantro/hantro_g2_hevc_dec.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/drivers/staging/media/hantro/hantro_g2_hevc_dec.c b/drivers/=
staging/media/hantro/hantro_g2_hevc_dec.c
> index 9eac133bda68..8407ad45b7b7 100644
> --- a/drivers/staging/media/hantro/hantro_g2_hevc_dec.c
> +++ b/drivers/staging/media/hantro/hantro_g2_hevc_dec.c
> @@ -12,7 +12,7 @@
> =20
>  static size_t hantro_hevc_chroma_offset(struct hantro_ctx *ctx)
>  {
> -	return ctx->dst_fmt.width * ctx->dst_fmt.height;
> +	return ctx->dst_fmt.width * ctx->dst_fmt.height * ctx->bit_depth / 8;

Is this a case for DIV_ROUND_UP or are you sure the rounded-down size is al=
ways
sufficient?

Cheers,

Paul

>  }
> =20
>  static size_t hantro_hevc_motion_vectors_offset(struct hantro_ctx *ctx)
> --=20
> 2.32.0
>=20

--=20
Paul Kocialkowski, Bootlin
Embedded Linux and kernel engineering
https://bootlin.com

--a0X7j1VNZJp1Rx4A
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEEJZpWjZeIetVBefti3cLmz3+fv9EFAmK+tI4ACgkQ3cLmz3+f
v9FI6gf+OMP0FLYqOVzpR7SYs1HX+twVAKRGc9qUg00x8P8t2OXlXvlkxE9qN+bW
A1e9/jH6hE4ngt7bK+DZHrpf9eSYHA8axTSTu2ftFceFjMydrJLcG3GjYW+xDgdF
CBUjb8sPZXZAD5qb2nPyk6+wPonGYQNpx5Zcxxq/n1kaa2xEv99pgVXFB11Sl71S
PGPt2X0N50/BboLoDDEm/eTHGMAtitTh6M5JVKK/rlaHUMVmh6+sdzcQ3J3pWUIP
asPKQQVQt1d/UvbkJBWfPj9/sWuzTm3t2B6WIq3IlinVruUWBGSZGM1sEUVauZvk
xsAwJqD/PUfhZIAKHmr+oYze+ZAjGA==
=OrxB
-----END PGP SIGNATURE-----

--a0X7j1VNZJp1Rx4A--


--===============6557570162617447518==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============6557570162617447518==--

