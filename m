Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 003A6CEACD5
	for <linux-rockchip@archiver.kernel.org>; Tue,  1 Oct 2024 15:49:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8XQxYWgoqJmqaTbeqLaA/WwyGmR6FgoF/nEYfAWgffo=; b=qn6YcrOJ8cL42j
	dzYa622uDa10mXlb4kxxMeK1Ym7les5/dCGhAm8Ieg0okZzDmxs3fUvfkpYV50Gfv1ihJ6RPwPdV7
	PnYCq4IP1Jbaw5RnjG1LkpV7Gz6tmBb3NLo43S4n8Akr9C0is5XVy3FtaXuS8XYLLPgSAmMQaSRC5
	+Mw9bgS4t9FVf9IxyFfnVkgRgcnV9XGH3SxXqK9olsyEQO50R9luZJ1tGT0GYdAndJrKW0qrJCaX5
	koXzC9UvA1vb6wgyhmCsFhDO1yM9/Ay1jvRs2Sy5IlQRX/gxzppQhi3vozjW6lfJCnGb0la6JtMc5
	eIYjnNWl/Pq0TD3IX2zQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1svf80-00000003OAi-3V1v;
	Tue, 01 Oct 2024 15:49:32 +0000
Received: from mail-oi1-x22e.google.com ([2607:f8b0:4864:20::22e])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1svf1R-00000003Md6-1e3d
	for linux-rockchip@lists.infradead.org;
	Tue, 01 Oct 2024 15:42:46 +0000
Received: by mail-oi1-x22e.google.com with SMTP id 5614622812f47-3e037a7d2c3so3073231b6e.0
        for <linux-rockchip@lists.infradead.org>; Tue, 01 Oct 2024 08:42:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1727797364; x=1728402164; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=oNsrm5wfGwJrCSxE78fY+2C3NP2/Z5aeTtNfv5/sTTI=;
        b=aOAUv7YUCZIfIuucIHX8qHFGsMSWgDXvftOP+lUiAJFXp/mqC37x4UAXispXIigid/
         qqqa7XbgGUAV0h2cbM93TvpS4tqoWveX4IdvcR4fZ6vSAC/AeXGK7xaPA+67noaTgIsp
         5Emht9VQ8yJYsUxewVZlLnmEaPc18Wio1haVxR56SYLDAAgf8z7CgurSxiqiDUeSUQut
         BqP1JIdfyTVA1o5XnhoDTtk25VR4NsjGIKUeRmyagkXSJigburmuT6vevlKsUovKQ6LD
         Sf5SE8ZpT45pEqtXEFE3tjGwRQhNXnaz6hkX4Q9KLsQs6enqAiFlurBjXqFEfignRdak
         nHcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727797364; x=1728402164;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=oNsrm5wfGwJrCSxE78fY+2C3NP2/Z5aeTtNfv5/sTTI=;
        b=cUI7RH/Uj0tTKQHkKgsyTKVw6vBw2yK/Lst9viSIyYrAJdS27KyYlw29i5NH0/C0gi
         SfzUdaupUwcyJhxEXMDRJHUg3zhaDi2lYCC/8XY9OtQ3lNmcn/CfQpUAT/UXbjNhFBQI
         uShnIxc0C1D3bYaERrg6XSYabhXZ9MJYdgriT7U2LJy9VI1rv4up6ysuJQQdr8gjMYSd
         z19yhta9U54019Yt5W09MUZAj1Omiw8ZaUVUKxN9hPvaGFYWsalNo/xNh1iQ32MuVijQ
         Cm5yRkqqAi4dBRk8H8QyGqlDj3+k4xBBUCVsfBTQo1bXdpt+JQ1CQQvM4Txv3VFpRwRp
         oVqQ==
X-Gm-Message-State: AOJu0YzdsNmPnrDsBT0MXdUyZSN+AtSNvEKW7hQf11C2ZF0c45RQy4Fg
	vpgj5BjlpUuliNDgyC2ncbiXlkuMsFT0wpz1G2/KUS/OKVFn+u+9zYVfylz0
X-Google-Smtp-Source: AGHT+IEoidGgYCbP9q2oqxtoVmSp5rGAmO2bN39lB7Q1a0rgi+FaVO84uwVqFAKnZfGSp0/ahxDyjw==
X-Received: by 2002:a05:6808:1825:b0:3e2:8d62:ce4e with SMTP id 5614622812f47-3e3acb4376dmr1740148b6e.4.1727797363866;
        Tue, 01 Oct 2024 08:42:43 -0700 (PDT)
Received: from localhost.localdomain ([2600:1700:fb0:1bcf::54])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-3e3935c6293sm3120485b6e.53.2024.10.01.08.42.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 01 Oct 2024 08:42:42 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: devicetree@vger.kernel.org,
	heiko@sntech.de,
	conor+dt@kernel.org,
	krzk+dt@kernel.org,
	robh@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH 2/2] arm64: dts: rockchip: Add Powkiddy RGB20SX
