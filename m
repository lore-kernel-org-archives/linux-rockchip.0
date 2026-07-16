Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 597AFC44501
	for <linux-rockchip@archiver.kernel.org>; Thu, 16 Jul 2026 02:26:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:Cc:To:From:Subject:Message-ID:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ITwlT9BNrEp0kddValqzKo2SPacohjFLIkPi5Y7YVMM=; b=BZ2AmJln+/GVmxPH55A7Vqb60N
	zIEnS/OC2OLwatqm6WjKiu9q7Yv9E47aDtTK2NFsuMVRDhJB7G902wHzKJrwcirA7kQte0SS65A93
	r5M1EmhNoMysnR7J2uyRvvd5NiBZaBI8t1Qu5GUQIPuVIi/OXllWi24PXXfiKqpv9jCHgsROZ6ok3
	kdkxgLqsu2CQXVJqCcIuMz60TBr2jRi0RmAPjLaMprWxahtjq7TaleQuKXgaUIIBWKapszBDTzst/
	mumUE09MkfHrpeB6taL2A0R0qHGFk5ugMjJctuyIgwdrYU5WNky9Jphpa9ZuaWMsNsq0Nth1g+65z
	hfexp55Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wkBo1-0000000GGoL-2dxL;
	Thu, 16 Jul 2026 02:26:33 +0000
Received: from mail-qv1-xf2e.google.com ([2607:f8b0:4864:20::f2e])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wkBnz-0000000GGnZ-0NiT
	for linux-rockchip@lists.infradead.org;
	Thu, 16 Jul 2026 02:26:32 +0000
Received: by mail-qv1-xf2e.google.com with SMTP id 6a1803df08f44-902f92b8504so53655766d6.2
        for <linux-rockchip@lists.infradead.org>; Wed, 15 Jul 2026 19:26:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ndufresne-ca.20251104.gappssmtp.com; s=20251104; t=1784168789; x=1784773589; darn=lists.infradead.org;
        h=mime-version:user-agent:content-type:autocrypt:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=mBPsq3oZXwhpSh2XrVu878yUmmYOIRjytvCJ/xaqJJ0=;
        b=bF7CvptJ32kcAveUtAhzCBR1hA4zasJ8kbh/5zkEuvQlU0y806T7DbtBnM+YP9/91i
         TyAp+KhKq7D6v7tJ1ral2pyJEpojPAKfEfiUz8zsCY2b7WrhhmywVEUSl2snWhfaSRHk
         Hy5SFdCuzMuL7OOiwKxeKwjopvvwBytaiGt5ey8hPaIaPSFPcWYkAti8I0I9lROBzx8V
         xLfASTOQDY1ZmjauMjJBQ90heUNo62AjT/nmrgIFLrIv7KCzGktvdcapWgdTHqa256ub
         Xw9RVUcXPn3DjLfrDWlAgfHxFS2Ft/ZIo2xmsYUrrP78w1JImHhpcyX1LW+wye5UZZia
         VZGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784168789; x=1784773589;
        h=mime-version:user-agent:content-type:autocrypt:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=mBPsq3oZXwhpSh2XrVu878yUmmYOIRjytvCJ/xaqJJ0=;
        b=GXkzalWD58kvQDO7VXoPaq/D0TW8Iokkf+IBDQyE4GvXlzw3pg3k1C3/k91Rx9zCwt
         Ni4kjL2zbrNyMLsnHcSAXwwWLDfZrzriKp7FBq2taKPAPL0QyAjhM4f6tTUtpXASiEm+
         Fhrm3AgPdtESqaloupRGk3rvFANK9z93Hm87/S/vxNNH6682haLtMDqfDuqtUMb4SPYb
         z1snqbbZuaJ/X2/KqbyLlN8QMoZmWG4zV0tany17isthntCe2Pxly9hAfsndjwjhmV5O
         x97p25ujy4kgC7akExSBitrxjC/qbXKej5cWssMajLzBc8ul8oguDF9FXwQ/32tYUdoh
         Rb8Q==
X-Forwarded-Encrypted: i=1; AHgh+Rog0eIkKKqoVs4jIbgrg8VxPoDh01tB10LhT+bQvuVphdEpAiUQMKCXSxPkV32BKVersvyO+OSvEG6kiGeIxg==@lists.infradead.org
X-Gm-Message-State: AOJu0Yy6AXPzoOiXTqhlX0P3MVYjjV+aHmj5COgJ+dup4V4jfrsttxyF
	4ODz/tP3oTiHSpxcypp4pLZ8yJI9ve0f94EoU01/u4hxpJ6quWW6awIcIMmqGZA6NDE=
