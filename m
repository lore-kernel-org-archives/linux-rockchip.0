Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 25D26C5518C
	for <linux-rockchip@archiver.kernel.org>; Mon,  3 Aug 2026 05:16:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bT2+2LmfL4ZdIFK/H+VP+pMFEG+aCnUkCR0J0YEF3Dw=; b=OocDGxFtwGSUM6
	+VIbP2Xk0XHcl82/sZyWDQolB8mRIyVta+7qypHP8yq+erwd5E3d+i84IGxjbROGePhhDqtGWS1/I
	y7OH+eJkaIujcQjuX1y900bZdNkWu0eHgUPYk3C2+D2h/Pmnm+ZxGtcYQStkbThOhEUMrzIEgBZOh
	tOHg6mqM8oi2owNSQkpnlX8WErCVjqpv4U6bqbl1wDhs/JxVq8yakq5REHSnszsfWbFMF5W08UkDp
	I4J7DKC870H6WkVGwhCmNHQjI090vXwKv+zEpAFyUNRZIT0pcF9EWCkxX5XPhTQMuJ7oExzCNs/HO
	9buZKk0svhmpQQu9wDKg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wql1t-0000000GLdU-43bm;
	Mon, 03 Aug 2026 05:16:01 +0000
Received: from mail-oi1-x236.google.com ([2607:f8b0:4864:20::236])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wql1k-0000000GLH0-3uHw
	for linux-rockchip@lists.infradead.org;
	Mon, 03 Aug 2026 05:15:57 +0000
Received: by mail-oi1-x236.google.com with SMTP id 5614622812f47-497d3e4460aso3200691b6e.1
        for <linux-rockchip@lists.infradead.org>; Sun, 02 Aug 2026 22:15:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1785734151; x=1786338951; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=e9FeknYPclzv16XYXDkTzfHxoN/DCYzLCAYv6oC+ejo=;
        b=AczR8RxuzpapfN0sqDrzdwDRC62mbl+CJC4DbFnzn5OUgIvgWJzBxNonwhIqpMiJN2
         bZfv++zJ9PGKZodJ+SMO+saLXpWkSr/kiMZLkr1NAMDmoRKA0oaZaJZ3o1F0SD4Dq9W+
         HtLSQ0HYHtwmF2EycJWCxJc/gcpDsxXNg3Cu2glsZpcGoICa5Ex3MW01zSSPUR0l+ETJ
         u3ZAxgnGtolnDqs3fR5+gyo/Yqe4gjQKbfFMm2GO1sNvjbQOVx5ZK9dujRfSsI3V+W7y
         CqUTK8L0Hz9lnf+3WBZOLQZgV7uexhpg3ZTuulCOeNZCJL8NusM4jfKMFsL+5yFEu8Lk
         jWFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1785734151; x=1786338951;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=e9FeknYPclzv16XYXDkTzfHxoN/DCYzLCAYv6oC+ejo=;
        b=YBEDv/7IvS3C1UTScBisTj4BOOVDIF9CYU1SPTUxwfHMR6t5iWObqHX/07O3zcE4NA
         EnLozRPKt+2/YoWNvcmuIuuD2p/lMWk4F0yQtJet/8rJSGwnQXcdNEw1faJh5Hy8Fpru
         rpEE9OSmm+3UNjhxzHVts2P6TIrEDkF2yvRtDYaVXOvPjodHgrl472y2ydbrzc4CXu4L
         Ko+XAUZ0RjtSl8waGAfysBMK91WGT+2UZXhHLXYZUW8iVrdpHmECBXkYywL5vk9vifcz
         zMJHYnCCEd+xoZ7ySrwuggRYeqryu1TnAUA0AdSCmJqKTqwQuvc0qk6HniEunrMXHDsd
         AYiA==
X-Forwarded-Encrypted: i=1; AHgh+RqZfOmPQn5Zt9TlDAbLAgzpKZUjByFNtO0U8SZ8v2INZNhQtdZRhKlCydPtnGdZsrzFoub6AFxH/4eOCT7/cg==@lists.infradead.org
X-Gm-Message-State: AOJu0Yx1PNlRDmnOm+j0+EQcsBS+v8ktluqRMyXFzsppx8BS3XPRxjBI
	eFOlIPMNf3iXtC4YAFcJ5VGCyNAR1SSlGIvmNnEdJMOIhDjqICb6LX/D