Date: Tue,  1 Oct 2024 10:40:16 -0500
Message-ID: <20241001154016.87386-3-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20241001154016.87386-1-macroalpha82@gmail.com>
References: <20241001154016.87386-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241001_084245_471214_5D8F9E74 
X-CRM114-Status: GOOD (  16.28  )
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

The Powkiddy RGB20SX is a portable game console extremely similar to
the existing RGB30 console. The key differences from the RGB30 are
as follows:

 - Realtek RTW8723DS WiFi and Bluetooth.
 - UART pads for debug console (UART2).
 - A function button (ADC channel 0).
 - A much larger battery (5000 mAh).

Otherwise, the device is identical to the RGB30, including the
hard-coded value on ADC channel 1 used to identify the device at
runtime.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 arch/arm64/boot/dts/rockchip/Makefile         |  1 +
 .../dts/rockchip/rk3566-powkiddy-rgb20sx.dts  | 89 +++++++++++++++++++
 2 files changed, 90 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3566-powkiddy-rgb20sx.dts

diff --git a/arch/arm64/boot/dts/rockchip/Makefile b/arch/arm64/boot/dts/rockchip/Makefile
index 09423070c992..8021e5190ece 100644
--- a/arch/arm64/boot/dts/rockchip/Makefile
+++ b/arch/arm64/boot/dts/rockchip/Makefile
@@ -91,6 +91,7 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-pinenote-v1.2.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-pinetab2-v0.1.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-pinetab2-v2.0.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-powkiddy-rgb10max3.dtb
+dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-powkiddy-rgb20sx.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-powkiddy-rgb30.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-powkiddy-rk2023.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-powkiddy-x55.dtb
diff --git a/arch/arm64/boot/dts/rockchip/rk3566-powkiddy-rgb20sx.dts b/arch/arm64/boot/dts/rockchip/rk3566-powkiddy-rgb20sx.dts
new file mode 100644
index 000000000000..9b70026ce4a5
--- /dev/null
+++ b/arch/arm64/boot/dts/rockchip/rk3566-powkiddy-rgb20sx.dts
@@ -0,0 +1,89 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+
+/dts-v1/;
+
+#include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/input/linux-event-codes.h>
+#include <dt-bindings/pinctrl/rockchip.h>
+#include "rk3566-powkiddy-rk2023.dtsi"
+
+/ {
+	model = "Powkiddy RGB20SX";
+	compatible = "powkiddy,rgb20sx", "rockchip,rk3566";
+
+	chosen: chosen {
+		stdout-path = "serial2:1500000n8";
+	};
+
+	adc_keys: adc-keys {
+		compatible = "adc-keys";
+		io-channels = <&saradc 0>;
+		io-channel-names = "buttons";
+		keyup-threshold-microvolt = <1800000>;
+		poll-interval = <60>;
+
+		/*
+		 * Button is labelled as FN, but according to input
+		 * guidelines it should be mode.
+		 */
+		button-mode {
+			label = "MODE";
+			linux,code = <BTN_MODE>;
+			press-threshold-microvolt = <1750>;
+		};
+	};
+};
+
+&battery {
+	charge-full-design-microamp-hours = <5000000>;
+};
+
+&bluetooth {
+	compatible = "realtek,rtl8723ds-bt";
+};
+
+&cru {
+	assigned-clocks = <&pmucru CLK_RTC_32K>, <&cru PLL_GPLL>,
+			  <&pmucru PLL_PPLL>, <&cru PLL_VPLL>;
+	assigned-clock-rates = <32768>, <1200000000>,
+			       <200000000>, <292500000>;
+};
+
+&dsi0 {
+	panel: panel@0 {
+		compatible = "powkiddy,rgb30-panel";
+		reg = <0>;
+		backlight = <&backlight>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&lcd_rst>;
+		reset-gpios = <&gpio4 RK_PA0 GPIO_ACTIVE_LOW>;
+		vcc-supply = <&vcc3v3_lcd0_n>;
+		iovcc-supply = <&vcc3v3_lcd0_n>;
+
+		port {
+			mipi_in_panel: endpoint {
+				remote-endpoint = <&mipi_out_panel>;
+			};
+		};
+	};
+};
+
+&i2c0 {
+	vdd_cpu: regulator@1c {
+		compatible = "tcs,tcs4525";
+		reg = <0x1c>;
+		fcs,suspend-voltage-selector = <1>;
+		regulator-min-microvolt = <712500>;
+		regulator-max-microvolt = <1390000>;
+		regulator-name = "vdd_cpu";
+		regulator-ramp-delay = <2300>;
+		vin-supply = <&vcc_sys>;
+		regulator-state-mem {
+			regulator-off-in-suspend;
+		};
+	};
+};
+
+&uart2 {
+	status = "okay";
+};
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
