Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CC4DBEB64D0
	for <linux-rockchip@archiver.kernel.org>; Tue, 13 Jun 2023 16:48:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=St+bsG+BPxW9NqxNWVPLiQVYZUt8Rt2WNHX/+n6nHBE=; b=2l/pqb1DRS0wDwOxSdGA5gnIky
	28SM6yqAeEX4Rsnp/xMNKyWcLYhApgckCnVDCo9senJ6hfLqdtsEW1xWL4JiYziOCQlGKXWWF960W
	l3nPpAZPdJ2vmbauSy4owz39Ac7OHxLmXZpcnmcWIcyRQrrMYfNAMHZExkXPIxZJ/u5j/u1kkPa84
	6zd5fLezF4vTfns9gD+Hhxe8r7W1j5lXN4qC9YoW4rszvDxs9LeSVYl4KOofLCYCywM/i/4TSUSDN
	mOvYpkmERYqv/sENBPgP0EL2wCK/TqhJkGyxs1G5dzlSzxjj7vC8Y4M8JMKfMq5XVsiE2eCucUwLr
	TkSpC7Fw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q97Be-008dFL-39;
	Tue, 13 Jun 2023 16:48:06 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q97Ba-008dDl-39;
	Tue, 13 Jun 2023 16:48:05 +0000
Received: from mercury (dyndsl-091-248-189-170.ewe-ip-backbone.de [91.248.189.170])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: sre)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id CFE936601F5E;
	Tue, 13 Jun 2023 17:48:00 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1686674880;
	bh=Vfsp4MJKJl01zeaV5MXk17AXCk6laqudfFFj8VAdsO8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=d1Qs0uVaLNFTMtpVuMgb/CEr4VcVnk3t29wGt20lOzzaVQec+ErQHN57Xnp9cxcJp
	 JyWjxzknDrkNXy/QOW3Oqq5p+/vHPZfZACch8PhNJ1500Ae38Ypy42N6L5gclJl2hO
	 iHwe3gSMy04IP59PV6D65gCVLO+RjhZuT0NnmobLEyUjqpTOorQ3AP2bJE/QEM1pAF
	 mmzSX8yZCCFmMnx29E/kM3WJ4mtM+6nQvgM7CXqiJ2kSN/Qmdb0iSZlfh4f5HNPcRw
	 otYXzMUjYXhXEr8u50NSjfYq6S+8EfThEcYhnBK8Gk1P9hA7RFIEBLOIsznYwmGkUa
	 iD74dFjRQFyqw==
Received: by mercury (Postfix, from userid 1000)
	id BFE1B1066FBA; Tue, 13 Jun 2023 18:47:58 +0200 (CEST)
Date: Tue, 13 Jun 2023 18:47:58 +0200
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
	Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
	Jonathan Cameron <Jonathan.Cameron@huawei.com>
Subject: Re: [PATCH v5 11/25] PM / devfreq: rockchip-dfi: Handle LPDDR2
 correctly
Message-ID: <20230613164758.qjjjtog5bjnhjry5@mercury.elektranox.org>
References: <20230524083153.2046084-1-s.hauer@pengutronix.de>
 <20230524083153.2046084-12-s.hauer@pengutronix.de>
MIME-Version: 1.0
In-Reply-To: <20230524083153.2046084-12-s.hauer@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230613_094803_143756_9BA10951 
X-CRM114-Status: GOOD (  22.33  )
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
Content-Type: multipart/mixed; boundary="===============3838459040851185347=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============3838459040851185347==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="4yktvbxgbrrvhkrz"
Content-Disposition: inline


--4yktvbxgbrrvhkrz
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Wed, May 24, 2023 at 10:31:39AM +0200, Sascha Hauer wrote:
> According to the downstream driver the DDRMON_CTRL_LPDDR23 bit must be
> set for both LPDDR2 and LPDDR3. Add the missing LPDDR2 case and while
> at it turn the if/else if/else into switch/case which makes it easier
> to read.
>=20
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> Reviewed-by: Jonathan Cameron <Jonathan.Cameron@huawei.com>
> ---

Reviewed-by: Sebastian Reichel <sebastian.reichel@collabora.com>

