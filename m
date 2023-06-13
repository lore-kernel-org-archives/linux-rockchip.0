Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7E281EB64D0
	for <linux-rockchip@archiver.kernel.org>; Tue, 13 Jun 2023 16:21:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=xa0u/WlLLm0z8Qm0XC24Wrgm9uT6XyIxj6YqwNalPrw=; b=FeK4ai/BSAcpB8u5xS12sV2w0v
	J5J6N7YoAR1R7nTegQFbr/omI7QI1cwnGTkQxaoGBI1YCsr7cG3flxd9mrCZejywXDSMFdrNk0TRv
	3DWvpwSf1cK01Jd/2Wyw0FMawBVHDXch0WrOs01JNwkTQybTP7CN0XHvOL+9Vo2mIHoqwnk7Kud+g
	p/ddm9nYneIU17C2T0rZYwBoHgA8+HU4dC/dkVomlLkSmNn51BCHHdXCTUAiSCxyhQfKl1Y4efmf8
	4hoLvQi0tD8b7KSGnwqhkwW5dAI8o0RXL4UFasTa4DPMSEJxOCQnJfKXWAMLZ5tiY+J2cS5fFVn9P
	C0hAM9gw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q96lv-008a6g-29;
	Tue, 13 Jun 2023 16:21:31 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q96lq-008a5H-2h;
	Tue, 13 Jun 2023 16:21:29 +0000
Received: from mercury (dyndsl-091-248-189-170.ewe-ip-backbone.de [91.248.189.170])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: sre)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 646666606EF9;
	Tue, 13 Jun 2023 17:21:25 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1686673285;
	bh=uEVL5S3JkGp5uXOVShXjVbjuqvt7cRNDQ53qXd+EKLE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=V5UP5h7A+FQW45eeruuyKjP3GZK2truPkTrQE6u0lXow4Y59TidPUm2iIcC0CvB9b
	 apX6Mu1Yj5O1iBeRk7k9ZdTDxJRO6SYh3J11EDdbYZQaUA/l5Dw+Ap0ob+Lvb5Xg70
	 w/KJZAsMDbYP+ItTmKgqIyBrSlNEomtGTTQAuMrE2TgQ/L2m/fd5wcqaONWvazCDYi
	 Jk66c3QoEFBNb82JVBC7boyfPY0irk3xYUIB1wAsWCvsfrIe2UqT0LxifNofmfFmej
	 RzfC1uBoJeHr9I0SRNj8i0D9XJlTSV7B5+D5HF3WPRYzoVenSco3n2Uiddj8orDMfe
	 Ir0OvhsQXu51g==
Received: by mercury (Postfix, from userid 1000)
	id D9EBA1066FBA; Tue, 13 Jun 2023 18:21:22 +0200 (CEST)
Date: Tue, 13 Jun 2023 18:21:22 +0200
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	linux-pm@vger.kernel.org, Heiko Stuebner <heiko@sntech.de>,
	Kyungmin Park <kyungmin.park@samsung.com>,
	MyungJoo Ham <myungjoo.ham@samsung.com>,
	Will Deacon <will@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
	kernel@pengutronix.de,
	Michael Riesch <michael.riesch@wolfvision.net>,
	Robin Murphy <robin.murphy@arm.com>,
	Vincent Legoll <vincent.legoll@gmail.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org
Subject: Re: [PATCH v5 01/25] PM / devfreq: rockchip-dfi: Make pmu regmap
 mandatory
Message-ID: <20230613162122.fkivfd7bzpwdrkan@mercury.elektranox.org>
References: <20230524083153.2046084-1-s.hauer@pengutronix.de>
 <20230524083153.2046084-2-s.hauer@pengutronix.de>
MIME-Version: 1.0
In-Reply-To: <20230524083153.2046084-2-s.hauer@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230613_092127_026975_3661F769 
X-CRM114-Status: GOOD (  24.75  )
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
Content-Type: multipart/mixed; boundary="===============2033401421874020987=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============2033401421874020987==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="jurk47xd2prgsurq"
Content-Disposition: inline


