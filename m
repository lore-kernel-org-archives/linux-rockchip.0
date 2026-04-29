Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AA736CCFA13
	for <linux-rockchip@archiver.kernel.org>; Wed, 29 Apr 2026 19:02:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:Cc:To:From:Subject:Message-ID:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=LDcnYgjGEokkSrrh4KFrchUKY7pev49E9oA9ge1mxh4=; b=dikxYuioKno+9lqqzZ3dyZxPjE
	kxWqcv2YJpiDd0f/cRqigNp3mswU6YvORjlBmLPLDvclIeMlJOGxgayfo6IQjbYyhC3woo1jw/Olg
	f5TPWbunTo/N2uWa2S6/1jiUU6yLzbi8nKTdFq1p9ErAKBhr5tlgbIwjgSw/ZmP0YJdXF4WHv8gR4
	rBAiVRZuDoNccf2DRSZ3lsv10dH3B63q+h2vLUF2l2t4+PfWryKd9SanHwQVSMRS7oYQ3V096896F
	2mAQwTn9PLVVnTVVrLEhejcIbLdKqDX2S2n62Y0BpmFQ8JpHuXarNByHZGnflSmY7PkbgxGMkFmKo
	qLVhhMWQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wIAAZ-000000047G9-0uAM;
	Wed, 29 Apr 2026 19:01:59 +0000
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wIAAT-000000047ES-05Jz
	for linux-rockchip@lists.infradead.org;
	Wed, 29 Apr 2026 19:01:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1777489310;
	bh=J7PdNiwIPUKegtuBjW/8ymNKrW3mJ9pZw8XhWaEC2SE=;
	h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
	b=AA+rOBl3Ghr9XnJU2HTzc2RgGWcMh/ih6Wv7+ChHYmGM4vuAO8VDEJiobcTBlxnf+
	 yiZolhak9f3WFDJPulC0x2yS9H0zEKe3SQCY8E/5WIBMtq/zyse9KBMYIvMgzTCoTc
	 rvEFXzk1Ozeosg4v/cYwylzJ277TtoAtv09nvZgFy919kmXMUOk8uUX9uFCuag/Chs
	 GRaIgayt/UxdRWjAZKqJfRMStjVjFkoPVAnVkIn8jeuY4zfz5eMgMd9SVa46+eYigS
	 odWj13PAAxoyn2niS4IjA4lj5Z2+AQZSZrjknhXnBy4gO23PP9FMdHSdIOGkpcLXtH
	 0NFPmLTLNc8Lw==
Received: from [100.64.0.214] (unknown [100.64.0.214])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (prime256v1) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: nicolas)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 4C70217E1227;
	Wed, 29 Apr 2026 21:01:49 +0200 (CEST)
Message-ID: <6dfaacd9cd8d3acb9335618f14acdb8f4a42e5c8.camel@collabora.com>
Subject: Re: [PATCH] media: verisilicon: remove hantro_run declaration
From: Nicolas Dufresne <nicolas.dufresne@collabora.com>
To: rouven.czerwinski@linaro.org, Benjamin Gaignard	
 <benjamin.gaignard@collabora.com>, Philipp Zabel <p.zabel@pengutronix.de>, 
 Mauro Carvalho Chehab	 <mchehab@kernel.org>
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org
Date: Wed, 29 Apr 2026 15:01:47 -0400
In-Reply-To: <20260410-hantro-dangling-declaration-v1-1-9a5cd401e1e8@linaro.org>
References: <20260410-hantro-dangling-declaration-v1-1-9a5cd401e1e8@linaro.org>
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
User-Agent: Evolution 3.60.1 (3.60.1-1.fc44) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260429_120153_234937_2901D6A9 
X-CRM114-Status: GOOD (  11.88  )
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
Content-Type: multipart/mixed; boundary="===============2485860781238742938=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============2485860781238742938==
Content-Type: multipart/signed; micalg="pgp-sha512";
	protocol="application/pgp-signature"; boundary="=-5KnV11OLe/HX2VBpCREI"


--=-5KnV11OLe/HX2VBpCREI
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Le vendredi 10 avril 2026 =C3=A0 08:15 +0200, Rouven Czerwinski via B4 Rela=
y a
=C3=A9crit=C2=A0:
> From: Rouven Czerwinski <rouven.czerwinski@linaro.org>
>=20
> The function hantro_run() is declared but never defined nor used, remove
> the dangling declaration.
>=20
> Signed-off-by: Rouven Czerwinski <rouven.czerwinski@linaro.org>

Reviewed-by: Nicolas Dufresne <nicolas.dufresne@collabora.com>

> ---
> =C2=A0drivers/media/platform/verisilicon/hantro_hw.h | 1 -
> =C2=A01 file changed, 1 deletion(-)
>=20
> diff --git a/drivers/media/platform/verisilicon/hantro_hw.h
> b/drivers/media/platform/verisilicon/hantro_hw.h
> index 5f2011529f02..13e573f1f19d 100644
> --- a/drivers/media/platform/verisilicon/hantro_hw.h
> +++ b/drivers/media/platform/verisilicon/hantro_hw.h
> @@ -427,7 +427,6 @@ extern const struct hantro_postproc_ops
> rockchip_vpu981_postproc_ops;
> =C2=A0extern const u32 hantro_vp8_dec_mc_filter[8][6];
> =C2=A0
> =C2=A0void hantro_watchdog(struct work_struct *work);
> -void hantro_run(struct hantro_ctx *ctx);
> =C2=A0void hantro_irq_done(struct hantro_dev *vpu,
> =C2=A0		=C2=A0=C2=A0=C2=A0=C2=A0 enum vb2_buffer_state result);
> =C2=A0void hantro_start_prepare_run(struct hantro_ctx *ctx);
>=20
> ---
> base-commit: 591cd656a1bf5ea94a222af5ef2ee76df029c1d2
> change-id: 20260409-hantro-dangling-declaration-a337df1daf42
>=20
> Best regards,
> --=C2=A0=20
> Rouven Czerwinski <rouven.czerwinski@linaro.org>
>=20
>=20

--=-5KnV11OLe/HX2VBpCREI
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQTvDVKBFcTDwhoEbxLZQZRRKWBy9AUCafJVmwAKCRDZQZRRKWBy
9AaaAP4/nKZ3N3Vtv0Uk7w6G/QWSLMwKs8GWbNheKpLnGqQDEQEA9Ta0sSFC0eGG
0LLdaROPTWWJVa1UuXZD3bXrsP8mVQs=
=pNW/
-----END PGP SIGNATURE-----

--=-5KnV11OLe/HX2VBpCREI--


--===============2485860781238742938==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============2485860781238742938==--

