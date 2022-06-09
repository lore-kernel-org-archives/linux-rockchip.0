Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DE85FC433EF
	for <linux-rockchip@archiver.kernel.org>; Thu,  9 Jun 2022 11:55:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FYJGKTOfr8MKcbRGR8NQRgTKwA0kgwVuRPX9Yy55Qvk=; b=duj9BJSjUKgQaz
	ehon2jMl4iNwxZQ3uWmo338bxxfG6ArEnYH/eTQUFTHyKHqTlLyEsVafNlHyxAVCMXmUnU9t2nRBM
	D/QLCWe9McR3fyVBtoKzb1uFIaqL05sfv6O9GF5XgCvJ9lNBGqEqwENs2MdQNpmsRE6nLZaoUMmtz
	6+5x0Jv3LpkAse3Ew8bpp1F50lsWIXeM8INFhkGOfVRO7PA6D3Z8UDz82Wg8HE3Cv9edZs3Inlzz/
	v0rzpzINQkPGbFivwwSpfLMqmrE3oSpaAUamyA8JIa7vkzNL+h9mRcZUIwBXtHwLtqpr5BA0V5WkD
	blhpUw303Gmxcwgitc7g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nzGlD-001Vxv-Tr; Thu, 09 Jun 2022 11:55:35 +0000
Received: from mail-ed1-x536.google.com ([2a00:1450:4864:20::536])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nzGWk-001PM9-T9
	for linux-rockchip@lists.infradead.org; Thu, 09 Jun 2022 11:40:44 +0000
Received: by mail-ed1-x536.google.com with SMTP id v25so30825217eda.6
        for <linux-rockchip@lists.infradead.org>; Thu, 09 Jun 2022 04:40:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=6E1822zqmeR434mGS2TCsjkIyd0y0F8I8Lnrj27v+VA=;
        b=k+Qe1VBgs50sahiMlASBeeTlbm+9vLVBaP8VMGkAztmofTZTBOFFIn5p18zdieGOsB
         de14TChGH7n2Akdyy2F1wJ2TEuIIB5j4n77napx9L+pBsIHMPwLunTaLd89y/X2URCI5
         pWNPJrUECbgYBapkDbmYdGrwnOt0r6+HpxNDB6ayguqvo5kKTRXFlr/VprouHTj2nbVk
         sSfPdYfkaXLh9m6Xwglj+4EO9sYiU7HKyBkYwB6HfE5a7DdB6l/fusUL4ByJXuRDup21
         m/6IqWQz1gok52/Lw9m3tqt8hmPeMrr+5hwGUWSoo6s0dIhHLtTTTqz4VWMzmLFrtIaL
         51yg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=6E1822zqmeR434mGS2TCsjkIyd0y0F8I8Lnrj27v+VA=;
        b=n5PqEx4LznAKhZtgWoRktIIkiBhcSYhxv4KVPthXahiIy7tsvsqrUonN5r2vY0+U4W
         GA+nqsvOdve8wBQxcqyWNtSusHmpoI2GvnApuUuYzXh350Rw+64Y11gfHmpSW77psfTX
         YIgXTJAmwhNBAeFVE2njenyK8XAXb+qnVPrjcqrPWldxqyPBNVm3Odl8B4zFiK11I6T5
         /Wc+YkYZi8ySjwh7ZVlBEiJs9DfXH5CZ2cVvNxxnu32zMcL+V+Z1ga3rG50BU7HG3Bav
         HpXn1REMpaxeo7f2nxjWYUIKuQCSOA6/BcWvXENaG851xNC6twq9m2o8V0oZeS7fO+id
         5GGg==
X-Gm-Message-State: AOAM533WlGX2qBHg5M9UbE+rgh+aS/VyCoMfeaJuM3gYO+baa5HrLnGt
	lOC0BQXa9Pq/jLJ/fL2Ph69vOQ==
