Return-Path: <SRS0=FMM6=D5=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1B6C9C388F2
	for <linux-rockchip@archiver.kernel.org>; Thu, 22 Oct 2020 11:36:30 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 4DD27206F7
	for <linux-rockchip@archiver.kernel.org>; Thu, 22 Oct 2020 11:36:29 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="ZE/uMw1b"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 4DD27206F7
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gentoo.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=uUdjX4MQqKHpBsmX9gIzoFrmBGIQOsgCiTyvchgudPw=; b=ZE/uMw1b9leIjKg+KRQ/SA7w8U
	EZcQatG/mL+PjOlUabq1XXCmC3PYdsmHqh81hJJB27pLz60SrgHUdidy6JEA1da3VbDyWIMeTc7So
	nxZ9r8ko2y4yXRLXL6HnJtZHb7uYPRSzyxRJGebL1prXUmobTCxQ6DbMaOEIBKAVZ7J+2BdWg1d0y
	GV/1ryR8+4M9HIGHsCsMJSFJeS59Ow3nuH+sOEu34X0DH2HtypYmkXPBar3T8nKXT4j8ACt1HFmqH
	0YK2BJ4iEoMCazwnfESGHFtPE4iVquwdSfugIRdPfP9doqgs+lz7MlVz2zHB19lB3vGsXymYCCwtQ
	HMGrH57Q==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kVYtK-0006jc-Lx; Thu, 22 Oct 2020 11:36:22 +0000
Received: from smtp.gentoo.org ([140.211.166.183])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kVYtC-0006iI-2H; Thu, 22 Oct 2020 11:36:18 +0000
From: Alexis Ballier <aballier@gentoo.org>
To: 
Subject: [PATCH] arm64: dts: rockchip: rk3399-orangepi: Properly define the
 type C connector.
Date: Thu, 22 Oct 2020 13:35:32 +0200
Message-Id: <20201022113532.18470-1-aballier@gentoo.org>
X-Mailer: git-send-email 2.29.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201022_073614_184471_C1DB7A95 
X-CRM114-Status: GOOD (  12.42  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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
Cc: devicetree@vger.kernel.org, Alexis Ballier <aballier@gentoo.org>,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, Heiko Stuebner <heiko@sntech.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Tested:
- USB3 Gigabit adapter
- USB2 mass storage

The wiring is the same as the pinebook pro according to the schematics,
thus this patch is heavily based on its dts.

Signed-off-by: Alexis Ballier <aballier@gentoo.org>
Cc: devicetree@vger.kernel.org
Cc: Heiko Stuebner <heiko@sntech.de>
Cc: linux-arm-kernel@lists.infradead.org
Cc: linux-rockchip@lists.infradead.org
Cc: linux-kernel@vger.kernel.org

---

Any hint on how to get rid of this error:
OF: graph: no port node found in /i2c@ff3d0000/fusb302@22
would be appreciated.
---
 .../boot/dts/rockchip/rk3399-orangepi.dts     | 62 ++++++++++++++++++-
 1 file changed, 61 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-orangepi.dts b/arch/arm64/boot/dts/rockchip/rk3399-orangepi.dts
index 6163ae8063a7..ad7c4d00888f 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-orangepi.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-orangepi.dts
@@ -7,6 +7,7 @@
 
 #include "dt-bindings/pwm/pwm.h"
 #include "dt-bindings/input/input.h"
+#include "dt-bindings/usb/pd.h"
 #include "rk3399.dtsi"
 #include "rk3399-opp.dtsi"
 
@@ -531,6 +532,43 @@ fusb302@22 {
 		pinctrl-names = "default";
 		pinctrl-0 = <&chg_cc_int_l>;
 		vbus-supply = <&vbus_typec>;
+
+		typec_con: connector {
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
+					typec_hs: endpoint {
+						remote-endpoint = <&u2phy0_typec_hs>;
+					};
+				};
+				port@1 {
+					reg = <1>;
+					typec_ss: endpoint {
+						remote-endpoint = <&tcphy0_typec_ss>;
+					};
+				};
+				port@2 {
+					reg = <2>;
+					typec_dp: endpoint {
+						remote-endpoint = <&tcphy0_typec_dp>;
+					};
+				};
+			};
+		};
 	};
 };
 
@@ -717,6 +755,22 @@ &tcphy0 {
 	status = "okay";
 };
 
+&tcphy0_dp {
+	port {
+		tcphy0_typec_dp: endpoint {
+			remote-endpoint = <&typec_dp>;
+		};
+	};
+};
+
+&tcphy0_usb3 {
+	port {
+		tcphy0_typec_ss: endpoint {
+			remote-endpoint = <&typec_ss>;
+		};
+	};
+};
+
 &tcphy1 {
 	status = "okay";
 };
@@ -739,6 +793,12 @@ u2phy0_host: host-port {
 		phy-supply = <&vcc5v0_host>;
 		status = "okay";
 	};
+
+	port {
+		u2phy0_typec_hs: endpoint {
+			remote-endpoint = <&typec_hs>;
+		};
+	};
 };
 
 &u2phy1 {
@@ -799,7 +859,7 @@ &usbdrd3_0 {
 
 &usbdrd_dwc3_0 {
 	status = "okay";
-	dr_mode = "otg";
+	dr_mode = "host";
 };
 
 &usbdrd3_1 {
-- 
2.29.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
