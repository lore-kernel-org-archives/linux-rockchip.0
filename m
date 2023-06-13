Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7236CEB64D0
	for <linux-rockchip@archiver.kernel.org>; Tue, 13 Jun 2023 16:26:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=X/SACK2KOM/2pTMYToFWKa/JRfIOdS12idUHUyt6OFs=; b=SJFgELwMkQRrSjLEadxjqpRLaZ
	QX/4L8UsFi6XtG1KxDJCiZeGBM0x8GMpFDDW4cMPxDEkzMqLMu5VPjlXmrYxnzm8v9jdeduHAKwVW
	DUchEMMAeFF27yVhHKf7UPPkYi5qnZBZmVgHI428tvY/0oXFSHUtPpsj3ZgUZV6OvxuIZN3/IacyV
	dt6WMdfuku6r2NNn/PiXLwg7B712BKtIp9RPVi5Iuw/wfX5xp14pIOQErMKHUSKOFOgEbwJ+cnb8F
	BNARWOABfIRo61FvknJ31kFHuTu3/JV8y1JVIEXs11HLDNP8yDxcvxVJFOh2l+VMtzEyVq0VNzUZz
	LTEnOjug==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q96qs-008als-01;
	Tue, 13 Jun 2023 16:26:38 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q96qk-008akN-2u;
	Tue, 13 Jun 2023 16:26:35 +0000
Received: from mercury (dyndsl-091-248-189-170.ewe-ip-backbone.de [91.248.189.170])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: sre)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 90CD56606F02;
	Tue, 13 Jun 2023 17:26:28 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1686673588;
	bh=PJNaA82l3h2YK+IyLkBxAuI/hFHUcU8f0OMwwfGkI6E=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=LdtJCgZb4TWILwc4v0I226TaYUr8ygIMXSFatfDGtMACWF81B7tlFHZONFxVQowJX
	 xIwsaqMdyPZ2QM4kga6bIHnx6AqWzOpljKQjpA0cB7Zn6kzM+gSuZFitmijD6Pym7g
	 U0rGhPJu5np+9IVVPGjpFrBy8aq2okjWy5/PI7xuaPRXivfFIwcWaRoUjMWErCKPHM
	 2gIzn/Jw5TrEyS0paXr5AzM226ddzd5l5xgcUUYl4JGuNVo5ppkvdxRrVQpKq/t7qz
	 K3H2ME6VY2KKkWXA8JB1KAQgk6TZwv4Jl+GrJnTXtBvJyHDb0OK5I/iAem/LZyyIES
	 cpICz54sf3Svg==
Received: by mercury (Postfix, from userid 1000)
	id 2F5FD1066FBA; Tue, 13 Jun 2023 18:26:26 +0200 (CEST)
Date: Tue, 13 Jun 2023 18:26:26 +0200
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
Subject: Re: [PATCH v5 04/25] PM / devfreq: rockchip-dfi: Add SoC specific
 init function
Message-ID: <20230613162626.s7ijyg7iu6jcrvbq@mercury.elektranox.org>
References: <20230524083153.2046084-1-s.hauer@pengutronix.de>
 <20230524083153.2046084-5-s.hauer@pengutronix.de>
MIME-Version: 1.0
In-Reply-To: <20230524083153.2046084-5-s.hauer@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230613_092631_202232_82934D31 
X-CRM114-Status: GOOD (  29.46  )
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
Content-Type: multipart/mixed; boundary="===============0270767940368443423=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============0270767940368443423==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="rx6ubjn2sztmbvp2"
Content-Disposition: inline


--rx6ubjn2sztmbvp2
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Wed, May 24, 2023 at 10:31:32AM +0200, Sascha Hauer wrote:
> Move the RK3399 specifics to a SoC specific init function to make
> the way free for supporting other SoCs later.
>=20
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>=20
> Notes:
>     Changes since v4:
>     - use of_device_get_match_data()
>     - use a callback rather than a struct type as driver data
>=20
>  drivers/devfreq/event/rockchip-dfi.c | 48 +++++++++++++++++++---------
>  1 file changed, 33 insertions(+), 15 deletions(-)
>=20

