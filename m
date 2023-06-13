Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7578DEB64D8
	for <linux-rockchip@archiver.kernel.org>; Tue, 13 Jun 2023 17:16:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=l/t+sk8mM+8+3xkdqtaTlOLC4E8zN5R8w6VUvOyZuPo=; b=O4BOsXOYfLZvbam3Q1kIOV1H8H
	ZHmc6wo+i4A5o4HV3zcbpN8n5qd5051Htnl+Q3H7q+A5H7lm0J7S2slf+ceJtDV5nbVy7+QtA3YH1
	O1YZ0KynossyOEkijZlfIeDcfx7tCBI1YpFEgqYnykjxXIIgr9ZLWPvuneLGu9mQGIqxJJnzJT+zg
	tyRiRg9jkA9hDct7DME2QmgbOeJuEnhA4sTbX+yTENh81xop5jDGbKW85QuPUf/Dpj4acrG324wHn
	dB/rH7Dlq+XecAVkKdRsG8JAe00BdL4UknQiLJlROorCnpxtp4PakG+/X9EQl1pPH0vjFAOI/9oas
	gF3UZc7w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q97dA-008gX9-3A;
	Tue, 13 Jun 2023 17:16:32 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q97d6-008gWI-0Y;
	Tue, 13 Jun 2023 17:16:30 +0000
Received: from mercury (dyndsl-091-248-189-170.ewe-ip-backbone.de [91.248.189.170])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: sre)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id AFF5666003AC;
	Tue, 13 Jun 2023 18:16:26 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1686676586;
	bh=5AxaalXzVaJFUkSTDi3Tm4IeWzb4tfj/SGsHptGfdcw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=mqW70nOZWRTeu1NehigYLVIKDoDs5kENOcbMF9f0Sk19xKMpYE5PB811THrIbcmB8
	 e05QQS1DlIr6lTdPQyaGrgazfR7h41QVcP8snBVb6Vu0lxK87Hf5BcbGemt30lVnUJ
	 Gt1Or5sLzy7uAwqh1lm+43r4BmEGAl7EWKTgJMRhw06PH8I5PCwCLVkOdUxv/rmJxB
	 yj0RPZ0IHiTNcsq7zi+y8SuAuQ176tnuyGe22m6xQvmaHEhbxDBqbRYFHushn9TUoK
	 Q5yOzOAtFp/b+zWRuwJBDc27aaUdW+VeJxcYDfiUvGVSrUl9BcsdL8183/3XCyW6dT
	 +VEoAMpdcJNDw==
Received: by mercury (Postfix, from userid 1000)
	id 1C1551066FC6; Tue, 13 Jun 2023 19:16:24 +0200 (CEST)
Date: Tue, 13 Jun 2023 19:16:24 +0200
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
Subject: Re: [PATCH v5 15/25] PM / devfreq: rockchip-dfi: give variable a
 better name
Message-ID: <20230613171624.mrosctprljlz4g46@mercury.elektranox.org>
References: <20230524083153.2046084-1-s.hauer@pengutronix.de>
 <20230524083153.2046084-16-s.hauer@pengutronix.de>
MIME-Version: 1.0
In-Reply-To: <20230524083153.2046084-16-s.hauer@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230613_101628_470138_7BD7E16E 
X-CRM114-Status: GOOD (  25.99  )
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
Content-Type: multipart/mixed; boundary="===============6682094656890163542=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============6682094656890163542==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="pfxobpnuncen6xuh"
Content-Disposition: inline


--pfxobpnuncen6xuh
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Wed, May 24, 2023 at 10:31:43AM +0200, Sascha Hauer wrote:
> struct dmc_count_channel::total counts the clock cycles of the DDR
> controller. Rename it accordingly to give the reader a better idea
> what this is about. While at it, at some documentation to struct
> dmc_count_channel.
>=20
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---

Reviewed-by: Sebastian Reichel <sebastian.reichel@collabora.com>

-- Sebastian

