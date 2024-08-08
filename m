Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A592EC52D6F
	for <linux-rockchip@archiver.kernel.org>; Thu,  8 Aug 2024 12:36:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dHBr2eIBA90wzpGCyYzUHYnsVheW1p0UFLCis2x+++Y=; b=Z1wTao1HvXVn4U
	6cBFA2nP+/oqVJ/2mVmZi0Jj+CLkja+pT8Rzff03amuvDsPf10Dh4tG2TU23msvR5iXKcmG8ZuIYv
	1Ik51TRdYgtpoURHt+F1LfSyljP2j/ULZEfMSogQwRDgAf3wLOca2xkp+rAZHbbiOkPWHtlswc4dd
	Hi55G9RiTsqOPktqRpbIsqxp3ZcAZ7zjITecPHW82yEZ6STcNt+yA2iuFz2a3/cAI/3eIlqy5+HsJ
	NJSeoiEVu0x7PuPQwMF4icMFD/V+GS4YVKaEVa3kI/I7Wf82bLmGDdysVnIrrnuGoFscEXuzWSXMg
	IUzNbQ9NgrHg+gHmzV3w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sc2Nl-00000008EtM-2FQu;
	Thu, 08 Aug 2024 12:36:41 +0000
Received: from mail-lj1-x22e.google.com ([2a00:1450:4864:20::22e])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sc2Me-00000008EZA-0uWH;
	Thu, 08 Aug 2024 12:35:33 +0000
Received: by mail-lj1-x22e.google.com with SMTP id 38308e7fff4ca-2eeb1ba0481so11290701fa.2;
        Thu, 08 Aug 2024 05:35:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1723120529; x=1723725329; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=o51ApZXd06V2AF7Cj1cTcf7Njt4h2SYssNskn2mHgBo=;
        b=lwg2ntfgqxnOqXPOyzdVEniVm6DJ0ZksfBiXPrGeMg3wYuaq+b4oMNcTqL59WDDYyL
         OyLh8tzWInuxCEsjt5OD7bxXPQRhXuhROjSATeBOzMloHdPijCZQl57mRwJTQqdwawNa
         If5hP9LjR1tJ9Wd7U34e9nsr+X7XnLsI8C1P7MCK4EhV4dyt5SBYJYgXOvkAPja36/nf
         1UKzWwWNWRtkvI0mFKJDfTn2eZDOI4u/W3YkiVHksm/MKuMlkD6vcxbZUoOqmoUoV5Jf
         g5+DV/uIr95Jrz/Tb/su3+ME3PkKPWsv+JEKobwKrFRFJTyltTioCZPSm7gRgekf1DuS
         jy5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723120529; x=1723725329;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=o51ApZXd06V2AF7Cj1cTcf7Njt4h2SYssNskn2mHgBo=;
        b=MGamruzEf5Ukw1fXKkIpQzVl380VdODpRf8N6ChNvt2+F92aMdG7S3uPWrTEfDu5To
         W2AcgR4dP6QHJ4rPtZTZa4wa1UTHJ6hmVreDKcx+5MF9PZ+C1bs/Y1iNyV2JL+c5HCxu
         hxlNvqPDDBgHk+tBRzW3YM25NoktdO5RzEeZ9jaFJvzMOk4lau6j1/zBWRXUTfau++21
         PQ4sxNA0hs3sc/Z5F6hsAD4miG9qnWBiJD+iCVRS0JXBppgpMv01KQak9rf6mGdg/nY/
         3h1d2tdmz7pboyAhGzUw6ktwb4KUYXxxeHkZUoBu6QbY5ibArPPJlVdyEpBTdYUd00Xz
         eu6Q==
X-Forwarded-Encrypted: i=1; AJvYcCXADo7L49I+CgwU9xwMwi0Z9YDlWUF7Y2Oe/OiswV1Lm4gCDzWvr/wxsV7q+hevgW1eIqiGeT5fQAesyZqkxQMMIclrhfkcI8Pto4m0YUV9x6QvTO4NcsYQKnb/e6LTIeTsWfYSKKCk3OLCS2si3Zu0Nt4LH3mcNm4=
X-Gm-Message-State: AOJu0YxZv4O31lfeZR51exUaV6c7SvragfE/dbbxlI77Q54lD804FMhf
	UEwctmsMTwHqLTQZjPUdiXhP5qEPVlMK9TXID8F5ARcGkJNOZneq
X-Google-Smtp-Source: AGHT+IHuJ1mXFaao+RTtKGJI076Uc/J+w7qZ8G+7L6MJuDnrylCAZ8V6ZvnmJwYgJRvBofjiysqXFw==
X-Received: by 2002:a2e:b887:0:b0:2ef:2eb9:5e55 with SMTP id 38308e7fff4ca-2f19de332e6mr13382161fa.13.1723120528722;
        Thu, 08 Aug 2024 05:35:28 -0700 (PDT)
