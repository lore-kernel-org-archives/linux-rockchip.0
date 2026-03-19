Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7B6B9109190B
	for <linux-rockchip@archiver.kernel.org>; Thu, 19 Mar 2026 18:45:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:Cc:To:From:Subject:Message-ID:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Nsg+PMSrmzB0mfcaGjL3WX+wWIz398ms9fMOYSEbzg8=; b=332l6Ny0gmk0Ubu3vMIKHT6i8S
	eFVnAsSHsyDw2roBAgwKZddOkYMXi29p6WFAOIXAzonbktk1hoctVgOWX2WLR724sP9KwYrLEsOr4
	AIsiXxn1rSwrSfH2Mp2NqR6HGnXMY7v7iFRQNXNVLbdhkyXXaukByhzUy1THfBaQ7NENm3tQLvy1/
	7tDGuHzmVt8MaMixobSdYyyesKdjysZk336pl4VU8DURw5jv8N1Vn1jSWg/Uh4oYhBs2/qvC+J0nH
	Z2+n6GLZJXjVPsDXhLL1we5ceLNWVGsplmo2/VkpjvDFkBXZJwa3Eqt67P14PJ44OJaFwJQhcwzPn
	2ZR3WcBA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w3INT-0000000BOe7-3dvm;
	Thu, 19 Mar 2026 18:45:51 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w3INS-0000000BOdQ-1814
	for linux-rockchip@bombadil.infradead.org;
	Thu, 19 Mar 2026 18:45:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=MIME-Version:Content-Type:References:
	In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=fyxr2cT76xTmVXlGS1w9Azu54H6E559HX/Y7oAdioW8=; b=MAMRGK2MezecVNmBifvO2yeSwI
	kX0ejiquDgcBtJMaGuVhIU5kI5jA1i0srkTK528EjwHHsyWqZIY9ml630TNgPZi0ZREy9JuchS9xx
	ebiJBjriDTVHhf3Lo44v/5+/5OFvprLhMXDWE6B/42cUfp/9UexbeAfVVYSqkH0j3wffqqTtB0tC/
	tMt8IhxVqBdN/8BBQmeZtQ6YrPkMkCI3PlWIYr+N9OVtP8ctcNKE4FGA7n0h+VjDov3biTm3SXvwq
	itAFqpndMvuIzM6iL9e/kuQcWlmO684A5sBbJpURFAdsHD573Ykw9/YqSXeJ2jwIJTWYij8D0ztxl
	COxEW44w==;
Received: from mail-qk1-x731.google.com ([2607:f8b0:4864:20::731])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w3INP-0000000EHwY-0A3Q
	for linux-rockchip@lists.infradead.org;
	Thu, 19 Mar 2026 18:45:48 +0000
