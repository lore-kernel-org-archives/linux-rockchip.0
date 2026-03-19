Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 78B4B109190D
	for <linux-rockchip@archiver.kernel.org>; Thu, 19 Mar 2026 18:53:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:Cc:To:From:Subject:Message-ID:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=9TKPlxHndtIBrgianBsKp0RCl3b5/DZ0ou0v7DOG7u8=; b=uHFXanCRSuBCt+ym8dAwzP12ws
	2Bi4J86yGal+gPUE7+WDOgba8jW4FRRcIfginL0iTVGXsdnAtcDV0TLtz7/cXX1/Vh9BXOQ+PyzUP
	0WUpqGmwM8U3w6yBUAGnmsCvFMAau1flITNs2J8vnwI4WaOTozMV3oAcZwlMuAi0GQdqJDnjobnwc
	iSZMdYJn7R8pkzdkIEAbZxMnRUYXIgv8Vn0WyZMeyYS8r6zNbnMCtDAXUs1B4ORkqJUjXBEbsSOAI
	zjkBVLWpPcPyCFY9XinY2u6ZuUnHdp2yk6j7p/90trVZyKRzEEL4mSHAmfEhvG2k4iPPzRiF98e7Q
	rQOwgP1Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w3IUw-0000000BPUL-3keb;
	Thu, 19 Mar 2026 18:53:34 +0000
Received: from mail-qk1-x72d.google.com ([2607:f8b0:4864:20::72d])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w3IUu-0000000BPSq-0gjm
	for linux-rockchip@lists.infradead.org;
	Thu, 19 Mar 2026 18:53:33 +0000
Received: by mail-qk1-x72d.google.com with SMTP id af79cd13be357-8cfbfdabf3fso102257185a.3
        for <linux-rockchip@lists.infradead.org>; Thu, 19 Mar 2026 11:53:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ndufresne-ca.20230601.gappssmtp.com; s=20230601; t=1773946411; x=1774551211; darn=lists.infradead.org;
        h=mime-version:user-agent:autocrypt:references:in-reply-to:date:cc:to
         :from:subject:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=Ta0Bls4LF9tYg574T6lcpobqW1L62AjgULjqoIMqOa4=;
        b=ywINBI9+Xt8ctO9ykk7HQSeMGGKjhbhS69cY8LNK8yLYHHNrpfTaoofkVdpwVcveJe
         cd61O8wOGMKWziZ/o8X7KmJVihQn6PBryv5kKk+GOpVmEdwWPGYQ1TIC1tzA75QsrhYK
         P0b3AL+y0YdDoADTc0r4E0xDmTlEjOM4LOlS08FUoEhmROdQm9ldSgD6gSqB83wcWUxA
         BVQEGrmVF+H3Uf5aGdWw88ToLrHP4CgJcdvZYq9nqS5ym9BvClksAFpjybdpyyKPqi7p
         Gq7hc4rEkUhrR+pwBKkG8b6mwCQpYfNOu3PP1/kyDy+SoPYLYYcoUGVtxwpHX10+tdzC
         mBCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773946411; x=1774551211;
        h=mime-version:user-agent:autocrypt:references:in-reply-to:date:cc:to
         :from:subject:message-id:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Ta0Bls4LF9tYg574T6lcpobqW1L62AjgULjqoIMqOa4=;
        b=k07eJur6VP8NlWngrE97HSUIY4PUhznCGK5m/G/hFzwCOSTkoUd2PH+YIzY0RWyj7G
         6PXGRgzceuKJwxCMZ/iXTMgy+xodRpxw3Ile/H/68hch4W6ib6RTyp3KtUJNC5Ntae++
         ZeX9zTvyO8YwAGpt6qQwtqJx48ao1NvljczIP2McMY2c+BideI4/SbZUpREXTzVLDNzT
         zsXZBNYGz1Gsj4Du4kQRBafADlaJhyj5fp888fb79wGvNuOIWu5jwmtL+KeoyZWsYr9d
         jfyJaUVf0J4yAhCbxEOOUUO6EFj798/0E8GLntFoixvG4l6AiuCfW8bf98bKJyVn6dxL
         GFNg==
X-Forwarded-Encrypted: i=1; AJvYcCVkJ838WwgxKWlPhV3IQofOKhc9Ojg7BmuwpD3MCGKphEvY+tt2oIjEDh+ECuhlESXikzBwWf/Yzvw0QGrYZw==@lists.infradead.org
X-Gm-Message-State: AOJu0YyIJBAhJ85mW5muUNKlgwyTp69F4K94c6OKNsItADHgXRfBdyju
	Ynjq+xzJGOd9RwGTj6R7HtZyYfW2HeZAfccvBXhS9g5cbsP9NWDqSSRFFYYEgudZH9M=
