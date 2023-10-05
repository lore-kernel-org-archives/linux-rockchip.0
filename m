Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CB4C6E93710
	for <linux-rockchip@archiver.kernel.org>; Thu,  5 Oct 2023 13:44:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=7U/o3JRJQOEB+RgzMZjpe01tjU61+zPoWId1fP59KPw=; b=Y+5WHTUax+fFXF
	2SogCi/pt6kIS1GwMXIxYvvbBmEQlxX35+x+xGwTWwATvAOSCWPzqPS2ZE9DI1kTtDtnYdy6zkdMJ
	TmDH62QwmZUu82Sf+vElnSAG8e/ZhWaJGIGL/U6k0Vi5/OlzVjmohmsGBasE333dnGntGV6IhBDZa
	Ts6ekfDGMeUI4EtxkgsT7aslk0xohqqUiULxAFQA0sBFvFtoyfUuYroXxiNnuPx9ezVgODzYJM5yl
	Ux/U2QY8Wy//c/wXTdODuGXg5kkjEErQsP/Xx7Uc2N/8ADbs9RvhsyTyeSGVjl5jkfmU6Ta9w/HH0
	T0D4fBbBNs/TvmLxjE3A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qoOe8-003Z4W-2n;
	Thu, 05 Oct 2023 13:44:08 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qoOe4-003Yzx-3B;
	Thu, 05 Oct 2023 13:44:06 +0000
Received: from jupiter.universe (dyndsl-091-248-132-024.ewe-ip-backbone.de [91.248.132.24])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: sre)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 4A4F4660731A;
	Thu,  5 Oct 2023 14:44:01 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1696513441;
	bh=RcJpTpb79ysiBy81p3dPq9Lfzg7r8A9jGzsGF4aBu2g=;
	h=From:To:Cc:Subject:Date:From;
	b=XqDzX8rPKgNqnx5SPZrzvPG5NeGmhI2LMLu5369GU1iu3ZlRtR1AAGyJee8NNHYiU
	 hdcxisq89pJLSiTP/UqbSzeFdEWofsk0VlHQCnWnKgL+F6LxJwI8ByT6mZt/Cca8IK
	 s71r32NkruvkVEPgH/jfL2cGEqJkpUpi1y7ztchMrwOOx2pYcIf6s50XIpurHYlp4D
	 MGeW3mSbM3VUGj4iblaD/36utD9tKUWjMfsnKp8v/xCZGw/MpbXZXnHH+MeL5yIW6c
	 x4FQ7x2chjlMVJMvVYTk0prEXVxllWKVibn5CWJUy//dnfilePJAhU0BWdyz+dVSOD
	 GJ9Ptkdpx3n7A==
Received: by jupiter.universe (Postfix, from userid 1000)
	id 1859A4800C3; Thu,  5 Oct 2023 15:43:59 +0200 (CEST)
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
Subject: [PATCH v1 1/1] arm64: dts: rockchip: rk3588-evb1: add ADC buttons
Date: Thu,  5 Oct 2023 15:43:57 +0200
Message-Id: <20231005134357.37171-1-sebastian.reichel@collabora.com>
X-Mailer: git-send-email 2.40.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231005_064405_173148_376F4F33 
X-CRM114-Status: GOOD (  10.27  )
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

The Rockchip EVB1 has a couple of buttons connected via an ADC
line. Let's add them to its devicetree.

Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
 .../boot/dts/rockchip/rk3588-evb1-v10.dts     | 38 +++++++++++++++++++
 1 file changed, 38 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-evb1-v10.dts b/arch/arm64/boot/dts/rockchip/rk3588-evb1-v10.dts
index c3fe58e39e99..b9d789d57862 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-evb1-v10.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-evb1-v10.dts
@@ -7,6 +7,7 @@
 /dts-v1/;
 
 #include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/input/input.h>
 #include <dt-bindings/pinctrl/rockchip.h>
 #include "rk3588.dtsi"
 
@@ -23,6 +24,38 @@ chosen {
 		stdout-path = "serial2:1500000n8";
 	};
 
+	adc-keys {
+		compatible = "adc-keys";
+		io-channels = <&saradc 1>;
+		io-channel-names = "buttons";
+		keyup-threshold-microvolt = <1800000>;
+		poll-interval = <100>;
+
+		button-vol-up {
+			label = "Volume Up";
+			linux,code = <KEY_VOLUMEUP>;
+			press-threshold-microvolt = <17000>;
+		};
+
+		button-vol-down {
+			label = "Volume Down";
+			linux,code = <KEY_VOLUMEDOWN>;
+			press-threshold-microvolt = <417000>;
+		};
+
+		button-menu {
+			label = "Menu";
+			linux,code = <KEY_MENU>;
+			press-threshold-microvolt = <890000>;
+		};
+
+		button-escape {
+			label = "Escape";
+			linux,code = <KEY_ESC>;
+			press-threshold-microvolt = <1235000>;
+		};
+	};
+
 	backlight: backlight {
 		compatible = "pwm-backlight";
 		power-supply = <&vcc12v_dcin>;
@@ -286,6 +319,11 @@ &pwm2 {
 	status = "okay";
 };
 
+&saradc {
+	vref-supply = <&vcc_1v8_s0>;
+	status = "okay";
+};
+
 &sdhci {
 	bus-width = <8>;
 	no-sdio;
-- 
2.40.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