Received: from yoga-710.tas.nnz-ipc.net ([178.218.200.115])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-2f15e17e835sm21072261fa.21.2024.08.08.05.35.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 Aug 2024 05:35:28 -0700 (PDT)
From: Dmitry Yashin <dmt.yashin@gmail.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Dmitry Yashin <dmt.yashin@gmail.com>
Subject: [PATCH 1/2] arm64: dts: rockchip: add USB-C port 0 to OK3588-C
Date: Thu,  8 Aug 2024 17:33:53 +0500
Message-ID: <20240808123354.260797-2-dmt.yashin@gmail.com>
X-Mailer: git-send-email 2.46.0
In-Reply-To: <20240808123354.260797-1-dmt.yashin@gmail.com>
References: <20240808123354.260797-1-dmt.yashin@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240808_053532_277709_C5E8A3B8 
X-CRM114-Status: GOOD (  11.80  )
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

Add support for TypeC0 found on Forlinx OK3588-C. Powering the board
using this port is not supported, so set power-role to source.

Signed-off-by: Dmitry Yashin <dmt.yashin@gmail.com>
---
 .../boot/dts/rockchip/rk3588-ok3588-c.dts     | 110 ++++++++++++++++++
 1 file changed, 110 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-ok3588-c.dts b/arch/arm64/boot/dts/rockchip/rk3588-ok3588-c.dts
index c2a08bdf09e8..1b6bfa2b1a69 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-ok3588-c.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-ok3588-c.dts
@@ -1,6 +1,7 @@
 // SPDX-License-Identifier: (GPL-2.0+ OR MIT)
 
 /dts-v1/;
+#include <dt-bindings/usb/pd.h>
 #include "rk3588-fet3588-c.dtsi"
 
 / {
@@ -100,6 +101,18 @@ masterdai: simple-audio-card,codec {
 		};
 	};
 
+	vbus5v0_typec0: vbus5v0-typec0-regulator {
+		compatible = "regulator-fixed";
+		regulator-name = "vbus5v0_typec0";
+		enable-active-high;
+		gpio = <&gpio0 RK_PD0 GPIO_ACTIVE_HIGH>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&typec5v_0_pwren>;
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		vin-supply = <&vcc5v0_sys>;
+	};
+
 	vcc12v_dcin: vcc12v-dcin-regulator {
 		compatible = "regulator-fixed";
 		regulator-name = "vcc12v_dcin";
@@ -206,6 +219,51 @@ &gpu {
 &i2c2 {
 	status = "okay";
 
+	usbc0: usb-typec@22 {
+		compatible = "fcs,fusb302";
+		reg = <0x22>;
+		interrupt-parent = <&gpio1>;
+		interrupts = <RK_PB0 IRQ_TYPE_LEVEL_LOW>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&usbc0_int>;
+		vbus-supply = <&vbus5v0_typec0>;
+
+		usb_con0: connector {
+			compatible = "usb-c-connector";
+			label = "USB-C";
+			data-role = "dual";
+			power-role = "source";
+			source-pdos =
+				<PDO_FIXED(5000, 2000, PDO_FIXED_USB_COMM)>;
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
 	tca6424a: gpio@23 {
 		compatible = "ti,tca6424";
 		reg = <0x23>;
@@ -349,6 +407,16 @@ tca6424a_int: tca6424a-int {
 			rockchip,pins = <1 RK_PA4 RK_FUNC_GPIO &pcfg_pull_up>;
 		};
 	};
+
+	usb-typec {
+		typec5v_0_pwren: typec5v-0-pwren {
+			rockchip,pins = <0 RK_PD0 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+
+		usbc0_int: usbc0-int {
+			rockchip,pins = <1 RK_PB0 RK_FUNC_GPIO &pcfg_pull_up>;
+		};
+	};
 };
 
 &pwm2 {
@@ -378,6 +446,14 @@ &tsadc {
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
@@ -394,6 +470,29 @@ &u2phy3_host {
 	status = "okay";
 };
 
+&usbdp_phy0 {
+	mode-switch;
+	orientation-switch;
+	sbu1-dc-gpios = <&gpio4 RK_PA0 GPIO_ACTIVE_HIGH>;
+	sbu2-dc-gpios = <&gpio4 RK_PB0 GPIO_ACTIVE_HIGH>;
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
@@ -402,6 +501,17 @@ &usb_host0_ohci {
 	status = "okay";
 };
 
+&usb_host0_xhci {
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
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
