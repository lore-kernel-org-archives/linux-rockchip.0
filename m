Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47025606A31E
	for <linux-rockchip@archiver.kernel.org>; Tue, 24 Nov 2026 03:47:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=XGqQXpTP;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=collabora.com header.i=@collabora.com header.a=rsa-sha256 header.s=mail header.b=Z435zaMX
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:Cc:To:From:Subject:Message-ID:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=Qdr5R0TAfCIHjN22WH9akk6c1GCMEz+nBc20993Rcps=; b=XGqQXpTPQjESw0oD/+ANc8VAoR
	Pvl6lB4OTkrODT6n14Acv+XvNN9IiIPJzx1rOEaIpZ9LweE3kGlRiYwpn5qIjRVnckY9+kgQ4gAKS
	X8FzsGd3bTINa8+zpoO+W4DaXdFI3NazVxf2LxP+cv4ijpnYA2HY7kqkYA7qvetfrAANNXJkUFuc+
	70U1puPkPtV9ut2+mRqL82ocgKMeUR9g0t7P3dqEkD2XQvapOcbkTo5LL1A2Y0nvxPfPMY4PQMezI
	xIrwkELwDdnp8LRdWle5EFkgdVuj3gxYPlDafKjWvjWvacSBeQ+9bbuoU2GiOH9qa0PjT9DAZBO0w
	zKbI7oeQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVhVW-00000005T22-0AxK;
	Tue, 24 Nov 2026 03:47:50 +0000
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVhVT-00000005T1O-1spu;
	Tue, 24 Nov 2026 03:47:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1795492062;
	bh=WugA1Xe6UFchQyqrR/baOIOB+aIVWuHq2eVJHKMBAII=;
	h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
	b=Z435zaMXqZi+mNCGq7FMDiwNkztASb7kCOR1vOP8q6L2/TSfBCHSHBzaklBXgzP/M
	 /vPV9bVtqmwpxr2iqrJSx2M+kezCkKDzNIW77smXJlte/9K4WtkYRK+TOMoNjFwFB4
	 MtYtsYMEU5dWbNOQrSc5HfOkYeyhbf26We46lWLHdrU7MxMxvbtWfH4h6nJyCJpY03
	 mKI9DQ22deF5g3cfH+sZn9bgyhcjrf8wnzS/kujaAi3ZIra1qaGoWriTeskmaGReVk
	 OqplmhnEVOYsDGMMYvpmtUeWDha2SXYCyR1Y3A7L7dw6Ucod8yPG0Sgrlec7yTkG1d
	 9OIfqTKZxuFdA==
Received: from [100.64.0.214] (unknown [100.64.0.214])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange secp256r1 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: nicolas)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 6050C17E00B2;
	Tue, 24 Nov 2026 04:47:41 +0100 (CET)
Message-ID: <afb9f3dd7efebeadcfd04621d57e72374313fcc8.camel@collabora.com>
Subject: Re: [PATCH v7 3/3] media: verisilicon: Create AV1 helper library
From: Nicolas Dufresne <nicolas.dufresne@collabora.com>
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>, 
	p.zabel@pengutronix.de, mchehab@kernel.org, heiko@sntech.de,
 hverkuil@kernel.org
Cc: linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, 
	linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Date: Mon, 23 Nov 2026 22:47:39 -0500
In-Reply-To: <20261120143135.71134-4-benjamin.gaignard@collabora.com>
References: <20261120143135.71134-1-benjamin.gaignard@collabora.com>
	 <20261120143135.71134-4-benjamin.gaignard@collabora.com>
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
X-CRM114-CacheID: sfid-20261123_194747_745615_E18233A2 
X-CRM114-Status: GOOD (  16.69  )
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
Content-Type: multipart/mixed; boundary="===============4444427823379039451=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-13.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

--===============4444427823379039451==
Content-Type: multipart/signed; micalg="pgp-sha512";
	protocol="application/pgp-signature"; boundary="=-rIlrM5CQacjfgEh5f7QL"

