Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AD171FA3740
	for <linux-rockchip@archiver.kernel.org>; Mon, 24 Oct 2022 16:56:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YBUX7S78G9+rY/59vYMqXVs+PlTciL6qTaIaEChCveA=; b=fAeUjk8dItfyB1
	JHUHiyDvPlYOF32X/aTK0qGzonGXSAd/xYtdGxT12rH2wgIqtp3bEcTp5YIVzw9dD8KJY2k2WC3Oq
	6aUAwBZa8NNba5gojrE6bvfissUHqDXO4MT7AB4ikBl6rPQ+ZSTKj5UOF40kCG3R0QKGkuvTfaVtl
	sf4tOXkB2pglwfIL3o7xKgafAD0fylq7yf3uF8KWvv6Lpy9fW577DMmdyF49AEWihggRSX7rihAgI
	A9bKDek2yWAI45jvKhL/lbWoaFb7jOEPiBfCEG/kiIRR1NMZ+yvl6o/QrE45VzsnPVaMwbGDn9vhe
	wWqsBtGcxPHXqUnNTCwA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1on0kH-002OLN-Ti; Mon, 24 Oct 2022 16:56:13 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1on0k3-002NzD-AF; Mon, 24 Oct 2022 16:56:02 +0000
Received: from jupiter.universe (dyndsl-091-096-059-109.ewe-ip-backbone.de [91.96.59.109])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: sre)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 0A2696602835;
	Mon, 24 Oct 2022 17:55:56 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1666630556;
	bh=pmExmZ4tXPCYOPfg+XUTrNWwzm99oi9yIk9vszIGxCg=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=BI6hvnH5S/4WPhsdNb3KU1JA3S4Nz4MQQQfrfEElh3ARdhubA58l6s4oHh7NX+3O/
	 HtUQDYGuWUc5qmO2zboZYuzrhZFrPnKYAvY+w/daxSwbVaWfDk7ZX6MEqTVVOqup07
	 lTcrYyOvfl3VyPXWOkU1V3h2d+xoWYamtSCbJWy6zPcyt115H6K4hweBanllY5Hs/K
	 wtklC+lnjh2n9xV83hMAcgnCtrG9dmqkLDjHIkkZFxO1ZGiVZ7FDR0Kwjr+cjP/MK4
	 OKMi1EsmDjc1gho+Rv20+mzeKcDChgoQifmj7ppnYP0JaRFCXTaxaifYwYlhkLLQDE
	 Ze0c53kUcfTww==
Received: by jupiter.universe (Postfix, from userid 1000)
	id 0245E480AEF; Mon, 24 Oct 2022 18:55:54 +0200 (CEST)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Alexandre Belloni <alexandre.belloni@bootlin.com>,
	Alessandro Zummo <a.zummo@towertech.it>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
	Kevin Hilman <khilman@baylibre.com>,
	Jerome Brunet <jbrunet@baylibre.com>,
	Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
	Heiko Stuebner <heiko@sntech.de>,
	linux-rockchip@lists.infradead.org,
	linux-amlogic@lists.infradead.org,
	linux-rtc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	kernel@collabora.com
Subject: [PATCHv2 3/6] arm: dts: rockchip: fix node name for hym8563 rtc
Date: Mon, 24 Oct 2022 18:55:46 +0200
Message-Id: <20221024165549.74574-4-sebastian.reichel@collabora.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20221024165549.74574-1-sebastian.reichel@collabora.com>
References: <20221024165549.74574-1-sebastian.reichel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221024_095559_553853_3FBEE265 
X-CRM114-Status: GOOD (  11.88  )
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

Fix the node name for hym8563 in all arm rockchip devicetrees.

Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
 arch/arm/boot/dts/rk3036-evb.dts          | 2 +-
 arch/arm/boot/dts/rk3288-evb-act8846.dts  | 2 +-
 arch/arm/boot/dts/rk3288-firefly.dtsi     | 2 +-
 arch/arm/boot/dts/rk3288-miqi.dts         | 2 +-
 arch/arm/boot/dts/rk3288-rock2-square.dts | 2 +-
 5 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/arch/arm/boot/dts/rk3036-evb.dts b/arch/arm/boot/dts/rk3036-evb.dts
index 9fd4d9db9f8f..89b0927ce162 100644
--- a/arch/arm/boot/dts/rk3036-evb.dts
+++ b/arch/arm/boot/dts/rk3036-evb.dts
@@ -35,7 +35,7 @@ phy0: ethernet-phy@0 {
 &i2c1 {
 	status = "okay";
 
-	hym8563: hym8563@51 {
+	hym8563: rtc@51 {
 		compatible = "haoyu,hym8563";
 		reg = <0x51>;
 		#clock-cells = <0>;
diff --git a/arch/arm/boot/dts/rk3288-evb-act8846.dts b/arch/arm/boot/dts/rk3288-evb-act8846.dts
index be695b8c1f67..8a635c243127 100644
--- a/arch/arm/boot/dts/rk3288-evb-act8846.dts
+++ b/arch/arm/boot/dts/rk3288-evb-act8846.dts
@@ -54,7 +54,7 @@ vdd_gpu: syr828@41 {
 		vin-supply = <&vcc_sys>;
 	};
 
-	hym8563@51 {
+	rtc@51 {
 		compatible = "haoyu,hym8563";
 		reg = <0x51>;
 
diff --git a/arch/arm/boot/dts/rk3288-firefly.dtsi b/arch/arm/boot/dts/rk3288-firefly.dtsi
index 052afe5543e2..9267857beccb 100644
--- a/arch/arm/boot/dts/rk3288-firefly.dtsi
+++ b/arch/arm/boot/dts/rk3288-firefly.dtsi
@@ -233,7 +233,7 @@ vdd_gpu: syr828@41 {
 		vin-supply = <&vcc_sys>;
 	};
 
-	hym8563: hym8563@51 {
+	hym8563: rtc@51 {
 		compatible = "haoyu,hym8563";
 		reg = <0x51>;
 		#clock-cells = <0>;
diff --git a/arch/arm/boot/dts/rk3288-miqi.dts b/arch/arm/boot/dts/rk3288-miqi.dts
index 713f55e143c6..e3d5644f2915 100644
--- a/arch/arm/boot/dts/rk3288-miqi.dts
+++ b/arch/arm/boot/dts/rk3288-miqi.dts
@@ -162,7 +162,7 @@ vdd_gpu: syr828@41 {
 		vin-supply = <&vcc_sys>;
 	};
 
-	hym8563: hym8563@51 {
+	hym8563: rtc@51 {
 		compatible = "haoyu,hym8563";
 		reg = <0x51>;
 		#clock-cells = <0>;
diff --git a/arch/arm/boot/dts/rk3288-rock2-square.dts b/arch/arm/boot/dts/rk3288-rock2-square.dts
index 80e0f07c8e87..07a3a52753d2 100644
--- a/arch/arm/boot/dts/rk3288-rock2-square.dts
+++ b/arch/arm/boot/dts/rk3288-rock2-square.dts
@@ -165,7 +165,7 @@ &hdmi {
 };
 
 &i2c0 {
-	hym8563: hym8563@51 {
+	hym8563: rtc@51 {
 		compatible = "haoyu,hym8563";
 		reg = <0x51>;
 		#clock-cells = <0>;
-- 
2.35.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
