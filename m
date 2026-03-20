Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 230561099B28
	for <linux-rockchip@archiver.kernel.org>; Fri, 20 Mar 2026 17:48:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:Cc:To:From:Subject:Message-ID:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=281oNFsBUiKp7jAX8XrAEVcn4AdH2Pxe80u1/519tNU=; b=zqLSAS7T2sBbq9kC9d1+rAuFBz
	cnvLHT7DckoZeo+qvTQz3RwgQMT8/Bv3dLNo6XmTBpdJ/TOs6Z8/aCEwL0bd1Lbj/g4lwAEtF6eTp
	vsi+TkOP4blu2Qx8eZWFq9RIRvjc2Z6cbxcMkOq8JFsCWM68LZXc+eywMrhrLku9WTsjpkWtfgD+v
	2g4fcCnD/EgrnPlJnveHsNPKrEU84A9YeDOcVaNLwP47VVWYnl9qq++tHGCfu16raSz27GG85Weq5
	VBMaITklB4JNvaE6E7s1doSlfn3b+cbZqU0VFsvOsLC744aQGGfRFhzB1Ge1hlvIwHJGq6Dq0u7tm
	8No2+QNg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w3dx6-0000000DJlL-2HbO;
	Fri, 20 Mar 2026 17:48:04 +0000
Received: from mail-qk1-x72c.google.com ([2607:f8b0:4864:20::72c])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w3dx3-0000000DJkR-0Klk
	for linux-rockchip@lists.infradead.org;
	Fri, 20 Mar 2026 17:48:03 +0000
Received: by mail-qk1-x72c.google.com with SMTP id af79cd13be357-8ca01dc7d40so253167285a.1
        for <linux-rockchip@lists.infradead.org>; Fri, 20 Mar 2026 10:48:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ndufresne-ca.20230601.gappssmtp.com; s=20230601; t=1774028880; x=1774633680; darn=lists.infradead.org;
        h=mime-version:user-agent:autocrypt:references:in-reply-to:date:cc:to
         :from:subject:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=H3CCOGtwXJ4+/c4xKC51d2CLIBrX+gi1qbIE0AmJJek=;
        b=CDloIU9H2fxvdr/RDqYIdaBugTs7TSCoOkJJBjrN/VYEFfyWDN8C3mAwJcmHnWSuKf
         YRYgw3BbLMe1NOPsgmU2MfhM4J+mD8YYyMOlu1yKKMsWDcijoZIbFnbgMT48EtdKUVNu
         FxBtx+DN6zk7w5eKViUlfhjfazWVYSrTVoR1sy/ex8C0VMn6dx6ZY/wBJq9mqms5UjMP
         dnfdRCqLEODOPNw4MTMIoLvmW8W0y5Xt4sUWmjUnzi0LP3UKNTuxqVp0r93a0jZvH+Hy
         piadtMaUBKWPIjzgDBfkoulUTgqvgTVSON+Ek9MrC9zVrHVIdbveYgaVycPXaLLAuOqK
         PCFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1774028880; x=1774633680;
        h=mime-version:user-agent:autocrypt:references:in-reply-to:date:cc:to
         :from:subject:message-id:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=H3CCOGtwXJ4+/c4xKC51d2CLIBrX+gi1qbIE0AmJJek=;
        b=MpdFQ55LoFV59TmcRrVobwZq1HFfLVoZDtHXYkk7mT+eWz3p4S8w0g3QZdBpCyCdKc
         jOJi6K7mzYj0010Pvele+lUKYUHC23Bdv5Fvb2JQn01TdL/2ssICkqa+2oOeMokLP26H
         wemwf4252JJaCUgmfR6M/9ruML5ifcBgRBoHkqbDcvHj5/Ydu4IEJqXAxOGpKakNWeka
         zJFRoPJ83NoLg20gf1wXGfPrNHijJGE20no0+Mlwqmr0j9CZfSwS9Lb64wrTii0bX3n7
         e92XfDKjI5fpNQ1QtSfUP1KgFVLLqxGGXUDzjmmnMqaIp5d+hRYPeK+0NB5R0wOzhxgM
         5YKw==