X-Google-Smtp-Source: ABdhPJyRucBWM0zsEoD394rr4/Uhn518CmMvxTBau47Tj99+LIp4dwj/x2iw/YvvczHedU0gbmtwzg==
X-Received: by 2002:a05:6402:4410:b0:427:ab6f:a39a with SMTP id y16-20020a056402441000b00427ab6fa39amr44759736eda.120.1654774835077;
        Thu, 09 Jun 2022 04:40:35 -0700 (PDT)
Received: from localhost.localdomain (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id 10-20020a170906058a00b007101f6f0720sm7760844ejn.120.2022.06.09.04.40.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Jun 2022 04:40:34 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Arnd Bergmann <arnd@arndb.de>,
	Olof Johansson <olof@lixom.net>,
	arm@kernel.org,
	soc@kernel.org,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v2 32/48] arm64: dts: rockchip: align gpio-key node names with dtschema
Date: Thu,  9 Jun 2022 13:40:19 +0200
Message-Id: <20220609114026.380682-3-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220609113721.379932-1-krzysztof.kozlowski@linaro.org>
References: <20220609113721.379932-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220609_044039_012066_BB690B43 
X-CRM114-Status: GOOD (  12.00  )
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

The node names should be generic and DT schema expects certain pattern
(e.g. with key/button/switch).

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm64/boot/dts/rockchip/rk3308-evb.dts   |  2 +-
 .../boot/dts/rockchip/rk3326-odroid-go2.dts   | 32 +++++++++----------
 .../boot/dts/rockchip/rk3328-nanopi-r2s.dts   |  2 +-
 arch/arm64/boot/dts/rockchip/rk3368-evb.dtsi  |  2 +-
 .../boot/dts/rockchip/rk3368-geekbox.dts      |  2 +-
 .../dts/rockchip/rk3368-orion-r68-meta.dts    |  2 +-
 .../boot/dts/rockchip/rk3368-px5-evb.dts      |  2 +-
 arch/arm64/boot/dts/rockchip/rk3368-r88.dts   |  2 +-
 .../boot/dts/rockchip/rk3399-firefly.dts      |  2 +-
 .../dts/rockchip/rk3399-gru-chromebook.dtsi   |  2 +-
 .../boot/dts/rockchip/rk3399-gru-kevin.dts    |  2 +-
 .../boot/dts/rockchip/rk3399-gru-scarlet.dtsi |  2 +-
 .../boot/dts/rockchip/rk3399-khadas-edge.dtsi |  2 +-
 .../boot/dts/rockchip/rk3399-nanopi-r4s.dts   |  4 +--
 .../boot/dts/rockchip/rk3399-nanopi4.dtsi     |  2 +-
 .../boot/dts/rockchip/rk3399-orangepi.dts     |  2 +-
 .../boot/dts/rockchip/rk3399-pinebook-pro.dts |  4 +--
 .../boot/dts/rockchip/rk3399-roc-pc.dtsi      |  2 +-
 .../boot/dts/rockchip/rk3399-rockpro64.dtsi   |  2 +-
 .../boot/dts/rockchip/rk3399-sapphire.dtsi    |  2 +-
 .../boot/dts/rockchip/rk3566-pinenote.dtsi    |  2 +-
 21 files changed, 38 insertions(+), 38 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3308-evb.dts b/arch/arm64/boot/dts/rockchip/rk3308-evb.dts
