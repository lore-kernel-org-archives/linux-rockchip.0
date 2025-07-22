Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3ACE2C87FC5
	for <linux-rockchip@archiver.kernel.org>; Tue, 22 Jul 2025 17:00:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=psgaXwDo9wU3hdw9fr2OFq0yBO/6zkHYhQySEFiqb1c=; b=l13fgCuegqtmbH
	jL/pSqn1MxeRaneSe/WLaYb6nA4FW6Mi3FLkNP7mSC+USjdzIgPoLDFdgZvrHnfXZpKUVm5YPzrA8
	GNrJDRZhkxGODtDolf1+fiVAAPbuun2H9DmYWYp6FeFqkYNW0UzY1ueoTwN3ILed1n2Ndis5YE0s7
	jENCkzTtM0U197M45CVU8HvXW+nQuLB1ARx0vCLwZMdybVuai/LjTcwrZPPdpAt0lY34VWbGwLyqc
	8OxCYZkquxGzQYUoKahJjrD13HkyGUMo5iGIblYv/IRfwQo3HKG3C+cZwuSGsh31lEmcog/uRwPtD
	KfG+T6AYNk0YzmkDY3WA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ueGLg-000000034xV-286a;
	Tue, 22 Jul 2025 17:00:16 +0000
Received: from mail-ot1-x32d.google.com ([2607:f8b0:4864:20::32d])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ueGCN-0000000343f-3rhq
	for linux-rockchip@lists.infradead.org;
	Tue, 22 Jul 2025 16:50:41 +0000
Received: by mail-ot1-x32d.google.com with SMTP id 46e09a7af769-73e650f3c31so1673035a34.3
        for <linux-rockchip@lists.infradead.org>; Tue, 22 Jul 2025 09:50:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1753203039; x=1753807839; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4T4j4YN6oDQNPwiIArxxsv6eScMKL6EZdlZnxxjmhd4=;
        b=Fkom7S3SJpyDBglBu/TdV47ROeDKLwsO3K4krDj7JGvvEvYb5IuVbBg/eUTDJ4sd86
         KmHhVniQqJOF7NAbcyK+0KByOtpIOHnczyBAxVqHV0k/pYvWHB0NX0iVGsN/ZQm2kar4
         N1oLZ8rIS5AoEu9vKwkB8zR3QqX8Feaml0LwmoOg2yLCBCvCmqiTQC5R0QlhaWL1GMq6
         0cPWZAiyVUm5BHZ+K79WL36s/UjCyMl/GfMTy4YC7qJQkjNJNURO9HcunN19vZRq7pK1
         DjQ3i6lpBVyf5Z2qgqDMzQUfgMy2+la10Msw4NapFlLYnRC58bbkviyBW890gb/WcBa2
         +pjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753203039; x=1753807839;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=4T4j4YN6oDQNPwiIArxxsv6eScMKL6EZdlZnxxjmhd4=;
        b=sibsSy0PvPMTlPvQMTJGO7ENox3/ntO2tn3Ac/JNG0ELHcIoiCpPpsbdIZUWa1QYza
         c+YyW4Gd00JHUIdK69JRp+esav7SABWk2//VuQESc3Zn8RfHtURRCdoYEWq8QQ3yxTEv
         5+9IgEK8up7AT/+e8Z/N7+gDqTOnLQeMDt14vlF0T6htv8EzZeHAGvVDA9La6UCvXrVZ
         ZhkiygXgRyA0NztUNdSP4UQVxC6Sno08fM1ccJgr9cCOqfjy7c0U0BiUtrU5zdKRki58
         qBATvi5c7OVKOelxK7tW7eJvCQ61cxad5UrPFrSdfzEWqRBFQMn74CosxyBWOJ4n5O6L
         2D5Q==
X-Gm-Message-State: AOJu0YzZism0gTXADtKdrdsGP411Zmj6LA5xt0KG7rlyIM5rqv0IaIAp
	lpihuNQxJe34g1RP6KJyKQpltUezt9mdsrUl59u5IqWR7PbLFjV+92Ol
