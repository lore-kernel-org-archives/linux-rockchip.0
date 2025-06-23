Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8CDEDC7EE39
	for <linux-rockchip@archiver.kernel.org>; Mon, 23 Jun 2025 21:15:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vKUlBKxvg2e51nsQqiU3ep9EOdgHqjfsu4Nj6OouV2o=; b=mwcC1RPV/bkTe3
	eNuYGB8DC+fFaEA2gj0JGo5Bgn8mBk9qNxIxq3E5VoYcS+NgqvYBuubdjlvjmCOd8G/6ZrlZAurMf
	FKQjnItYX+WmOvDdXuGr+RmfQKrnqHVkm/0QSyuGQF3jpu62NsMZ8ID77RHsquNv9BWCfKDABJvaJ
	RGiINrmG4CeAjTgmVXkGXJsl4ByDmTHNyj0CfIoBgT0bi5ciqBlWsNpwEvZ9itsyThHC97hOgtAPn
	vpjlNGVzMp995RNrg5PHdgOUrAE7214SN/EIAfFzCmuY6K6UIRma/EogGIqp8YzXYzYfTc+pywzlP
	PCZU8pF4/lsVj5D43kEw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uToVr-00000003zSf-3YZU;
	Mon, 23 Jun 2025 21:15:35 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uTjyg-00000003PRG-2XVz
	for linux-rockchip@bombadil.infradead.org;
	Mon, 23 Jun 2025 16:25:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=3VWQ/3f6uGRHlfE4j0BNsaq/8Sj/J2vStE5CIqW2jYY=; b=YQFN2jblYWXK6oMnE8Am4t0/Z0
	oIDevg3Ewqmt6QePIYNHW42Z0vrUmIajsz4/3LPn/0jimaIsFFpgMAFoU1LNafbL+EXC4NbEuZdsV
	xF6zvCiqxtx5Km8F6GhvhKXMsCqFepf+FgkI/ZJlp0UpXYQ3vSmVqiBBv0SKTbburxHSSq7JLNhh3
	lWZw3r4zMe6OLY7kz0Mng0xcvqV2jt0UsSzlyMj6FZBABKgZ8ZGWchs7WXqu0RH0BhOhUTIkGBSAM
	aq/fLWQ7WjQOXMVwAhqAta70/SfOkI7J2b476zMvGGMJV6kx/FqbKkCRPKLrA4OUPqhvag9NjbtoY
	4A+lhsaA==;
Received: from mail-oi1-x233.google.com ([2607:f8b0:4864:20::233])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uTjye-00000005FfG-0GBb
	for linux-rockchip@lists.infradead.org;
	Mon, 23 Jun 2025 16:25:01 +0000
Received: by mail-oi1-x233.google.com with SMTP id 5614622812f47-408d14c7ebeso2764042b6e.1
        for <linux-rockchip@lists.infradead.org>; Mon, 23 Jun 2025 09:24:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1750695897; x=1751300697; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3VWQ/3f6uGRHlfE4j0BNsaq/8Sj/J2vStE5CIqW2jYY=;
        b=guJXtgLcsttuAGBYgjCJ2xit7GvsmQC5dwy+5MwUbqXqGDIna1cRhq+35bT2GaU82u
         IWWH4ExiPXn5NvZgkKiyr+M0qQPHBeBZavpRLtWZkkRuQlk8xLiV/OvWehJiBwGoUP5Q
         O5Fukm+2HEVNKWLOXPKFD1QF5rwvJlBVZAmNsvtmpP6bLZtIiCmibx64ThvUpNZ2j+W1
         cuFMcX0hOvrBEqN1i4DL4NZkt+wCp24HfbWcplL1T02HWS2oMXCdNTuukxlZ1Lg4pFZy
         zew6I2YkQJgg2ZHI7qUjy54P2nhiMk+GVjvC6gJ/SmVbUpnEQS6hhbaEIBMWFXV7MO3o
         Sgww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750695897; x=1751300697;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=3VWQ/3f6uGRHlfE4j0BNsaq/8Sj/J2vStE5CIqW2jYY=;
        b=ljBHjp2PntCq+2hS69pmuYTEcV5y0Yc/Twr3qDYqpx7jPckBS/ptkc9OFM0E7iy/Ra
         c4dAAVl0j4c1nE5leca0CFxF9C7+2dWp9FGw4A3vwODIpAiY6+dslumlwTT+WJSs72Fx
         9jrqu4jJ/TfR1Xb0LPvxz3OgXg0nv/zaZPR2S436f6u9amx1ou8PeNKhAxBYY6BjbSvj
         ApdZ02E8uVA11DtfV0z0SGY68Xu6xOWkmuuzJHwWmtzaAv4KbKLr1VFrs95hNGv/CFZE
         ERtp+NIkB/x0dkmbGow9+iA2gWp4PlibRujJFKXRNPJF+8xqre5C5vIaQyqmW3KUiJYN
         Ttew==
