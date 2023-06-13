Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A2E49EB64D0
	for <linux-rockchip@archiver.kernel.org>; Tue, 13 Jun 2023 16:40:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=uU3c8uo7fPZPVdGQ3BOK9E65OEh2Z3WqxE8M7rRtuE0=; b=rfnxnRN2ow5s8qEla1plb0MxJU
	mpMj439Lp11jHD/6iGO69/35N50bICxS/lHUsDW7bt3wCJny8d86u7T0Nc3sNouaNLa+E0rW8sben
	eF1f467RdTlMApPZiliOiUNomZ110jm0fU9uE293U+2YD9Wyatp6iH9zbfrQ3AGES2sUtkDR0UkKW
	UvOWufAG9VMh0Lug6+Z2a2CVUYzlZj30aD92WJ3+iIKoCgSaOWzDy3LpxNlFrXhMIpBvoCpby+6lW
	VsHpbhKCWIQH/1t6Ofj2PYqc7KSZhq+6N5bJAK7TAwts50/x7wxfa2WPWrcGfu+Rjm9+VdvbORnYw
	CplvEElg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q973Z-008cJF-2k;
	Tue, 13 Jun 2023 16:39:45 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q973U-008cIJ-2N;
	Tue, 13 Jun 2023 16:39:43 +0000
Received: from mercury (dyndsl-091-248-189-170.ewe-ip-backbone.de [91.248.189.170])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: sre)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 7C3C16606F0B;
	Tue, 13 Jun 2023 17:39:39 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1686674379;
	bh=HZooJDujUZ0zKw29yKuRLTTXpQuCgF6ibOjJ8473ViQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=OWNzJUAIgtvdHCZdXUY8h4wU8ErDzUxjNVkhxO9u3H/gyhiCESoiIWIl6si4iLSqp
	 yuMKGL8hMvjTFTtFCCfu9k24yR+r1aUWNkBuBE/3d2uZansjtAWOBya5koS6AfiyYb
	 o5EfYUZfwgG9P8rs18DBWhtR1RTuG8tvOEHMUTIUeg/fcZQC3wprPDRPL6YUt+WzCj
	 C/SjzyLZlwEOWoM3iXKMErxh61jSjXvC96IFGoUEO5QCmFg/bbkaQYr2im3aOBAXF3
	 1EWN84FeFKaB4PZrAveHdpsLMhCHFCjlK2vyrxxBO0WyjGE3mnNiDVts82nxeCvxhk
	 CNw2YYXJc+/3A==
Received: by mercury (Postfix, from userid 1000)
	id D54A61066FBA; Tue, 13 Jun 2023 18:39:36 +0200 (CEST)
Date: Tue, 13 Jun 2023 18:39:36 +0200
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
Subject: Re: [PATCH v5 08/25] PM / devfreq: rk3399_dmc,dfi: generalize
 DDRTYPE defines
Message-ID: <20230613163936.ajlomb3xaqx52zhr@mercury.elektranox.org>
References: <20230524083153.2046084-1-s.hauer@pengutronix.de>
 <20230524083153.2046084-9-s.hauer@pengutronix.de>
MIME-Version: 1.0
In-Reply-To: <20230524083153.2046084-9-s.hauer@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230613_093941_054042_7A896022 
X-CRM114-Status: GOOD (  28.74  )
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
Content-Type: multipart/mixed; boundary="===============2061399501063468191=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============2061399501063468191==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="sw6cs5vglhgqr7h5"
Content-Disposition: inline


--sw6cs5vglhgqr7h5
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Wed, May 24, 2023 at 10:31:36AM +0200, Sascha Hauer wrote:
> The DDRTYPE defines are named to be RK3399 specific, but they can be
> used for other Rockchip SoCs as well, so replace the RK3399_PMUGRF_
> prefix with ROCKCHIP_. They are defined in a SoC specific header
> file, so when generalizing the prefix also move the new defines to
> a SoC agnostic header file. While at it use GENMASK to define the
> DDRTYPE bitfield and give it a name including the full register name.
>=20
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---

Reviewed-by: Sebastian Reichel <sebastian.reichel@collabora.com>

-- Sebastian

