Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B855FC4708D
	for <linux-rockchip@archiver.kernel.org>; Mon,  5 Dec 2022 13:43:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=k8RTM/zDlWCV0YWD5VweC7JhI2ZdqoVIPFRhkBFGlOc=; b=akpRV/6irUfXov
	lOZVy2b7Ev8F2lLfYwEV1/2FlLm+6AOU0xAt42K8+mcC7N3D/Oh68CSijLehHsZj76wwkYoyR6P9t
	amsH99u5w1ZV/oXsRMW1q4U4LDrQWcsXlhmJqPEHTgniZtH/BRAlUpFstesTASR4/sDnBU1s9VXqA
	pApRS6D7LZhsIDuRGuUVRkOtUJ+lri9F4SHz8MsWgPO9GcdAHk0CTCmvDu0ii6Qsx+eClxLSAF39w
	QyCJUEy4TEqWWcEoNRscBy9DUrydozKQxyCZPG3RIL8rqHwzmSXZWA5eAE2xBTRjPZx0D1WFZwV/u
	AIflLWeUI9wY61ng8Erg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p2Bke-003bKL-PE; Mon, 05 Dec 2022 13:43:20 +0000
Received: from relay9-d.mail.gandi.net ([2001:4b98:dc4:8::229])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p2Bjq-003aee-Pi; Mon, 05 Dec 2022 13:42:32 +0000
Received: (Authenticated sender: foss@0leil.net)
	by mail.gandi.net (Postfix) with ESMTPSA id B22AFFF815;
	Mon,  5 Dec 2022 13:42:07 +0000 (UTC)
From: Quentin Schulz <foss+kernel@0leil.net>
To: Samuel Holland <samuel@sholland.org>,
	Bastien Nocera <hadess@hadess.net>,
	=?UTF-8?q?Guido=20G=C3=BCnther?= <agx@sigxcpu.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Angus Ainslie <angus@akkea.ca>,
	Ondrej Jirman <megous@megous.com>,
	Icenowy Zheng <icenowy@aosc.io>,
	Andy Gross <agross@kernel.org>,
	Aleksei Mamlin <mamlinav@gmail.com>,
	Fabio Estevam <festevam@gmail.com>,
	David Jander <david@protonic.nl>,
	Frieder Schrempf <frieder.schrempf@kontron.de>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Peter Geis <pgwipeout@gmail.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Shawn Guo <shawnguo@kernel.org>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Lukasz Majewski <lukma@denx.de>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@somainline.org>,
	Chen-Yu Tsai <wens@csie.org>,
	Michael Riesch <michael.riesch@wolfvision.net>,
	Rob Herring <robh+dt@kernel.org>,
	NXP Linux Team <linux-imx@nxp.com>,
	Dmitry Torokhov <dmitry.torokhov@gmail.com>,
	Hans de Goede <hdegoede@redhat.com>,
	Jagan Teki <jagan@amarulasolutions.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Quentin Schulz <quentin.schulz@theobroma-systems.com>,
	linux-input@vger.kernel.org,
	linux-arm-msm@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-sunxi@lists.linux.dev,
	devicetree@vger.kernel.org,
	linux-rockchip@lists.infradead.org
Subject: [PATCH v3 6/9] arm64: dts: allwinner: fix touchscreen reset GPIO polarity
Date: Mon,  5 Dec 2022 14:40:35 +0100
Message-Id: <20221103-upstream-goodix-reset-v3-6-0975809eb183@theobroma-systems.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20221103-upstream-goodix-reset-v3-0-0975809eb183@theobroma-systems.com>
References: <20221103-upstream-goodix-reset-v3-0-0975809eb183@theobroma-systems.com>
MIME-Version: 1.0
X-Mailer: b4 0.10.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221205_054231_178631_143D09FC 
X-CRM114-Status: GOOD (  11.01  )
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

The reset line is active low for the Goodix touchscreen controller so
let's fix the polarity in the Device Tree node.