X-Gm-Gg: ATEYQzzVe8KAErHyTYh5iRrAAqjuLpBI/SdvZCqK22IOTd/J8Tqz+JCFh2za3DWGYQr
	fSGgnvJAZm9gaTsxOvpYVWmk2LP/dMYssiQjYUtsj78gOKRocf3O7ojSOt/2FxVviRsFK0TMWJ4
	EDPYOplixEaD6RLrI4oofSGyjFAYcLAzFJv5pmCepSj55C/wvDW9WxS8H0Y8ue+N/tMTE3N7RH9
	ugeb1AFmzSQ3kxlpZuN0M7igKgZOpJO6+Sg79gpGErZ08rM22Pxxs/V9AG2ELq5qZtJSdF7u/YX
	2PN59NdWGkjIaWB7hQUkXJ1/viEvz7jHjkwzV1OMZBwktnT7usUEfmqbw2d7wfI+GU2Usl7G6IO
	ZfH5jI1WBKpKQ5Kc9Wi0pG9AkmHSCGgl2MepUYC9YW/sK3g43Bxj1g58zYJl7quwqlaM17bE+4r
	9Vgy+xrqp261SqK3C+TTypdcE0ONrh
X-Received: by 2002:a05:620a:2981:b0:8cd:8751:2b3a with SMTP id af79cd13be357-8cfc7ee4434mr51276185a.31.1773946410775;
        Thu, 19 Mar 2026 11:53:30 -0700 (PDT)
Received: from ?IPv6:2606:6d00:11:b76d::5ac? ([2606:6d00:11:b76d::5ac])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-8cfad164b0asm482593285a.31.2026.03.19.11.53.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Mar 2026 11:53:30 -0700 (PDT)
Message-ID: <e2be41832cb2f97668acc2f033d42aee69630329.camel@ndufresne.ca>
Subject: Re: [PATCH v3 04/27] media: v4l2-common: add has_alpha to
 v4l2_format_info
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
Date: Thu, 19 Mar 2026 14:53:28 -0400
In-Reply-To: <20260127-spu-rga3-v3-4-77b273067beb@pengutronix.de>
References: <20260127-spu-rga3-v3-0-77b273067beb@pengutronix.de>
	 <20260127-spu-rga3-v3-4-77b273067beb@pengutronix.de>
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
X-CRM114-CacheID: sfid-20260319_115332_263439_34BF70E5 
X-CRM114-Status: GOOD (  14.30  )
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
Content-Type: multipart/mixed; boundary="===============7543392893673676896=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============7543392893673676896==
Content-Type: multipart/signed; micalg="pgp-sha512";
	protocol="application/pgp-signature"; boundary="=-jNGlwzXGp4sLitvNSztE"


--=-jNGlwzXGp4sLitvNSztE
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Le mardi 27 janvier 2026 =C3=A0 15:39 +0100, Sven P=C3=BCschel a =C3=A9crit=
=C2=A0:
> Add a has_alpha value to the v4l2_format_info struct to indicate if the
> format contains an alpha component. This information can currently not
> be queried in a generic way, but might be useful for potential drivers
> to properly setup alpha blending to copy or set the alpha value.
> The implementation is based on the drm_format_info implementation.
>=20
> Signed-off-by: Sven P=C3=BCschel <s.pueschel@pengutronix.de>
> ---
> =C2=A0drivers/media/v4l2-core/v4l2-common.c | 32 ++++++++++++++++--------=
--------
> =C2=A0include/media/v4l2-common.h=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 |=C2=A0 2 ++
> =C2=A02 files changed, 18 insertions(+), 16 deletions(-)
>=20
> diff --git a/drivers/media/v4l2-core/v4l2-common.c b/drivers/media/v4l2-c=
ore/v4l2-common.c
> index 58a4b372cf5be..2b5ccedeb6841 100644
> --- a/drivers/media/v4l2-core/v4l2-common.c
> +++ b/drivers/media/v4l2-core/v4l2-common.c
> @@ -248,26 +248,26 @@ const struct v4l2_format_info *v4l2_format_info(u32=
 format)
