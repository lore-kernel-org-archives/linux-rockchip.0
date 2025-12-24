Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 21139E7545C
	for <linux-rockchip@archiver.kernel.org>; Wed, 24 Dec 2025 15:27:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:Cc:To:From:Subject:Message-ID:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=110QqI8zYQnP7cnJBhww46Fcuxf/aJ/GAjVSusnQ9gk=; b=vr6O93KqdNZ9WfsL9UHJ8H4ylJ
	lztNTzkXWp5NBigsfBqdV7bsKBrwqyshMTQ2vx3q1chH2+ZSG/KLt7E1wW5z4NHyLi8yfGTk1roGH
	jRxVI3EUrHlq9sM3O6ltfANjnHKnafmTAasBFQg40557h7xgZYgCia6fOvtElu/aKrsAiSG9VlexW
	Idfke8++frAQSxbgPvAWu7TaaXAnug9N0BU4uK11U9vFC/rtUk7jNjzRdAgH2tPfK9u6++Nv5Somx
	oDTY3MCaIevDWQzIpzptVcXc3ES5oJYSny3kUop+lCOtiLxHSxhkxGNW+tFzuOR0lCfPRYRnp++eA
	c2+2fwWA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vYQlP-0000000H6We-2I15;
	Wed, 24 Dec 2025 15:26:59 +0000
Received: from mail-qk1-x72d.google.com ([2607:f8b0:4864:20::72d])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vYQlA-0000000H6VQ-1Xqs
	for linux-rockchip@lists.infradead.org;
	Wed, 24 Dec 2025 15:26:54 +0000
Received: by mail-qk1-x72d.google.com with SMTP id af79cd13be357-8c0f13e4424so391070985a.1
        for <linux-rockchip@lists.infradead.org>; Wed, 24 Dec 2025 07:26:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ndufresne-ca.20230601.gappssmtp.com; s=20230601; t=1766590003; x=1767194803; darn=lists.infradead.org;
        h=mime-version:user-agent:autocrypt:references:in-reply-to:date:cc:to
         :from:subject:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=8bbVPuOUSFJISPHsFtOzJT5Gm9QNsaqBcyYdq7cSwOQ=;
        b=lUXmtZG6pJe4yEHMVZXSTkJLDR2aKzlIW8fb7LOck/TlE7xJxNBeDql36RzKsHAgjQ
         ReuohwSYih5JIX7WlSG3JLZLblTyatbfcEt+mcxGkkzz/JBiAqWHME+tcykj5ocgNSD1
         rr1oPzlkix/JO3dQFIFw3GiFvkHD/reK2T7aqljzwRSMj+3KOkp6EgDApTT2CqE2mWkp
         kEsNeKgdNxX7N6vHaW80F48eCoxSf6OskyxS7A9ycdOxsqtPshv7972LR8vh2ozu1PWq
         sScGFhSX4KqPYZQjtNDu/RfhwnL4r7eD4pbdfYNOZrW31IhPNjAA7bgN8oJaDoQnA9Fh
         dgQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766590003; x=1767194803;
        h=mime-version:user-agent:autocrypt:references:in-reply-to:date:cc:to
         :from:subject:message-id:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=8bbVPuOUSFJISPHsFtOzJT5Gm9QNsaqBcyYdq7cSwOQ=;
        b=sKUiEDrhRVri8Y0Ye19nkULt9o7406jpbfq00hSpIXV3r4PTU1klwvQ0337E7XBIfk
         13SFtQlhAmYiOLauIa48kFT8BoCycrHEpS5lq5XXg6rHHMh++uNVIOKWVYXSXQXfFBJ5
         RKxig2XCL2iqyVjXgnV3U5ataThvYmNBDXqXhZ0CDzhHhXBD4mnzay5i3tgKzmsAUAfq
         VRzKXj5oBOX/E0BrsCNIlgDjQvHpi5+b98xCP4vlxjOrDGilWx71NIvi7POLtF9e6eGN
         sR/CkR++Nbnr3cZ3gcRCEXKW7EAVUAHIphM/45DfNv3D7IA8x0kFqCamnCImgu0R8KAu
         DYhg==
X-Forwarded-Encrypted: i=1; AJvYcCVY/pwRtZLS/UYhkK2YX1TR1m+PTxNJzPHgA2sfbjFY77dKUkfrHdT8U3Zzp+6v5jbQA8hnDa5BNHlPRgYS4Q==@lists.infradead.org
X-Gm-Message-State: AOJu0YzpkqJQfo+ZKEYzZa60/Qt/jKbQQBFRc1SAFKjVQq1QAZUYDv/z
	rFmBIAoPQKCo3kQA3AHc6EMN0zdCGqrhNjt0FMVts5mkdkP2IRmrSUfCHyss3UoVZw4=
