Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 94350109190D
	for <linux-rockchip@archiver.kernel.org>; Thu, 19 Mar 2026 18:46:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:Cc:To:From:Subject:Message-ID:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=xvDfUeAZBrtr8LcJE8jk+3wnmj/8AjUjsxQRRaklo3s=; b=CexX9Qd2UZ26RbpmFqxn6vO8iQ
	9O2vXBTCakMMedAXsXCUqcQnLnSV2WTDQvzxo/dnoX6Qn8fNOZvPPbpCO1PdLU51AuQbXau78Orch
	lzjc8PlQG3+aaljZs0V+co+kUaFmv2+RKTxNroguM+/KiRiwu0/R8qneeC98QVHegAZDGKigSIoMn
	lvX7TaVegmIZzFR2GUHz4z4J0kp+fYWQ2XhaM007iJmw8m+bCU5Ei9z85Uh/sJNXnOmQ0PBjOoYeW
	npaG3NTaqTyp3C8KBK1ENsGjABIeI4s/LL+pcr1yfJI5HZrLX9y5aIjRunL93zsV9HTYiBxEYOgWH
	SFSYvGaw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w3IOS-0000000BOpY-1URS;
	Thu, 19 Mar 2026 18:46:52 +0000
Received: from mail-qv1-xf31.google.com ([2607:f8b0:4864:20::f31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w3IOO-0000000BOo8-3E4G
	for linux-rockchip@lists.infradead.org;
	Thu, 19 Mar 2026 18:46:50 +0000
Received: by mail-qv1-xf31.google.com with SMTP id 6a1803df08f44-89a1347051aso22079126d6.2
        for <linux-rockchip@lists.infradead.org>; Thu, 19 Mar 2026 11:46:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ndufresne-ca.20230601.gappssmtp.com; s=20230601; t=1773946007; x=1774550807; darn=lists.infradead.org;
        h=mime-version:user-agent:autocrypt:references:in-reply-to:date:cc:to
         :from:subject:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=V0cVp5SfF5gDxI4x1ZVLKlYHIK/kzs/LjIB+pe8ObTk=;
        b=HcVxbEXCMY4fXx/DNDQjAyXfcI/0fd3z8/ds8q9tN5Y0ZHIcoSJx2xbXmS+epr1CGg
         vPa8Gcmjnb1q0J2zSGSS/BTiLPVjm8Pp1/MDIUQMc/oeDzaHxI6WuNPnJwK57dfNJ5R3
         Ypx3vzQSomaRmnjAw0GFOG4ML8jiZKJIGs4q2o0L0InlX5gc6Du8V+c71KRMFTgQu8CR
         iRRFC3lu7kWWJ1IHSp63cQgGHmpXhuSDrUEj1DG2iJBjEM8cN2vS0jfFk2H8iCqdIaIZ
         iHez5L0PJt8pEBxRXaZbFXDDQq2CcP61NuG7HW//iB8rJb+Ve3+wWTkB9OJamkCNBE5J
         3ZJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773946007; x=1774550807;
        h=mime-version:user-agent:autocrypt:references:in-reply-to:date:cc:to
         :from:subject:message-id:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=V0cVp5SfF5gDxI4x1ZVLKlYHIK/kzs/LjIB+pe8ObTk=;
        b=H87th5l/U+9KzaQFaTF6DuPvXVxQDHdJ9BHRyqSF//xZ5KzS5zPmkVnsRWIEnPEc/E
         L2ndcMnMwFLLdxYGL5oLK3XNaZVK4zNMkIop6S+VIqqac6DZeW6cTX7vi5SMNn/krVt+
         +RSg69SKYZh9s84zNhyCpRwIBZhDRqdzZaVRTsQ4MyXcYcTP71H8RcSst/B5GtSYmDO6
         C8eqzU0PRhSwhVBAk1n2G3gNIWt2OJC3iQEdr0P5F2fXFfKPHe8LG+SlaoOtBvl8036E
         jMqnqrVZUDqATMFyPYXWLtBzUAhWUCJWPvqzbv1/jN6n/gF1UD3QdsXqzTnFG4ADvNds
         saXw==
X-Forwarded-Encrypted: i=1; AJvYcCX9MwvMInONRD5gSYcpUBiCuZhBa4BF8STgzxgn3qOfFZT6OUAKaZXoq/NMc9yLC7L50SbWsrGowIGbIym9dQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YwMJn1tWibRRzeH6FTDqJcZCmWCbsogwklqz8jgKMlZ5ph7s8S0
	fyLlwarA7lOTknF2Xscl3pw/P2pyGEEpRvUm73wAz9FbZbBCsp3skSbjQiHzHaavAHs=
X-Gm-Gg: ATEYQzycOHNgJfHTfpi7s3TLN+D2GFw8YZQZsRdteYW47sI+0Gr/cRiTlozgiq5+Hxi
	otqiRFp4Xcn827KkfqbMqbdYgIdG43Jx2rnjOn3WHBtCUEKD2nShX33ie0yVRHp1OewkkhbtYT0
	bLJGsnQVy+iMA0z87n4J5LWghgDwkDDgutS1RAGTftSoGT9IJajEdPuYdsdtNvJ2QeGtWw+/Guu
	47IyEjjYHhpKUnOJlsUqd4MUVip39OYn1vbQwOGUFmAStCiA2zcqR5PQ3WB29PS6Zk3XlxyWYET
	yvTqPM+k/iKrp7l//C2hJm13hU3YTe/AmgBmyWFDxxAcSZMbYDxFYemwihtrVl1scYjY387/Q60
	MwgAhGEe6XQs74P/sPKmGw7ApsLDHl46rMdzdiaAeE0/7vUdFpRAG4lQMFE1iulG/bko8FVBOE3
	YOu3ISeJH+f8InFEo1RQ2MWUspgHBo
X-Received: by 2002:a05:6214:5712:b0:89a:ff2:b8cf with SMTP id 6a1803df08f44-89c85a6f039mr2920216d6.44.1773946007239;
        Thu, 19 Mar 2026 11:46:47 -0700 (PDT)
Received: from ?IPv6:2606:6d00:11:b76d::5ac? ([2606:6d00:11:b76d::5ac])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-89c853498f7sm2698336d6.34.2026.03.19.11.46.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Mar 2026 11:46:46 -0700 (PDT)
Message-ID: <a05bfa386120efbf0b7e6e72c3211e03a0383421.camel@ndufresne.ca>
Subject: Re: [PATCH v3 03/27] media: v4l2-common: add missing 1 and 2 byte
 RGB formats to v4l2_format_info
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
Date: Thu, 19 Mar 2026 14:46:44 -0400
In-Reply-To: <20260127-spu-rga3-v3-3-77b273067beb@pengutronix.de>
References: <20260127-spu-rga3-v3-0-77b273067beb@pengutronix.de>
	 <20260127-spu-rga3-v3-3-77b273067beb@pengutronix.de>
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
User-Agent: Evolution 3.58.3 (3.58.3-1.fc43) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260319_114648_819734_FABAAF81 
X-CRM114-Status: GOOD (  14.70  )
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
Content-Type: multipart/mixed; boundary="===============2921321866146053851=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============2921321866146053851==
Content-Type: multipart/signed; micalg="pgp-sha512";
	protocol="application/pgp-signature"; boundary="=-evOZ5C9oD7OXIro9UEzK"


--=-evOZ5C9oD7OXIro9UEzK
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Le mardi 27 janvier 2026 =C3=A0 15:39 +0100, Sven P=C3=BCschel a =C3=A9crit=
=C2=A0:
> Add all missing one and two byte RGB formats to v4l2_format_info. This
> allows drivers to more consistently use v4l2_format_info, as it now
> covers all currently defined RGB formats.
>=20
> Signed-off-by: Sven P=C3=BCschel <s.pueschel@pengutronix.de>
> ---
> =C2=A0drivers/media/v4l2-core/v4l2-common.c | 21 +++++++++++++++++++++
> =C2=A01 file changed, 21 insertions(+)
>=20
> diff --git a/drivers/media/v4l2-core/v4l2-common.c b/drivers/media/v4l2-c=
ore/v4l2-common.c
> index 49c1ec08e2eb3..58a4b372cf5be 100644
> --- a/drivers/media/v4l2-core/v4l2-common.c
> +++ b/drivers/media/v4l2-core/v4l2-common.c
> @@ -246,8 +246,29 @@ const struct v4l2_format_info *v4l2_format_info(u32 =
format)
> =C2=A0{
> =C2=A0	static const struct v4l2_format_info formats[] =3D {
> =C2=A0		/* RGB formats (1 or 2 bytes per pixel) */
> +		{ .format =3D V4L2_PIX_FMT_RGB332,=C2=A0=C2=A0 .pixel_enc =3D V4L2_PIX=
EL_ENC_RGB, .mem_planes =3D 1, .comp_planes =3D 1, .bpp =3D { 1, 0, 0, 0 },=
 .bpp_div =3D { 1, 1, 1, 1 }, .hdiv =3D 1, .vdiv =3D 1 },
> +		{ .format =3D V4L2_PIX_FMT_RGB444,=C2=A0=C2=A0 .pixel_enc =3D V4L2_PIX=
EL_ENC_RGB, .mem_planes =3D 1, .comp_planes =3D 1, .bpp =3D { 2, 0, 0, 0 },=
 .bpp_div =3D { 1, 1, 1, 1 }, .hdiv =3D 1, .vdiv =3D 1 },
> +		{ .format =3D V4L2_PIX_FMT_ARGB444,=C2=A0 .pixel_enc =3D V4L2_PIXEL_EN=
C_RGB, .mem_planes =3D 1, .comp_planes =3D 1, .bpp =3D { 2, 0, 0, 0 }, .bpp=
_div =3D { 1, 1, 1, 1 }, .hdiv =3D 1, .vdiv =3D 1 },
> +		{ .format =3D V4L2_PIX_FMT_XRGB444,=C2=A0 .pixel_enc =3D V4L2_PIXEL_EN=
C_RGB, .mem_planes =3D 1, .comp_planes =3D 1, .bpp =3D { 2, 0, 0, 0 }, .bpp=
_div =3D { 1, 1, 1, 1 }, .hdiv =3D 1, .vdiv =3D 1 },
> +		{ .format =3D V4L2_PIX_FMT_RGBA444,=C2=A0 .pixel_enc =3D V4L2_PIXEL_EN=
C_RGB, .mem_planes =3D 1, .comp_planes =3D 1, .bpp =3D { 2, 0, 0, 0 }, .bpp=
_div =3D { 1, 1, 1, 1 }, .hdiv =3D 1, .vdiv =3D 1 },
> +		{ .format =3D V4L2_PIX_FMT_RGBX444,=C2=A0 .pixel_enc =3D V4L2_PIXEL_EN=
C_RGB, .mem_planes =3D 1, .comp_planes =3D 1, .bpp =3D { 2, 0, 0, 0 }, .bpp=
_div =3D { 1, 1, 1, 1 }, .hdiv =3D 1, .vdiv =3D 1 },
> +		{ .format =3D V4L2_PIX_FMT_ABGR444,=C2=A0 .pixel_enc =3D V4L2_PIXEL_EN=
C_RGB, .mem_planes =3D 1, .comp_planes =3D 1, .bpp =3D { 2, 0, 0, 0 }, .bpp=
_div =3D { 1, 1, 1, 1 }, .hdiv =3D 1, .vdiv =3D 1 },
> +		{ .format =3D V4L2_PIX_FMT_XBGR444,=C2=A0 .pixel_enc =3D V4L2_PIXEL_EN=
C_RGB, .mem_planes =3D 1, .comp_planes =3D 1, .bpp =3D { 2, 0, 0, 0 }, .bpp=
_div =3D { 1, 1, 1, 1 }, .hdiv =3D 1, .vdiv =3D 1 },
> +		{ .format =3D V4L2_PIX_FMT_BGRA444,=C2=A0 .pixel_enc =3D V4L2_PIXEL_EN=
C_RGB, .mem_planes =3D 1, .comp_planes =3D 1, .bpp =3D { 2, 0, 0, 0 }, .bpp=
_div =3D { 1, 1, 1, 1 }, .hdiv =3D 1, .vdiv =3D 1 },
> +		{ .format =3D V4L2_PIX_FMT_BGRX444,=C2=A0 .pixel_enc =3D V4L2_PIXEL_EN=
C_RGB, .mem_planes =3D 1, .comp_planes =3D 1, .bpp =3D { 2, 0, 0, 0 }, .bpp=
_div =3D { 1, 1, 1, 1 }, .hdiv =3D 1, .vdiv =3D 1 },
> =C2=A0		{ .format =3D V4L2_PIX_FMT_RGB555,=C2=A0=C2=A0 .pixel_enc =3D V4L=
2_PIXEL_ENC_RGB, .mem_planes =3D 1, .comp_planes =3D 1, .bpp =3D { 2, 0, 0,=
 0 }, .bpp_div =3D { 1, 1, 1, 1 }, .hdiv =3D 1, .vdiv =3D 1 },
> +		{ .format =3D V4L2_PIX_FMT_ARGB555,=C2=A0 .pixel_enc =3D V4L2_PIXEL_EN=
C_RGB, .mem_planes =3D 1, .comp_planes =3D 1, .bpp =3D { 2, 0, 0, 0 }, .bpp=
_div =3D { 1, 1, 1, 1 }, .hdiv =3D 1, .vdiv =3D 1 },
> +		{ .format =3D V4L2_PIX_FMT_XRGB555,=C2=A0 .pixel_enc =3D V4L2_PIXEL_EN=
C_RGB, .mem_planes =3D 1, .comp_planes =3D 1, .bpp =3D { 2, 0, 0, 0 }, .bpp=
_div =3D { 1, 1, 1, 1 }, .hdiv =3D 1, .vdiv =3D 1 },
> +		{ .format =3D V4L2_PIX_FMT_RGBA555,=C2=A0 .pixel_enc =3D V4L2_PIXEL_EN=
C_RGB, .mem_planes =3D 1, .comp_planes =3D 1, .bpp =3D { 2, 0, 0, 0 }, .bpp=
_div =3D { 1, 1, 1, 1 }, .hdiv =3D 1, .vdiv =3D 1 },
> +		{ .format =3D V4L2_PIX_FMT_RGBX555,=C2=A0 .pixel_enc =3D V4L2_PIXEL_EN=
C_RGB, .mem_planes =3D 1, .comp_planes =3D 1, .bpp =3D { 2, 0, 0, 0 }, .bpp=
_div =3D { 1, 1, 1, 1 }, .hdiv =3D 1, .vdiv =3D 1 },
> +		{ .format =3D V4L2_PIX_FMT_ABGR555,=C2=A0 .pixel_enc =3D V4L2_PIXEL_EN=
C_RGB, .mem_planes =3D 1, .comp_planes =3D 1, .bpp =3D { 2, 0, 0, 0 }, .bpp=
_div =3D { 1, 1, 1, 1 }, .hdiv =3D 1, .vdiv =3D 1 },
> +		{ .format =3D V4L2_PIX_FMT_XBGR555,=C2=A0 .pixel_enc =3D V4L2_PIXEL_EN=
C_RGB, .mem_planes =3D 1, .comp_planes =3D 1, .bpp =3D { 2, 0, 0, 0 }, .bpp=
_div =3D { 1, 1, 1, 1 }, .hdiv =3D 1, .vdiv =3D 1 },
> +		{ .format =3D V4L2_PIX_FMT_BGRA555,=C2=A0 .pixel_enc =3D V4L2_PIXEL_EN=
C_RGB, .mem_planes =3D 1, .comp_planes =3D 1, .bpp =3D { 2, 0, 0, 0 }, .bpp=
_div =3D { 1, 1, 1, 1 }, .hdiv =3D 1, .vdiv =3D 1 },
> +		{ .format =3D V4L2_PIX_FMT_BGRX555,=C2=A0 .pixel_enc =3D V4L2_PIXEL_EN=
C_RGB, .mem_planes =3D 1, .comp_planes =3D 1, .bpp =3D { 2, 0, 0, 0 }, .bpp=
_div =3D { 1, 1, 1, 1 }, .hdiv =3D 1, .vdiv =3D 1 },
> =C2=A0		{ .format =3D V4L2_PIX_FMT_RGB565,=C2=A0=C2=A0 .pixel_enc =3D V4L=
2_PIXEL_ENC_RGB, .mem_planes =3D 1, .comp_planes =3D 1, .bpp =3D { 2, 0, 0,=
 0 }, .bpp_div =3D { 1, 1, 1, 1 }, .hdiv =3D 1, .vdiv =3D 1 },
> +		{ .format =3D V4L2_PIX_FMT_RGB555X,=C2=A0 .pixel_enc =3D V4L2_PIXEL_EN=
C_RGB, .mem_planes =3D 1, .comp_planes =3D 1, .bpp =3D { 2, 0, 0, 0 }, .bpp=
_div =3D { 1, 1, 1, 1 }, .hdiv =3D 1, .vdiv =3D 1 },
> +		{ .format =3D V4L2_PIX_FMT_ARGB555X, .pixel_enc =3D V4L2_PIXEL_ENC_RGB=
, .mem_planes =3D 1, .comp_planes =3D 1, .bpp =3D { 2, 0, 0, 0 }, .bpp_div =
=3D { 1, 1, 1, 1 }, .hdiv =3D 1, .vdiv =3D 1 },
> +		{ .format =3D V4L2_PIX_FMT_XRGB555X, .pixel_enc =3D V4L2_PIXEL_ENC_RGB=
, .mem_planes =3D 1, .comp_planes =3D 1, .bpp =3D { 2, 0, 0, 0 }, .bpp_div =
=3D { 1, 1, 1, 1 }, .hdiv =3D 1, .vdiv =3D 1 },
> =C2=A0		{ .format =3D V4L2_PIX_FMT_RGB565X,=C2=A0 .pixel_enc =3D V4L2_PIX=
EL_ENC_RGB, .mem_planes =3D 1, .comp_planes =3D 1, .bpp =3D { 2, 0, 0, 0 },=
 .bpp_div =3D { 1, 1, 1, 1 }, .hdiv =3D 1, .vdiv =3D 1 },

Reviewed-by: Nicolas Dufresne <nicolas.dufresne@collabora.com>

> =C2=A0
> =C2=A0		/* RGB formats (3 or 4 bytes per pixel) */

--=-evOZ5C9oD7OXIro9UEzK
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQTvDVKBFcTDwhoEbxLZQZRRKWBy9AUCabxElAAKCRDZQZRRKWBy
9PQyAQCsGwDjdIOiYAtfAuX5ntpb3X/t4qh9HYGOBjDtTniJmwD/QPNv7axHocAF
YqN177eXgyedzvW2J8iT8eGSEM1UlQY=
=gael
-----END PGP SIGNATURE-----

--=-evOZ5C9oD7OXIro9UEzK--


--===============2921321866146053851==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============2921321866146053851==--

