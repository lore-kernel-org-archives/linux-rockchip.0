Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C76E8C4332F
	for <linux-rockchip@archiver.kernel.org>; Mon, 21 Nov 2022 17:29:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=winpkyMvhDKsPKHF2r8K6fTrtF0kFaTVfFar8mMQQ7g=; b=W1/rIOXJltUOmb
	A7DTZQAjKPEDNvkgk6/adKF2Nwfe3rJ5MrkKhLBfRt6dz2MPV3pdLoYD7aeyLGa/p2KcCmDJAwwpl
	ZXdoYNj4dc8Ud+rHVR953hSMf6WgeGlAWauMSEj61DQo35cx59DWsogrwPSsCpxMY0OuMgZTDy9so
	AZYkmQBCiCHHBGIHoFPV6sKcBtjGYs9vFbe8gv4Djorf76AWEk1GOIgSH6q9pPVNKpBENElu4DYCG
	Wx0u5ha2T9QrtNuqIcw8WTkh6S7QdvSi4PLmr1HyM3jmT3bUQIux8qFtqGk1XhIIKuT9KLjo5dXNN
	trFlVQRQHaPi8CMlhFXA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oxAbX-00GJLV-4y; Mon, 21 Nov 2022 17:29:11 +0000
Received: from relay3-d.mail.gandi.net ([217.70.183.195])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oxAQn-00GECh-JZ; Mon, 21 Nov 2022 17:18:12 +0000
Received: (Authenticated sender: foss@0leil.net)
	by mail.gandi.net (Postfix) with ESMTPSA id AE28E6000D;
	Mon, 21 Nov 2022 17:17:34 +0000 (UTC)
From: Quentin Schulz <foss+kernel@0leil.net>
To: Shawn Guo <shawnguo@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Samuel Holland <samuel@sholland.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Fabio Estevam <festevam@gmail.com>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Bastien Nocera <hadess@hadess.net>,
	Chen-Yu Tsai <wens@csie.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Hans de Goede <hdegoede@redhat.com>,
	Andy Gross <agross@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	NXP Linux Team <linux-imx@nxp.com>,
	Dmitry Torokhov <dmitry.torokhov@gmail.com>
Cc: Quentin Schulz <quentin.schulz@theobroma-systems.com>,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-msm@vger.kernel.org,
	linux-input@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-sunxi@lists.linux.dev,
	devicetree@vger.kernel.org
Subject: [PATCH RFC v2 0/7] fix reset line polarity for Goodix touchscreen controllers
Date: Mon, 21 Nov 2022 18:17:17 +0100
Message-Id: <20221103-upstream-goodix-reset-v2-0-2c38fb03a300@theobroma-systems.com>
X-Mailer: git-send-email 2.38.1
MIME-Version: 1.0
X-Mailer: b4 0.10.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221121_091805_976780_A10903B3 
X-CRM114-Status: GOOD (  18.99  )
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

From: Quentin Schulz <quentin.schulz@theobroma-systems.com>

The Goodix touchscreen controller has a reset line active low. It happens to
also be used to configure its i2c address at runtime. If the reset line is
incorrectly asserted, the address will be wrongly configured. This cost me a few
hours, trying to figure out why the touchscreen wouldn't work.

The driver is "asserting" this reset GPIO by setting its output to 0, probably
to reflect the physical state of the line. However, this relies on the fact that
the Device Tree node setting the reset line polarity to active high, which is
incorrect since the reset is active low in hardware.

To fix this inconsistency, the polarity is inverted to not confuse the user
about the reset line polarity.

This is marked as RFC because it breaks DT compatibility and I cannot test ACPI
support. Do we also make this patch series only one patchset since the DT
patches depend on the driver patch and vice-versa? In which tree would this go?

I'm all ears if there's a better way to handle this. We could document this in
the DT binding but this kinda breaks the promise we make that the DT is not
bound to the driver implementation.

Thanks,
Quentin

