Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 34122C4332F
	for <linux-rockchip@archiver.kernel.org>; Mon, 21 Nov 2022 17:31:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DlskG2ZOSUdVzhbqjoHV4p3jQ+aq4OTGWMmvffNajpE=; b=1sihJV3NZ9jPYa
	yi+QUPp+6q/guATmdvMLsiEos/t8H+4u2Bskr91HOS6c8EWpDZk7JXT0HolbKdhNAd0YZMEivRwoE
	xifxLXXdohtxRYR3GzBZKZv4RIR9K1wpJTaVKhf1C4Ndn4wRga7CxunKE/gwP39dh8PvIcSHG9grN
	T9rvEjCGG451lIgw9M3R9uoa6K2hppbtuNJnlzJscRegI3XblYeBFRgIXwT3qA8LSGBXoGkszJpiW
	3bcr8q96u/42Nvm+2iN5wfW/Ybxh1tNFDe8LZWxDfT+P7N5MnLoyqQDwOOGz4pVewcbp3BzO/xy8z
	ygtkhgUD+FU1I7CYFfrw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oxAdi-00GKV0-Np; Mon, 21 Nov 2022 17:31:26 +0000
Received: from relay3-d.mail.gandi.net ([217.70.183.195])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oxARA-00GEd9-1U; Mon, 21 Nov 2022 17:18:29 +0000
Received: (Authenticated sender: foss@0leil.net)
	by mail.gandi.net (Postfix) with ESMTPSA id ECFB16000B;
	Mon, 21 Nov 2022 17:18:20 +0000 (UTC)
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
Subject: [PATCH RFC v2 7/7] arm64: dts: rockchip: fix touchscreen reset GPIO polarity
Date: Mon, 21 Nov 2022 18:17:24 +0100
Message-Id: <20221103-upstream-goodix-reset-v2-7-2c38fb03a300@theobroma-systems.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20221103-upstream-goodix-reset-v2-0-2c38fb03a300@theobroma-systems.com>
References: <20221103-upstream-goodix-reset-v2-0-2c38fb03a300@theobroma-systems.com>
MIME-Version: 1.0
X-Mailer: b4 0.10.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221121_091828_280480_3D7F2A0B 
X-CRM114-Status: GOOD (  11.05  )
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
 arch/arm64/boot/dts/rockchip/px30-evb.dts          | 2 +-
 arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi | 2 +-
 arch/arm64/boot/dts/rockchip/rk3568-evb1-v10.dts   | 2 +-
 3 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/px30-evb.dts b/arch/arm64/boot/dts/rockchip/px30-evb.dts
index 07008d84434c1..7ecd38566e7e4 100644
--- a/arch/arm64/boot/dts/rockchip/px30-evb.dts
+++ b/arch/arm64/boot/dts/rockchip/px30-evb.dts
@@ -420,7 +420,7 @@ touchscreen@14 {
 		interrupt-parent = <&gpio0>;
 		interrupts = <RK_PA5 IRQ_TYPE_LEVEL_LOW>;
 		irq-gpios = <&gpio0 RK_PA5 GPIO_ACTIVE_LOW>;
-		reset-gpios = <&gpio0 RK_PB4 GPIO_ACTIVE_HIGH>;
+		reset-gpios = <&gpio0 RK_PB4 GPIO_ACTIVE_LOW>;
 		VDDIO-supply = <&vcc3v3_lcd>;
 	};
 
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi
index 78157521e9449..e63491fb443be 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi
@@ -588,7 +588,7 @@ touch: touchscreen@5d {
 		AVDD28-supply = <&vcc3v0_touch>;
 		VDDIO-supply = <&vcc3v0_touch>;
 		irq-gpios = <&gpio4 RK_PD5 GPIO_ACTIVE_HIGH>;
-		reset-gpios = <&gpio4 RK_PD6 GPIO_ACTIVE_HIGH>;
+		reset-gpios = <&gpio4 RK_PD6 GPIO_ACTIVE_LOW>;
 		status = "disabled";
 	};
 };
diff --git a/arch/arm64/boot/dts/rockchip/rk3568-evb1-v10.dts b/arch/arm64/boot/dts/rockchip/rk3568-evb1-v10.dts
index 674792567fa6e..234531aaa430a 100644
--- a/arch/arm64/boot/dts/rockchip/rk3568-evb1-v10.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3568-evb1-v10.dts
@@ -495,7 +495,7 @@ touchscreen0: goodix@14 {
 		irq-gpios = <&gpio0 RK_PB5 GPIO_ACTIVE_HIGH>;
 		pinctrl-names = "default";
 		pinctrl-0 = <&touch_int &touch_rst>;
-		reset-gpios = <&gpio0 RK_PB6 GPIO_ACTIVE_HIGH>;
+		reset-gpios = <&gpio0 RK_PB6 GPIO_ACTIVE_LOW>;
 		VDDIO-supply = <&vcc3v3_lcd0_n>;
 	};
 };

-- 
b4 0.10.1

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