X-Forwarded-Encrypted: i=1; AJvYcCV/oVXl8msrJFwlOASyybErCv/1lEv5nYLJFUgDmXREbNUipWWqjWSBsSLQZMwQ/KutyQYRHUCOEEUhxHR0kQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YxzJ3hbm+fw09PRQjm+FEeSqCcDgT/HGiCDjaMQhdSaTYPpEd3x
	+WBPot9M/B9ABCPZ/4n1kCYry2XVPe3ISLE5tGzzFqzFedQ/qVDIVpOzL7BAv53wOq4=
X-Gm-Gg: ATEYQzwX1GjZOw92A4di4CvQU7zshhduEUjBhQls/Rlmvpltte+X1VUxPsVuxm9SfKd
	cI750DvhXlGVYFHWfbepfjNCf9FVtWMVHWeD4tda26ncOVO4ghtjhdSJ1ItOPL7uyAqFTKqVY39
	Ku++el7URqgDqIpRnhccEfWRUcS0+vcYjcxJxah9CTMSdjD6O59fE/HLyRhojfSWacZ+mzLdU8b
	sgXQSWUTdwq/XqcWJHh9GWyUky9alhwxFfNy1pDSzBzZzg9CM1rcmuywObKV5s6tOXygchrZ8xw
	dCKK2tIDRNDzmBAxB4XxmGQnc/3fFQNVWG9uFJqBcNfZ0ZhP/C3Ak6Ngbu4WXOVgS6p3ezy/XS7
	jdqftzqIQGmhE60/H5Q0TEmPArNpOtGmiMKQ/SmyHGW8EaAi5jBr9MsQUdsnvp4gYvFFhj5LM0p
	wP0gBu+b6xUvudkeZXJbkDsKHIMm+FfR7sSamS1UM=
X-Received: by 2002:a05:620a:1a29:b0:8cd:982d:411d with SMTP id af79cd13be357-8cfc7f6c676mr563879485a.52.1774028879543;
        Fri, 20 Mar 2026 10:47:59 -0700 (PDT)
Received: from ?IPv6:2606:6d00:11:b76d::5ac? ([2606:6d00:11:b76d::5ac])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-89c85214a43sm25647846d6.6.2026.03.20.10.47.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 20 Mar 2026 10:47:58 -0700 (PDT)
Message-ID: <c154098ce7fd5d6bfcb44066b7c1f0cde07ff81d.camel@ndufresne.ca>
Subject: Re: [PATCH v3 11/27] media: rockchip: rga: avoid odd frame sizes
 for YUV formats
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
Date: Fri, 20 Mar 2026 13:47:57 -0400
In-Reply-To: <20260127-spu-rga3-v3-11-77b273067beb@pengutronix.de>
References: <20260127-spu-rga3-v3-0-77b273067beb@pengutronix.de>
	 <20260127-spu-rga3-v3-11-77b273067beb@pengutronix.de>
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
X-CRM114-CacheID: sfid-20260320_104801_857729_611DF1EC 
X-CRM114-Status: GOOD (  17.58  )
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
Content-Type: multipart/mixed; boundary="===============3167484501778713240=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============3167484501778713240==
Content-Type: multipart/signed; micalg="pgp-sha512";
	protocol="application/pgp-signature"; boundary="=-aiCC/tPL3UyCTVFf/HVn"


