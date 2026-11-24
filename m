Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 91400606A330
	for <linux-rockchip@archiver.kernel.org>; Tue, 24 Nov 2026 20:45:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=Zd4axbQd;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=ndufresne-ca.20260707.gappssmtp.com header.i=@ndufresne-ca.20260707.gappssmtp.com header.a=rsa-sha256 header.s=20260707 header.b=scvfmLHs
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:Cc:To:From:Subject:Message-ID:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=5EojzM4O5q/H9eqLKyb1sqwfBPLZEZUSDzVsI03GXzM=; b=Zd4axbQdmshMOaGO9TOGthlHjN
	cuuVgY5+gjekjAxGKaViln2znlh/jSoU4pwPdfq34yE9rwxitQNYOAVydz0xp8E0gD06UXyNUKWUN
	MCAuKPgJcfEAPSl/0FOOTHGtbs9Z2gkvYnKtSnqaSfUCVhvNETGw1iFV8T/CTb3AbrXERrasqM78T
	fu6cPKpSVFBADLtjamSGtzfmKZwBV7NAsmhk1WgzSNDvErq6YgM8LFGn5voCI/DJDvEP0mGy+RGM3
	pzOPUD53WEN+sgImmnQsVjveH3fpzx1u0eG5488PJl3qeYXvS4tKwZymx1bT31hWbSAcpT7z7puF/
	JnxBBMnw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVxOG-00000007kgJ-2VZK;
	Tue, 24 Nov 2026 20:45:24 +0000
Received: from mail-qv1-xf2c.google.com ([2607:f8b0:4864:20::f2c])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVxOE-00000007kfC-2kr1
	for linux-rockchip@lists.infradead.org;
	Tue, 24 Nov 2026 20:45:24 +0000
Received: by mail-qv1-xf2c.google.com with SMTP id 6a1803df08f44-9213fddb596so63064516d6.2
        for <linux-rockchip@lists.infradead.org>; Tue, 24 Nov 2026 12:45:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ndufresne-ca.20260707.gappssmtp.com; s=20260707; t=1795553121; x=1796157921; darn=lists.infradead.org;
        h=mime-version:user-agent:content-type:autocrypt:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=10XH4ej2oXPoMU/XuFtT77K3dT70WQ+UCraqr7WioX0=;
        b=scvfmLHseBjPIwvPrJJDeGjwkCIFmiDbBOUz/CRSPPqJKt7fVjO1HHJ2NDCDvFcHXD
         QLktuGvQBd1JA3H1bCOPi9n5nxDBOIA3unGUtZ7SNJNsETApjoQT/pHzZNcKy+IVKQf4
         DxLLHFElvrB8oqfVjslCGa57QqZ9v0oETYjoWVbZBXupdkphVxx7iTBYCs6OU/Aw5c+o
         OEJiclPaew9j/tRpJC6zYZZo6qmzKY+pc4jJ5hnAofxm+tOmTz96PMsztBhFTYzgd7F8
         /8VrRo5Wj+yx99BnqpobkabNf72RnUOiMSM9ktsmJxQDNCwC2aCzQyYEd16Bu0jKpQiL
         Ijdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1795553121; x=1796157921;
        h=mime-version:user-agent:content-type:autocrypt:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=10XH4ej2oXPoMU/XuFtT77K3dT70WQ+UCraqr7WioX0=;
        b=hgHTHTQC4XAKOD4dvvaXciliJmer0acC+N0fMli2e4Zu2BC/aZvJbkGy/2Pfa9SSc2
         R9B96heiiWY5UXl5YjthiqfSV5zf1pOVwmW8D8IB99HKee8vhdmOLdeUQC4Ct0FAoyan
         qls87Ap6224pk8f0SHbDzN+aKxqfysPqhTqxYrGmMRNIhudTCzysytDEqqjhwuS5y4E9
         nnrjdC6VAIveN1EJ7RPf543oTTmYMqr+Y9N/U0DJnkf7TlVj4hCnGC1zMYk6y1f7Zs6g
         6+l8+T6DNvJcydfdJitFysJuDA06thVd47D6VqecTtBtKvAAlfLtEKxZV/v8QjdjUca7
         /qRA==
X-Forwarded-Encrypted: i=1; AL+hErFzcoeMih3HsIYBJTV7e6xe1//3JUPjG0VTDM9qsXs6f9AdcvGy8oB5NPc0xpkowrlSCXcPU6+AbKRBYev/xA==@lists.infradead.org
X-Gm-Message-State: APuU4Z+pd1rq/OSedBT7iP5wwJ14LorvSf9dOGVS6j2PAvfyrNK45Saf
	Xf8Ru68ODXxzIazxBZIX8fOX9W80RwHZIwVmxkxzL3U6qyRDnLzjgHNQ20wa+bOTdjVsM1jSuBu
	17WHW
