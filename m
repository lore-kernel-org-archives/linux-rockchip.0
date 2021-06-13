Return-Path: <SRS0=g/fF=LH=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4096FC48BDF
	for <linux-rockchip@archiver.kernel.org>; Sun, 13 Jun 2021 21:54:49 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id F0CE461357
	for <linux-rockchip@archiver.kernel.org>; Sun, 13 Jun 2021 21:54:48 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org F0CE461357
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ww9X90R50otdKirAg/xLdY4bE+02WAh/2RIQ+8wXdtY=; b=WNAg8P0fU9jl/H
	2B/Fo2Ho9BOzIQwj1jTTyuy1Qk2M7CA6qdw/cE2EWDmFqyqrnKPMhgG+Nrsd6IozkOXPJMHVQM6XO
	3iWWRx/s58oeTp2P4jugAetBQOFZnYC5lYMLqPjj0EUGisPsXFH4RsJbxYfGrlD5NTjuO9wY+vQ9m
	6RVHad9vgcPUb7Uo5GHFUs2kAiaq0/XCelq0tKUodqx4dS50HVK5+4i0YJCw3MFFAcMFrdgpp+dgf
	JwwN2yfEH7eN9lCDo/FhJsUFWk277qTUPHCTN2zfgIVrctYoQrov3RYEZY4XzCMOXo2tRdME/7AO3
	4Lafd632cCqMyB1HCbcQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lsY44-00BPkp-L4; Sun, 13 Jun 2021 21:54:44 +0000
Received: from mail-wr1-f44.google.com ([209.85.221.44])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lsY36-00BPOU-EE; Sun, 13 Jun 2021 21:53:45 +0000
Received: by mail-wr1-f44.google.com with SMTP id c5so12246335wrq.9;
 Sun, 13 Jun 2021 14:53:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=i33Wbid6ky3Br/tyd/neSkTJIUUEpQjcu45tT9eNBU8=;
 b=Ektjwxew1IWXwKXbVOsuCfo17xVCA/v89LIX/WXECZuF4bu/8Oh8azzEOv3xsvqcQo
 eEW+TV4yGUW8qLlT2XgMTsoQoG7PWyeU52Kn4ZRut7Hv4xMdm8xgfm3AzKKulQDFWvZI
 vfsgCNXVbU9j3WdRS+//JmKTmVXSiVfW3lpK9l+hWT/MUk5sdg2cgPUbH7HN7tGpmHa/
 hvZzZXCyxDZpvtJm0FRqH3YMXde8aI4O8vL1vLqfP5Xsyb0RF9+jmejtYhdWm/UDmlRa
 pRQUMGWcwNwZ0QSCA95O4u8ieZ0y7jMuNz1oso/3uhiGUNdNRyy2XVRiVe2igb6Zml0c
 HXnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=i33Wbid6ky3Br/tyd/neSkTJIUUEpQjcu45tT9eNBU8=;
 b=DLeSjjbYuTPQOueoZlhNyk6IrXDp0y1bktQRdRIwpufSYLBfjb6W6I77kJRcE74mF8
 uJMn7NdFng4qjy9AA5C9sF9byO49kaR+0KZ9bMyKPGv8iKgdi+e0NZASd50HBPv2MqWm
 8XPYuidMax+AWVDbdah41GM2Tq7K3ZUJ0+JMjsecMYkoFP1C1lABd/G1CvHXacngfqCR
 ZN6fuyB1Ioj6CPUcXgL+3HoCiUuamtzAAUs0grrwTuGuTvhlxfHJ2WTUiMDiYxmw4iXr
 kXMbOKNOHsvQhk/4b7iIxMuQC0c3Q4ltNo6j5PCPQcYQ9ILlK5VZR233B4XJxUEPwJrH
 sZHQ==
X-Gm-Message-State: AOAM533pL5sfa+PMubIN1l8T9sh76Sn6Xd0B8q6b5E3KPY/MNFPrDeaL
 kPXAJ0sZsO9i7mek/Z++9ns=
X-Google-Smtp-Source: ABdhPJwuCaeMg6ZiqgMY7PJPB2/C4W3n8Jln2U/mBVM+FuhciIOlhtcqS8V+G/goIFZWQhtm728djg==
X-Received: by 2002:adf:ee82:: with SMTP id b2mr15621159wro.360.1623621163020; 
 Sun, 13 Jun 2021 14:52:43 -0700 (PDT)
Received: from morpheus.home.roving-it.com
 (f.c.9.1.f.e.c.d.1.e.0.0.2.b.5.5.1.8.6.2.1.1.b.f.0.b.8.0.1.0.0.2.ip6.arpa.
 [2001:8b0:fb11:2681:55b2:e1:dcef:19cf])
 by smtp.googlemail.com with ESMTPSA id a10sm12803883wrr.48.2021.06.13.14.52.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 13 Jun 2021 14:52:42 -0700 (PDT)
From: Peter Robinson <pbrobinson@gmail.com>
To: Heiko Stuebner <heiko@sntech.de>, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
Cc: Peter Robinson <pbrobinson@gmail.com>
Subject: [PATCH 4/4] arm64: dts: rockchip: Add USB-C port details for rk3399
 Firefly
