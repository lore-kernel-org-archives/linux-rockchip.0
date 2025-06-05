Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A7C2BC61CE7
	for <linux-rockchip@archiver.kernel.org>; Thu,  5 Jun 2025 23:12:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dtYrHMVNzxl4uNlAREb0PanPpz7BZiq2HVi0gtVhaqc=; b=s5zylvpw7FcZzC
	7/1k0MkUsrHTOv3uqlq/3n7Aip6gAQsX8SKarPhWgKUBGFBqGYSDtR7FyT/xHwJx9bcbXRkMN56sl
	w9+w6XZj5U4/U6VbPwbUE/SDWStGiQSlKX4D75qf9XPQZhYRfytxSGxWX0T9JuQmLGziAKXidjtUM
	YtHUQEG9NWws2M1QgpNpSzpcvMRpjb1aomWrU8yGr60KV071w5MUZi/oBIYY4938T8WaiMAPUVk0T
	z0GwhXIWU8O62vc67B6xBw0ci5x1zPumr6l0320q56ereeSKla2YnhDyKred9pcKPy5CS/byD2uSE
	X9/27JSO213V6ufS4l1Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uNJlA-0000000Gm2l-0DjH;
	Thu, 05 Jun 2025 23:12:32 +0000
Received: from mail-pl1-x630.google.com ([2607:f8b0:4864:20::630])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uNJl7-0000000Gm1p-36PI
	for linux-rockchip@lists.infradead.org;
	Thu, 05 Jun 2025 23:12:31 +0000
Received: by mail-pl1-x630.google.com with SMTP id d9443c01a7336-235e1d710d8so19754975ad.1
        for <linux-rockchip@lists.infradead.org>; Thu, 05 Jun 2025 16:12:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1749165149; x=1749769949; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ewyRAYkhZd92b7F4CWKDk1JwMN3zx+3mkjUHQ5qd6m4=;
        b=bYWUPsS1IKDKY/rOimsp9uz6p83YU725WM2UN6kLPXIh03i90GtBu2u8FtQKD5uv/i
         IlWTHZFPoa4CJpBnhCTfav3OQayxOWinSQ3ck/lIIIODc6ZhIi+Qg/bgqxQaT8jidqIl
         DFb9IpWCbr+N43ddT5g00yWLhdkaocD7lWHPRgeWduOqontm0J9niw4vzSOrUfSYwZB+
         Sqiqh4lOvidkk73uOwg6pFqn6qupDGkRJ/aMcck1k5M8poJ6bFWy0bQAwVrKfI5ry6eO
         temLK5eQg0mvaqm1XF2h3pNzBwq0mI48vL4PQiQGlUswvSxrYSsPMScbDuN9qPewdzAO
         yasw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749165149; x=1749769949;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ewyRAYkhZd92b7F4CWKDk1JwMN3zx+3mkjUHQ5qd6m4=;
        b=noLTCkz+H/bkieasID3GgUnSgn+44Pea5k2D7wuth/9KaEimGowHVWbWy2LK5DnA8I
         LKl06fIEpRTO+J+XE6SNkI+uywQYlGzecVEu3qJ2cs0+bRjuwUWNcmwyWbxTO6AAXSTF
         QW244wCFi8D1yVDUKBi76jUaSHyYqehEo5lZ9sQpudUWdr+WeVE3vW7OKCK2i7/26PFT
         Jeba+R0yX7vBGcGRkRJ2k8gMHLwmuf2I9Kx1F8m/EaU9qzGESZLKHGlcqO2oOz1ui/Tl
         b9yLuRjCZeBpOgj702jo48L6a08CvyoWvHKToAJLQGN3hCo+vn/aFHeKleWypS/d8ElS
         q/nA==
