Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D59C9C77B7F
	for <linux-rockchip@archiver.kernel.org>; Fri, 12 May 2023 19:17:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=0UNTF1OkU42Ym2z/+8xO1v9hO3Zry8XyHc88vlqtinc=; b=DGDfWGa4oSMtgh
	gIB5+/OuKGFXHye1l6Q8qgVjXt7RXTqQF8PP+ByA5G4rcukKlGmg9sNFjm0NCNVZjwYxfiy+GzHyn
	oNiuncG6Hc3cRwRS6WbNq6EjnYFgLwJRVj3heITDtAXG6LKtgRkOTjFAckkdoSUkbpa9V2CT/cWfa
	kheYqqNgMT08EQiKzLmGqrmwRb3S/lrk9t9Gk3V8zLR4k+I4w94yL6jRmo6y1+uJlOW0PLUPKLQvG
	M+8RuL7r6uGUmeriaQG1x95NVcAdnGJp5o3olKm60FGVhu+h/ZlFfJpbTR6bMvFE6INNtMS/S7+8K
	4XkpmK3xwDeh2bScLwwA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pxYG2-00Cmy3-0c;
	Fri, 12 May 2023 19:16:50 +0000
Received: from mail-oi1-x229.google.com ([2607:f8b0:4864:20::229])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pxYFz-00Cmx7-03
	for linux-rockchip@lists.infradead.org;
	Fri, 12 May 2023 19:16:48 +0000
Received: by mail-oi1-x229.google.com with SMTP id 5614622812f47-38ea3f8e413so5208922b6e.2
        for <linux-rockchip@lists.infradead.org>; Fri, 12 May 2023 12:16:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1683919005; x=1686511005;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=kEpGRsh5mvkK0y8EGva7fncjVhmgrH88oIK8Gwzmri8=;
        b=DhSBeb6gMVdQm1NeJbixY29FZS1GB+G322uijhbF+sbxl0TrncV2HTB6Q7Y0SEjYsR
         wcNs0DTBl3jDIT9Ltt3HYp9UV63Vp/3mK85EK4QhlsbKT7mbh3ft4belq+vRQqzCbLUL
         F1oYgBTXAUT2LVh/9d35vh8+dq4sFJKlqNaRe2phsNvRgC8KRAVnSOl51FNBXvWgIr2d
         AslSJdsfF/X3RuJWoLNsAZqvRSGcXkkNd19oy69sMTxwleMJnrTCutiTk0bx4l+A6zTz
         NM7e109WDXpjU/qQaKnZK2X7pLQNQO7TyyCRKBdaelrBOc0msbOO63NqFNIY/bL39bWb
         GAeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683919005; x=1686511005;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=kEpGRsh5mvkK0y8EGva7fncjVhmgrH88oIK8Gwzmri8=;
        b=bRylrxK05KdO9HGIRHp0ewgrUbJTVFFUTVztwnkZKd2Rp40pkNmqYzBWMZcDXBMIxx
         LUY6qlcfbUoeAf7DK/ZXCFovwvBJ9X9cS2qZ+tXkVrohl26Sa40RWtHQIHuteebieKh6
         XLHuT6Z/9mmMpwmuMfBpTzvypQJCnGiuuxfmo2I4gFvHUcqGth5t+Do8tmSWKEjVsSqN
         vrl28LIrBaIFPRgeCLvuyYKVZjlC3G8xmVDrzEk+mfi3kHTAqL3V79SqRNfz+7PNGqsz
         WYDIi2tkGntnfB/wr/BDdEArJEpolsL4ysCT6Ontn6uQmtrjPC6q6cjCnX9kdvvyV7HZ
         w13Q==
X-Gm-Message-State: AC+VfDwz8UTCsYK5suFQ3WZbdejJB7GfsOVvFCXfPvTnguQMKYgNwVTP
	DqnS5yGTOOs8mM+8fo/OfgaUn852tQ1kvg==