X-Gm-Gg: AfdE7cn7a4uo++JXj6y5pfhb0IvnF6JKD5m76vUHRG02Gh/xFg/0eEMagVSS7u3i7EO
	vHPHWhe4On3js2c9QxQ3VNHKZ3d8lEjZszIw30RTXzUWHPzwaMWvgmvJ0XVdSh01ijT7rNeXrzB
	VBTQ6vKqp0mEBveDhNFbznw4m6Qw5OX+eY9WNjR1C9uCL3OglY6q+Pi0zLB+9Kjwm7Etm9CsUkN
	m51MTqSgnmm/jrlce22yEAWFJqov/90jlPvkaNQaDvnZPH8ac6BnSoiPpbiyAmTYvAR39jpamNn
	OHTrhqHMc2PFBbNVDgut6RyV8fi4ekji4d4+9FhRjyxX/Tydv5cIcg6eMamJMs+kSYtMexN3P7Y
	j+T961F/EsFp86Ofa2HP5h7Q6h63fsjp8vx4dhP0H11uR1ECsswoF53niOgUHYit/T/u6WYcWyD
	W43e2jZf8=
X-Received: by 2002:a05:6214:5005:b0:8ec:235c:7a66 with SMTP id 6a1803df08f44-90758d0d3c0mr59599196d6.27.1784168789618;
        Wed, 15 Jul 2026 19:26:29 -0700 (PDT)
Received: from ?IPv6:2606:6d00:15:e06b::5ac? ([2606:6d00:15:e06b::5ac])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-8ffd56c06e1sm206619606d6.14.2026.07.15.19.26.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Jul 2026 19:26:28 -0700 (PDT)
Message-ID: <95a47297c80c78345510cb5c09d9614841dcdb7a.camel@ndufresne.ca>
Subject: Re: [PATCH] media: rkvdec: use DIV_ROUND_UP() for CTB counts
From: Nicolas Dufresne <nicolas@ndufresne.ca>
To: Hiroki Nakajima <3na7nanana@gmail.com>, detlev.casanova@collabora.com, 
	ezequiel@vanguardiasur.com.ar
Cc: mchehab@kernel.org, heiko@sntech.de, linux-media@vger.kernel.org, 
	linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org
Date: Wed, 15 Jul 2026 22:26:27 -0400
In-Reply-To: <20260712072652.2881919-1-3na7nanana@gmail.com>
References: <20260712072652.2881919-1-3na7nanana@gmail.com>
Autocrypt: addr=nicolas@ndufresne.ca; prefer-encrypt=mutual;
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
User-Agent: Evolution 3.60.2 (3.60.2-1.fc44) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260715_192631_149709_260922BD 
X-CRM114-Status: GOOD (  14.77  )
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
Content-Type: multipart/mixed; boundary="===============2039449247027935265=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============2039449247027935265==
Content-Type: multipart/signed; micalg="pgp-sha512";
	protocol="application/pgp-signature"; boundary="=-bNkDQXvvPI7fGSpXPcBO"


--=-bNkDQXvvPI7fGSpXPcBO
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Le dimanche 12 juillet 2026 =C3=A0 16:26 +0900, Hiroki Nakajima a =C3=A9cri=
t=C2=A0:
> Use DIV_ROUND_UP() when computing HEVC coding tree block counts
> instead of open-coding the same rounding expression. This keeps the
> rounding intent explicit without changing behavior.
>=20
> Found using a Coccinelle rule generated from the DIV_ROUND_UP() macro
> definition.
>=20
> Signed-off-by: Hiroki Nakajima <3na7nanana@gmail.com>

Reviewed-by: Nicolas Dufresne <nicolas.dufresne@collabora.com>

