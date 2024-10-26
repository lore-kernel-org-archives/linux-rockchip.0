Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CCBDBD10BF6
	for <linux-rockchip@archiver.kernel.org>; Sat, 26 Oct 2024 10:03:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wy8lBMnIQcASvZDOl5iOWscZ4J+ZLMqp4Jss2Sj+BGQ=; b=sO6p3ffItrcmyV
	vWk46Xss0KABnvJtkdQAP7nEYLEr754cjc92eu/oYCw980edY2rVvu3Gfou/vc7wcP3yYAW4/0KUO
	HhztZcmZzMTvX9rvSI2paXNkUtpHvzdb8v9R953+OMXyqOJWNLUJ/0WMeTgJkPpQHlssJMJ0fCJZx
	DE7BRvOh41EeH4ZnQMVdc22S83h8kDMsHTLKXFVDvXMJZbSNWwl3csCgLRnqT/H7WWAzHAvIF6DQu
	ivb1oy7qqNT/O4HG7TgAc8g6QlG8z6HQwmecpL3j08cnLnZTLVVBoR86XO1vGHXvV7FhUQEvlwRZO
	cHYFktZnfyIPdvIMLrFA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t4de0-00000006Kpo-1vXG;
	Sat, 26 Oct 2024 10:03:40 +0000
Received: from mail-ot1-x335.google.com ([2607:f8b0:4864:20::335])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t4ddv-00000006Kmo-0ocv
	for linux-rockchip@lists.infradead.org;
	Sat, 26 Oct 2024 10:03:36 +0000
Received: by mail-ot1-x335.google.com with SMTP id 46e09a7af769-7181b86a749so1501200a34.3
        for <linux-rockchip@lists.infradead.org>; Sat, 26 Oct 2024 03:03:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1729937014; x=1730541814; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ikQinEU8DnSuzan7Q2x3yM30D0mwxJ1OP0EuX9uqPK4=;
        b=JZ/BGN/JrX7RkTMPkBIjyJNir7nqGkbm4+aDzjjo7kkHczQQfQib2+tn0dwyhAY7eh
         RKQiWYdROeSEOFjllEh36x556t0ZvCYVvkc7+cV2IDe53OJGAtxVc35/yHdnGnipIyUj
         bJilL1XXM++jO1urYqyNtI/qeCzkSoA7dQEv5cMCqeStFT76YH4mjo2f1PLgVsJSWRfb
         jCxyBpMmSmeQy8VFuVYrz3v47tTx/TTuEdPDlU+L3AZUG1m1saR/nq4Xdr+16Shtn7O7
         SGbmhpszq8X52IG0lsZkcEDJQrzYDCLCW400us+ESQ5uETYJmB+D/i4P6beWf2jbLwjT
         asOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729937014; x=1730541814;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ikQinEU8DnSuzan7Q2x3yM30D0mwxJ1OP0EuX9uqPK4=;
        b=jD3QYzL4+pTTf+DiDtI3Nj2m5eIXzxNTFwzZ0pNBuZ2ebhp1mFKlgCWb0jagyipI8N
         3S2WH9Njmi7kioNazHTGcQGtdyzs24xVmVgL61t+r+NDedfnWMZe+V42iFfJwgsCnP/V
         L0NB11NR7S9to2e3TXaXaCDjHzmcgnlXmIo8r+823jcW4hhKo3ov5MNIg3N0TSJ905oy
         xcazV1J9EDWhwVEfnS0aXRYB1mJNgknmyGO9xTbuYcqSzyNlmSRYq1+9/2ZiYimVmuPo
         +iq/Hx0uzhkdF+iZOwNG7aujfPbt/O5K96G0+brbREDmwSv6tD9JC2VOQ7olQbBagOQl
         IeRw==
