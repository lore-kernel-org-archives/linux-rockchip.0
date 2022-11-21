Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1F5F4C4332F
	for <linux-rockchip@archiver.kernel.org>; Mon, 21 Nov 2022 17:30:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=k8RTM/zDlWCV0YWD5VweC7JhI2ZdqoVIPFRhkBFGlOc=; b=3apspz0pgs9M4i
	wV6GuWoJcrgCNnKrUmnTIR7nbb3Ddr43oE1LDQ974JvH5H9ia2F6SKoUMAOjOQZBxF6yz+EoBd0xf
	tSv0F6ZB4qOBj6lZKp3XpkmSDssJRWQx4jjTwj0KMU1p+ppY6tefUPnvjOZRtGha00OVG3u+V+kGb
	GNWuyD3FMMiyAoSt8QaNblbF6ph6Q6D2R+V+ILD7B+m9vdB/m925xxZOZv2v46R1Kjjp+u6n1Umb5
	o/Qfd9hUmTl6SsiOnWsYgjua4pxeBT/jzl9Hqon/HOcG58e+lLCawvFa2z3yPXwRHhs057O452xD8
	hgR0uq9l+oGntOOj6gwA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oxAcC-00GJhF-UM; Mon, 21 Nov 2022 17:29:52 +0000
Received: from relay3-d.mail.gandi.net ([2001:4b98:dc4:8::223])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oxAQs-00GETC-7E; Mon, 21 Nov 2022 17:18:15 +0000
Received: (Authenticated sender: foss@0leil.net)
	by mail.gandi.net (Postfix) with ESMTPSA id 849AF6000B;
	Mon, 21 Nov 2022 17:18:02 +0000 (UTC)
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
Subject: [PATCH RFC v2 4/7] arm64: dts: allwinner: fix touchscreen reset GPIO polarity
Date: Mon, 21 Nov 2022 18:17:21 +0100
Message-Id: <20221103-upstream-goodix-reset-v2-4-2c38fb03a300@theobroma-systems.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20221103-upstream-goodix-reset-v2-0-2c38fb03a300@theobroma-systems.com>
References: <20221103-upstream-goodix-reset-v2-0-2c38fb03a300@theobroma-systems.com>
MIME-Version: 1.0
X-Mailer: b4 0.10.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221121_091810_623253_63F59C42 
X-CRM114-Status: GOOD (  10.98  )
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