Signed-off-by: Quentin Schulz <quentin.schulz@theobroma-systems.com>
---
 arch/arm64/boot/dts/allwinner/sun50i-a64-amarula-relic.dts       | 2 +-
 arch/arm64/boot/dts/allwinner/sun50i-a64-oceanic-5205-5inmfd.dts | 2 +-
 arch/arm64/boot/dts/allwinner/sun50i-a64-pinephone.dtsi          | 2 +-
 arch/arm64/boot/dts/allwinner/sun50i-a64-pinetab.dts             | 2 +-
 4 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a64-amarula-relic.dts b/arch/arm64/boot/dts/allwinner/sun50i-a64-amarula-relic.dts
index 8233582f62881..5fd581037d987 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-a64-amarula-relic.dts
+++ b/arch/arm64/boot/dts/allwinner/sun50i-a64-amarula-relic.dts
@@ -122,7 +122,7 @@ touchscreen@5d {
 		interrupt-parent = <&pio>;
 		interrupts = <7 4 IRQ_TYPE_EDGE_FALLING>;
 		irq-gpios = <&pio 7 4 GPIO_ACTIVE_HIGH>;	/* CTP-INT: PH4 */
-		reset-gpios = <&pio 7 8 GPIO_ACTIVE_HIGH>;	/* CTP-RST: PH8 */
+		reset-gpios = <&pio 7 8 GPIO_ACTIVE_LOW>;	/* CTP-RST: PH8 */
 		touchscreen-inverted-x;
 		touchscreen-inverted-y;
 	};
diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a64-oceanic-5205-5inmfd.dts b/arch/arm64/boot/dts/allwinner/sun50i-a64-oceanic-5205-5inmfd.dts
index 577f9e1d08a14..990f042f5a5b1 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-a64-oceanic-5205-5inmfd.dts
+++ b/arch/arm64/boot/dts/allwinner/sun50i-a64-oceanic-5205-5inmfd.dts
@@ -45,7 +45,7 @@ touchscreen@5d {
 		interrupt-parent = <&pio>;
 		interrupts = <7 4 IRQ_TYPE_EDGE_FALLING>;
 		irq-gpios = <&pio 7 4 GPIO_ACTIVE_HIGH>;	/* CTP-INT: PH4 */
-		reset-gpios = <&pio 7 11 GPIO_ACTIVE_HIGH>;	/* CTP-RST: PH11 */
+		reset-gpios = <&pio 7 11 GPIO_ACTIVE_LOW>;	/* CTP-RST: PH11 */
 		touchscreen-inverted-x;
 		touchscreen-inverted-y;
 	};
diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a64-pinephone.dtsi b/arch/arm64/boot/dts/allwinner/sun50i-a64-pinephone.dtsi
index 87847116ab6d9..97359cc7f13e2 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-a64-pinephone.dtsi
+++ b/arch/arm64/boot/dts/allwinner/sun50i-a64-pinephone.dtsi
@@ -167,7 +167,7 @@ touchscreen@5d {
 		interrupt-parent = <&pio>;
 		interrupts = <7 4 IRQ_TYPE_LEVEL_HIGH>; /* PH4 */
 		irq-gpios = <&pio 7 4 GPIO_ACTIVE_HIGH>; /* PH4 */
-		reset-gpios = <&pio 7 11 GPIO_ACTIVE_HIGH>; /* PH11 */
+		reset-gpios = <&pio 7 11 GPIO_ACTIVE_LOW>; /* PH11 */
 		AVDD28-supply = <&reg_ldo_io0>;
 		VDDIO-supply = <&reg_ldo_io0>;
 		touchscreen-size-x = <720>;
diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a64-pinetab.dts b/arch/arm64/boot/dts/allwinner/sun50i-a64-pinetab.dts
index 0a5607f73049e..c0eccc753e3f5 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-a64-pinetab.dts
+++ b/arch/arm64/boot/dts/allwinner/sun50i-a64-pinetab.dts
@@ -189,7 +189,7 @@ touchscreen@5d {
 		interrupt-parent = <&pio>;
 		interrupts = <7 4 IRQ_TYPE_LEVEL_HIGH>; /* PH4 */
 		irq-gpios = <&pio 7 4 GPIO_ACTIVE_HIGH>; /* PH4 */
-		reset-gpios = <&pio 7 8 GPIO_ACTIVE_HIGH>; /* PH8 */
+		reset-gpios = <&pio 7 8 GPIO_ACTIVE_LOW>; /* PH8 */
 		AVDD28-supply = <&reg_ldo_io1>;
 	};
 };

-- 
b4 0.10.1

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
