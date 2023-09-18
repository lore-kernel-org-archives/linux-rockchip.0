Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8ECE7CD37B0
	for <linux-rockchip@archiver.kernel.org>; Mon, 18 Sep 2023 14:14:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7Z0PISNJMffTrMhOJJ1mXZufFvCPV9frTopgmgRw5GE=; b=rQIUC+/E2eBfHq
	U0P71pkpmqIFJrWqJpCRTeRqfQLDzHONFH2YY0m4qCzFUY+1A7WXLuiuiaxbOxa/cZHDEs/AwLmbn
	w+IoWs4xQN4P2//qHYA3At8ap99PNxBHP3fAqZ/qFikaz7tezVK0X39gJLliZ+rbl/cVR/HGCHfUN
	XCBkcuTtGIdnMW+Tb+5GfQwxukrKDkpMgOZBRJMCXfHPwKXvZezyaNME5Jv8Lm0ekGDb+J8z8nx7g
	wnb4OPYDCjWLRsC5o3K94Gwyy1704xn6SSpl8KLJ4TC6vzoVela9nMHMiwHQeyq9mxa3RQSdfyyJF
	/9aOmYO33DPVdDJBNs8A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qiF0g-00Fd6P-1O;
	Mon, 18 Sep 2023 14:13:58 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qiF0T-00Fd2d-1Z;
	Mon, 18 Sep 2023 14:13:48 +0000
Received: from jupiter.universe (dyndsl-091-248-188-252.ewe-ip-backbone.de [91.248.188.252])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: sre)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 848E86607197;
	Mon, 18 Sep 2023 15:13:39 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1695046419;
	bh=LXDsfmpgz/S+OdLyVgEiEXXE5p+Ro4TcKEscm/IBY6w=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=Id8Dl4YTEa5H93pJEpd+uJPplow+uowCumBASpPTzsAbKUX+M3rgF+CmAoM38z5h3
	 6lHCkUlvir10SCy3MOqEk5bkUwqSiSwIQCCbqn7bWqppr0rRcNXWnM2jkMHWuxyatC
	 OWQrc7RveiVCuTfjr4cOaR0hlbM5UKBBErJvlaYkXA5tu7iaSHCBn0gVZHZIYGYuyG
	 ikxhy0DrvSDQN10IykYg/zHPypjSOLRusoO+FHsWlS6NUBkFhbsNsd/w3trABCQisz
	 pm4GlyS4tS8BGTVEhpeRfnuwruEIVfk+kTQDnpVZZ1Sjp2g2iSp56VO5wz4nPsw6ek
	 cTgfrc27scQ5g==
Received: by jupiter.universe (Postfix, from userid 1000)
	id 834554800D0; Mon, 18 Sep 2023 16:13:37 +0200 (CEST)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	kernel@collabora.com
Subject: [PATCH 2/2] arm64: dts: rockchip: rk3588-evb1: add PCIe3 bus
Date: Mon, 18 Sep 2023 16:13:27 +0200
Message-Id: <20230918141327.131108-3-sebastian.reichel@collabora.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230918141327.131108-1-sebastian.reichel@collabora.com>
References: <20230918141327.131108-1-sebastian.reichel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230918_071345_671430_D9B8CBD7 
X-CRM114-Status: GOOD (  10.91  )
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

Enable PCIe3 support, which is exposed via a PCIe3 connector.

Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
 .../boot/dts/rockchip/rk3588-evb1-v10.dts     | 55 +++++++++++++++++++
 1 file changed, 55 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-evb1-v10.dts b/arch/arm64/boot/dts/rockchip/rk3588-evb1-v10.dts
index 23bef9faa690..c3fe58e39e99 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-evb1-v10.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-evb1-v10.dts
@@ -49,6 +49,26 @@ pcie20_avdd1v8: pcie20-avdd1v8-regulator {
 		vin-supply = <&avcc_1v8_s0>;
 	};
 
+	pcie30_avdd0v75: pcie30-avdd0v75-regulator {
+		compatible = "regulator-fixed";
+		regulator-name = "pcie30_avdd0v75";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <750000>;
+		regulator-max-microvolt = <750000>;
+		vin-supply = <&avdd_0v75_s0>;
+	};
+
+	pcie30_avdd1v8: pcie30-avdd1v8-regulator {
+		compatible = "regulator-fixed";
+		regulator-name = "pcie30_avdd1v8";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <1800000>;
+		regulator-max-microvolt = <1800000>;
+		vin-supply = <&avcc_1v8_s0>;
+	};
+
 	vcc12v_dcin: vcc12v-dcin-regulator {
 		compatible = "regulator-fixed";
 		regulator-name = "vcc12v_dcin";
@@ -58,6 +78,19 @@ vcc12v_dcin: vcc12v-dcin-regulator {
 		regulator-max-microvolt = <12000000>;
 	};
 
+	vcc3v3_pcie30: vcc3v3-pcie30-regulator {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc3v3_pcie30";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		enable-active-high;
+		gpios = <&gpio3 RK_PC3 GPIO_ACTIVE_HIGH>;
+		startup-delay-us = <5000>;
+		vin-supply = <&vcc12v_dcin>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&vcc3v3_pcie30_en>;
+	};
+
 	vcc5v0_host: vcc5v0-host-regulator {
 		compatible = "regulator-fixed";
 		regulator-name = "vcc5v0_host";
@@ -194,6 +227,18 @@ &pcie2x1l1 {
 	status = "okay";
 };
 
+&pcie30phy {
+	status = "okay";
+};
+
+&pcie3x4 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pcie3_reset>;
+	reset-gpios = <&gpio4 RK_PB6 GPIO_ACTIVE_HIGH>;
+	vpcie3v3-supply = <&vcc3v3_pcie30>;
+	status = "okay";
+};
+
 &pinctrl {
 	rtl8111 {
 		rtl8111_isolate: rtl8111-isolate {
@@ -220,6 +265,16 @@ pcie2_1_rst: pcie2-1-rst {
 		};
 	};
 
+	pcie3 {
+		pcie3_reset: pcie3-reset {
+			rockchip,pins = <4 RK_PB6 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+
+		vcc3v3_pcie30_en: vcc3v3-pcie30-en {
+			rockchip,pins = <3 RK_PC3 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+
 	usb {
 		vcc5v0_host_en: vcc5v0-host-en {
 			rockchip,pins = <4 RK_PB0 RK_FUNC_GPIO &pcfg_pull_none>;
-- 
2.40.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
