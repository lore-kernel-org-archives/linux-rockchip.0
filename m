Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A5F82EB64D0
	for <linux-rockchip@archiver.kernel.org>; Tue, 13 Jun 2023 16:46:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=EQWUIY1SrBENDenbj/28Xx1uVhn8KzlzG/j3un5usB0=; b=tZYpcWyfz77SUNESBmSPxd4obz
	UIdNAxzrDHVxBXV2RaE9DXzJChECf3HgXA/LB3w2h8uwceLJQUNM2pQlPinHs3o7hNlrIVB4cBn9y
	r0DZtnRXMrIKatAvCDfJWLulf40VBZvxh7AW1vRMrg+5b1ccORdDXPVyw0PuI8IG3cmS8Q9gWOA6/
	OxVph2KmJaHwL8vD2UAcEr2fIT9yOSGgFdoZe4YsZ7UML8Zl+RD8WDQXrd6eXamfHKXwEv+71pM5H
	RsVFWfu16jJoNKvsE8lBPULT+hgMp1l33AAF3GZUoqak7mDEo7kP52PhTecBZ2tpo5Hc4iGyrrCWK
	UBA0o8Kg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q97A5-008d2O-1W;
	Tue, 13 Jun 2023 16:46:29 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q97A0-008d0r-2b;
	Tue, 13 Jun 2023 16:46:28 +0000
Received: from mercury (dyndsl-091-248-189-170.ewe-ip-backbone.de [91.248.189.170])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: sre)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 008AB6601F5E;
	Tue, 13 Jun 2023 17:46:22 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1686674783;
	bh=GDJl3WvY/KbTnr+TYhBiW/UNNbZLG+jJxvkLPSAAcgY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=X7JCm+F2D+S/FPHx5ID05TKL19ZqQY3UmSvxiAtWOhhFj5eBvaE+sXIsowE0rwv8R
	 YCZ4xzn1XDPaaoBINbZ0r97IDYL8o3XKf/y2MDQgVlqT8Gw79i51CrBo0Deu/1oZGS
	 ybpiNMAwaGZe+qMAG4CrbI9BghuVB9/QCK6t1awEnkYTTMpeQQoENTK6tVjprVXlmO
	 3oKBg50q27qF6qJ+Vluz/c8AuqnwPhXyoGroFGDOVLUTIMppTeIjh5N74NsrqC4FST
	 8f4GylShKF8aY6Lx6KsvECCV/5Zi9eSqGw7SAREqlCJ7AnSacPX1uzNemNtP02UoeX
	 koohaLdx34FYA==
Received: by mercury (Postfix, from userid 1000)
	id 4D7521066FBA; Tue, 13 Jun 2023 18:46:20 +0200 (CEST)
Date: Tue, 13 Jun 2023 18:46:20 +0200
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
Subject: Re: [PATCH v5 09/25] PM / devfreq: rockchip-dfi: Clean up DDR type
 register defines
Message-ID: <20230613164620.4ckr4kkedkwzup32@mercury.elektranox.org>
References: <20230524083153.2046084-1-s.hauer@pengutronix.de>
 <20230524083153.2046084-10-s.hauer@pengutronix.de>
MIME-Version: 1.0
In-Reply-To: <20230524083153.2046084-10-s.hauer@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230613_094625_855806_490D13E1 
X-CRM114-Status: GOOD (  25.48  )
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
Content-Type: multipart/mixed; boundary="===============8858903736204296998=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============8858903736204296998==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="orfr6nckjzplc7bn"
Content-Disposition: inline


--orfr6nckjzplc7bn
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Wed, May 24, 2023 at 10:31:37AM +0200, Sascha Hauer wrote:
> Use the HIWORD_UPDATE() define known from other rockchip drivers to
> make the defines look less odd to the readers who've seen other
> rockchip drivers.
>=20
> The HIWORD registers have their functional bits in the lower 16 bits
> whereas the upper 16 bits contain a mask. Only the functional bits that
> have the corresponding mask bit set are modified during a write. Although
> the register writes look different, the end result should be the same,
> at least there's no functional change intended with this patch.
>=20
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---

Reviewed-by: Sebastian Reichel <sebastian.reichel@collabora.com>

-- Sebastian

