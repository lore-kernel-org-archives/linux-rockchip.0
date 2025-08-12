Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 75EB5CA0EE7
	for <linux-rockchip@archiver.kernel.org>; Tue, 12 Aug 2025 21:45:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WA2nYBLIoU57N048IDzNOHWkeHHylJ2oj6nphRVxtqU=; b=XbIwqMb5dMhrfB
	2NwMk2xOkj0tZGlNo+WCNgPsX0RCyAvsaUDj1t60zNhmJF2JA4Nd85H2krGqg9eEPbbkXRUFDuDLg
	J+5hmoaUJm3o/LfsHpEnRG1Jz3nwGgaSP6iMVzQThgtpvzceGC9pywhxgrkBgPj3D5QfaCcs6wT2J
	1ofRvJskaceP2r2lulDt184itYEjZhYJkxAbhRr5v1T7/vw6DOx+zpwF0c66ONKr7iwG8iVNImfc/
	VMMNFK/sQdhnCSCxUpg1FOSszYgwyEjBLOSyYFTAy110iK4mPEFOe9yVtVwxrUZDBuvpcBgdMvhYC
	MK4nfFLaT5+/EErT8xxQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ulwoJ-0000000C518-384F;
	Tue, 12 Aug 2025 21:45:35 +0000
Received: from mail-oa1-x30.google.com ([2001:4860:4864:20::30])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ulwoF-0000000C4y3-0anc
	for linux-rockchip@lists.infradead.org;
	Tue, 12 Aug 2025 21:45:32 +0000
Received: by mail-oa1-x30.google.com with SMTP id 586e51a60fabf-306ab1b63fdso3459577fac.1
        for <linux-rockchip@lists.infradead.org>; Tue, 12 Aug 2025 14:45:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1755035130; x=1755639930; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=UbxwAPRbZLLGWs9r1VP1FnvbCoc9pGEKPj76nnKqTXY=;
        b=WExMxPAHDVWxNCVpA8VNsjvWSlWipqJ6WOHoVvqxQU0IA46z8YzhkJm9l/xuqsu5uI
         LSIXrGIGdM0PJLwwSJ+HDY+wTSByWg/jppniuyza3SMjsvL5/hETZx0oXuUhKHHLipeY
         KdhcmjsrdsD5TFR76LREH40XmWc1vSWXrWPRAaz/AYWr4YBbcXWiHmTmc9KnWqH5m8/Y
         G/Nr6ox0rPbSfQYUeBbFWicdWxQaSgTyp5whz3K+s/8OpoWZi6xNSLy/eNAMQMzdlAiZ
         hWmSiVEA4Kx//3++OiHn5SsUtipruDtNMwOTb/OONqPTGd5ea4peSbuOzk9ncB5ya6qJ
         c/IA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755035130; x=1755639930;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=UbxwAPRbZLLGWs9r1VP1FnvbCoc9pGEKPj76nnKqTXY=;
        b=KPCsS6dfgXIXvf/J0iMgvsgRLodL4hJGTQAuq5ehWaIZL8fzvYiuQm+Mwtjo4w5vcc
         v6bIuWCBgA96JbnA3Gst5fEGxVFjh/wWocWIGuNLP6ShWPLtgEWJAq1hyUrIAVMU5DeB
         mAk02xAG5OGjlKDTOExRlq755PB8ZjSdT08Hy3UXexvOtg98F+8+6JF+XJi62Uj8vdF4
         /txqhXZMihpQMm59wJg3Yc001+7KLN1b9wk13T+i2BEBxjoLdnotY91NCepz6cVG976i
         E0IIt1fIMe5bP4tQKgUDs9CMCJgCksxIzWXoD61pFi0OgrNJKcRi3ggv5ZoQUCy+YAva
         ge3g==
X-Gm-Message-State: AOJu0YwT+dC2A+Z+NTtSY+eQAl/117BeYXIamaHfxB0Kj5+dSz+9ReG6
	sTnbBF7c8YKbD2N0iACVeWOk447biTlUxPddTZ6P6FpWarogDy1bO2Tw1/hkxg==
X-Gm-Gg: ASbGncvFhYJM9THDaP6Rof8ToDr0X2SKUpWCx2vjo092DmQvMDPo9AVHlAXqxlXdQMl
	7rgTm4Axn5xELLXQn45qGjQhoWDK2ePa2mfv1gWCvisgvNUbqrMy6FfS3CPnNtGLPL+tVLvu/j+
	YrB2KFxT1tR+hw2KmRylck3yUr+fpLQibMpfwlpVyHsYgvXZ8r7BzfbuLCzAV4QBzwHOnnKh4zH
	XPc9uzqvP3lzFhPYKRMaCQDEF21EW9zaNnb3KAMnbmu8H+gOkfr+vDv1m3dPqCSwic21c8jpr9R
	b4txWu2B7hRnyNiKlqjLOLnCxCAyiZaf23T+FkUaWo+itmO0/qYROVsWwbuaCMQcvpyzATOJ4Kl
	XiO0igPR4m4JQLS0VONKX8Ae+GhICazjBPIK7C4NQwQ==
X-Google-Smtp-Source: AGHT+IFMDIBEwkoAFWfmFPeE4jkHvh48lkAdk+3gMISL3QZlC5MqVz0RueEmO5dX/CZAEbTgNvD+eA==
X-Received: by 2002:a05:6871:5312:b0:30b:aa71:3ea9 with SMTP id 586e51a60fabf-30cb5a0f92cmr496984fac.8.1755035130298;
        Tue, 12 Aug 2025 14:45:30 -0700 (PDT)
Received: from localhost.localdomain ([2600:1700:fb0:1bc0:d904:cea9:a76b:d0a3])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-30c10c7a694sm4092741fac.9.2025.08.12.14.45.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 12 Aug 2025 14:45:30 -0700 (PDT)
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
Subject: [PATCH V6 5/5] arm64: dts: rockchip: Add USB and charger to Gameforce Ace
Date: Tue, 12 Aug 2025 16:43:00 -0500
Message-ID: <20250812214300.123129-6-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250812214300.123129-1-macroalpha82@gmail.com>
References: <20250812214300.123129-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250812_144531_185207_C66CA5C5 
X-CRM114-Status: GOOD (  11.48  )
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
