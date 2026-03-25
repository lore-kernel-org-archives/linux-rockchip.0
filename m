Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5C3C1106B533
	for <linux-rockchip@archiver.kernel.org>; Wed, 25 Mar 2026 13:22:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:Cc:To:From:Subject:Message-ID:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=h8jc7m4b7KYQ2e8zQCxj5qkEJ03639d1/GzrNc3qc1Q=; b=t0RCvPOhQG/n34/5FpxIxYuvYH
	FN2StfEJIXuDiNyxYEegfFdngUNH26klcoA7Or4hG7wbw3ablyBwGE/S29mOtVHIBoJitms1+/NVz
	bEWn6v5dHokgSE91W3t54lhYuU7LVpmPE28sYlh9Ul1PO6cbLHVCqiUvj1qVH22C35gB8uFNx6Knu
	lXO2oi4JH719vDLnCUL+dfluQJ3nguGM9lNyz7Hz+cChpbcnolikBOBQzeqjiXpxngVOnodO9kg/L
	WywUit4yL4lJ+42gOSSFvE+94ys7+ud+XIIs61MBVImP6R0IEsLBMAyAKot80aPgMDseQKTwgwVi4
	8qPJ3xnw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w5OBT-00000003SGv-0vmZ;
	Wed, 25 Mar 2026 13:22:07 +0000
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w5OBQ-00000003SFk-24eJ
	for linux-rockchip@lists.infradead.org;
	Wed, 25 Mar 2026 13:22:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1774444921;
	bh=HqTxj7sOEZALR2O8Su9EVAnQRSJaZUEJV8z1DX7d6tU=;
	h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
	b=gsFNHXSpZl/Q0vywoaL86ffWAwLADKAUOSCpoPze6z3shPbY8VToqRHU7PoxShcTA
	 R/GXBYkxTohDuYVVqlXzeYnOsxY+tdbBVl1kIUvM0Oz8bLiK/agTXlXtrPuFUhT8I5
	 VC+b1HC7ChWzeq1VMKxMIl65OteRS5QJ9dOoHAbVeRADfntQLEwdhC+2y8Ah2cJIni
	 xrgfNkARfBzCZ1ksKVfROCy9Mw9ZhQNweZI0UoaCpJIH36UU6dKgMLJF95eeaDG0UG
	 Bfel6zgkxJ80PImM/uoZTOvDHBFThXv4YjEAnfr80g6wpqz87NTlibrCQCzar0mAfT
	 8toa4C5pq+xLQ==
Received: from [IPv6:2606:6d00:15:e06b::c41] (unknown [IPv6:2606:6d00:15:e06b::c41])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (prime256v1) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: nicolas)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 3FA3417E5A46;
	Wed, 25 Mar 2026 14:22:00 +0100 (CET)
Message-ID: <c90e82bc630b54419d10ee6f179bc1239060a808.camel@collabora.com>
Subject: Re: [PATCH] media: verisilicon: Remove unnecessary memset() after
 dma_alloc_coherent
From: Nicolas Dufresne <nicolas.dufresne@collabora.com>
To: Luo Qiu <luoqiu@kylinsec.com.cn>, Benjamin Gaignard	
 <benjamin.gaignard@collabora.com>, Philipp Zabel <p.zabel@pengutronix.de>, 
 Mauro Carvalho Chehab	 <mchehab@kernel.org>
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org
Date: Wed, 25 Mar 2026 09:21:57 -0400
In-Reply-To: <856D681C2A51EC65+20260325050055.1187863-1-luoqiu@kylinsec.com.cn>
References: <856D681C2A51EC65+20260325050055.1187863-1-luoqiu@kylinsec.com.cn>
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
User-Agent: Evolution 3.58.3 (3.58.3-1.fc43) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260325_062204_709696_68F83E6F 
X-CRM114-Status: GOOD (  11.60  )
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
Content-Type: multipart/mixed; boundary="===============5058971730612993870=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============5058971730612993870==
Content-Type: multipart/signed; micalg="pgp-sha512";
	protocol="application/pgp-signature"; boundary="=-k/642t1H1gbwycF4nsNk"


--=-k/642t1H1gbwycF4nsNk
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Le mercredi 25 mars 2026 =C3=A0 13:00 +0800, Luo Qiu a =C3=A9crit=C2=A0:
> dma_alloc_coherent() already returns zeroed memory, so the subsequent
> memset(0) calls are redundant.

I don't think this statement is actually true, or at least not for all
architectures, and not without an explicit GFP_ZERO flag.

Nicolas

>=20
> Signed-off-by: Luo Qiu <luoqiu@kylinsec.com.cn>
> ---
> =C2=A0drivers/media/platform/verisilicon/hantro_vp9.c | 3 ---
> =C2=A01 file changed, 3 deletions(-)
>=20
> diff --git a/drivers/media/platform/verisilicon/hantro_vp9.c b/drivers/me=
dia/platform/verisilicon/hantro_vp9.c
> index 566cd376c097..607d618e8f4a 100644
> --- a/drivers/media/platform/verisilicon/hantro_vp9.c
> +++ b/drivers/media/platform/verisilicon/hantro_vp9.c
> @@ -187,7 +187,6 @@ int hantro_vp9_dec_init(struct hantro_ctx *ctx)
> =C2=A0		return -ENOMEM;
> =C2=A0
> =C2=A0	tile_edge->size =3D size;
> -	memset(tile_edge->cpu, 0, size);
> =C2=A0
> =C2=A0	size =3D hantro_vp9_segment_map_size(max_width, max_height);
> =C2=A0	vp9_dec->segment_map_size =3D size;
> @@ -198,7 +197,6 @@ int hantro_vp9_dec_init(struct hantro_ctx *ctx)
> =C2=A0		goto err_segment_map;
> =C2=A0
> =C2=A0	segment_map->size =3D size;
> -	memset(segment_map->cpu, 0, size);
> =C2=A0
> =C2=A0	size =3D hantro_vp9_prob_tab_size();
> =C2=A0	vp9_dec->ctx_counters_offset =3D size;
> @@ -211,7 +209,6 @@ int hantro_vp9_dec_init(struct hantro_ctx *ctx)
> =C2=A0		goto err_misc;
> =C2=A0
> =C2=A0	misc->size =3D size;
> -	memset(misc->cpu, 0, size);
> =C2=A0
> =C2=A0	init_v4l2_vp9_count_tbl(ctx);
> =C2=A0

--=-k/642t1H1gbwycF4nsNk
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQTvDVKBFcTDwhoEbxLZQZRRKWBy9AUCacPhdQAKCRDZQZRRKWBy
9N9UAQCpvI0nr3Xogq9gNsgNBd5xLG2EZEWGzahgs/ORXqFrZAD9ERe1zJxCX6Qh
BWSW91bYzrr5/ixlGp43idTR3Y/sWQw=
=niaU
-----END PGP SIGNATURE-----

--=-k/642t1H1gbwycF4nsNk--


--===============5058971730612993870==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============5058971730612993870==--