>  drivers/devfreq/event/rockchip-dfi.c |  9 +++++----
>  drivers/devfreq/rk3399_dmc.c         | 10 +++++-----
>  include/soc/rockchip/rk3399_grf.h    |  7 +------
>  include/soc/rockchip/rockchip_grf.h  | 17 +++++++++++++++++
>  4 files changed, 28 insertions(+), 15 deletions(-)
>  create mode 100644 include/soc/rockchip/rockchip_grf.h
>=20
> diff --git a/drivers/devfreq/event/rockchip-dfi.c b/drivers/devfreq/event=
/rockchip-dfi.c
> index 82de24a027579..6bccb6fbcfc0c 100644
> --- a/drivers/devfreq/event/rockchip-dfi.c
> +++ b/drivers/devfreq/event/rockchip-dfi.c
> @@ -18,8 +18,10 @@
>  #include <linux/list.h>
>  #include <linux/of.h>
>  #include <linux/of_device.h>
> +#include <linux/bitfield.h>
>  #include <linux/bits.h>
> =20
> +#include <soc/rockchip/rockchip_grf.h>
>  #include <soc/rockchip/rk3399_grf.h>
> =20
>  #define DMC_MAX_CHANNELS	2
> @@ -74,9 +76,9 @@ static void rockchip_dfi_start_hardware_counter(struct =
devfreq_event_dev *edev)
>  	writel_relaxed(CLR_DDRMON_CTRL, dfi_regs + DDRMON_CTRL);
> =20
>  	/* set ddr type to dfi */
> -	if (dfi->ddr_type =3D=3D RK3399_PMUGRF_DDRTYPE_LPDDR3)
> +	if (dfi->ddr_type =3D=3D ROCKCHIP_DDRTYPE_LPDDR3)
>  		writel_relaxed(LPDDR3_EN, dfi_regs + DDRMON_CTRL);
> -	else if (dfi->ddr_type =3D=3D RK3399_PMUGRF_DDRTYPE_LPDDR4)
> +	else if (dfi->ddr_type =3D=3D ROCKCHIP_DDRTYPE_LPDDR4)
>  		writel_relaxed(LPDDR4_EN, dfi_regs + DDRMON_CTRL);
> =20
>  	/* enable count, use software mode */
> @@ -191,8 +193,7 @@ static int rk3399_dfi_init(struct rockchip_dfi *dfi)
> =20
>  	/* get ddr type */
>  	regmap_read(regmap_pmu, RK3399_PMUGRF_OS_REG2, &val);
> -	dfi->ddr_type =3D (val >> RK3399_PMUGRF_DDRTYPE_SHIFT) &
> -			RK3399_PMUGRF_DDRTYPE_MASK;
> +	dfi->ddr_type =3D FIELD_GET(RK3399_PMUGRF_OS_REG2_DDRTYPE, val);
> =20
>  	dfi->channel_mask =3D GENMASK(1, 0);
> =20
> diff --git a/drivers/devfreq/rk3399_dmc.c b/drivers/devfreq/rk3399_dmc.c
> index daff407026157..fd2c5ffedf41e 100644
> --- a/drivers/devfreq/rk3399_dmc.c
> +++ b/drivers/devfreq/rk3399_dmc.c
> @@ -22,6 +22,7 @@
>  #include <linux/suspend.h>
> =20
>  #include <soc/rockchip/pm_domains.h>
> +#include <soc/rockchip/rockchip_grf.h>
>  #include <soc/rockchip/rk3399_grf.h>
>  #include <soc/rockchip/rockchip_sip.h>
> =20
> @@ -381,17 +382,16 @@ static int rk3399_dmcfreq_probe(struct platform_dev=
ice *pdev)
>  	}
> =20
>  	regmap_read(data->regmap_pmu, RK3399_PMUGRF_OS_REG2, &val);
> -	ddr_type =3D (val >> RK3399_PMUGRF_DDRTYPE_SHIFT) &
> -		    RK3399_PMUGRF_DDRTYPE_MASK;
> +	ddr_type =3D FIELD_GET(RK3399_PMUGRF_OS_REG2_DDRTYPE, val);
> =20
>  	switch (ddr_type) {
> -	case RK3399_PMUGRF_DDRTYPE_DDR3:
> +	case ROCKCHIP_DDRTYPE_DDR3:
>  		data->odt_dis_freq =3D data->ddr3_odt_dis_freq;
>  		break;
> -	case RK3399_PMUGRF_DDRTYPE_LPDDR3:
> +	case ROCKCHIP_DDRTYPE_LPDDR3:
>  		data->odt_dis_freq =3D data->lpddr3_odt_dis_freq;
>  		break;
> -	case RK3399_PMUGRF_DDRTYPE_LPDDR4:
> +	case ROCKCHIP_DDRTYPE_LPDDR4:
>  		data->odt_dis_freq =3D data->lpddr4_odt_dis_freq;
>  		break;
>  	default:
> diff --git a/include/soc/rockchip/rk3399_grf.h b/include/soc/rockchip/rk3=
399_grf.h
> index 3eebabcb28123..775f8444bea8d 100644
> --- a/include/soc/rockchip/rk3399_grf.h
> +++ b/include/soc/rockchip/rk3399_grf.h
> @@ -11,11 +11,6 @@
> =20
>  /* PMU GRF Registers */
>  #define RK3399_PMUGRF_OS_REG2		0x308
> -#define RK3399_PMUGRF_DDRTYPE_SHIFT	13
> -#define RK3399_PMUGRF_DDRTYPE_MASK	7
> -#define RK3399_PMUGRF_DDRTYPE_DDR3	3
> -#define RK3399_PMUGRF_DDRTYPE_LPDDR2	5
> -#define RK3399_PMUGRF_DDRTYPE_LPDDR3	6
> -#define RK3399_PMUGRF_DDRTYPE_LPDDR4	7
> +#define RK3399_PMUGRF_OS_REG2_DDRTYPE		GENMASK(15, 13)
> =20
>  #endif
> diff --git a/include/soc/rockchip/rockchip_grf.h b/include/soc/rockchip/r=
ockchip_grf.h
> new file mode 100644
> index 0000000000000..dde1a9796ccb5
> --- /dev/null
> +++ b/include/soc/rockchip/rockchip_grf.h
> @@ -0,0 +1,17 @@
> +/* SPDX-License-Identifier: GPL-2.0+ */
> +/*
> + * Rockchip General Register Files definitions
> + */
> +
> +#ifndef __SOC_ROCKCHIP_GRF_H
> +#define __SOC_ROCKCHIP_GRF_H
> +
> +/* Rockchip DDRTYPE defines */
> +enum {
> +	ROCKCHIP_DDRTYPE_DDR3	=3D 3,
> +	ROCKCHIP_DDRTYPE_LPDDR2	=3D 5,
> +	ROCKCHIP_DDRTYPE_LPDDR3	=3D 6,
> +	ROCKCHIP_DDRTYPE_LPDDR4	=3D 7,
> +};
> +
> +#endif /* __SOC_ROCKCHIP_GRF_H */
> --=20
> 2.39.2
>=20

--sw6cs5vglhgqr7h5
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE72YNB0Y/i3JqeVQT2O7X88g7+poFAmSIm8gACgkQ2O7X88g7
+poWWA/8ChNHSbLyMVuX2gedDN3AW6nmgLMpIWAdk4zVbk8RlnkHFrYmhvH0lah4
+yFby4KY1KcAZ1dYAJ4A2YTrDsG3738RhfFwJQxSqp1tsAcI2+YRbD9UjLLxKoXh
/SWygIdGi3filoKFa1iPL2U8gKYxLgndBcegvzCbyeqWnZ4X9QgxgknJzRS+070Z
yvptCVHDTFrnp1Fupfv/GICt5VNpfucvf7uae2PwMXu9EUyKMVcicqu3gJGaWhMW
ZGkt5fbmXNVfFfkQ4jbBa3IZUqSOONAGZbZSgnQhR6rMljJVky6LV5k4g3BTiTwl
2naoVPTxC89UFOvSwHvIudZHbD8Tgy2u2CusGv9VxkrrzcPm0tP1maYTKRHReI/a
mk7ZCFXhpdvp4uEzOlD0ZDnnzqOhF/1i8k63BREYpr/zcHQNZFOjAGHkObl2bekW
zHM68izXicV5OikwPD8bCVVvK33E6PiPMw2Xrg9+heEYDYG85W3HbbB9dTuT/egH
UvVUJDPVuwkLbaRwLj5ycNZUWi9kvcT35EckIM32eWxGTkI9Go/5gDAmJNLz8j1R
psyJRw4En/nxwouhioG059qakpROJmQCht/IW5jYgIXh1FaXMf4Qn/o+7U4kypEK
MG925cyz+ggoD40CCbVX6eTr1p+qsXDPC6b8kPaJLcIRK/YeaNM=
=IfV8
-----END PGP SIGNATURE-----

--sw6cs5vglhgqr7h5--


--===============2061399501063468191==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============2061399501063468191==--

