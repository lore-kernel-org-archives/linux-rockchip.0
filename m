Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 475E5E7545C
	for <linux-rockchip@archiver.kernel.org>; Wed, 24 Dec 2025 15:40:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:Cc:To:From:Subject:Message-ID:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=NMBc6iD/jnfdx0cdmEA6IYox3yn0rB8BYoLjxEtFVvw=; b=d8Y1gOpv2ETamAc0otJrx7ZkNI
	9s0k67fqM7eF7LbatnWL20IsH3NMZOC/Ou4VG5mxdqxY8guXFHcLaiuR3kPajUR8R7rQiMwlXssQW
	wYDlsHX7vISCzG/5IjsVq0Kd6v/L2Iyp608Uxcv6ZB4YMsAvrwDrNmtBeDa0X0V1EL57mZtr87uvc
	TnQHt3Am81Bz4+qcb0USaFmDwIo2A8X04c8LxAdf+rxRWAGJz+mceLTKfv/JGo+cDTa26jJlVaLCu
	HxrH6HwR5iWuxJryi4qNNcA9GJbiWbtgmIwuT5fOZmCuxU9+3aD8n3PiquA2UPXdajsmofNs5dHKG
	LpUY9UTA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vYQyd-0000000H883-1F5V;
	Wed, 24 Dec 2025 15:40:39 +0000
Received: from mail-qt1-x831.google.com ([2607:f8b0:4864:20::831])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vYQyR-0000000H864-2Q74
	for linux-rockchip@lists.infradead.org;
	Wed, 24 Dec 2025 15:40:30 +0000
Received: by mail-qt1-x831.google.com with SMTP id d75a77b69052e-4f4c89f8cc6so33541661cf.1
        for <linux-rockchip@lists.infradead.org>; Wed, 24 Dec 2025 07:40:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ndufresne-ca.20230601.gappssmtp.com; s=20230601; t=1766590826; x=1767195626; darn=lists.infradead.org;
        h=mime-version:user-agent:autocrypt:references:in-reply-to:date:cc:to
         :from:subject:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=pAmfkVw/Atrc5NO3olNtAEeap9hF5Cv5ikmx5qoCtMA=;
        b=FJYmn4/S5J/iMWwL+Vf2p2UY6Ef5kFW2LGc90h9Sp21h3bTXCAFUeCFIhBBSyhiWGB
         dwIchKGitV6DkJAHmykVikfAruhnAPY4HBBO4HKxA0HDx5g/F8MjQCpWuxLHftxdroPY
         qTV94FoDtYlHvSR1RC4BIoBGKFT95Cz6pcrILTHF8qfN1SZmR+7Skx7FQBQx3jqkU2QJ
         IwinS1OztshZk8eQw+aqqt8bDiDbZpM5D+K3c8ZkWtiWqkkojX7OtadtYeCfRTs/MYvr
         UZtDJ00F6qdgDStVQpOJIjlt17iiaFf9TDiilfKxK9yY5BuBq+Pu8Y0eKe0z9sFbqcJC
         sHHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766590826; x=1767195626;
        h=mime-version:user-agent:autocrypt:references:in-reply-to:date:cc:to
         :from:subject:message-id:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=pAmfkVw/Atrc5NO3olNtAEeap9hF5Cv5ikmx5qoCtMA=;
        b=Q4oXFwLp74oODV8Nfb+t3I7AxI+FwVW7xF5J9j0gS4dnDFlmt0E7F81G2MfLnxQaoQ
         h1x0/2EeLYic3lJnk8MVCjCYHMpDP95c/Sj7NH3qgkF7A7sdXxUrGba/qUYxUGv+kQMi
         hRfKvDh1zd9pOusKVy3Nx1HNUOZzhVI7hioka+aWsn4s+T/qAMzrs5eYg8eXYyBzgee5
         KgNYBE5iAycvVs4utrKAVnVIk7rUPwmoZlH59pcQ4XgSZAqhXSb3sEEs8QghTpMaH8wE
         iTAGz5+AlYmPUpQk663jZB3eFiBL08sl4wx3MQcx1Toa5WBMt6YssepSHgKJ0Cd1UN04
         xW/w==
