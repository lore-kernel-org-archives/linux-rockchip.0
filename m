Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F031BCCFA13
	for <linux-rockchip@archiver.kernel.org>; Wed, 29 Apr 2026 18:05:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:Cc:To:From:Subject:Message-ID:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=3Pf1Z9hDy9IjX3ULxooL6S3ity/Xqs7+YkofSVwfMfQ=; b=10EcBzNBTUO/GO1KwrLzdHnZty
	Mibr3FDh0LjXbUFZs/tqqmBc3wRRa3mwlXPEbNhmn7IO0Pc51nfYLlVKi1ilNrLY2xKfkjfceFv6i
	Hf3jzlNzDsFJiOQuyM0H5Idso7RzqOZWU1jQdq67xWnPA84h1kA/tLwr4TyOrfX4VAMPyEFM4b8Id
	z4uNgjEoms/4e0XA+nFzRvDTBHSn/5KXFDe2hwID2E9xEGR/n2S/6ppGAlIFPISGl6tYl2crm/Y7d
	Vjxm7D6gWw9xeQUlKiFSiIIJeyehGwAlb6a3RcG6amRt2xVy0UT0IKsJYyJc/YbZALhaMNU5hXlz2
	3ciGfU8Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wI9I4-000000042Rr-3c1G;
	Wed, 29 Apr 2026 18:05:40 +0000
Received: from bali.collaboradmins.com ([148.251.105.195])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wI9I0-000000042R2-02Yp
	for linux-rockchip@lists.infradead.org;
	Wed, 29 Apr 2026 18:05:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1777485933;
	bh=yYtyo1irNYuef2+r6HTLsL49yeZR6MZaKC6kSkaB3RM=;
	h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
	b=cmMDF5t+m5AgXJiOh6WpknkB03Q9k3AFiN0DClyDNQOTHQwfoz9hZSxa227JmWFZS
	 EuertQdseT8TUYWb6TzOw4Q9gEJ7jmavgFyYQZC3B4toDhtEhhHPscZLB0ulmUQ7OF
	 dPioRGpSgaEMbXmuT78vmAk4q0OFNteegrc/eMwrRYCjbvZyQI8zOyuQCE8DaFdiOj
	 Lvq0GU4wTWjmWEQKJ4CH0ymcRdaXeUMr0D8c+x5yI0VxEZBtiiEkA0LzG/T8y2NQcD
	 jRWglcK1zXGqrN+F29C7Sfa3BSxKea+Vb55qgi/+fZloaeblraTcw0ynOh9brvYI+2
	 p1igoz6A3oi6g==
Received: from [100.64.0.214] (unknown [100.64.0.214])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (prime256v1) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: nicolas)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 2BA4F17E0EBB;
	Wed, 29 Apr 2026 20:05:32 +0200 (CEST)
Message-ID: <425069f4bd9f79c5f5d094044cd291d4067b2157.camel@collabora.com>
Subject: Re: [PATCH] media: verisilicon: Fix format enumeration when
 post-processor is mandatory
From: Nicolas Dufresne <nicolas.dufresne@collabora.com>
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>, 
	p.zabel@pengutronix.de, mchehab@kernel.org, hverkuil@kernel.org
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org, kernel@collabora.com
Date: Wed, 29 Apr 2026 14:05:30 -0400
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
User-Agent: Evolution 3.60.1 (3.60.1-1.fc44) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260429_110536_199996_39246F22 
X-CRM114-Status: GOOD (  15.03  )
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
Content-Type: multipart/mixed; boundary="===============1108150341670082012=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============1108150341670082012==
Content-Type: multipart/signed; micalg="pgp-sha512";
	protocol="application/pgp-signature"; boundary="=-aLojBfI2sik/16q3qWnM"


--=-aLojBfI2sik/16q3qWnM
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Benjamin,

Le mardi 28 avril 2026 =C3=A0 10:37 +0200, Benjamin Gaignard a =C3=A9crit=
=C2=A0:
> When a post-processor pixel format is mandatory (i.e. when an AV1
> bitstream use film grain feature) the driver must only enumerate
> post-processed format.
> Use the context format to know what is suppose to be enumerated.
>=20
> Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
> Fixes: 80c7373a456e ("media: verisilicon: Conditionally ignore native
> formats")
> ---
> =C2=A0drivers/media/platform/verisilicon/hantro_v4l2.c | 2 +-
> =C2=A01 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/drivers/media/platform/verisilicon/hantro_v4l2.c
> b/drivers/media/platform/verisilicon/hantro_v4l2.c
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

Looks like this is a subset of another of your patch, which was pending a c=
ommit
message fix.

https://patchwork.linuxtv.org/project/linux-media/patch/20250624122938.6200=
4-1-benjamin.gaignard@collabora.com/

I've picked the other patch and applied my commit message suggestion.

Nicolas

> =C2=A0	for (i =3D 0; i < num_fmts; i++) {
> =C2=A0		bool mode_none =3D formats[i].codec_mode =3D=3D HANTRO_MODE_NONE;
> =C2=A0		fmt =3D &formats[i];

--=-aLojBfI2sik/16q3qWnM
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQTvDVKBFcTDwhoEbxLZQZRRKWBy9AUCafJIagAKCRDZQZRRKWBy
9CqzAP92uIQfrIIY/o0QVJ3lKYVfsBXuEtxg5zYf2BYhLZ4UEwD9E6kLYjD61Nzw
fWTI22ZchZIg3qgYXNrB4rGqhOHfCwA=
=dFmo
-----END PGP SIGNATURE-----

--=-aLojBfI2sik/16q3qWnM--


--===============1108150341670082012==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============1108150341670082012==--

