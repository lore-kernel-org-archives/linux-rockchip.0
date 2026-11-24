Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 02BC1606A31E
	for <linux-rockchip@archiver.kernel.org>; Tue, 24 Nov 2026 20:46:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=3T1de/Lz;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=ndufresne-ca.20260707.gappssmtp.com header.i=@ndufresne-ca.20260707.gappssmtp.com header.a=rsa-sha256 header.s=20260707 header.b=PqRwvsNa
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:Cc:To:From:Subject:Message-ID:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=lDP4aBs8IGkikTRCLqpyWXRja4HSK9adJZ4sceNW7JE=; b=3T1de/LzUHKva7h2FtpNRYlk/K
	JA4L9wMyinBzy3AV/HOrNeu0KE3RaNqUBkk4M0W2oniupR2SLGnws5w8CRMOJ8dBM5G16oQH8ix48
	Y/PNjHadgN97huuEuSsTdiHLapr4DyotrgU3x/6s9JDBktL27tMp/VcDR1snwyPNUdcyW3/y0qujA
	1QQDN+r7AoR2AF8322A80wkcANyPnQfIbq1CXqHfuvhx7VoHg6xfB0jqnfV27i8M9MD23jOS02CIb
	CBVa6yjAS4INqkV520TnBG9RvbyBX6OZ+bCFqNFKv7lYoMhcEvygIeEfnPQPEvRdfwCncfYDi/onE
	lFaTe0EQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVxPH-00000007l01-3bkn;
	Tue, 24 Nov 2026 20:46:27 +0000
Received: from mail-qk1-x72f.google.com ([2607:f8b0:4864:20::72f])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVxPE-00000007kyV-1mvz
	for linux-rockchip@lists.infradead.org;
	Tue, 24 Nov 2026 20:46:26 +0000
Received: by mail-qk1-x72f.google.com with SMTP id af79cd13be357-94959217274so529745785a.0
        for <linux-rockchip@lists.infradead.org>; Tue, 24 Nov 2026 12:46:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ndufresne-ca.20260707.gappssmtp.com; s=20260707; t=1795553183; x=1796157983; darn=lists.infradead.org;
        h=mime-version:user-agent:content-type:autocrypt:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=GAeuGjA0ohrbKm/YKYQMvDRAMTyL5dqBXRmsdS2B1bw=;
        b=PqRwvsNaXCUwNZW+sLfLiPbJhbFpgjILBI9TlXSxF0RsATNqaG4Xn3M4CDHZqlm7MG
         NOiGI4kMO2FQmds6qcmybgR3KLdOU6+hXLdeouK/M9+28g+TUqGD1fND/OBM+l+dzQWQ
         Mk6LDwLwSWOq7IzI0zUjFmnuZl8iGaq/vejmkeNfxCF8NZiSX28wBo8DXEpzcvdRCfZo
         1UakwshsMuISBNmbEAtqJfxo22QidvuJZHTl3pSF9/qLETO5py6vcEk1k7ZHn5OV3BDv
         Y5cR5EYx1QD9A5I1iY4ej19L/x381kpc04+HkMxSFoTp4/SNH71IxrRmtBfO7j/arAaJ
         dSuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1795553183; x=1796157983;
        h=mime-version:user-agent:content-type:autocrypt:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=GAeuGjA0ohrbKm/YKYQMvDRAMTyL5dqBXRmsdS2B1bw=;
        b=lA+5kLyqo40N7y/dWDnRgO2wJC4w+6BOa945WR4+/bVEhpprIptK+oqo8Yeh4aX1i9
         Or5Rk9Izs7xWPm752k0iE/Kf//wv53dP+iAGEh+p4eLugdBfs61QWwRlbRjr6mWiYLLz
         9NvgyfqssBYAHrEHxRnVnCQmT93xOHj7RoKtlOzS3oJciptdjE/T2O+f0Qt7DIYxu8PC
         wQz1SJhkElzozjItb6zv5C9eOt4yI74aleqT3RPaS30xYgw7a4idzJ5bkTQa6H+SObc8
         X7pYsx/RHTkbtqPAVpEEKw9x5qJWUfhAcxJ2KIKeou3xcduimHVmPlitkdBT/tXQxeLf
         OKAw==