X-Gm-Gg: AR+sD121tramiaaEnx3A7CGxtThWymsoHyrLyuReYh5ut0TBdFTcp8TV22tPZf6aN0l
	dX5YrtpMzOw6hUc1Z1mZIbFbsQzsD3s0VzS796XTBNcDLTQVKX7pj40jFYTKNMuAStd+hBt3+p4
	LRM1tuds1dc5QZLkwC3p6WhU7pjx8J1Ke3/ahObLvqYtknn4j+PFJ25GWnM1FGhrxa+4oV5PF8b
	nXKjSN7nuPgmOHplyiCQ8SXxPCkxVoKNiOTv/kO7woNxvmVLebsffadNG0HZG924HBhv1JellfJ
	V+kTUYdeI0MH+mYxZiVChq5pDH6akFoQlsIHp1ad/2I7KkvFnfLNpxi5yaqWSt1PbMIoh5bxBwi
	8OPUrUQ6fZoD2euntOlRG6BtYPzqfMqshwWvXTKEIyQvIrrC/KR+Z4f+C/caVgsi1tyqG+GE2Lv
	ArR6cMY46Q2iG+qgyYHpDbKq3kFWDwlq0DRGrNN5kTNh7Hvt9pouQQx/enKBsXb+n2rBtOQ5v7x
	9u0K3pYkQxvhTfQ550CG27mLubnI0xYt3Uf2h93Uni4tkU6iedaPBR3go8I14m3x6riRLXU8W9n
	UJDxUTVh9dbNp9xjc0yYM5hZaNjaiUQevjZVpMeL5qpUoDYh3B5067IbW/h0tKx+vsKFpA3PsTi
	xVb0kIB8J3GUDI2JE
X-Received: by 2002:a05:6808:1797:b0:495:f697:92d9 with SMTP id 5614622812f47-4ae3188b02dmr15246163b6e.7.1785734151556;
        Sun, 02 Aug 2026 22:15:51 -0700 (PDT)
Received: from [127.0.1.1] (184-96-154-59.hlrn.qwest.net. [184.96.154.59])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-7f18f07a5e3sm6787108a34.15.2026.08.02.22.15.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 02 Aug 2026 22:15:51 -0700 (PDT)
From: James Hilliard <james.hilliard1@gmail.com>
Date: Sun, 02 Aug 2026 23:14:29 -0600
Subject: [PATCH 19/21] arm64: dts: allwinner: h6: add AC200 EPHY resources
MIME-Version: 1.0
Message-Id: <20260802-submit-acx00-of-dynamic-v1-v1-19-0a53cd9e21cc@gmail.com>
References: <20260802-submit-acx00-of-dynamic-v1-v1-0-0a53cd9e21cc@gmail.com>
In-Reply-To: <20260802-submit-acx00-of-dynamic-v1-v1-0-0a53cd9e21cc@gmail.com>
To: Andrew Lunn <andrew+netdev@lunn.ch>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Chen-Yu Tsai <wens@kernel.org>, 
 Jernej Skrabec <jernej.skrabec@gmail.com>, 
 Samuel Holland <samuel@sholland.org>, 
 Andre Przywara <andre.przywara@arm.com>, 
 Richard Genoud <richard.genoud@bootlin.com>, 
 Maxime Ripard <mripard@kernel.org>, 
 Alexandre Torgue <alexandre.torgue@foss.st.com>, 
 Giuseppe Cavallaro <peppe.cavallaro@st.com>, 
 Jose Abreu <joabreu@synopsys.com>, 
 Maxime Chevallier <maxime.chevallier@bootlin.com>, 
 Maxime Coquelin <mcoquelin.stm32@gmail.com>, Andrew Lunn <andrew@lunn.ch>, 
 Heiner Kallweit <hkallweit1@gmail.com>, 
 Russell King <linux@armlinux.org.uk>, 
 Saravana Kannan <saravanak@kernel.org>, Lee Jones <lee@kernel.org>, 
 Heiko Stuebner <heiko@sntech.de>
Cc: netdev@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev, 
 linux-kernel@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com, 
 mfd@lists.linux.dev, linux-rockchip@lists.infradead.org, 
 James Hilliard <james.hilliard1@gmail.com>
X-Mailer: b4 0.15.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260802_221552_988196_D2B8FCCE 
X-CRM114-Status: GOOD (  11.46  )
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

Add the H6 I2C3 controller and pinmux, the PWM-derived 24 MHz AC200
clock, SID calibration cells, RMII pinmux, and the AC200 MFD and EPHY
control nodes.

