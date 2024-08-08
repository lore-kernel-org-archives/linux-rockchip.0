Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 720F3C52D73
	for <linux-rockchip@archiver.kernel.org>; Thu,  8 Aug 2024 12:37:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TyhilJc82Z6cj7Ca2gu9mbAkTSq7RvUudPvVBGNEMeA=; b=Vp21ftuhJ7dsL9
	zYBixsgyCSO5dnLzwCjhPWJ1YUhh5RHyyruldjSCeqjktuKUF1TqBryGchOZKsacAz8uveHF5nBUn
	Xal8ts0k7Kd7aE4eJpIJLYg2OXfGIVvGb0DUPeemhlngPzUKK2Opff5sHcfRk9ALLbNjnx1He9SVc
	Jump8bAzPR82ig7LkkY9/e1CtIsqRYgUsSvX1Crg0JGekV7KIiiUqMvkx3HW6oFCxSWLScRdYkxKB
	P+cOFdv9mSAm9K5Ye6j1z/4T41fUFWDRz2836kcSyLwKIk/SpjZ+1CmuDpRv4rTuhuNN+W3iXGKbH
	j44VbsoOSUTlgcBruuUA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sc2OI-00000008F23-1mjV;
	Thu, 08 Aug 2024 12:37:14 +0000
Received: from mail-lj1-x236.google.com ([2a00:1450:4864:20::236])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sc2Mg-00000008EZZ-1hkt;
	Thu, 08 Aug 2024 12:35:36 +0000
Received: by mail-lj1-x236.google.com with SMTP id 38308e7fff4ca-2f0dfdc9e16so10186231fa.2;
        Thu, 08 Aug 2024 05:35:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1723120532; x=1723725332; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=yL2NFbu/GDcNXSp9bTUdpTQcWr52zC29uyev+697YWk=;
        b=CmvpyRPsFBBAKdmdVUKBalbCv9QLSRDY5i4l7n8dBpNSGciK7ToNvZD+lDpas4rENn
         hT9aUqrB2ddoYJUbB23D+Di6qoW5T42JAS+PYJJ8P6u0WrtzOCj/eSCl5LCJjbKdqzId
         dmUnAW6sRQ7EvkDvEP0SVuz1iJNf96stXu+5G9F+meCKAfM8Y8fULRM14RPc/TE6xGVu
         fJhkaSMADCTpf4Ul707ZFtHTg1+bYgBeYhmmDKn1udNpkyaOYYKh78iSi8jaEuYtLJ/v
         hvPQqTP6qw8xHY8BSfR4UTRHB5CbLaEe7+PKWzeLQjHOs3OGsjkqy/XLo9BKY3yle7BV
         Q87Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723120532; x=1723725332;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=yL2NFbu/GDcNXSp9bTUdpTQcWr52zC29uyev+697YWk=;
        b=pi2Y40vXpimGSFdDc1+1paa6mnhug42kf8T5RBfr12SSD4WJfjdjzXlV0BI2l7XnaY
         qRWXiUig4RS6NZu6uiODlIjg8BER3rt9MA40R0DJOKaRhODu+Hg0Oio4C9NJK4Ucv4M2
         2smpNbVrdcq4v7kNtALw//UffvL96ji6m6H3Dr/HocrAsalcZYtz+C/24Qzqw/cOocUI
         58J8KHEgrp3qvPSnaafD8r8PzthS6qIK3EQa66Z30S9KflABUZTfE4GvhNepjF8HGZm2
         SvnRw6NddSrl17n6Lda4jzmDnMCSyP+lR1n320IsufODScVDthXsoCfGvMBD5c+amwS9
         kI/w==
X-Forwarded-Encrypted: i=1; AJvYcCXfq5GKVq52+sEuzggijIQh1DVM3Rg7WpoLfsM0WRHBZelOaZtDCTot7Aaa/Qw3QxuYBoQLYQ1V/BlHEgmRD5JlJiiebDH8Vs0NNDumweIcwM7wcy2YRBP8xYmz1cIPBHS4v2Lm6s2Uog9ZRKTeABJ/0gfS9SnPXVs=
X-Gm-Message-State: AOJu0YwQbA1LEWxIEV3fTQK0j337aBrIZMYKzjJAF3u5KO18OXMbVcBk
	06zT7baVd7u2PixY60tnwxIeMNUSegsdK1h2OGTCCS2cIanQlJoX
X-Google-Smtp-Source: AGHT+IGaS2HuBJ5tJ5zsvNq9z1ORbE0V9h5qcKUy5D8gSxJO2JMzcc2RtMCmFeyAhyrRiqvrqVvpvQ==
X-Received: by 2002:a05:651c:507:b0:2ef:1f51:c4f2 with SMTP id 38308e7fff4ca-2f19de2a220mr13859381fa.14.1723120531131;
        Thu, 08 Aug 2024 05:35:31 -0700 (PDT)