X-Forwarded-Encrypted: i=1; AJvYcCVBMke12KlSgIoG+pwam0XDTX8SLILC5JTOBfpDyMcGjBiAagdv+ZIAZ8dxYN3KPTbpQlW0aqHCvmTFExNOqA==@lists.infradead.org
X-Gm-Message-State: AOJu0YyhfeyR9pPvg9ad8am2K0z3LgZp1VsrgqXi8syY5RkJlMu31BvA
	xUvJ6cU7NV18iNVq+USs1v4qPGzh0zIt3036HsL3/5haVtRJ8skdmf+x5l4IGk9O
X-Gm-Gg: ASbGncuxD/aGUsoLeGaHjzvmPoQLogF+Pb3yvoqoR7YuF9ulkamSrVU4BAbQR59T1Us
	Rrfdb1xkECm2dTeBgTrxO32XyjtduHcv6edj3R0qYQJnLHoR+ISjan6+jprUazklGslOuD4JjHC
	UXZnJPGLLNup+sE9RHZ/heEs95V3IruhtwaEG5NlqRa1UeMT4LJa8+fUB7ctcoEHsJjdntS3Fk0
	jfRnhDYCZKxsJ4sBOrnuZHzQqJxY+FvCB/PPAHiQfnYEIGY0QnfV1CO+Mfqq/BMELFYpAxsrp+s
	/0roDDjT6YBkFBg+94zjekkFMLzxqnp9F4ungSWuYgmsqWo+rDCj46sd5YLtXg==
X-Google-Smtp-Source: AGHT+IHKXssEKuHD2t/QD6WQqtRRc34ubHifY7UsopBZFozbLU0lBwQttahY4O2s1U98OBHKHwC4jw==
X-Received: by 2002:a17:902:904b:b0:235:f1e4:3383 with SMTP id d9443c01a7336-23601cf0b1bmr11055435ad.7.1749165148918;
        Thu, 05 Jun 2025 16:12:28 -0700 (PDT)
Received: from wash.local ([50.46.184.91])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-23603097091sm1346175ad.69.2025.06.05.16.12.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Jun 2025 16:12:28 -0700 (PDT)
From: Joseph Kogut <joseph.kogut@gmail.com>
Date: Thu, 05 Jun 2025 16:11:52 -0700
Subject: [PATCH v4 2/3] arm64: dts: rockchip: Add rk3588 based Radxa CM5
MIME-Version: 1.0
Message-Id: <20250605-rk3588s-cm5-io-dts-upstream-v4-2-8445db5ca6b0@gmail.com>
References: <20250605-rk3588s-cm5-io-dts-upstream-v4-0-8445db5ca6b0@gmail.com>
In-Reply-To: <20250605-rk3588s-cm5-io-dts-upstream-v4-0-8445db5ca6b0@gmail.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org, 
 linux-kernel@vger.kernel.org, Joseph Kogut <joseph.kogut@gmail.com>, 
 Steve deRosier <derosier@cal-sierra.com>
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250605_161229_784045_348305F3 
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

Add initial support for the Radxa Compute Module 5 (CM5). The CM5 uses a
proprietary connector.

Specification:
- Rockchip RK3588
- Up to 32 GB LPDDR4X
- Up to 128 GB eMMC
- 1x HDMI TX up to 8k@60 hz
- 1x eDP TX up to 4k@60 hz
- Gigabit Ethernet PHY

Signed-off-by: Joseph Kogut <joseph.kogut@gmail.com>
---
 .../arm64/boot/dts/rockchip/rk3588s-radxa-cm5.dtsi | 156 +++++++++++++++++++++
 1 file changed, 156 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-radxa-cm5.dtsi b/arch/arm64/boot/dts/rockchip/rk3588s-radxa-cm5.dtsi