X-Forwarded-Encrypted: i=1; AJvYcCUrhWMsupgTgCoSWVZY5jCzmRoMDbgfnOPJ37Y/xbLJ+Xg03Brk43pOJeF41CQwQZFyjRzeraJ6OFb/NpsuQg==@lists.infradead.org
X-Gm-Message-State: AOJu0YzjL1r+o/zhXEWeARkT0M8/BSn6H7r5NPY+cyBUPPxBBdrVhZ8O
	KmcXgLbLRpp8gqNuo0jfkeHfpv4G8UvxB07mVaE/FW2FAdAeeJrutpk8pqRAnFYgHhI=
X-Gm-Gg: AY/fxX5ouJmEz5f1R9yv0EMRvBmKOqaMQ8zQu2u0kSgniFJnacK+sam9qBpor0xNpzy
	j8cGSIDUzxO+NL4GG4A+HOo7XbWrIV9xYa6fEDCov76eMrX1oLofA3axvhR02fNbr6RnV2LolyE
	+vVgeApbBERW+APRt1h44JguHCQaBAbnr79Ogts40eCQTW8JHK0ZI5uJCG1FjSvZDeCjPbynBRe
	IQ0jq0hEDZdMBfuHyMMb5kz+6ucqFTPUg7eYvv8HNNXqx9cRgWPCtYC01uof5BFvauk45+mksHC
	fteaMoG8qcBEioxm4MuqQNCNpRECrvA/6dgapruAL30s+o0hopaR4w/5/+S7tZTn6uTKCL3C0LM
	OrH+BB9EUxlw0EELy+BmMzj6R+xHQ6EeSBaKEvVFKEKeTI9u1XmG+ddMX4RGFh7oKzNdxDE0a2/
	VuyZ19s1gTApdVGkbv/A9Cin4HruA=
X-Google-Smtp-Source: AGHT+IFVTDqo5NImuh8dJflj1u+j/C11vEMKbGl2sIOtRl+G9xzRhCF4eVp8IhKaJjVBWMPJWs768g==
X-Received: by 2002:a05:622a:64b:b0:4f1:ca48:cd3 with SMTP id d75a77b69052e-4f4abdca4dbmr280365181cf.80.1766590826197;
        Wed, 24 Dec 2025 07:40:26 -0800 (PST)
Received: from ?IPv6:2606:6d00:17:7b4b::c41? ([2606:6d00:17:7b4b::c41])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-4f4d5f042a7sm54571791cf.27.2025.12.24.07.40.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Dec 2025 07:40:25 -0800 (PST)
Message-ID: <76ed32b0827b59a8e5c27f5aed0acad25b7346ee.camel@ndufresne.ca>
Subject: Re: [PATCH v2 12/22] media: rockchip: rga: use card type to specify
 rga type
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
Date: Wed, 24 Dec 2025 10:40:24 -0500
In-Reply-To: <20251203-spu-rga3-v2-12-989a67947f71@pengutronix.de>
References: <20251203-spu-rga3-v2-0-989a67947f71@pengutronix.de>
	 <20251203-spu-rga3-v2-12-989a67947f71@pengutronix.de>
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
X-CRM114-CacheID: sfid-20251224_074027_624965_F8BFA4DA 
X-CRM114-Status: GOOD (  16.85  )
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
Content-Type: multipart/mixed; boundary="===============6736369814764062420=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============6736369814764062420==
Content-Type: multipart/signed; micalg="pgp-sha512";
	protocol="application/pgp-signature"; boundary="=-iSVsm9iaJru3TcFBKLaq"


--=-iSVsm9iaJru3TcFBKLaq
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Le mercredi 03 d=C3=A9cembre 2025 =C3=A0 16:52 +0100, Sven P=C3=BCschel a =
=C3=A9crit=C2=A0:
> In preparation of the RGA3 support add a filed to the rga_hw struct
> to specify the desired card type value. This allows the user to
> differentiate the RGA2 and RGA3 video device nodes.
>=20
> Signed-off-by: Sven P=C3=BCschel <s.pueschel@pengutronix.de>

