Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 60C0DEB64D8
	for <linux-rockchip@archiver.kernel.org>; Wed, 14 Jun 2023 13:41:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=jGpfRbbEt1j9QtO5FSoePx1MnFoBzkknVExUp5mbCrY=; b=Wy7BdnLAql+RPucRzKApp4U2ac
	Vp8YZFlEl2ouxi6RNFDmfi4/oRuWWGlNp38ie/6RWNhkZt+XlEIPYO0/gcQ9a2ebHtGSz/o5fOxxl
	EhVvx2WUDusFD1CkAPHLlf6FT3n6M1GiL+FhcdJV4ZhoEe9kW6BQjYnPryekE5MKKBLTvRFHmdMSo
	+lZci/ZvUL+f/wKr76NVlZMXpOWn/wBwrJrxjsR9CWddI88mP8TmWPu/od/DJYrERCONhjnPMDAsY
	265u4CIH9EwPlXU9Bqjkdc29RfX+RNs3lp/HZBAs9PaOLqNBEODroE/I9+9pJmw8K2iOudBXDM811
	P6CfQMNg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q9QkB-00BmQb-0H;
	Wed, 14 Jun 2023 13:41:03 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q9Qjm-00BmMl-0E;
	Wed, 14 Jun 2023 13:40:39 +0000
Received: from mercury (dyndsl-091-248-213-214.ewe-ip-backbone.de [91.248.213.214])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: sre)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id DBD206606F20;
	Wed, 14 Jun 2023 14:40:35 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1686750036;
	bh=PBYQcUFjQMg4J0fJHCjFD2l4P5QvWdlw692+eiww3G4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=arFK4HIV6P8nM46DlbdXlMJuYDrRy5fRJxQF3mPt1ytPQvXsE6J4VmNVAGwoB6KtE
	 Gl3Z7np7uwlhbbWxD6yltL2Q3M1yUNrGBrwmGSQbK/ONj8bPLvQzzkomOZMO0l4BWt
	 x2BbrB8akghj0wD7OdIlYWjv8q8e8zHllbAL6XGnoMdT/LtknA/GXfCtZ2BtxygnnR
	 rAfJWwZVz0hFRp3N20y53Trjavb0daJ19sOST6iuCTZ7TcGO4SW+hxZzZc4unCPZPh
	 v5O4bG+zKyD8UQq/6elZx39/OrQbZMnaWZ5j7JBIDt/CvMPNOukrkT46FMKat/jIl3
	 XsXhxkzE5XQ9w==
Received: by mercury (Postfix, from userid 1000)
	id 0F7C31060A04; Wed, 14 Jun 2023 15:40:34 +0200 (CEST)
Date: Wed, 14 Jun 2023 15:40:34 +0200
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
Subject: Re: [PATCH v5 00/25] Add perf support to the rockchip-dfi driver
Message-ID: <20230614134034.3p3p75a3jophi2eu@mercury.elektranox.org>
References: <20230524083153.2046084-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
In-Reply-To: <20230524083153.2046084-1-s.hauer@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230614_064038_432785_4B3D497A 
X-CRM114-Status: GOOD (  31.77  )
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
Content-Type: multipart/mixed; boundary="===============6711845814963686807=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============6711845814963686807==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="o7ugbz6dwi4olws4"
Content-Disposition: inline


--o7ugbz6dwi4olws4
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Wed, May 24, 2023 at 10:31:28AM +0200, Sascha Hauer wrote:
> This is v5 of the series adding perf support to the rockchip DFI driver.
>=20
> A lot has changed in the perf driver since v4. First of all the review
> feedback from Robin and Jonathan has been integrated. The perf driver
> now not only supports monitoring the total DDR utilization, but also the
> individual channels. I also reworked the way the raw 32bit counter
> values are summed up to 64bit perf values, so hopefully the code is
> easier to follow now.
>=20
> lockdep found out that that locking in the perf driver was broken, so I
> reworked that as well. None of the perf hooks allows locking with
> mutexes or spinlocks, so in perf it's not possible to enable the DFI
> controller when needed. Instead I now unconditionally enable the DFI
> controller during probe when perf is enabled.
>=20
> Furthermore the hrtimer I use for reading out the hardware counter
> values before they overflow race with perf. Now a seqlock is used to
> prevent that.
>=20
> The RK3588 device tree changes for the DFI were not part of v4. As
> Vincent Legoll showed interest in testing this series the necessary
> device tree changes are now part of this series.

