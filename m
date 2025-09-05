Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8EE39CA1010
	for <linux-rockchip@archiver.kernel.org>; Fri,  5 Sep 2025 14:36:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=KVkkVXgP9q2mWX4ljT3LhzpXlQeP2SKm8R5QujngMJE=; b=NdjNoTq95cNECU4HhoqtVOxWPR
	tO3Le5kMZobkLcDGBpOP9Zr5FnJVDiJ1qgpfjYphFFzZRIMwQiV9BCWqc5oaJFJqjGSJVK10u88LJ
	BQvB9SzahCPiRe9J/hdz++RSvWs/9Z2KV1PkShTRyEQzwMR1Bqfv3HQcjFnBxQNvg+DLmOrAZpOql
	KCvnuw5sgwmScfEVS6G8aUqiaSnjUj/Ps9YK+ISg4U+Hza6lK8avjaor1vkdgNPwmoUnwKtd1K86l
	3cjuzmwYaUzY3crxW1EVCPtIEg7CH1wz3pOcinM31F816DqCIrjo7yNFTVZyF+VJBKReM0wnPt7+6
	fYXtdLjA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uuXYX-00000002OcS-22cZ;
	Fri, 05 Sep 2025 14:36:49 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uuTts-0000000183y-3yXo;
	Fri, 05 Sep 2025 10:42:38 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id BC3D940C45;
	Fri,  5 Sep 2025 10:42:35 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 98C01C4CEF1;
	Fri,  5 Sep 2025 10:42:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757068955;
	bh=+I+6Ob8PFYzlZ0UQk3wSgdfHmrOiugnSzIZKb8fhQEk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=FJb78JN9Aubn7l+hWFWK2KhL4xncFQiznSU1O+VqVeYoJWONHp4RcAOCsvHduuTfN
	 +nudQ518QxKtrWwCOfBIzTxEEJAGpU/jUCrDlsuwWXRXBBl2j3vBt1Ltw4szB1n87y
	 h7x6GKYVobYJ3QTWpsrKBMfGZ15EnA7yYfTpXWUhfEXV1WWfuuJ0vS7hs6fM/OGabb
	 EOWmFuoLcS3oeA8aB09KPBnxvbJrH5hUgrl3aMa2r81N5UzhAZ8Ke81VM3YcHVbnvU
	 RJi3JEAJOsT+TM9h+WPDYgQX6anuQ91U155dHwC08dgE3WTQvlLfDX33vEVEuA2/m4
	 2N9AdUNBEKQBA==
