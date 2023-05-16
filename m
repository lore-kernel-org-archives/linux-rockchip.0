Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 01314C77B7A
	for <linux-rockchip@archiver.kernel.org>; Tue, 16 May 2023 22:01:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=aTUilRfP+aLeezuQtS62poUHB0YlEGuUC9LB+FCe4tU=; b=nYxv5CYUpMvTamE0zPNteOlrlo
	lBcwKoA8v/0ZudWEttyuDvlYiBaJTRBauJYACoIlf8fV/GphKOkXim8czxKxgoQRLhzEwmctl4dO1
	uKC79VjPrexMxGLPlxh8HhklUTZmOZpgUSrNvxN/Ub+uGX99hNTCRai1MzON2AuIf/F/PjbLOqId6
	OhnBWGTGl0ASQ5VhdO71dySHKXCvyggiiBhRSDpP7Uh9iBE16N38g2IkECKIJ8vefO/YqEJ2npLxj
	XJBHrTzXt2XwyZ7XtnVW3+QOmcGDZT+aV2t5qr50VoIxHaXd7eJswIlCHAJXZJuFizwanh7U4L/XP
	zQnYjjtw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pz2jh-007Fcm-0z;
	Tue, 16 May 2023 22:01:37 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pz2je-007Fbn-2Y
	for linux-rockchip@lists.infradead.org;
	Tue, 16 May 2023 22:01:36 +0000
Received: from mercury (unknown [185.254.75.45])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: sre)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 03C2E66058F7;
	Tue, 16 May 2023 23:01:30 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1684274490;
	bh=6VuzT6ae7G/wqb/mbM+/UZDAQjp/Is1WP9mWxQ5YyIo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=TzwHnsUgq6M5aQDQ7BliujRzwfM+sKCjIweA7mkDMTVE76Lslbg4iU4+F+MGRG9kP
	 tvHeMh++vslPUk/x39l/R4op0k2zaIp0wV52A2tSkH2PUdR/5t7t0GzFHRC7AdBEZK
	 OLoMQ/vJH/RIvnjZwZBhITKeusFpWGXSZM6Zt6UDIAPHRsDnOxdOj7KHYx64nsSOGE
	 BavuGd84nu17CWUqcd9N3T0WFa+p5oh9V3BNERaR6kPG9Pcy1mLL9zbv937Bq0/Whn
	 RZvVp3eeL8zkxYALmjjPVNulIbJ9fnTV51LyLndbuWXkj/qvtcNRPChnzta8lDPKB6
	 bCUF/ohnOBS6Q==
Received: by mercury (Postfix, from userid 1000)
	id B264110620FE; Wed, 17 May 2023 00:01:27 +0200 (CEST)
Date: Wed, 17 May 2023 00:01:27 +0200
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Marek Szyprowski <m.szyprowski@samsung.com>
Cc: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Lee Jones <lee@kernel.org>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Linus Walleij <linus.walleij@linaro.org>,
	Mark Brown <broonie@kernel.org>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Alexandre Belloni <alexandre.belloni@bootlin.com>,
	Alessandro Zummo <a.zummo@towertech.it>,
	linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, kernel@collabora.com,
	Diederik de Haas <didi.debian@cknow.org>,
	Vincent Legoll <vincent.legoll@gmail.com>
Subject: Re: [PATCH v8 05/14] mfd: rk808: split into core and i2c
Message-ID: <20230516220127.ohumwhchhzzmw7he@mercury.elektranox.org>
References: <20230504173618.142075-1-sebastian.reichel@collabora.com>
 <20230504173618.142075-6-sebastian.reichel@collabora.com>
 <CGME20230516212700eucas1p1fbde1b6181c18d821e0796b6b6a4fa00@eucas1p1.samsung.com>
 <2d234cd8-f883-800b-af97-116a949b64af@samsung.com>
MIME-Version: 1.0
In-Reply-To: <2d234cd8-f883-800b-af97-116a949b64af@samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230516_150135_123516_A4C6839E 
X-CRM114-Status: GOOD (  20.31  )
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
Content-Type: multipart/mixed; boundary="===============7573479828200948347=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============7573479828200948347==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="mutsuecdbukxiwro"
Content-Disposition: inline


--mutsuecdbukxiwro
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello Marek,