To: Bastien Nocera <hadess@hadess.net>
To: Hans de Goede <hdegoede@redhat.com>
To: Dmitry Torokhov <dmitry.torokhov@gmail.com>
To: Rob Herring <robh+dt@kernel.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
To: Shawn Guo <shawnguo@kernel.org>
To: Sascha Hauer <s.hauer@pengutronix.de>
To: Pengutronix Kernel Team <kernel@pengutronix.de>
To: Fabio Estevam <festevam@gmail.com>
To: NXP Linux Team <linux-imx@nxp.com>
To: Chen-Yu Tsai <wens@csie.org>
To: Jernej Skrabec <jernej.skrabec@gmail.com>
To: Samuel Holland <samuel@sholland.org>
To: Andy Gross <agross@kernel.org>
To: Bjorn Andersson <andersson@kernel.org>
To: Konrad Dybcio <konrad.dybcio@somainline.org>
To: Heiko Stuebner <heiko@sntech.de>
Cc: linux-input@vger.kernel.org
Cc: linux-kernel@vger.kernel.org
Cc: devicetree@vger.kernel.org
Cc: linux-arm-kernel@lists.infradead.org
Cc: linux-sunxi@lists.linux.dev
Cc: linux-arm-msm@vger.kernel.org
Cc: linux-rockchip@lists.infradead.org
Signed-off-by: Quentin Schulz <quentin.schulz@theobroma-systems.com>
---
Changes in v2:
- implemented ACPI support as suggested by Hans,
- removed Qcom SC7180 Trogdor-based devices changes as they are not using this Goodix driver,
- added comment on how to read gpiod_request_output and the GPIO DT polarity,
- Link to v1: https://lore.kernel.org/r/20221103-upstream-goodix-reset-v1-0-87b49ae589f1@theobroma-systems.com

---
Quentin Schulz (7):
      Input: goodix - fix reset polarity
      ARM: dts: imx: fix touchscreen reset GPIO polarity
      ARM: dts: sunxi: fix touchscreen reset GPIO polarity
      arm64: dts: allwinner: fix touchscreen reset GPIO polarity
      arm64: dts: imx: fix touchscreen reset GPIO polarity
      arm64: dts: qcom: fix touchscreen reset GPIO polarity
      arm64: dts: rockchip: fix touchscreen reset GPIO polarity

 arch/arm/boot/dts/imx6q-kp.dtsi                    |  2 +-
 arch/arm/boot/dts/imx6ul-kontron-bl-43.dts         |  2 +-
 arch/arm/boot/dts/sun7i-a20-wexler-tab7200.dts     |  2 +-
 .../dts/allwinner/sun50i-a64-amarula-relic.dts     |  2 +-
 .../allwinner/sun50i-a64-oceanic-5205-5inmfd.dts   |  2 +-
 .../boot/dts/allwinner/sun50i-a64-pinephone.dtsi   |  2 +-
 .../boot/dts/allwinner/sun50i-a64-pinetab.dts      |  2 +-
 arch/arm64/boot/dts/freescale/imx8mm-prt8mm.dts    |  2 +-
 .../boot/dts/freescale/imx8mq-librem5-devkit.dts   |  2 +-
 arch/arm64/boot/dts/qcom/msm8998-fxtec-pro1.dts    |  2 +-
 arch/arm64/boot/dts/rockchip/px30-evb.dts          |  2 +-
 arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi |  2 +-
 arch/arm64/boot/dts/rockchip/rk3568-evb1-v10.dts   |  2 +-
 drivers/input/touchscreen/goodix.c                 | 45 +++++++++++++++++-----
 14 files changed, 48 insertions(+), 23 deletions(-)
---
base-commit: 84368d882b9688bfac77ce48d33b1e20a4e4a787
change-id: 20221103-upstream-goodix-reset-aa1c65994f57

Best regards,
-- 
Quentin Schulz <quentin.schulz@theobroma-systems.com>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
