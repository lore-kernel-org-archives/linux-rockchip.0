Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7B143C2BD05
	for <linux-rockchip@archiver.kernel.org>; Sun, 23 Jun 2024 16:53:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=EBOT5XLc0yRk+IP0/PEP/yAv4pOXaaeLnMlmU59f3GY=; b=uXHKQ6USybj9mX
	rJsl+Tw9lcT1HAv0TIjI0b4ih/4STlM660v/zjN4x7HDyopIMD51InBfzUZTAF5sOqnbbstpu40gd
	GhoS9zVg0u8CesMjjzR/foP0de0kM2uxpMZ7QbuTdo6/hSQuSOUcful8gxtr5STFixjEgcRJC4UhW
	XuFjv2U2ZP1x0zfh3w9h60CJx0DzXsWGkSqhKjvWkLhVv8WQ80E/ScEZF9TrVouiCXyPF5MBtiByJ
	JaRjrr/xIVeUqV5sUxlNPykRJNwJrA49ps1tEmcLYvjOLna6J0ATCnRQq6wkLCKAZcjAE+Qsq9dQn
	4jearhNKfzVWrt7jhl6Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sLQTB-0000000EQ1P-43g4;
	Sun, 23 Jun 2024 16:53:37 +0000
Received: from mail-wm1-x333.google.com ([2a00:1450:4864:20::333])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sLQT6-0000000EPzq-0gzu;
	Sun, 23 Jun 2024 16:53:33 +0000
Received: by mail-wm1-x333.google.com with SMTP id 5b1f17b1804b1-42189d3c7efso39260395e9.2;
        Sun, 23 Jun 2024 09:53:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1719161610; x=1719766410; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=2cf9yk09EjNDZwtAyhAEgmGAGgN/zlHlu+rRdJR22d0=;
        b=AytdC4ysIFK2hlM8OR7mZyl4yl5cy69zHCBTnMsuGo1O6HNebb89VG98LD64ujxx0L
         2vkiiWWhyyH+fGfkRErXXT6vk9cRfTY+OEzwblXX2wGgXFm73s7ZvS6KFx0/6KdEy3KO
         TUyzjGYLvggzKdqtTnzA9afrLWA2MF4Y2BttlYga6nAQJSMkdNCFkpx0fjnt6iwqhs06
         Retd8uBw5/qRkh0IWIIAniPKHlBQ2n1DoLbi1LR/mBw/Uw7R78O8WVU+be2OCfz0RAxc
         /1l/Yq6mw2Msx13Ya/KSCRHyIbcBu33caWuc3UGcVUzSyMkTulY+mJ7CfSBlxp5S2IP+
         5MEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719161610; x=1719766410;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=2cf9yk09EjNDZwtAyhAEgmGAGgN/zlHlu+rRdJR22d0=;
        b=v82/lHOp5HKV6G5DXePl+y6TPIXOPkvQHuvx+6FUtAQsO/dcBeS54xSyQsy0hzfBqh
         CUTu3MnD1jlJMSrDN9+vvAAGMcQKI8CkwShMUaDX1taOyyXzjOs7cJ1cUrsqNWNMP5Ju
         a5U25x+TwPD2aYZqqHlFybHTGD/zshNwzLXpBL8n7jb8nhs7SGh3doK5npiaS/rK8Xdn
         dgYOs3JQirCJwTLwbyQ2cnK1cuuduZb9mgenwexf87Fec6aC2rih8PSwy4cqgQMXKWVj
         UX72KVeynoxHLusm9icIpt7n9fZMw+peSg0VgQPMF8yOILfCUvXkIoDdlAuA9S6dlfq1
         JBfg==
X-Forwarded-Encrypted: i=1; AJvYcCWRPJA0mtLgqRmcHoWhui4wLilrSGBGipSVSDi0DPL3Uxdyv7HxQU5e0Ut4kOm82BqFkO9jMTDHbiayhSNKm3Yqn1cfBfATtAtD5aJfmJp6GnFp8zh5DuCpYLrMWUfMomYrUuC12QYtnrY542kiXie6I+zmwksgqOo=
X-Gm-Message-State: AOJu0YyI4tfxh147uJeL6DMXYiIDsP3ez+s2BjFEA+fUXrTia0Od9zmt
	HGallvyIqA2fbDmeiB+5jLnfY0Dhti1cEFTHOnqfIOBFi+f6Yf1t