X-Forwarded-Encrypted: i=1; AJvYcCU3aR+zGNLyRGRQC7p9PFZ6EuRm/W0zgLOz4HFJaZFQL+49S6/nROiT0/U520ju6CVyuDxpQz4fbV7ngrOaBA==@lists.infradead.org
X-Gm-Message-State: AOJu0YxozE0/G7XOVtAdAf6dAustdMLTXGiX1dAQPTByUpn5vrTz0CsK
	ZTpVu/v6rMk91MIJpIoxAg6CAjWW1PbVjjK6WelfG4nztPAruVUp
X-Google-Smtp-Source: AGHT+IGGFOlXCwhkwhnufwNjpSEglxiaU8EryiNdRJ1rxaExPtzL8v5Gjebj0lwoFkayI9tAoJGSMw==
X-Received: by 2002:a05:6830:2703:b0:718:1863:a3fa with SMTP id 46e09a7af769-7186801ea8bmr1388130a34.10.1729937014097;
        Sat, 26 Oct 2024 03:03:34 -0700 (PDT)
Received: from tower.cjhon.com ([2603:8081:ad40:11:cefb:5eea:7da6:3c6d])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-7186165841asm632243a34.48.2024.10.26.03.03.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 26 Oct 2024 03:03:33 -0700 (PDT)
From: Jimmy Hon <honyuenkwun@gmail.com>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-rockchip@lists.infradead.org,
	Ondrej Jirman <megi@xff.cz>,
	Jimmy Hon <honyuenkwun@gmail.com>
Subject: [PATCH 03/15] arm64: dts: rockchip: add status LED to opi5max
Date: Sat, 26 Oct 2024 04:48:19 -0500
Message-ID: <20241026100310.52679-4-honyuenkwun@gmail.com>
X-Mailer: git-send-email 2.47.0
In-Reply-To: <20241026100310.52679-1-honyuenkwun@gmail.com>
References: <20241026100310.52679-1-honyuenkwun@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241026_030335_254197_774BE0A2 
X-CRM114-Status: UNSURE (   9.18  )
X-CRM114-Notice: Please train this message.
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

Describe the Orange Pi 5 Max 2 status LEDs in its device tree.

Signed-off-by: Jimmy Hon <honyuenkwun@gmail.com>
---
 .../dts/rockchip/rk3588-orangepi-5-max.dts    | 35 +++++++++++++++++++
 1 file changed, 35 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-max.dts b/arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-max.dts
index 53a34cb37487..83a118e52bb0 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-max.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-max.dts
@@ -3,6 +3,7 @@
 /dts-v1/;
 
 #include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/leds/common.h>
 #include <dt-bindings/pinctrl/rockchip.h>
 #include "rk3588.dtsi"
 
@@ -19,6 +20,28 @@ chosen {
 		stdout-path = "serial2:1500000n8";
 	};
 
+	pwm-leds {
+		compatible = "pwm-leds";
+
+		blue_led: led-1 {
+			color = <LED_COLOR_ID_BLUE>;
+			function = LED_FUNCTION_STATUS;
+			linux,default-trigger = "heartbeat";
+			max-brightness = <255>;
+			/* PWM_LED1 */
+			pwms = <&pwm4 0 25000 0>;
+		};
+
+		green_led: led-2 {
+			color = <LED_COLOR_ID_GREEN>;
+			function = LED_FUNCTION_STATUS;
+			linux,default-trigger = "heartbeat";
+			max-brightness = <255>;
+			/* PWM_LED2 */
+			pwms = <&pwm5 0 25000 0>;
+		};
+	};
+
 	/* PMIC_EXT_EN */
 	vcc_1v1_nldo_s3: vcc-1v1-ndlo-s3-regulator {
 		compatible = "regulator-fixed";
@@ -127,6 +150,18 @@ regulator-state-mem {
 	};
 };
 
+&pwm4 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pwm4m0_pins>;
+	status = "okay";
+};
+
+&pwm5 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pwm5m1_pins>;
+	status = "okay";
+};
+
 &saradc {
 	vref-supply = <&vcca_1v8_s0>;
 	status = "okay";
-- 
2.47.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
