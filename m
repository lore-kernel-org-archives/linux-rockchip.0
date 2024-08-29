Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 484FCCA0EC7
	for <linux-rockchip@archiver.kernel.org>; Thu, 29 Aug 2024 21:33:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QSJr7gdqgf7fvYfEotve8fmStL646Mn/u3XvVPPpBT8=; b=kQ+jvaTLZU8Tsi
	4uqOazqB18B0TMTqh/xVpOlPK2SP0hWCRh41iVoDTYbWgnlaEk7aPkvw1CqbiXqJ9dq5uv6pJagHi
	Vhx86dTvbPbjuI0ZRffyGRzjzqow0mZidyqVKtU0ZSfrfW64tIwMnTyBh693OYHBLJj1W/v6Zkqoq
	dtq7fgq12V2/pTz3y8G6UbEDYGXGJwCRGkDupkrVGAbkOtrlrHjBGeO+BJE4fDNFYh9SsU1ElmY7e
	iwiEnATlyuCwautbguY8MX5FkpkCZnPxO5EqJdcBKxVf1VKepgYsHVR3U+Jx8B67cC1fQ97huXZYk
	7Ukvt4jXcRxlmQaBkjCw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sjmlv-00000003i03-2WrC;
	Thu, 29 Aug 2024 21:33:39 +0000
Received: from mail-oi1-x22b.google.com ([2607:f8b0:4864:20::22b])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sjmll-00000003hwG-0Qos
	for linux-rockchip@lists.infradead.org;
	Thu, 29 Aug 2024 21:33:34 +0000
Received: by mail-oi1-x22b.google.com with SMTP id 5614622812f47-3df04219e31so651451b6e.3
        for <linux-rockchip@lists.infradead.org>; Thu, 29 Aug 2024 14:33:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1724967208; x=1725572008; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vj3QlBwnF+GIPuRokIl1Fw2RmZHFpFFEAW8mKs0kajo=;
        b=dlkOA/Rz9zv1unHvou8QXFyzHA9NKiTZG+IkV2gmwkqKdCwn5VOxRmJg1K+63ginjT
         jISLV+Mxeg3HrrzqZeMDo9QDfcdvxETQlckJ0imrECdKY4QUx6RWAvn6NvZ+h3ktvVw/
         52we7GFi3EFrAsk4QV/txasbJh+sPJCxjwTaerFa357gMAlVmAB63lUqUCQwqqlptxBm
         km/is+gGHhT04dPjDvV2/isu3NP22utAwqqd1E8S7eGhTnfH+3wOWChrHMe8BDTdBGpb
         4ob99/MZPyHEX12tjTVmw7Pr9fPpg/4vmyJiVJb53x+i/TPRTsK8E6tJiQtSv+USHnTu
         5Xig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724967208; x=1725572008;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=vj3QlBwnF+GIPuRokIl1Fw2RmZHFpFFEAW8mKs0kajo=;
        b=QCeJQh8DLGDg/QLhaSuNzRDX6inj2vNRzWXL80CyNOwetL90eRkrDGY8IhF30eCKJ5
         79XqFLxeYh6qAtGcyGIXoFT8WvUq8470CNFdgrUJ/csP8ZNWjsrSlYjccqR7NEIFC5gM
         RQ56iJzwOpEunUi+ZFKyusQz3DP1eirmnJQYJzCgfz2h8sWO23LcqzZZxGC7Zj7mVp77
         YEo1OcXhc2evEj6csKbvx29TdxWWOr4b4Wc5UPMCESpobrhEeXjBZcRwjZnRbpffFvNX
         5l9UYiSJw5DcZjGLBryf6b2dLbhqnHQepnmtx34Jz1pDvyF10Z9NcWG9hZsRarlWOj/b
         jEMw==
X-Gm-Message-State: AOJu0Ywzx9ybjl39xqnwJQnsAjzGp+ZKxbpIXBOK86HnJLBXi6OOHCKs
	hqCzjmfk9+dv+vDabLAVJbY7x9ZuNQkPhk0Qvatkx0m++6524T6i
X-Google-Smtp-Source: AGHT+IHD3omSACS8v9kmJln/gr4mXhsj7YW6sSe0USTvs8AX4oeJCHN3HaxoTc2C6WmotHPMrB7cdA==
X-Received: by 2002:a05:6808:e8b:b0:3da:e02f:eb8e with SMTP id 5614622812f47-3df05e6322bmr4412211b6e.43.1724967208404;
        Thu, 29 Aug 2024 14:33:28 -0700 (PDT)
Received: from localhost.localdomain ([2600:1700:fb0:1bcf::54])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-3df11865de3sm93097b6e.42.2024.08.29.14.33.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 Aug 2024 14:33:28 -0700 (PDT)
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
Subject: [RFC 5/5] arm64: dts: rockchip: Add USB and charger to Gameforce Ace
Date: Thu, 29 Aug 2024 16:31:02 -0500
Message-Id: <20240829213102.448047-6-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240829213102.448047-1-macroalpha82@gmail.com>
References: <20240829213102.448047-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240829_143329_184165_5F8625C7 
X-CRM114-Status: GOOD (  11.56  )
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

Add support for the BQ25703 charger manager and boost regulator to
the Gameforce Ace. This also allows us to add the USB Type-C port
manager which has a dependency on the boost regulator.

This specific patch has a dependency on the following series:
https://lore.kernel.org/linux-rockchip/20240829204517.398669-1-macroalpha82@gmail.com/

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 .../dts/rockchip/rk3588s-gameforce-ace.dts    | 120 ++++++++++++++++++
 1 file changed, 120 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-gameforce-ace.dts b/arch/arm64/boot/dts/rockchip/rk3588s-gameforce-ace.dts
index 91efb9dafc89..371f84d5ba6b 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-gameforce-ace.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-gameforce-ace.dts
@@ -575,6 +575,56 @@ &i2c6 {
 	pinctrl-0 = <&i2c6m3_xfer>;
 	status = "okay";
 
+	fusb302: typec-portc@22 {
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
@@ -603,8 +653,40 @@ cw2015@62 {
 			 0x2F 0x00 0x64 0xA5 0xB5 0x1C 0xF0 0x49>;
 		cellwise,monitor-interval-ms = <5000>;
 		monitored-battery = <&battery>;
+		power-supplies = <&bq25703>;
 		status = "okay";
 	};
+
+	bq25703: bq25703@6b {
+		compatible = "ti,bq25703a";
+		reg = <0x6b>;
+		interrupt-parent = <&gpio0>;
+		interrupts = <RK_PD5 IRQ_TYPE_LEVEL_LOW>;
+		pinctrl-0 = <&charger_int_h>;
+		pinctrl-names = "default";
+		power-supplies = <&fusb302>;
+		ti,charge-current = <2500000>;
+		ti,current-limit = <5000000>;
+		ti,max-charge-voltage = <8750000>;
+		ti,minimum-sys-voltage = <7400000>;
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
+
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+		};
+	};
 };
 
 &i2c7 {
@@ -1235,3 +1317,41 @@ bluetooth {
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
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
