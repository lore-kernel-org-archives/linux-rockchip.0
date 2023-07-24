Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3BACCEB64DD
	for <linux-rockchip@archiver.kernel.org>; Mon, 24 Jul 2023 19:22:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=2jxaHCFRhzMMSDnIPNTQGAxXUtRCVVxBoG4lC9cEixc=; b=4ALAtZZh9ndxzERDrziKDgrYyd
	tQHXTeRrXOOKBHrzs84l2FqRZ0fPZZh4JThz988WCQc87vkZX3UFlTp2PhjPgXvVIaqmuwT68Kupn
	7Kf2aBHHQ0sLSSpjPIlySWoK+0gQsCFyLD4Hfs+TE0gCiwxZ9t1fhIL2pmo0W2IRziGoJcmrYDAxu
	Os0LLnniivWPYEHwYG7Z8PRFgJzh9dHfC9M4khLuA1IDBw95M2+3lDINYXo0faa6N/QY3L2HqGq9K
	uSry7x2llZnGNBMlsEgWcurkgDV+KMvm6rMy1zn299wAzZ0FTzinqgSvH1q8f7j5Ow3egi8jm9vOs
	wCehXTpQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qO18d-005IU4-2p;
	Mon, 24 Jul 2023 19:22:35 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qO18a-005ISf-0t;
	Mon, 24 Jul 2023 19:22:33 +0000
Received: from mercury (unknown [185.254.75.45])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sre)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id E03856607036;
	Mon, 24 Jul 2023 20:22:26 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1690226547;
	bh=aLQXdltzJfxQ4uDLWVoF/awD22D2bQ3Zo59NB+NIdPY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=MM9tk0RTRZVJxNlAEHgfxstWMNLt++yB3cQGLsxEmKv4CXyO7KkPeu0V8/S36vl3U
	 e+9DH60i7YSH7bPS5mlaqXw/CLr4G/R02YwrRgaoU7FZa5+sqgIB65NnA2ziPlcWeS
	 7XNKXuaHtSHH248rdbZVU7atsRU5bLHx6602hJUeXJS4PPGZJUi7GPb1vWrYHrcNzh
	 QGwfAUgWbmXekx8MAKHctbUyFQEXSF6VYqxaKHrBaIZXeTl3LX7d8XavsmZ9RpzTbp
	 BD+1mphVt47FQMtajBt+/O2SgnBal13fnYCB2/s8o/DQ9Kd/vpRgjMsQFgeDx+wZGY
	 AByGuLJZQBSpg==
Received: by mercury (Postfix, from userid 1000)
	id 597F01067453; Mon, 24 Jul 2023 21:22:23 +0200 (CEST)
Date: Mon, 24 Jul 2023 21:22:23 +0200
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Heiko Stuebner <heiko@sntech.de>
Cc: linux-phy@lists.infradead.org, linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org, Qu Wenruo <wqu@suse.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Simon Xue <xxm@rock-chips.com>, linux-kernel@vger.kernel.org,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	devicetree@vger.kernel.org, Jingoo Han <jingoohan1@gmail.com>,
	Gustavo Pimentel <gustavo.pimentel@synopsys.com>,
	linux-pci@vger.kernel.org, John Clark <inindev@gmail.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Serge Semin <fancer.lancer@gmail.com>, kernel@collabora.com,
	Vinod Koul <vkoul@kernel.org>, Shawn Lin <shawn.lin@rock-chips.com>,
	Conor Dooley <conor+dt@kernel.org>
Subject: Re: (subset) [PATCH v2 0/2] RK3588 PCIe3 support
Message-ID: <20230724192223.5jnu5wgrzmmjz5z5@mercury.elektranox.org>
References: <20230717173512.65169-1-sebastian.reichel@collabora.com>
 <169022594803.2911118.12432442062352790360.b4-ty@sntech.de>
MIME-Version: 1.0
In-Reply-To: <169022594803.2911118.12432442062352790360.b4-ty@sntech.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230724_122232_459097_AF849140 
X-CRM114-Status: GOOD (  18.29  )
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
Content-Type: multipart/mixed; boundary="===============3126904483563137767=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============3126904483563137767==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="nexk2ndejsfescch"
Content-Disposition: inline


--nexk2ndejsfescch
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Heiko,

On Mon, Jul 24, 2023 at 09:12:35PM +0200, Heiko Stuebner wrote:
> On Mon, 17 Jul 2023 19:35:10 +0200, Sebastian Reichel wrote:
> > This adds PCIe v3 support for RK3588. The series depends on the PCIe
> > v2 series [0], since the the same binding is used. It has been tested
> > on Rockchip EVB1 and Radxa Rock 5B.
> >=20
> > Note, that the PCIe3 PHY driver is currently missing bifurcation
> > support for RK3588. Thus after this series only PCIe3x4 is usable
> > (in aggregated x4 mode) without adding support for the PHY's
> > "rockchip,pcie30-phymode" DT property, which allows configuring
> > how the lanes are distributed. Aggregated 3x4 mode seems to be the
> > most common configuration. Both EVB1 and Rock 5B use it, so I
> > cannot test anything else anyways.
> >=20
> > [...]
>=20
> Applied, thanks!
>=20
> [2/2] arm64: dts: rockchip: rk3588: add PCIe3 support
>       commit: 0acf4fa7f187cd7e3dad93f1ee14e9509687621e

Applying this without the PCIe 2 series being applied introduces
warnings for the RK3588 dtbs_check, as mentioned in the second
setence of the text you quoted :)

(FWIW RK356x already has the same warnings, though)

-- Sebastian

--nexk2ndejsfescch
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE72YNB0Y/i3JqeVQT2O7X88g7+poFAmS+z2MACgkQ2O7X88g7
+pro9g//epEbLx9hS9MzsBCHWVh8CFoCTo1K5A7BQ7xhse1I8Lt5W+CHnuwMPbfK
VukzVll6W+sDQqmiVvwCGz9tB3cFk+SC8whOSDCdE4RoQ/OYIoVeC4EansyAarKF
t7m3Ol8N2qgQHhE49T21otdL72TPqP3fQuUuD5hYwGgGQpTgJat0L6+SdLTqSjE7
StBWwGhsDyS5WhnsVXMTGU+FSHp3gL16+zgeARqMc+6GJFa6Hl7FZEV0AjoFZa2L
VyRxxg0VIca6gvz8RvJWrGKWGeApFM/M5PWOZYQZ8eCggcSIL4zIpi6t4BVJhfBD
ERv3l/P5h5/S5Tc1IIw5Y57MqbHtpbQzQBwc6P7DUzjRZE+lsAA4U2QqBBSLw2KY
Xt3DPS6k134wIDd/e3WPJjh8zT3OU1OsZuaMtL0fQeMPvV1Bc9nuBtHOl84D9fm4
57FZUGOewRbL9QGTqFPMb6wF/rT3KZmj5sIIAvhtBUoybhzcFDN438ZJ3vPzmE7K
ocb8RW/2zhX5RgFO8s2sOsJq/D7ZCmLeVRs4CLAWvt05zDsgX2yE3bgZW+74xTWe
mSzVWncL2+OPmQSy7Aw0nWEyyLlE7lCdCXN+I8dAce23LgbydLvHvhEt7qPDvCP0
u9sw6VUb8F2tDu4GR9P+OtHG/nzFIUPETHv8sIDHftc4IEJUoLI=
=47as
-----END PGP SIGNATURE-----

--nexk2ndejsfescch--


--===============3126904483563137767==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============3126904483563137767==--

