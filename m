Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C47E2C4345F
	for <linux-rockchip@archiver.kernel.org>; Thu,  2 May 2024 15:24:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=idWKgzVk5hkzIjLkhaIpv2nplJ/MmiWIzf99SGVVJ+s=; b=KpjRkqLt6eYLq1
	xbktggse9qkF45N59OTy3gqvbqPeyQkTT7VPI9j4m95BfF9/MNbpRWo5P55V+TziJRuqjQZK9vb1G
	HAwdftKD+2Qbj5b5xzvJM4u2yYBrJdYyv6s6H3haHXhqOQb04OU+5/omHgMClWFW3+W+parWLDoVi
	D9AjBHU36DJq9Iz3BxNpIVl6HKcSGD6lZqjwJ2mUoSBcUThVE5HobzdH0RnrrJXDqJxpRNiQab+9j
	zEZHgdmCos9jtZdHVI2LoEKpXZROsDqGrl5MEBVxvNf9w7z4mWkIdCDNBnA05JVH35rAkTbIKwIuI
	zOcCegNuHuR1QuD19rZA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s2YID-0000000D6tO-1EJq;
	Thu, 02 May 2024 15:24:17 +0000
Received: from madrid.collaboradmins.com ([46.235.227.194])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s2YI5-0000000D6no-0eEA;
	Thu, 02 May 2024 15:24:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1714663441;
	bh=FMM3UnDTD2ByyP54LzZrE/Xw0svJa2P8ocjjbGkC5tQ=;
	h=From:Subject:Date:To:Cc:From;
	b=1F3t/KtgV/3O9jHY4rDBPoqhFXyGhrx/P+SuFnKtrChJD4vL3dDMJuR9lGl3WDNZ+
	 3EMc1sBEJhIkXVe0NDhNOYtShppc+aC2Lnv2fg/bDa5nJL8KVwMIud9UsFfT3/G9tA
	 rmzgWBRetUvyukCLhc4fk1SWdRhHGyFAqjnrlygrrJucGimBH/dPh8O3rSWIRDicGS
	 ndFwKOAjAAAF0SMjaI8n1d/p28PnRRiDrUneRZA/T9MFeunvmh5PYJQbNLA2CKnHht
	 sstAzJ1ImRhhWHbHHkBYNTDGVtf8SCs61U6zgASibtszi697ta4syUIwqniy/LC/Ph
	 O3CNWTGM3qOdQ==
Received: from apertis.home (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: jmassot)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id DA9A4378148F;
	Thu,  2 May 2024 15:23:57 +0000 (UTC)
From: Julien Massot <julien.massot@collabora.com>
Subject: [PATCH 0/2] Introduce v4l2_async_nf_unregister_cleanup
Date: Thu, 02 May 2024 17:22:20 +0200
Message-Id: <20240502-master-v1-0-8bd109c6a3ba@collabora.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAKyvM2YC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDIxMDUwMj3dzE4pLUIl3TlNTUVENj4ySTNFMloOKCotS0zAqwQdGxtbUARbQ
 EZVgAAAA=
To: Sakari Ailus <sakari.ailus@linux.intel.com>, 
 Mauro Carvalho Chehab <mchehab@kernel.org>, 
 Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>, 
 Jacopo Mondi <jacopo+renesas@jmondi.org>, 
 Kieran Bingham <kieran.bingham+renesas@ideasonboard.com>, 
 Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>, 
 =?utf-8?q?Niklas_S=C3=B6derlund?= <niklas.soderlund+renesas@ragnatech.se>, 
 Benjamin Mugnier <benjamin.mugnier@foss.st.com>, 
 Sylvain Petinot <sylvain.petinot@foss.st.com>, 
 Yong Zhi <yong.zhi@intel.com>, Bingbu Cao <bingbu.cao@intel.com>, 
 Dan Scally <djrscally@gmail.com>, Tianshu Qiu <tian.shu.qiu@intel.com>, 
 Eugen Hristev <eugen.hristev@collabora.com>, 
 Nicolas Ferre <nicolas.ferre@microchip.com>, 
 Alexandre Belloni <alexandre.belloni@bootlin.com>, 
 Claudiu Beznea <claudiu.beznea@tuxon.dev>, 
 Maxime Ripard <mripard@kernel.org>, Rui Miguel Silva <rmfrfs@gmail.com>, 
 Martin Kepplinger <martink@posteo.de>, Purism Kernel Team <kernel@puri.sm>, 
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>, 
 Pengutronix Kernel Team <kernel@pengutronix.de>, 
 Fabio Estevam <festevam@gmail.com>, Robert Foss <rfoss@kernel.org>, 
 Todor Tomov <todor.too@gmail.com>, 
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>, 
 Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, 
 Fabrizio Castro <fabrizio.castro.jz@renesas.com>, 
 Dafna Hirschfeld <dafna@fastmail.com>, Heiko Stuebner <heiko@sntech.de>, 
 Sylwester Nawrocki <s.nawrocki@samsung.com>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
 Alim Akhtar <alim.akhtar@samsung.com>, 
 Hugues Fruchet <hugues.fruchet@foss.st.com>, 
 Alain Volmat <alain.volmat@foss.st.com>, 
 Maxime Coquelin <mcoquelin.stm32@gmail.com>, 
 Alexandre Torgue <alexandre.torgue@foss.st.com>, 
 Chen-Yu Tsai <wens@csie.org>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
 Samuel Holland <samuel@sholland.org>, Yong Deng <yong.deng@magewell.com>, 
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>, 
 Benoit Parrot <bparrot@ti.com>, Jai Luthra <j-luthra@ti.com>, 
 Philipp Zabel <p.zabel@pengutronix.de>, Michal Simek <michal.simek@amd.com>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Thierry Reding <thierry.reding@gmail.com>, 
 Jonathan Hunter <jonathanh@nvidia.com>, 
 Sowjanya Komatineni <skomatineni@nvidia.com>, 
 Luca Ceresoli <luca.ceresoli@bootlin.com>