X-Gm-Gg: AY/fxX7glTBKKDqdYrucljRYKOQGrV8snWXE//h22Jf8Ofrd5R/eGFyiB+FHXSD1cf6
	tsImQ4gEDvYNiOpZVLhKw3ZotUMovaNLINXmsEgFBEqwYoxOxJjWAFvt3Q8mNOQckAA5wsD63lM
	j8456gXancAJJ9e8yPjR7YLoPmrtgBfE+xlQlXUdTo5AiPuHDtke+chVLs6hZdB3UIPnSkURYA+
	nMh6dlQNB+so7/JuMBaEuYO/9pRA5e/9NAx7OU+E6uqTcrLZW121aDplGJH2TBQL2PY+q8wgYLW
	LoV+8jKFv1RBSwbs/wktztXD9phuSIxV8BZGzFsJNk3liaEPlYe395Kl6bm7/xmqJoBGJK0zs4m
	bUNl+fFk4q42OMzSgskQwtLpHLpvm1on79P74RgHEskotz9W7v4uE/qNPjB7LeQIyvAaR5vkET5
	vNyHqBfhuoe2eYinYW
X-Google-Smtp-Source: AGHT+IHeKsCki3HFcgXxZjQ/QgbnIiCXYvSNho5+8Aq0rR7GOXT3D1KX6Ecly+e8kf70FyQctlEW8Q==
X-Received: by 2002:a05:620a:28d2:b0:8b2:74e5:b13 with SMTP id af79cd13be357-8c08fd037camr2602496485a.32.1766590002998;
        Wed, 24 Dec 2025 07:26:42 -0800 (PST)
Received: from ?IPv6:2606:6d00:17:7b4b::c41? ([2606:6d00:17:7b4b::c41])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-8c1a674bcaasm237365685a.38.2025.12.24.07.26.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Dec 2025 07:26:42 -0800 (PST)
Message-ID: <98a11ef7e0004267f58a18ad97ea9cb11a68a626.camel@ndufresne.ca>
Subject: Re: [PATCH v2 09/22] media: rockchip: rga: align stride to 4 bytes
From: Nicolas Dufresne <nicolas@ndufresne.ca>
To: Sven =?ISO-8859-1?Q?P=FCschel?= <s.pueschel@pengutronix.de>, Jacob Chen
	 <jacob-chen@iotwrt.com>, Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>, 
 Mauro Carvalho Chehab
	 <mchehab@kernel.org>, Heiko Stuebner <heiko@sntech.de>, Rob Herring
	 <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
	 <conor+dt@kernel.org>
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org, kernel@pengutronix.de
Date: Wed, 24 Dec 2025 10:26:41 -0500
In-Reply-To: <20251203-spu-rga3-v2-9-989a67947f71@pengutronix.de>
References: <20251203-spu-rga3-v2-0-989a67947f71@pengutronix.de>
	 <20251203-spu-rga3-v2-9-989a67947f71@pengutronix.de>
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
User-Agent: Evolution 3.58.2 (3.58.2-1.fc43) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251224_072653_716187_D06EEAEB 
X-CRM114-Status: GOOD (  19.05  )
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
Content-Type: multipart/mixed; boundary="===============8200818606180293105=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============8200818606180293105==
Content-Type: multipart/signed; micalg="pgp-sha512";
	protocol="application/pgp-signature"; boundary="=-NUwMM9wc9tFrS823ocKI"


--=-NUwMM9wc9tFrS823ocKI
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

Le mercredi 03 d=C3=A9cembre 2025 =C3=A0 16:52 +0100, Sven P=C3=BCschel a =
=C3=A9crit=C2=A0:
> Add an alignment setting to rga_hw to set the desired stride alignment.
> As the RGA2 register for the stride counts in word units, the code
> already divides the bytesperline value by 4 when writing it into the
> register. Therefore fix the alignment to a multiple of 4 to avoid
> potential off by one errors due from the division.

If you decide to keep the stride alignment to be width alignment, then plea=
se
make use struct v4l2_frmsize_stepwise and v4l2_apply_frmsize_constraints
instead.

It will also make the per-variant description a lot more clear, with the mi=
n/max
resolution exposed.

Nicolas

>=20
> Signed-off-by: Sven P=C3=BCschel <s.pueschel@pengutronix.de>
> ---
> =C2=A0drivers/media/platform/rockchip/rga/rga-hw.c |=C2=A0 1 +
> =C2=A0drivers/media/platform/rockchip/rga/rga.c=C2=A0=C2=A0=C2=A0 | 11 ++=
++++-----
> =C2=A0drivers/media/platform/rockchip/rga/rga.h=C2=A0=C2=A0=C2=A0 |=C2=A0=
 1 +
