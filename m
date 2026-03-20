Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0A7961099B31
	for <linux-rockchip@archiver.kernel.org>; Fri, 20 Mar 2026 18:02:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:Cc:To:From:Subject:Message-ID:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=6TeD+3vSeHPKkQX+v1uZ/72VtVFTimp8cirjSrVljFE=; b=xyd2BTXnroeMT1uB71trJOOcFu
	IWxhno5yI4w6eaBVF6Locuou2sKqUtDEt3j2BzJqeGOt76LzlbORHkSRvrj73LR/2rJI4hsPeQbrK
	WKjtgJfWQ1wxIejv48U9YLeT3f+A9LIEPz4ufWkj0RJEqqkSky6gs+muDUZm/TV6zCQB/NmjGJ/PO
	DIwPFUtEmL5ZqjX1izobHBgPuCLjkHgHPMt7zx3QSir2qpSmvUjnwcBEEScIuuiZnG6qCXQhtgRZQ
	5PSZKhjKNBBOwIMV7uJhsbxxH9a1VHTVzzUrAf1uXsNPB6cgjLmlm9WNhpSwat5EhY9TKxBnv22Ch
	bjb5evWg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w3eAi-0000000DLON-33rj;
	Fri, 20 Mar 2026 18:02:08 +0000
Received: from mail-qk1-x742.google.com ([2607:f8b0:4864:20::742])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w3eAf-0000000DLNa-2LpN
	for linux-rockchip@lists.infradead.org;
	Fri, 20 Mar 2026 18:02:08 +0000
Received: by mail-qk1-x742.google.com with SMTP id af79cd13be357-8cb3bae8d3eso197694485a.1
        for <linux-rockchip@lists.infradead.org>; Fri, 20 Mar 2026 11:02:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ndufresne-ca.20230601.gappssmtp.com; s=20230601; t=1774029724; x=1774634524; darn=lists.infradead.org;
        h=mime-version:user-agent:references:in-reply-to:date:cc:to:from
         :subject:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=Onnst1Yk+/sF58VoWLFIxA1fIHkkY4f4Vk4kcTJKl0c=;
        b=NUpn2+hhZ5aXYpuM2bLbTsBm28WAfdhBpS1ND3W5xIhztZMnk5IFHHYQGxf131WMt9
         8gdPTsFMW3AGA0mvRxLD2TG3cqJJzZcEbfO14AiF7haCdqxx0wpnQuaOqF3QwP3vMWTV
         f3dQxIzxVSvtaGQKNcMGmdLZWxaLVxNkZM9DX3qUDpvQ+SwY7r8F6p5Tjku3n75wcSzp
         8G3H8e/BZIYLXXbXsTRNI6jRaOexXMjTBzlvlx4BuyDmzRipKEFk7cSHhE28lC/iqG7z
         EE5hqqArMz7V/sHJLEHY+Ca1U89+bPbJT/vwm4cXOiTy+KhVEmT0ohaH7m+qWVKP8P4+
         mX5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1774029724; x=1774634524;
        h=mime-version:user-agent:references:in-reply-to:date:cc:to:from
         :subject:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=Onnst1Yk+/sF58VoWLFIxA1fIHkkY4f4Vk4kcTJKl0c=;
        b=M6XLhLc8Kq3W+FmP5GTIo/ZHpcMF2SgUiNStTg2HGJzHraevdXq3MbEV9lxRH12KRr
         Y3og8GVwzqGSyQ3jh5rGASL99AKpRc2e8Ul8rxeJbTchFL71IS+o5vqvgw9E+dtr1aU7
         glEhsBi+hOAhbVOVsC+D5uxaqB3Xw3oxU/rvJDtp2Az6TIUZmdLdR5sDdJsjv/U8CGJU
         lvhTJtZGNzHtX/XdQpqDMtg2cgssmYDCbiGYnxx/S6WolKNjazPS9eZNmYAeUm8w13LQ
         nBPj3ADV5SBPySlA8R5x2mfr9+BSNtFo4yraHuHftSVBixNDzwKrYciAz/u6CRAOnlqw
         ccGA==
X-Forwarded-Encrypted: i=1; AJvYcCWHql1j7xOCDAf8R+W5GjE333jq1VilHQ6tZyH9l9vL0dzBohk2/yzMHzyrWZyZl8SxUim6dUYUd5UB8bf3fw==@lists.infradead.org
X-Gm-Message-State: AOJu0YwezZb7QwJNsDVVZ0sVeDCDgwsLaTRUeo2esN2Z67Y6uYrOGA80
	VAxHimHRz3SHgECZGUkG200WmeVKrQ+F5tAM61DzottUdjbKuCuafBykTUBT93W65kc=
X-Gm-Gg: ATEYQzxXDLKTM6vDsUuJtdb57pmvRtgH26KeUORreTV766rexZv7lZIClv2iIuYwmAe
	JFqbMhuLkUTrE+r88U1PqqwMCScDLKBbjZBdkTx04X+VDugJTwcJfGjZNm8eOkaXKVcfR0FQKof
	Atwxt1QJWSxTnc9oHaQRvUGNNc7Dp/SF9VqWjaftxkP3MHuQgv+RzjmaXYz8jwM2dcs5sLowbAt
	zwBeJdpwiGjk5M1NIqVojqr2Q4hc9dZWXdMa8wmsSqGgD7Vs3G1jPLZ+3z4rqaqxKAYaw3H8ewf
	QbajLY0RMucuDCYgNa8oUj8EULI7GLS8SUUH9TmZ/Xi26ql03Rfaqv+7ELVQsy61mLYv0bua09y
	R5kjcAtPOi764Os3lwXTBgLYZtGiM5U8izFGCHCGgek7ILhmuNVoElAV8Fw0OkTnHTrTsojK+CW
	JoUdtlp36dGttgOwOTLauTgi5DTNuX