> =C2=A0		/* RGB formats (1 or 2 bytes per pixel) */
> =C2=A0		{ .format =3D V4L2_PIX_FMT_RGB332,=C2=A0=C2=A0 .pixel_enc =3D V4L=
2_PIXEL_ENC_RGB, .mem_planes =3D 1, .comp_planes =3D 1, .bpp =3D { 1, 0, 0,=
 0 }, .bpp_div =3D { 1, 1, 1, 1 }, .hdiv =3D 1, .vdiv =3D 1 },
> =C2=A0		{ .format =3D V4L2_PIX_FMT_RGB444,=C2=A0=C2=A0 .pixel_enc =3D V4L=
2_PIXEL_ENC_RGB, .mem_planes =3D 1, .comp_planes =3D 1, .bpp =3D { 2, 0, 0,=
 0 }, .bpp_div =3D { 1, 1, 1, 1 }, .hdiv =3D 1, .vdiv =3D 1 },
> -		{ .format =3D V4L2_PIX_FMT_ARGB444,=C2=A0 .pixel_enc =3D V4L2_PIXEL_EN=
C_RGB, .mem_planes =3D 1, .comp_planes =3D 1, .bpp =3D { 2, 0, 0, 0 }, .bpp=
_div =3D { 1, 1, 1, 1 }, .hdiv =3D 1, .vdiv =3D 1 },
> +		{ .format =3D V4L2_PIX_FMT_ARGB444,=C2=A0 .pixel_enc =3D V4L2_PIXEL_EN=
C_RGB, .mem_planes =3D 1, .comp_planes =3D 1, .bpp =3D { 2, 0, 0, 0 }, .bpp=
_div =3D { 1, 1, 1, 1 }, .hdiv =3D 1, .vdiv =3D 1, .has_alpha =3D true },
> =C2=A0		{ .format =3D V4L2_PIX_FMT_XRGB444,=C2=A0 .pixel_enc =3D V4L2_PIX=
EL_ENC_RGB, .mem_planes =3D 1, .comp_planes =3D 1, .bpp =3D { 2, 0, 0, 0 },=
 .bpp_div =3D { 1, 1, 1, 1 }, .hdiv =3D 1, .vdiv =3D 1 },
> -		{ .format =3D V4L2_PIX_FMT_RGBA444,=C2=A0 .pixel_enc =3D V4L2_PIXEL_EN=
C_RGB, .mem_planes =3D 1, .comp_planes =3D 1, .bpp =3D { 2, 0, 0, 0 }, .bpp=
_div =3D { 1, 1, 1, 1 }, .hdiv =3D 1, .vdiv =3D 1 },
> +		{ .format =3D V4L2_PIX_FMT_RGBA444,=C2=A0 .pixel_enc =3D V4L2_PIXEL_EN=
C_RGB, .mem_planes =3D 1, .comp_planes =3D 1, .bpp =3D { 2, 0, 0, 0 }, .bpp=
_div =3D { 1, 1, 1, 1 }, .hdiv =3D 1, .vdiv =3D 1, .has_alpha =3D true },
> =C2=A0		{ .format =3D V4L2_PIX_FMT_RGBX444,=C2=A0 .pixel_enc =3D V4L2_PIX=
EL_ENC_RGB, .mem_planes =3D 1, .comp_planes =3D 1, .bpp =3D { 2, 0, 0, 0 },=
 .bpp_div =3D { 1, 1, 1, 1 }, .hdiv =3D 1, .vdiv =3D 1 },
> -		{ .format =3D V4L2_PIX_FMT_ABGR444,=C2=A0 .pixel_enc =3D V4L2_PIXEL_EN=
C_RGB, .mem_planes =3D 1, .comp_planes =3D 1, .bpp =3D { 2, 0, 0, 0 }, .bpp=
_div =3D { 1, 1, 1, 1 }, .hdiv =3D 1, .vdiv =3D 1 },
> +		{ .format =3D V4L2_PIX_FMT_ABGR444,=C2=A0 .pixel_enc =3D V4L2_PIXEL_EN=
C_RGB, .mem_planes =3D 1, .comp_planes =3D 1, .bpp =3D { 2, 0, 0, 0 }, .bpp=
_div =3D { 1, 1, 1, 1 }, .hdiv =3D 1, .vdiv =3D 1, .has_alpha =3D true },
> =C2=A0		{ .format =3D V4L2_PIX_FMT_XBGR444,=C2=A0 .pixel_enc =3D V4L2_PIX=
EL_ENC_RGB, .mem_planes =3D 1, .comp_planes =3D 1, .bpp =3D { 2, 0, 0, 0 },=
 .bpp_div =3D { 1, 1, 1, 1 }, .hdiv =3D 1, .vdiv =3D 1 },