new file mode 100644
index 0000000000000000000000000000000000000000..d7946fe2bb4e721689e3eb4d60d8e9783402f05e
--- /dev/null
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-radxa-cm5.dtsi
@@ -0,0 +1,156 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Copyright (c) 2025 Joseph Kogut <joseph.kogut@gmail.com>
+ */
+
+/*
+ * CM5 data sheet
+ * https://dl.radxa.com/cm5/v2210/radxa_cm5_v2210_schematic.pdf
+ */
+
+#include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/leds/common.h>
+#include <dt-bindings/soc/rockchip,vop2.h>
+#include <dt-bindings/usb/pd.h>
+
+/ {
+	compatible = "radxa,cm5", "rockchip,rk3588s";
+
+	aliases {
+		mmc0 = &sdmmc;
+		mmc1 = &sdhci;
+		mmc2 = &sdio;
+	};
+
+	leds {
+		compatible = "gpio-leds";
+
+		led_sys: led-0 {
+			color = <LED_COLOR_ID_BLUE>;
+			default-state = "on";
+			function = LED_FUNCTION_HEARTBEAT;
+			gpios = <&gpio4 RK_PB4 GPIO_ACTIVE_HIGH>;
+			linux,default-trigger = "heartbeat";
+		};
+	};
+};
+
+&cpu_b0 {
+	cpu-supply = <&vdd_cpu_big0_s0>;
+};
+
+&cpu_b1 {
+	cpu-supply = <&vdd_cpu_big0_s0>;
+};
+
+&cpu_b2 {
+	cpu-supply = <&vdd_cpu_big1_s0>;
+};
+
+&cpu_b3 {
+	cpu-supply = <&vdd_cpu_big1_s0>;
+};
+
+&cpu_l0 {
+	cpu-supply = <&vdd_cpu_lit_s0>;
+};
+
+&cpu_l1 {
+	cpu-supply = <&vdd_cpu_lit_s0>;
+};
+
+&cpu_l2 {
+	cpu-supply = <&vdd_cpu_lit_s0>;
+};
+
+&cpu_l3 {
+	cpu-supply = <&vdd_cpu_lit_s0>;
+};
+
+&gmac1 {
+	clock_in_out = "output";
+	phy-handle = <&rgmii_phy1>;
+	phy-mode = "rgmii-id";
+	phy-supply = <&vcc_3v3_s0>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&gmac1_miim
+		     &gmac1_tx_bus2
+		     &gmac1_rx_bus2
+		     &gmac1_rgmii_clk
+		     &gmac1_rgmii_bus
+		     &gmac1_clkinout>;
+	status = "okay";
+};
+
+&gpu {
+	mali-supply = <&vdd_gpu_s0>;
+	status = "okay";
+};
+
+&hdmi0 {
+	status = "okay";
+};
+
+&i2c0 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&i2c0m2_xfer>;
+	status = "okay";
+
+	vdd_cpu_big0_s0: regulator@42 {
+		compatible = "rockchip,rk8602";
+		reg = <0x42>;
+		fcs,suspend-voltage-selector = <1>;
+		regulator-name = "vdd_cpu_big0_s0";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <550000>;
+		regulator-max-microvolt = <1050000>;
+		regulator-ramp-delay = <2300>;
+		vin-supply = <&vcc5v0_sys>;
+
+		regulator-state-mem {
+			regulator-off-in-suspend;
+		};
+	};
+
+	vdd_cpu_big1_s0: regulator@43 {
+		compatible = "rockchip,rk8602";
+		reg = <0x43>;
+		fcs,suspend-voltage-selector = <1>;
+		regulator-name = "vdd_cpu_big1_s0";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <550000>;
+		regulator-max-microvolt = <1050000>;
+		regulator-ramp-delay = <2300>;
+		vin-supply = <&vcc5v0_sys>;
+
+		regulator-state-mem {
+			regulator-off-in-suspend;
+		};
+	};
+};
+
+&mdio1 {
+	rgmii_phy1: phy@1 {
+		compatible = "ethernet-phy-ieee802.3-c22";
+		reg = <0x1>;
+	};
+};
+
+&pd_gpu {
+	domain-supply = <&vdd_gpu_s0>;
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
+	mmc-hs200-1_8v;
+	status = "okay";
+};
+

-- 
2.49.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
