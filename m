Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9B0BED0E6D6
	for <linux-rockchip@archiver.kernel.org>; Mon, 21 Oct 2024 09:07:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tYGicQNHHLVMZ9QRL2Kew+lwx4NZqKi6osgJ7gRP5Mg=; b=S0bDildeNKDO8Q
	IUk6YJMWzslMuaEVY53oMwMS6bkQ/VuHM/D5yqyTLCCMsOcGjPvS0UNiFdUVZTJwU2anvekhl/0lt
	LuHz5cmc9bEM3htUF2lae8HA5WEd1SFbAR4bTHkrpkxg+MScgoYjiW5NABTDIfxbcgG1RXg19GhGt
	bl7DPlD1V2FhudxrwLN0I0T6Kyt70i/a/h90nGrH5dW12jVImtnuMSKsvu8DuSGDdVx0ooXDY3JGM
	fMOPLJlhqSmVV1tbrMGrXsDjUktNFQvtYhJFeExkuiYFbD7bQAiPYbUScyQVxrfrxSM97o85UEEkU
	5ymqmUHBJAVBK7qemA+w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t2oNv-00000006eiB-26CF;
	Mon, 21 Oct 2024 09:07:31 +0000
Received: from sakura.naobsd.org ([160.16.200.221] helo=mail.naobsd.org)
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t2oNa-00000006ed8-2Zd5
	for linux-rockchip@lists.infradead.org;
	Mon, 21 Oct 2024 09:07:12 +0000
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 49L96G5l012440;
	Mon, 21 Oct 2024 18:06:20 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        macromorgan@hotmail.com, jonas@kwiboo.se, andyshrk@163.com,
        tim@feathertop.org, jagan@edgeble.ai, dsimic@manjaro.org,
        michael.riesch@wolfvision.net, sebastian.reichel@collabora.com,
        cfsworks@gmail.com, kever.yang@rock-chips.com, jing@jing.rocks,
        devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
        FUKAUMI Naoki <naoki@radxa.com>
Subject: [PATCH v2 RESEND 3/3] arm64: dts: rockchip: Enable HDMI0 on rock-5c
Date: Mon, 21 Oct 2024 09:05:48 +0000
Message-ID: <20241021090548.1052-3-naoki@radxa.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20241021090548.1052-1-naoki@radxa.com>
References: <20241021090548.1052-1-naoki@radxa.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241021_020710_880888_A1F0768D 
X-CRM114-Status: UNSURE (   8.45  )
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

Add the necessary DT changes to enable HDMI0 on Radxa ROCK 5C.

Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
---
Changes in v2
- sort nodes alphanumerically
- fix pinctrl for hdmi0
---
 .../boot/dts/rockchip/rk3588s-rock-5c.dts     | 52 +++++++++++++++++++
 1 file changed, 52 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts
index c80428305f0b..9b14d5383cdc 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts
@@ -8,6 +8,7 @@
 #include <dt-bindings/gpio/gpio.h>
 #include <dt-bindings/leds/common.h>
 #include <dt-bindings/pinctrl/rockchip.h>
+#include <dt-bindings/soc/rockchip,vop2.h>
 #include "rk3588s.dtsi"
 
 / {
@@ -35,6 +36,17 @@ analog-sound {
 			  "Headphone", "Headphones";
 	};
 
+	hdmi0-con {
+		compatible = "hdmi-connector";
+		type = "a";
+
+		port {
+			hdmi0_con_in: endpoint {
+				remote-endpoint = <&hdmi0_out_con>;
+			};
+		};
+	};
+
 	leds {
 		compatible = "gpio-leds";
 		pinctrl-names = "default";
@@ -245,6 +257,31 @@ &gpu {
 	status = "okay";
 };
 
+&hdmi0 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&hdmim0_tx0_cec
+		     &hdmim1_tx0_hpd
+		     &hdmim0_tx0_scl
+		     &hdmim0_tx0_sda>;
+	status = "okay";
+};
+
+&hdmi0_in {
+	hdmi0_in_vp0: endpoint {
+		remote-endpoint = <&vp0_out_hdmi0>;
+	};
+};
+
+&hdmi0_out {
+	hdmi0_out_con: endpoint {
+		remote-endpoint = <&hdmi0_con_in>;
+	};
+};
+
+&hdptxphy_hdmi0 {
+	status = "okay";
+};
+
 &i2c0 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&i2c0m2_xfer>;
@@ -866,3 +903,18 @@ &usb_host1_ohci {
 &usb_host2_xhci {
 	status = "okay";
 };
+
+&vop_mmu {
+	status = "okay";
+};
+
+&vop {
+	status = "okay";
+};
+
+&vp0 {
+	vp0_out_hdmi0: endpoint@ROCKCHIP_VOP2_EP_HDMI0 {
+		reg = <ROCKCHIP_VOP2_EP_HDMI0>;
+		remote-endpoint = <&hdmi0_in_vp0>;
+	};
+};
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