X-Gm-Gg: ASbGncvy5QNcT8jRJZ5xWzkdZkmdvSnQ87pu0aSUwVEAw2PWOkX+wzXsvn6vRtXaySC
	SJBIRfuVdhKvF5fg68cYDfuaCG8vDmIa5DUWd4vhm8g4IKv3qwCg2u7QFrbqnJQ2lOTIXsq8YkI
	0t4akiNjxxdVxyCIRCm2J5YFgV9nFG3HXuem5SFQSFG4mZ35PlA7DNivvRZxoHOQb6/dgKb6xb5
	I7vlVKq803rB0AI+oZTYTxHJdF1atPvjML1zSZtseQftcT6yHlz1VwaHYU7LoRGqBt0G1KRL5on
	nO/pNl8mRK9NSf9HrOnLaHSondQ4XhNTUMvtBVWrICLKPViH9M+jOZ1tWbG0xMz5ZbGW9A8oyL8
	ztSnLGZEpRsclo1o/q1HTWREBmtPDb0X6pMggiFl1UQ==
X-Google-Smtp-Source: AGHT+IHeokX8OkKg9W5UgnjJNzRiPmYK0pExqvXzV2Dk0UVjxbyU6VknKu05HUKkhXdFOZFmldubDg==
X-Received: by 2002:a05:6808:219b:b0:41c:e915:2117 with SMTP id 5614622812f47-41f9945c148mr11726625b6e.34.1753203038871;
        Tue, 22 Jul 2025 09:50:38 -0700 (PDT)
Received: from localhost.localdomain ([2600:1700:fb0:1bc0:a130:f3a0:d203:abc8])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-41fd59531d8sm2935217b6e.42.2025.07.22.09.50.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 22 Jul 2025 09:50:38 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-pm@vger.kernel.org
Cc: linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	broonie@kernel.org,
	lgirdwood@gmail.com,
	sre@kernel.org,
	heiko@sntech.de,
	conor+dt@kernel.org,
	krzk+dt@kernel.org,
	robh@kernel.org,
	lee@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH v5 5/5] arm64: dts: rockchip: Add USB and charger to Gameforce Ace
Date: Tue, 22 Jul 2025 11:48:12 -0500
Message-ID: <20250722164813.2110874-6-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250722164813.2110874-1-macroalpha82@gmail.com>
References: <20250722164813.2110874-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250722_095039_975506_64F3B587 
X-CRM114-Status: GOOD (  10.58  )
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

Add support for the BQ25703A charger manager and boost regulator to
the Gameforce Ace. Add the USB-C port and PHY as well as they all
depend on each other for operation.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 .../dts/rockchip/rk3588s-gameforce-ace.dts    | 122 ++++++++++++++++++
 1 file changed, 122 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-gameforce-ace.dts b/arch/arm64/boot/dts/rockchip/rk3588s-gameforce-ace.dts