I tested the series on RK3588 EVB1. The read/write byts looks
sensible. Sometimes cycles reads unrealistic values, though:

 Performance counter stats for 'system wide':

18446744070475110400      rockchip_ddr/cycles/                             =
                 =20
            828.63 MB   rockchip_ddr/read-bytes/                           =
               =20
            207.19 MB   rockchip_ddr/read-bytes0/                          =
               =20
            207.15 MB   rockchip_ddr/read-bytes1/                          =
               =20
            207.14 MB   rockchip_ddr/read-bytes2/                          =
               =20
            207.15 MB   rockchip_ddr/read-bytes3/                          =
               =20
              1.48 MB   rockchip_ddr/write-bytes/                          =
               =20
              0.37 MB   rockchip_ddr/write-bytes0/                         =
               =20
              0.37 MB   rockchip_ddr/write-bytes1/                         =
               =20
              0.37 MB   rockchip_ddr/write-bytes2/                         =
               =20
              0.38 MB   rockchip_ddr/write-bytes3/                         =
               =20
            830.12 MB   rockchip_ddr/bytes/                                =
               =20

       1.004239766 seconds time elapsed

(This is with memdump running in parallel)

Otherwise the series is

Tested-by: Sebastian Reichel <sebastian.reichel@collabora.com>

-- Sebastian

> Changes since v4:
> - Add device tree changes for RK3588
> - Use seqlock to protect perf counter values from hrtimer
> - Unconditionally enable DFI when perf is enabled
> - Bring back changes to dts/binding patches that were lost in v4
>=20
> Changes since v3:
> - Add RK3588 support
>=20
> Changes since v2:
> - Fix broken reference to binding
> - Add Reviewed-by from Rob
>=20
> Changes since v1:
> - Fix example to actually match the binding and fix the warnings resulted=
 thereof
