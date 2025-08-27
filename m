Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DF772CA0EFF
	for <linux-rockchip@archiver.kernel.org>; Wed, 27 Aug 2025 15:55:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:Cc:To:From:Subject:Message-ID:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=VR1jYrcqxQj9eauMfo/VR2PB6x3DtcavMK7ldSxExq8=; b=CPPuWS5m7DG87fIYxGdKsL359X
	WhyFbJPafiGeTMATA9ztzWLDvNU3K9OsGFbu7kmVkwO04mZE+tHkrYBaC9m9wOevyhPoZge4ozxF4
	oR6xa/rCicW134ZpcCWfe6lOYksk8WZvkFm2kZPvD6ONsb+ci1TYI5TBnXwDlKJWvfZy8RLLD1yDB
	J4BrFwMLS4Qcd7x0m+JF8cTz19jIUkFr6tY0IibBXj6AbIs8TttJXuKGyqf6UHKyjCZ6Z/jk0LnbZ
	cpw8DX1P8DlczZZX7ZJ9Y4PtalXPho91uvT4kBVlydKXVWiIfA0w/Bq1NwNKXqBu4ilEJf6mykE8j
	5hEC7Kzw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1urIUs-0000000G5Qa-0Rij;
	Wed, 27 Aug 2025 15:55:38 +0000
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1urHAj-0000000Flcl-2f3F
	for linux-rockchip@lists.infradead.org;
	Wed, 27 Aug 2025 14:30:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1756305043;
	bh=CWGN5QyW8aVzuD8JBXllBiTdxeWOyRl6ea0U+Z16DpI=;
	h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
	b=cZ1SMbSd636b2ZoAm3iGxxvRLaIst6oNUWncvK1P88krSvUJSbxUPfBXJU7ThxPSj
	 /d2wXNiEEyvcCO7NQ/6gHIy9BiO5++fOn0IrnUiw0SqmX+9CZplfYrUqZdJl4oP77t
	 zWmV7TI7pjUgEtzmEyG9qeD4LWryovI5ZYTAFSzvWCLmeiNpbp65P65PI/UuVidSQM
	 uPhRUVvbAaPEyfPZaAowE+xP6NQgdMh4n/bsnnNWuWQH5RJKXFG1JYl+mhZj2nFkGN
	 zoEogniqlZ8J3BIpI7Wy+35bHhtjrnER/YFQnnBOUIPKrsS3ZNE6ioCghOKlgKA0Wf
	 Rggff6S2EHA8g==
Received: from [IPv6:2606:6d00:11:5a76::c41] (unknown [IPv6:2606:6d00:11:5a76::c41])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: nicolas)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 78E0617E0B85;
	Wed, 27 Aug 2025 16:30:42 +0200 (CEST)
Message-ID: <ee7416c9db2128ab1a8c1bbdc7cd231da21e5b53.camel@collabora.com>
Subject: Re: [PATCH] media: verisilicon: Explicitly disable all encoder
 ioctls for decoders
From: Nicolas Dufresne <nicolas.dufresne@collabora.com>
To: Paul Kocialkowski <paulk@sys-base.io>, linux-media@vger.kernel.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Cc: Benjamin Gaignard <benjamin.gaignard@collabora.com>, Philipp Zabel
	 <p.zabel@pengutronix.de>, Mauro Carvalho Chehab <mchehab@kernel.org>
Date: Wed, 27 Aug 2025 10:30:40 -0400
In-Reply-To: <20250826190416.1287089-1-paulk@sys-base.io>
References: <20250826190416.1287089-1-paulk@sys-base.io>
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
User-Agent: Evolution 3.56.2 (3.56.2-1.fc42) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250827_073045_979396_6515CB3A 
X-CRM114-Status: GOOD (  17.01  )
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
Content-Type: multipart/mixed; boundary="===============9087429247015993666=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============9087429247015993666==
Content-Type: multipart/signed; micalg="pgp-sha512";
	protocol="application/pgp-signature"; boundary="=-lds37cTVM1G5QNteAxvi"


--=-lds37cTVM1G5QNteAxvi
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Paul,