> -		{ .format =3D V4L2_PIX_FMT_BGRA444,=C2=A0 .pixel_enc =3D V4L2_PIXEL_EN=
C_RGB, .mem_planes =3D 1, .comp_planes =3D 1, .bpp =3D { 2, 0, 0, 0 }, .bpp=
_div =3D { 1, 1, 1, 1 }, .hdiv =3D 1, .vdiv =3D 1 },
> +		{ .format =3D V4L2_PIX_FMT_BGRA444,=C2=A0 .pixel_enc =3D V4L2_PIXEL_EN=
C_RGB, .mem_planes =3D 1, .comp_planes =3D 1, .bpp =3D { 2, 0, 0, 0 }, .bpp=
_div =3D { 1, 1, 1, 1 }, .hdiv =3D 1, .vdiv =3D 1, .has_alpha =3D true },
> =C2=A0		{ .format =3D V4L2_PIX_FMT_BGRX444,=C2=A0 .pixel_enc =3D V4L2_PIX=
EL_ENC_RGB, .mem_planes =3D 1, .comp_planes =3D 1, .bpp =3D { 2, 0, 0, 0 },=
 .bpp_div =3D { 1, 1, 1, 1 }, .hdiv =3D 1, .vdiv =3D 1 },
> =C2=A0		{ .format =3D V4L2_PIX_FMT_RGB555,=C2=A0=C2=A0 .pixel_enc =3D V4L=
2_PIXEL_ENC_RGB, .mem_planes =3D 1, .comp_planes =3D 1, .bpp =3D { 2, 0, 0,=
 0 }, .bpp_div =3D { 1, 1, 1, 1 }, .hdiv =3D 1, .vdiv =3D 1 },
> -		{ .format =3D V4L2_PIX_FMT_ARGB555,=C2=A0 .pixel_enc =3D V4L2_PIXEL_EN=
C_RGB, .mem_planes =3D 1, .comp_planes =3D 1, .bpp =3D { 2, 0, 0, 0 }, .bpp=
_div =3D { 1, 1, 1, 1 }, .hdiv =3D 1, .vdiv =3D 1 },
> +		{ .format =3D V4L2_PIX_FMT_ARGB555,=C2=A0 .pixel_enc =3D V4L2_PIXEL_EN=
C_RGB, .mem_planes =3D 1, .comp_planes =3D 1, .bpp =3D { 2, 0, 0, 0 }, .bpp=
_div =3D { 1, 1, 1, 1 }, .hdiv =3D 1, .vdiv =3D 1, .has_alpha =3D true },
> =C2=A0		{ .format =3D V4L2_PIX_FMT_XRGB555,=C2=A0 .pixel_enc =3D V4L2_PIX=
EL_ENC_RGB, .mem_planes =3D 1, .comp_planes =3D 1, .bpp =3D { 2, 0, 0, 0 },=
 .bpp_div =3D { 1, 1, 1, 1 }, .hdiv =3D 1, .vdiv =3D 1 },
> -		{ .format =3D V4L2_PIX_FMT_RGBA555,=C2=A0 .pixel_enc =3D V4L2_PIXEL_EN=
C_RGB, .mem_planes =3D 1, .comp_planes =3D 1, .bpp =3D { 2, 0, 0, 0 }, .bpp=
_div =3D { 1, 1, 1, 1 }, .hdiv =3D 1, .vdiv =3D 1 },
> +		{ .format =3D V4L2_PIX_FMT_RGBA555,=C2=A0 .pixel_enc =3D V4L2_PIXEL_EN=
C_RGB, .mem_planes =3D 1, .comp_planes =3D 1, .bpp =3D { 2, 0, 0, 0 }, .bpp=
_div =3D { 1, 1, 1, 1 }, .hdiv =3D 1, .vdiv =3D 1, .has_alpha =3D true },
> =C2=A0		{ .format =3D V4L2_PIX_FMT_RGBX555,=C2=A0 .pixel_enc =3D V4L2_PIX=
EL_ENC_RGB, .mem_planes =3D 1, .comp_planes =3D 1, .bpp =3D { 2, 0, 0, 0 },=
 .bpp_div =3D { 1, 1, 1, 1 }, .hdiv =3D 1, .vdiv =3D 1 },
