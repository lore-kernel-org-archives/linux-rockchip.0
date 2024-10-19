Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DBF07D3C906
	for <linux-rockchip@archiver.kernel.org>; Sat, 19 Oct 2024 10:20:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XX+QupAVigbnfTMyQpN36dRrAatgRPQ9zd1MmLA6GuA=; b=T9e22Eu8m42+XP
	DlY91Z/TWFWr+vP9nAqcyebY9Gt8g4bfXLA2iHWMUvM+k7R6NjVdd0AWmSunzY8ydTaRvVrSuhNM3
	OXPRF04nTA0Y+WGg5zlsa5ibocQXDaIj03AAVRgBBuNmXHzzmdE8O4EvGjqGJiGhB7FgKH+CWaOFv
	rE270fSQEU4ILwTZ5YU5wrw0prIinQadJF6KFsd+wt/yobO0FxRwB/toL6lP4BG8OkzKIUQqqAwe+
	Hvq4XTwptJ6QCV2jEf1Je81pp9uSKWLiIArxQf9VdCCSbcnMP3B6VrmTB0C1uQ8DyAWM18Ty1kJKs
	+WVMVleuwUqcWCRabPHQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t26ZB-0000000330O-1BKU;
	Sat, 19 Oct 2024 10:20:13 +0000
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t26Rz-0000000328T-2e6a;
	Sat, 19 Oct 2024 10:12:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1729332765;
	bh=Jr41L06cJhaViYFmP0B+b+cWwpUnFddqeq9b14cNNXc=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=Ym+Eaxhd5oy4XoXOqcGpqlVicXXczpLYW1DICdmG0rdjk62OHfK65GOBwsuwCODaG
	 tYMD8YQ8zxoAF+cwpswiWJyrxGI6EdnXqmHNOfjDl30f0Cc6VPe25i3qbVso2HxTX5
	 B5Vq9PNBDoGS9gZf92QpQFlD5HqEsNc/otAchZL6RwFqosRuwmd9TOgE/I38jwOaLu
	 YHgpNomeltk5xbKBwvJJH4cn6i/HcFgh2QeMMGkOrDWziHqLM3fpq7KQbDjzoov9WL
	 NHluxiGfGYsQRkmhdOh+V2eUdIIQURTw47DTj2duqZpb0XGzaP7Bql0XcO96b/BFTJ
	 z4KbShyFbRePg==
Received: from localhost (unknown [188.24.146.62])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (prime256v1) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 9A83C17E14EA;
	Sat, 19 Oct 2024 12:12:45 +0200 (CEST)
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Date: Sat, 19 Oct 2024 13:12:13 +0300
Subject: [PATCH v2 4/5] arm64: dts: rockchip: Enable HDMI0 on
 orangepi-5-plus
MIME-Version: 1.0
Message-Id: <20241019-rk3588-hdmi0-dt-v2-4-466cd80e8ff9@collabora.com>
References: <20241019-rk3588-hdmi0-dt-v2-0-466cd80e8ff9@collabora.com>
In-Reply-To: <20241019-rk3588-hdmi0-dt-v2-0-466cd80e8ff9@collabora.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 Sebastian Reichel <sebastian.reichel@collabora.com>, 
 Luis de Arquer <ldearquer@gmail.com>, Alexandre ARNOUD <aarnoud@me.com>
Cc: kernel@collabora.com, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 linux-kernel@vger.kernel.org
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241019_031247_850596_0BD1F9B9 
X-CRM114-Status: UNSURE (   9.79  )
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

Add the necessary DT changes to enable HDMI0 on Orange Pi 5 Plus.

Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
---
 .../boot/dts/rockchip/rk3588-orangepi-5-plus.dts   | 47 ++++++++++++++++++++++
 1 file changed, 47 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-plus.dts b/arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-plus.dts
index c73fecf1c73c94944bb25e1243d5390b84241338..9b1f985a32ebe73478d4318d5246aada78c08ffa 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-plus.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-plus.dts
@@ -9,6 +9,7 @@
 #include <dt-bindings/leds/common.h>
 #include <dt-bindings/input/input.h>
 #include <dt-bindings/pinctrl/rockchip.h>
+#include <dt-bindings/soc/rockchip,vop2.h>
 #include <dt-bindings/usb/pd.h>
 #include "rk3588.dtsi"
 
@@ -85,6 +86,17 @@ led {
 		};
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
 	fan: pwm-fan {
 		compatible = "pwm-fan";
 		cooling-levels = <0 70 75 80 100>;
@@ -263,6 +275,26 @@ &cpu_l3 {
 	cpu-supply = <&vdd_cpu_lit_s0>;
 };
 
+&hdmi0 {
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
@@ -883,3 +915,18 @@ &usb_host1_ehci {
 &usb_host1_ohci {
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
2.47.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
