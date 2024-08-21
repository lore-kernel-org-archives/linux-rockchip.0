Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0618CC5472E
	for <linux-rockchip@archiver.kernel.org>; Wed, 21 Aug 2024 08:33:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MInnWRX0C+nMPy3Fh7UMRnDOXDxj2QJ5rwyc5JAjDm8=; b=Fn2kalI+ABPgHT
	u6EHMnCY2EzZOo10f6ZsiqokAT2WMKrZCv9OdfLoGdghZ/5SmD7xCUPTZoG5drQsbTQldCAXeuM6H
	JsVHmPUykF0ibSplUbtOfued7C5XSnf6eIuwcY3CHObWPV2ulXu/bPMGJWezOfrZTdSMdvz3gWZ76
	zYSk1hWL5M2KXySqsugB/gysP8ShS8Vxbdcn+XX0IpsQVC6VCbiiqfCTyt08PhP9IwwnTpoAIxvKe
	lkOyfL+BurDf4RQ93HRj0iuNXxK3ZTccKxavBE0v+GVx+sKzrDcVbd8EtW2Sj2qV4St0z1Q5Vthqj
	5DOSQJGaTouVcV2yEPaw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sggm5-000000085BQ-13Pr;
	Wed, 21 Aug 2024 08:33:01 +0000
Received: from muminek.juszkiewicz.com.pl ([213.251.184.221])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sggfC-000000083Kx-2Sca
	for linux-rockchip@lists.infradead.org;
	Wed, 21 Aug 2024 08:25:56 +0000
Received: from localhost (localhost [127.0.0.1])
	by muminek.juszkiewicz.com.pl (Postfix) with ESMTP id 30D092619C2;
	Wed, 21 Aug 2024 10:25:53 +0200 (CEST)
X-Virus-Scanned: Debian amavis at juszkiewicz.com.pl
Received: from muminek.juszkiewicz.com.pl ([127.0.0.1])
 by localhost (muminek.juszkiewicz.com.pl [127.0.0.1]) (amavis, port 10024)
 with ESMTP id Bp5BqIVJo_GC; Wed, 21 Aug 2024 10:25:51 +0200 (CEST)
Received: from puchatek.local (79.186.29.241.ipv4.supernova.orange.pl [79.186.29.241])
	by muminek.juszkiewicz.com.pl (Postfix) with ESMTPSA id C44DA261A09;
	Wed, 21 Aug 2024 10:25:47 +0200 (CEST)
From: Marcin Juszkiewicz <marcin.juszkiewicz@linaro.org>
Date: Wed, 21 Aug 2024 10:25:35 +0200
Subject: [PATCH v2 6/6] arm64: dts: rockchip: enable USB-C on NanoPC-T6
MIME-Version: 1.0
Message-Id: <20240821-friendlyelec-nanopc-t6-lts-v2-6-e0138bb10042@linaro.org>
References: <20240821-friendlyelec-nanopc-t6-lts-v2-0-e0138bb10042@linaro.org>
In-Reply-To: <20240821-friendlyelec-nanopc-t6-lts-v2-0-e0138bb10042@linaro.org>
To: Heiko Stuebner <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org, 
 Marcin Juszkiewicz <marcin.juszkiewicz@linaro.org>
X-Mailer: b4 0.14.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240821_012554_860496_B765311E 
X-CRM114-Status: UNSURE (   8.74  )
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

Enable the USB-C port on FriendlyELEC NanoPC-T6.

Works one way so far but still better than before.

Signed-off-by: Marcin Juszkiewicz <marcin.juszkiewicz@linaro.org>
---
 arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dts | 71 +++++++++++++++++++++++
 1 file changed, 71 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dts b/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dts
index 61b307371d4e..c0d498486657 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dts
@@ -135,6 +135,8 @@ vbus5v0_typec: vbus5v0-typec-regulator {
 		gpio = <&gpio1 RK_PD2 GPIO_ACTIVE_HIGH>;
 		pinctrl-names = "default";
 		pinctrl-0 = <&typec5v_pwren>;
+		regulator-always-on;
+		regulator-boot-on;
 		regulator-name = "vbus5v0_typec";
 		regulator-min-microvolt = <5000000>;
 		regulator-max-microvolt = <5000000>;
@@ -410,6 +412,32 @@ connector {
 			source-pdos = <PDO_FIXED(5000, 2000, PDO_FIXED_USB_COMM)>;
 			sink-pdos = <PDO_FIXED(5000, 3000, PDO_FIXED_USB_COMM)>;
 			op-sink-microwatt = <1000000>;
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
 		};
 	};
 
@@ -960,6 +988,14 @@ &uart2 {
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
 &u2phy1 {
 	status = "okay";
 };
@@ -985,6 +1021,29 @@ &u2phy3 {
 	status = "okay";
 };
 
+&usbdp_phy0 {
+	mode-switch;
+	orientation-switch;
+	sbu1-dc-gpios = <&gpio4 RK_PA6 GPIO_ACTIVE_HIGH>;
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
 &usbdp_phy1 {
 	status = "okay";
 };
@@ -997,6 +1056,18 @@ &usb_host0_ohci {
 	status = "okay";
 };
 
+&usb_host0_xhci {
+	dr_mode = "host";
+	status = "okay";
+	usb-role-switch;
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
2.46.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
