Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10AEB606A32E
	for <linux-rockchip@archiver.kernel.org>; Tue, 24 Nov 2026 21:15:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=1hJ+h7Sm;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=ndufresne-ca.20260707.gappssmtp.com header.i=@ndufresne-ca.20260707.gappssmtp.com header.a=rsa-sha256 header.s=20260707 header.b=mTv3vD3t
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:Cc:To:From:Subject:Message-ID:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=tQIc/+axgjz2sI1bxoaN0koH87+o6LD6YRgi2JsgT0Y=; b=1hJ+h7Sm89q6f6Gk8z0ImVLBlA
	RiDS3mUhclzgm6DnuHc7hQOzjSo0pVHIH1/O8rexgkOJ2GQuqfLZmiAbbD91HZBgaQadT1FvK5MN9
	77dx95KIr9Htn9PSLzFKMwYZFgR65Vetuua95fE6ibiWZLpZ4OZqzH7MSO5209a2xgT1lT5zX63N0
	FaLfdRWk4h0MOVzjT5jVpTqHsiWAW+tzDUVZ8uPCT9XqYyjyuYGRYg0136KW4aY+FanIFfWGW3fDG
	D/YlTFyg8Nm3TQ86EaPECLG8HV7RkYwK0RjeA1dE1aJVD8iMuavGFSqzjpEyN1YP1qLZE2iA/Gtsp
	Ioo1rilg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVxrQ-00000007pkx-44tL;
	Tue, 24 Nov 2026 21:15:32 +0000
Received: from mail-qk1-x733.google.com ([2607:f8b0:4864:20::733])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVxrP-00000007piv-00yF
	for linux-rockchip@lists.infradead.org;
	Tue, 24 Nov 2026 21:15:32 +0000
Received: by mail-qk1-x733.google.com with SMTP id af79cd13be357-93a40a9a01aso709973785a.0
        for <linux-rockchip@lists.infradead.org>; Tue, 24 Nov 2026 13:15:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ndufresne-ca.20260707.gappssmtp.com; s=20260707; t=1795554930; x=1796159730; darn=lists.infradead.org;
        h=mime-version:user-agent:content-type:autocrypt:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=z3il6KTodoHY8wYVpUPQzETMZOTZfRXZT7LjCWqHye4=;
        b=mTv3vD3tnGhH2oSVtB0S2oq5WZOuljD/B0eQ1F7AWoT7N0ranZy9xIqlTP+HCU4ToW
         2weTboSIU4oFEJ4Z08u9uSc6kzyWlj29szHZOR+KwcGbE+Sg2CHCXReHIhSNseeX5gPA
         ltgseO7nbtNnHb4OqajJDQfyc5fqtTJ2JaS+rm55IJsjYEK91ZTyZa0gjkPkS5kcaS9N
         kFmQKsuPJB7UK3bFQrBVqty4aFY/KJlpWAHVk8J3EPNtXzsH0L99Aslr13oXpuhb4PHd
         Wo57zWPQnxiEZo2Zfj5R2yabuT+A5A+spuvqBgv9Bj7Nms9WxFhqmvcxEnMzdd5w0XOl
         ucqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1795554930; x=1796159730;
        h=mime-version:user-agent:content-type:autocrypt:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=z3il6KTodoHY8wYVpUPQzETMZOTZfRXZT7LjCWqHye4=;
        b=lJPCxHR6yu93QRE5CYvOj9V5wjm+oyG01LZ8H40SibLp5HH2AXZOEVwhye8Yp+CwVk
         su+oDhDKF2hm29svZWZeNu0PFtd/rKuaMUYaAihD5rvS5aXjhrj1+KREx75kx9wx6/DF
         Pmh5AsAQUvJTyUic+TeuzjJURzG7EWIPe8XOLUnqmTt6ytdDe4qWmtfnLYV486/BLWa0
         XjkGUR5xW0TLMtABZo72TSk4G0idSAKHEZXSeKItt/R8+SC/Ldgf+pBowD1BwW2LL30j
         9AVPFVAelB03I7fq2FYY3g84ARjmnOu/KP9eAtnZ8rDYOu5PMWKYh1B2EXQ/cL6+KEaZ
         dMXg==
X-Forwarded-Encrypted: i=1; AL+hErF7qAYxSFvW2+JmHHeXPAZXe5ZtZ/akrgrmrb9FgK683QF0KCN+cTn/5p33B8obPVYrCnW8nHdzwaJKrFe8Rw==@lists.infradead.org
X-Gm-Message-State: APuU4Z/SdmSc3R9TqzKM/f4gP1HuQhKlftqc4J3DVJzGgXNBBY4sIr/4
	v86cbcMvDdUMw2gjh4+38tIxY5mHWhPcF+aiEPavR1zZSf5S8XpQ5P92qeCERsOyemY=