--jurk47xd2prgsurq
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Wed, May 24, 2023 at 10:31:29AM +0200, Sascha Hauer wrote:
> As a matter of fact the regmap_pmu already is mandatory because
> it is used unconditionally in the driver. Bail out gracefully in
> probe() rather than crashing later.
>=20
> Fixes: b9d1262bca0af ("PM / devfreq: event: support rockchip dfi controll=
er")
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---

Reviewed-by: Sebastian Reichel <sebastian.reichel@collabora.com>

-- Sebastian

>=20
> Notes:
>     Changes since v4:
>     - move to beginning of the series to make it easier to backport to st=
able
>     - Add a Fixes: tag
>     - add missing of_node_put()
>=20
>  drivers/devfreq/event/rockchip-dfi.c | 15 ++++++++-------
>  1 file changed, 8 insertions(+), 7 deletions(-)
>=20
> diff --git a/drivers/devfreq/event/rockchip-dfi.c b/drivers/devfreq/event=
/rockchip-dfi.c
> index 39ac069cabc75..74893c06aa087 100644
> --- a/drivers/devfreq/event/rockchip-dfi.c
> +++ b/drivers/devfreq/event/rockchip-dfi.c
> @@ -193,14 +193,15 @@ static int rockchip_dfi_probe(struct platform_devic=
e *pdev)
>  		return dev_err_probe(dev, PTR_ERR(data->clk),
>  				     "Cannot get the clk pclk_ddr_mon\n");
> =20
> -	/* try to find the optional reference to the pmu syscon */
>  	node =3D of_parse_phandle(np, "rockchip,pmu", 0);
> -	if (node) {
> -		data->regmap_pmu =3D syscon_node_to_regmap(node);
> -		of_node_put(node);
> -		if (IS_ERR(data->regmap_pmu))
> -			return PTR_ERR(data->regmap_pmu);
> -	}
> +	if (!node)
> +		return dev_err_probe(&pdev->dev, -ENODEV, "Can't find pmu_grf register=
s\n");
> +
> +	data->regmap_pmu =3D syscon_node_to_regmap(node);
> +	of_node_put(node);
> +	if (IS_ERR(data->regmap_pmu))
> +		return PTR_ERR(data->regmap_pmu);
> +
>  	data->dev =3D dev;
> =20
>  	desc =3D devm_kzalloc(dev, sizeof(*desc), GFP_KERNEL);
> --=20
> 2.39.2
>=20

--jurk47xd2prgsurq
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE72YNB0Y/i3JqeVQT2O7X88g7+poFAmSIl4IACgkQ2O7X88g7
+ppKcw//ZTg1vOUfnXfLbpBaa8Hxz6w4+A4J9oT3pbk1OSYD9C8Nx8Z97dV0T4YN
0bM7LPlqdLXPrEngsMPWx0vwAdjZG2d5TnN0rRLB9LVoBEBtuiGi3t+AvPhvdCGh
OaqvCLwnkkOtGjU32NBq53nzLwp1JQio6uOwLMGFwvkNR3a1RnQlwFci7L/uOkNU
o4WEWyhC3FgtxvCOOQwlJ1Uz3k5fi9yQejvjBN79mF4RCS3ZvKfODcsYxLx1415a
i/Aee7UpLMk4btvPwM/1kc5NEvx01NXNZQj6V09gsDRDwLFg4dexXyjz8NPqZX3P
DhACT7gMN94enie2IllSF2umrbBcslkTtuPEJ4TlF0ES692vCl2qdodSRgxM89Lq
XgSrbwwP6NQgA0AhLjjy4Nw+WqHACYU55kpFdoB7txGcJXyQpRT4v+2x1vHQHMJL
DYnoy/ohmg6nlLAd84SSEyfqNI/UrGwQPYi2TwZe2SAyhqiCi5NKN08umm4xw1Jf
M5XuM9koQj5Wosqby0FBcUvPB7GjV8uA9lB1tNLrIjR26wHYrUpH4UNjtYzEHSHr
BMxi1e5c2cmAjzQIUUXCwi0t1kNqHTd3m+joEjM9NTt2NfjBe6cKGWwLcmgGmHkP
0aWH++uS2E+NQlAET1QTONzuh/MxJuB7Hm8AkYA4sT0PMEfCgP0=
=Gdda
-----END PGP SIGNATURE-----

--jurk47xd2prgsurq--


--===============2033401421874020987==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============2033401421874020987==--

