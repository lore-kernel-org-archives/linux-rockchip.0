Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2C1CFCCA470
	for <linux-rockchip@archiver.kernel.org>; Tue,  7 Oct 2025 18:19:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:Cc:To:From:Subject:Message-ID:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=eBONeBeubpoxAunLJlFWEDgzqwxzlWBtZ4P/U6ZfnCI=; b=qDmXDiAoBP/EpJhFwr91VGwSkX
	53slP+6gMA8Vit5E7LcA5GK9/JF9bMbm/7TU4iBKe6cvZ7cGAaH60rIBnITN1fAQbptZo69yy+lY4
	b4C0Xs/A5JlfYZIXiTGmWOd+iqDiRcUQ10r3DF4cHqobJwBXxD2D7kLHM1TWcdtv9bVPrP7dwDkE+
	TR8TSDwICnrQ9HOIOxD2pH6w577nD5yIyI8z1MGQ7qNSzNNNLcqZYmtYO+7GmmY83gSSY+JbLE1Xs
	2INKKmaBIQ5MHTyyoOr7PZtfDSaoXQ7tfoJcPE+TyiPkdyiEDLfV7f+S0Zvap7sDQ4Mq3ugG21OrN
	raEI2aYA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v6CHS-00000002Zd4-03rr;
	Tue, 07 Oct 2025 18:19:22 +0000
Received: from mail-qk1-x72a.google.com ([2607:f8b0:4864:20::72a])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v6CHP-00000002ZbT-0DtS
	for linux-rockchip@lists.infradead.org;
	Tue, 07 Oct 2025 18:19:20 +0000
Received: by mail-qk1-x72a.google.com with SMTP id af79cd13be357-85c66a8a462so941822185a.0
        for <linux-rockchip@lists.infradead.org>; Tue, 07 Oct 2025 11:19:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ndufresne-ca.20230601.gappssmtp.com; s=20230601; t=1759861158; x=1760465958; darn=lists.infradead.org;
        h=mime-version:user-agent:references:in-reply-to:date:cc:to:from
         :subject:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=ScToGLgY21W9pR03qXloVq8Erpuen1ih1N7DUB0PhsI=;
        b=NyS8u49Kt/h7Kfu9Ng6CRNV7cAsVI2QAM9r/IsvWTutmsE9BFRtw4RsUzur2LAmF6l
         v7lBnYQsgvqOCuCfFE54pn80/oY4Fn7jtUsMUmKVVHYAYyKaUQ05lJISaj6zHTgfPszG
         SW554SDyGayco88ObQOax2jPTmJCRnMZp3Mru9Jm3+QcxBzV/4BB3cDsRBYB72BvgZPK
         KJ3xw79REEuM63iSokkrC/Qv5MGoZKk4Zqgy5rF+Jie9Zy4IWsdpCjyCkDZhAEj/X1B5
         wumoVWAHoYnChCQ+lPqZlMKJH5eLyNiK9480bCiQwckuY8OyguAFaVbrN2l0dy71A3WK
         1Q2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759861158; x=1760465958;
        h=mime-version:user-agent:references:in-reply-to:date:cc:to:from
         :subject:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ScToGLgY21W9pR03qXloVq8Erpuen1ih1N7DUB0PhsI=;
        b=K5YWSCQ4w9AxBF9HT8qy2ZFqfdcRzPh1G276rrxrs+LAXoRwYgGvlY/v5EFvz4Zn6x
         4FdT9oshYwMD7n8szS9XHiGeS+xAxhmVHyhMMHtEDIgK8pYqNL0xc2aLtt1QpVN1LLWW
         iyDAGpwMKJdUA7YNjWgi6mPv2MXwGZXHxMf7EXir0xckFjfa+QzKxeSvG02a72/Ud9U9
         msMekcjuBXKfBENbe/4zAPrjylrsKB8GtL7rQVkXlDGynZqRhA/a8523X7RXeb+4OkTB
         z1bmC6PKI0LdeCjhqKdfIy5l5jvptxrXQZNZwSCizfaz0cLXD3w6fRbcC5xrs6P/mnvA
         t4Aw==
