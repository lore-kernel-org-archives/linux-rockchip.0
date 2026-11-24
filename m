Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9673B606A31E
	for <linux-rockchip@archiver.kernel.org>; Tue, 24 Nov 2026 22:13:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=DQd2s1VT;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=ndufresne-ca.20260707.gappssmtp.com header.i=@ndufresne-ca.20260707.gappssmtp.com header.a=rsa-sha256 header.s=20260707 header.b=bTzFFxst
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:Cc:To:From:Subject:Message-ID:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=a2ak4zM8VyKQsgS4M5X8XAcAJwV6mybOW17cxV5QVV0=; b=DQd2s1VTx1zled5ePGw8eEDBsv
	rb3BpGsxaqqENc5x1bjzGwVx3e8MQRSAyGx0zg1wPLvyzzdJPvyKV3G9xDRWTo4YBDoj8bjjq9Xxa
	T+4grbTtCQFKagsBvOXTZEEtijPLhpu4Ky9C80s8wNyj7PCzWyBhx05Zy94KgiFBNTJ0cDhDyYDI3
	oIoN1bnqPzOpSaf1r9rpQlznSKSueK2HN4Po/kKRvaLZXmUkE+PNkykJO03YAPregPVenadKDNYBE
	+pmzIaCPoN7updChScEbIjkF7LH+s6D/Sh0qzVP6JzFT3G/33ZRgsNv7UWZi4dWQyt1VHSTDm+Y1B
	mcrvY0Kg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVyl0-00000007y87-1vKv;
	Tue, 24 Nov 2026 22:12:58 +0000
Received: from mail-qk1-x729.google.com ([2607:f8b0:4864:20::729])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVykx-00000007y7F-3CM7
	for linux-rockchip@lists.infradead.org;
	Tue, 24 Nov 2026 22:12:56 +0000
Received: by mail-qk1-x729.google.com with SMTP id af79cd13be357-94961b68685so432249185a.3
        for <linux-rockchip@lists.infradead.org>; Tue, 24 Nov 2026 14:12:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ndufresne-ca.20260707.gappssmtp.com; s=20260707; t=1795558374; x=1796163174; darn=lists.infradead.org;
        h=mime-version:user-agent:content-type:autocrypt:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=a+lCQh9rFeHZpRcts8xKmbAzUymCGM5+mzuki638UuI=;
        b=bTzFFxstmHjzwtWXdBamAdqf64YYVE4MZitfOfd89ertqEr5jtEjBpXTUvpExk4iPu
         pUuDStSaL0tzn1j8tH72HtCymrdRqx1zVQkbABi+QsuhzEF0xD+w/MtyUoid+xibJxO2
         ffPYEty7kkciO0y39V67R4Z7HwuljhKh3stZFayBdT+9q77lCPjO5gQqaCuPUWMvvjA6
         iakM82XNE5Q8wmMZ4v4uKMY5lhtaQAQUMcZdQaQJDIvncmnMV8NykIZvM8xZNnFmSAdQ
         KMJrALwoVX5aHHdjfpTdI2VhEMNQAWyW01kiKD9MSrKGK1oI5wtg3P8JeBQJvSVoWD60
         9oBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1795558374; x=1796163174;
        h=mime-version:user-agent:content-type:autocrypt:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=a+lCQh9rFeHZpRcts8xKmbAzUymCGM5+mzuki638UuI=;
        b=of2hmn/OkKsrTGsfvCkZgvUbn6iaFIh6j2SAiGv3QS2yaGEYnc4FEPhdIQmwseq+LL
         RmPICeYKwKYSNW7+DY+ygWOIfbRo2XljifKKhTUto5oSoCWRCDYFM1a9ptUAQP6LwHYb
         ie6W4FxDeePZnZf0lqfZ4vyeUV1ICYCsAs79kok92hetGx0ByzprEC7/YtIwl7sP0Ezt
         P2Z55XWC4oE/dENP5qwuXgrQl5ZnyRqNusS/KRdmroauzZ2+aa428kCTrZCGQdqCwhre
         YC4BP5afFmsHT6ygY2XkjQIGfwoxyqz8YfJ4o8HE3mj/qpU7Pi4jhC650B3Dh2YOmAYv
         scVw==
