Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 11418C46467
	for <linux-rockchip@archiver.kernel.org>; Wed, 14 Dec 2022 18:23:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PsEP18MkDsqqu/BCULae3gcGUBjckTsR3jyneuaAwvk=; b=ggO3BgLCtAdJ+H
	yMe84r079hBnXyhHPt5AJXz+dJYeaCRpxCowXLtYoJlrRB9MbrN0XzVtaV5miGvRF9d6DSVhVEFZ+
	ygDsKGWuLOY4xMbA6EO0wEdF0Rb5Q5/8s4mrCYMerqxEh7aNzRlFqakeS1PN9pJWdAZ+upkjDNFev
	4YgTB96REZN6DolIq0vm5uVxyw9K2XWrBBXLQmJ8Y1WVvb3Ay0ioGRxFdCgMTal2xHeKm+VyvIKsO
	/faE3Od935wRuuZOwFpzkZoTRGxITXxV7ftylb/aAS4ClgGgrd8BtuU/GOv+uKo1SpIOWgy20fsiQ
	sSm2TCeMexuOqs5ygxjw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p5WPH-001ZLy-La; Wed, 14 Dec 2022 18:23:03 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p5WPA-001ZDe-MY
	for linux-rockchip@lists.infradead.org; Wed, 14 Dec 2022 18:22:59 +0000
Received: from jupiter.universe (dyndsl-095-033-169-234.ewe-ip-backbone.de [95.33.169.234])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: sre)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id B8D636602C68;
	Wed, 14 Dec 2022 18:22:54 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1671042174;
	bh=Kjibh8ynGnHRfmJauCFb9dny1B5NdDHrt1LaB5Yq6a0=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=dOtjE7SkBk5LSFwR971pu88WhTBfjg1VNGW5KleMFWsjOwE56ZybfAUgLG10IHpnh
	 i4HjqGGahaObkHwLS8A00/Qtfmz8/IbuA/pi29FUm7JOpueWAPCWpGbyeSr8LJ3U0A
	 JO3ViAWU7seKNEX0D8NjD2PjRFiBHqLkUMS0zu6ZbG26+CrSVC0UjKj/gGFAT9KzFS
	 2DnNIYbnX/8htc19nskEh398yjR9Qznw4jTSrz3kaRMa7OXwl4NfrVSnHFX5/p9RHM
	 kcRGlz0QAIGgVPB2l9b7vHL3Jbt0CWqgPHo4ITP8F2dvM2lQpAuNeLPOCc4uxYN051
	 Z3BMCouc1UDSQ==
Received: by jupiter.universe (Postfix, from userid 1000)
	id C9DE648011E; Wed, 14 Dec 2022 19:22:48 +0100 (CET)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Marc Zyngier <maz@kernel.org>,
	Linus Walleij <linus.walleij@linaro.org>,
	Christopher Obbard <chris.obbard@collabora.com>,
	Benjamin Gaignard <benjamin.gaignard@collabora.com>,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	kernel@collabora.com,
	Michael Riesch <michael.riesch@wolfvision.net>,
	Sebastian Reichel <sebastian.reichel@collabora.com>
Subject: [PATCHv6 7/7] arm64: dts: rockchip: Add rock-5b board
Date: Wed, 14 Dec 2022 19:22:47 +0100
Message-Id: <20221214182247.79824-8-sebastian.reichel@collabora.com>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20221214182247.79824-1-sebastian.reichel@collabora.com>
References: <20221214182247.79824-1-sebastian.reichel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221214_102256_956421_FF1FB291 
X-CRM114-Status: GOOD (  14.30  )
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

From: Christopher Obbard <chris.obbard@collabora.com>

Add board file for the RK3588 Rock 5B board. This is a basic
implementation which just brings up the eMMC and UART which is
enough to successfully boot Linux.

The ethernet controller is connected via PCIe so support will
come in a follow-up patch.

Signed-off-by: Christopher Obbard <chris.obbard@collabora.com>
Reviewed-by: Michael Riesch <michael.riesch@wolfvision.net>
Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
 arch/arm64/boot/dts/rockchip/Makefile         |  1 +
 .../boot/dts/rockchip/rk3588-rock-5b.dts      | 44 +++++++++++++++++++
 2 files changed, 45 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts

diff --git a/arch/arm64/boot/dts/rockchip/Makefile b/arch/arm64/boot/dts/rockchip/Makefile
index 31fa55750a0f..b31aa1b0e9e3 100644
--- a/arch/arm64/boot/dts/rockchip/Makefile
+++ b/arch/arm64/boot/dts/rockchip/Makefile
@@ -73,4 +73,5 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3568-bpi-r2-pro.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3568-evb1-v10.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3568-rock-3a.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-evb1-v10.dtb
+dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-rock-5b.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588s-rock-5a.dtb
diff --git a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
new file mode 100644
index 000000000000..baf46bd30b38
--- /dev/null
+++ b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
@@ -0,0 +1,44 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+
+/dts-v1/;
+
+#include "rk3588.dtsi"
+
+/ {
+	model = "Radxa Rock 5B Board";
+	compatible = "radxa,rock-5b", "rockchip,rk3588";
+
+	aliases {
+		mmc1 = &sdhci;
+		serial2 = &uart2;
+	};
+
+	chosen {
+		stdout-path = "serial2:1500000n8";
+	};
+
+	vcc5v0_sys: vcc5v0-sys-regulator {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc5v0_sys";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+	};
+};
+
+&sdhci {
+	bus-width = <8>;
+	no-sdio;
+	no-sd;
+	non-removable;
+	max-frequency = <200000000>;
+	mmc-hs400-1_8v;
+	mmc-hs400-enhanced-strobe;
+	status = "okay";
+};
+
+&uart2 {
+	pinctrl-0 = <&uart2m0_xfer>;
+	status = "okay";
+};
-- 
2.39.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
