Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8673BC47089
	for <linux-rockchip@archiver.kernel.org>; Thu,  1 Dec 2022 20:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=C0+s2/8oMbujD7x/hdSSkN2Yc4vwE0idmKhQxxhZ4Es=; b=wsIumg6Fc8mczv
	22cBRY9gHhVZI28MCdtI8krBMhNDgkHRA+khFRJmiGRpAgsump5qY6qz+YmeeroUO/US4jZcLhqVt
	NSBGp/CmAP3c6qv4Jpn3HlPdsYfJYfoTEBx1kF9cAaDrmrQLsTtubFmvTTSTASRyNdq6P5R7Z2cct
	GjlG2QHMiTtevLgGaoxXAkahBxguB5C65rb/dOWoSkcXVlkBCaynos6M1yCBYE1fWLxbv1M9jGrfK
	qJmVRvgykLtNQP1tjIkqZ1mqKnXYZwTJSw0ECYx8tE6heCChhjS7F+zvFznpUp4HTyAV33F+C9bzW
	nifLKlW+zCIuQF24BKjw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p0qOF-00AucM-NB; Thu, 01 Dec 2022 20:42:39 +0000
Received: from mail-oi1-x22f.google.com ([2607:f8b0:4864:20::22f])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p0qIt-00ArCo-Mf
	for linux-rockchip@lists.infradead.org; Thu, 01 Dec 2022 20:37:09 +0000
Received: by mail-oi1-x22f.google.com with SMTP id c129so3363263oia.0
        for <linux-rockchip@lists.infradead.org>; Thu, 01 Dec 2022 12:37:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=O9DWfkSi/N1IMySUHdlxHV43RaSOxsmartbv0wgiizw=;
        b=W/1EJx6UGea0iXmce0+SKrB4wiLm79ah4qyz629fypLwx3BEH8Ihu1Goc6r9CslHeT
         xi/26q5OEDO28jpODKTjEZtUu8TiWrqiB7o21u7LSg4tTSwSboVIysp6VoansFz8Dl4V
         zO0EbcYfhzqv/NsETPomS2KsQi7IO6hEzXmBX98f84WRoXTvEQG8sDJyvqMqGJYJm2UX
         e7kZrnsYyLQrNglGNdUkawe7VtJiIw2Pv7MPNGjYj52V8J9pcdfYd+NMhIyaXqrE4ERZ
         6my14xVLyqjSVYkbqkA6nH2OHfEGlqY62QVQWrdbvYSsxwpOJO+qWnLtYz5PcNXft2CZ
         TaPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=O9DWfkSi/N1IMySUHdlxHV43RaSOxsmartbv0wgiizw=;
        b=KNSO/mfM5ubaQWyGYSaH54zyg8s2TByLfNlkuR8/+Ud9COInKYLsx2B//6e2t0E5YN
         G3daN8nZe69jjPgXVpcoifa1x7WqGsvgQhFAzrVvcX3HqvIVxPiNUtuFdSEO26F1yNk9
         Eoxe0jYhwwszrvmajo0wadKesyflcdxdpaS81qp+aIQyy2o9nyiudVs5VLcvOKV+2i8s
         8is/xfPEe8rwxh1kN3lnRi85hzuAkMpzQ/C3b6sH+FO3BZFyR9W56k0MVoyFSz2lf+71
         1vqURCNfURPVyBY6ahZVsec73okIeC3gX4eMkSefB1bXaJzyMtRvBzLjUIiI5CC8+HSw
         3Urw==
X-Gm-Message-State: ANoB5pn1epCVK5QQQtnsew7DmzKKAolgV2Qqwn5RR7jOBDCjke8ve0AN
	M+0SS+Uno5bMtk121M25GiJPbkCusQM=
X-Google-Smtp-Source: AA0mqf7WpouCg2PO2wK0kyOSGdZ0Z5PBu5YT2P8YxXt8TBxZ9MHxyySfq2AARIXSCneqTJFgTb23cg==
X-Received: by 2002:a05:6808:b26:b0:35b:9b00:b4fc with SMTP id t6-20020a0568080b2600b0035b9b00b4fcmr14938401oij.91.1669927024469;
        Thu, 01 Dec 2022 12:37:04 -0800 (PST)