Reviewed-by: Nicolas Dufresne <nicolas.dufresne@collabora.com>

> ---
> =C2=A0drivers/media/platform/rockchip/rga/rga-hw.c | 1 +
> =C2=A0drivers/media/platform/rockchip/rga/rga.c=C2=A0=C2=A0=C2=A0 | 4 +++=
-
> =C2=A0drivers/media/platform/rockchip/rga/rga.h=C2=A0=C2=A0=C2=A0 | 1 +
> =C2=A03 files changed, 5 insertions(+), 1 deletion(-)
>=20
> diff --git a/drivers/media/platform/rockchip/rga/rga-hw.c b/drivers/media=
/platform/rockchip/rga/rga-hw.c
> index 2ed4f22a999d5..8953960d33bc5 100644
> --- a/drivers/media/platform/rockchip/rga/rga-hw.c
> +++ b/drivers/media/platform/rockchip/rga/rga-hw.c
> @@ -617,6 +617,7 @@ static struct rga_fmt formats[] =3D {
> =C2=A0};
> =C2=A0
> =C2=A0const struct rga_hw rga2_hw =3D {
> +	.card_type =3D "rga2",
> =C2=A0	.formats =3D formats,
> =C2=A0	.num_formats =3D ARRAY_SIZE(formats),
> =C2=A0	.cmdbuf_size =3D RGA_CMDBUF_SIZE,
> diff --git a/drivers/media/platform/rockchip/rga/rga.c b/drivers/media/pl=
atform/rockchip/rga/rga.c
> index 46dc94db6f85e..c9719c7bcfc1c 100644
> --- a/drivers/media/platform/rockchip/rga/rga.c
> +++ b/drivers/media/platform/rockchip/rga/rga.c
> @@ -306,8 +306,10 @@ static const struct v4l2_file_operations rga_fops =
=3D {
> =C2=A0static int
> =C2=A0vidioc_querycap(struct file *file, void *priv, struct v4l2_capabili=
ty *cap)
> =C2=A0{
> +	struct rockchip_rga *rga =3D video_drvdata(file);
> +
> =C2=A0	strscpy(cap->driver, RGA_NAME, sizeof(cap->driver));
> -	strscpy(cap->card, "rockchip-rga", sizeof(cap->card));
> +	strscpy(cap->card, rga->hw->card_type, sizeof(cap->card));
> =C2=A0	strscpy(cap->bus_info, "platform:rga", sizeof(cap->bus_info));
> =C2=A0
> =C2=A0	return 0;
> diff --git a/drivers/media/platform/rockchip/rga/rga.h b/drivers/media/pl=
atform/rockchip/rga/rga.h
> index d02d5730b4e3b..ee50f7f3ed601 100644
> --- a/drivers/media/platform/rockchip/rga/rga.h
> +++ b/drivers/media/platform/rockchip/rga/rga.h
> @@ -147,6 +147,7 @@ static inline void rga_mod(struct rockchip_rga *rga, =
u32 reg, u32 val, u32 mask)
> =C2=A0};
> =C2=A0
> =C2=A0struct rga_hw {
> +	const char *card_type;
> =C2=A0	struct rga_fmt *formats;
> =C2=A0	u32 num_formats;
> =C2=A0	size_t cmdbuf_size;

--=-iSVsm9iaJru3TcFBKLaq
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQTvDVKBFcTDwhoEbxLZQZRRKWBy9AUCaUwJaAAKCRDZQZRRKWBy
9DfUAP4tGGTGdSumiiCEC5Pd1HfzW6ZpmXvcn4g9LgwJOuZ0LQD+L7bR5JiX40dz
k2R88GKReR7xGFeWdJ5PrYqiYPyTrw8=
=JUrc
-----END PGP SIGNATURE-----

--=-iSVsm9iaJru3TcFBKLaq--


--===============6736369814764062420==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============6736369814764062420==--

