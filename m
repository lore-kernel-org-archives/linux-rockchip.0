Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 972F1EB64D0
	for <linux-rockchip@archiver.kernel.org>; Tue, 13 Jun 2023 16:34:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=B1Fb3JXIHemXG+8cdUwHCzoHE3YKRdCb2pWREXvoJPU=; b=dircAy23XEkKCd7oVDW3BnsTe1
	3lQtFpk352dfRPsba5zSt0x2qRmB/+oXZMRLh5DOwL40MB4RjJOnACqsrUSxW62aGCb2//5YHQ6Xn
	z91NCDEZ5Nl2OoMW/LGs2KKYfc2xVn0BqneViG+a+Otcx114HogJQV9FC0EWKYF+V0lpwW9o42CF0
	8Zr6HWPzMXtmnpTmpsiYgsah05IgSg2LO/BY5dr6sCZHe6WJBaJ6PgtEEcgzVczpKzwTQvh18Vj1G
	JHOkn1TPd0qHo4qt5Bst4GV85/b1rTTGT1miGVzh4BwDv0L45tzTXqqy1Dii8z6Hz8K2BO470EkN9
	OibIEQoA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q96ye-008blk-1k;
	Tue, 13 Jun 2023 16:34:40 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q96ya-008bkj-1m;
	Tue, 13 Jun 2023 16:34:39 +0000
Received: from mercury (dyndsl-091-248-189-170.ewe-ip-backbone.de [91.248.189.170])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: sre)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 35E126606F36;
	Tue, 13 Jun 2023 17:34:35 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1686674075;
	bh=8/cnb37Va7aNZxyKhyYa6ozj8GWQnCqwQcsOWpDgBQ4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=VR5dv22f9ajbIxyk1yDCW5mywM3kUXWqeROzjgPmwB/Gt1uHC0D3FzG1kveVY0JDz
	 CR816E5yZA7aSAonGeZM5RYef+2u9HxgAlby6ln2WipXezYEZS1595tuxrUuOxbK5r
	 25JVcZfMGvYlz/yL/1P8Z8v6fVNgw0ZDKGF0sOCaqu8zMBMc2ggvzrJlBgzM2ER99v
	 1nhDXU+X9ihagxQg0SqvBT4IL63t2LhsBwx1CBhQd6+jQoiMhQo8g9pI8WkDPEJecG
	 R11X5OyEDZ1a1tafk6JIzRMn68aeejdFBTNTm89Vu48asmewYasNRZZ/123cDK9Xes
	 8oTAic26PYodg==
Received: by mercury (Postfix, from userid 1000)
	id 3D9851066FC6; Tue, 13 Jun 2023 18:34:33 +0200 (CEST)
Date: Tue, 13 Jun 2023 18:34:33 +0200
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
Subject: Re: [PATCH v5 07/25] PM / devfreq: rockchip-dfi: introduce channel
 mask
Message-ID: <20230613163433.lvb4f7toliq3y2bt@mercury.elektranox.org>
References: <20230524083153.2046084-1-s.hauer@pengutronix.de>
 <20230524083153.2046084-8-s.hauer@pengutronix.de>
MIME-Version: 1.0
In-Reply-To: <20230524083153.2046084-8-s.hauer@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230613_093436_872241_59C38219 
X-CRM114-Status: GOOD (  25.90  )
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
Content-Type: multipart/mixed; boundary="===============4035817029741376807=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============4035817029741376807==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="6fr3okublbgywb5d"
Content-Disposition: inline


--6fr3okublbgywb5d
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Wed, May 24, 2023 at 10:31:35AM +0200, Sascha Hauer wrote:
> Different Rockchip SoC variants have a different number of channels.
> Introduce a channel mask to make the number of channels configurable
> from SoC initialization code.
>=20
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---

Reviewed-by: Sebastian Reichel <sebastian.reichel@collabora.com>

-- Sebastian