Received: from localhost.localdomain ([76.244.6.13])
        by smtp.gmail.com with ESMTPSA id r81-20020a4a3754000000b0049fd73ccf72sm2142142oor.42.2022.12.01.12.37.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 01 Dec 2022 12:37:03 -0800 (PST)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: devicetree@vger.kernel.org,
	maccraft123mc@gmail.com,
	heiko@sntech.de,
	krzysztof.kozlowski+dt@linaro.org,
	robh+dt@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH 4/4] arm64: dts: rockchip: Update leds for Odroid Go Advance
Date: Thu,  1 Dec 2022 14:36:55 -0600
Message-Id: <20221201203655.1245-5-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221201203655.1245-1-macroalpha82@gmail.com>
References: <20221201203655.1245-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221201_123707_759957_111BA4A1 
X-CRM114-Status: GOOD (  12.46  )
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

Update the blue LED to be controlled via pwm to enable control of LED
brightness. Add red LED as a GPIO controlled LED. The documentation
stated "label" was depreciated so function and color was used instead.
The LED names (led-2 and led-3) are given because that is what they
are numbered on the board itself; LED 1 is wired directly into an
always on regulator and is not controllable. LED 2 is labelled "alive"
on the board and documentation recommends we set the function as
status over other miscellaneous functions. LED 3 is labelled "chg" on
the board.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 .../boot/dts/rockchip/rk3326-odroid-go.dtsi   | 33 +++++++++++++++----
 1 file changed, 26 insertions(+), 7 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3326-odroid-go.dtsi b/arch/arm64/boot/dts/rockchip/rk3326-odroid-go.dtsi
index 802be64626d6..8ea2af72a7bc 100644
--- a/arch/arm64/boot/dts/rockchip/rk3326-odroid-go.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3326-odroid-go.dtsi
@@ -8,6 +8,7 @@
 /dts-v1/;
 #include <dt-bindings/gpio/gpio.h>
 #include <dt-bindings/input/input.h>
+#include <dt-bindings/leds/common.h>
 #include <dt-bindings/pinctrl/rockchip.h>
 #include "rk3326.dtsi"
 
@@ -113,15 +114,29 @@ button-sw16 {
 		};
 	};
 
-	leds: gpio-leds {
+/* led-1 is wired directly to output of always-on regulator */
+
+	gpio_led: gpio-leds {
 		compatible = "gpio-leds";
 		pinctrl-names = "default";
-		pinctrl-0 = <&blue_led_pin>;
+		pinctrl-0 = <&red_led_pin>;
+
+		red_led: led-3 {
+			color = <LED_COLOR_ID_RED>;
+			gpios = <&gpio0 RK_PB5 GPIO_ACTIVE_HIGH>;
+			function = LED_FUNCTION_CHARGING;
+		};
+	};
 
-		blue_led: led-0 {
-			label = "blue:heartbeat";
-			gpios = <&gpio0 RK_PC1 GPIO_ACTIVE_HIGH>;
+	pwm_led: led-controller {
+		compatible = "pwm-leds";
+
+		blue_led: led-2 {
+			color = <LED_COLOR_ID_BLUE>;
+			function = LED_FUNCTION_STATUS;
 			linux,default-trigger = "heartbeat";
+			max-brightness = <255>;
+			pwms = <&pwm3 0 25000 0>;
 		};
 	};
 
@@ -465,6 +480,10 @@ &pwm1 {
 	status = "okay";
 };
 
+&pwm3 {
+	status = "okay";
+};
+
 &saradc {
 	vref-supply = <&vcc_1v8>;
 	status = "okay";
@@ -569,8 +588,8 @@ hp_det: hp-det {
 	};
 
 	leds {
-		blue_led_pin: blue-led-pin {
-			rockchip,pins = <0 RK_PC1 RK_FUNC_GPIO &pcfg_pull_none>;
+		red_led_pin: red-led-pin {
+			rockchip,pins = <0 RK_PB5 RK_FUNC_GPIO &pcfg_pull_none>;
 		};
 	};
 
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