>  drivers/devfreq/event/rockchip-dfi.c | 19 ++++++++++++-------
>  1 file changed, 12 insertions(+), 7 deletions(-)
>=20
> diff --git a/drivers/devfreq/event/rockchip-dfi.c b/drivers/devfreq/event=
/rockchip-dfi.c
> index 8a7af7c32ae0d..50e497455dc69 100644
> --- a/drivers/devfreq/event/rockchip-dfi.c
> +++ b/drivers/devfreq/event/rockchip-dfi.c
> @@ -46,9 +46,14 @@
>  #define DDRMON_CH1_COUNT_NUM		0x3c
>  #define DDRMON_CH1_DFI_ACCESS_NUM	0x40
> =20
> +/**
> + * struct dmc_count_channel - structure to hold counter values from the =
DDR controller
> + * @access:       Number of read and write accesses
> + * @clock_cycles: DDR clock cycles
> + */
>  struct dmc_count_channel {
>  	u32 access;
> -	u32 total;
> +	u32 clock_cycles;
>  };
> =20
>  struct dmc_count {
> @@ -150,7 +155,7 @@ static void rockchip_dfi_read_counters(struct rockchi=
p_dfi *dfi, struct dmc_coun
>  			continue;
>  		count->c[i].access =3D readl_relaxed(dfi_regs +
>  				DDRMON_CH0_DFI_ACCESS_NUM + i * 20);
> -		count->c[i].total =3D readl_relaxed(dfi_regs +
> +		count->c[i].clock_cycles =3D readl_relaxed(dfi_regs +
>  				DDRMON_CH0_COUNT_NUM + i * 20);
>  	}
>  }
> @@ -182,29 +187,29 @@ static int rockchip_dfi_get_event(struct devfreq_ev=
ent_dev *edev,
>  	struct rockchip_dfi *dfi =3D devfreq_event_get_drvdata(edev);
>  	struct dmc_count count;
>  	struct dmc_count *last =3D &dfi->last_event_count;
> -	u32 access =3D 0, total =3D 0;
> +	u32 access =3D 0, clock_cycles =3D 0;
>  	int i;
> =20
>  	rockchip_dfi_read_counters(dfi, &count);
> =20
>  	/* We can only report one channel, so find the busiest one */
>  	for (i =3D 0; i < DMC_MAX_CHANNELS; i++) {
> -		u32 a, t;
> +		u32 a, c;
> =20
>  		if (!(dfi->channel_mask & BIT(i)))
>  			continue;
> =20
>  		a =3D count.c[i].access - last->c[i].access;
> -		t =3D count.c[i].total - last->c[i].total;
> +		c =3D count.c[i].clock_cycles - last->c[i].clock_cycles;
> =20
>  		if (a > access) {
>  			access =3D a;
> -			total =3D t;
> +			clock_cycles =3D c;
>  		}
>  	}
> =20
>  	edata->load_count =3D access * 4;
> -	edata->total_count =3D total;
> +	edata->total_count =3D clock_cycles;
> =20
>  	dfi->last_event_count =3D count;
> =20
> --=20
> 2.39.2
>=20

--pfxobpnuncen6xuh
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE72YNB0Y/i3JqeVQT2O7X88g7+poFAmSIpGcACgkQ2O7X88g7
+pqCyA/+LtQycD7o9vOEa1QsxI1Jhpp/ODV1N1n7SFabrVZ5oq92CcyFBpHUhTIR
taIWvyae1XLKz6HJNoEGzA6xQqEDdGqXLCrRmfbx59QaeJOfJGt0fcIQ4t0WbhvH
Y4KcUebYaBZnVCzdzJFCbScrpcKfk4hcSgMFHy5KAHGTRF2USYhcUBgS3wO7r8Ph
OSOnFDmx8/styjdpVQIVpWnTrM4Jx1zs79u2TP669ddq5Fsqd0mcifUUbcYwXXws
ySQyTDC14N1TztxQzpe5g4/IVej6TnVXB+EKbPc/B+8ZFXc0qjUQaJJNsKx08HXM
a39Ifgbbf7qvxxx3mzGqDP+bVtU7gmGIzGBiYbyjNP4tu7fgn9nunshEzGllKCr6
BmdAp3HIe63572BKHiMlofA60WCiewzgZhGCLlMUCUsyChB96xBfR0Sc/YZ01CIx
02iUBC3HlscYwdcXsREd2uW5No+zjSEdlgDP+o2ecArNxDV63fPo2e7pFQdBAjle
Jl2xtYDMCTzdERc+woA7q8aMXupEwImo1stBVMtnMyU/SRa9peApx9/s43is7aas
SB1GSQ2/hjrcAW9HTiqVhFVpVfu7poGhtVlKouk7C7o7uf82uAnZ8trILzHdgN27
kR0rmWM+VUx8nIDLTP5RKO4VrAVhfWCLuKCYQd95a8PTPhwIdI4=
=HV39
-----END PGP SIGNATURE-----

--pfxobpnuncen6xuh--


--===============6682094656890163542==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============6682094656890163542==--

