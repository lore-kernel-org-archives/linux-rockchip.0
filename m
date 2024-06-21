Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B3C28C2BA1A
	for <linux-rockchip@archiver.kernel.org>; Fri, 21 Jun 2024 13:09:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Mt/Mp8nXlpIxFwYS92+QbKk+ySAWy7xLew6sayRb1I0=; b=cG1oJVxSaM2pOH
	GAendAjv13ZWQb2iE7QpK+hgI4dzf0wSqZo8X+Q65otEGG+SGQRFlLqRGhdHlT972Lkt8R15YQ8m3
	3kx0RHoVhwqmDZVu65VSD37MCNcXKmMG9Kdxz2tV9GFYUksTSs5ftKk6tKL19OVh11guD9neRB85w
	gt6nIuWFCxHhNThA4hjgrmJevL1FQhF5fWGR5CDhDuuU6qNGPAaMaG5d1TZy9MPkU3uM7sMtOCWie
	5LHkHZW+sGFaExEjYv08bXRXHqCfSwgHh0lP9eN4qH1ACGApTd44buGCxbVf/qcWDEwMUE4/pfu5a
	DQpNPvMrjVo/46LflpNg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sKe1M-00000009HQt-3nlO;
	Fri, 21 Jun 2024 13:09:40 +0000
Received: from mail-pf1-x42d.google.com ([2607:f8b0:4864:20::42d])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sKe1I-00000009HPe-2Kon;
	Fri, 21 Jun 2024 13:09:38 +0000
Received: by mail-pf1-x42d.google.com with SMTP id d2e1a72fcca58-7062bf6d9a1so1554886b3a.1;
        Fri, 21 Jun 2024 06:09:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1718975375; x=1719580175; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=zSRyH1ekCqW+EOMwB2OxYp1hmPOFI4J/Sw1gHh2C4Kk=;
        b=l5GQgobX3LD+XEN0FWL7wLSeWPve9PJXONbESHxRGgjGsr9Cl6WUrt3iSqcobk0sy7
         1lSy7mD3vvtcZF+X+G500k3NjyBJsn+V3vqvLdMWMbLOE8BrLu8ftXu6IOwjTFReo9Xg
         Q7YCX7bjG61GR8Oob7s7FRNk4tRlxg2KP9Y3TTIVZPe9NZWMxNLn7IWfJ3VuCBiyQao8
         +jeDQqjYnh/fX3eBMp386peD/SviwJ2UgX5WXvjboGpErPa+1ZRaql9bLlk4zVVyvHmA
         gWc+IB+K9UTaU+cGecq3km2HucW/JPn0GxTach3F2lrquhsVRxiCt/PWfNfCqXUASAbF
         zaYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718975375; x=1719580175;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=zSRyH1ekCqW+EOMwB2OxYp1hmPOFI4J/Sw1gHh2C4Kk=;
        b=FPwm6+Bxetyb+SQhST9Y6w/xCYmSAyDQwtztUxr6jB2qA8y3UYV2RhzoVCYbShPmOV
         FHklqKFCx2f7is+76XDI9kLZ7NBMrym9ZURAe7PwjtoA0FJUFEq7zTW7hDyUEPKE0Nt6
         FffSOqeQgw4eyhWC/4b3kyIsWv+82GfHhloLYTzI22VoRJJQGva8HN7IT8Bf6VYNzBAB
         ZPaG3JzBJAehOMSi2668G/K56ZcXYb3QKrXIUdVI0iCVQbBaDio1RjypRc+34OlbBTRe
         quNyo6B5EEle1HWwfLETeK4xMYXZjQx5vxVdDKolKUxVFjWASiDyVa5XcgT7ghPJdcWV
         9t1w==
X-Forwarded-Encrypted: i=1; AJvYcCUoPp0FK0bOPt8qDwXPlYpL5oadz+Qa+0rzPEhaqMddEwXnqFGlCzEmYz8zoR4U6ucSMXP6tR3DyPWTIP5ULc5XKSP+5917fk59KVC7juY0AWJArlFpWxo6Tm6XNCWsYprntrYeFMf9bTh9+kI+egCTC8NlBuDy7Us=
X-Gm-Message-State: AOJu0Yx8f/2t1fsd5NDmZxRlTO2dzhWxCGxKQ7KYTbV/LEHQ6bFWFjBe
	MZ7F1wrUHvYtPbirCOIzdc/gDV7jhMq3P++kHddWQIfEVQJcsq9N
