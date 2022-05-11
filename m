Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 455C8C433F5
	for <linux-rockchip@archiver.kernel.org>; Wed, 11 May 2022 11:36:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kdOlwVFNxCLQgyUmQ3sNqL0SN2Ug2qSl4y43A2eFTUk=; b=XPEyWch0rmuR4x
	odCXLoF/VZ2TIQ2tntSZpKI57ppuubzs4UGQWb8ic22PvtS69INh12Enz+PZ8uE3YFRn4maLULqe7
	n2Mfnn3eu04FQ2Hj4Z/s04/5GTIn7yBtfFhA1+u7asRsF4ePTb9+71iFemHlvr7QL9lne2k+A0R9c
	sOEBY2InpIiFv9LU/cqlfAQKjw4jbopfPWzGwNS7ds7iTOM2pvsTRcbnMrG/6bSQsay30wQiJonG5
	f0wAQ6LBB9OQkjjf2Y/S/2vyXL7QffNwft+AgVxPAoRlDwLZiyXmzko0yLU9viK0p5YJEgqXvpCq3
	ENEKbKBmQaRwEwWJbqWA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nokdJ-006WvV-7C; Wed, 11 May 2022 11:35:57 +0000
Received: from mail-qk1-x735.google.com ([2607:f8b0:4864:20::735])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nokco-006WaS-1V; Wed, 11 May 2022 11:35:27 +0000
Received: by mail-qk1-x735.google.com with SMTP id a76so2000395qkg.12;
 Wed, 11 May 2022 04:35:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=TASe7e8staripPUTtHYJHBu8o4s+0xu3fkgvGutfur4=;
 b=lfpwdTliBUFOuGKLeYuoJowajrhtcHVr4wNf3BxOcCnDMTdpPbKWlJSo7e9o8Rai1T
 VcO1sP33hQT8oOxhrpLl2MOcwLeEoqdhNQPurF3O7u4ummg09F2ns8Qx/N+3nFy9JAKt
 V314hh0UmgQpeRXzKI6bw2l+Ez4uatHRJFopqlAMUvVieftkxyb3OjBwFYStV1KiK53L
 2SPZfEd7UKpwbBGfCPfbDvXX5tfTsMzP84EtZcX20o+GwRzPZjFjELnCBt9d+auGUVyl
 X1xLUvxmHK3Ux9bx6eQ4M2z2V2BXkIaW7Uq/7tTmXSxkA0uw+yppuWwWMQT6eGVcLwDu
 qapA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=TASe7e8staripPUTtHYJHBu8o4s+0xu3fkgvGutfur4=;
 b=Fdy706i3NsFN95aTS5IXml77eJS0TjbppXZGgNrkw/45ld+Y8Zd9hBM1reuP5GEb8G
 kOorf5GKk7zz1VwyyRCxok2EuPp7geQx+OzK/R9h0EsL3bjf1wIgJN/IDVzHhw3HuSMt
 3bPFnyFBgkWnx75mjBSMLZccVV+AgL55w9VXkmsEkY+/avCeodFayL6rialcw/gDRfLv
 CPjOxu8fPpJr+fJweKNaSfUQ9OZQ8uP6xVYAbv7Al6o8aFMu4hDPi8mu5tPZ3NcnQsUI
 eqxNQaxbIItAatTXnmK4KHJZT+En8lmhdZQnr24rgt5HHmyFBzWUWsx41NVTbgVoxCXx
 Gj+A==
X-Gm-Message-State: AOAM531Ap4dkri9VNkmGorA2LIUtKlZhezQgTDh0XHNK6jtUB4JheWQv
 Q/1yrAap8APkTWA0ytonXvEaRU79wMpLQg==
X-Google-Smtp-Source: ABdhPJzKRwT45sGp+GMJgGVh5netETKrJdksDPYQxG4bvZtdsZuc4PeQRazYRe767WcLk6MecTlgVA==
X-Received: by 2002:a37:ad16:0:b0:6a0:1468:4513 with SMTP id
 f22-20020a37ad16000000b006a014684513mr18321635qkm.96.1652268923469; 
 Wed, 11 May 2022 04:35:23 -0700 (PDT)
Received: from master-x64.sparksnet ([2601:153:980:85b1::10])
 by smtp.gmail.com with ESMTPSA id
 bw26-20020a05622a099a00b002f39b99f6basm953377qtb.84.2022.05.11.04.35.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 11 May 2022 04:35:23 -0700 (PDT)
From: Peter Geis <pgwipeout@gmail.com>
To: linux-rockchip@lists.infradead.org, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Peter Geis <pgwipeout@gmail.com>
Subject: [PATCH v2 3/3] arm64: dts: rockchip: add pine64 touch panel display
 to rockpro64