On Tue, May 16, 2023 at 11:26:59PM +0200, Marek Szyprowski wrote:
> Hi,
>=20
> On 04.05.2023 19:36, Sebastian Reichel wrote:
> > Split rk808 into a core and an i2c part in preparation for
> > SPI support.
> >
> > Acked-for-MFD-by: Lee Jones <lee@kernel.org>
> > Acked-by: Alexandre Belloni <alexandre.belloni@bootlin.com> # for RTC
> > Tested-by: Diederik de Haas <didi.debian@cknow.org> # Rock64, Quartz64 =
Model A + B
> > Tested-by: Vincent Legoll <vincent.legoll@gmail.com> # Pine64 QuartzPro=
64
> > Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
>=20
> This patch landed in today's linux-next as commit c20e8c5b1203 ("mfd:=20
> rk808: Split into core and i2c"). Unfortunately some boards (for example=
=20
> Hardkernel's Odroid-M1) stopped to boot after this change. This is=20
> caused by the lack of updating the related defconfigs. Could you please=
=20
> add a patch that updates the MFD_RK808 entries to MFD_RK8XX_I2C in the=20
> following files:
>=20
> $ git grep MFD_RK808
> arch/arm/configs/multi_v7_defconfig:CONFIG_MFD_RK808=3Dy
> arch/arm64/configs/defconfig:CONFIG_MFD_RK808=3Dy

Sure, I will prepare a patch for each of them. Thanks for the quick
report and sorry for the inconvenience.

-- Sebastian

>=20
>=20
> > ---
> >   drivers/clk/Kconfig                   |   2 +-
> >   drivers/input/misc/Kconfig            |   2 +-
> >   drivers/mfd/Kconfig                   |   7 +-
> >   drivers/mfd/Makefile                  |   3 +-
> >   drivers/mfd/{rk808.c =3D> rk8xx-core.c} | 209 +++++------------------=
---
> >   drivers/mfd/rk8xx-i2c.c               | 200 ++++++++++++++++++++++++
> >   drivers/pinctrl/Kconfig               |   2 +-
> >   drivers/power/supply/Kconfig          |   2 +-
> >   drivers/regulator/Kconfig             |   2 +-
> >   drivers/rtc/Kconfig                   |   2 +-
> >   include/linux/mfd/rk808.h             |   6 +
> >   sound/soc/codecs/Kconfig              |   2 +-
> >   12 files changed, 256 insertions(+), 183 deletions(-)
> >   rename drivers/mfd/{rk808.c =3D> rk8xx-core.c} (76%)
> >   create mode 100644 drivers/mfd/rk8xx-i2c.c
> >
> > ...
>=20
> Best regards
> --=20
> Marek Szyprowski, PhD
> Samsung R&D Institute Poland
>=20

--mutsuecdbukxiwro
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE72YNB0Y/i3JqeVQT2O7X88g7+poFAmRj/TcACgkQ2O7X88g7
+ppkcg//WH2Y+C6FPh41OdSO5Szxw3CQJ1Ku3dNvcQAt3BHSGl0ATOPFmYc1j2v8
/DNrXu+6aPU46ko+iu0Jrtlng4zdkl50sLLbYfvoNZQvNtI7oDYVV9ej3NO7diCr
+aN0krfeFW2MiaGcs6/U5B0/wgXCgeRf+2sCLCNxCfUji7xLT9HOQHUf34d6ZRAq
rU8iIcB7K9Kg1UUDCjn8FSUgKduyy2YriowTgO1Q1Bx93jYZ/wka+qtA9lRJC+bC
6g/9f2H7hs9IkfwVgGimp5iR++FF0G7wfY7XBZyuyVcsMLPZ9JIdCtl88oISGAFp
A94yL7MYgxtAuu6gOpnIWQVSits/WgfmfMfs95twzPQ0Vngdxm24bn4wGR7mUrMK
sd8krWaSfDPxahUkfN43p1WjDXY1WMMT6e0UPNR/MwhE+6fjI1PVc2BNSEsDQGdu
wlCYwIoPhBBGBh7L1dCKXEThlSdZsUd1N6R1QYZ3qQmYnF0KWHgnp7GDEREabHiO
RzWc0uHFa/Rnq7p1z/zZlBkUfryUqHRaLO7WIx4hzAj1w8CIMSkV08XA6Hb8X84u
/7ijOEH/selxYiETdAnkuobE9lf4cbpzU2vN7O0P9rQT7j/QIp6Mm/VsSMQaL74C
8mk7Q3O6xhh/f1/Y5M9lInSJ7hfkj5WrYCPF2Upb0a6hwfleQg0=
=tOhN
-----END PGP SIGNATURE-----

--mutsuecdbukxiwro--


--===============7573479828200948347==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============7573479828200948347==--