--=-aiCC/tPL3UyCTVFf/HVn
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Le mardi 27 janvier 2026 =C3=A0 15:39 +0100, Sven P=C3=BCschel a =C3=A9crit=
=C2=A0:
> Avoid odd frame sizes for YUV formats, as they may cause undefined
> behavior. This is done in preparation for the RGA3, which hangs when the
> output format is set to 129x129 pixel YUV420 SP (NV12).
>=20
> This requirement is documented explicitly for the RGA3 in=C2=A0 section 5=
.6.3
> of the RK3588 TRM Part 2. For the RGA2 the RK3588 TRM Part 2
> (section 6.1.2) and RK3568 TRM Part 2 (section 14.2) only mentions the
> x/y offsets and stride aligning requirements. But the vendor driver for
> the RGA2 also contains checks for the width and height to be aligned to
> 2 bytes.
>=20
> Signed-off-by: Sven P=C3=BCschel <s.pueschel@pengutronix.de>
> ---
> =C2=A0drivers/media/platform/rockchip/rga/rga.c | 19 ++++++++++++++-----
> =C2=A01 file changed, 14 insertions(+), 5 deletions(-)
>=20
> diff --git a/drivers/media/platform/rockchip/rga/rga.c b/drivers/media/pl=
atform/rockchip/rga/rga.c
> index 21a3c6cd38dbc..4fa6adb10b7ee 100644
> --- a/drivers/media/platform/rockchip/rga/rga.c
> +++ b/drivers/media/platform/rockchip/rga/rga.c
> @@ -337,6 +337,19 @@ static int vidioc_try_fmt(struct file *file, void *p=
riv, struct v4l2_format *f)
> =C2=A0	struct rga_ctx *ctx =3D file_to_rga_ctx(file);
> =C2=A0	const struct rga_hw *hw =3D ctx->rga->hw;
> =C2=A0	struct rga_fmt *fmt;
> +	struct v4l2_frmsize_stepwise frmsize =3D {
> +		.min_width =3D hw->min_width,
> +		.max_width =3D hw->max_width,
> +		.min_height =3D hw->min_height,
> +		.max_height =3D hw->max_height,
> +		.step_width =3D 1,
> +		.step_height =3D 1,
> +	};
> +
> +	if (v4l2_is_format_yuv(v4l2_format_info(pix_fmt->pixelformat))) {
> +		frmsize.step_width =3D 2;
> +		frmsize.step_height =3D 2;

For V4L2_PIX_FMT_YUV422P and NV16 this is 2/1. I believe you can generalize=
 this
with the format info, and skip this conditions:

		.step_with =3D info->vdiv,
		.step_height =3D info->hdiv

Though, I'm saying that from a pixel format perspective, if the HW needs 2/=
2 for
all YUV formats, let me know, I'll give my Rb.

Nicolas

> +	}
> =C2=A0
> =C2=A0	if (V4L2_TYPE_IS_CAPTURE(f->type)) {
> =C2=A0		const struct rga_frame *frm;
> @@ -358,11 +371,7 @@ static int vidioc_try_fmt(struct file *file, void *p=
riv, struct v4l2_format *f)
> =C2=A0	if (!fmt)
> =C2=A0		fmt =3D &hw->formats[0];
> =C2=A0
> -	pix_fmt->width =3D clamp(pix_fmt->width,
> -			=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 hw->min_width, hw->max_width);
> -	pix_fmt->height =3D clamp(pix_fmt->height,
> -				hw->min_height, hw->max_height);
> -
> +	v4l2_apply_frmsize_constraints(&pix_fmt->width, &pix_fmt->height, &frms=
ize);
> =C2=A0	v4l2_fill_pixfmt_mp(pix_fmt, fmt->fourcc, pix_fmt->width, pix_fmt-=
>height);
> =C2=A0	pix_fmt->field =3D V4L2_FIELD_NONE;
> =C2=A0

--=-aiCC/tPL3UyCTVFf/HVn
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQTvDVKBFcTDwhoEbxLZQZRRKWBy9AUCab2ITQAKCRDZQZRRKWBy
9FnHAP9MXGaIWpolRasMrqQ7Y5bXCM/vLXshxf2/etb9oydBUwD+KLxgWdY37E/D
WBZ3ODJn/aS23VsB+5pnmZYe6avkqgI=
=XjGb
-----END PGP SIGNATURE-----

--=-aiCC/tPL3UyCTVFf/HVn--


--===============3167484501778713240==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============3167484501778713240==--