Describe the co-packaged AC200 INTB output on PB20. Keep both reusable
AC200 nodes disabled so boards must explicitly enable the parent and its
EPHY control function when the companion is present.

Signed-off-by: James Hilliard <james.hilliard1@gmail.com>
---
 arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi | 73 ++++++++++++++++++++++++++++
 1 file changed, 73 insertions(+)

diff --git a/arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi b/arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi
index 72ce1a75647b..55e6e185a4e5 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi
+++ b/arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi
@@ -17,6 +17,16 @@ / {
 	#address-cells = <1>;
 	#size-cells = <1>;
 
+	ac200_pwm_clk: ac200-clock {
+		compatible = "pwm-clock";
+		#clock-cells = <0>;
+		clock-frequency = <24000000>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&pwm1_pin>;
+		pwms = <&pwm 1 42 0>;
+		status = "disabled";
+	};
+
 	cpus {
 		#address-cells = <1>;
 		#size-cells = <0>;
@@ -314,6 +324,15 @@ ths_calibration: thermal-sensor-calibration@14 {
 			cpu_speed_grade: cpu-speed-grade@1c {
 				reg = <0x1c 0x4>;
 			};
+
+			ephy_calibration: ethernet-phy-calibration@2c,0 {
+				reg = <0x2c 1>;
+				bits = <0 4>;
+			};
+
+			ac200_bandgap: bandgap@30 {
+				reg = <0x30 2>;
+			};
 		};
 
 		timer@3009000 {
@@ -368,6 +387,13 @@ ext_rgmii_pins: rgmii-pins {
 				drive-strength = <40>;
 			};
 
+			ext_rmii_pins: rmii-pins {
+				pins = "PA0", "PA1", "PA2", "PA3", "PA4",
+				       "PA5", "PA6", "PA7", "PA8", "PA9";
+				function = "emac";
+				drive-strength = <40>;
+			};
+
 			hdmi_pins: hdmi-pins {
 				pins = "PH8", "PH9", "PH10";
 				function = "hdmi";
@@ -388,6 +414,12 @@ i2c2_pins: i2c2-pins {
 				function = "i2c2";
 			};
 
+			i2c3_pins: i2c3-pins {
+				pins = "PB17", "PB18";
+				function = "i2c3";
+				bias-pull-up;
+			};
+
 			mmc0_pins: mmc0-pins {
 				pins = "PF0", "PF1", "PF2", "PF3",
 				       "PF4", "PF5";
@@ -414,6 +446,11 @@ mmc2_pins: mmc2-pins {
 				bias-pull-up;
 			};
 
+			pwm1_pin: pwm1-pin {
+				pins = "PB19";
+				function = "pwm1";
+			};
+
 			/omit-if-no-ref/
 			spi0_pins: spi0-pins {
 				pins = "PC0", "PC2", "PC3";
@@ -626,6 +663,42 @@ i2c2: i2c@5002800 {
 			#size-cells = <0>;
 		};
 
+		i2c3: i2c@5002c00 {
+			compatible = "allwinner,sun50i-h6-i2c",
+				     "allwinner,sun6i-a31-i2c";
+			reg = <0x05002c00 0x400>;
+			interrupts = <GIC_SPI 7 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&ccu CLK_BUS_I2C3>;
+			resets = <&ccu RST_BUS_I2C3>;
+			pinctrl-names = "default";
+			pinctrl-0 = <&i2c3_pins>;
+			clock-frequency = <400000>;
+			status = "disabled";
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			ac200: mixed-signal@10 {
+				compatible = "x-powers,ac200";
+				reg = <0x10>;
+				clocks = <&ac200_pwm_clk>;
+				interrupt-parent = <&pio>;
+				interrupts = <1 20 IRQ_TYPE_LEVEL_LOW>;
+				interrupt-controller;
+				#interrupt-cells = <1>;
+				nvmem-cells = <&ac200_bandgap>;
+				nvmem-cell-names = "bandgap";
+				status = "disabled";
+
+				ac200_ephy_ctl: ethernet-phy-control {
+					compatible = "x-powers,ac200-ephy-ctl";
+					nvmem-cells = <&ephy_calibration>;
+					nvmem-cell-names = "calibration";
+					phy-mode = "rmii";
+					status = "disabled";
+				};
+			};
+		};
+
 		spi0: spi@5010000 {
 			compatible = "allwinner,sun50i-h6-spi",
 				     "allwinner,sun8i-h3-spi";

-- 
2.53.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