X-Forwarded-Encrypted: i=1; AJvYcCUvnMZFypFPrqaf7TqJeH1xpGHVDtmvp5vxQyX6HBaqs/+i70CVLCEEaKt7on8P/ouNSQvioXFnYTEadhioww==@lists.infradead.org
X-Gm-Message-State: AOJu0Yzg2zyKciJLO8U7N4ic3OjlT/IBphVTHF4WPyp7YBhWXbnnlAUe
	mktwZciosaVmm0lyetqlQdcpzywZo4hbvTkNYfijG2qjajhBkHGsoaJ0NRlSmjBpzgg=
X-Gm-Gg: ASbGncsX8/Jy8yBIQL52NLHFIKEMG0xe/G+NO0U/ufnVM9Tqsa8a622cCXQLZ3nuW9I
	ZklSOYOSZApfE6HQqkASi0eWiSU4DRwh0uuP4B7Y9htf8i6Ti7Q9QIYvaqUtHUqCgZxLcJIxh97
	Ot1e7qfnlpIZ23C7M3pOIEhWSz3kz10Z7zz5mI+g1WVeldn58EZxGR9Q4N9ryuayfWv1m2vVp93
	Bigz/5E+sX90sqKQMwiLGhTJJq9PCxVMvY/yVg4HtPPN5GMX6biWqgq+uJ5WwSUKNsKqQ9evFV2
	XVHrNfAwmR64S6DrdbHjfI21wiRXvRBRyrkzY8GyEyk20cieEWZh67n055BLMGi3zDD23BqfxbS
	e4MakFoaBwkj1WKwu4mRaY9m80vf2ve6Y/47UhWSXY91lcfbet4Et
X-Google-Smtp-Source: AGHT+IHAN4pZjNRmmjniVTQYekbD8pM0Q+9DHCv4rh7qOTooNtWbQmwGL4IxpavnXlznH/zxFYUPUA==
X-Received: by 2002:a05:620a:3909:b0:813:ccb9:509f with SMTP id af79cd13be357-88351de79cbmr108285785a.5.1759861157718;
        Tue, 07 Oct 2025 11:19:17 -0700 (PDT)
Received: from ?IPv6:2606:6d00:17:ebd3::c41? ([2606:6d00:17:ebd3::c41])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-87771129491sm1649508085a.2.2025.10.07.11.19.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 Oct 2025 11:19:16 -0700 (PDT)
Message-ID: <db7030790063d0ebe6d254c7053e758184b9d7cc.camel@ndufresne.ca>
Subject: Re: [PATCH 03/16] media: rockchip: rga: align stride to 16 bytes
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
Date: Tue, 07 Oct 2025 14:19:15 -0400
In-Reply-To: <20251007-spu-rga3-v1-3-36ad85570402@pengutronix.de>
References: <20251007-spu-rga3-v1-0-36ad85570402@pengutronix.de>
	 <20251007-spu-rga3-v1-3-36ad85570402@pengutronix.de>
User-Agent: Evolution 3.56.2 (3.56.2-2.fc42) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251007_111919_098096_14A8F566 
X-CRM114-Status: GOOD (  21.99  )
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
Content-Type: multipart/mixed; boundary="===============3337063927296863776=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============3337063927296863776==
Content-Type: multipart/signed; micalg="pgp-sha512";
	protocol="application/pgp-signature"; boundary="=-xTXqAg4scDgbBruSU9ja"


--=-xTXqAg4scDgbBruSU9ja
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,


