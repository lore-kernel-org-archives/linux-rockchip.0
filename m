Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 666BCC4345F
	for <linux-rockchip@archiver.kernel.org>; Mon, 15 Apr 2024 17:07:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=h31MsRLrim9fwDuK+29AnmPRV+RkblUhQGXWgbz3a4I=; b=BKAbZNj+8QNEux
	uCLNaYkNa/VidOLsIuDmvBZGqLVksP/c/6jEYPyafzG2HkF7bD9AZgMxc4xBi0cQOpEY4Bv3J0XAc
	gRQ1Kab/8d0dohxbEKYmtzJYSjGVFbe2ayKrH1NkQCYHZlDvaW82oDoxbJdMZiRSjeBsnEonKbRdS
	tKMKuQ8v+54muPUwQB7vJ9cUdpYAeIporYbMI5KT82hCLx4FRm+p+CsAD8SEi/HpsBXyKxeG2j3LS
	cJ6zbexeDc8pUgHzwLEQrEls3cEao4m3A1Fmw9dN1BioNLupauQmC7+ChGwK+wfSOTxkY4MLhnqML
	ZS5UpZVqJrBe/c92nY8A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rwPnO-00000009FCZ-0Tp9;
	Mon, 15 Apr 2024 17:07:06 +0000
Received: from mail-oa1-x2a.google.com ([2001:4860:4864:20::2a])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rwPkQ-00000009Cx9-36PN;
	Mon, 15 Apr 2024 17:04:13 +0000
Received: by mail-oa1-x2a.google.com with SMTP id 586e51a60fabf-23333ef4a02so2453786fac.1;
        Mon, 15 Apr 2024 10:03:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1713200638; x=1713805438; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=IUu9JIJNTBO3wAIzxGe2cXxPg4i1coQGYK14NtOWgy8=;
        b=KXV+uOxxgG8J1X5k8oJnDw34c1VXyx558gXrwT/78ZGTTahx4Fq0HDuZx98HHkKPmm
         J6oQ4hZ+a9fXmRVQXUOhM2CWAPHF6CQjySro3mX8DiD6WNmSqvvlOzrB0sZVCjxA3UVJ
         to9HBLoemeRxNE88iAFVMhnts09kww5UOp+X1K+APydbq6ZyTz02Ucks2RsPAlzJ3hTi
         atdQhW5s99f+9m0FejZjxVcNF7ujR20URybiqcGe1OKC8B6rGPr59kdtk0NTd+l/u29A
         BjI3FHis1PcNtbeMdv618qNnnwXz33/uyiNc+vBvF+ocyTpEHX2Qgaug9XJPJjhj5q7c
         iAag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713200638; x=1713805438;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=IUu9JIJNTBO3wAIzxGe2cXxPg4i1coQGYK14NtOWgy8=;
        b=jCJJVlomvzMQn9glm2g4WS0A9iRYxcG666UiNfrMgi2OIy/WkOF60k/dGx6ieoJgUw
         bD9T0slAY+EqVr76EidSh4z41l1s3qODqCTRd0mR6qYUFCOuLg6BZjtDR3X1C2oZ83Fd
         sVxXK4pOGUeN4TKotocWturwmVWwTTVTIoCqur2ncjbd1d4p+1o7Kxq0bpAJwPJPyiV4
         ceEaYKfKQOFjYiP064ryzU+aIdeYRCWi18Ugh+oOuReSYU7BEEcy6HLdH8NjdGuwWMvs
         2DCI6jU2wYBE8xLxJ0C8kDJwrTbVT4tg6e4oq5iHyHNBvp52UUWUjgsyRoN3E1z4dDyW
         tRhA==
X-Forwarded-Encrypted: i=1; AJvYcCW7Z6tnSPvl63rZXlLM3xrSGG5BHEsLNcGga5PQ/Wvq67BJuHx0FqoemK+4byJ4iwe6LXGy1a1AnT4wvkuLHH71225R1vGzkeOv07S3BwbxtBYcDow=
X-Gm-Message-State: AOJu0YwNXUHwwCq4n7FN7UxKdtRzwtzNfFfl5ksxOn2NsTHD8umC70+z
	UhPM56/2FfKS+4XmZfs+MJ9zJvw5S4TWm9c8VUgDgGNPjwDM3YVG
X-Google-Smtp-Source: AGHT+IF/7GW4NP7SLxvDDVnRXo+EqSGMi+DeAm1mqpjE/dB+trvgMiBTEWlX9fEacaHnJzW2rlkxsg==
X-Received: by 2002:a05:6870:3290:b0:22a:9edb:27f0 with SMTP id q16-20020a056870329000b0022a9edb27f0mr12682871oac.3.1713200638035;
        Mon, 15 Apr 2024 10:03:58 -0700 (PDT)
