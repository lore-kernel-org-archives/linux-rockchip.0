Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9EB19E776C0
	for <linux-rockchip@archiver.kernel.org>; Wed, 24 Dec 2025 16:02:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:Cc:To:From:Subject:Message-ID:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=gPrIQC0vN7RvhwMh8ZeBrJqPYv9z7hmPkx89mlM4WrA=; b=Yk1MjyGVVPNKsWGCFVxXiwHjZa
	1ffFbWXiN33vCfLpy6tiwxJAOKFGX0TiK24qCR4Um7uoM0n9cCOdgWaIjmZyjP9sVx0e8ZODi/tbo
	5xHLDOVCKD4pjCmnALU6uY6I2ojo1mE4jcDlNJiTR2G7mrKyTU/fTZe6fqG7inULQuDmR4zJ351A9
	NbZIF70mMwF8+4Ktm1f+Y06DH77vbqUGNItAjyqOvd0hJrk9KfQ9Li/idyCvfohcPRUVX+Gg+Aa7e
	iwu7sdY8tewxHJuyEU2LxOCBEzWs6umw1CcbSjJJp2Begp4Zh1q0bARMKo91q/nl1JE6SeQeRxozq
	Kfz6HoZg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vYRJq-0000000HBbf-40TZ;
	Wed, 24 Dec 2025 16:02:34 +0000
Received: from mail-qv1-xf30.google.com ([2607:f8b0:4864:20::f30])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vYRJk-0000000HBY0-2efg
	for linux-rockchip@lists.infradead.org;
	Wed, 24 Dec 2025 16:02:31 +0000
Received: by mail-qv1-xf30.google.com with SMTP id 6a1803df08f44-888bd3bd639so76365236d6.1
        for <linux-rockchip@lists.infradead.org>; Wed, 24 Dec 2025 08:02:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ndufresne-ca.20230601.gappssmtp.com; s=20230601; t=1766592147; x=1767196947; darn=lists.infradead.org;
        h=mime-version:user-agent:autocrypt:references:in-reply-to:date:cc:to
         :from:subject:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=0gUckkQiMWDEV8Y/iNQuijq4dqvWtVuRxF13+jZ5SQ8=;
        b=oExquNEm42zjsrxirxGVlOzcg0zDiKQGptqT3ad3ah0XNoLYcA5G8v9Vtw2UmCMwdl
         twPuyR4cuXvU+gZKkS6P/0uhegp7kmvcsygDJEBHd6bwKfD5mVyOHTkbO99OGTsxGxX6
         mmOxEpM1Cnri5HFGgsFdc2ON8CpD96fC4PobxET7RrzP/TXkYZWaCnht+CMsiazzU4rS
         czicgFUWuLBfxqIvLjmd1OF55QVsTl1rd5zntsvMX9ZxLio1xMLcb6ZhFIzGyVk0c+xq
         YqfwvuOk2eWMZb3JW7viqtY2i0lYMGH2VwJTNGeZ9CDXy8WDKyM+iyhFCbFwTcfBZk5U
         JJpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766592147; x=1767196947;
        h=mime-version:user-agent:autocrypt:references:in-reply-to:date:cc:to
         :from:subject:message-id:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=0gUckkQiMWDEV8Y/iNQuijq4dqvWtVuRxF13+jZ5SQ8=;
        b=rinYivi7uTGgHBpz7Ui5rULPuHF8H0gQeXC8HMnJAgWzILxxl1zJ3pQsbFlHSciCTb
         lSxPwyPNMA/MGSBOLA0h7ZTFjnlQm/CwtrFQXPLsxecGzkPxoMgOttwiEBQ9yjlPONhV
         PiEV4qAODSPzvqedMd1eNs+a6Z9m4HJFXnAVUIeBrVvw4/5LUgY1oToiwfnWH+GPDM/N
         FpbPoo/C/lrPxGFfxqdKAbjE0MRoBaDaHqE0cY32OJRFn1iQfyyk8RleZ/5fr2opbI/B
         9zFufVeLqo8fKitAX9o8zcoDKK4JGErzFJT837OSNeBr8iYE64qzVVm3CpBAMazwNQeF
         zo8Q==
X-Forwarded-Encrypted: i=1; AJvYcCVURg2uSFu6dyHWyMu62v/8wxTMbfhJCIaaEy/OZ7u+qoXDvO4ivU0nmlYWKJurxGBCPNZAmWMYXlwoaqRpVw==@lists.infradead.org
X-Gm-Message-State: AOJu0YxzHLAAYNLGik3W7F94R/x7tOTOEpcphOAPw2eHy5HA/35U0+uu
	MeQOxgwoSvCovtPzgOXX7pF6kpRDgp77M3h0BOjpcaVC+f63StPRxE+/yamb0by1A7E=
X-Gm-Gg: AY/fxX4hB/GLAu0VW8ObhqGotMV9qdrlNKYXOR3owM297PZXcJtFnxZJZX/rx4h5U8M
	M4EWXG2C9EqCVPMYA/1ohj8Rhnbnq7Yiwi31bZIOX5HvsIdcfM7nGZEwc/RSCVrU3uEZdddsBFu
	faSYPUm9PTz6FRzWpk299rftvHyL8TYz2zkbjZKVLO1FS7u1j9QDDLC55WsbyqaVRzgYuQ4sZTg
	qtQtBtFVzo4gnXZ5v74OMiHovCP2VxdlFCIUSxTReBqDyWrNPzzPe5OKpsiZKLSjWQJ1s8LjgO2
	StFKjme+e5hZ2Ryu4oj1hg5xSho0jCAL/R3ojmOQXWS8BK0UyMFMFCQ3b6aEm0rqbCeH7NSJFhk
	EQaq66Dcjuuf25ugQkhNumSzbMmoZfqNBrYgWdSk1NiQTMfvxaSRFchmsso9hK+bQUNJ8a4WgcF
	OpMxA3WuNTth/iG7txa0+reskYgKo=