X-Gm-Gg: AZFdTZcXcdgx6ZKo4z3/fM7JU9Dc43/pnZmk7WUe83ELpj21bBxIKrxWtZRD7aiALUU
	0NmUgpu3cp3iVuMxPioSUZiCd8VoazZiu5acZ6VWJ4xj5HvnUJOj8TktiLWUtTzlBRUoZbMPnI7
	DsQQA4hTfDA/6jZrwGvcAe5OTq8JPVU3lnNw864pnq9a78f/CFKO7lOVMfED3niO5L/0KrK3Lh3
	JL4KOROMxR0E63HlK2cKnvHT6QY9M+IpnbbjD6QWh7C0/43k2dRpG0wFix3WqRwPtvLT0RObrNU
	ecKeQBDzAKSbiUVwoB8JyZHPVqYbPbqPj164So6lJ4Bmdc71i/GSdlp17Ub8SV81pSLspRwrHMY
	tlEiIKYZXcsD6t3lzf7LHa3ICyOm1NAFeFHnFm67iOOWLBq8CQe4fC0aqLjBjz2lSfRa9+nFyCL
	dQlkFKK64fKYo5wgV74QgKTk3eTeJobOG5M/IMRXkKKBjAcEXMD1SlNhqbYPnY2vVcAqLbNusBc
	FWsjqIjkIjjZFVO20hT5ucSwkHgprHI5Rz1Kp9W//R65NL9uWPMFxPsT9HvAs2E0H4wXBS8rNRe
	Lk2kwJIFyJRkoudZm3CovLJ02Vc+6JbZhlk4bBWnA8sp85BXTs8MQZc=
X-Received: by 2002:a05:620a:4142:b0:945:d6e9:9a8c with SMTP id af79cd13be357-949baa0735emr2694961785a.33.1795554929441;
        Tue, 24 Nov 2026 13:15:29 -0800 (PST)
Received: from ?IPv6:2606:6d00:11:8ec9::c41? ([2606:6d00:11:8ec9::c41])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-949bb34a8d3sm1142411385a.10.2026.11.24.13.15.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Nov 2026 13:15:28 -0800 (PST)
Message-ID: <703f40d914dcb1a4e947e7b06a9e05e926fa9a2b.camel@ndufresne.ca>
Subject: Re: [PATCH v2 09/17] media: rockchip: rga: adjust get_version to
 return the version
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
Date: Tue, 24 Nov 2026 16:15:27 -0500
In-Reply-To: <20260916-spu-rga3multicore-v2-9-23aa2cb74e61@pengutronix.de>
References: <20260916-spu-rga3multicore-v2-0-23aa2cb74e61@pengutronix.de>
	 <20260916-spu-rga3multicore-v2-9-23aa2cb74e61@pengutronix.de>
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
X-CRM114-CacheID: sfid-20261124_131531_138252_89F4CDF7 
X-CRM114-Status: GOOD (  17.90  )
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
Content-Type: multipart/mixed; boundary="===============4402502124210837809=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-13.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

--===============4402502124210837809==
Content-Type: multipart/signed; micalg="pgp-sha512";
	protocol="application/pgp-signature"; boundary="=-9kBp7W93i2GBnXDBo1st"

--=-9kBp7W93i2GBnXDBo1st
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Le mercredi 16 septembre 2026 =C3=A0 17:09 +0200, Sven P=C3=BCschel a =C3=
=A9crit=C2=A0:
> Adjust get_version to return the version instead of directly updating it
> in the rockchip_rga structure. This is done in preparation for a
> multi-core support to check that cores with the same compatible share the
> same version.
>=20
> Signed-off-by: Sven P=C3=BCschel <s.pueschel@pengutronix.de>

Reviewed-by: Nicolas Dufresne <nicolas.dufresne@collabora.com>