Le mardi 07 octobre 2025 =C3=A0 10:31 +0200, Sven P=C3=BCschel a =C3=A9crit=
=C2=A0:
> Align the stride to a multiple of 16 according to the RGA3 requirements
> mentioned in the datasheet. This also ensures that the stride of the RGA2
> is aligned to 4 bytes, as it needs to divide the value by 4 (one word)
> before storing it in the register.
>=20
> Increasing the stride for the alignment also requires to increase the
> sizeimage value. This is usually handled by v4l2_fill_pixfmt_mp, but
> it doesn't allow to set a stride alignment. Therefore use the generated
> values to calculate the total number of lines to properly update the
> sizeimage value after the bytesperline has been aligned.
>=20
> Signed-off-by: Sven P=C3=BCschel <s.pueschel@pengutronix.de>
> ---
> =C2=A0drivers/media/platform/rockchip/rga/rga.c | 21 ++++++++++++++++++++=
+
> =C2=A01 file changed, 21 insertions(+)
>=20
> diff --git a/drivers/media/platform/rockchip/rga/rga.c
> b/drivers/media/platform/rockchip/rga/rga.c
> index
> 6438119a6c7aeff1e89e7aa95dcd5d2921fefa08..3cb7ce470c47e39d694e8176875a75f=
ad271
> 7f96 100644
> --- a/drivers/media/platform/rockchip/rga/rga.c
> +++ b/drivers/media/platform/rockchip/rga/rga.c
> @@ -459,6 +459,25 @@ static int vidioc_enum_fmt(struct file *file, void *=
priv,
> struct v4l2_fmtdesc *f
> =C2=A0	return 0;
> =C2=A0}
> =C2=A0
> +static void align_pixfmt(struct v4l2_pix_format_mplane *pix_fmt)
> +{
> +	int lines;
> +	struct v4l2_plane_pix_format *fmt;
> +
> +	/*
> +	 * Align stride to 16 for the RGA3 (based on the datasheet)
> +	 * To not dismiss the v4l2_fill_pixfmt_mp helper
> +	 * (and manually write it again), we're approximating the new
> sizeimage
> +	 */
> +	for (fmt =3D pix_fmt->plane_fmt;
> +	=C2=A0=C2=A0=C2=A0=C2=A0 fmt < pix_fmt->plane_fmt + pix_fmt->num_planes=
;
> +	=C2=A0=C2=A0=C2=A0=C2=A0 fmt++) {
> +		lines =3D DIV_ROUND_UP(fmt->sizeimage, fmt->bytesperline);
> +		fmt->bytesperline =3D (fmt->bytesperline + 0xf) & ~0xf;
> +		fmt->sizeimage =3D fmt->bytesperline * lines;

Instead of open coding this, describe this with struct v4l2_frmsize_stepwis=
e and
then use v4l2_apply_frmsize_constraints().

Nicolas

> +	}
> +}
> +
> =C2=A0static int vidioc_g_fmt(struct file *file, void *priv, struct v4l2_=
format *f)
> =C2=A0{
> =C2=A0	struct v4l2_pix_format_mplane *pix_fmt =3D &f->fmt.pix_mp;
> @@ -474,6 +493,7 @@ static int vidioc_g_fmt(struct file *file, void *priv=
,
> struct v4l2_format *f)
> =C2=A0		return PTR_ERR(frm);
> =C2=A0
> =C2=A0	v4l2_fill_pixfmt_mp(pix_fmt, frm->fmt->fourcc, frm->width, frm-
> >height);
> +	align_pixfmt(pix_fmt);
> =C2=A0
> =C2=A0	pix_fmt->field =3D V4L2_FIELD_NONE;
> =C2=A0	pix_fmt->colorspace =3D frm->colorspace;
> @@ -496,6 +516,7 @@ static int vidioc_try_fmt(struct file *file, void *pr=
iv,
> struct v4l2_format *f)
> =C2=A0				(u32)MIN_HEIGHT, (u32)MAX_HEIGHT);
> =C2=A0
> =C2=A0	v4l2_fill_pixfmt_mp(pix_fmt, fmt->fourcc, pix_fmt->width, pix_fmt-
> >height);
> +	align_pixfmt(pix_fmt);
> =C2=A0	pix_fmt->field =3D V4L2_FIELD_NONE;
> =C2=A0
> =C2=A0	return 0;

--=-xTXqAg4scDgbBruSU9ja
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQTvDVKBFcTDwhoEbxLZQZRRKWBy9AUCaOVZowAKCRDZQZRRKWBy
9MJZAQCpWWpCOI+8uxUCGwR39EX9OFe0+a9YuMmqqvplJUrUewEA0RMUMOwAoFpB
7n2OM0ustpDmfHr+P0+lF6Jtxzgqcwo=
=MSnu
-----END PGP SIGNATURE-----

--=-xTXqAg4scDgbBruSU9ja--


--===============3337063927296863776==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============3337063927296863776==--

