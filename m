Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9E2F7606A31E
	for <linux-rockchip@archiver.kernel.org>; Tue, 24 Nov 2026 03:40:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=InMRzHc+;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=collabora.com header.i=@collabora.com header.a=rsa-sha256 header.s=mail header.b=h6mdar+A
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:Cc:To:From:Subject:Message-ID:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=DkFOjwPDM8JxVw4W0IpnMYq5KxjYsxttA7kiSxAlWVg=; b=InMRzHc+uHK4E4quqo17peto/q
	GgJBVy8S+GxdaudgNKHR26ULS0vjBm9hQAofXGZH2zDaXgs42FOz1wg+6lMgN8FiFezD2hTYseZ9N
	aZ6x71knMp/EfuGDZvBdHcjDVQpUC1Qk826mPgryai9ZzCAly0ejqv8o+luKWc0jAtfjFTHDmZ4gH
	7w4bE4f9FH8Hlq7B2N18TbZcE2prnp0CC+ptE8VwCiKqTtcej8lQQ0Utq1AzuqaR5HKPiPxyxdyRP
	3LyLbSEy3o0Po6b8/LnYuX7T9r0PhExsdiOCrfjeE6AlLwnxlP7bPbHVu6HMNVfPxKJYHv/1LiWie
	evsNLXvA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVhOk-00000005SaB-47zN;
	Tue, 24 Nov 2026 03:40:50 +0000
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVhOh-00000005SYq-04ea
	for linux-rockchip@lists.infradead.org;
	Tue, 24 Nov 2026 03:40:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1795491643;
	bh=QhqdYdT7M/jtRCJyOksKmWAlKfDFnwolfbIqPbeF2ZQ=;
	h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
	b=h6mdar+AFMHCToI32rjA1wBIRW0J4RGqS4fhfc8Yu1OxdPzFLH5DcYylsVe8Otx0v
	 kKAs6rwagzY1zT1gTNxKIU+qFcqfk8hVPgaPQCpQJ6yAKXAkBhjkMxv9KK2gOrNKZp
	 dZLPrPqQTvA+RseBr8ogAYrFMttuBXLmNV/3nNC7/7dTayvsN6/osYwH2Q5g0LIv/l
	 blnuWIghjBRPqWyiZDNSMVDtEi3qZVm6TTxKxL2KbF4iKO3kdtFVCFeojLhF8v5ynp
	 PwLFoMoJn7EdEVg5NCGJjbNamv2Sczyg/MfeUwqFXdOjPNzg0p3XgHPVM/eRJzupO0
	 c8OytkyiiRc6A==
Received: from [100.64.0.214] (unknown [100.64.0.214])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange secp256r1 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: nicolas)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 6637417E0CD7;
	Tue, 24 Nov 2026 04:40:42 +0100 (CET)
Message-ID: <542f7fd2973f4b32ec55bb5c3314535a2c4b82a6.camel@collabora.com>
Subject: Re: [PATCH v3 0/7] media: verisilicon: simplify auxiliary buffers
 allocation
From: Nicolas Dufresne <nicolas.dufresne@collabora.com>
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>, 
	p.zabel@pengutronix.de, mchehab@kernel.org
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org
Date: Mon, 23 Nov 2026 22:40:40 -0500
In-Reply-To: <20261123095905.60622-1-benjamin.gaignard@collabora.com>
References: <20261123095905.60622-1-benjamin.gaignard@collabora.com>
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
X-CRM114-CacheID: sfid-20261123_194048_444612_11505858 
X-CRM114-Status: GOOD (  15.13  )
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
Content-Type: multipart/mixed; boundary="===============7973220606600427416=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-8.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

--===============7973220606600427416==
Content-Type: multipart/signed; micalg="pgp-sha512";
	protocol="application/pgp-signature"; boundary="=-d1+zo/NEbm+5SALSuWmp"

--=-d1+zo/NEbm+5SALSuWmp
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Le lundi 23 novembre 2026 =C3=A0 10:58 +0100, Benjamin Gaignard a =C3=A9cri=
t=C2=A0:
> Verisilicon stateless video decoder driver allocates lot of auxiliary
> buffers to decode bitstreams. These allocations duplicate a lot of code.
> This series add helpers functions to allocate and free auxiliary
> buffers. This simplify the driver code and will allow to implement more
> easly incoming feature like disentanglement data buffers from mv and rfc=
=20
> buffers or adding reference frame support for more codecs.
>=20
> This series has been tested with fluster on IMX8MP for h264, hevc, vp8=
=20
> and vp9 codecs, and on rk3588 for av1.
>=20
> This series depends of this one:
> https://patchwork.linuxtv.org/project/linux-media/list/?series=3D34366

This is only pending the dependency, which one of the hidden changes had is=
sues,
please fix and update, ping me once ready.

Nicolas

>=20
> Regards,
> Benjamin
>=20
> changes in v3:
> - As suggested by Philipp do not mask hantro_allocate_aux_buf() returned
>   value.
> - In hantro_allocate_aux_buf() and hantro_free_aux_buf() only set vpu if
>   ctx isn't NULL.
>=20
> changes in v2:
> - rebase on top of media: verisilicon: Create AV1 helper library v7
> - tag reviewed-by tag
> - fix patch 1 and 7 commit messages
>=20
> =20
> Benjamin Gaignard (7):
>   media: verisilicon: Add helpers to allocate and free auxiliary buffers
>   media: verisilicon: AV1: Use alloc/free helpers for auxiliary buffers
>   media: verisilicon: h264: Use alloc/free helpers for auxiliary buffers
>   media: verisilicon: hevc: Use alloc/free helpers for auxiliary buffers
>   media: verisilicon: vp8: Use alloc/free helpers for auxiliary buffers
>   media: verisilicon: vp9: Use alloc/free helpers for auxiliary buffers
>   media: verisilicon: mpeg4: Use alloc/free helpers for auxiliary
>     buffers
>=20
>  drivers/media/platform/verisilicon/hantro.h   |   4 +
>  .../media/platform/verisilicon/hantro_av1.c   | 191 +++++-------------
>  .../media/platform/verisilicon/hantro_h264.c  |  13 +-
>  .../media/platform/verisilicon/hantro_hevc.c  | 133 ++++--------
>  .../media/platform/verisilicon/hantro_mpeg2.c |  19 +-
>  .../platform/verisilicon/hantro_postproc.c    |  21 +-
>  .../media/platform/verisilicon/hantro_v4l2.c  |  37 ++++
>  .../media/platform/verisilicon/hantro_vp8.c   |  36 +---
>  .../media/platform/verisilicon/hantro_vp9.c   |  42 ++--
>  9 files changed, 169 insertions(+), 327 deletions(-)

--=-d1+zo/NEbm+5SALSuWmp
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQTvDVKBFcTDwhoEbxLZQZRRKWBy9AUCawUHOQAKCRDZQZRRKWBy
9F6EAQCwseq4NDQojK6PfR3v2YM5UAI7KZmdH0HcIjV+x6cdkQEAt4UtMeEuSbVm
CWa7124MFpsFveeuJOqp6SHTfm/plgU=
=AqRt
-----END PGP SIGNATURE-----

--=-d1+zo/NEbm+5SALSuWmp--


--===============7973220606600427416==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============7973220606600427416==--