index 873a2bd6a6de..e1ec1b3f4fc1 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-gameforce-ace.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-gameforce-ace.dts
@@ -575,6 +575,56 @@ &i2c6 {
 	pinctrl-0 = <&i2c6m3_xfer>;
 	status = "okay";
 
+	fusb302: typec@22 {
+		compatible = "fcs,fusb302";
+		reg = <0x22>;
+		interrupt-parent = <&gpio0>;
+		interrupts = <RK_PC7 IRQ_TYPE_LEVEL_LOW>;
+		pinctrl-0 = <&usbc0_int>;
+		pinctrl-names = "default";
+		vbus-supply = <&usb_otg_vbus>;
+
+		connector {
+			compatible = "usb-c-connector";
+			data-role = "dual";
+			label = "USB-C";
+			op-sink-microwatt = <1000000>;
+			power-role = "dual";
+			self-powered;
+			sink-pdos = <PDO_FIXED(5000, 3000, PDO_FIXED_USB_COMM)
+				     PDO_FIXED(9000, 3000, PDO_FIXED_USB_COMM)
+				     PDO_FIXED(12000, 3000, PDO_FIXED_USB_COMM)>;
+			source-pdos = <PDO_FIXED(5000, 3000, PDO_FIXED_USB_COMM)>;
+			try-power-role = "sink";
+
+			ports {
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				port@0 {
+					reg = <0>;
+					usbc0_orien_sw: endpoint {
+						remote-endpoint = <&usbdp_phy0_orientation_switch>;
+					};
+				};
+
+				port@1 {
+					reg = <1>;
+					usbc0_role_sw: endpoint {
+						remote-endpoint = <&dwc3_0_role_switch>;
+					};
+				};
+
+				port@2 {
+					reg = <2>;
+					dp_altmode_mux: endpoint {
+						remote-endpoint = <&usbdp_phy0_dp_altmode_mux>;
+					};
+				};
+			};
+		};
+	};
+
 	rtc_hym8563: rtc@51 {
 		compatible = "haoyu,hym8563";
 		reg = <0x51>;
@@ -603,8 +653,34 @@ battery@62 {
 			 0x2F 0x00 0x64 0xA5 0xB5 0x1C 0xF0 0x49>;
 		cellwise,monitor-interval-ms = <5000>;
 		monitored-battery = <&battery>;
+		power-supplies = <&bq25703>;
 		status = "okay";
 	};
+
+	bq25703: charger@6b {
+		compatible = "ti,bq25703a";
+		reg = <0x6b>;
+		input-current-limit-microamp = <5000000>;
+		interrupt-parent = <&gpio0>;
+		interrupts = <RK_PD5 IRQ_TYPE_LEVEL_LOW>;
+		monitored-battery = <&battery>;
+		pinctrl-0 = <&charger_int_h>;
+		pinctrl-names = "default";
+		power-supplies = <&fusb302>;
+
+		regulators {
+			usb_otg_vbus: vbus {
+				enable-gpios = <&gpio4 RK_PA6 GPIO_ACTIVE_HIGH>;
+				pinctrl-0 = <&boost_enable_h>;
+				pinctrl-names = "default";
+				regulator-max-microamp = <960000>;
+				regulator-max-microvolt = <5088000>;
+				regulator-min-microamp = <512000>;
+				regulator-min-microvolt = <4992000>;
+				regulator-name = "usb_otg_vbus";
+			};
+		};
+	};
 };
 
 &i2c7 {
@@ -807,6 +883,12 @@ usbc0_int: usbc0-int {
 			rockchip,pins =
 				<0 RK_PC7 RK_FUNC_GPIO &pcfg_pull_up>;
 		};
+
+		usbc_sbu_dc: usbc-sbu-dc {
+			rockchip,pins =
+				<4 RK_PA0 RK_FUNC_GPIO &pcfg_pull_none>,
+				<4 RK_PA1 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
 	};
 
 	vcc3v3-lcd {
@@ -1239,3 +1321,43 @@ bluetooth {
 		shutdown-gpios = <&gpio3 RK_PB7 GPIO_ACTIVE_HIGH>;
 	};
 };
+
+&usb_host0_xhci {
+	usb-role-switch;
+	status = "okay";
+
+	port {
+		#address-cells = <1>;
+		#size-cells = <0>;
+		dwc3_0_role_switch: endpoint@0 {
+			reg = <0>;
+			remote-endpoint = <&usbc0_role_sw>;
+		};
+	};
+};
+
+&usbdp_phy0 {
+	mode-switch;
+	orientation-switch;
+	pinctrl-0 = <&usbc_sbu_dc>;
+	pinctrl-names = "default";
+	sbu1-dc-gpios = <&gpio4 RK_PA0 GPIO_ACTIVE_HIGH>;
+	sbu2-dc-gpios = <&gpio4 RK_PA1 GPIO_ACTIVE_HIGH>;
+	rockchip,dp-lane-mux = <2 3>;
+	status = "okay";
+
+	port {
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		usbdp_phy0_orientation_switch: endpoint@0 {
+			reg = <0>;
+			remote-endpoint = <&usbc0_orien_sw>;
+		};
+
+		usbdp_phy0_dp_altmode_mux: endpoint@1 {
+			reg = <1>;
+			remote-endpoint = <&dp_altmode_mux>;
+		};
+	};
+};
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