X-Forwarded-Encrypted: i=1; AL+hErGwUpFbv9koZS5KoEJZDKhobXPkBTMAsFjnU40ZrXzcFIAqsVzvl2Ylo+w621AKyl8FCDmLCZHxJny1sb+BBA==@lists.infradead.org
X-Gm-Message-State: APuU4Z/J7phCzdv28zNYWRvVeSN/fgof3xlBy8LY64a9h6Ha2RY+6cxS
	9o3tICcK14e4kdE1LOzPmkryOw7XW3wkiPv+YRtzNW/uvmnj8WmjEK/lVStC2Z9xGw8=
X-Gm-Gg: AZFdTZfXjy/26nE52SbvaJGJNAsNH5VKDrfv4ML0QgL0aipkLa+C1EdmmHazcweiDKD
	kEvDQ50JIqnh0OEpWBq0O63z50y9DK3Ao7RQbXGJv7WNVIdIEtNRtUvjsk7b/eDKcneeNu/WEE6
	G5iuXwWlKoPOEAvmmIpfLFN8+4jMVqPUmJMZLmrJYPGAC+atH4rSiC7uK1gEIRYU1CSUcTAArXl
	7qyRJqJnJv1aIRRdRS3c5VNJUjHdTKwhGPQVenVC0M7k5S2zYyH00RET5MQyEJP2CCCh1hCU/In
	VYeAb6+OFZS0JMZrFWtd1erwg4rsr6RfhbDlBCruLT2tOindnAUmp5zc6++SoxLC+bD7xtdnL+0
	o4RmZuHYcYf4Eq0pXvdh6GXvPg/E1d5MfFvlGykFA0s9jDFzTcCbU6eSpeWXWo51b2PaFgLwJCv
	WxPuY8LmUIoV1y1/QHhKe2gt2uwXUQmdA8ITIg3p7C7p0YaVqw24vxt2/+xUScsXxj0BBCaWD/w
	kwve3ylhDD76kmqFB+2wMCZ7Z2ZQVsZA5eeMX02R4GEO4sRaumOaaNtSJ//2ZcDHfVSATDxPKse
	2/RNxDmt14L+xbtuHwjuCnlbpyuYLa7BUCW+jke59YYG31MyJQiPe3dMuCeHeLF+7eCGUFIi5Df
	V
X-Received: by 2002:a05:620a:7087:b0:93f:633b:ee1f with SMTP id af79cd13be357-949ba9c6b95mr3002134585a.28.1795558374358;
        Tue, 24 Nov 2026 14:12:54 -0800 (PST)
Received: from ?IPv6:2606:6d00:11:8ec9::c41? ([2606:6d00:11:8ec9::c41])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-949bb3bec3dsm1148251585a.23.2026.11.24.14.12.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Nov 2026 14:12:53 -0800 (PST)
Message-ID: <16ae904e41539059dbe1649551c1c903295690b3.camel@ndufresne.ca>
Subject: Re: [PATCH v3 04/17] media: v4l2-ctrls: validate av1 tile info
From: Nicolas Dufresne <nicolas@ndufresne.ca>
To: Sofus Forstreuter <sofus.c@icloud.com>, Sven Peter <sven@kernel.org>, 
 Janne Grunau
	 <j@jannau.net>, Neal Gompa <neal@gompa.dev>, Mauro Carvalho Chehab
	 <mchehab@kernel.org>, Rob Herring <robh@kernel.org>, Krzysztof Kozlowski
	 <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Philipp Zabel
	 <p.zabel@pengutronix.de>, Heiko Stuebner <heiko@sntech.de>, Daniel Almeida
	 <daniel.almeida@collabora.com>, Xiaoyong Lu <xiaoyong.lu@mediatek.com>
Cc: asahi@lists.linux.dev, linux-arm-kernel@lists.infradead.org, 
	linux-media@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org
Date: Tue, 24 Nov 2026 17:12:51 -0500
In-Reply-To: <20261020-avd-v3-4-85cbaa2125d8@icloud.com>
References: <20261020-avd-v3-0-85cbaa2125d8@icloud.com>
	 <20261020-avd-v3-4-85cbaa2125d8@icloud.com>
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
X-CRM114-CacheID: sfid-20261124_141255_819103_0D4EAD44 
X-CRM114-Status: GOOD (  18.07  )
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
Content-Type: multipart/mixed; boundary="===============5436582905475907898=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-13.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

--===============5436582905475907898==
Content-Type: multipart/signed; micalg="pgp-sha512";
	protocol="application/pgp-signature"; boundary="=-TfGKB/izRKTkKjOJIU01"