index 9b4f855ea5d4..4b5413b12bfa 100644
--- a/arch/arm64/boot/dts/rockchip/rk3308-evb.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3308-evb.dts
@@ -75,7 +75,7 @@ gpio-keys {
 		pinctrl-names = "default";
 		pinctrl-0 = <&pwr_key>;
 
-		power {
+		power-key {
 			gpios = <&gpio0 RK_PA6 GPIO_ACTIVE_LOW>;
 			linux,code = <KEY_POWER>;
 			label = "GPIO Key Power";
diff --git a/arch/arm64/boot/dts/rockchip/rk3326-odroid-go2.dts b/arch/arm64/boot/dts/rockchip/rk3326-odroid-go2.dts
index ea0695b51ecd..72328dd993ee 100644
--- a/arch/arm64/boot/dts/rockchip/rk3326-odroid-go2.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3326-odroid-go2.dts
@@ -71,82 +71,82 @@ gpio-keys {
 		 * |------------------------------------------------|
 		 */
 
-		sw1 {
+		switch-1 {
 			gpios = <&gpio1 RK_PB4 GPIO_ACTIVE_LOW>;
 			label = "DPAD-UP";
 			linux,code = <BTN_DPAD_UP>;
 		};
-		sw2 {
+		switch-2 {
 			gpios = <&gpio1 RK_PB5 GPIO_ACTIVE_LOW>;
 			label = "DPAD-DOWN";
 			linux,code = <BTN_DPAD_DOWN>;
 		};
-		sw3 {
+		switch-3 {
 			gpios = <&gpio1 RK_PB6 GPIO_ACTIVE_LOW>;
 			label = "DPAD-LEFT";
 			linux,code = <BTN_DPAD_LEFT>;
 		};
-		sw4 {
+		switch-4 {
 			gpios = <&gpio1 RK_PB7 GPIO_ACTIVE_LOW>;
 			label = "DPAD-RIGHT";
 			linux,code = <BTN_DPAD_RIGHT>;
 		};
-		sw5 {
+		switch-5 {
 			gpios = <&gpio1 RK_PA2 GPIO_ACTIVE_LOW>;
 			label = "BTN-A";
 			linux,code = <BTN_EAST>;
 		};
-		sw6 {
+		switch-6 {
 			gpios = <&gpio1 RK_PA5 GPIO_ACTIVE_LOW>;
 			label = "BTN-B";
 			linux,code = <BTN_SOUTH>;
 		};
-		sw7 {
+		switch-7 {
 			gpios = <&gpio1 RK_PA6 GPIO_ACTIVE_LOW>;
 			label = "BTN-Y";
 			linux,code = <BTN_WEST>;
 		};
-		sw8 {
+		switch-8 {
 			gpios = <&gpio1 RK_PA7 GPIO_ACTIVE_LOW>;
 			label = "BTN-X";
 			linux,code = <BTN_NORTH>;
 		};
-		sw9 {
+		switch-9 {
 			gpios = <&gpio2 RK_PA0 GPIO_ACTIVE_LOW>;
 			label = "F1";
 			linux,code = <BTN_TRIGGER_HAPPY1>;
 		};
-		sw10 {
+		switch-10 {
 			gpios = <&gpio2 RK_PA1 GPIO_ACTIVE_LOW>;
 			label = "F2";
 			linux,code = <BTN_TRIGGER_HAPPY2>;
 		};
-		sw11 {
+		switch-11 {
 			gpios = <&gpio2 RK_PA2 GPIO_ACTIVE_LOW>;
 			label = "F3";
 			linux,code = <BTN_TRIGGER_HAPPY3>;
 		};
-		sw12 {
+		switch-12 {
 			gpios = <&gpio2 RK_PA3 GPIO_ACTIVE_LOW>;
 			label = "F4";
 			linux,code = <BTN_TRIGGER_HAPPY4>;
 		};
-		sw13 {
+		switch-13 {
 			gpios = <&gpio2 RK_PA4 GPIO_ACTIVE_LOW>;
 			label = "F5";
 			linux,code = <BTN_TRIGGER_HAPPY5>;
 		};
-		sw14 {
+		switch-14 {
 			gpios = <&gpio2 RK_PA5 GPIO_ACTIVE_LOW>;
 			label = "F6";
 			linux,code = <BTN_TRIGGER_HAPPY6>;
 		};
-		sw15 {
+		switch-15 {
 			gpios = <&gpio2 RK_PA6 GPIO_ACTIVE_LOW>;
 			label = "TOP-LEFT";
 			linux,code = <BTN_TL>;
 		};
-		sw16 {
+		switch-16 {
 			gpios = <&gpio2 RK_PA7 GPIO_ACTIVE_LOW>;
 			label = "TOP-RIGHT";
 			linux,code = <BTN_TR>;
diff --git a/arch/arm64/boot/dts/rockchip/rk3328-nanopi-r2s.dts b/arch/arm64/boot/dts/rockchip/rk3328-nanopi-r2s.dts
index 3857d487ab84..1445b879ac7a 100644
--- a/arch/arm64/boot/dts/rockchip/rk3328-nanopi-r2s.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3328-nanopi-r2s.dts
@@ -34,7 +34,7 @@ keys {
 		pinctrl-0 = <&reset_button_pin>;
 		pinctrl-names = "default";
 
-		reset {
+		key-reset {
 			label = "reset";
 			gpios = <&gpio0 RK_PA0 GPIO_ACTIVE_LOW>;
 			linux,code = <KEY_RESTART>;
diff --git a/arch/arm64/boot/dts/rockchip/rk3368-evb.dtsi b/arch/arm64/boot/dts/rockchip/rk3368-evb.dtsi
index 15d1fc541c38..083452c67711 100644
--- a/arch/arm64/boot/dts/rockchip/rk3368-evb.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3368-evb.dtsi
@@ -76,7 +76,7 @@ keys: gpio-keys {
 		pinctrl-names = "default";
 		pinctrl-0 = <&pwr_key>;
 
-		power {
+		key-power {
 			wakeup-source;
 			gpios = <&gpio0 RK_PA2 GPIO_ACTIVE_LOW>;
 			label = "GPIO Power";
diff --git a/arch/arm64/boot/dts/rockchip/rk3368-geekbox.dts b/arch/arm64/boot/dts/rockchip/rk3368-geekbox.dts
index 62aa97a0b8c9..be06e6e64d18 100644
--- a/arch/arm64/boot/dts/rockchip/rk3368-geekbox.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3368-geekbox.dts
@@ -43,7 +43,7 @@ keys: gpio-keys {
 		pinctrl-names = "default";
 		pinctrl-0 = <&pwr_key>;
 
-		power {
+		key-power {
 			gpios = <&gpio0 RK_PA2 GPIO_ACTIVE_LOW>;
 			label = "GPIO Power";
 			linux,code = <KEY_POWER>;
diff --git a/arch/arm64/boot/dts/rockchip/rk3368-orion-r68-meta.dts b/arch/arm64/boot/dts/rockchip/rk3368-orion-r68-meta.dts
index 3ebe15e03cf4..f4c60623c905 100644
--- a/arch/arm64/boot/dts/rockchip/rk3368-orion-r68-meta.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3368-orion-r68-meta.dts
@@ -44,7 +44,7 @@ keys: gpio-keys {
 		pinctrl-names = "default";
 		pinctrl-0 = <&pwr_key>;
 
-		power {
+		key-power {
 			wakeup-source;
 			gpios = <&gpio0 RK_PA5 GPIO_ACTIVE_HIGH>;
 			label = "GPIO Power";
diff --git a/arch/arm64/boot/dts/rockchip/rk3368-px5-evb.dts b/arch/arm64/boot/dts/rockchip/rk3368-px5-evb.dts
index 5ccaa5f7a370..29df84b81552 100644
--- a/arch/arm64/boot/dts/rockchip/rk3368-px5-evb.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3368-px5-evb.dts
@@ -30,7 +30,7 @@ keys: gpio-keys {
 		pinctrl-names = "default";
 		pinctrl-0 = <&pwr_key>;
 
-		power {
+		key-power {
 			gpios = <&gpio0 RK_PA2 GPIO_ACTIVE_LOW>;
 			label = "GPIO Power";
 			linux,code = <KEY_POWER>;
diff --git a/arch/arm64/boot/dts/rockchip/rk3368-r88.dts b/arch/arm64/boot/dts/rockchip/rk3368-r88.dts
index 959d3cc801f2..38d757c00548 100644
--- a/arch/arm64/boot/dts/rockchip/rk3368-r88.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3368-r88.dts
@@ -37,7 +37,7 @@ keys: gpio-keys {
 		pinctrl-names = "default";
 		pinctrl-0 = <&pwr_key>;
 
-		power {
+		key-power {
 			wakeup-source;
 			gpios = <&gpio0 RK_PA2 GPIO_ACTIVE_LOW>;
 			label = "GPIO Power";
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-firefly.dts b/arch/arm64/boot/dts/rockchip/rk3399-firefly.dts
index b340c9e246c4..c5db64f3e124 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-firefly.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-firefly.dts
@@ -87,7 +87,7 @@ gpio-keys {
 		pinctrl-names = "default";
 		pinctrl-0 = <&pwrbtn>;
 
-		power {
+		key-power {
 			debounce-interval = <100>;
 			gpios = <&gpio0 RK_PA5 GPIO_ACTIVE_LOW>;
 			label = "GPIO Key Power";
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-gru-chromebook.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-gru-chromebook.dtsi
index 50d459ee4831..cd074641884b 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-gru-chromebook.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-gru-chromebook.dtsi
@@ -206,7 +206,7 @@ gpio_keys: gpio-keys {
 		pinctrl-names = "default";
 		pinctrl-0 = <&bt_host_wake_l>;
 
-		wake_on_bt: wake-on-bt {
+		wake_on_bt: key-wake-on-bt {
 			label = "Wake-on-Bluetooth";
 			gpios = <&gpio0 3 GPIO_ACTIVE_LOW>;
 			linux,code = <KEY_WAKEUP>;
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-gru-kevin.dts b/arch/arm64/boot/dts/rockchip/rk3399-gru-kevin.dts
index 6863689df06f..2cc9b3386c16 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-gru-kevin.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-gru-kevin.dts
@@ -92,7 +92,7 @@ &gpio_keys {
 	pinctrl-names = "default";
 	pinctrl-0 = <&bt_host_wake_l>, <&cpu1_pen_eject>;
 
-	pen-insert {
+	switch-pen-insert {
 		label = "Pen Insert";
 		/* Insert = low, eject = high */
 		gpios = <&gpio0 13 GPIO_ACTIVE_LOW>;
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-gru-scarlet.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-gru-scarlet.dtsi
index 913d845eb51a..0dadac51daa6 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-gru-scarlet.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-gru-scarlet.dtsi
@@ -183,7 +183,7 @@ gpio_keys: gpio-keys {
 		pinctrl-names = "default";
 		pinctrl-0 = <&pen_eject_odl>;
 
-		pen-insert {
+		switch-pen-insert {
 			label = "Pen Insert";
 			/* Insert = low, eject = high */
 			gpios = <&gpio1 1 GPIO_ACTIVE_LOW>;
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-khadas-edge.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-khadas-edge.dtsi
index 46c4581deb8d..2a332763c35c 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-khadas-edge.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-khadas-edge.dtsi
@@ -136,7 +136,7 @@ gpio-keys {
 		pinctrl-names = "default";
 		pinctrl-0 = <&pwrbtn>;
 
-		power {
+		key-power {
 			debounce-interval = <100>;
 			gpios = <&gpio0 RK_PA5 GPIO_ACTIVE_LOW>;
 			label = "GPIO Key Power";
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-nanopi-r4s.dts b/arch/arm64/boot/dts/rockchip/rk3399-nanopi-r4s.dts
index cef4d18b599d..fe5b52610010 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-nanopi-r4s.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-nanopi-r4s.dts
@@ -46,9 +46,9 @@ wan_led: led-wan {
 	gpio-keys {
 		pinctrl-0 = <&reset_button_pin>;
 
-		/delete-node/ power;
+		/delete-node/ key-power;
 
-		reset {
+		key-reset {
 			debounce-interval = <50>;
 			gpios = <&gpio1 RK_PC6 GPIO_ACTIVE_LOW>;
 			label = "reset";
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-nanopi4.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-nanopi4.dtsi
index 248ad41a976b..278123b4f911 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-nanopi4.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-nanopi4.dtsi
@@ -111,7 +111,7 @@ gpio-keys {
 		pinctrl-names = "default";
 		pinctrl-0 = <&power_key>;
 
-		power {
+		key-power {
 			debounce-interval = <100>;
 			gpios = <&gpio0 RK_PA5 GPIO_ACTIVE_LOW>;
 			label = "GPIO Key Power";
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-orangepi.dts b/arch/arm64/boot/dts/rockchip/rk3399-orangepi.dts
index ed856bfcfc33..9e2e246e0bab 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-orangepi.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-orangepi.dts
@@ -78,7 +78,7 @@ keys: gpio-keys {
 		compatible = "gpio-keys";
 		autorepeat;
 
-		power {
+		key-power {
 			debounce-interval = <100>;
 			gpios = <&gpio0 RK_PA5 GPIO_ACTIVE_LOW>;
 			label = "GPIO Power";
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts b/arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts
index d6b68d77d63a..194e48c755f6 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts
@@ -76,7 +76,7 @@ gpio-key-lid {
 		pinctrl-names = "default";
 		pinctrl-0 = <&lidbtn_pin>;
 
-		lid {
+		switch-lid {
 			debounce-interval = <20>;
 			gpios = <&gpio1 RK_PA1 GPIO_ACTIVE_LOW>;
 			label = "Lid";
@@ -92,7 +92,7 @@ gpio-key-power {
 		pinctrl-names = "default";
 		pinctrl-0 = <&pwrbtn_pin>;
 
-		power {
+		key-power {
 			debounce-interval = <20>;
 			gpios = <&gpio0 RK_PA5 GPIO_ACTIVE_LOW>;
 			label = "Power";
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi
index 0e45cc2d195b..acb174d3a8c5 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi
@@ -54,7 +54,7 @@ gpio-keys {
 		pinctrl-names = "default";
 		pinctrl-0 = <&pwr_key_l>;
 
-		power {
+		key-power {
 			debounce-interval = <100>;
 			gpios = <&gpio0 RK_PA5 GPIO_ACTIVE_LOW>;
 			label = "GPIO Key Power";
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi
index 6fdeee7d5f6d..78157521e944 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi
@@ -42,7 +42,7 @@ gpio-keys {
 		pinctrl-names = "default";
 		pinctrl-0 = <&pwrbtn>;
 
-		power {
+		key-power {
 			debounce-interval = <100>;
 			gpios = <&gpio0 RK_PA5 GPIO_ACTIVE_LOW>;
 			label = "GPIO Key Power";
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-sapphire.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-sapphire.dtsi
index 2aa0fad8f893..e6ac292ce645 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-sapphire.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-sapphire.dtsi
@@ -53,7 +53,7 @@ keys: gpio-keys {
 		compatible = "gpio-keys";
 		autorepeat;
 
-		power {
+		key-power {
 			debounce-interval = <100>;
 			gpios = <&gpio0 RK_PA5 GPIO_ACTIVE_LOW>;
 			label = "GPIO Power";
diff --git a/arch/arm64/boot/dts/rockchip/rk3566-pinenote.dtsi b/arch/arm64/boot/dts/rockchip/rk3566-pinenote.dtsi
index e01668e6e5f9..ea0fa627c464 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-pinenote.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3566-pinenote.dtsi
@@ -49,7 +49,7 @@ gpio-keys {
 		pinctrl-0 = <&hall_int_l>;
 		pinctrl-names = "default";
 
-		cover {
+		switch {
 			label = "cover";
 			gpios = <&gpio0 RK_PC7 GPIO_ACTIVE_LOW>;
 			linux,input-type = <EV_SW>;
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