Received: by mail-qk1-x731.google.com with SMTP id af79cd13be357-8cd8c6e365eso132456185a.0
        for <linux-rockchip@lists.infradead.org>; Thu, 19 Mar 2026 11:45:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ndufresne-ca.20230601.gappssmtp.com; s=20230601; t=1773945945; x=1774550745; darn=lists.infradead.org;
        h=mime-version:user-agent:autocrypt:references:in-reply-to:date:cc:to
         :from:subject:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=fyxr2cT76xTmVXlGS1w9Azu54H6E559HX/Y7oAdioW8=;
        b=1Z3/zaDBNwP+Dfvua8RS1N3ysBWoZFKQrUTsh1iXo5f5QpBg03LH/NVXmUw4TTWbrg
         Liia79GJn0AbY8T24ZbnePS9Jhe21/VsY4eZOw81WCiFz2IHCHwRMZ5RsOr6HdqFZ/r/
         99yYt/be87IxsjSEbuSCyHqfOPeKJtbwQpcjOivfz4JXpuRQvY+IR98eGuVB2ybSHUQI
         3DjOCrxapGuc8CTNqBM35hUYfs/C6sWFw/lKzHoeXPyljCgB4WaGtw2tsS6j7NvGugw4
         Doilw0noj/Posj0rD6LuL91P3JPQhswFhWCB3Bx7Nu8pylyQ912q8QDQz1uY7wtW95xu
         pwfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773945945; x=1774550745;
        h=mime-version:user-agent:autocrypt:references:in-reply-to:date:cc:to
         :from:subject:message-id:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=fyxr2cT76xTmVXlGS1w9Azu54H6E559HX/Y7oAdioW8=;
        b=GFaPkhhtKIPB9Bdz/kl9TX3YXT9keIuSsBud0E1ATt2rKiDDfZ7e81AsMSMVYFhYKj
         gMTSyBGROUevC25aU93CSFrHvqpgaYRYg6AaG+wbWOq70YzSipQC4/VtBv+UGJxhM7zk
         jcKpC/RuBCIi6PJ1+rpDlnOv73yAkTwGFmUuyxhSUsiJczBU9L2KJwKDwE8nhkngu0A4
         wsam3IsiyrPGH5rGHTgVf+ppQrpkaCSWsyZuq77Q0WKoMOsDTcH1Y5RlkX66UVY2PXBb
         sL+o8qDroICJ/xcRcfLQjXqxRgmK/5GiezhWOHWEtzSF7YvZCPXG5uwS0QpE23DfYGlN
         yckw==
X-Forwarded-Encrypted: i=1; AJvYcCURC5z4uXEET3Te3fILr4bGe9Gu/gz9LithS3RmrVCCIhpPQfSUimjOfyWPfIkFZaPynvQSxqn9Pua2VWr4YQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YyvmMFbX/lx96sawJun/8sG7Jo4HJwh4ay9MG3RzYCT0ZtAu5ph
	zaNSNwYLAtn5vX1JpAohq+19Ue8Tm/b0bbk8r8vApg/oLw87R91q1PTfuV+ICjrQhSE=
X-Gm-Gg: ATEYQzymrhNMtHqD0KFS7Pi+m2vxVj4C6s0eh06pI3LI+A/CgyJx14j61moKTEhp05R
	iM82mzLH/SAE7XZTBtZHZcj2sMi38Vf9BeqWH1x5I87bEGo4zs1IyC+kIXa7mkD9rD0syEJPavm
	LNugcgZkmn5AaMe0Xt5N9nylwbeQeSgHF+MnTMTVu2p6HTHF0NG4gqY0YFVGCOe/RLC0Ingb9FM
	QADzh8xWJsJZJyz05mT2o8AVxBKdaXpZ6u9dhdHd5qiMS3pVSwm28LI+JPfVT8+RUNbnSbi1nqO
	NhRG5s13TiU+ZGnnewvhwv6TQrMv510vL3ofKXKtKi+zOTqhm8G3SP6gtuAQ7EKtymhN8pAkKSU
	7fHNsJE7jYqDCohFiYA2yIdvRa/ufM4i/Y+BT4XCw2MpMshfMkRjk66EF9gTk7a3NBIjr5YaHCV
	BxBpmEN91A14MkdWmzIES6lknqkXK+
X-Received: by 2002:a05:620a:4050:b0:8cf:c08e:5f43 with SMTP id af79cd13be357-8cfc8097225mr45589685a.63.1773945944917;
        Thu, 19 Mar 2026 11:45:44 -0700 (PDT)
Received: from ?IPv6:2606:6d00:11:b76d::5ac? ([2606:6d00:11:b76d::5ac])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-8cfad16691asm485652985a.23.2026.03.19.11.45.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Mar 2026 11:45:44 -0700 (PDT)
Message-ID: <82eaf7e33273ab2f68ff6720244be2f268e52cb2.camel@ndufresne.ca>
Subject: Re: [PATCH v3 02/27] media: v4l2-common: sort RGB formats in
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
Date: Thu, 19 Mar 2026 14:45:42 -0400
In-Reply-To: <20260127-spu-rga3-v3-2-77b273067beb@pengutronix.de>
References: <20260127-spu-rga3-v3-0-77b273067beb@pengutronix.de>
	 <20260127-spu-rga3-v3-2-77b273067beb@pengutronix.de>
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
X-CRM114-CacheID: sfid-20260319_184547_394147_2D75826B 
X-CRM114-Status: GOOD (  15.82  )
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
Content-Type: multipart/mixed; boundary="===============1354678756222381012=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============1354678756222381012==
Content-Type: multipart/signed; micalg="pgp-sha512";
	protocol="application/pgp-signature"; boundary="=-Wsz88yXF6Ple/ZN0Bspp"


