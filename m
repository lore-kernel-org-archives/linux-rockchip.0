Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3F181C433F5
	for <linux-rockchip@archiver.kernel.org>; Fri,  7 Jan 2022 05:14:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Y/77bcFMyYiAVtvpwI027k4dtz+TiiwfeTvJ433GYR0=; b=ZT8xJ+/vJRVyQn
	ViUZbwoDKcEJlBwBr60G04FO/4b8w11G1fQ72JY7CEMj/NnhdDyttk1/FJ1bgL0F3kV0/IsrYljvR
	9+0w9Zs953zPuKzJViSQsTbS3Ij2L0groAx0/FYvMUIu0wppyrbvTMLEK8C59dXKK0PMS05+8bPlI
	R/FqZeVpKNqWyF0kmdcIQcIgqHGXapD442H4A623PGEq4evK9aBG2AcvsQEk7uBkjwjYiatrFEGva
	AMhvzmnh2aKuvW+Kq2orNPt8cl3Zi0Sc1+AI9GlYF8wCvfwH2PgyKvLn1iFi5v56M6Bqb+7ym/HEs
	9OJD4E91JX1/wiLudxtQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n5hZw-002LCu-68; Fri, 07 Jan 2022 05:14:16 +0000
Received: from mail-qk1-x731.google.com ([2607:f8b0:4864:20::731])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n5hZR-002L0z-32; Fri, 07 Jan 2022 05:13:46 +0000
Received: by mail-qk1-x731.google.com with SMTP id i187so4927269qkf.5;
 Thu, 06 Jan 2022 21:13:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=d0E8s9XkVMJfO71U0WZapgq3CBnEOczzCxvv2x4eTOI=;
 b=awhqnAkIp7trR8Jv9wraBB/3QMSgqaGlulcxwILOUKQ6xfuXvz9Cy8JIV1bqHeSk0B
 xnYQnCHZcvhNLYbBGUBPrlOIyR6Fve60BMqo0Egl92ueIIYwPolz+0ZcJfKwscAa4Zey
 tkW93zs0Ec5qd8bvHW3qA0sn2Lhok4E7VF92Zwsb8bCQspev1hIK5D8hOGo7s3IE+ZYF
 trPp6C4CZVfhFh+BZtLHqWE1xOvEyq6KPMMGIPBqBp+RV84KxSSRrc8uPIain2/P5NNw
 VmS6NhpD4RsKkEsJI6FVNMx/UxyyOdwZPUDG7VNJ+eDYKanizAGZGNYaJtaiPs++iD15
 np0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=d0E8s9XkVMJfO71U0WZapgq3CBnEOczzCxvv2x4eTOI=;
 b=Y2dYyO0UyX0wh3ubTb5lgAaeHY7kMAsHSmeaBMNiJPHy+p2jRFIMc/cRS9uXTUokej
 s2+bzAHzFRMb19ilaGSLtptb3USyuqD94zDIQ4l5Ki0jJDQ4NHwsXb2DVM0N8nevHpoi
 EBCzqdgb19UCl32Pp5NP/uGVO/zSiNLcxZDyjhm8iMwQHGvWCxEGUi8wE4IW3MiZm2MA
 GF+iCTRNWPoQJ2vi4zkkpT6k4/x+lLArxrY07HiZTwWIN5fbZLVaCi9xRzw0FULyDPcv
 5Iy1VnXorUasrk+oSSjeig3Yyy2opzNQXRcQfXOIjWJiCrltGy2F/qvpXKItSQWGXqG2
 5Zcg==
X-Gm-Message-State: AOAM531JBkWCdZULG+1A+rFXjOjRuOg7mLLdCzWT7oQ7vCb/8NsQYNzF
 rcAISlOW+KmYw8eBXfGsO7ONa7xddqNFKA==
X-Google-Smtp-Source: ABdhPJwKGvck88HMWuNcgtplD8fVqm2IP/5UhmLKJ/hHRmQaUGaAF0uj1u94MoiOsIW91+gruO6WtQ==
X-Received: by 2002:a05:620a:24ca:: with SMTP id
 m10mr43698820qkn.649.1641532420494; 
 Thu, 06 Jan 2022 21:13:40 -0800 (PST)
Received: from master-x64.sparksnet (c-98-233-193-225.hsd1.dc.comcast.net.
 [98.233.193.225])
 by smtp.gmail.com with ESMTPSA id d15sm1651461qka.3.2022.01.06.21.13.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 06 Jan 2022 21:13:40 -0800 (PST)
From: Peter Geis <pgwipeout@gmail.com>
To: Rob Herring <robh+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Peter Geis <pgwipeout@gmail.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH 3/4] arm64: dts: rockchip: add pine64 touch panel display to
 rockpro64
Date: Fri,  7 Jan 2022 00:13:34 -0500
Message-Id: <20220107051335.3812535-4-pgwipeout@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220107051335.3812535-1-pgwipeout@gmail.com>
References: <20220107051335.3812535-1-pgwipeout@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220106_211345_159231_E18FAF60 
X-CRM114-Status: GOOD (  12.16  )
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
panel with a Goodix gt911 touch screen.
Add the device tree nodes to the rockpro64 to permit attaching this display to
the device.

Signed-off-by: Peter Geis <pgwipeout@gmail.com>
---
 .../boot/dts/rockchip/rk3399-rockpro64.dtsi   | 80 ++++++++++++++++++-
 1 file changed, 76 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi
index 83db4ca67334..158befb9a48c 100644
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
 		regulator-max-microvolt = <1700000>;
 		vin-supply = <&vcc5v0_sys>;
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
2.32.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