X-Forwarded-Encrypted: i=1; AL+hErGtTbWUH3ltME2w72sBMxepWClTICPsFz/bs/jjIFNPlQsS20YNrU3b6mXqJgT2L4LD3I0i/QAbv5KoR31HyA==@lists.infradead.org
X-Gm-Message-State: APuU4Z98Lz2ghKXehlFZxKZga9uGkyZLhXzTVgCM4X8iu7Z+Q+9zaJ9Z
	QOiNUmXAf07ykFhQVhwNubD8q2GBSmnkn5ux2qNteM35vy5z93+z1PYo6TO8xAWpEZk=
X-Gm-Gg: AZFdTZcGQ12w14Kf8I5ZVXQFpElJCJdC6nOFExtLSr/eZs8m8WJkTDJseLz2XkJm69S
	pQnW5RBIFc/AS/JZzslaf8wa6k16baeA6y/yy8awCyyCY2D3hfyj90b5kUEzHt2y5IRcmvR9t94
	wYlSFUaT2RTkx1Dk/xVzVMCxLl3/r+Os+tYNldMUOhDoB4ruWJHW8+HM0qEid40+RMV+IWUFRPu
	pqOFkM6c3I7FO97jBDho3g3dGwLfcPWv5ikuJPHt/7QZ3Yw4EcSExqLutf18xWxzup4vEubgqEb
	U1G1HBW6bxCGGeyJG/VeMSLVP6jKo4DYi3O6Mt84oEFL9UTm4F1BKJ5xRaIHsslSymNxtBEbsLq
	kFNcw50lla2doZktLOMXOioH5NDj8uitQdLKmMMPlG3YnF28+9nN516nef3PRGA6JFZItqtqC+4
	qIEzfRnK2Tc8ByvDbiWSZia829d5MDVe6NDJwhtDOBN876MlyAZT4Hji3Ako3WNpt9HF/VBR33A
	l80dVl1BKfRP4vyIpKOd/3Jd7tGAxo5CE+qatwSPEL2AjHGbYT2RtuHMnrCrlSRE/kgK8b6NVqk
	Hf/4CtzfAAzVSMMgAQun5mf7eBHHa1FNPGIoXVt3gGT9M8Nuj/rHCaU=
X-Received: by 2002:a05:620a:2605:b0:949:9f1e:d8b with SMTP id af79cd13be357-949ba99cb12mr2707807885a.16.1795553183318;
        Tue, 24 Nov 2026 12:46:23 -0800 (PST)
Received: from ?IPv6:2606:6d00:11:8ec9::c41? ([2606:6d00:11:8ec9::c41])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-949bb35005dsm1135466685a.11.2026.11.24.12.46.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Nov 2026 12:46:22 -0800 (PST)
Message-ID: <6e1ea0410e9a1ff6a811914a0718117e18763374.camel@ndufresne.ca>
Subject: Re: [PATCH v2 03/17] media: rockchip: rga: move early return into
 if condition in vidioc_enum_fmt
From: Nicolas Dufresne <nicolas@ndufresne.ca>
To: Sven =?ISO-8859-1?Q?P=FCschel?= <s.pueschel@pengutronix.de>, Jacob Chen
	 <jacob-chen@iotwrt.com>, Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>, 
 Mauro Carvalho Chehab
	 <mchehab@kernel.org>, Heiko Stuebner <heiko@sntech.de>, Philipp Zabel
	 <p.zabel@pengutronix.de>
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	kernel@pengutronix.de, Detlev Casanova <detlev.casanova@collabora.com>, 
 Michael Tretter <m.tretter@pengutronix.de>, Guangshuo Li
 <lgs201920130244@gmail.com>