> - Make addition of rockchip,rk3568-dfi an extra patch
>=20
> Sascha Hauer (25):
>   PM / devfreq: rockchip-dfi: Make pmu regmap mandatory
>   PM / devfreq: rockchip-dfi: Embed desc into private data struct
>   PM / devfreq: rockchip-dfi: use consistent name for private data
>     struct
>   PM / devfreq: rockchip-dfi: Add SoC specific init function
>   PM / devfreq: rockchip-dfi: dfi store raw values in counter struct
>   PM / devfreq: rockchip-dfi: Use free running counter
>   PM / devfreq: rockchip-dfi: introduce channel mask
>   PM / devfreq: rk3399_dmc,dfi: generalize DDRTYPE defines
>   PM / devfreq: rockchip-dfi: Clean up DDR type register defines
>   PM / devfreq: rockchip-dfi: Add RK3568 support
>   PM / devfreq: rockchip-dfi: Handle LPDDR2 correctly
>   PM / devfreq: rockchip-dfi: Handle LPDDR4X
>   PM / devfreq: rockchip-dfi: Pass private data struct to internal
>     functions
>   PM / devfreq: rockchip-dfi: Prepare for multiple users
>   PM / devfreq: rockchip-dfi: give variable a better name
>   PM / devfreq: rockchip-dfi: Add perf support
>   PM / devfreq: rockchip-dfi: make register stride SoC specific
>   PM / devfreq: rockchip-dfi: account for multiple DDRMON_CTRL registers
>   PM / devfreq: rockchip-dfi: add support for RK3588
>   dt-bindings: devfreq: event: convert Rockchip DFI binding to yaml
>   dt-bindings: devfreq: event: rockchip,dfi: Add rk3568 support
>   dt-bindings: devfreq: event: rockchip,dfi: Add rk3588 support
>   arm64: dts: rockchip: rk3399: Enable DFI
>   arm64: dts: rockchip: rk356x: Add DFI
>   arm64: dts: rockchip: rk3588s: Add DFI
>=20
>  .../bindings/devfreq/event/rockchip,dfi.yaml  |  84 ++
>  .../bindings/devfreq/event/rockchip-dfi.txt   |  18 -
>  .../rockchip,rk3399-dmc.yaml                  |   2 +-
>  arch/arm64/boot/dts/rockchip/rk3399.dtsi      |   1 -
>  arch/arm64/boot/dts/rockchip/rk356x.dtsi      |   7 +
>  arch/arm64/boot/dts/rockchip/rk3588s.dtsi     |  16 +
>  drivers/devfreq/event/rockchip-dfi.c          | 796 +++++++++++++++---
>  drivers/devfreq/rk3399_dmc.c                  |  10 +-
>  include/soc/rockchip/rk3399_grf.h             |   9 +-
>  include/soc/rockchip/rk3568_grf.h             |  13 +
>  include/soc/rockchip/rk3588_grf.h             |  18 +
>  include/soc/rockchip/rockchip_grf.h           |  18 +
>  12 files changed, 854 insertions(+), 138 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/devfreq/event/rockc=
hip,dfi.yaml
>  delete mode 100644 Documentation/devicetree/bindings/devfreq/event/rockc=
hip-dfi.txt
>  create mode 100644 include/soc/rockchip/rk3568_grf.h
>  create mode 100644 include/soc/rockchip/rk3588_grf.h
>  create mode 100644 include/soc/rockchip/rockchip_grf.h
>=20
> --=20
> 2.39.2
>=20

--o7ugbz6dwi4olws4
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE72YNB0Y/i3JqeVQT2O7X88g7+poFAmSJw00ACgkQ2O7X88g7
+pqqmg//ZLfOtGMx2p1VeLXg8eFmo95vhmxSFozhTnnAQYb5Zay290jo4HZyard5
JQjWZuCa+4yxDg1H0r2i/4Ba8UT6BXGfYi0nVOM/Jc61TTYXlypIwTyb8t0O9PnW
RwGiUF6ftkO2B+J29AvgTzDDXYCIOnUgcutXJoKChkTN25oFq5D88XPn2jy6crmg
jXRlWQO4hi1Znh3IyQ1bY93Kui4JzrU3qXgi+06aCf8ADmDgjYxu33pJMkqXzJSx
7EErhr77XvssrnPcJCc/EEfsGOjOOOVaAIFRUr7qhSI/us3K8/Ghnb6ZIDnvnXXp
SEL7f2JvZknXvhAILe4xmPBfqqP7cGoh5W9IPQpTPz48sPWGhLxqZdfWfwjR+RJg
6zycFqoOyFtZOucNR0BUQhLdj/R9ouc6Ya1uq1zupL3BoGNd815jpWqjlHV+qu/S
2Jr8NvyTg4SwWiggYyRydLPESJka06AAwkHFFvBxajQwsRECt6DZMF46Jsfbj69l
dzp7g5l9e79GQJ4jF8OTjQkZC05CdKLzIy7rKYsiEQt9HScCww2r6Er9mjj+i3PA
6d3aKUZ1mf3ERcIBSHmtSGJDr2mYT0Q3wr3QBcALKcKPkb7qk5temqjI67fknOzi
eS4cpLgRj38ZT4+0dJYsAVZe8XNbtw+i+/7ges94PAZEttg+iHk=
=nxkL
-----END PGP SIGNATURE-----

--o7ugbz6dwi4olws4--


--===============6711845814963686807==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============6711845814963686807==--