>  drivers/devfreq/event/rockchip-dfi.c | 23 +++++++++++++++++------
>  1 file changed, 17 insertions(+), 6 deletions(-)
>=20
> diff --git a/drivers/devfreq/event/rockchip-dfi.c b/drivers/devfreq/event=
/rockchip-dfi.c
> index 126bb744645b6..82de24a027579 100644
> --- a/drivers/devfreq/event/rockchip-dfi.c
> +++ b/drivers/devfreq/event/rockchip-dfi.c
> @@ -18,10 +18,11 @@
>  #include <linux/list.h>
>  #include <linux/of.h>
>  #include <linux/of_device.h>
> +#include <linux/bits.h>
> =20
>  #include <soc/rockchip/rk3399_grf.h>
> =20
> -#define RK3399_DMC_NUM_CH	2
> +#define DMC_MAX_CHANNELS	2
> =20
>  /* DDRMON_CTRL */
>  #define DDRMON_CTRL	0x04
> @@ -44,7 +45,7 @@ struct dmc_count_channel {
>  };
> =20
>  struct dmc_count {
> -	struct dmc_count_channel c[RK3399_DMC_NUM_CH];
> +	struct dmc_count_channel c[DMC_MAX_CHANNELS];
>  };
> =20
>  /*
> @@ -61,6 +62,7 @@ struct rockchip_dfi {
>  	struct regmap *regmap_pmu;
>  	struct clk *clk;
>  	u32 ddr_type;
> +	unsigned int channel_mask;
>  };
> =20
>  static void rockchip_dfi_start_hardware_counter(struct devfreq_event_dev=
 *edev)
> @@ -95,7 +97,9 @@ static void rockchip_dfi_read_counters(struct devfreq_e=
vent_dev *edev, struct dm
>  	u32 i;
>  	void __iomem *dfi_regs =3D dfi->regs;
> =20
> -	for (i =3D 0; i < RK3399_DMC_NUM_CH; i++) {
> +	for (i =3D 0; i < DMC_MAX_CHANNELS; i++) {
> +		if (!(dfi->channel_mask & BIT(i)))
> +			continue;
>  		count->c[i].access =3D readl_relaxed(dfi_regs +
>  				DDRMON_CH0_DFI_ACCESS_NUM + i * 20);
>  		count->c[i].total =3D readl_relaxed(dfi_regs +
> @@ -145,9 +149,14 @@ static int rockchip_dfi_get_event(struct devfreq_eve=
nt_dev *edev,
>  	rockchip_dfi_read_counters(edev, &count);
> =20
>  	/* We can only report one channel, so find the busiest one */
> -	for (i =3D 0; i < RK3399_DMC_NUM_CH; i++) {
> -		u32 a =3D count.c[i].access - last->c[i].access;
> -		u32 t =3D count.c[i].total - last->c[i].total;
> +	for (i =3D 0; i < DMC_MAX_CHANNELS; i++) {
> +		u32 a, t;
> +
> +		if (!(dfi->channel_mask & BIT(i)))
> +			continue;
> +
> +		a =3D count.c[i].access - last->c[i].access;
> +		t =3D count.c[i].total - last->c[i].total;
> =20
>  		if (a > access) {
>  			access =3D a;
> @@ -185,6 +194,8 @@ static int rk3399_dfi_init(struct rockchip_dfi *dfi)
>  	dfi->ddr_type =3D (val >> RK3399_PMUGRF_DDRTYPE_SHIFT) &
>  			RK3399_PMUGRF_DDRTYPE_MASK;
> =20
> +	dfi->channel_mask =3D GENMASK(1, 0);
> +
>  	return 0;
>  };
> =20
> --=20
> 2.39.2
>=20

--6fr3okublbgywb5d
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE72YNB0Y/i3JqeVQT2O7X88g7+poFAmSImpgACgkQ2O7X88g7
+pq0FRAAm0yMOi0AXifDjOJhY1PK9Fb13r/jJtrgxxw3FMQW4iwQ+yKQfRVrdntu
1un74SUeA9CihxErK9dW+ouu9rhTOuA2stUW3l2qaITIMlFe/Kb2G9K4/gYmViNc
++SInz8NCAnRmuK5qKWIXFLd7hWv3M9P37j1rrGBt/JDgEbvt5ClBVJVxw+64+DP
fHui203XqWe+b3wGnGcs8wNZ+6u7imBSaoJqbDKuX7cPM5inY29YhccRgrysdi2Y
U87wzsiYD1WtTq9mVdXgeL5mQjWU4RDLMR9Aekhx2sANW7ajolX/NRrgOFQJtba4
OfaufXV7bqw/c3PxnqTSo/+U7RX4cv/9BC8fMEj5Ac7r8J2XSNbskuboc3ak7Kcf
EKH/I2r1F+8QuQCU3Z1fF53LGnswHdUQQ9sDwXj7DAFnaU0wiHHRl6txUPouJ1Ij
vawXD9fn2HQctMu7G08LAZuwevCwijqHirOXEOZVzvA48IPvw2hQo1kXi8pt6o5K
K8CdHL1NxzTRb1lCurDNZLMhdr2/0JAtizLK3SXUcsmheG/FhhFmuSxkOhQcr6Xs
1yU3oaU93tdUgB4D0wh9m2xfYtTvCHgp0mpKMLQEEOBJYNa9bS+YEQf+brG+6+C6
mV7UXE/gGTmF7IHnLdBuAOxAJNhETQW7y996jdA60zQGmgPWjlQ=
=Uoaj
-----END PGP SIGNATURE-----

--6fr3okublbgywb5d--


--===============4035817029741376807==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============4035817029741376807==--

