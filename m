Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ADA9EC05027
	for <linux-rockchip@archiver.kernel.org>; Fri, 20 Jan 2023 09:13:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=F4rgSv925yIZX3me33/6P04EOHfmuupBW8ZbIPBWXhA=; b=j3bdiXJo2eccc0i1gyx0KBccp1
	XnQKQn02zgRatG28CF4fDyGiUolMzREmipgpzBumEqStXNq5pycAD/Ry+REd7jcTSeUFvGhAmnpwt
	8eSXvPhqarsS6PgjGctwwQm5I1tTcxxMBXzB7i6DK6Gm3Y3C6oB5qg4ZETZRA/mqbZr0qXwMt3a8j
	qOsgNyDmZvHWs4KIsKxxS8/Z2FRkQYnpjClncDC1agxuhzFII2suGC9+EFsRrAm8QmOk86G4Lgwmq
	QzwyuLDiZEcAzo1OxDXbzOiUddb2SXGCSb+dKv167qRjwznMeT3bjByEzz+WULco+Zsr3VYmA5bmE
	1Y4KeMFg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pInSz-009G8Y-4m; Fri, 20 Jan 2023 09:13:45 +0000
Received: from www.zeus03.de ([194.117.254.33] helo=mail.zeus03.de)
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pInRg-009FLx-UL
	for linux-rockchip@lists.infradead.org; Fri, 20 Jan 2023 09:12:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple; d=sang-engineering.com; h=
	date:from:to:cc:subject:message-id:references:mime-version
	:content-type:in-reply-to; s=k1; bh=cOSj1tZvBpon7M3wSaKSofqAjKxl
	548neWGVKiY0Pio=; b=FsYWxeB28/b6PIXYFcr2RMyD7/9Q4fq6FWwc0KiXOCOC
	zihwl99BTQllFAZFhHDYaQeT/2IVfyNDcf3CDyOEyTjoEx9FwwLJhjwi073OD1Rb
	KpsK8mpe4EsSg8gUItWT89VUofaDD2foTmd9fYPao2Eykb0z1oFVLgYW8DDMKEw=
Received: (qmail 689703 invoked from network); 20 Jan 2023 10:12:02 +0100
Received: by mail.zeus03.de with ESMTPSA (TLS_AES_256_GCM_SHA384 encrypted, authenticated); 20 Jan 2023 10:12:02 +0100
X-UD-Smtp-Session: l3s3148p1@rOFMca7yJskujnvx
Date: Fri, 20 Jan 2023 10:12:02 +0100
From: Wolfram Sang <wsa+renesas@sang-engineering.com>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Ulf Hansson <ulf.hansson@linaro.org>, Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Chen-Yu Tsai <wens@csie.org>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Samuel Holland <samuel@sholland.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Kevin Hilman <khilman@baylibre.com>,
	Jerome Brunet <jbrunet@baylibre.com>,
	Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
	Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	NXP Linux Team <linux-imx@nxp.com>,
	Lars Povlsen <lars.povlsen@microchip.com>,
	Steen Hegelund <Steen.Hegelund@microchip.com>,
	Daniel Machon <daniel.machon@microchip.com>,
	UNGLinuxDriver@microchip.com,
	Thierry Reding <thierry.reding@gmail.com>,
	Jonathan Hunter <jonathanh@nvidia.com>,
	Andreas =?utf-8?Q?F=C3=A4rber?= <afaerber@suse.de>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	Tony Huang <tonyhuang.sunplus@gmail.com>,
	Li-hao Kuo <lhjeff911@gmail.com>,
	Maxime Ripard <mripard@kernel.org>,
	Adrian Hunter <adrian.hunter@intel.com>,
	Masahiro Yamada <yamada.masahiro@socionext.com>,
	Markus Pargmann <mpa@pengutronix.de>,
	Jaehoon Chung <jh80.chung@samsung.com>, linux-mmc@vger.kernel.org,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-sunxi@lists.linux.dev, linux-kernel@vger.kernel.org,
	linux-amlogic@lists.infradead.org, linux-tegra@vger.kernel.org,
	linux-actions@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org