--=-TfGKB/izRKTkKjOJIU01
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Le mardi 20 octobre 2026 =C3=A0 11:37 +0200, Sofus Forstreuter a =C3=A9crit=
=C2=A0:
> Many drivers use tile_cols and/or tile_rows, so make sure they are
> valid.
>=20
> Increase V4L2_AV1_MAX_TILE_COUNT to MAX_TILE_COLS * MAX_TILE_ROWS
>=20
> Reviewed-by: Neal Gompa <neal@gompa.dev>
> Signed-off-by: Sofus Forstreuter <sofus.c@icloud.com>
> ---
>  drivers/media/v4l2-core/v4l2-ctrls-core.c | 15 +++++++++++++++
>  include/uapi/linux/v4l2-controls.h        |  2 +-
>  2 files changed, 16 insertions(+), 1 deletion(-)
>=20
> diff --git a/drivers/media/v4l2-core/v4l2-ctrls-core.c b/drivers/media/v4=
l2-core/v4l2-ctrls-core.c
> index 661a3a25da52..922cf74c4eb8 100644
> --- a/drivers/media/v4l2-core/v4l2-ctrls-core.c
> +++ b/drivers/media/v4l2-core/v4l2-ctrls-core.c
> @@ -800,10 +800,25 @@ static int validate_av1_film_grain(struct v4l2_ctrl=
_av1_film_grain *fg)
>  =09return 0;
>  }
> =20
> +static int validate_av1_tile_info(struct v4l2_av1_tile_info *ti)
> +{
> +=09if (ti->tile_cols > V4L2_AV1_MAX_TILE_COLS ||
> +=09    ti->tile_rows > V4L2_AV1_MAX_TILE_ROWS)
> +=09=09return -EINVAL;
> +
> +=09if (ti->context_update_tile_id >=3D ti->tile_cols * ti->tile_rows)
> +=09=09return -EINVAL;

Make sure to update std_init_compound() so that the default passes the chec=
k
please.

> +
> +=09return 0;
> +}
> +
>  static int validate_av1_frame(struct v4l2_ctrl_av1_frame *f)
>  {
>  =09int ret =3D 0;
> =20
> +=09ret =3D validate_av1_tile_info(&f->tile_info);
> +=09if (ret)
> +=09=09return ret;
>  =09ret =3D validate_av1_quantization(&f->quantization);
>  =09if (ret)
>  =09=09return ret;
> diff --git a/include/uapi/linux/v4l2-controls.h b/include/uapi/linux/v4l2=
-controls.h
> index d17e41d51d2e..abdfa102a77b 100644
> --- a/include/uapi/linux/v4l2-controls.h
> +++ b/include/uapi/linux/v4l2-controls.h
> @@ -2939,7 +2939,7 @@ struct v4l2_ctrl_vp9_compressed_hdr {
>  #define V4L2_AV1_MAX_NUM_PLANES=09=093
>  #define V4L2_AV1_MAX_TILE_COLS=09=0964
>  #define V4L2_AV1_MAX_TILE_ROWS=09=0964
> -#define V4L2_AV1_MAX_TILE_COUNT=09=09512
> +#define V4L2_AV1_MAX_TILE_COUNT=09=094096

Hmm, added Daniel in CC, no idea how we ended up with 512 here. This will
increase MTK insance size, but the communication with the firmware seems
dynamic.

Hantro is limited to 128 and properly reject anything above. So in all, sho=
uld
be fine, unless there is a problem with MTK firmware, which which case I'd
suggest to program the original limit in there. Also added Xiaoyong in CC.

> =20
>  #define V4L2_AV1_SEQUENCE_FLAG_STILL_PICTURE=09=09  0x00000001
>  #define V4L2_AV1_SEQUENCE_FLAG_USE_128X128_SUPERBLOCK=09  0x00000002

--=-TfGKB/izRKTkKjOJIU01
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQTvDVKBFcTDwhoEbxLZQZRRKWBy9AUCawYL4wAKCRDZQZRRKWBy
9AqIAQD/Po4bqlGbwwvzn3azk4B+6lvUS+G/w/qpKmt706DCrgEA7eZ3FFzsMcQl
GNrZH0OYicvPvO4L1n4kg3NLn/HwGgg=
=kmno
-----END PGP SIGNATURE-----

--=-TfGKB/izRKTkKjOJIU01--


--===============5436582905475907898==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============5436582905475907898==--