Date: Fri, 5 Sep 2025 11:42:15 +0100
From: Mark Brown <broonie@kernel.org>
To: Xichao Zhao <zhao.xichao@vivo.com>
Cc: Jean Delvare <jdelvare@suse.com>, Guenter Roeck <linux@roeck-us.net>,
	Jonathan Cameron <jic23@kernel.org>,
	David Lechner <dlechner@baylibre.com>,
	Nuno =?iso-8859-1?Q?S=E1?= <nuno.sa@analog.com>,
	Andy Shevchenko <andy@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Samuel Holland <samuel@sholland.org>,
	Liam Girdwood <lgirdwood@gmail.com>,
	"Rafael J. Wysocki" <rafael@kernel.org>,
	Daniel Lezcano <daniel.lezcano@linaro.org>,
	Zhang Rui <rui.zhang@intel.com>, Lukasz Luba <lukasz.luba@arm.com>,
	Guillaume La Roque <glaroque@baylibre.com>,
	Miquel Raynal <miquel.raynal@bootlin.com>,
	Florian Fainelli <florian.fainelli@broadcom.com>,
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>,
	Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>,
	Markus Mayer <mmayer@broadcom.com>, Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	zhanghongchen <zhanghongchen@loongson.cn>,
	Yinbo Zhu <zhuyinbo@loongson.cn>, Amit Kucheria <amitk@kernel.org>,
	Thara Gopinath <thara.gopinath@gmail.com>,
	Niklas =?iso-8859-1?Q?S=F6derlund?= <niklas.soderlund@ragnatech.se>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Bartlomiej Zolnierkiewicz <bzolnier@gmail.com>,
	Krzysztof Kozlowski <krzk@kernel.org>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	Orson Zhai <orsonzhai@gmail.com>,
	Baolin Wang <baolin.wang@linux.alibaba.com>,
	Chunyan Zhang <zhang.lyra@gmail.com>,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Thierry Reding <thierry.reding@gmail.com>,
	Jonathan Hunter <jonathanh@nvidia.com>,
	Talel Shenhar <talel@amazon.com>,
	Eduardo Valentin <edubezval@gmail.com>, Keerthy <j-keerthy@ti.com>,
	Kunihiko Hayashi <hayashi.kunihiko@socionext.com>,
	Masami Hiramatsu <mhiramat@kernel.org>,
	"open list:HARDWARE MONITORING" <linux-hwmon@vger.kernel.org>,
	open list <linux-kernel@vger.kernel.org>,
	"open list:IIO SUBSYSTEM AND DRIVERS" <linux-iio@vger.kernel.org>,
	"moderated list:ARM/Allwinner sunXi SoC support" <linux-arm-kernel@lists.infradead.org>,
	"open list:ARM/Allwinner sunXi SoC support" <linux-sunxi@lists.linux.dev>,
	"open list:THERMAL" <linux-pm@vger.kernel.org>,
	"open list:THERMAL DRIVER FOR AMLOGIC SOCS" <linux-amlogic@lists.infradead.org>,
	"moderated list:BROADCOM BCM2711/BCM2835 ARM ARCHITECTURE" <linux-rpi-kernel@lists.infradead.org>,
	"open list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE" <imx@lists.linux.dev>,
	"open list:QUALCOMM TSENS THERMAL DRIVER" <linux-arm-msm@vger.kernel.org>,
	"open list:RENESAS R-CAR THERMAL DRIVERS" <linux-renesas-soc@vger.kernel.org>,
	"open list:ARM/Rockchip SoC support" <linux-rockchip@lists.infradead.org>,
	"open list:SAMSUNG THERMAL DRIVER" <linux-samsung-soc@vger.kernel.org>,
	"moderated list:ARM/STM32 ARCHITECTURE" <linux-stm32@st-md-mailman.stormreply.com>,
	"open list:TEGRA ARCHITECTURE SUPPORT" <linux-tegra@vger.kernel.org>,
	"open list:TI BANDGAP AND THERMAL DRIVER" <linux-omap@vger.kernel.org>
Subject: Re: [PATCH 04/12] regulator: max8973: Remove redundant error log
 prints
Message-ID: <2f060139-7446-4cb1-910d-791918b28f51@sirena.org.uk>
References: <20250905072423.368123-1-zhao.xichao@vivo.com>
 <20250905072423.368123-5-zhao.xichao@vivo.com>
MIME-Version: 1.0
In-Reply-To: <20250905072423.368123-5-zhao.xichao@vivo.com>
X-Cookie: He who laughs, lasts.
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250905_034237_025246_AC868AC3 
X-CRM114-Status: GOOD (  10.53  )
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
Content-Type: multipart/mixed; boundary="===============1463557790168354782=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============1463557790168354782==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="hSBr52yOin/qCY9V"
Content-Disposition: inline


--hSBr52yOin/qCY9V
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, Sep 05, 2025 at 03:23:56PM +0800, Xichao Zhao wrote:
> devm_thermal_of_zone_register() prints error log messages when
> it fails, so there is no need to print error log messages again.

Acked-by: Mark Brown <broonie@kernel.org>

--hSBr52yOin/qCY9V
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmi6vocACgkQJNaLcl1U
h9A9Ggf8DfcaSZB9QDgKG3CTzMYN6dA03Qdzw6VmLM9o81xSSlRvqsWSYEm0G86q
z/jyW0esF1zaS9pQ+ni9mgIUQQvCBr6/d1pY2UJpJd3z1xw2eJUWIgNHIfLsaKDk
ZIixofNJ8unn3ayIaYKW6fWIhZcoMRY+yXMtvdtUD2vxzMFOerQ1dFKakBEsu9Nj
JTQTup0slsEXR1tzi/4HBQfftUi+24MUDaRkOnfPfOn1D5gmUaZ6c07B1fGp9dmM
5c73MTNcN3xonK265AHjzWrgi4sJoXEeqfN7SmvHqspnq6df5zHeKUvFD9Jx+lEw
n/HlWMMkt3wAlpDVMMsmqqlWaSrGcA==
=sWAM
-----END PGP SIGNATURE-----

--hSBr52yOin/qCY9V--


--===============1463557790168354782==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============1463557790168354782==--