> -		{ .format =3D V4L2_PIX_FMT_ABGR555,=C2=A0 .pixel_enc =3D V4L2_PIXEL_EN=
C_RGB, .mem_planes =3D 1, .comp_planes =3D 1, .bpp =3D { 2, 0, 0, 0 }, .bpp=
_div =3D { 1, 1, 1, 1 }, .hdiv =3D 1, .vdiv =3D 1 },
> +		{ .format =3D V4L2_PIX_FMT_ABGR555,=C2=A0 .pixel_enc =3D V4L2_PIXEL_EN=
C_RGB, .mem_planes =3D 1, .comp_planes =3D 1, .bpp =3D { 2, 0, 0, 0 }, .bpp=
_div =3D { 1, 1, 1, 1 }, .hdiv =3D 1, .vdiv =3D 1, .has_alpha =3D true },
> =C2=A0		{ .format =3D V4L2_PIX_FMT_XBGR555,=C2=A0 .pixel_enc =3D V4L2_PIX=
EL_ENC_RGB, .mem_planes =3D 1, .comp_planes =3D 1, .bpp =3D { 2, 0, 0, 0 },=
 .bpp_div =3D { 1, 1, 1, 1 }, .hdiv =3D 1, .vdiv =3D 1 },
> -		{ .format =3D V4L2_PIX_FMT_BGRA555,=C2=A0 .pixel_enc =3D V4L2_PIXEL_EN=
C_RGB, .mem_planes =3D 1, .comp_planes =3D 1, .bpp =3D { 2, 0, 0, 0 }, .bpp=
_div =3D { 1, 1, 1, 1 }, .hdiv =3D 1, .vdiv =3D 1 },
> +		{ .format =3D V4L2_PIX_FMT_BGRA555,=C2=A0 .pixel_enc =3D V4L2_PIXEL_EN=
C_RGB, .mem_planes =3D 1, .comp_planes =3D 1, .bpp =3D { 2, 0, 0, 0 }, .bpp=
_div =3D { 1, 1, 1, 1 }, .hdiv =3D 1, .vdiv =3D 1, .has_alpha =3D true },
> =C2=A0		{ .format =3D V4L2_PIX_FMT_BGRX555,=C2=A0 .pixel_enc =3D V4L2_PIX=
EL_ENC_RGB, .mem_planes =3D 1, .comp_planes =3D 1, .bpp =3D { 2, 0, 0, 0 },=
 .bpp_div =3D { 1, 1, 1, 1 }, .hdiv =3D 1, .vdiv =3D 1 },
> =C2=A0		{ .format =3D V4L2_PIX_FMT_RGB565,=C2=A0=C2=A0 .pixel_enc =3D V4L=
2_PIXEL_ENC_RGB, .mem_planes =3D 1, .comp_planes =3D 1, .bpp =3D { 2, 0, 0,=
 0 }, .bpp_div =3D { 1, 1, 1, 1 }, .hdiv =3D 1, .vdiv =3D 1 },
> =C2=A0		{ .format =3D V4L2_PIX_FMT_RGB555X,=C2=A0 .pixel_enc =3D V4L2_PIX=
EL_ENC_RGB, .mem_planes =3D 1, .comp_planes =3D 1, .bpp =3D { 2, 0, 0, 0 },=
 .bpp_div =3D { 1, 1, 1, 1 }, .hdiv =3D 1, .vdiv =3D 1 },
> -		{ .format =3D V4L2_PIX_FMT_ARGB555X, .pixel_enc =3D V4L2_PIXEL_ENC_RGB=
, .mem_planes =3D 1, .comp_planes =3D 1, .bpp =3D { 2, 0, 0, 0 }, .bpp_div =
=3D { 1, 1, 1, 1 }, .hdiv =3D 1, .vdiv =3D 1 },
> +		{ .format =3D V4L2_PIX_FMT_ARGB555X, .pixel_enc =3D V4L2_PIXEL_ENC_RGB=
, .mem_planes =3D 1, .comp_planes =3D 1, .bpp =3D { 2, 0, 0, 0 }, .bpp_div =
=3D { 1, 1, 1, 1 }, .hdiv =3D 1, .vdiv =3D 1, .has_alpha =3D true },
> =C2=A0		{ .format =3D V4L2_PIX_FMT_XRGB555X, .pixel_enc =3D V4L2_PIXEL_EN=
C_RGB, .mem_planes =3D 1, .comp_planes =3D 1, .bpp =3D { 2, 0, 0, 0 }, .bpp=
_div =3D { 1, 1, 1, 1 }, .hdiv =3D 1, .vdiv =3D 1 },
> =C2=A0		{ .format =3D V4L2_PIX_FMT_RGB565X,=C2=A0 .pixel_enc =3D V4L2_PIX=
EL_ENC_RGB, .mem_planes =3D 1, .comp_planes =3D 1, .bpp =3D { 2, 0, 0, 0 },=
 .bpp_div =3D { 1, 1, 1, 1 }, .hdiv =3D 1, .vdiv =3D 1 },
