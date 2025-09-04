Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7D145CA1012
	for <linux-rockchip@archiver.kernel.org>; Thu,  4 Sep 2025 19:54:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WA2nYBLIoU57N048IDzNOHWkeHHylJ2oj6nphRVxtqU=; b=TGLjNXdDg8qDfk
	+5XVBrDyIJIjZ6F+FdrjgqP/BmWYcxzDYksFL280GX/8MjKmbrFN8qQqP3ICl6l4Kt7zaxVJFbyPf
	i8MXrVmyTh+84Y1zUIOA3293Mp7WR0Dvk7rF7ctXoNoU2z4VKA5EQ1BE6yhsdMZV+m17iJ3Fj/ESC
	u5WQ2L/wKJxufyMv6T6SRgpneu5gbLLUq4MH1UGRm9sdKLIEnn/KTg0SAcPuLOFcBHtcsrGnTAyRb
	1jZwC69OqUffNrohFyMBjYj3Id7O2RNEGflOduzzDTZg6tsEXnchJLYENCdwTuuRbeNVJqZO+tzc6
	2pljN9IBJutpnK2S6kvg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uuG22-0000000E4jh-0x0U;
	Thu, 04 Sep 2025 19:54:06 +0000
Received: from mail-oa1-x33.google.com ([2001:4860:4864:20::33])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uuCVR-0000000CkxR-42gM
	for linux-rockchip@lists.infradead.org;
	Thu, 04 Sep 2025 16:08:15 +0000
Received: by mail-oa1-x33.google.com with SMTP id 586e51a60fabf-315c0bc5a8cso324760fac.3
        for <linux-rockchip@lists.infradead.org>; Thu, 04 Sep 2025 09:08:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1757002093; x=1757606893; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=UbxwAPRbZLLGWs9r1VP1FnvbCoc9pGEKPj76nnKqTXY=;
        b=V+kBfJR3fRK6U6qJ+/43VwDhh0mxJ9aoepXWSskUAvfyJGUoPK2InZnVYgRE+GECaU
         K87jtSYYGFjV+MOdrYUCwMTrCQ3UpsYPmitrvSRozqUuSnA4StUeM0xAr9lghw1V9fTT
         BrDIvwOBFChsJbQ9sQb1Zta21XcW2CxOIEDspiM0j//un1Nhg1LsDgSY8Mjy7oqusN6T
         mQrLiXbp/Y9qQuRduesxujAQwaVoin4Hy/tj5BSGHkLe1DhN/aPV/U7k2MpP22NOjiy4
         yYdHKDMfU1/KYZbIr+4v/dzfUiKiHd+rUgvQOWH/6wLiFNTu7fdvxbYVE0mqkhyvbOgI
         rqvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757002093; x=1757606893;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=UbxwAPRbZLLGWs9r1VP1FnvbCoc9pGEKPj76nnKqTXY=;
        b=lA12eQUIVJ1W/2Of50rFyBwisWmXkIkL8W0hNwDWpiedJA3vL5MkwnXSMhvVK+KKGf
         nWL8s0PJ8KvUxpL7DJ1v1RQP9SbRHIqPOe4J3a1+1c2V7szyje9kqE08eeg3lhlAMuBJ
         4aiSex5y160gkIyjTjfSVH83WMJr4IvxyKRQEc/eDzinntZMhiPh/8wPSaZ0SH1kl/1B
         6fjBPxlW2JP0ktasMP8uroCNijKiGmlMiufFACfqa8nMrLRR1xFv6fM6mpS/MTuZYNIt
         8cFWkd6VXGsBYVpEkGVQEVn6ln3ibPphl+JZXiP5wBiUVdPz8rtqtEK0YB+6NQWGScK3
         0QaQ==
X-Gm-Message-State: AOJu0YzZQlSWR6Uz+mZyj1H3L5m2NO8MQ5uYYn80cBf1hCqmQUGI2t2Q
	RnQFc8hmlR/3u5KW/xhGm8l400nxDscp0rZc8NVERi3NLoh7od4fYub2TBRwRA==
X-Gm-Gg: ASbGncuJdTF33eMTcMGKiPWocAypPz73+CcYnVVYpVxoCnFSsOja43v3xvLWEvCR4y1
	bDvgY9MF9kcrvSYBTnVz273I1IxI1Xh4mbUNU8P3xTKZ6HVGecT7gwh6lF9wJ+xqpnIayZkB3b+
	PfsFVH6GhT47YPq5KY/NEsYN9QSsDNtPN7UGlXq8SFDgCbuunTpIabob6v1PQnQP/tySsDfeNJz
	1MYJPg3eNS9WfJn0d2wv7hC47zAoJZB4k/vo5dPaSg5BtNHxjssiBUu3TZZNjKy2rX/0B0rZcKq
	cO6UhW0ti/lJ04tNjm63w+Cfmri05pjusm7f0lgXAMSidOx+QHXPCE3Wb4eEB5s3l5kAxJxEPLh
	IcSWXtJ9hInfwFAvyn97MhjlHEKRqDepG7HAlFh/N/o6bohYmwjgO
X-Google-Smtp-Source: AGHT+IHjB2+IkhRCLJgIXDZnkVz9/1NAMGeK1BR80GdOB6f5va7pWqIXQ3joMoysK4vHfou5xDfW9w==
X-Received: by 2002:a05:6871:eb03:b0:30b:de9b:705c with SMTP id 586e51a60fabf-3196307f013mr10559358fac.5.1757002092703;
        Thu, 04 Sep 2025 09:08:12 -0700 (PDT)
Received: from localhost.localdomain ([2600:1700:fb0:1bc0:c51e:64e3:dc5d:9652])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-319b5fcbf6asm2437593fac.20.2025.09.04.09.08.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 04 Sep 2025 09:08:12 -0700 (PDT)
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
Subject: [PATCH v8 5/5] arm64: dts: rockchip: Add USB and charger to Gameforce Ace
Date: Thu,  4 Sep 2025 11:05:30 -0500
Message-ID: <20250904160530.66178-6-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250904160530.66178-1-macroalpha82@gmail.com>
References: <20250904160530.66178-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250904_090814_005025_80A025BE 
X-CRM114-Status: GOOD (  11.04  )
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
