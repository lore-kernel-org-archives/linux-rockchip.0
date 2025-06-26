Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2D5A0C7EE39
	for <linux-rockchip@archiver.kernel.org>; Thu, 26 Jun 2025 21:31:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=psgaXwDo9wU3hdw9fr2OFq0yBO/6zkHYhQySEFiqb1c=; b=Bkt+nXdOTfXpJP
	S3ew905dduRtE6uWcD3H/y5tO0xpBhE7HMv21a0vL/opv/UnQxyTdw1HjKlLyV7C1FldHBE0Q1DKD
	ucAXGZLmJleadexw/KreRtro1QHtEjByf2cJ7nMkj0V3oFSXSqMP+vxTvM+id1wn75jIrEQmHuZYN
	3/xC0deJvbDmGv571JpbdgJJH2DZ70dnDoMAfOjz7wSvK1gUKIWtj5gXA7ZqJBfiIBaha0znn/z0A
	Id9g/CDU2mKkaIpGZtSpKscFWKFTPvk/QoO64jSPJ7pBylb0RQkBHioMc0McHw80Ns3y0Nm0nfdwv
	QKxLC0RPqAqoXctnuZhg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uUuBK-0000000CqHu-0pPX;
	Thu, 26 Jun 2025 21:30:54 +0000
Received: from mail-oo1-xc34.google.com ([2607:f8b0:4864:20::c34])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uUshe-0000000Cf2S-2MH7
	for linux-rockchip@lists.infradead.org;
	Thu, 26 Jun 2025 19:56:11 +0000
Received: by mail-oo1-xc34.google.com with SMTP id 006d021491bc7-611b246727cso375183eaf.0
        for <linux-rockchip@lists.infradead.org>; Thu, 26 Jun 2025 12:56:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1750967769; x=1751572569; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4T4j4YN6oDQNPwiIArxxsv6eScMKL6EZdlZnxxjmhd4=;
        b=T0EU4QmyfK7avsTW23oDixf8ZI6ajBsZQGgMs75szIyGYBoQW2Zsn+wRgOzaqmaRQz
         uqoKqePB84KqoiJLYvw7ZGSC4eanpKnJUp8H+Uy/14c048QcC0R4Ri936s1dz/6g784f
         nlKoM76SjFX8k0kSmrEOinGeT6dqU6TL7WnAu2gHVJDz6Oo7So/dIXcLKrdLd+NYGMX7
         r1oXYDvxVfnRhbQb8VCmYT16+ThNeQz8d60yEw+nAWN8rSMvam0kn913u51u59VmJadM
         knVdBP/+Rc2trfSCF71O/cgljLYKKtQtJ5d+AMHuf0ema7R407qQU6m2V60aXhOxwq3C
         D3Aw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750967769; x=1751572569;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=4T4j4YN6oDQNPwiIArxxsv6eScMKL6EZdlZnxxjmhd4=;
        b=JL7yopaHV2y/pq058w51b8PQZyL5e1F9SQoaETcCOlAI0W9/h+F8Rl6bFjMN2Hbsud
         j9w8XTpaeFdyhCc6Q1tv8MV1z82lDoOhqWwAc5dqUBw9NrFzcVuIS5KhpRjI5OxvYE/j
         Hg0Iuy/mKltA8geRaTo3AUUKKieR3yh1osBX8aZFIsqkvyJ/n8EN8V0fm81kPAhTnITM
         RSAXEKGoTD0b1qfqBfM87Z2UkClU392YNqmkcwJw8u2uuEFkr0HzwYArLBkfFR8emc7R
         8rP98QzFM9WldZnqef9aNlfnwkquzSmkdry02RjF8Z1EoMT/cZH67arEjD4aSROmCBdS
         r2FA==
X-Gm-Message-State: AOJu0Yx06oGzUyCYL1NjJED4BMMYI5Rm7oPslWV1FZ7vT33Gg8xULmjo
	pN5FEOrPYQGbnAZfDGGuVedkQBj4eNTgwMq0VXcT64WHm/Ai9juI8V4lTCgg3w==
X-Gm-Gg: ASbGncvqQaD9BjcbAXoXfKDzjU/KRs4ussXuk9BssrR+9Fq6rsR1CcFOtHkD/na72RM
	lpt7CSh4M4PE259boORbP8bMvtHuonwhRbBuko46J2GQ7ZQysj+sjB/Nu4ZZQbeGiOa8Lmp65lM
	TzKcQ29cgRklYu/V5Rj7exz+mQQSmlV2O4+IqtlK8Wivt5G8QWms6I5IB5Sm5VdxCxw/V/rtgH6
	6nDrQQiRlawKhqXGn1ql1Hkjgg8MhTpx6SO8tqmwm0IKtzRJt/2AfFgWy7V/XXOoz5zu2s6II0K
	X5M/h64iXxOIq80nbn0Ul1uyA12XdCAeUW+TJpkFWxI5wwumAA4+7/NBPC/E6IJLKqw+KhhcP+L
	aXZyEcA==
X-Google-Smtp-Source: AGHT+IEo8AITbnaEu3zuHVHElFTHaq9bdkk99cfQ72utFV9ddz60HWLZ7uz6nCioz//mtEgXYVlYng==
X-Received: by 2002:a05:6820:1b09:b0:611:a78b:57ce with SMTP id 006d021491bc7-611b90153d0mr364796eaf.2.1750967769472;
        Thu, 26 Jun 2025 12:56:09 -0700 (PDT)
Received: from localhost.localdomain ([2600:1700:fb0:1bc0:f978:7e9c:c207:c035])
        by smtp.gmail.com with ESMTPSA id 006d021491bc7-611b8582352sm66915eaf.22.2025.06.26.12.56.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Jun 2025 12:56:09 -0700 (PDT)
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
Subject: [PATCH V4 5/5] arm64: dts: rockchip: Add USB and charger to Gameforce Ace
Date: Thu, 26 Jun 2025 14:53:43 -0500
Message-ID: <20250626195343.54653-6-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250626195343.54653-1-macroalpha82@gmail.com>
References: <20250626195343.54653-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250626_125610_603245_E89FC622 
X-CRM114-Status: GOOD (  10.45  )
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