X-Gm-Message-State: AOJu0YzrFxLMWSTOuk2C3oZjDJxkWWorHP6v/4yP2Bh9ZgWTQcYO01AR
	jdQeFpmpuCONRqSjzMQHVHcZk6eJyeJYPdMPcVn1TveHoHwIU8O58WOb
X-Gm-Gg: ASbGncvk+oAHqBr1CSrbBH8mRBq+UnoXM6hKpvapef0qeOxxlhzb3BtXmpv4kWIHRNV
	dhdrbSOfpCKzdRWgCeW6sBBItN5iaFRyr4VKs7AjIGD+km0h9Su5xrQ3afD/J55FlXfzxeN+SGb
	NIx0bWqGWj4NSMQgeAyPkyEaWgw3qKaCQU+EZ9sURDNRcqZOCwAnvWKvxZ4RIq5zJ8w3jVVJg39
	VNuS2WgXaoodR/D8d5gGzTji0A8HMtiN/8maOh7RZ1K83N6ckd5hqQeiQGyOBTDoyCCbB/4s2Ov
	Sbw0RVfamF5KD+dl6l/0clRczWQzwFDWmDOMILaQYLbnhE9Z2LXpVu1NRHy1+ptiIoND+GUhyGa
	MBTvXLg==
X-Google-Smtp-Source: AGHT+IEG6Bs+8/vgnN6uLWTEKDv4PXruPRD0LnhaF/zwmLkI61Lhi04Ucp0qj7I+ePqCr/pYfrtLEw==
X-Received: by 2002:a05:6808:1383:b0:406:67b7:8b62 with SMTP id 5614622812f47-40ac6fe65f9mr8820873b6e.38.1750695897359;
        Mon, 23 Jun 2025 09:24:57 -0700 (PDT)
Received: from localhost.localdomain ([2600:1700:fb0:1bc0:61a2:e42d:d809:3616])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-40ac6ced44esm1427308b6e.24.2025.06.23.09.24.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Jun 2025 09:24:57 -0700 (PDT)
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
Subject: [PATCH V3 5/5] arm64: dts: rockchip: Add USB and charger to Gameforce Ace
Date: Mon, 23 Jun 2025 11:22:23 -0500
Message-ID: <20250623162223.184304-6-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250623162223.184304-1-macroalpha82@gmail.com>
References: <20250623162223.184304-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250623_172500_193973_E5410064 
X-CRM114-Status: UNSURE (   9.98  )
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

From: Chris Morgan <macromorgan@hotmail.com>

Add support for the BQ25703A charger manager and boost regulator to
the Gameforce Ace. Add the USB-C port and PHY as well as they all
depend on each other for operation.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 .../dts/rockchip/rk3588s-gameforce-ace.dts    | 122 ++++++++++++++++++
 1 file changed, 122 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-gameforce-ace.dts b/arch/arm64/boot/dts/rockchip/rk3588s-gameforce-ace.dts
index 873a2bd6a6de..c74a4e0fa238 100644
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
+			usb_otg_vbus: usb-otg-vbus {
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
