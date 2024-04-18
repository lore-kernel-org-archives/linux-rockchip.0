Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6C843C4345F
	for <linux-rockchip@archiver.kernel.org>; Thu, 18 Apr 2024 03:58:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=IDXWN7RqwpPEgKmvoUtdoujkc8XMiUlMpMmKNNM3rcA=; b=EtCS8zoJNLVjxu
	seOJCofdwqLOBT+zr6QB7A53nrR7Ak3K8YAA/SgvhslZnlTitje1unfE4Ia2/nURyP8+3Vitr1SAl
	tFYrdxvB5SQ4uW/9p4ei1MzFewwEECFl/nSFHmNnsebh42Aum1NK7ZEsef8IMbBcDKF66WwZg53CG
	Xz8e+47NL+SsFFDfEiqL9z7j8VZyHT4zY6ihNtXUADd7ob+DVZxnPfgRR/IUrG0fluLzzjZBAL2f2
	OetfkADtauzmrOUd/+7+jgqI06WvTRVOjOOsNuUMut7fM7zYy2IqRrxap5wmA8ZURxBbn5C8tFRUm
	Vsqluy9j+DQ08Rz9tnsQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rxIuR-00000000qGg-35Yf;
	Thu, 18 Apr 2024 03:58:03 +0000
Received: from mail-ot1-x32a.google.com ([2607:f8b0:4864:20::32a])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rxIuO-00000000qG0-3DwW;
	Thu, 18 Apr 2024 03:58:02 +0000
Received: by mail-ot1-x32a.google.com with SMTP id 46e09a7af769-6eb6b9e1808so266151a34.3;
        Wed, 17 Apr 2024 20:57:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1713412678; x=1714017478; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=FeYrHvkaPxegbZ3efLcw6QF3+V1RZNVmA6+M7o5IFQs=;
        b=T+JLe5VDjdV2NzHQlAa/x4bD3GxC3hyV/EujZwwCUvnWaOlz9VjIJU4DMQoFZ2mft9
         VN8oQ7tgulZDT3zPC3Wri0zEVhqQZRX1z34kmau3F9S79IOHSDH2N5SeYwz8vgfXgWad
         aA4hUZlXCt8aXCf+JW7+11pIQLPLAZPZ1NnlzuSCJi/KB0MF/yQA6xaWx+9T6VOrc7Ue
         /fwBx8NQqf5MN8dxJB8goJc7TsNWoSc9Mw/teUnv9rqkdtdskVlMf1n+9Gr8+lb2WVbQ
         rfjynRLGFWsBF6vshViZWbi3Skt2zsTdOq9iX0oGVOkfold9wH9p6RSsD0gK1LzXD1sF
         XxIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713412678; x=1714017478;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=FeYrHvkaPxegbZ3efLcw6QF3+V1RZNVmA6+M7o5IFQs=;
        b=O7Fy0mwaIfuMxZClBA1i7jQGE+84VEgmNgOELhDwJp5AYFmQ7l1YPeHhuebnq4QR2x
         YEOsoag+AKPTx0PlFyZ2iwxE8jc1j6n/6d+4lYAEwhM+uk+RgPd149ekXhNOxqAPALUR
         11JDk/OtRTiVnjhrH6TNvh5Irla8DgyR0c4n10NLiNhgUHpIYSzhcL41uyArPLviLTtO
         UXiRCgDaY+RIRiOTpvzyQWHNmZQ9gLWXX5UMtZHQSoI1h8l1Dw8Jo5OwUTmAknrkdM8t
         V+ctWkJYnfYkx67UXAN0bFFteosw5q0ANzm88UFR4rTLnOO87PmDhc9dfP8rc6Bra76r
         7LWg==