--=-rIlrM5CQacjfgEh5f7QL
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Le vendredi 20 novembre 2026 =C3=A0 15:31 +0100, Benjamin Gaignard a =C3=A9=
crit=C2=A0:
> Regroup all none hardware related AV1 functions into a helper library.
> The goal is to avoid code duplication for future AV1 codecs.
>=20
> Tested on rock 5b board Fluster score remains the same 204/241.
>=20
> Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
> Reviewed-by: Nicolas Dufresne <nicolas.dufresne@collabora.com>
> ---
> change in v7:
> - rebase the series on v7.4-rc3 tag
>=20
> change in v6:
> - include b84f6533a8ed ("media: verisilicon: rockchip: guard VPU981 AV1 d=
ivisor and tile buffer")
>   and 367db8b23c26 ("media: verisilicon: rockchip: reject AV1 frames exce=
eding the tile capacity")
>   fixes into the patch to not losing these improvements.
>=20
>  drivers/media/platform/verisilicon/Makefile   |    7 +-
>  .../media/platform/verisilicon/hantro_av1.c   |  816 ++++++++++++
>  .../media/platform/verisilicon/hantro_av1.h   |   64 +
>  ...entropymode.c =3D> hantro_av1_entropymode.c} |   18 +-
>  ...entropymode.h =3D> hantro_av1_entropymode.h} |   18 +-
>  ...av1_filmgrain.c =3D> hantro_av1_filmgrain.c} |  125 +-
>  .../verisilicon/hantro_av1_filmgrain.h        |   48 +
>  .../media/platform/verisilicon/hantro_hw.h    |    7 +-
>  .../verisilicon/rockchip_av1_filmgrain.h      |   36 -
>  .../verisilicon/rockchip_vpu981_hw_av1_dec.c  | 1091 ++---------------
>  .../platform/verisilicon/rockchip_vpu_hw.c    |    7 +-
>  11 files changed, 1140 insertions(+), 1097 deletions(-)
>  create mode 100644 drivers/media/platform/verisilicon/hantro_av1.c
>  create mode 100644 drivers/media/platform/verisilicon/hantro_av1.h
>  rename drivers/media/platform/verisilicon/{rockchip_av1_entropymode.c =
=3D> hantro_av1_entropymode.c} (99%)
>  rename drivers/media/platform/verisilicon/{rockchip_av1_entropymode.h =
=3D> hantro_av1_entropymode.h} (95%)
>  rename drivers/media/platform/verisilicon/{rockchip_av1_filmgrain.c =3D>=
 hantro_av1_filmgrain.c} (85%)
>  create mode 100644 drivers/media/platform/verisilicon/hantro_av1_filmgra=
in.h
>  delete mode 100644 drivers/media/platform/verisilicon/rockchip_av1_filmg=
rain.h
>=20
> diff --git a/drivers/media/platform/verisilicon/Makefile b/drivers/media/=
platform/verisilicon/Makefile
> index f6f019d04ff0..a1dd6c2d29be 100644
> --- a/drivers/media/platform/verisilicon/Makefile
> +++ b/drivers/media/platform/verisilicon/Makefile
> @@ -19,7 +19,10 @@ hantro-vpu-y +=3D \
>  =09=09hantro_hevc.o \
>  =09=09hantro_mpeg2.o \
>  =09=09hantro_vp8.o \
> -=09=09hantro_vp9.o
> +=09=09hantro_vp9.o \
> +=09=09hantro_av1.o \
> +=09=09hantro_av1_filmgrain.o \
> +=09=09hantro_av1_entropymode.o
> =20
>  hantro-vpu-$(CONFIG_VIDEO_HANTRO_IMX8M) +=3D \
>  =09=09imx8m_vpu_hw.o
> @@ -33,8 +36,6 @@ hantro-vpu-$(CONFIG_VIDEO_HANTRO_ROCKCHIP) +=3D \
>  =09=09rockchip_vpu2_hw_mpeg2_dec.o \
>  =09=09rockchip_vpu2_hw_vp8_dec.o \
>  =09=09rockchip_vpu981_hw_av1_dec.o \
> -=09=09rockchip_av1_filmgrain.o \
> -=09=09rockchip_av1_entropymode.o \
>  =09=09rockchip_vpu_hw.o
> =20
>  hantro-vpu-$(CONFIG_VIDEO_HANTRO_SUNXI) +=3D \
> diff --git a/drivers/media/platform/verisilicon/hantro_av1.c b/drivers/me=
dia/platform/verisilicon/hantro_av1.c
> new file mode 100644
> index 000000000000..2cde32f0e935
> --- /dev/null
> +++ b/drivers/media/platform/verisilicon/hantro_av1.c
> @@ -0,0 +1,816 @@
> +// SPDX-License-Identifier: GPL-2.0-only
> +/*
> + * Copyright (c) 2026, Collabora

To be accurate:

+ * Copyright (c) 2023-2026, Collabora

--=-rIlrM5CQacjfgEh5f7QL
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQTvDVKBFcTDwhoEbxLZQZRRKWBy9AUCawUI2wAKCRDZQZRRKWBy
9IsJAQDzPkOm075MMWXCcLeu5KEwD4phFMCdQJprCIwoqnSh/AD+JXWa/422lgSo
mr69aLQM+/vfddhCSMK0pGiFDSIpzgs=
=rDF1
-----END PGP SIGNATURE-----

--=-rIlrM5CQacjfgEh5f7QL--


--===============4444427823379039451==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============4444427823379039451==--