Subject: Re: [PATCH 1/2] dt-bindings: mmc: drop unneeded quotes
Message-ID: <Y8pa4lm/0eZSsIGO@ninjato>
Mail-Followup-To: Wolfram Sang <wsa+renesas@sang-engineering.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Ulf Hansson <ulf.hansson@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Chen-Yu Tsai <wens@csie.org>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Samuel Holland <samuel@sholland.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Kevin Hilman <khilman@baylibre.com>,
	Jerome Brunet <jbrunet@baylibre.com>,
	Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
	Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	NXP Linux Team <linux-imx@nxp.com>,
	Lars Povlsen <lars.povlsen@microchip.com>,
	Steen Hegelund <Steen.Hegelund@microchip.com>,
	Daniel Machon <daniel.machon@microchip.com>,
	UNGLinuxDriver@microchip.com,
	Thierry Reding <thierry.reding@gmail.com>,
	Jonathan Hunter <jonathanh@nvidia.com>,
	Andreas =?utf-8?Q?F=C3=A4rber?= <afaerber@suse.de>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	Tony Huang <tonyhuang.sunplus@gmail.com>,
	Li-hao Kuo <lhjeff911@gmail.com>,
	Maxime Ripard <mripard@kernel.org>,
	Adrian Hunter <adrian.hunter@intel.com>,
	Masahiro Yamada <yamada.masahiro@socionext.com>,
	Markus Pargmann <mpa@pengutronix.de>,
	Jaehoon Chung <jh80.chung@samsung.com>, linux-mmc@vger.kernel.org,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-sunxi@lists.linux.dev, linux-kernel@vger.kernel.org,
	linux-amlogic@lists.infradead.org, linux-tegra@vger.kernel.org,
	linux-actions@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org
References: <20230120085722.171965-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
In-Reply-To: <20230120085722.171965-1-krzysztof.kozlowski@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230120_011226_119847_17E740BC 
X-CRM114-Status: UNSURE (   9.13  )
X-CRM114-Notice: Please train this message.
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
Content-Type: multipart/mixed; boundary="===============4100652728111173554=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============4100652728111173554==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="qvSHo0b6uvEVzdui"
Content-Disposition: inline


--qvSHo0b6uvEVzdui
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Jan 20, 2023 at 09:57:21AM +0100, Krzysztof Kozlowski wrote:
> Cleanup by removing unneeded quotes from refs and redundant blank lines.
> No functional impact except adjusting to preferred coding style.
>=20
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Reviewed-by: Wolfram Sang <wsa+renesas@sang-engineering.com> # for Renesas =
controllers


--qvSHo0b6uvEVzdui
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAmPKWuIACgkQFA3kzBSg
KbZkcQ//d697W358YnbGhCJsCu+rd5KEnM6iHwhXBsKsaOMZwbc9OZCyFYKBS3rJ
78xtgCEJJ7ANjsCC6FHtRxOAG6n3/naGatnu7JXl7DOpaqlCY8Y1SdQEpC9fIDtF
rAxaC5n5qbNQaTytFIEy62I206noNPGKEAtvuAttMzfNDnroSJqVQi3l9/H28IHh
DOArczkkV4yO60OkPhinb74UpiApObZbhFAhJtjLtf7nP7niOrcxobmIMzjS85pW
aSR+QMI5PIkRmRFOujgI2XYUxxXi79KcHt7I5s1h54i9M0dZwRm2uE1MV/v5mdei
Y79eewXgcxVpUinx/ONrMF+hl559gPxvVp3jPXE3YCBIjupHCtCJroKHOlNtlcWr
8xjbh+KsnIUy1mAka9p7e0MOy0nlbmrkOxUDF/Fwr1kDytbslHSoVSzv5FqgN8NA
m2ZIc2FFTDHg1rVrd5dzYDin0GdQQdb5tmi0+iTQI1ibSsB8cFhB2N8ngO+xiD/P
wDHRlRVspg8jL9+7Ok4k8TYePzPw/3SgUF/8+6PNqKbfP6v1VudpOLcQfCr1vbRg
tDN+Gc/A151PhjjnPQi3eF1qjZpSQcyjfAJM2iHpum8JbP5CVy3US1XCURZDidvh
22Q/tlENOOWfKJSKozUt2OwrjeEzcFiPNU7yH/KlBdDNrzr42uQ=
=ek26
-----END PGP SIGNATURE-----

--qvSHo0b6uvEVzdui--


--===============4100652728111173554==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============4100652728111173554==--