X-Google-Smtp-Source: AGHT+IEFnLq7YYyKCpTAAkpCvsEwt+D1E176gm6ItJAQzHOJHeP7ZSAwy1foR72Go8Tw9D6I6jZcRA==
X-Received: by 2002:a05:6214:23c5:b0:88a:4c50:3be0 with SMTP id 6a1803df08f44-88c5001fe40mr330716406d6.6.1766592147399;
        Wed, 24 Dec 2025 08:02:27 -0800 (PST)
Received: from ?IPv6:2606:6d00:17:7b4b::c41? ([2606:6d00:17:7b4b::c41])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-88d9623fdd8sm127755006d6.4.2025.12.24.08.02.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Dec 2025 08:02:26 -0800 (PST)
Message-ID: <8a026dd07133203789e91d0a1662c8b162842fe2.camel@ndufresne.ca>
Subject: Re: [PATCH v2 20/22] media: rockchip: rga: disable multi-core
 support
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
Date: Wed, 24 Dec 2025 11:02:25 -0500
In-Reply-To: <20251203-spu-rga3-v2-20-989a67947f71@pengutronix.de>
References: <20251203-spu-rga3-v2-0-989a67947f71@pengutronix.de>
	 <20251203-spu-rga3-v2-20-989a67947f71@pengutronix.de>
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
X-CRM114-CacheID: sfid-20251224_080228_745770_896D3EFF 
X-CRM114-Status: GOOD (  19.35  )
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
Content-Type: multipart/mixed; boundary="===============1274366434371456298=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============1274366434371456298==
Content-Type: multipart/signed; micalg="pgp-sha512";
	protocol="application/pgp-signature"; boundary="=-wJ3d6X1bJnPZfOqoogSs"


--=-wJ3d6X1bJnPZfOqoogSs
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

Le mercredi 03 d=C3=A9cembre 2025 =C3=A0 16:52 +0100, Sven P=C3=BCschel a =
=C3=A9crit=C2=A0:
> Disable multi-core support in preparation of the RGA3 addition. The
> RK3588 SoC features two equal RGA3 cores. This allows scheduling of the
> work between both cores, which is not yet implemented. Until it is
> implemented avoid exposing both cores as independent video devices to
> prevent an ABI breakage when multi-core support is added.

Please add a Link: and reference to the Hantro patch from which is code is =
from.

>=20
> Signed-off-by: Sven P=C3=BCschel <s.pueschel@pengutronix.de>

Reviewed-by: Nicolas Dufresne <nicolas.dufresne@collabora.com>

> ---
> =C2=A0drivers/media/platform/rockchip/rga/rga.c | 28 ++++++++++++++++++++=
++++++++
> =C2=A01 file changed, 28 insertions(+)
>=20
> diff --git a/drivers/media/platform/rockchip/rga/rga.c b/drivers/media/pl=
atform/rockchip/rga/rga.c
> index 3958e71b8987d..65686228b7300 100644
> --- a/drivers/media/platform/rockchip/rga/rga.c
> +++ b/drivers/media/platform/rockchip/rga/rga.c
> @@ -660,6 +660,30 @@ static int rga_parse_dt(struct rockchip_rga *rga)
> =C2=A0	return 0;
> =C2=A0}
> =C2=A0
> +static int rga_disable_multicore(struct device *dev)
> +{
> +	const char *compatible;
> +	struct device_node *node;
> +	int ret;
> +
> +	/* Intentionally ignores the fallback strings */
> +	ret =3D of_property_read_string(dev->of_node, "compatible", &compatible=
);
> +	if (ret)
> +		return ret;
> +
> +	/* first compatible node found from the root node is considered the mai=
n core */
> +	node =3D of_find_compatible_node(NULL, NULL, compatible);
> +	if (!node)
> +		return -EINVAL; /* broken DT? */
> +
> +	if (dev->of_node !=3D node) {
> +		dev_info(dev, "missing multi-core support, ignoring this instance\n");
> +		return -ENODEV;
> +	}
> +
> +	return 0;
> +}
> +
> =C2=A0static int rga_probe(struct platform_device *pdev)
> =C2=A0{
> =C2=A0	struct rockchip_rga *rga;
> @@ -670,6 +694,10 @@ static int rga_probe(struct platform_device *pdev)
> =C2=A0	if (!pdev->dev.of_node)
> =C2=A0		return -ENODEV;
> =C2=A0
> +	ret =3D rga_disable_multicore(&pdev->dev);
> +	if (ret)
> +		return ret;
> +
> =C2=A0	rga =3D devm_kzalloc(&pdev->dev, sizeof(*rga), GFP_KERNEL);
> =C2=A0	if (!rga)
> =C2=A0		return -ENOMEM;

--=-wJ3d6X1bJnPZfOqoogSs
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQTvDVKBFcTDwhoEbxLZQZRRKWBy9AUCaUwOkQAKCRDZQZRRKWBy
9DoNAP49R5fmbpOQZrG+CW5SIxPtxG/Kcyz9Q6Ni/IKBI6sVrAEAp1d03zsU2KxX
+bCR04gtVpJFE7vpqhXfYwfkx8nZrAo=
=R+Md
-----END PGP SIGNATURE-----

--=-wJ3d6X1bJnPZfOqoogSs--


--===============1274366434371456298==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============1274366434371456298==--