-- Sebastian

>  drivers/devfreq/event/rockchip-dfi.c | 11 +++++++++--
>  1 file changed, 9 insertions(+), 2 deletions(-)
>=20
> diff --git a/drivers/devfreq/event/rockchip-dfi.c b/drivers/devfreq/event=
/rockchip-dfi.c
> index 261d112580c9e..16cd5365671f7 100644
> --- a/drivers/devfreq/event/rockchip-dfi.c
> +++ b/drivers/devfreq/event/rockchip-dfi.c
> @@ -82,12 +82,19 @@ static void rockchip_dfi_start_hardware_counter(struc=
t devfreq_event_dev *edev)
>  		       DDRMON_CTRL_HARDWARE_EN), dfi_regs + DDRMON_CTRL);
> =20
>  	/* set ddr type to dfi */
> -	if (dfi->ddr_type =3D=3D ROCKCHIP_DDRTYPE_LPDDR3)
> +	switch (dfi->ddr_type) {
> +	case ROCKCHIP_DDRTYPE_LPDDR2:
> +	case ROCKCHIP_DDRTYPE_LPDDR3:
>  		writel_relaxed(HIWORD_UPDATE(DDRMON_CTRL_LPDDR23, DDRMON_CTRL_DDR_TYPE=
_MASK),
>  			       dfi_regs + DDRMON_CTRL);
> -	else if (dfi->ddr_type =3D=3D ROCKCHIP_DDRTYPE_LPDDR4)
> +		break;
> +	case ROCKCHIP_DDRTYPE_LPDDR4:
>  		writel_relaxed(HIWORD_UPDATE(DDRMON_CTRL_LPDDR4, DDRMON_CTRL_DDR_TYPE_=
MASK),
>  			       dfi_regs + DDRMON_CTRL);
> +		break;
> +	default:
> +		break;
> +	}
> =20
>  	/* enable count, use software mode */
>  	writel_relaxed(HIWORD_UPDATE(DDRMON_CTRL_SOFTWARE_EN, DDRMON_CTRL_SOFTW=
ARE_EN),
> --=20
> 2.39.2
>=20

--4yktvbxgbrrvhkrz
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE72YNB0Y/i3JqeVQT2O7X88g7+poFAmSInb4ACgkQ2O7X88g7
+prLsg/+OFMv+BneIBfQR6aVu6uaeszYHoFsIk7sydXblAcOfo7MGACwwpiW3Fig
h8gftrpDOi6qfCjzOzhR0WkKacHVt5xrY3lpkC06i+0Ri81LXxXKpAYMx3G6XVQv
W/0invqIS8Q6FbQi+a33Bdt1cCKQgcYSMFlQsSMnlYGiW6ixOlbsF2WtT7WjG7aC
PhACLPESyedGRXSVsvy9z81kSmNOs2blGNpXnJhYn5kNHsymlZLcMR7OsWkmUC+0
pHkYx/XrFSBPe5tT22YHoNeBIjxYA+GS7ZWmn+pgt1Sy/Zqd0w8L9hTTpuN1t4tu
Syzy1Q8tUp9sFV1qqJwaA4zx0xQ6KJvGh1laebyBlW4Ej9igWklUGM5xlfMGNsaz
1usQVasNBlC28y8x3rUZSFxFocnvCMU9Upg9+Xsx+jRq2PG5H2KJQuWpdndk5PIA
GTeEvkdJ63XTSoL3UQ9nx5KkiEOMn4MWsTBORaNOLzcNAe3OD2VKeXmDqeL26qV4
LgyB4txXEJG55VQXNVZ5SV0j8l2xS9M6LLq5G4DbV4bl0i0m2+RxSB9XouokM1G/
W2zzn6VXu2Z/442GjoohwC8QA9pOug/ZB1BYd20S8h7TDrGZ3QkPzhjt/nHC1LAS
h82umKSpYRHGLAfnboV4/Xk1KcMbn1sXX8uk+vjE7I/TuA+b5wc=
=kmuy
-----END PGP SIGNATURE-----

--4yktvbxgbrrvhkrz--


--===============3838459040851185347==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============3838459040851185347==--