Reviewed-by: Sebastian Reichel <sebastian.reichel@collabora.com>

-- Sebastian

> diff --git a/drivers/devfreq/event/rockchip-dfi.c b/drivers/devfreq/event=
/rockchip-dfi.c
> index e19e5acaa362c..6b1ef29df7048 100644
> --- a/drivers/devfreq/event/rockchip-dfi.c
> +++ b/drivers/devfreq/event/rockchip-dfi.c
> @@ -17,6 +17,7 @@
>  #include <linux/slab.h>
>  #include <linux/list.h>
>  #include <linux/of.h>
> +#include <linux/of_device.h>
> =20
>  #include <soc/rockchip/rk3399_grf.h>
> =20
> @@ -55,27 +56,21 @@ struct rockchip_dfi {
>  	void __iomem *regs;
>  	struct regmap *regmap_pmu;
>  	struct clk *clk;
> +	u32 ddr_type;
>  };
> =20
>  static void rockchip_dfi_start_hardware_counter(struct devfreq_event_dev=
 *edev)
>  {
>  	struct rockchip_dfi *dfi =3D devfreq_event_get_drvdata(edev);
>  	void __iomem *dfi_regs =3D dfi->regs;
> -	u32 val;
> -	u32 ddr_type;
> -
> -	/* get ddr type */
> -	regmap_read(dfi->regmap_pmu, RK3399_PMUGRF_OS_REG2, &val);
> -	ddr_type =3D (val >> RK3399_PMUGRF_DDRTYPE_SHIFT) &
> -		    RK3399_PMUGRF_DDRTYPE_MASK;
> =20
>  	/* clear DDRMON_CTRL setting */
>  	writel_relaxed(CLR_DDRMON_CTRL, dfi_regs + DDRMON_CTRL);
> =20
>  	/* set ddr type to dfi */
> -	if (ddr_type =3D=3D RK3399_PMUGRF_DDRTYPE_LPDDR3)
> +	if (dfi->ddr_type =3D=3D RK3399_PMUGRF_DDRTYPE_LPDDR3)
>  		writel_relaxed(LPDDR3_EN, dfi_regs + DDRMON_CTRL);
> -	else if (ddr_type =3D=3D RK3399_PMUGRF_DDRTYPE_LPDDR4)
> +	else if (dfi->ddr_type =3D=3D RK3399_PMUGRF_DDRTYPE_LPDDR4)
>  		writel_relaxed(LPDDR4_EN, dfi_regs + DDRMON_CTRL);
> =20
>  	/* enable count, use software mode */
> @@ -167,8 +162,26 @@ static const struct devfreq_event_ops rockchip_dfi_o=
ps =3D {
>  	.set_event =3D rockchip_dfi_set_event,
>  };
> =20
> +static int rk3399_dfi_init(struct rockchip_dfi *dfi)
> +{
> +	struct regmap *regmap_pmu =3D dfi->regmap_pmu;
> +	u32 val;
> +
> +	dfi->clk =3D devm_clk_get(dfi->dev, "pclk_ddr_mon");
> +	if (IS_ERR(dfi->clk))
> +		return dev_err_probe(dfi->dev, PTR_ERR(dfi->clk),
> +				     "Cannot get the clk pclk_ddr_mon\n");
> +
> +	/* get ddr type */
> +	regmap_read(regmap_pmu, RK3399_PMUGRF_OS_REG2, &val);
> +	dfi->ddr_type =3D (val >> RK3399_PMUGRF_DDRTYPE_SHIFT) &
> +			RK3399_PMUGRF_DDRTYPE_MASK;
> +
> +	return 0;
> +};
> +
>  static const struct of_device_id rockchip_dfi_id_match[] =3D {
> -	{ .compatible =3D "rockchip,rk3399-dfi" },
> +	{ .compatible =3D "rockchip,rk3399-dfi", .data =3D rk3399_dfi_init },
>  	{ },
>  };
>  MODULE_DEVICE_TABLE(of, rockchip_dfi_id_match);
> @@ -179,6 +192,12 @@ static int rockchip_dfi_probe(struct platform_device=
 *pdev)
>  	struct rockchip_dfi *dfi;
>  	struct devfreq_event_desc *desc;
>  	struct device_node *np =3D pdev->dev.of_node, *node;
> +	int (*soc_init)(struct rockchip_dfi *dfi);
> +	int ret;
> +
> +	soc_init =3D of_device_get_match_data(&pdev->dev);
> +	if (!soc_init)
> +		return -EINVAL;
> =20
>  	dfi =3D devm_kzalloc(dev, sizeof(*dfi), GFP_KERNEL);
>  	if (!dfi)
> @@ -188,11 +207,6 @@ static int rockchip_dfi_probe(struct platform_device=
 *pdev)
>  	if (IS_ERR(dfi->regs))
>  		return PTR_ERR(dfi->regs);
> =20
> -	dfi->clk =3D devm_clk_get(dev, "pclk_ddr_mon");
> -	if (IS_ERR(dfi->clk))
> -		return dev_err_probe(dev, PTR_ERR(dfi->clk),
> -				     "Cannot get the clk pclk_ddr_mon\n");
> -
>  	node =3D of_parse_phandle(np, "rockchip,pmu", 0);
>  	if (!node)
>  		return dev_err_probe(&pdev->dev, -ENODEV, "Can't find pmu_grf register=
s\n");
> @@ -209,6 +223,10 @@ static int rockchip_dfi_probe(struct platform_device=
 *pdev)
>  	desc->driver_data =3D dfi;
>  	desc->name =3D np->name;
> =20
> +	ret =3D soc_init(dfi);
> +	if (ret)
> +		return ret;
> +
>  	dfi->edev =3D devm_devfreq_event_add_edev(&pdev->dev, desc);
>  	if (IS_ERR(dfi->edev)) {
>  		dev_err(&pdev->dev,
> --=20
> 2.39.2
>=20

--rx6ubjn2sztmbvp2
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE72YNB0Y/i3JqeVQT2O7X88g7+poFAmSImLEACgkQ2O7X88g7
+pqZDQ/+OZcf2EIUTPKqg4spvMldvlmYCa6HcWP2PYnPewWBlAOGuuKx0gsCfIRL
BDskxrVjEgblfAU6TGbH9L/gtCK+Mo2YQcPIeGOANIupI/j4Lq510CTzxvtTRcV+
QlxqCMqnynE3lR3RfDfxHT2u391X7axmzyLXGEhyHlWOQnMrNBM2hDt4v7/hP+Rf
KAaj+c+OuZvucZsgbx2qL+1GldDtYI01LwWp1hpofgwt3s8K2LBumaJyu1HrkfFk
C2XOrVFD+yHLl+iZaN0U/0+36Ncep1IdY0ytJI1USJO4CI3KzZ8q3d5Uz+vHvjV8
T9S1onvR9iiFvSHxsEo82ABJ/hjXUnXH5Xy7xTEpUE92Xc+8otb3xJc+0kFKDF6E
kgWwOuIL2xM1iItYZdMXtAS48a75DyM+2RpNuioyReDS2sNowbJK86WoLwucU3PM
gp6v06jfPbq6PrHy/KVKdjb+sDkYggatA9XgNa3zkOYZ8+EC7fMdu1ZHcvKxnDYO
N5ZoDbYtqISN6x3kGda/67ViEjh7l1qLMl0ujFq8tRA2EcY/IKvoc9dyko+N85ml
rv5gVzJxKZbRvL4lBFzHrQkAbMru3BLk7WcuhDsPq/CoffTWddlhJiKVKsPpK+06
uvsCvubIt/p5bfzTJklQm3oG02bfyH4UimNIwRaf59WWnDphEac=
=jgR8
-----END PGP SIGNATURE-----

--rx6ubjn2sztmbvp2--


--===============0270767940368443423==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============0270767940368443423==--