> =C2=A03 files changed, 8 insertions(+), 5 deletions(-)
>=20
> diff --git a/drivers/media/platform/rockchip/rga/rga-hw.c b/drivers/media=
/platform/rockchip/rga/rga-hw.c
> index 79bf911e74779..56a2558539bfb 100644
> --- a/drivers/media/platform/rockchip/rga/rga-hw.c
> +++ b/drivers/media/platform/rockchip/rga/rga-hw.c
> @@ -620,6 +620,7 @@ const struct rga_hw rga2_hw =3D {
> =C2=A0	.max_width =3D MAX_WIDTH,
> =C2=A0	.min_height =3D MIN_HEIGHT,
> =C2=A0	.max_height =3D MAX_HEIGHT,
> +	.stride_alignment =3D 4,
> =C2=A0
> =C2=A0	.start =3D rga_hw_start,
> =C2=A0	.handle_irq =3D rga_handle_irq,
> diff --git a/drivers/media/platform/rockchip/rga/rga.c b/drivers/media/pl=
atform/rockchip/rga/rga.c
> index 74d94c7fe31ff..592c977a07cf3 100644
> --- a/drivers/media/platform/rockchip/rga/rga.c
> +++ b/drivers/media/platform/rockchip/rga/rga.c
> @@ -234,10 +234,10 @@ static int rga_open(struct file *file)
> =C2=A0	ctx->in =3D def_frame;
> =C2=A0	ctx->out =3D def_frame;
> =C2=A0
> -	v4l2_fill_pixfmt_mp(&ctx->in.pix,
> -			=C2=A0=C2=A0=C2=A0 ctx->in.fmt->fourcc, def_width, def_height);
> -	v4l2_fill_pixfmt_mp(&ctx->out.pix,
> -			=C2=A0=C2=A0=C2=A0 ctx->out.fmt->fourcc, def_width, def_height);
> +	v4l2_fill_pixfmt_mp_aligned(&ctx->in.pix, ctx->in.fmt->fourcc,
> +				=C2=A0=C2=A0=C2=A0 def_width, def_height, rga->hw->stride_alignment)=
;
> +	v4l2_fill_pixfmt_mp_aligned(&ctx->out.pix, ctx->out.fmt->fourcc,
> +				=C2=A0=C2=A0=C2=A0 def_width, def_height, rga->hw->stride_alignment)=
;
> =C2=A0
> =C2=A0	if (mutex_lock_interruptible(&rga->mutex)) {
> =C2=A0		ret =3D -ERESTARTSYS;
> @@ -359,7 +359,8 @@ static int vidioc_try_fmt(struct file *file, void *pr=
iv, struct v4l2_format *f)
> =C2=A0	pix_fmt->height =3D clamp(pix_fmt->height,
> =C2=A0				hw->min_height, hw->max_height);
> =C2=A0
> -	v4l2_fill_pixfmt_mp(pix_fmt, fmt->fourcc, pix_fmt->width, pix_fmt->heig=
ht);
> +	v4l2_fill_pixfmt_mp_aligned(pix_fmt, pix_fmt->pixelformat,
> +				=C2=A0=C2=A0=C2=A0 pix_fmt->width, pix_fmt->height, hw->stride_align=
ment);
> =C2=A0	pix_fmt->field =3D V4L2_FIELD_NONE;
> =C2=A0
> =C2=A0	return 0;
> diff --git a/drivers/media/platform/rockchip/rga/rga.h b/drivers/media/pl=
atform/rockchip/rga/rga.h
> index f8c932fdec21a..0aef348dddb95 100644
> --- a/drivers/media/platform/rockchip/rga/rga.h
> +++ b/drivers/media/platform/rockchip/rga/rga.h
> @@ -152,6 +152,7 @@ struct rga_hw {
> =C2=A0	size_t cmdbuf_size;
> =C2=A0	u32 min_width, min_height;
> =C2=A0	u32 max_width, max_height;
> +	u8 stride_alignment;
> =C2=A0
> =C2=A0	void (*start)(struct rockchip_rga *rga,
> =C2=A0		=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 struct rga_vb_buffer *src, struct =
rga_vb_buffer *dst);

--=-NUwMM9wc9tFrS823ocKI
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQTvDVKBFcTDwhoEbxLZQZRRKWBy9AUCaUwGMQAKCRDZQZRRKWBy
9KAVAPwIlL025j4b5ptSDvhTlCDvIeLP4/gFKyg++9AzpYF8iwEAzv+K8K6b6xOL
Fo4QrBq8vaqO5TaTfccJIwMg+DR8jQk=
=5lUF
-----END PGP SIGNATURE-----

--=-NUwMM9wc9tFrS823ocKI--


--===============8200818606180293105==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============8200818606180293105==--