X-Received: by 2002:a05:622a:258c:b0:50b:277f:3c46 with SMTP id d75a77b69052e-50b375f0215mr59663181cf.69.1774029724099;
        Fri, 20 Mar 2026 11:02:04 -0700 (PDT)
Received: from ?IPv6:2606:6d00:11:b76d::5ac? ([2606:6d00:11:b76d::5ac])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-50b36e80cb9sm25129221cf.25.2026.03.20.11.02.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 20 Mar 2026 11:02:03 -0700 (PDT)
Message-ID: <42883104d21844b34959945e9af161c92644bd81.camel@ndufresne.ca>
Subject: Re: [PATCH v3 25/27] media: rockchip: rga: disable multi-core
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
Date: Fri, 20 Mar 2026 14:01:59 -0400
In-Reply-To: <20260127-spu-rga3-v3-25-77b273067beb@pengutronix.de>
References: <20260127-spu-rga3-v3-0-77b273067beb@pengutronix.de>
	 <20260127-spu-rga3-v3-25-77b273067beb@pengutronix.de>
User-Agent: Evolution 3.58.3 (3.58.3-1.fc43) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260320_110205_617627_DDDCB9DD 
X-CRM114-Status: GOOD (  25.16  )
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
Content-Type: multipart/mixed; boundary="===============0441257716810480371=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============0441257716810480371==
Content-Type: multipart/signed; micalg="pgp-sha512";
	protocol="application/pgp-signature"; boundary="=-z2my5z6cvzeWllcl7dyY"


--=-z2my5z6cvzeWllcl7dyY
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Le mardi 27 janvier 2026 =C3=A0 15:39 +0100, Sven P=C3=BCschel a =C3=A9crit=
=C2=A0:
> Disable multi-core support in preparation of the RGA3 addition. The
> RK3588 SoC features two equal RGA3 cores. This allows scheduling of the
> work between both cores, which is not yet implemented. Until it is
> implemented avoid exposing both cores as independent video devices to
> prevent an ABI breakage when multi-core support is added.
>=20
> This patch is copied from the Hantro driver patch to disable multi core
> support by Sebastian Reichel. See
> commit ccdeb8d57f7f ("media: hantro: Disable multicore support")
>=20
> Link: https://lore.kernel.org/all/20240618183816.77597-4-sebastian.reiche=
l@collabora.com/
> Signed-off-by: Sven P=C3=BCschel <s.pueschel@pengutronix.de>

Reviewed-by: Nicolas Dufresne <nicolas.dufresne@collabora.com>

> ---
> =C2=A0drivers/media/platform/rockchip/rga/rga.c | 47 ++++++++++++++++++++=
+++++++++++
> =C2=A01 file changed, 47 insertions(+)
>=20
> diff --git a/drivers/media/platform/rockchip/rga/rga.c b/drivers/media/pl=
atform/rockchip/rga/rga.c
> index 43644995c152e..e45b9c853d659 100644
> --- a/drivers/media/platform/rockchip/rga/rga.c
> +++ b/drivers/media/platform/rockchip/rga/rga.c
> @@ -708,6 +708,49 @@ static int rga_parse_dt(struct rockchip_rga *rga)
> =C2=A0	return 0;
> =C2=A0}
> =C2=A0
> +/*
> + * Some SoCs, like RK3588 have multiple identical RGA3 cores, but the
> + * kernel is currently missing support for multi-core handling. Exposing
> + * separate devices for each core to userspace is bad, since that does
> + * not allow scheduling tasks properly (and creates ABI). With this work=
around
> + * the driver will only probe for the first core and early exit for the =
other
> + * cores. Once the driver gains multi-core support, the same technique
> + * for detecting the main core can be used to cluster all cores together=
.
> + */
> +static int rga_disable_multicore(struct device *dev)
> +{
> +	struct device_node *node =3D NULL;
> +	const char *compatible;
> +	bool is_main_core;
> +	int ret;
> +
> +	/* Intentionally ignores the fallback strings */
> +	ret =3D of_property_read_string(dev->of_node, "compatible", &compatible=
);
> +	if (ret)
> +		return ret;
> +
> +	/* The first compatible and available node found is considered the main=
 core */
> +	do {
> +		node =3D of_find_compatible_node(node, NULL, compatible);
> +		if (of_device_is_available(node))
> +			break;
> +	} while (node);
> +
> +	if (!node)
> +		return -EINVAL;
> +
> +	is_main_core =3D (dev->of_node =3D=3D node);
> +
> +	of_node_put(node);
> +
> +	if (!is_main_core) {
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
> @@ -718,6 +761,10 @@ static int rga_probe(struct platform_device *pdev)
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

--=-z2my5z6cvzeWllcl7dyY
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQTvDVKBFcTDwhoEbxLZQZRRKWBy9AUCab2LmAAKCRDZQZRRKWBy
9MZsAQCqTBzD03pb+ti7XEpzLUwzJaRWq1EGrE7Yap2Xjv5SlQEAq+a51F+Itk6Y
QK1DHm1sCQVkk8iD50vTHHHekOqdxwk=
=poHg
-----END PGP SIGNATURE-----

--=-z2my5z6cvzeWllcl7dyY--


--===============0441257716810480371==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============0441257716810480371==--