X-Google-Smtp-Source: AGHT+IG2txdcv0fg+r/Nqnq3RkWX9Zad/0/2DTzCjUiOnF3LoNRJPz/AmHG+E+UEuJDw/pDFb/tL0A==
X-Received: by 2002:a05:600c:2146:b0:422:7a16:6986 with SMTP id 5b1f17b1804b1-4248cc27178mr18457725e9.9.1719161609436;
        Sun, 23 Jun 2024 09:53:29 -0700 (PDT)
Received: from morpheus.home.roving-it.com (8.c.1.0.0.0.0.0.0.0.0.0.0.0.0.0.1.8.6.2.1.1.b.f.0.b.8.0.1.0.0.2.ip6.arpa. [2001:8b0:fb11:2681::1c8])
        by smtp.googlemail.com with ESMTPSA id 5b1f17b1804b1-4247d0bea05sm144835555e9.18.2024.06.23.09.53.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 23 Jun 2024 09:53:29 -0700 (PDT)
From: Peter Robinson <pbrobinson@gmail.com>
To: Heiko Stuebner <heiko@sntech.de>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Cc: Peter Robinson <pbrobinson@gmail.com>
Subject: [PATCH 1/3] arm64: dts: rockchip: Add Pinephone Pro support for GPIO LEDs
Date: Sun, 23 Jun 2024 17:53:20 +0100
Message-ID: <20240623165326.1273944-1-pbrobinson@gmail.com>
X-Mailer: git-send-email 2.45.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240623_095332_302231_55D46108 
X-CRM114-Status: GOOD (  11.64  )
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

The PinePhone Pro has a cluster of 3 single RGB GPIO LEDs.
Add the GPIO entries for the 3 red/green/blue LEDs and an
entry for the multi-color group to allow them to be used
as a combined RGB LED.

Signed-off-by: Peter Robinson <pbrobinson@gmail.com>
---
 .../dts/rockchip/rk3399-pinephone-pro.dts     | 43 +++++++++++++++++++
 1 file changed, 43 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-pinephone-pro.dts b/arch/arm64/boot/dts/rockchip/rk3399-pinephone-pro.dts
index e5709c7ee06aa..5e46f682f0f0b 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-pinephone-pro.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-pinephone-pro.dts
@@ -12,6 +12,7 @@
 /dts-v1/;
 #include <dt-bindings/input/gpio-keys.h>
 #include <dt-bindings/input/linux-event-codes.h>
+#include <dt-bindings/leds/common.h>
 #include "rk3399.dtsi"
 #include "rk3399-opp.dtsi"
 
@@ -69,6 +70,34 @@ key-power {
 		};
 	};
 
+	leds {
+		compatible = "gpio-leds";
+		pinctrl-names = "default";
+		pinctrl-0 = <&red_led_pin &green_led_pin &blue_led_pin>;
+
+		led_red: led-0 {
+			color = <LED_COLOR_ID_RED>;
+			gpios = <&gpio4 RK_PD2 GPIO_ACTIVE_HIGH>;
+		};
+
+		led_green: led-1 {
+			color = <LED_COLOR_ID_GREEN>;
+			gpios = <&gpio4 RK_PD5 GPIO_ACTIVE_HIGH>;
+		};
+
+		led_blue: led-2 {
+			color = <LED_COLOR_ID_BLUE>;
+			gpios = <&gpio4 RK_PD6 GPIO_ACTIVE_HIGH>;
+		};
+	};
+
+	multi-led {
+		compatible = "leds-group-multicolor";
+		color = <LED_COLOR_ID_RGB>;
+		function = LED_FUNCTION_INDICATOR;
+		leds = <&led_red>, <&led_green>, <&led_blue>;
+	};
+
 	vcc_sys: vcc-sys-regulator {
 		compatible = "regulator-fixed";
 		regulator-name = "vcc_sys";
@@ -481,6 +510,20 @@ pwrbtn_pin: pwrbtn-pin {
 		};
 	};
 
+	leds {
+		red_led_pin: red-led-pin {
+			rockchip,pins = <4 RK_PD2 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+
+		green_led_pin: green-led-pin {
+			rockchip,pins = <4 RK_PD5 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+
+		blue_led_pin: blue-led-pin {
+			rockchip,pins = <4 RK_PD6 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+
 	pmic {
 		pmic_int_l: pmic-int-l {
 			rockchip,pins = <1 RK_PC5 RK_FUNC_GPIO &pcfg_pull_up>;
-- 
2.45.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