Date: Wed, 11 May 2022 07:35:16 -0400
Message-Id: <20220511113517.4172962-4-pgwipeout@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220511113517.4172962-1-pgwipeout@gmail.com>
References: <20220511113517.4172962-1-pgwipeout@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220511_043526_159548_E2E1C1AD 
X-CRM114-Status: GOOD (  12.85  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

The Pine64 touch panel is a panel consisting of the Feiyang fy07024di26a30d
panel with a Goodix gt911 touch screen. Add the device tree nodes to the
rockpro64 to permit attaching this display to the device.

Signed-off-by: Peter Geis <pgwipeout@gmail.com>
---
 .../boot/dts/rockchip/rk3399-rockpro64.dtsi   | 80 ++++++++++++++++++-
 1 file changed, 76 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi
index 45e77f86d329..f0fb450ddba6 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi
@@ -20,6 +20,15 @@ chosen {
 		stdout-path = "serial2:1500000n8";
 	};
 
+	/* enable for panel backlight support */
+	backlight: backlight {
+		compatible = "pwm-backlight";
+		pwms = <&pwm0 0 1000000 0>;
+		brightness-levels = <0 4 8 16 32 64 128 255>;
+		default-brightness-level = <5>;
+		status = "disabled";
+	};
+
 	clkin_gmac: external-gmac-clock {
 		compatible = "fixed-clock";
 		clock-frequency = <125000000>;
@@ -220,6 +229,14 @@ vdd_log: vdd-log {
 		regulator-min-microvolt = <800000>;
 		regulator-max-microvolt = <1700000>;
 	};
+
+	avdd: avdd {
+		compatible = "regulator-fixed";
+		regulator-name = "avdd";
+		regulator-min-microvolt = <11000000>;
+		regulator-max-microvolt = <11000000>;
+		vin-supply = <&vcc3v3_s0>;
+	};
 };
 
 &cpu_l0 {
@@ -301,6 +318,11 @@ &hdmi {
 	status = "okay";
 };
 
+/* force hdmi to vopb */
+&hdmi_in_vopl {
+	status = "disabled";
+};
+
 &hdmi_sound {
 	status = "okay";
 };
@@ -400,8 +422,6 @@ regulator-state-mem {
 
 			vcc3v0_touch: LDO_REG2 {
 				regulator-name = "vcc3v0_touch";
-				regulator-always-on;
-				regulator-boot-on;
 				regulator-min-microvolt = <3000000>;
 				regulator-max-microvolt = <3000000>;
 				regulator-state-mem {
@@ -490,8 +510,6 @@ regulator-state-mem {
 
 			vcc3v3_s0: SWITCH_REG2 {
 				regulator-name = "vcc3v3_s0";
-				regulator-always-on;
-				regulator-boot-on;
 				regulator-state-mem {
 					regulator-off-in-suspend;
 				};
@@ -565,6 +583,19 @@ fusb0: typec-portc@22 {
 		vbus-supply = <&vcc5v0_typec>;
 		status = "okay";
 	};
+
+	/* enable for pine64 touch screen support */
+	touch: touchscreen@5d {
+		compatible = "goodix,gt911";
+		reg = <0x5d>;
+		AVDD28-supply = <&vcc3v0_touch>;
+		VDDIO-supply = <&vcc3v0_touch>;
+		interrupt-parent = <&gpio4>;
+		interrupts = <RK_PD5 IRQ_TYPE_EDGE_FALLING>;
+		irq-gpios = <&gpio4 RK_PD5 GPIO_ACTIVE_HIGH>;
+		reset-gpios = <&gpio4 RK_PD6 GPIO_ACTIVE_HIGH>;
+		status = "disabled";
+	};
 };
 
 &i2s0 {
@@ -600,6 +631,47 @@ &io_domains {
 	gpio1830-supply = <&vcc_3v0>;
 };
 
+/* enable for pine64 panel display support */
+&mipi_dsi {
+	status = "disabled";
+	clock-master;
+
+	ports {
+		mipi_out: port@1 {
+			reg = <1>;
+
+			mipi_out_panel: endpoint {
+				remote-endpoint = <&mipi_in_panel>;
+			};
+		};
+	};
+
+	mipi_panel: panel@0 {
+		compatible = "feiyang,fy07024di26a30d";
+		reg = <0>;
+		avdd-supply = <&avdd>;
+		backlight = <&backlight>;
+		dvdd-supply = <&vcc3v3_s0>;
+		ports {
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			port@0 {
+				reg = <0>;
+
+				mipi_in_panel: endpoint {
+					remote-endpoint = <&mipi_out_panel>;
+				};
+			};
+		};
+	};
+};
+
+/* force dsi to vopl */
+&mipi_in_vopb {
+	status="disabled";
+};
+
 &pcie0 {
 	ep-gpios = <&gpio2 RK_PD4 GPIO_ACTIVE_HIGH>;
 	num-lanes = <4>;
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