--=-Wsz88yXF6Ple/ZN0Bspp
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Le mardi 27 janvier 2026 =C3=A0 15:39 +0100, Sven P=C3=BCschel a =C3=A9crit=
=C2=A0:
> Sort the RGB formats in v4l2_format_info to match the format definitions
> in include/uapi/linux/videodev2.h . Also introduce the same sections to
> partition the list of formats and align the format info in each section.
>=20
> The alignment of the 1 or 2 bytes RGB formats contains an additional
> space in preparation of adding the missing formats to the list, as for
> V4L2_PIX_FMT_ARGB555X an additional space is necessary.
>=20
> Signed-off-by: Sven P=C3=BCschel <s.pueschel@pengutronix.de>

Reviewed-by: Nicolas Dufresne <nicolas.dufresne@collabora.com>

> ---
> =C2=A0drivers/media/v4l2-core/v4l2-common.c | 54 +++++++++++++++++++-----=
-----------
> =C2=A01 file changed, 30 insertions(+), 24 deletions(-)
>=20
> diff --git a/drivers/media/v4l2-core/v4l2-common.c b/drivers/media/v4l2-c=
ore/v4l2-common.c
> index 554c591e11133..49c1ec08e2eb3 100644
> --- a/drivers/media/v4l2-core/v4l2-common.c
> +++ b/drivers/media/v4l2-core/v4l2-common.c
> @@ -245,33 +245,39 @@ EXPORT_SYMBOL_GPL(v4l2_s_parm_cap);
> =C2=A0const struct v4l2_format_info *v4l2_format_info(u32 format)
> =C2=A0{
> =C2=A0	static const struct v4l2_format_info formats[] =3D {
> -		/* RGB formats */
> -		{ .format =3D V4L2_PIX_FMT_BGR24,=C2=A0=C2=A0 .pixel_enc =3D V4L2_PIXE=
L_ENC_RGB, .mem_planes =3D 1, .comp_planes =3D 1, .bpp =3D { 3, 0, 0, 0 }, =
.bpp_div =3D { 1, 1, 1, 1 }, .hdiv =3D 1, .vdiv =3D 1 },
> -		{ .format =3D V4L2_PIX_FMT_RGB24,=C2=A0=C2=A0 .pixel_enc =3D V4L2_PIXE=
L_ENC_RGB, .mem_planes =3D 1, .comp_planes =3D 1, .bpp =3D { 3, 0, 0, 0 }, =
.bpp_div =3D { 1, 1, 1, 1 }, .hdiv =3D 1, .vdiv =3D 1 },
> -		{ .format =3D V4L2_PIX_FMT_HSV24,=C2=A0=C2=A0 .pixel_enc =3D V4L2_PIXE=
L_ENC_RGB, .mem_planes =3D 1, .comp_planes =3D 1, .bpp =3D { 3, 0, 0, 0 }, =
.bpp_div =3D { 1, 1, 1, 1 }, .hdiv =3D 1, .vdiv =3D 1 },
> -		{ .format =3D V4L2_PIX_FMT_BGR32,=C2=A0=C2=A0 .pixel_enc =3D V4L2_PIXE=
L_ENC_RGB, .mem_planes =3D 1, .comp_planes =3D 1, .bpp =3D { 4, 0, 0, 0 }, =
.bpp_div =3D { 1, 1, 1, 1 }, .hdiv =3D 1, .vdiv =3D 1 },
> -		{ .format =3D V4L2_PIX_FMT_XBGR32,=C2=A0 .pixel_enc =3D V4L2_PIXEL_ENC=
_RGB, .mem_planes =3D 1, .comp_planes =3D 1, .bpp =3D { 4, 0, 0, 0 }, .bpp_=
div =3D { 1, 1, 1, 1 }, .hdiv =3D 1, .vdiv =3D 1 },
> -		{ .format =3D V4L2_PIX_FMT_BGRX32,=C2=A0 .pixel_enc =3D V4L2_PIXEL_ENC=
_RGB, .mem_planes =3D 1, .comp_planes =3D 1, .bpp =3D { 4, 0, 0, 0 }, .bpp_=
div =3D { 1, 1, 1, 1 }, .hdiv =3D 1, .vdiv =3D 1 },
> -		{ .format =3D V4L2_PIX_FMT_RGB32,=C2=A0=C2=A0 .pixel_enc =3D V4L2_PIXE=
L_ENC_RGB, .mem_planes =3D 1, .comp_planes =3D 1, .bpp =3D { 4, 0, 0, 0 }, =
.bpp_div =3D { 1, 1, 1, 1 }, .hdiv =3D 1, .vdiv =3D 1 },
> -		{ .format =3D V4L2_PIX_FMT_XRGB32,=C2=A0 .pixel_enc =3D V4L2_PIXEL_ENC=
_RGB, .mem_planes =3D 1, .comp_planes =3D 1, .bpp =3D { 4, 0, 0, 0 }, .bpp_=
div =3D { 1, 1, 1, 1 }, .hdiv =3D 1, .vdiv =3D 1 },
> -		{ .format =3D V4L2_PIX_FMT_RGBX32,=C2=A0 .pixel_enc =3D V4L2_PIXEL_ENC=
_RGB, .mem_planes =3D 1, .comp_planes =3D 1, .bpp =3D { 4, 0, 0, 0 }, .bpp_=
div =3D { 1, 1, 1, 1 }, .hdiv =3D 1, .vdiv =3D 1 },
> -		{ .format =3D V4L2_PIX_FMT_HSV32,=C2=A0=C2=A0 .pixel_enc =3D V4L2_PIXE=
L_ENC_RGB, .mem_planes =3D 1, .comp_planes =3D 1, .bpp =3D { 4, 0, 0, 0 }, =
.bpp_div =3D { 1, 1, 1, 1 }, .hdiv =3D 1, .vdiv =3D 1 },
> -		{ .format =3D V4L2_PIX_FMT_ARGB32,=C2=A0 .pixel_enc =3D V4L2_PIXEL_ENC=
_RGB, .mem_planes =3D 1, .comp_planes =3D 1, .bpp =3D { 4, 0, 0, 0 }, .bpp_=
div =3D { 1, 1, 1, 1 }, .hdiv =3D 1, .vdiv =3D 1 },
> -		{ .format =3D V4L2_PIX_FMT_RGBA32,=C2=A0 .pixel_enc =3D V4L2_PIXEL_ENC=
_RGB, .mem_planes =3D 1, .comp_planes =3D 1, .bpp =3D { 4, 0, 0, 0 }, .bpp_=
div =3D { 1, 1, 1, 1 }, .hdiv =3D 1, .vdiv =3D 1 },
> -		{ .format =3D V4L2_PIX_FMT_ABGR32,=C2=A0 .pixel_enc =3D V4L2_PIXEL_ENC=
_RGB, .mem_planes =3D 1, .comp_planes =3D 1, .bpp =3D { 4, 0, 0, 0 }, .bpp_=
div =3D { 1, 1, 1, 1 }, .hdiv =3D 1, .vdiv =3D 1 },
> -		{ .format =3D V4L2_PIX_FMT_BGRA32,=C2=A0 .pixel_enc =3D V4L2_PIXEL_ENC=
_RGB, .mem_planes =3D 1, .comp_planes =3D 1, .bpp =3D { 4, 0, 0, 0 }, .bpp_=
div =3D { 1, 1, 1, 1 }, .hdiv =3D 1, .vdiv =3D 1 },
> -		{ .format =3D V4L2_PIX_FMT_RGB565,=C2=A0 .pixel_enc =3D V4L2_PIXEL_ENC=
_RGB, .mem_planes =3D 1, .comp_planes =3D 1, .bpp =3D { 2, 0, 0, 0 }, .bpp_=
div =3D { 1, 1, 1, 1 }, .hdiv =3D 1, .vdiv =3D 1 },
> -		{ .format =3D V4L2_PIX_FMT_RGB565X, .pixel_enc =3D V4L2_PIXEL_ENC_RGB,=
 .mem_planes =3D 1, .comp_planes =3D 1, .bpp =3D { 2, 0, 0, 0 }, .bpp_div =
=3D { 1, 1, 1, 1 }, .hdiv =3D 1, .vdiv =3D 1 },
> -		{ .format =3D V4L2_PIX_FMT_RGB555,=C2=A0 .pixel_enc =3D V4L2_PIXEL_ENC=
_RGB, .mem_planes =3D 1, .comp_planes =3D 1, .bpp =3D { 2, 0, 0, 0 }, .bpp_=
div =3D { 1, 1, 1, 1 }, .hdiv =3D 1, .vdiv =3D 1 },
> -		{ .format =3D V4L2_PIX_FMT_BGR666,=C2=A0 .pixel_enc =3D V4L2_PIXEL_ENC=
_RGB, .mem_planes =3D 1, .comp_planes =3D 1, .bpp =3D { 4, 0, 0, 0 }, .bpp_=
div =3D { 1, 1, 1, 1 }, .hdiv =3D 1, .vdiv =3D 1 },
> -		{ .format =3D V4L2_PIX_FMT_BGR48_12, .pixel_enc =3D V4L2_PIXEL_ENC_RGB=
, .mem_planes =3D 1, .comp_planes =3D 1, .bpp =3D { 6, 0, 0, 0 }, .bpp_div =
=3D { 1, 1, 1, 1 }, .hdiv =3D 1, .vdiv =3D 1 },
> -		{ .format =3D V4L2_PIX_FMT_BGR48, .pixel_enc =3D V4L2_PIXEL_ENC_RGB, .=
mem_planes =3D 1, .comp_planes =3D 1, .bpp =3D { 6, 0, 0, 0 }, .bpp_div =3D=
 { 1, 1, 1, 1 }, .hdiv =3D 1, .vdiv =3D 1 },
> -		{ .format =3D V4L2_PIX_FMT_RGB48, .pixel_enc =3D V4L2_PIXEL_ENC_RGB, .=
mem_planes =3D 1, .comp_planes =3D 1, .bpp =3D { 6, 0, 0, 0 }, .bpp_div =3D=
 { 1, 1, 1, 1 }, .hdiv =3D 1, .vdiv =3D 1 },
> -		{ .format =3D V4L2_PIX_FMT_ABGR64_12, .pixel_enc =3D V4L2_PIXEL_ENC_RG=
B, .mem_planes =3D 1, .comp_planes =3D 1, .bpp =3D { 8, 0, 0, 0 }, .bpp_div=
 =3D { 1, 1, 1, 1 }, .hdiv =3D 1, .vdiv =3D 1 },
> -		{ .format =3D V4L2_PIX_FMT_RGBA1010102, .pixel_enc =3D V4L2_PIXEL_ENC_=
RGB, .mem_planes =3D 1, .comp_planes =3D 1, .bpp =3D { 4, 0, 0, 0 }, .bpp_d=
iv =3D { 1, 1, 1, 1 }, .hdiv =3D 1, .vdiv =3D 1 },
> +		/* RGB formats (1 or 2 bytes per pixel) */
> +		{ .format =3D V4L2_PIX_FMT_RGB555,=C2=A0=C2=A0 .pixel_enc =3D V4L2_PIX=
EL_ENC_RGB, .mem_planes =3D 1, .comp_planes =3D 1, .bpp =3D { 2, 0, 0, 0 },=
 .bpp_div =3D { 1, 1, 1, 1 }, .hdiv =3D 1, .vdiv =3D 1 },
> +		{ .format =3D V4L2_PIX_FMT_RGB565,=C2=A0=C2=A0 .pixel_enc =3D V4L2_PIX=
EL_ENC_RGB, .mem_planes =3D 1, .comp_planes =3D 1, .bpp =3D { 2, 0, 0, 0 },=
 .bpp_div =3D { 1, 1, 1, 1 }, .hdiv =3D 1, .vdiv =3D 1 },
> +		{ .format =3D V4L2_PIX_FMT_RGB565X,=C2=A0 .pixel_enc =3D V4L2_PIXEL_EN=
C_RGB, .mem_planes =3D 1, .comp_planes =3D 1, .bpp =3D { 2, 0, 0, 0 }, .bpp=
_div =3D { 1, 1, 1, 1 }, .hdiv =3D 1, .vdiv =3D 1 },
> +
> +		/* RGB formats (3 or 4 bytes per pixel) */
> +		{ .format =3D V4L2_PIX_FMT_BGR666,=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 .pixe=
l_enc =3D V4L2_PIXEL_ENC_RGB, .mem_planes =3D 1, .comp_planes =3D 1, .bpp =
=3D { 4, 0, 0, 0 }, .bpp_div =3D { 1, 1, 1, 1 }, .hdiv =3D 1, .vdiv =3D 1 }=
,
> +		{ .format =3D V4L2_PIX_FMT_BGR24,=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =
.pixel_enc =3D V4L2_PIXEL_ENC_RGB, .mem_planes =3D 1, .comp_planes =3D 1, .=
bpp =3D { 3, 0, 0, 0 }, .bpp_div =3D { 1, 1, 1, 1 }, .hdiv =3D 1, .vdiv =3D=
 1 },
> +		{ .format =3D V4L2_PIX_FMT_RGB24,=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =
.pixel_enc =3D V4L2_PIXEL_ENC_RGB, .mem_planes =3D 1, .comp_planes =3D 1, .=
bpp =3D { 3, 0, 0, 0 }, .bpp_div =3D { 1, 1, 1, 1 }, .hdiv =3D 1, .vdiv =3D=
 1 },
> +		{ .format =3D V4L2_PIX_FMT_BGR32,=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =
.pixel_enc =3D V4L2_PIXEL_ENC_RGB, .mem_planes =3D 1, .comp_planes =3D 1, .=
bpp =3D { 4, 0, 0, 0 }, .bpp_div =3D { 1, 1, 1, 1 }, .hdiv =3D 1, .vdiv =3D=
 1 },
> +		{ .format =3D V4L2_PIX_FMT_ABGR32,=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 .pixe=
l_enc =3D V4L2_PIXEL_ENC_RGB, .mem_planes =3D 1, .comp_planes =3D 1, .bpp =
=3D { 4, 0, 0, 0 }, .bpp_div =3D { 1, 1, 1, 1 }, .hdiv =3D 1, .vdiv =3D 1 }=
,
> +		{ .format =3D V4L2_PIX_FMT_XBGR32,=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 .pixe=
l_enc =3D V4L2_PIXEL_ENC_RGB, .mem_planes =3D 1, .comp_planes =3D 1, .bpp =
=3D { 4, 0, 0, 0 }, .bpp_div =3D { 1, 1, 1, 1 }, .hdiv =3D 1, .vdiv =3D 1 }=
,
> +		{ .format =3D V4L2_PIX_FMT_BGRA32,=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 .pixe=
l_enc =3D V4L2_PIXEL_ENC_RGB, .mem_planes =3D 1, .comp_planes =3D 1, .bpp =
=3D { 4, 0, 0, 0 }, .bpp_div =3D { 1, 1, 1, 1 }, .hdiv =3D 1, .vdiv =3D 1 }=
,
> +		{ .format =3D V4L2_PIX_FMT_BGRX32,=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 .pixe=
l_enc =3D V4L2_PIXEL_ENC_RGB, .mem_planes =3D 1, .comp_planes =3D 1, .bpp =
=3D { 4, 0, 0, 0 }, .bpp_div =3D { 1, 1, 1, 1 }, .hdiv =3D 1, .vdiv =3D 1 }=
,
> +		{ .format =3D V4L2_PIX_FMT_RGB32,=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =
.pixel_enc =3D V4L2_PIXEL_ENC_RGB, .mem_planes =3D 1, .comp_planes =3D 1, .=
bpp =3D { 4, 0, 0, 0 }, .bpp_div =3D { 1, 1, 1, 1 }, .hdiv =3D 1, .vdiv =3D=
 1 },
> +		{ .format =3D V4L2_PIX_FMT_RGBA32,=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 .pixe=
l_enc =3D V4L2_PIXEL_ENC_RGB, .mem_planes =3D 1, .comp_planes =3D 1, .bpp =
=3D { 4, 0, 0, 0 }, .bpp_div =3D { 1, 1, 1, 1 }, .hdiv =3D 1, .vdiv =3D 1 }=
,
> +		{ .format =3D V4L2_PIX_FMT_RGBX32,=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 .pixe=
l_enc =3D V4L2_PIXEL_ENC_RGB, .mem_planes =3D 1, .comp_planes =3D 1, .bpp =
=3D { 4, 0, 0, 0 }, .bpp_div =3D { 1, 1, 1, 1 }, .hdiv =3D 1, .vdiv =3D 1 }=
,
> +		{ .format =3D V4L2_PIX_FMT_ARGB32,=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 .pixe=
l_enc =3D V4L2_PIXEL_ENC_RGB, .mem_planes =3D 1, .comp_planes =3D 1, .bpp =
=3D { 4, 0, 0, 0 }, .bpp_div =3D { 1, 1, 1, 1 }, .hdiv =3D 1, .vdiv =3D 1 }=
,
> +		{ .format =3D V4L2_PIX_FMT_XRGB32,=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 .pixe=
l_enc =3D V4L2_PIXEL_ENC_RGB, .mem_planes =3D 1, .comp_planes =3D 1, .bpp =
=3D { 4, 0, 0, 0 }, .bpp_div =3D { 1, 1, 1, 1 }, .hdiv =3D 1, .vdiv =3D 1 }=
,
> =C2=A0		{ .format =3D V4L2_PIX_FMT_RGBX1010102, .pixel_enc =3D V4L2_PIXEL=
_ENC_RGB, .mem_planes =3D 1, .comp_planes =3D 1, .bpp =3D { 4, 0, 0, 0 }, .=
bpp_div =3D { 1, 1, 1, 1 }, .hdiv =3D 1, .vdiv =3D 1 },
> +		{ .format =3D V4L2_PIX_FMT_RGBA1010102, .pixel_enc =3D V4L2_PIXEL_ENC_=
RGB, .mem_planes =3D 1, .comp_planes =3D 1, .bpp =3D { 4, 0, 0, 0 }, .bpp_d=
iv =3D { 1, 1, 1, 1 }, .hdiv =3D 1, .vdiv =3D 1 },
> =C2=A0		{ .format =3D V4L2_PIX_FMT_ARGB2101010, .pixel_enc =3D V4L2_PIXEL=
_ENC_RGB, .mem_planes =3D 1, .comp_planes =3D 1, .bpp =3D { 4, 0, 0, 0 }, .=
bpp_div =3D { 1, 1, 1, 1 }, .hdiv =3D 1, .vdiv =3D 1 },
> =C2=A0
> +		/* RGB formats (6 or 8 bytes per pixel) */
> +		{ .format =3D V4L2_PIX_FMT_BGR48_12,=C2=A0 .pixel_enc =3D V4L2_PIXEL_E=
NC_RGB, .mem_planes =3D 1, .comp_planes =3D 1, .bpp =3D { 6, 0, 0, 0 }, .bp=
p_div =3D { 1, 1, 1, 1 }, .hdiv =3D 1, .vdiv =3D 1 },
> +		{ .format =3D V4L2_PIX_FMT_BGR48,=C2=A0=C2=A0=C2=A0=C2=A0 .pixel_enc =
=3D V4L2_PIXEL_ENC_RGB, .mem_planes =3D 1, .comp_planes =3D 1, .bpp =3D { 6=
, 0, 0, 0 }, .bpp_div =3D { 1, 1, 1, 1 }, .hdiv =3D 1, .vdiv =3D 1 },
> +		{ .format =3D V4L2_PIX_FMT_RGB48,=C2=A0=C2=A0=C2=A0=C2=A0 .pixel_enc =
=3D V4L2_PIXEL_ENC_RGB, .mem_planes =3D 1, .comp_planes =3D 1, .bpp =3D { 6=
, 0, 0, 0 }, .bpp_div =3D { 1, 1, 1, 1 }, .hdiv =3D 1, .vdiv =3D 1 },
> +		{ .format =3D V4L2_PIX_FMT_ABGR64_12, .pixel_enc =3D V4L2_PIXEL_ENC_RG=
B, .mem_planes =3D 1, .comp_planes =3D 1, .bpp =3D { 8, 0, 0, 0 }, .bpp_div=
 =3D { 1, 1, 1, 1 }, .hdiv =3D 1, .vdiv =3D 1 },
> +
> +		/* HSV formats */
> +		{ .format =3D V4L2_PIX_FMT_HSV24, .pixel_enc =3D V4L2_PIXEL_ENC_RGB, .=
mem_planes =3D 1, .comp_planes =3D 1, .bpp =3D { 3, 0, 0, 0 }, .bpp_div =3D=
 { 1, 1, 1, 1 }, .hdiv =3D 1, .vdiv =3D 1 },
> +		{ .format =3D V4L2_PIX_FMT_HSV32, .pixel_enc =3D V4L2_PIXEL_ENC_RGB, .=
mem_planes =3D 1, .comp_planes =3D 1, .bpp =3D { 4, 0, 0, 0 }, .bpp_div =3D=
 { 1, 1, 1, 1 }, .hdiv =3D 1, .vdiv =3D 1 },
> +
> =C2=A0		/* YUV packed formats */
> =C2=A0		{ .format =3D V4L2_PIX_FMT_YUYV,=C2=A0=C2=A0=C2=A0 .pixel_enc =3D=
 V4L2_PIXEL_ENC_YUV, .mem_planes =3D 1, .comp_planes =3D 1, .bpp =3D { 2, 0=
, 0, 0 }, .bpp_div =3D { 1, 1, 1, 1 }, .hdiv =3D 2, .vdiv =3D 1 },
> =C2=A0		{ .format =3D V4L2_PIX_FMT_YVYU,=C2=A0=C2=A0=C2=A0 .pixel_enc =3D=
 V4L2_PIXEL_ENC_YUV, .mem_planes =3D 1, .comp_planes =3D 1, .bpp =3D { 2, 0=
, 0, 0 }, .bpp_div =3D { 1, 1, 1, 1 }, .hdiv =3D 2, .vdiv =3D 1 },

--=-Wsz88yXF6Ple/ZN0Bspp
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQTvDVKBFcTDwhoEbxLZQZRRKWBy9AUCabxEVgAKCRDZQZRRKWBy
9No4AQD3/aAkAEwNjIOWQvIu1NDXoIuPzyXnLJ2iMFNMGp1u5wD/UwF3ZnJ1cn7m
BQCobwSyzvDMGTI14zeSx+a+Yoz9rwE=
=RVgQ
-----END PGP SIGNATURE-----

--=-Wsz88yXF6Ple/ZN0Bspp--


--===============1354678756222381012==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============1354678756222381012==--