X-Google-Smtp-Source: AGHT+IGLYWf8Lnm8V+aScxyqtWskuRogAGHiKVVoYmczB8UGJ+V6wEFazjIXslXnU7KGCIsbqFvOkw==
X-Received: by 2002:a05:6a20:12d4:b0:1b4:c499:788d with SMTP id adf61e73a8af0-1bcbb422be8mr9766233637.15.1718975374526;
        Fri, 21 Jun 2024 06:09:34 -0700 (PDT)
Received: from 167-179-157-192.a7b39d.syd.nbn.aussiebb.net (167-179-157-192.a7b39d.syd.nbn.aussiebb.net. [167.179.157.192])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-716baf4bedbsm1104611a12.76.2024.06.21.06.09.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 Jun 2024 06:09:33 -0700 (PDT)
From: Jonathan Liu <net147@gmail.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Jonathan Liu <net147@gmail.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] arm64: dts: rockchip: Enable RK809 audio codec for Radxa ROCK 4C+
Date: Fri, 21 Jun 2024 23:09:03 +1000
Message-ID: <20240621130903.2572986-1-net147@gmail.com>
X-Mailer: git-send-email 2.45.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240621_060936_615596_34B1993B 
X-CRM114-Status: GOOD (  10.70  )
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

This adds the necessary device tree changes to enable analog audio
output for the 3.5 mm TRS headphone jack on the Radxa ROCK 4C+ with
its RK809 audio codec.

Signed-off-by: Jonathan Liu <net147@gmail.com>
---
 .../boot/dts/rockchip/rk3399-rock-4c-plus.dts | 46 ++++++++++++++++++-
 1 file changed, 45 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rock-4c-plus.dts b/arch/arm64/boot/dts/rockchip/rk3399-rock-4c-plus.dts
index 972aea843afd..aafcce0f01e9 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-rock-4c-plus.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-rock-4c-plus.dts
@@ -53,6 +53,21 @@ led-1 {
 		};
 	};
 
+	rk809-sound {
+		compatible = "simple-audio-card";
+		simple-audio-card,format = "i2s";
+		simple-audio-card,name = "Analog RK809";
+		simple-audio-card,mclk-fs = <256>;
+
+		simple-audio-card,cpu {
+			sound-dai = <&i2s0>;
+		};
+
+		simple-audio-card,codec {
+			sound-dai = <&rk809>;
+		};
+	};
+
 	sdio_pwrseq: sdio-pwrseq {
 		compatible = "mmc-pwrseq-simple";
 		clocks = <&rk809 1>;
@@ -201,10 +216,13 @@ rk809: pmic@20 {
 		interrupt-parent = <&gpio1>;
 		interrupts = <RK_PC5 IRQ_TYPE_LEVEL_LOW>;
 		#clock-cells = <1>;
+		clock-names = "mclk";
+		clocks = <&cru SCLK_I2S_8CH_OUT>;
 		clock-output-names = "rk808-clkout1", "rk808-clkout2";
 		pinctrl-names = "default";
-		pinctrl-0 = <&pmic_int_l>;
+		pinctrl-0 = <&pmic_int_l>, <&i2s_8ch_mclk>;
 		rockchip,system-power-controller;
+		#sound-dai-cells = <0>;
 		wakeup-source;
 
 		vcc1-supply = <&vcc5v0_sys>;
@@ -446,6 +464,10 @@ &i2c3 {
 	status = "okay";
 };
 
+&i2s0 {
+	status = "okay";
+};
+
 &i2s2 {
 	status = "okay";
 };
@@ -473,6 +495,28 @@ bt_wake_l: bt-wake-l {
 		};
 	};
 
+	i2s0 {
+		i2s0_8ch_bus: i2s0-8ch-bus {
+			rockchip,pins =
+				<3 RK_PD0 1 &pcfg_pull_none>,
+				<3 RK_PD2 1 &pcfg_pull_none>,
+				<3 RK_PD3 1 &pcfg_pull_none>,
+				<3 RK_PD7 1 &pcfg_pull_none>;
+		};
+
+		i2s0_8ch_bus_bclk_off: i2s0-8ch-bus-bclk-off {
+			rockchip,pins =
+				<3 RK_PD0 RK_FUNC_GPIO &pcfg_pull_none>,
+				<3 RK_PD2 1 &pcfg_pull_none>,
+				<3 RK_PD3 1 &pcfg_pull_none>,
+				<3 RK_PD7 1 &pcfg_pull_none>;
+		};
+
+		i2s_8ch_mclk: i2s-8ch-mclk {
+			rockchip,pins = <4 RK_PA0 1 &pcfg_pull_none>;
+		};
+	};
+
 	leds {
 		user_led1: user-led1 {
 			rockchip,pins = <3 RK_PD4 RK_FUNC_GPIO &pcfg_pull_none>;
-- 
2.45.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