Date: Sun, 13 Jun 2021 22:52:37 +0100
Message-Id: <20210613215237.830160-4-pbrobinson@gmail.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210613215237.830160-1-pbrobinson@gmail.com>
References: <20210613215237.830160-1-pbrobinson@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210613_145344_511782_B60E9836 
X-CRM114-Status: GOOD (  11.27  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

Add the initial details for the USB-C port.

Signed-off-by: Peter Robinson <pbrobinson@gmail.com>
---
 .../boot/dts/rockchip/rk3399-firefly.dts      | 85 +++++++++++++++++++
 1 file changed, 85 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-firefly.dts b/arch/arm64/boot/dts/rockchip/rk3399-firefly.dts
index e56d47040868..4a427beab1c7 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-firefly.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-firefly.dts
@@ -6,6 +6,7 @@
 /dts-v1/;
 #include <dt-bindings/input/linux-event-codes.h>
 #include <dt-bindings/pwm/pwm.h>
+#include <dt-bindings/usb/pd.h>
 #include "rk3399.dtsi"
 #include "rk3399-opp.dtsi"
 
@@ -220,6 +221,17 @@ vcc5v0_host: vcc5v0-host-regulator {
 		vin-supply = <&vcc_sys>;
 	};
 
+	vcc5v0_typec: vcc5v0-typec-regulator {
+		compatible = "regulator-fixed";
+		enable-active-high;
+		gpio = <&gpio1 RK_PA3 GPIO_ACTIVE_HIGH>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&vcc5v0_typec_en>;
+		regulator-name = "vcc5v0_typec";
+		regulator-always-on;
+		vin-supply = <&vcc_sys>;
+	};
+
 	vcc_sys: vcc-sys {
 		compatible = "regulator-fixed";
 		regulator-name = "vcc_sys";
@@ -551,6 +563,53 @@ accelerometer@68 {
 		interrupt-parent = <&gpio1>;
 		interrupts = <RK_PC6 IRQ_TYPE_EDGE_RISING>;
 	};
+
+	fusb0: typec-portc@22 {
+		compatible = "fcs,fusb302";
+		reg = <0x22>;
+		interrupt-parent = <&gpio1>;
+		interrupts = <RK_PA2 IRQ_TYPE_LEVEL_LOW>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&fusb0_int>;
+		vbus-supply = <&vcc5v0_typec>;
+		status = "okay";
+
+		connector {
+			compatible = "usb-c-connector";
+			data-role = "host";
+			label = "USB-C";
+			op-sink-microwatt = <1000000>;
+			power-role = "dual";
+			sink-pdos =
+				<PDO_FIXED(5000, 2500, PDO_FIXED_USB_COMM)>;
+			source-pdos =
+				<PDO_FIXED(5000, 1400, PDO_FIXED_USB_COMM)>;
+			try-power-role = "sink";
+
+			ports {
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				port@0 {
+					reg = <0>;
+
+					usbc_hs: endpoint {
+						remote-endpoint =
+							<&u2phy0_typec_hs>;
+					};
+				};
+
+				port@1 {
+					reg = <1>;
+
+					usbc_ss: endpoint {
+						remote-endpoint =
+							<&tcphy0_typec_ss>;
+					};
+				};
+			};
+		};
+	};
 };
 
 &i2s0 {
@@ -602,6 +661,12 @@ pwrbtn: pwrbtn {
 		};
 	};
 
+	fusb302x {
+		fusb0_int: fusb0-int {
+			rockchip,pins = <1 RK_PA2 RK_FUNC_GPIO &pcfg_pull_up>;
+		};
+	};
+
         ir {
                 ir_int: ir-int {
                         rockchip,pins = <0 RK_PA6 RK_FUNC_GPIO &pcfg_pull_none>;
@@ -660,6 +725,12 @@ wifi_enable_h: wifi-enable-h {
 		};
 	};
 
+	usb-typec {
+		vcc5v0_typec_en: vcc5v0_typec_en {
+			rockchip,pins = <1 RK_PA3 RK_FUNC_GPIO &pcfg_pull_up>;
+		};
+	};
+
 	usb2 {
 		vcc5v0_host_en: vcc5v0-host-en {
 			rockchip,pins = <1 RK_PA0 RK_FUNC_GPIO &pcfg_pull_none>;
@@ -753,6 +824,14 @@ &tcphy0 {
 	status = "okay";
 };
 
+&tcphy0_usb3 {
+	port {
+		tcphy0_typec_ss: endpoint {
+			remote-endpoint = <&usbc_ss>;
+		};
+	};
+};
+
 &tcphy1 {
 	status = "okay";
 };
@@ -776,6 +855,12 @@ u2phy0_host: host-port {
 		phy-supply = <&vcc5v0_host>;
 		status = "okay";
 	};
+
+	port {
+		u2phy0_typec_hs: endpoint {
+			remote-endpoint = <&usbc_hs>;
+		};
+	};
 };
 
 &u2phy1 {
-- 
2.31.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