Cc: linux-media@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, imx@lists.linux.dev, 
 linux-arm-msm@vger.kernel.org, linux-renesas-soc@vger.kernel.org, 
 linux-rockchip@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
 linux-stm32@st-md-mailman.stormreply.com, linux-sunxi@lists.linux.dev, 
 linux-staging@lists.linux.dev, linux-tegra@vger.kernel.org, 
 Julien Massot <julien.massot@collabora.com>, 
 Sakari Ailus <sakari.ailus@linux.intel.com>
X-Mailer: b4 0.13.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240502_082409_331553_B340D0DF 
X-CRM114-Status: UNSURE (   8.15  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Many drivers has
  v4l2_async_nf_unregister(&notifier);
  v4l2_async_nf_cleanup(&notifier);

Introduce a helper function to call both functions in one line.

---
Julien Massot (2):
      media: v4l: async: Add v4l2_async_nf_unregister_cleanup
      media: convert all drivers to use v4l2_async_nf_unregister_cleanup

 drivers/media/i2c/ds90ub913.c                           | 10 ++--------
 drivers/media/i2c/ds90ub953.c                           | 10 ++--------
 drivers/media/i2c/ds90ub960.c                           | 10 ++--------
 drivers/media/i2c/max9286.c                             |  3 +--
 drivers/media/i2c/st-mipid02.c                          |  6 ++----
 drivers/media/i2c/tc358746.c                            |  3 +--
 drivers/media/pci/intel/ipu3/ipu3-cio2.c                |  6 ++----
 drivers/media/pci/intel/ipu6/ipu6-isys.c                |  8 +-------
 drivers/media/pci/intel/ivsc/mei_csi.c                  |  6 ++----
 drivers/media/platform/atmel/atmel-isi.c                |  3 +--
 drivers/media/platform/cadence/cdns-csi2rx.c            |  6 ++----
 drivers/media/platform/intel/pxa_camera.c               |  3 +--
 drivers/media/platform/marvell/mcam-core.c              |  6 ++----
 drivers/media/platform/microchip/microchip-csi2dc.c     |  3 +--
 drivers/media/platform/microchip/microchip-isc-base.c   |  6 ++----
 drivers/media/platform/nxp/imx-mipi-csis.c              |  6 ++----
 drivers/media/platform/nxp/imx7-media-csi.c             |  3 +--
 drivers/media/platform/nxp/imx8-isi/imx8-isi-core.c     |  3 +--
 drivers/media/platform/nxp/imx8mq-mipi-csi2.c           |  6 ++----
 drivers/media/platform/qcom/camss/camss.c               |  3 +--
 drivers/media/platform/renesas/rcar-csi2.c              |  6 ++----
 drivers/media/platform/renesas/rcar-isp.c               |  6 ++----
 drivers/media/platform/renesas/rcar-vin/rcar-core.c     |  9 +++------
 drivers/media/platform/renesas/rcar_drif.c              |  3 +--
 drivers/media/platform/renesas/renesas-ceu.c            |  4 +---
 drivers/media/platform/renesas/rzg2l-cru/rzg2l-core.c   |  3 +--
 drivers/media/platform/renesas/rzg2l-cru/rzg2l-csi2.c   |  6 ++----
 drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c     |  3 +--
 drivers/media/platform/samsung/exynos4-is/media-dev.c   |  3 +--
 drivers/media/platform/st/stm32/stm32-dcmi.c            |  3 +--
 .../media/platform/st/stm32/stm32-dcmipp/dcmipp-core.c  |  3 +--
 drivers/media/platform/sunxi/sun4i-csi/sun4i_csi.c      |  3 +--
 .../media/platform/sunxi/sun6i-csi/sun6i_csi_bridge.c   |  3 +--
 .../platform/sunxi/sun6i-mipi-csi2/sun6i_mipi_csi2.c    |  3 +--
 .../sunxi/sun8i-a83t-mipi-csi2/sun8i_a83t_mipi_csi2.c   |  3 +--
 drivers/media/platform/ti/am437x/am437x-vpfe.c          |  3 +--
 drivers/media/platform/ti/cal/cal.c                     |  8 +-------
 drivers/media/platform/ti/davinci/vpif_capture.c        |  3 +--
 drivers/media/platform/ti/j721e-csi2rx/j721e-csi2rx.c   | 10 ++--------
 drivers/media/platform/ti/omap3isp/isp.c                |  3 +--
 drivers/media/platform/video-mux.c                      |  3 +--
 drivers/media/platform/xilinx/xilinx-vipp.c             |  3 +--
 drivers/staging/media/deprecated/atmel/atmel-isc-base.c |  6 ++----
 drivers/staging/media/sunxi/sun6i-isp/sun6i_isp_proc.c  |  3 +--
 drivers/staging/media/tegra-video/vi.c                  |  3 +--
 include/media/v4l2-async.h                              | 17 +++++++++++++++++
 46 files changed, 80 insertions(+), 153 deletions(-)
---
base-commit: 843a9f4a7a85988f2f3af98adf21797c2fd05ab1
change-id: 20240502-master-5deee133b4f5

Best regards,
-- 
Julien Massot <julien.massot@collabora.com>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
