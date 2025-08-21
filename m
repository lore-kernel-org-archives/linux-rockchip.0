Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0EE62CA0EFF
	for <linux-rockchip@archiver.kernel.org>; Thu, 21 Aug 2025 22:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WA2nYBLIoU57N048IDzNOHWkeHHylJ2oj6nphRVxtqU=; b=wXwXiG5hNTix2o
	6HNNL2yprtl4MucgEjlOWCi16MlHfu6VT10cqSHv63xb3TCcQAhMXtoMkF1pJKOiwfLZmCAJsmAeV
	gQFTPlwQm4eM7tTDoYlDGpqNaE9vA2HTVkgfG9zMiQZDBqXdo/sevSghbMzyg9zy1gOMZlsJMQwFJ
	/U81ZKWe23VmgGTMKF402oAMRJVs1MBScZ1dPol2RdLbHMu5jBhBtS0JfnCU0reycdacvI1CI2muE
	fgcCxwX8n8wn03QmOJAdQVKgPn1RWv6ClAbLJEV9GZFRfancP57AJ4gtFprXRc4fMJMyY+dTqrbcT
	S45spG+WyMWdqqmVgkPA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1upDwf-00000000oyF-3nAA;
	Thu, 21 Aug 2025 22:39:45 +0000
Received: from mail-oi1-x234.google.com ([2607:f8b0:4864:20::234])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1up88B-0000000HXjo-086W
	for linux-rockchip@lists.infradead.org;
	Thu, 21 Aug 2025 16:27:16 +0000
Received: by mail-oi1-x234.google.com with SMTP id 5614622812f47-435de7f6d71so849601b6e.2
        for <linux-rockchip@lists.infradead.org>; Thu, 21 Aug 2025 09:27:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1755793634; x=1756398434; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=UbxwAPRbZLLGWs9r1VP1FnvbCoc9pGEKPj76nnKqTXY=;
        b=eaCxvUfl3geQbq0OWBf95F4GazfxeL0xRRP9RtT+PwqzDGlrzbAw5PHRVV5MqO1NZm
         f/MRO6dDWS1/eI3Sy8NMJxlq0hLG1O5LfHpipkyvSSJFRx91Q0vROLMSGV40Mmu4NWCO
         Oz7VzE+uuSCQXyf5zbTtvBUZNlXkf2yrPuoSY0IFxR252n1cU8ySnAZEIzQjMPNoExGp
         mykfDZqx8mb4MxWwJ94n9mUST/9Lf/ljhsyrJ5zmTVdsSf6WZnU5RrWMoxbM8LyAvnvW
         tLWVe9CcxEbK0xqxhmy2UYOosBma2P0D8k8S8UlrYQxtjtLwaoJDkkJ24T1ec0BhaaKr
         icpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755793634; x=1756398434;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=UbxwAPRbZLLGWs9r1VP1FnvbCoc9pGEKPj76nnKqTXY=;
        b=h82FlbVM7IFhvZQ/oG04+3T0wv3UrK03ri83/JpkdSK3wckcdHwimylTU4ujIc0yAR
         Spg8mNRYZXuztBxGd/a6BzmAS8S2sQ8ozorrDFyMV6Xb7L2JkRMfnd7hvzPSteyuHxlE
         deXGaQBSfsRMQ2ZvJJSml5CkNSTO0MDgOJEjQ05EckEbDIvqVNMgEGfBUQ8xDEBzj8AK
         iYmBEnjbos8Las0SLTzpjfl0r9Yn3C+ZKTQGxvqiflyQ+pW34xKe7KjcA2YHmY/349e9
         mgBj5FDFT2HbWUNabdbmapfIKdqC0UeEezUbEPa8DFRnJIOTeKlIuc2194N3nkIy1ix7
         Lqcw==
X-Gm-Message-State: AOJu0YwGrZw9MvanPRelgSKkdEva77T/si3EV+jB4JceaWKLlyW9bDQ5
	KUNsMHYFlNEgW4eIIn0hkv2oljL87YUSQgXylG1atgp8IeEctbV7MNyEumeq7Q==
X-Gm-Gg: ASbGncuN9nTnuQSvr1TwyvCkXUsU+BHqDSSKrYHYOkeJ3U1R+Tk0Pu6S5td+5XNZosR
	YfyRHSGT8Gm4IXTCajtWS0ZA1j6aqcGB6Amlb9BbiiEvOni5uy5GfSfkgj+RZIJ/qtToPvqpucq
	VLqew8dT1dputooXsABpj58wZrhhrUHWtDz+X1vYuF1w2QqVu5G/mAxrCrivEf4ge9zxizdkdMf
	mqdxl9icR3j9JWjfXv3H26C8gCR1CeDYVjvYxLMv/jiqxIBr8jIhr/g0f4PNeVQII6Vs2eypJm8
	JNWd721BPPZvNaveKtkIwdmIxevPNir1qcrgauP+i8CmirzG2/GKxrtwuW9LJcAx0bKsqXsrot3
	zFKsJPIyaBeoBUdnMi/NGSjmpjrCa/4dAf5O8ZLSxRg==
X-Google-Smtp-Source: AGHT+IG7yXhlPQPLqBgyGC5iSVZkwtCYQoExiYrE4Ik476mrwWOIwzGKx0YYZ7rN+LaJYEGjIes+Cw==
X-Received: by 2002:a05:6808:1301:b0:3f9:36ec:dab3 with SMTP id 5614622812f47-437851b75d4mr80511b6e.14.1755793633915;
        Thu, 21 Aug 2025 09:27:13 -0700 (PDT)
Received: from localhost.localdomain ([2600:1700:fb0:1bc0:b19a:18c8:26b9:21c7])
        by smtp.gmail.com with ESMTPSA id 006d021491bc7-61bec14b3cesm1674706eaf.27.2025.08.21.09.27.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 21 Aug 2025 09:27:13 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: linux-pm@vger.kernel.org,
	devicetree@vger.kernel.org,
	broonie@kernel.org,
	lee@kernel.org,
	lgirdwood@gmail.com,
	sre@kernel.org,
	heiko@sntech.de,
	conor+dt@kernel.org,
	krzk+dt@kernel.org,
	robh@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH V7 5/5] arm64: dts: rockchip: Add USB and charger to Gameforce Ace
Date: Thu, 21 Aug 2025 11:24:48 -0500
Message-ID: <20250821162448.117621-6-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250821162448.117621-1-macroalpha82@gmail.com>
References: <20250821162448.117621-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250821_092715_069378_BD5C3092 
X-CRM114-Status: GOOD (  10.93  )
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
index 55fc7cbef58d..f5894672fcbd 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-gameforce-ace.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-gameforce-ace.dts
@@ -612,6 +612,56 @@ &i2c6 {
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
@@ -640,8 +690,34 @@ battery@62 {
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
@@ -853,6 +929,12 @@ usbc0_int: usbc0-int {
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
@@ -1286,6 +1368,46 @@ bluetooth {
 	};
 };
 
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
+
 &vop {
 	status = "okay";
 };
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