X-Google-Smtp-Source: ACHHUZ4oMunQEvTJk/SBgnzsntxzn/r+5g2AbFnXi5QkFxt0HdroBrhMUwalk6CEvbvyUDOxFs+Z7g==
X-Received: by 2002:aca:220e:0:b0:384:3f55:ab96 with SMTP id b14-20020aca220e000000b003843f55ab96mr6225377oic.25.1683919004915;
        Fri, 12 May 2023 12:16:44 -0700 (PDT)
Received: from localhost.localdomain ([76.244.6.13])
        by smtp.gmail.com with ESMTPSA id r81-20020acaf354000000b0038ee0c3b38esm4817681oih.44.2023.05.12.12.16.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 12 May 2023 12:16:44 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: devicetree@vger.kernel.org,
	heiko@sntech.de,
	conor+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	robh+dt@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH] arm64: dts: rockchip: Update leds for Anbernic RGxx3 Series
Date: Fri, 12 May 2023 14:16:33 -0500
Message-Id: <20230512191633.33416-1-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230512_121647_097321_D8088551 
X-CRM114-Status: GOOD (  10.15  )
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

From: Chris Morgan <macromorgan@hotmail.com>

Each of the LEDs on the RGxx3 which is currently controlled via GPIO
can also be controlled via a PWM. Change each of the LEDs to PWM so
that users have the ability to adjust the brightness of the LEDs
according to their preference.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 .../dts/rockchip/rk3566-anbernic-rgxx3.dtsi   | 39 +++++++++++--------
 1 file changed, 22 insertions(+), 17 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rgxx3.dtsi b/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rgxx3.dtsi
index 8fadd8afb190..69f332738d24 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rgxx3.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rgxx3.dtsi
@@ -191,30 +191,30 @@ hdmi_con_in: endpoint {
 		};
 	};
 
-	leds: gpio-leds {
-		compatible = "gpio-leds";
-		pinctrl-0 = <&led_pins>;
-		pinctrl-names = "default";
+	leds: pwm-leds {
+		compatible = "pwm-leds";
 
 		green_led: led-0 {
 			color = <LED_COLOR_ID_GREEN>;
 			default-state = "on";
 			function = LED_FUNCTION_POWER;
-			gpios = <&gpio0 RK_PC5 GPIO_ACTIVE_HIGH>;
+			max-brightness = <255>;
+			pwms = <&pwm6 0 25000 0>;
 		};
 
 		amber_led: led-1 {
 			color = <LED_COLOR_ID_AMBER>;
 			function = LED_FUNCTION_CHARGING;
-			gpios = <&gpio0 RK_PC6 GPIO_ACTIVE_HIGH>;
-			retain-state-suspended;
+			max-brightness = <255>;
+			pwms = <&pwm7 0 25000 0>;
 		};
 
 		red_led: led-2 {
 			color = <LED_COLOR_ID_RED>;
 			default-state = "off";
 			function = LED_FUNCTION_STATUS;
-			gpios = <&gpio0 RK_PC7 GPIO_ACTIVE_HIGH>;
+			max-brightness = <255>;
+			pwms = <&pwm0 0 25000 0>;
 		};
 	};
 
@@ -597,15 +597,6 @@ btn_pins_vol: btn-pins-vol {
 		};
 	};
 
-	gpio-led {
-		led_pins: led-pins {
-			rockchip,pins =
-				<0 RK_PC5 RK_FUNC_GPIO &pcfg_pull_none>,
-				<0 RK_PC6 RK_FUNC_GPIO &pcfg_pull_none>,
-				<0 RK_PC7 RK_FUNC_GPIO &pcfg_pull_none>;
-		};
-	};
-
 	joy-mux {
 		joy_mux_en: joy-mux-en {
 			rockchip,pins =
@@ -654,10 +645,24 @@ &pmu_io_domains {
 	vccio7-supply = <&vcc_3v3>;
 };
 
+&pwm0 {
+	pinctrl-0 = <&pwm0m1_pins>;
+	pinctrl-names = "default";
+	status = "okay";
+};
+
 &pwm5 {
 	status = "okay";
 };
 
+&pwm6 {
+	status = "okay";
+};
+
+&pwm7 {
+	status = "okay";
+};
+
 &saradc {
 	vref-supply = <&vcc_1v8>;
 	status = "okay";
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
