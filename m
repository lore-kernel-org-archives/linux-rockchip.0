Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5C6DAFF885A
	for <linux-rockchip@archiver.kernel.org>; Tue, 28 Apr 2026 14:30:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:Cc:To:From:Subject:Message-ID:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=S6jsX4cEM/cD+FvzxJr7hUsET1UkJmvWYt7OhGpJLGk=; b=qFe1PBqLNywa3Hv8Rpx/bB0wxo
	qWNJo7O1xii/vzOwiEHuzAB0XyzR4ECJ4kwBemA9VBSV4cZwlTaVuwAORq0HP9oxfbKQOPxy5Z8fZ
	TT7MVTtJjyu/Xgy6rGueEMioj/V2f6k9ZM8RTvY4iahW1haR4kHUeuVPfBgiXBmpxNkg69M8V3Lod
	yD+hTd/Fl6YHGGFW2yTit/6n1Lnxy0W8eP3XIXhv9FylFit6Yvvfm5KIItfOTqBvjkDlrq+3hj8JX
	UVmriZ+Q4SnFUnqxBfKNiVwcW3ndOCnBXAlKgb5bpaoQAq7Jkc/xhYwo/+iW14T2kY3QfcWyDUh+n
	pKCTorwA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wHjSU-00000001f0S-2HFf;
	Tue, 28 Apr 2026 14:30:42 +0000
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wHjSS-00000001ezs-1BuX
	for linux-rockchip@lists.infradead.org;
	Tue, 28 Apr 2026 14:30:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1777386636;
	bh=O1d8jK3KEsymM222o8UDBPpnkBrW80wRlhGqFv91dGk=;
	h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
	b=Dyey7wT3capCNy7S1aLuY9NyN8WtSPi39xVoU3y0AkWShbUKbk/hdvLH/a6uhSxnj
	 jAPKA+SQVyzE2skrLg92ZhNI6lYix02pQ3Ks43ELwHHGDrAUhoa7zArCWtM8HLI6LL
	 CEooSul6hqbptcddZIUh6en3TthoLvolbUz3LXkXjbDpn/hiTT42oLa2weM14022t3
	 JDj6jiZs9eXQJiNQY7U8C7ATLrOfMxBPlsQdz+duYL07IhEPc3qStCy6KORnbK0KAG
	 3Ui6c+O0pUhX6K9Ron+Yz/F1CJWRsQIO93ULPXaeQNbTmq389OZluqtOnG6xiQPsIJ
	 dupXDP9BakdGQ==
Received: from [100.64.0.214] (unknown [100.64.0.214])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (prime256v1) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: nicolas)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id ECA2317E0F33;
	Tue, 28 Apr 2026 16:30:35 +0200 (CEST)
Message-ID: <727f018e014b5965802f1b3369e1c118c487d0e6.camel@collabora.com>
Subject: Re: [PATCH] media: verisilicon: Fix format enumeration when
 post-processor is mandatory
From: Nicolas Dufresne <nicolas.dufresne@collabora.com>
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>, 
	p.zabel@pengutronix.de, mchehab@kernel.org, hverkuil@kernel.org
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org, kernel@collabora.com
Date: Tue, 28 Apr 2026 10:30:34 -0400
In-Reply-To: <20260428083723.54314-1-benjamin.gaignard@collabora.com>
References: <20260428083723.54314-1-benjamin.gaignard@collabora.com>
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
X-CRM114-CacheID: sfid-20260428_073040_471869_2B5A9461 
X-CRM114-Status: GOOD (  13.49  )
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
Content-Type: multipart/mixed; boundary="===============4954038409899711379=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============4954038409899711379==
Content-Type: multipart/signed; micalg="pgp-sha512";
	protocol="application/pgp-signature"; boundary="=-8Jpkvf0gMzcEeQQU4+Ih"


--=-8Jpkvf0gMzcEeQQU4+Ih
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Le mardi 28 avril 2026 =C3=A0 10:37 +0200, Benjamin Gaignard a =C3=A9crit=
=C2=A0:
> When a post-processor pixel format is mandatory (i.e. when an AV1
> bitstream use film grain feature) the driver must only enumerate
> post-processed format.
> Use the context format to know what is suppose to be enumerated.
>=20
> Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
> Fixes: 80c7373a456e ("media: verisilicon: Conditionally ignore native for=
mats")

Reviewed-by: Nicolas Dufresne <nicolas.dufresne@collabora.com>

> ---
> =C2=A0drivers/media/platform/verisilicon/hantro_v4l2.c | 2 +-
> =C2=A01 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/drivers/media/platform/verisilicon/hantro_v4l2.c b/drivers/m=
edia/platform/verisilicon/hantro_v4l2.c
> index fcf3bd9bcda2..f538d4562744 100644
> --- a/drivers/media/platform/verisilicon/hantro_v4l2.c
> +++ b/drivers/media/platform/verisilicon/hantro_v4l2.c
> @@ -242,7 +242,7 @@ static int vidioc_enum_fmt(struct file *file, void *p=
riv,
> =C2=A0	 */
> =C2=A0	skip_mode_none =3D capture =3D=3D ctx->is_encoder;
> =C2=A0
> -	formats =3D hantro_get_formats(ctx, &num_fmts, HANTRO_AUTO_POSTPROC);
> +	formats =3D hantro_get_formats(ctx, &num_fmts, ctx->need_postproc);
> =C2=A0	for (i =3D 0; i < num_fmts; i++) {
> =C2=A0		bool mode_none =3D formats[i].codec_mode =3D=3D HANTRO_MODE_NONE;
> =C2=A0		fmt =3D &formats[i];

--=-8Jpkvf0gMzcEeQQU4+Ih
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQTvDVKBFcTDwhoEbxLZQZRRKWBy9AUCafDEigAKCRDZQZRRKWBy
9LkdAQD96Pf16DIobHW2seYVhEmFsDMuHmcO7zmAS3khX0ah6AEA2uEpp53yRK0B
bRSnnBTnA08gAb9NtlQUvvTibfEDdg0=
=hZwz
-----END PGP SIGNATURE-----

--=-8Jpkvf0gMzcEeQQU4+Ih--


--===============4954038409899711379==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============4954038409899711379==--