Received: from tower.cjhon.com ([2603:8081:ad40:11:da43:aeff:fe57:b03a])
        by smtp.gmail.com with ESMTPSA id qa12-20020a056871e70c00b002331322bbb6sm2328465oac.29.2024.04.15.10.03.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Apr 2024 10:03:57 -0700 (PDT)
From: Jimmy Hon <honyuenkwun@gmail.com>
To: Heiko Stuebner <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	Jimmy Hon <honyuenkwun@gmail.com>
Subject: [PATCH] arm64: dts: rockchip: rk3588s-orangepi-5: add USB-C support
Date: Mon, 15 Apr 2024 12:03:31 -0500
Message-ID: <20240415170331.1587-1-honyuenkwun@gmail.com>
X-Mailer: git-send-email 2.44.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240415_100403_126635_6B4C4AEA 
X-CRM114-Status: GOOD (  10.27  )
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

Add support for using the Orange Pi 5 USB-C port for USB in OHCI, EHCI
or XHCI mode. Displayport AltMode is not yet supported.

Signed-off-by: Jimmy Hon <honyuenkwun@gmail.com>
---
 .../boot/dts/rockchip/rk3588s-orangepi-5.dts  | 106 ++++++++++++++++++
 1 file changed, 106 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5.dts b/arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5.dts
index 25de4362af38..8d1a75844673 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5.dts
@@ -6,6 +6,7 @@
 #include <dt-bindings/leds/common.h>
 #include <dt-bindings/input/input.h>
 #include <dt-bindings/pinctrl/rockchip.h>
+#include <dt-bindings/usb/pd.h>
 #include "rk3588s.dtsi"
 
 / {
@@ -212,6 +213,64 @@ &i2c6 {
 	pinctrl-0 = <&i2c6m3_xfer>;
 	status = "okay";
 
+	usbc0: usb-typec@22 {
+		compatible = "fcs,fusb302";
+		reg = <0x22>;
+		interrupt-parent = <&gpio0>;
+		interrupts = <RK_PD3 IRQ_TYPE_LEVEL_LOW>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&usbc0_int>;
+		vbus-supply = <&vbus_typec>;
+		status = "okay";
+
+		ports {
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			port@0 {
+				reg = <0>;
+
+				usbc0_role_sw: endpoint@0 {
+					remote-endpoint = <&dwc3_0_role_switch>;
+				};
+			};
+		};
+
+		usb_con: connector {
+			compatible = "usb-c-connector";
+			label = "USB-C";
+			data-role = "dual";
+			op-sink-microwatt = <1000000>;
+			power-role = "dual";
+			sink-pdos =
+				<PDO_FIXED(5000, 1000, PDO_FIXED_USB_COMM)>;
+			source-pdos =
+				<PDO_FIXED(5000, 3000, PDO_FIXED_USB_COMM)>;
+			try-power-role = "source";
+
+			ports {
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				port@0 {
+					reg = <0>;
+
+					usbc0_orien_sw: endpoint {
+						remote-endpoint = <&usbdp_phy0_orientation_switch>;
+					};
+				};
+
+				port@1 {
+					reg = <1>;
+
+					dp_altmode_mux: endpoint {
+						remote-endpoint = <&usbdp_phy0_dp_altmode_mux>;
+					};
+				};
+			};
+		};
+	};
+
 	hym8563: rtc@51 {
 		compatible = "haoyu,hym8563";
 		reg = <0x51>;
@@ -625,6 +684,14 @@ &tsadc {
 	status = "okay";
 };
 
+&u2phy0 {
+	status = "okay";
+};
+
+&u2phy0_otg {
+	status = "okay";
+};
+
 &u2phy2 {
 	status = "okay";
 };
@@ -646,6 +713,29 @@ &uart2 {
 	status = "okay";
 };
 
+&usbdp_phy0 {
+	mode-switch;
+	orientation-switch;
+	sbu1-dc-gpios = <&gpio4 RK_PA5 GPIO_ACTIVE_HIGH>;
+	sbu2-dc-gpios = <&gpio4 RK_PA7 GPIO_ACTIVE_HIGH>;
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
 &usb_host0_ehci {
 	status = "okay";
 };
@@ -654,6 +744,22 @@ &usb_host0_ohci {
 	status = "okay";
 };
 
+&usb_host0_xhci {
+	dr_mode = "otg";
+	usb-role-switch;
+	status = "okay";
+
+	port {
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		dwc3_0_role_switch: endpoint@0 {
+			reg = <0>;
+			remote-endpoint = <&usbc0_role_sw>;
+		};
+	};
+};
+
 &usb_host1_ehci {
 	status = "okay";
 };
-- 
2.44.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