>  drivers/devfreq/event/rockchip-dfi.c | 33 ++++++++++++++++++----------
>  1 file changed, 21 insertions(+), 12 deletions(-)
>=20
> diff --git a/drivers/devfreq/event/rockchip-dfi.c b/drivers/devfreq/event=
/rockchip-dfi.c
> index 6bccb6fbcfc0c..6b3ef97b3be09 100644
> --- a/drivers/devfreq/event/rockchip-dfi.c
> +++ b/drivers/devfreq/event/rockchip-dfi.c
> @@ -26,15 +26,19 @@
> =20
>  #define DMC_MAX_CHANNELS	2
> =20
> +#define HIWORD_UPDATE(val, mask)	((val) | (mask) << 16)
> +
>  /* DDRMON_CTRL */
>  #define DDRMON_CTRL	0x04
> -#define CLR_DDRMON_CTRL	(0x1f0000 << 0)
> -#define LPDDR4_EN	(0x10001 << 4)
> -#define HARDWARE_EN	(0x10001 << 3)
> -#define LPDDR3_EN	(0x10001 << 2)
> -#define SOFTWARE_EN	(0x10001 << 1)
> -#define SOFTWARE_DIS	(0x10000 << 1)
> -#define TIME_CNT_EN	(0x10001 << 0)
> +#define DDRMON_CTRL_DDR4		BIT(5)
> +#define DDRMON_CTRL_LPDDR4		BIT(4)
> +#define DDRMON_CTRL_HARDWARE_EN		BIT(3)
> +#define DDRMON_CTRL_LPDDR23		BIT(2)
> +#define DDRMON_CTRL_SOFTWARE_EN		BIT(1)
> +#define DDRMON_CTRL_TIMER_CNT_EN	BIT(0)
> +#define DDRMON_CTRL_DDR_TYPE_MASK	(DDRMON_CTRL_DDR4 | \
> +					 DDRMON_CTRL_LPDDR4 | \
> +					 DDRMON_CTRL_LPDDR23)
> =20
>  #define DDRMON_CH0_COUNT_NUM		0x28
>  #define DDRMON_CH0_DFI_ACCESS_NUM	0x2c
> @@ -73,16 +77,20 @@ static void rockchip_dfi_start_hardware_counter(struc=
t devfreq_event_dev *edev)
>  	void __iomem *dfi_regs =3D dfi->regs;
> =20
>  	/* clear DDRMON_CTRL setting */
> -	writel_relaxed(CLR_DDRMON_CTRL, dfi_regs + DDRMON_CTRL);
> +	writel_relaxed(HIWORD_UPDATE(0, DDRMON_CTRL_TIMER_CNT_EN | DDRMON_CTRL_=
SOFTWARE_EN |
> +		       DDRMON_CTRL_HARDWARE_EN), dfi_regs + DDRMON_CTRL);
> =20
>  	/* set ddr type to dfi */
>  	if (dfi->ddr_type =3D=3D ROCKCHIP_DDRTYPE_LPDDR3)
> -		writel_relaxed(LPDDR3_EN, dfi_regs + DDRMON_CTRL);
> +		writel_relaxed(HIWORD_UPDATE(DDRMON_CTRL_LPDDR23, DDRMON_CTRL_DDR_TYPE=
_MASK),
> +			       dfi_regs + DDRMON_CTRL);
>  	else if (dfi->ddr_type =3D=3D ROCKCHIP_DDRTYPE_LPDDR4)
> -		writel_relaxed(LPDDR4_EN, dfi_regs + DDRMON_CTRL);
> +		writel_relaxed(HIWORD_UPDATE(DDRMON_CTRL_LPDDR4, DDRMON_CTRL_DDR_TYPE_=
MASK),
> +			       dfi_regs + DDRMON_CTRL);
> =20
>  	/* enable count, use software mode */
> -	writel_relaxed(SOFTWARE_EN, dfi_regs + DDRMON_CTRL);
> +	writel_relaxed(HIWORD_UPDATE(DDRMON_CTRL_SOFTWARE_EN, DDRMON_CTRL_SOFTW=
ARE_EN),
> +		       dfi_regs + DDRMON_CTRL);
>  }
> =20
>  static void rockchip_dfi_stop_hardware_counter(struct devfreq_event_dev =
*edev)
> @@ -90,7 +98,8 @@ static void rockchip_dfi_stop_hardware_counter(struct d=
evfreq_event_dev *edev)
>  	struct rockchip_dfi *dfi =3D devfreq_event_get_drvdata(edev);
>  	void __iomem *dfi_regs =3D dfi->regs;
> =20
> -	writel_relaxed(SOFTWARE_DIS, dfi_regs + DDRMON_CTRL);
> +	writel_relaxed(HIWORD_UPDATE(0, DDRMON_CTRL_SOFTWARE_EN),
> +		       dfi_regs + DDRMON_CTRL);
>  }
> =20
>  static void rockchip_dfi_read_counters(struct devfreq_event_dev *edev, s=
truct dmc_count *count)
> --=20
> 2.39.2
>=20

--orfr6nckjzplc7bn
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE72YNB0Y/i3JqeVQT2O7X88g7+poFAmSInVsACgkQ2O7X88g7
+pripQ//XMW4zu69nZFG4mV3sjACP5kQia6Tr0QutsUveoANz/NWztN/pbXupClb
Y/CgXQODHPSVLH7zzKdj1hVS7XmIvkLxsay8p8fHCp7g71egEpb/UDF0sA80ExML
6AMiVGopNGpWGZWolqexnmxbMrHQXsyjgOAyTKwDYkkKBGsIgfkwKWCQiAu//2AL
VDAAvQOOqkXrh3hq/6DZHNapEKS3qNPE/n5yebjE5+7qBuUFhxz0V4KrpNxP6GU+
69BE6X9KIvK0Px2J88rk8mF+fDVIlm89M/SdvPUSW/omDOnXWfgWzr6DEo0PJ5uu
mRY4QJkHBftHySqLen9MQgRntPMY+dtKjIjb35gaWOT0elhN8MInKNlbSO8ljxRM
AFyP3P/Ue7IKAPt2sMQbMs1ePYLvuI9eSiYHHCLVcC3k6WRI4b/ucC2MxBCkAIPD
3DBu2C67xGGP2INn0NgLNzXUcwePg5aZPFeTcGgY/sUUyau8qJROFR9Gs4cuNZ6F
zbCy0QO+Lp46j1Ty3cQIZswcTbxUrNsmNS/Peit+hL2YgWE2qO2AfZwa+LuJ9Uww
04WMCCTgwuBSp6tyzjUZAPvpNyPN2nYVS7tFiDBGJj4H88ptCzIfw+TZOeG4XMUS
jZ888YFkyePKOISUOKuaAwc5N2GNkJU1kawDDJc2OtEjSauhXFA=
=KoZi
-----END PGP SIGNATURE-----

--orfr6nckjzplc7bn--


--===============8858903736204296998==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============8858903736204296998==--