> =C2=A0
> @@ -276,24 +276,24 @@ const struct v4l2_format_info *v4l2_format_info(u32=
 format)
> =C2=A0		{ .format =3D V4L2_PIX_FMT_BGR24,=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 .pixel_enc =3D V4L2_PIXEL_ENC_RGB, .mem_planes =3D 1, .comp_planes =
=3D 1, .bpp =3D { 3, 0, 0, 0 }, .bpp_div =3D { 1, 1, 1, 1 }, .hdiv =3D 1, .=
vdiv =3D 1 },
> =C2=A0		{ .format =3D V4L2_PIX_FMT_RGB24,=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 .pixel_enc =3D V4L2_PIXEL_ENC_RGB, .mem_planes =3D 1, .comp_planes =
=3D 1, .bpp =3D { 3, 0, 0, 0 }, .bpp_div =3D { 1, 1, 1, 1 }, .hdiv =3D 1, .=
vdiv =3D 1 },
> =C2=A0		{ .format =3D V4L2_PIX_FMT_BGR32,=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 .pixel_enc =3D V4L2_PIXEL_ENC_RGB, .mem_planes =3D 1, .comp_planes =
=3D 1, .bpp =3D { 4, 0, 0, 0 }, .bpp_div =3D { 1, 1, 1, 1 }, .hdiv =3D 1, .=
vdiv =3D 1 },
> -		{ .format =3D V4L2_PIX_FMT_ABGR32,=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 .pixe=
l_enc =3D V4L2_PIXEL_ENC_RGB, .mem_planes =3D 1, .comp_planes =3D 1, .bpp =
=3D { 4, 0, 0, 0 }, .bpp_div =3D { 1, 1, 1, 1 }, .hdiv =3D 1, .vdiv =3D 1 }=
,
> +		{ .format =3D V4L2_PIX_FMT_ABGR32,=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 .pixe=
l_enc =3D V4L2_PIXEL_ENC_RGB, .mem_planes =3D 1, .comp_planes =3D 1, .bpp =
=3D { 4, 0, 0, 0 }, .bpp_div =3D { 1, 1, 1, 1 }, .hdiv =3D 1, .vdiv =3D 1, =
.has_alpha =3D true },
> =C2=A0		{ .format =3D V4L2_PIX_FMT_XBGR32,=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =
.pixel_enc =3D V4L2_PIXEL_ENC_RGB, .mem_planes =3D 1, .comp_planes =3D 1, .=
bpp =3D { 4, 0, 0, 0 }, .bpp_div =3D { 1, 1, 1, 1 }, .hdiv =3D 1, .vdiv =3D=
 1 },
> -		{ .format =3D V4L2_PIX_FMT_BGRA32,=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 .pixe=
l_enc =3D V4L2_PIXEL_ENC_RGB, .mem_planes =3D 1, .comp_planes =3D 1, .bpp =
=3D { 4, 0, 0, 0 }, .bpp_div =3D { 1, 1, 1, 1 }, .hdiv =3D 1, .vdiv =3D 1 }=
,
> +		{ .format =3D V4L2_PIX_FMT_BGRA32,=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 .pixe=
l_enc =3D V4L2_PIXEL_ENC_RGB, .mem_planes =3D 1, .comp_planes =3D 1, .bpp =
=3D { 4, 0, 0, 0 }, .bpp_div =3D { 1, 1, 1, 1 }, .hdiv =3D 1, .vdiv =3D 1, =
.has_alpha =3D true },
> =C2=A0		{ .format =3D V4L2_PIX_FMT_BGRX32,=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =
.pixel_enc =3D V4L2_PIXEL_ENC_RGB, .mem_planes =3D 1, .comp_planes =3D 1, .=
bpp =3D { 4, 0, 0, 0 }, .bpp_div =3D { 1, 1, 1, 1 }, .hdiv =3D 1, .vdiv =3D=
 1 },
