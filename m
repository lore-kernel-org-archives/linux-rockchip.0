Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 740BAC4332F
	for <linux-rockchip@archiver.kernel.org>; Thu,  3 Nov 2022 14:45:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=i2I0tIu9LtUvXZ4awY+KZtAoILpTYWfhWOroamD6KKQ=; b=PCJEpldLee1ERY
	/FLog36OLAUdD3dRkAX1MaU6p6mqGLMzv+IFApDn3icTxYAjYXznePW3qppxFWS/SDOLRCTYZgTYq
	fE/0VI3EY3q1q98ZLSCLupwXSuZlDMyFXlG/meWEWv8jRL5ZXMiBmakJtqc+ZwPHdlP1Z6jSpjoH4
	n8afpObgZtZ4XLJk5WPa6PdxG6TJxy4xAbjNbXQTpXC5iWZKz2NeYERJ3FLWESvQI9NScl0LRfPnt
	MdNdfkaZ4IZIdiRjiH7CloEqBKqmF/CA7cMUkoQZa+y7EmA9HyXyZKYhZI4JoaQHw6+KYN+cwyK71
	X/m5wpTTtzuATqQWD0TQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oqbSX-0008Xw-RT; Thu, 03 Nov 2022 14:44:45 +0000
Received: from relay11.mail.gandi.net ([2001:4b98:dc4:8::231])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oqbSL-0008Ud-Tw; Thu, 03 Nov 2022 14:44:36 +0000
Received: (Authenticated sender: foss@0leil.net)
	by mail.gandi.net (Postfix) with ESMTPSA id D516B10000E;
	Thu,  3 Nov 2022 14:44:06 +0000 (UTC)
From: Quentin Schulz <foss+kernel@0leil.net>
To: hadess@hadess.net,
	hdegoede@redhat.com,
	dmitry.torokhov@gmail.com,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	shawnguo@kernel.org,
	s.hauer@pengutronix.de,
	kernel@pengutronix.de,
	festevam@gmail.com,
	linux-imx@nxp.com,
	wens@csie.org,
	jernej.skrabec@gmail.com,
	samuel@sholland.org,
	agross@kernel.org,
	andersson@kernel.org,
	konrad.dybcio@somainline.org,
	heiko@sntech.de
Cc: linux-input@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-sunxi@lists.linux.dev,
	linux-arm-msm@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	Quentin Schulz <quentin.schulz@theobroma-systems.com>
Subject: [RFC PATCH 0/7] fix reset line polarity for Goodix touchscreen controllers
Date: Thu,  3 Nov 2022 15:43:45 +0100
Message-Id: <20221103-upstream-goodix-reset-v1-0-87b49ae589f1@theobroma-systems.com>
X-Mailer: git-send-email 2.38.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221103_074434_312620_D614E116 
X-CRM114-Status: GOOD (  19.54  )
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

The Goodix touchscreen controller has a reset line active low. It happens to
also be used to configure its i2c address at runtime. If the reset line is
incorrectly asserted, the address will be wrongly configured. This cost me a few
hours yesterday, trying to figure out why the touchscreen wouldn't work.

The driver is "asserting" this reset GPIO by setting its output to 0, probably
to reflect the physical state of the line. However, this relies on the fact that
the Device Tree node setting the reset line polarity to active high, which is
incorrect since the reset is active low in hardware.

To fix this inconsistency, the polarity is inverted to not confuse the user
about the reset line polarity.

This is marked as RFC because it breaks DT compatibility and also the Google
CoachZ device is the only one with an active low polarity for the reset GPIO
in DT, so not sure if it is a typo or its state is actually inverted (so GPIO
active high to drive the reset line low). Changing it anyways since the polarity
is changed in the driver so it needs to be changed in DT too.

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
Quentin Schulz (7):
      Input: goodix - fix reset polarity
      ARM: dts: imx: fix touchscreen reset GPIO polarity
      ARM: dts: sunxi: fix touchscreen reset GPIO polarity
      arm64: dts: allwinner: fix touchscreen reset GPIO polarity
      arm64: dts: imx: fix touchscreen reset GPIO polarity
      arm64: dts: qcom: fix touchscreen reset GPIO polarity
      arm64: dts: rockchip: fix touchscreen reset GPIO polarity

 arch/arm/boot/dts/imx6q-kp.dtsi                                  | 2 +-
 arch/arm/boot/dts/imx6ul-kontron-bl-43.dts                       | 2 +-
 arch/arm/boot/dts/sun7i-a20-wexler-tab7200.dts                   | 2 +-
 arch/arm64/boot/dts/allwinner/sun50i-a64-amarula-relic.dts       | 2 +-
 arch/arm64/boot/dts/allwinner/sun50i-a64-oceanic-5205-5inmfd.dts | 2 +-
 arch/arm64/boot/dts/allwinner/sun50i-a64-pinephone.dtsi          | 2 +-
 arch/arm64/boot/dts/allwinner/sun50i-a64-pinetab.dts             | 2 +-
 arch/arm64/boot/dts/freescale/imx8mm-prt8mm.dts                  | 2 +-
 arch/arm64/boot/dts/freescale/imx8mq-librem5-devkit.dts          | 2 +-
 arch/arm64/boot/dts/qcom/msm8998-fxtec-pro1.dts                  | 2 +-
 arch/arm64/boot/dts/qcom/sc7180-trogdor-coachz.dtsi              | 2 +-
 arch/arm64/boot/dts/qcom/sc7180-trogdor-homestar.dtsi            | 2 +-
 arch/arm64/boot/dts/qcom/sc7180-trogdor-mrbland.dtsi             | 2 +-
 arch/arm64/boot/dts/rockchip/px30-evb.dts                        | 2 +-
 arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi               | 2 +-
 arch/arm64/boot/dts/rockchip/rk3568-evb1-v10.dts                 | 2 +-
 drivers/input/touchscreen/goodix.c                               | 4 ++--
 17 files changed, 18 insertions(+), 18 deletions(-)
---
base-commit: 8e5423e991e8cd0988d0c4a3f4ac4ca1af7d148a
change-id: 20221103-upstream-goodix-reset-aa1c65994f57

Best regards,
-- 
Quentin Schulz <quentin.schulz@theobroma-systems.com>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