> ---
> =C2=A0drivers/media/platform/rockchip/rkvdec/rkvdec-hevc.c=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 | 4 ++--
> =C2=A0.../media/platform/rockchip/rkvdec/rkvdec-vdpu381-hevc.c=C2=A0 | 8 =
++++----
> =C2=A0.../media/platform/rockchip/rkvdec/rkvdec-vdpu383-hevc.c=C2=A0 | 8 =
++++----
> =C2=A03 files changed, 10 insertions(+), 10 deletions(-)
>=20
> diff --git a/drivers/media/platform/rockchip/rkvdec/rkvdec-hevc.c
> b/drivers/media/platform/rockchip/rkvdec/rkvdec-hevc.c
> index 87abf93dfd5e..ff3942f91c5d 100644
> --- a/drivers/media/platform/rockchip/rkvdec/rkvdec-hevc.c
> +++ b/drivers/media/platform/rockchip/rkvdec/rkvdec-hevc.c
> @@ -258,9 +258,9 @@ static void assemble_hw_pps(struct rkvdec_ctx *ctx,
> =C2=A0		for (i =3D 0; i <=3D pps->num_tile_rows_minus1; i++)
> =C2=A0			WRITE_PPS(pps->row_height_minus1[i], ROW_HEIGHT(i));
> =C2=A0	} else {
> -		WRITE_PPS(((sps->pic_width_in_luma_samples + ctb_size_y - 1)
> / ctb_size_y) - 1,
> +		WRITE_PPS(DIV_ROUND_UP(sps->pic_width_in_luma_samples,
> ctb_size_y) - 1,
> =C2=A0			=C2=A0 COLUMN_WIDTH(0));
> -		WRITE_PPS(((sps->pic_height_in_luma_samples + ctb_size_y - 1)
> / ctb_size_y) - 1,
> +		WRITE_PPS(DIV_ROUND_UP(sps->pic_height_in_luma_samples,
> ctb_size_y) - 1,
> =C2=A0			=C2=A0 ROW_HEIGHT(0));
> =C2=A0	}
> =C2=A0
> diff --git a/drivers/media/platform/rockchip/rkvdec/rkvdec-vdpu381-hevc.c
> b/drivers/media/platform/rockchip/rkvdec/rkvdec-vdpu381-hevc.c
> index fe6414a17551..d07c74679552 100644
> --- a/drivers/media/platform/rockchip/rkvdec/rkvdec-vdpu381-hevc.c
> +++ b/drivers/media/platform/rockchip/rkvdec/rkvdec-vdpu381-hevc.c
> @@ -261,8 +261,8 @@ static void assemble_hw_pps(struct rkvdec_ctx *ctx,
> =C2=A0	memset(row_height, 0, sizeof(row_height));
> =C2=A0
> =C2=A0	max_cu_width =3D 1 << (sps->log2_diff_max_min_luma_coding_block_si=
ze +
> log2_min_cb_size);
> -	pic_in_cts_width =3D (width + max_cu_width - 1) / max_cu_width;
> -	pic_in_cts_height =3D (height + max_cu_width - 1) / max_cu_width;
> +	pic_in_cts_width =3D DIV_ROUND_UP(width, max_cu_width);
> +	pic_in_cts_height =3D DIV_ROUND_UP(height, max_cu_width);
> =C2=A0
> =C2=A0	if (pps->flags & V4L2_HEVC_PPS_FLAG_TILES_ENABLED) {
> =C2=A0		if (pps->flags & V4L2_HEVC_PPS_FLAG_UNIFORM_SPACING) {
> @@ -275,8 +275,8 @@ static void assemble_hw_pps(struct rkvdec_ctx *ctx,
> =C2=A0						=C2=A0 column_width, row_height);
> =C2=A0		}
> =C2=A0	} else {
> -		column_width[0] =3D (width + max_cu_width - 1) / max_cu_width;
> -		row_height[0] =3D (height + max_cu_width - 1) / max_cu_width;
> +		column_width[0] =3D DIV_ROUND_UP(width, max_cu_width);
> +		row_height[0] =3D DIV_ROUND_UP(height, max_cu_width);
> =C2=A0	}
> =C2=A0
> =C2=A0	for (i =3D 0; i < 20; i++) {
> diff --git a/drivers/media/platform/rockchip/rkvdec/rkvdec-vdpu383-hevc.c
> b/drivers/media/platform/rockchip/rkvdec/rkvdec-vdpu383-hevc.c
> index 3575338a531a..3462d995d4cf 100644
> --- a/drivers/media/platform/rockchip/rkvdec/rkvdec-vdpu383-hevc.c
> +++ b/drivers/media/platform/rockchip/rkvdec/rkvdec-vdpu383-hevc.c
> @@ -287,8 +287,8 @@ static void assemble_hw_pps(struct rkvdec_ctx *ctx,
> =C2=A0	memset(row_height, 0, sizeof(row_height));
> =C2=A0
> =C2=A0	max_cu_width =3D 1 << (sps->log2_diff_max_min_luma_coding_block_si=
ze +
> log2_min_cb_size);
> -	pic_in_cts_width =3D (width + max_cu_width - 1) / max_cu_width;
> -	pic_in_cts_height =3D (height + max_cu_width - 1) / max_cu_width;
> +	pic_in_cts_width =3D DIV_ROUND_UP(width, max_cu_width);
> +	pic_in_cts_height =3D DIV_ROUND_UP(height, max_cu_width);
> =C2=A0
> =C2=A0	if (tiles_enabled) {
> =C2=A0		if (pps->flags & V4L2_HEVC_PPS_FLAG_UNIFORM_SPACING) {
> @@ -301,8 +301,8 @@ static void assemble_hw_pps(struct rkvdec_ctx *ctx,
> =C2=A0						=C2=A0 column_width, row_height);
> =C2=A0		}
> =C2=A0	} else {
> -		column_width[0] =3D (width + max_cu_width - 1) / max_cu_width;
> -		row_height[0] =3D (height + max_cu_width - 1) / max_cu_width;
> +		column_width[0] =3D DIV_ROUND_UP(width, max_cu_width);
> +		row_height[0] =3D DIV_ROUND_UP(height, max_cu_width);
> =C2=A0	}
> =C2=A0
> =C2=A0	for (i =3D 0; i < 20; i++)

--=-bNkDQXvvPI7fGSpXPcBO
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQTvDVKBFcTDwhoEbxLZQZRRKWBy9AUCalhBVAAKCRDZQZRRKWBy
9FbPAQDvknjU5MBUBlBk+2NOWC1I7Q9Cjqj2M0AnwCfQTfkg5wD/Trt36/37q2Ks
fllOCGSBF7ly4N7X+HlKSf5YFnqQqgI=
=3mvY
-----END PGP SIGNATURE-----

--=-bNkDQXvvPI7fGSpXPcBO--


--===============2039449247027935265==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============2039449247027935265==--