> =C2=A0		{ .format =3D V4L2_PIX_FMT_RGB32,=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 .pixel_enc =3D V4L2_PIXEL_ENC_RGB, .mem_planes =3D 1, .comp_planes =
=3D 1, .bpp =3D { 4, 0, 0, 0 }, .bpp_div =3D { 1, 1, 1, 1 }, .hdiv =3D 1, .=
vdiv =3D 1 },
> -		{ .format =3D V4L2_PIX_FMT_RGBA32,=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 .pixe=
l_enc =3D V4L2_PIXEL_ENC_RGB, .mem_planes =3D 1, .comp_planes =3D 1, .bpp =
=3D { 4, 0, 0, 0 }, .bpp_div =3D { 1, 1, 1, 1 }, .hdiv =3D 1, .vdiv =3D 1 }=
,
> +		{ .format =3D V4L2_PIX_FMT_RGBA32,=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 .pixe=
l_enc =3D V4L2_PIXEL_ENC_RGB, .mem_planes =3D 1, .comp_planes =3D 1, .bpp =
=3D { 4, 0, 0, 0 }, .bpp_div =3D { 1, 1, 1, 1 }, .hdiv =3D 1, .vdiv =3D 1, =
.has_alpha =3D true },
> =C2=A0		{ .format =3D V4L2_PIX_FMT_RGBX32,=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =
.pixel_enc =3D V4L2_PIXEL_ENC_RGB, .mem_planes =3D 1, .comp_planes =3D 1, .=
bpp =3D { 4, 0, 0, 0 }, .bpp_div =3D { 1, 1, 1, 1 }, .hdiv =3D 1, .vdiv =3D=
 1 },
> -		{ .format =3D V4L2_PIX_FMT_ARGB32,=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 .pixe=
l_enc =3D V4L2_PIXEL_ENC_RGB, .mem_planes =3D 1, .comp_planes =3D 1, .bpp =
=3D { 4, 0, 0, 0 }, .bpp_div =3D { 1, 1, 1, 1 }, .hdiv =3D 1, .vdiv =3D 1 }=
,
> +		{ .format =3D V4L2_PIX_FMT_ARGB32,=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 .pixe=
l_enc =3D V4L2_PIXEL_ENC_RGB, .mem_planes =3D 1, .comp_planes =3D 1, .bpp =
=3D { 4, 0, 0, 0 }, .bpp_div =3D { 1, 1, 1, 1 }, .hdiv =3D 1, .vdiv =3D 1, =
.has_alpha =3D true },
> =C2=A0		{ .format =3D V4L2_PIX_FMT_XRGB32,=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =
.pixel_enc =3D V4L2_PIXEL_ENC_RGB, .mem_planes =3D 1, .comp_planes =3D 1, .=
bpp =3D { 4, 0, 0, 0 }, .bpp_div =3D { 1, 1, 1, 1 }, .hdiv =3D 1, .vdiv =3D=
 1 },
> =C2=A0		{ .format =3D V4L2_PIX_FMT_RGBX1010102, .pixel_enc =3D V4L2_PIXEL=
_ENC_RGB, .mem_planes =3D 1, .comp_planes =3D 1, .bpp =3D { 4, 0, 0, 0 }, .=
bpp_div =3D { 1, 1, 1, 1 }, .hdiv =3D 1, .vdiv =3D 1 },
> -		{ .format =3D V4L2_PIX_FMT_RGBA1010102, .pixel_enc =3D V4L2_PIXEL_ENC_=
RGB, .mem_planes =3D 1, .comp_planes =3D 1, .bpp =3D { 4, 0, 0, 0 }, .bpp_d=
iv =3D { 1, 1, 1, 1 }, .hdiv =3D 1, .vdiv =3D 1 },
> -		{ .format =3D V4L2_PIX_FMT_ARGB2101010, .pixel_enc =3D V4L2_PIXEL_ENC_=
RGB, .mem_planes =3D 1, .comp_planes =3D 1, .bpp =3D { 4, 0, 0, 0 }, .bpp_d=
iv =3D { 1, 1, 1, 1 }, .hdiv =3D 1, .vdiv =3D 1 },
> +		{ .format =3D V4L2_PIX_FMT_RGBA1010102, .pixel_enc =3D V4L2_PIXEL_ENC_=
RGB, .mem_planes =3D 1, .comp_planes =3D 1, .bpp =3D { 4, 0, 0, 0 }, .bpp_d=
iv =3D { 1, 1, 1, 1 }, .hdiv =3D 1, .vdiv =3D 1, .has_alpha =3D true },
> +		{ .format =3D V4L2_PIX_FMT_ARGB2101010, .pixel_enc =3D V4L2_PIXEL_ENC_=
RGB, .mem_planes =3D 1, .comp_planes =3D 1, .bpp =3D { 4, 0, 0, 0 }, .bpp_d=
iv =3D { 1, 1, 1, 1 }, .hdiv =3D 1, .vdiv =3D 1, .has_alpha =3D true },
> =C2=A0
> =C2=A0		/* RGB formats (6 or 8 bytes per pixel) */
> =C2=A0		{ .format =3D V4L2_PIX_FMT_BGR48_12,=C2=A0 .pixel_enc =3D V4L2_PI=
XEL_ENC_RGB, .mem_planes =3D 1, .comp_planes =3D 1, .bpp =3D { 6, 0, 0, 0 }=
, .bpp_div =3D { 1, 1, 1, 1 }, .hdiv =3D 1, .vdiv =3D 1 },
> =C2=A0		{ .format =3D V4L2_PIX_FMT_BGR48,=C2=A0=C2=A0=C2=A0=C2=A0 .pixel_=
enc =3D V4L2_PIXEL_ENC_RGB, .mem_planes =3D 1, .comp_planes =3D 1, .bpp =3D=
 { 6, 0, 0, 0 }, .bpp_div =3D { 1, 1, 1, 1 }, .hdiv =3D 1, .vdiv =3D 1 },