> ---
>  drivers/media/platform/rockchip/rga/rga-hw.c  | 10 +++++++---
>  drivers/media/platform/rockchip/rga/rga.c     |  2 +-
>  drivers/media/platform/rockchip/rga/rga.h     |  2 +-
>  drivers/media/platform/rockchip/rga/rga3-hw.c |  8 +++++---
>  4 files changed, 14 insertions(+), 8 deletions(-)
>=20
> diff --git a/drivers/media/platform/rockchip/rga/rga-hw.c b/drivers/media=
/platform/rockchip/rga/rga-hw.c
> index 4d7b0a03820a1..190104f3b2954 100644
> --- a/drivers/media/platform/rockchip/rga/rga-hw.c
> +++ b/drivers/media/platform/rockchip/rga/rga-hw.c
> @@ -474,10 +474,14 @@ static bool rga_handle_irq(struct rockchip_rga *rga=
)
>  =09return intr & RGA_INT_COMMAND_FINISHED;
>  }
> =20
> -static void rga_get_version(struct rockchip_rga *rga)
> +static struct rockchip_rga_version rga_get_version(struct rockchip_rga *=
rga)
>  {
> -=09rga->version.major =3D (rga_read(rga, RGA_VERSION_INFO) >> 24) & 0xFF=
;
> -=09rga->version.minor =3D (rga_read(rga, RGA_VERSION_INFO) >> 20) & 0x0F=
;
> +=09u32 version =3D rga_read(rga, RGA_VERSION_INFO);
> +
> +=09return (struct rockchip_rga_version) {
> +=09=09.major =3D (version >> 24) & 0xFF,
> +=09=09.minor =3D (version >> 20) & 0x0F,
> +=09};
>  }
> =20
>  static struct rga_fmt formats[] =3D {
> diff --git a/drivers/media/platform/rockchip/rga/rga.c b/drivers/media/pl=
atform/rockchip/rga/rga.c
> index c24bc8e26b91e..2107d0f4a1659 100644
> --- a/drivers/media/platform/rockchip/rga/rga.c
> +++ b/drivers/media/platform/rockchip/rga/rga.c
> @@ -860,7 +860,7 @@ static int rga_probe(struct platform_device *pdev)
>  =09if (ret < 0)
>  =09=09goto rel_m2m;
> =20
> -=09rga->hw->get_version(rga);
> +=09rga->version =3D rga->hw->get_version(rga);
> =20
>  =09v4l2_info(&rga->v4l2_dev, "HW Version: 0x%02x.%02x\n",
>  =09=09  rga->version.major, rga->version.minor);
> diff --git a/drivers/media/platform/rockchip/rga/rga.h b/drivers/media/pl=
atform/rockchip/rga/rga.h
> index 0e62337f8dd38..0e854cdf739f4 100644
> --- a/drivers/media/platform/rockchip/rga/rga.h
> +++ b/drivers/media/platform/rockchip/rga/rga.h
> @@ -158,7 +158,7 @@ struct rga_hw {
>  =09void (*start)(struct rockchip_rga *rga,
>  =09=09      struct rga_vb_buffer *src, struct rga_vb_buffer *dst);
>  =09bool (*handle_irq)(struct rockchip_rga *rga);
> -=09void (*get_version)(struct rockchip_rga *rga);
> +=09struct rockchip_rga_version (*get_version)(struct rockchip_rga *rga);
>  =09void *(*adjust_and_map_format)(struct rga_ctx *ctx,
>  =09=09=09=09       struct v4l2_pix_format_mplane *format,
>  =09=09=09=09       bool is_output);
> diff --git a/drivers/media/platform/rockchip/rga/rga3-hw.c b/drivers/medi=
a/platform/rockchip/rga/rga3-hw.c
> index 46ba6d270f232..a80dd7609ccfe 100644
> --- a/drivers/media/platform/rockchip/rga/rga3-hw.c
> +++ b/drivers/media/platform/rockchip/rga/rga3-hw.c
> @@ -299,12 +299,14 @@ static bool rga3_handle_irq(struct rockchip_rga *rg=
a)
>  =09return FIELD_GET(RGA3_INT_FRM_DONE, intr);
>  }
> =20
> -static void rga3_get_version(struct rockchip_rga *rga)
> +static struct rockchip_rga_version rga3_get_version(struct rockchip_rga =
*rga)
>  {
>  =09u32 version =3D rga_read(rga, RGA3_VERSION_NUM);
> =20
> -=09rga->version.major =3D FIELD_GET(RGA3_VERSION_NUM_MAJOR, version);
> -=09rga->version.minor =3D FIELD_GET(RGA3_VERSION_NUM_MINOR, version);
> +=09return (struct rockchip_rga_version) {
> +=09=09.major =3D FIELD_GET(RGA3_VERSION_NUM_MAJOR, version),
> +=09=09.minor =3D FIELD_GET(RGA3_VERSION_NUM_MINOR, version),
> +=09};
>  }
> =20
>  static struct rga3_fmt rga3_formats[] =3D {

--=-9kBp7W93i2GBnXDBo1st
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQTvDVKBFcTDwhoEbxLZQZRRKWBy9AUCawX+bwAKCRDZQZRRKWBy
9NsOAQCl3SgdekdUazoIM+9kZjOfYaaF7SSYgHlc1SnMx39trQD+P0z+r4RLdX3v
/WShUTo6ARwWWF9wVLmMB/rnLbeJ9Ao=
=rVxF
-----END PGP SIGNATURE-----

--=-9kBp7W93i2GBnXDBo1st--


--===============4402502124210837809==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============4402502124210837809==--