Date: Tue, 24 Nov 2026 15:46:21 -0500
In-Reply-To: <20260916-spu-rga3multicore-v2-3-23aa2cb74e61@pengutronix.de>
References: <20260916-spu-rga3multicore-v2-0-23aa2cb74e61@pengutronix.de>
	 <20260916-spu-rga3multicore-v2-3-23aa2cb74e61@pengutronix.de>
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
User-Agent: Evolution 3.62.1 (3.62.1-1.fc45) 
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261124_124624_480362_064B5F59 
X-CRM114-Status: GOOD (  17.46  )
X-Spam-Score: -1.9 (-)
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============6439347082892239478=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-13.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

--===============6439347082892239478==
Content-Type: multipart/signed; micalg="pgp-sha512";
	protocol="application/pgp-signature"; boundary="=-Kr3UTuiIQsdfzM6RH7S6"

--=-Kr3UTuiIQsdfzM6RH7S6
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Le mercredi 16 septembre 2026 =C3=A0 17:09 +0200, Sven P=C3=BCschel a =C3=
=A9crit=C2=A0:
> Instead of a doing an early return when we don't have a capture device,
> merge the condition with the following if condition. This improves
> readability, as the condition now explicitly contains a check for a
> capture device instead of returning when we don't have a capture device.
>=20
> Also use the V4L2_TYPE_IS_CAPTURE helper and improve the comment.
>=20
> The early return if was copied from the vivid drivers
> vivid_enum_fmt_vid function.
>=20
> Signed-off-by: Sven P=C3=BCschel <s.pueschel@pengutronix.de>

Reviewed-by: Nicolas Dufresne <nicolas.dufresne@collabora.com>

> ---
>  drivers/media/platform/rockchip/rga/rga.c | 14 ++++++++------
>  1 file changed, 8 insertions(+), 6 deletions(-)
>=20
> diff --git a/drivers/media/platform/rockchip/rga/rga.c b/drivers/media/pl=
atform/rockchip/rga/rga.c
> index efe5541078214..8c03422d669cf 100644
> --- a/drivers/media/platform/rockchip/rga/rga.c
> +++ b/drivers/media/platform/rockchip/rga/rga.c
> @@ -372,12 +372,14 @@ static int vidioc_enum_fmt(struct file *file, void =
*priv, struct v4l2_fmtdesc *f
>  =09if (ret !=3D 0)
>  =09=09return ret;
> =20
> -=09if (f->type !=3D V4L2_BUF_TYPE_VIDEO_CAPTURE &&
> -=09    f->type !=3D V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE)
> -=09=09return 0;
> -
> -=09/* allow changing the quantization and xfer func for YUV formats */
> -=09if (v4l2_is_format_yuv(v4l2_format_info(f->pixelformat)))
> +=09/*
> +=09 * Allow changing the quantization and ycbcr_enc func for YUV formats
> +=09 * on the capture side for RGB -> YUV conversions.
> +=09 *
> +=09 * These flags are only relevant for capture devices.
> +=09 */
> +=09if (V4L2_TYPE_IS_CAPTURE(f->type) &&
> +=09    v4l2_is_format_yuv(v4l2_format_info(f->pixelformat)))
>  =09=09f->flags |=3D V4L2_FMT_FLAG_CSC_QUANTIZATION |
>  =09=09=09    V4L2_FMT_FLAG_CSC_YCBCR_ENC;
> =20

--=-Kr3UTuiIQsdfzM6RH7S6
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQTvDVKBFcTDwhoEbxLZQZRRKWBy9AUCawX3nQAKCRDZQZRRKWBy
9EPvAP9qmu6NjbxJIVrwPbtNCb2o5iC32gRQgn1s5lFgDIFY+QD9GU/Itmf98PeY
254GJzxL0n7DdfgEkaSI/if1tyvWuwE=
=f1zz
-----END PGP SIGNATURE-----

--=-Kr3UTuiIQsdfzM6RH7S6--


--===============6439347082892239478==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============6439347082892239478==--