X-Gm-Gg: AZFdTZcBk2rRZOlLISgqkJ6EIva+hrrzDZWVsQ+mJ9PF1aoS22TB+pOL3fbwBgnWqVm
	RQWZuL/+Yq60u2zIa37lEAFj5jv+one1Kl2UiqT+fWQ3cgeS7pAojk/VTv0P9bihHftTf3SPm2H
	1WG2clutgb9YUY+4NgBKamr+qJ+DLP5IF7ajl4HEH/cL/T/FAglifEDNZObd8wckMX/sKrZPkr1
	16H99CZ7PDsyBLRX+P5IUIWWJT/2CphttswAbist6OIzuigP/yObm98AdGjnEHL7uBCOcVypMoe
	L3lrrqABAVpVehzyQQGXMx6SADjruz58zy181c0ErSGRPg6rUiPmjSQXhcl8p0V/HqPzC3LTENv
	sI6HMlwLQkxYSGSJ4Wdl8I+rzDj6MkeCWYWARqKoqW+kHI/YEESaQsL0W5z2ht7Rp6vZS3cMhQ+
	8WjYgzdxUMYEAfNEPPY86VjhHEX17/bLrFoD5yEBkeCm4nTCALj/yRXevHBOsXo4zJ3u8xUet2h
	hEGLD6LV3TMieG6m4k7Tkn9IOGDDZ7eBGXo5aqUkR2GVKD8PH6TJ8+JAulHeAJtKosIKcmjd4qx
	j4C/vXz2hanr8GJTEaS7HpUjJPo7lxTdSFAlNMVyXWsB3NVp4StAJHM=
X-Received: by 2002:a05:6214:5243:b0:920:fd83:6976 with SMTP id 6a1803df08f44-92134b3f391mr282710326d6.50.1795553121021;
        Tue, 24 Nov 2026 12:45:21 -0800 (PST)
Received: from ?IPv6:2606:6d00:11:8ec9::c41? ([2606:6d00:11:8ec9::c41])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-92134a08552sm142793896d6.34.2026.11.24.12.45.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Nov 2026 12:45:20 -0800 (PST)
Message-ID: <fb95b4f8fa3db34a407177d1efcd100acfd0e918.camel@ndufresne.ca>
Subject: Re: [PATCH v2 02/17] media: rockchip: rga: add comment about pixel
 alignment for YUV formats
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
Date: Tue, 24 Nov 2026 15:45:18 -0500
In-Reply-To: <20260916-spu-rga3multicore-v2-2-23aa2cb74e61@pengutronix.de>
References: <20260916-spu-rga3multicore-v2-0-23aa2cb74e61@pengutronix.de>
	 <20260916-spu-rga3multicore-v2-2-23aa2cb74e61@pengutronix.de>
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
X-CRM114-CacheID: sfid-20261124_124522_766097_AD5DC9C5 
X-CRM114-Status: GOOD (  16.43  )
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
Content-Type: multipart/mixed; boundary="===============4512554054608402902=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-13.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

--===============4512554054608402902==
Content-Type: multipart/signed; micalg="pgp-sha512";
	protocol="application/pgp-signature"; boundary="=-lDiiVpW7LbsI8l96Z/jE"

--=-lDiiVpW7LbsI8l96Z/jE
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Le mercredi 16 septembre 2026 =C3=A0 17:09 +0200, Sven P=C3=BCschel a =C3=
=A9crit=C2=A0:
> Add a comment to clarify the use of fixed step_height values for all YUV
> formats. While the commit introducing the change already explains the
> reasoning, add an explicit comment to improve the visibility of the
> reasoning.
>=20
> Signed-off-by: Sven P=C3=BCschel <s.pueschel@pengutronix.de>

Reviewed-by: Nicolas Dufresne <nicolas.dufresne@collabora.com>

> ---
>  drivers/media/platform/rockchip/rga/rga.c | 10 ++++++++++
>  1 file changed, 10 insertions(+)
>=20
> diff --git a/drivers/media/platform/rockchip/rga/rga.c b/drivers/media/pl=
atform/rockchip/rga/rga.c
> index bd0afd33affe4..efe5541078214 100644
> --- a/drivers/media/platform/rockchip/rga/rga.c
> +++ b/drivers/media/platform/rockchip/rga/rga.c
> @@ -414,6 +414,16 @@ static int vidioc_try_fmt(struct file *file, void *p=
riv, struct v4l2_format *f)
>  =09=09.step_height =3D 1,
>  =09};
> =20
> +=09/*
> +=09 * Technically 4:2:2 YUV formats don't need a step_height of 2.
> +=09 * But for the RGA3 this is explicitly documented in  section 5.6.3
> +=09 * of the RK3588 TRM Part 2.
> +=09 * And the RGA2 vendor driver also checks that the height (and width)
> +=09 * is aligned to 2 when a YUV format is used.
> +=09 *
> +=09 * Therefore be safe and always align width and height to 2
> +=09 * when a YUV format is used.
> +=09 */
>  =09if (v4l2_is_format_yuv(v4l2_format_info(pix_fmt->pixelformat))) {
>  =09=09frmsize.step_width =3D 2;
>  =09=09frmsize.step_height =3D 2;

--=-lDiiVpW7LbsI8l96Z/jE
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQTvDVKBFcTDwhoEbxLZQZRRKWBy9AUCawX3XgAKCRDZQZRRKWBy
9NOrAQDQ51rGU5HqaJy8yr4bx5UgQdoV3U9t6CfAeYignkSaIgEA0Z9ghLQ8ceGI
03oKRHcli00mhOeK2j41ZGSrl5we1AE=
=ZWqR
-----END PGP SIGNATURE-----

--=-lDiiVpW7LbsI8l96Z/jE--


--===============4512554054608402902==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============4512554054608402902==--