Received: from yoga-710.tas.nnz-ipc.net ([178.218.200.115])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-2f15e17e835sm21072261fa.21.2024.08.08.05.35.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 Aug 2024 05:35:30 -0700 (PDT)
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
Subject: [PATCH 2/2] arm64: dts: rockchip: add USB-C port 1 to OK3588-C
Date: Thu,  8 Aug 2024 17:33:54 +0500
Message-ID: <20240808123354.260797-3-dmt.yashin@gmail.com>
X-Mailer: git-send-email 2.46.0
In-Reply-To: <20240808123354.260797-1-dmt.yashin@gmail.com>
References: <20240808123354.260797-1-dmt.yashin@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240808_053534_476258_BA493AAD 
X-CRM114-Status: GOOD (  11.36  )
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

Add support for TypeC1 found on Forlinx OK3588-C. Powering the board
using this port is not supported, so set power-role to source.

Signed-off-by: Dmitry Yashin <dmt.yashin@gmail.com>
---
 .../boot/dts/rockchip/rk3588-ok3588-c.dts     | 107 ++++++++++++++++++
 1 file changed, 107 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-ok3588-c.dts b/arch/arm64/boot/dts/rockchip/rk3588-ok3588-c.dts
index 1b6bfa2b1a69..c71fbf3562b4 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-ok3588-c.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-ok3588-c.dts
@@ -113,6 +113,18 @@ vbus5v0_typec0: vbus5v0-typec0-regulator {
 		vin-supply = <&vcc5v0_sys>;
 	};
 
+	vbus5v0_typec1: vbus5v0-typec1-regulator {
+		compatible = "regulator-fixed";
+		regulator-name = "vbus5v0_typec1";
+		enable-active-high;
+		gpio = <&gpio0 RK_PD3 GPIO_ACTIVE_HIGH>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&typec5v_1_pwren>;
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		vin-supply = <&vcc5v0_sys>;
+	};
+
 	vcc12v_dcin: vcc12v-dcin-regulator {
 		compatible = "regulator-fixed";
 		regulator-name = "vcc12v_dcin";
@@ -286,6 +298,51 @@ &i2c5 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&i2c5m2_xfer>;
 
+	usbc1: usb-typec@22 {
+		compatible = "fcs,fusb302";
+		reg = <0x22>;
+		interrupt-parent = <&gpio1>;
+		interrupts = <RK_PB3 IRQ_TYPE_LEVEL_LOW>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&usbc1_int>;
+		vbus-supply = <&vbus5v0_typec1>;
+
+		usb_con1: connector {
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
+					usbc1_hs: endpoint {
+						remote-endpoint = <&usb_host1_xhci_drd_sw>;
+					};
+				};
+
+				port@1 {
+					reg = <1>;
+					usbc1_ss: endpoint {
+						remote-endpoint = <&usbdp_phy1_typec_ss>;
+					};
+				};
+
+				port@2 {
+					reg = <2>;
+					usbc1_sbu: endpoint {
+						remote-endpoint = <&usbdp_phy1_typec_sbu>;
+					};
+				};
+			};
+		};
+	};
+
 	pcf8563: rtc@51 {
 		compatible = "nxp,pcf8563";
 		reg = <0x51>;
@@ -413,9 +470,17 @@ typec5v_0_pwren: typec5v-0-pwren {
 			rockchip,pins = <0 RK_PD0 RK_FUNC_GPIO &pcfg_pull_none>;
 		};
 
+		typec5v_1_pwren: typec5v-1-pwren {
+			rockchip,pins = <0 RK_PD3 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+
 		usbc0_int: usbc0-int {
 			rockchip,pins = <1 RK_PB0 RK_FUNC_GPIO &pcfg_pull_up>;
 		};
+
+		usbc1_int: usbc1-int {
+			rockchip,pins = <1 RK_PB3 RK_FUNC_GPIO &pcfg_pull_up>;
+		};
 	};
 };
 
@@ -454,6 +519,14 @@ &u2phy0_otg {
 	status = "okay";
 };
 
+&u2phy1 {
+	status = "okay";
+};
+
+&u2phy1_otg {
+	status = "okay";
+};
+
 &u2phy2 {
 	status = "okay";
 };
@@ -493,6 +566,29 @@ usbdp_phy0_typec_sbu: endpoint@1 {
 	};
 };
 
+&usbdp_phy1 {
+	mode-switch;
+	orientation-switch;
+	sbu1-dc-gpios = <&gpio4 RK_PA1 GPIO_ACTIVE_HIGH>;
+	sbu2-dc-gpios = <&gpio4 RK_PA2 GPIO_ACTIVE_HIGH>;
+	status = "okay";
+
+	port {
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		usbdp_phy1_typec_ss: endpoint@0 {
+			reg = <0>;
+			remote-endpoint = <&usbc1_ss>;
+		};
+
+		usbdp_phy1_typec_sbu: endpoint@1 {
+			reg = <1>;
+			remote-endpoint = <&usbc1_sbu>;
+		};
+	};
+};
+
 &usb_host0_ehci {
 	status = "okay";
 };
@@ -519,3 +615,14 @@ &usb_host1_ehci {
 &usb_host1_ohci {
 	status = "okay";
 };
+
+&usb_host1_xhci {
+	usb-role-switch;
+	status = "okay";
+
+	port {
+		usb_host1_xhci_drd_sw: endpoint {
+			remote-endpoint = <&usbc1_hs>;
+		};
+	};
+};
-- 
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