> =C2=A0		{ .format =3D V4L2_PIX_FMT_RGB48,=C2=A0=C2=A0=C2=A0=C2=A0 .pixel_=
enc =3D V4L2_PIXEL_ENC_RGB, .mem_planes =3D 1, .comp_planes =3D 1, .bpp =3D=
 { 6, 0, 0, 0 }, .bpp_div =3D { 1, 1, 1, 1 }, .hdiv =3D 1, .vdiv =3D 1 },
> -		{ .format =3D V4L2_PIX_FMT_ABGR64_12, .pixel_enc =3D V4L2_PIXEL_ENC_RG=
B, .mem_planes =3D 1, .comp_planes =3D 1, .bpp =3D { 8, 0, 0, 0 }, .bpp_div=
 =3D { 1, 1, 1, 1 }, .hdiv =3D 1, .vdiv =3D 1 },
> +		{ .format =3D V4L2_PIX_FMT_ABGR64_12, .pixel_enc =3D V4L2_PIXEL_ENC_RG=
B, .mem_planes =3D 1, .comp_planes =3D 1, .bpp =3D { 8, 0, 0, 0 }, .bpp_div=
 =3D { 1, 1, 1, 1 }, .hdiv =3D 1, .vdiv =3D 1, .has_alpha =3D true },
> =C2=A0
> =C2=A0		/* HSV formats */
> =C2=A0		{ .format =3D V4L2_PIX_FMT_HSV24, .pixel_enc =3D V4L2_PIXEL_ENC_R=
GB, .mem_planes =3D 1, .comp_planes =3D 1, .bpp =3D { 3, 0, 0, 0 }, .bpp_di=
v =3D { 1, 1, 1, 1 }, .hdiv =3D 1, .vdiv =3D 1 },
> diff --git a/include/media/v4l2-common.h b/include/media/v4l2-common.h
> index f8b1faced79c8..401d8506c24b5 100644
> --- a/include/media/v4l2-common.h
> +++ b/include/media/v4l2-common.h
> @@ -520,6 +520,7 @@ enum v4l2_pixel_encoding {
> =C2=A0 * @vdiv: Vertical chroma subsampling factor
> =C2=A0 * @block_w: Per-plane macroblock pixel width (optional)
> =C2=A0 * @block_h: Per-plane macroblock pixel height (optional)
> + * @has_alpha: Does the format embeds an alpha component?
> =C2=A0 */
> =C2=A0struct v4l2_format_info {
> =C2=A0	u32 format;
> @@ -532,6 +533,7 @@ struct v4l2_format_info {
> =C2=A0	u8 vdiv;
> =C2=A0	u8 block_w[4];
> =C2=A0	u8 block_h[4];
> +	bool has_alpha;
> =C2=A0};
> =C2=A0
> =C2=A0static inline bool v4l2_is_format_rgb(const struct v4l2_format_info=
 *f)

Reviewed-by: Nicolas Dufresne <nicolas.dufresne@collabora.com>

cheers,
Nicolas

--=-jNGlwzXGp4sLitvNSztE
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQTvDVKBFcTDwhoEbxLZQZRRKWBy9AUCabxGKAAKCRDZQZRRKWBy
9FlOAP9It84CqjbHg5xzL/vRPNhSv9t9+099qDdLk7YU46+l3wEA2DpYOpsZdRvn
ztlMXR8j4EHUFNdOr0LbefqEh6vORgQ=
=uqDg
-----END PGP SIGNATURE-----

--=-jNGlwzXGp4sLitvNSztE--


--===============7543392893673676896==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============7543392893673676896==--

