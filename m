Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AF966E7717F
	for <linux-rockchip@archiver.kernel.org>; Mon, 16 Dec 2024 03:24:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kXda1l630T2iACSsJLS2VBKNuk9SrdA1Ep9dyr1+eN4=; b=Ij20zGYBA9ci5L
	tsxtoofpOO0FPCEb6gyKt+qYG2Y+lNO1uK2kU37S09dKkDjQu/tvks0DDU9nCMBwHy4ifn9WoTgvO
	/nOEXl9+s0xske8tqs3QRlzpbVOcCllDMrsOIO59NE0vChmQFweozUEXwyXaS3opiVD1lAQKlBhue
	W6lmQ/36Zd3kqH66afemueH5JrZzicmE8e/7ZrJQMKeXQaU6UR8qymrqwQcBI/PWKxHQrU5Y2se1l
	JXirrIcy8eBcSgVVAXO09gdVxmMB3K4NUOLL+l0a9T/KrDpwQyBD6cJcxuW+J99s8KplwLIk37j2B
	eNzsByY+G3IBod4Pmkwg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tN1iS-00000008vKO-3KTO;
	Mon, 16 Dec 2024 03:24:16 +0000
Received: from mail-m4920.qiye.163.com ([45.254.49.20])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tN1Xj-00000008tJW-2Q8M;
	Mon, 16 Dec 2024 03:13:12 +0000
Received: from zyb-HP-ProDesk-680-G2-MT.. (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 5cf79939;
	Mon, 16 Dec 2024 11:13:07 +0800 (GMT+08:00)
From: Damon Ding <damon.ding@rock-chips.com>
To: heiko@sntech.de
Subject: [PATCH v2 10/11] arm64: dts: rockchip: Enable eDP0 display on RK3588S EVB1 board
Date: Mon, 16 Dec 2024 11:12:24 +0800
Message-Id: <20241216031225.3746-11-damon.ding@rock-chips.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20241216031225.3746-1-damon.ding@rock-chips.com>
References: <20241216031225.3746-1-damon.ding@rock-chips.com>
MIME-Version: 1.0
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGk0eHVZNSRoeTU9KTEhOSUxWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSUhCSE
	NVSktLVUpCS0tZBg++
X-HM-Tid: 0a93cd748a7a03a3kunm5cf79939
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6MS46LDo4MTIXCCEKMk5LQhQR
	UU8wCRBVSlVKTEhPSEpDTENDTEpMVTMWGhIXVR8aFhQVVR8SFRw7CRQYEFYYExILCFUYFBZFWVdZ
	EgtZQVlOQ1VJSVVMVUpKT1lXWQgBWUFJSUJKNwY+
DKIM-Signature: a=rsa-sha256;
	b=jTvhwr/dbWMj03q5JOCMfVNYvnpN0+EalpNnywo+spSfqLqWhbjioWyfUCAvD5eSz96Ar8hhV3dAB/YAdNUgJP/6Ckr0LvSwzcFbvzWUtwvOdYa2S71uQn6s1zWw1970hZPCzZYjL23E1/PEtIcIdzbo7dkMceXzo+t51USoo8I=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=re+fzhahdRHRVyWuma6tflhkGROthhuZpOI1Cpv+z50=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241215_191311_791646_15F96070 
X-CRM114-Status: UNSURE (   8.27  )
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
Cc: robh@kernel.org, conor+dt@kernel.org, algea.cao@rock-chips.com, rfoss@kernel.org, devicetree@vger.kernel.org, linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, sebastian.reichel@collabora.com, dri-devel@lists.freedesktop.org, hjc@rock-chips.com, kever.yang@rock-chips.com, linux-rockchip@lists.infradead.org, vkoul@kernel.org, Damon Ding <damon.ding@rock-chips.com>, andy.yan@rock-chips.com, krzk+dt@kernel.org, linux-arm-kernel@lists.infradead.org, l.stach@pengutronix.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Add the necessary DT changes to enable eDP0 on RK3588S EVB1 board:
- Add edp-panel node
- Set pinctrl of pwm12 for backlight
- Enable edp0/hdptxphy0/vp2

Signed-off-by: Damon Ding <damon.ding@rock-chips.com>

---

Changes in v2:
- Remove brightness-levels and default-brightness-level properties in
  backlight node.
- Add the detail DT changes to commit message.
---
 .../boot/dts/rockchip/rk3588s-evb1-v10.dts    | 50 +++++++++++++++++++
 1 file changed, 50 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-evb1-v10.dts b/arch/arm64/boot/dts/rockchip/rk3588s-evb1-v10.dts
index bc4077575beb..5c1ea25b6524 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-evb1-v10.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-evb1-v10.dts
@@ -9,6 +9,7 @@
 #include <dt-bindings/gpio/gpio.h>
 #include <dt-bindings/input/input.h>
 #include <dt-bindings/pinctrl/rockchip.h>
+#include <dt-bindings/soc/rockchip,vop2.h>
 #include <dt-bindings/usb/pd.h>
 #include "rk3588s.dtsi"
 
@@ -120,6 +121,18 @@ backlight: backlight {
 		pwms = <&pwm12 0 25000 0>;
 	};
 
+	edp_panel: edp-panel {
+		compatible = "lg,lp079qx1-sp0v";
+		backlight = <&backlight>;
+		power-supply = <&vcc3v3_lcd_edp>;
+
+		port {
+			panel_in_edp: endpoint {
+				remote-endpoint = <&edp_out_panel>;
+			};
+		};
+	};
+
 	combophy_avdd0v85: regulator-combophy-avdd0v85 {
 		compatible = "regulator-fixed";
 		regulator-name = "combophy_avdd0v85";
@@ -238,6 +251,27 @@ &combphy2_psu {
 	status = "okay";
 };
 
+&edp0 {
+	force-hpd;
+	status = "okay";
+};
+
+&edp0_in {
+	edp0_in_vp2: endpoint {
+		remote-endpoint = <&vp2_out_edp0>;
+	};
+};
+
+&edp0_out {
+	edp_out_panel: endpoint {
+		remote-endpoint = <&panel_in_edp>;
+	};
+};
+
+&hdptxphy0 {
+	status = "okay";
+};
+
 &i2c3 {
 	status = "okay";
 
@@ -399,6 +433,7 @@ usbc0_int: usbc0-int {
 };
 
 &pwm12 {
+	pinctrl-0 = <&pwm12m1_pins>;
 	status = "okay";
 };
 
@@ -1168,3 +1203,18 @@ usbdp_phy0_dp_altmode_mux: endpoint@1 {
 		};
 	};
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
+&vp2 {
+	vp2_out_edp0: endpoint@ROCKCHIP_VOP2_EP_EDP0 {
+		reg = <ROCKCHIP_VOP2_EP_EDP0>;
+		remote-endpoint = <&edp0_in_vp2>;
+	};
+};
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