X-Forwarded-Encrypted: i=1; AJvYcCX1ZgDb8edi6y+WB9Kx8PH9W6JEoZOQdqg9houtyVs+Um4CTx9RN7IQPj27ze7dNQLtCgCCDTPxAwIrx0abSxQqCVRireTmxJQwSF131eycZHPb7k8=
X-Gm-Message-State: AOJu0YwUoogolJ7rILFjlHs/8qd7Md+rJbGHNri/S4eYyWHOmDxeGQWx
	N3K9wWOBer1I2s/S18fJcjw0jAXIGMtDwGQPaceQswxcKgwG3sHQ
X-Google-Smtp-Source: AGHT+IFFVETgl63V52/MFjvbDsQtrjz3qJY0YGJhJrIG4W10GwnGB/marysyj/p4az+X5dtjMZSlIA==
X-Received: by 2002:a05:6830:148d:b0:6ea:108a:ec55 with SMTP id s13-20020a056830148d00b006ea108aec55mr1650291otq.11.1713412677783;
        Wed, 17 Apr 2024 20:57:57 -0700 (PDT)
Received: from tower.cjhon.com ([2603:8081:ad40:11:da43:aeff:fe57:b03a])
        by smtp.gmail.com with ESMTPSA id l20-20020a056830155400b006eb7dc0599fsm176638otp.38.2024.04.17.20.57.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 17 Apr 2024 20:57:57 -0700 (PDT)
From: Jimmy Hon <honyuenkwun@gmail.com>
To: Heiko Stuebner <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	Jimmy Hon <honyuenkwun@gmail.com>
Subject: [PATCH v2] arm64: dts: rockchip: rk3588s-orangepi-5: add USB-C support
Date: Wed, 17 Apr 2024 22:52:33 -0500
Message-ID: <20240418035232.35344-2-honyuenkwun@gmail.com>
X-Mailer: git-send-email 2.44.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240417_205800_849737_4E3B7D14 
X-CRM114-Status: GOOD (  10.48  )
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
v2: change ports section to follow typec convention of hs/ss/sbu

 .../boot/dts/rockchip/rk3588s-orangepi-5.dts  | 94 +++++++++++++++++++
 1 file changed, 94 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5.dts b/arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5.dts
index 25de4362af38..c61898355f3e 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5.dts
@@ -6,6 +6,7 @@
 #include <dt-bindings/leds/common.h>
 #include <dt-bindings/input/input.h>
 #include <dt-bindings/pinctrl/rockchip.h>
+#include <dt-bindings/usb/pd.h>
 #include "rk3588s.dtsi"
 
 / {
@@ -212,6 +213,56 @@ &i2c6 {
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
+					usbc0_hs: endpoint {
+						remote-endpoint = <&usb_host0_xhci_drd_sw>;
+					};
+				};
+
+				port@1 {
+					reg = <1>;
+					usbc0_ss: endpoint {
+						remote-endpoint = <&usbdp_phy0_typec_ss>;
+					};
+				};
+
+				port@2 {
+					reg = <2>;
+					usbc0_sbu: endpoint {
+						remote-endpoint = <&usbdp_phy0_typec_sbu>;
+					};
+				};
+			};
+		};
+	};
+
 	hym8563: rtc@51 {
 		compatible = "haoyu,hym8563";
 		reg = <0x51>;
@@ -625,6 +676,14 @@ &tsadc {
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
@@ -646,6 +705,29 @@ &uart2 {
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
+		usbdp_phy0_typec_ss: endpoint@0 {
+			reg = <0>;
+			remote-endpoint = <&usbc0_ss>;
+		};
+
+		usbdp_phy0_typec_sbu: endpoint@1 {
+			reg = <1>;
+			remote-endpoint = <&usbc0_sbu>;
+		};
+	};
+};
+
 &usb_host0_ehci {
 	status = "okay";
 };
@@ -654,6 +736,18 @@ &usb_host0_ohci {
 	status = "okay";
 };
 
+&usb_host0_xhci {
+	dr_mode = "otg";
+	usb-role-switch;
+	status = "okay";
+
+	port {
+		usb_host0_xhci_drd_sw: endpoint {
+			remote-endpoint = <&usbc0_hs>;
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