Le mardi 26 ao=C3=BBt 2025 =C3=A0 21:04 +0200, Paul Kocialkowski a =C3=A9cr=
it=C2=A0:
> Call the dedicated v4l2_disable_ioctl helper instead of manually
> checking whether the current context is an encoder for the selection
> ioctls.
>=20
> Signed-off-by: Paul Kocialkowski <paulk@sys-base.io>
> ---
> =C2=A0drivers/media/platform/verisilicon/hantro_drv.c=C2=A0 | 2 ++
> =C2=A0drivers/media/platform/verisilicon/hantro_v4l2.c | 6 ++----
> =C2=A02 files changed, 4 insertions(+), 4 deletions(-)
>=20
> diff --git a/drivers/media/platform/verisilicon/hantro_drv.c
> b/drivers/media/platform/verisilicon/hantro_drv.c
> index 4cc9d00fd293..6fb28a6293e7 100644
> --- a/drivers/media/platform/verisilicon/hantro_drv.c
> +++ b/drivers/media/platform/verisilicon/hantro_drv.c
> @@ -916,6 +916,8 @@ static int hantro_add_func(struct hantro_dev *vpu,
> unsigned int funcid)
> =C2=A0		vpu->decoder =3D func;
> =C2=A0		v4l2_disable_ioctl(vfd, VIDIOC_TRY_ENCODER_CMD);
> =C2=A0		v4l2_disable_ioctl(vfd, VIDIOC_ENCODER_CMD);
> +		v4l2_disable_ioctl(vfd, VIDIOC_G_SELECTION);
> +		v4l2_disable_ioctl(vfd, VIDIOC_S_SELECTION);

Disabling this IOCTL for JPEG is fine, but for VP8, H.264, HEVC, VP9 and AV=
1, it
is pretty much mandatory. Otherwise your stream will advertise the padded
dimentions and there would be no way to tell it that what is the cropping w=
indow
for bitstream generation purpose. Considering you are looking forward addin=
g
H.264 encoding, do you really want to apply this fix ?

Nicolas

> =C2=A0	}
> =C2=A0
> =C2=A0	video_set_drvdata(vfd, vpu);
> diff --git a/drivers/media/platform/verisilicon/hantro_v4l2.c
> b/drivers/media/platform/verisilicon/hantro_v4l2.c
> index 6bcd892e7bb4..fcf3bd9bcda2 100644
> --- a/drivers/media/platform/verisilicon/hantro_v4l2.c
> +++ b/drivers/media/platform/verisilicon/hantro_v4l2.c
> @@ -663,8 +663,7 @@ static int vidioc_g_selection(struct file *file, void
> *priv,
> =C2=A0	struct hantro_ctx *ctx =3D file_to_ctx(file);
> =C2=A0
> =C2=A0	/* Crop only supported on source. */
> -	if (!ctx->is_encoder ||
> -	=C2=A0=C2=A0=C2=A0 sel->type !=3D V4L2_BUF_TYPE_VIDEO_OUTPUT)
> +	if (sel->type !=3D V4L2_BUF_TYPE_VIDEO_OUTPUT)
> =C2=A0		return -EINVAL;
> =C2=A0
> =C2=A0	switch (sel->target) {
> @@ -696,8 +695,7 @@ static int vidioc_s_selection(struct file *file, void
> *priv,
> =C2=A0	struct vb2_queue *vq;
> =C2=A0
> =C2=A0	/* Crop only supported on source. */
> -	if (!ctx->is_encoder ||
> -	=C2=A0=C2=A0=C2=A0 sel->type !=3D V4L2_BUF_TYPE_VIDEO_OUTPUT)
> +	if (sel->type !=3D V4L2_BUF_TYPE_VIDEO_OUTPUT)
> =C2=A0		return -EINVAL;
> =C2=A0
> =C2=A0	/* Change not allowed if the queue is streaming. */

--=-lds37cTVM1G5QNteAxvi
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQTvDVKBFcTDwhoEbxLZQZRRKWBy9AUCaK8WkAAKCRDZQZRRKWBy
9Dy5AP9BlYKxmYz3Vh7ZeTTdQOGB/NmwSTfOJ6Fru/KbSjvVuAEAqEBrdJ8AYj/C
xBY4IL6675kS8V2F/EWZbXTkg/jwtwg=
=5Uaf
-----END PGP SIGNATURE-----

--=-lds37cTVM1G5QNteAxvi--


--===============9087429247015993666==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============9087429247015993666==--

