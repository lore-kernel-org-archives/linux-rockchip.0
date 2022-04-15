Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D2A4AC433F5
	for <linux-rockchip@archiver.kernel.org>; Fri, 15 Apr 2022 10:54:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kw4BmKZITWlnbej7SZUmtjm8bJ9S87i9GZTkPoUOfVI=; b=rN5XCbaozwueXL
	FVZ9tVI5fVseIJselMIFfhYQvkrKxj/BOkPUgDEeNKt7RTwQAhey7dgmTjv3k4Vveox102+U0BNki
	aq9kNwYedSZvsutYU5cH8o9HGHa0nonQgB1qTKSvxr3VZHM73P1tHIPAI+Oel+ECkr++OvwfqbS2z
	sgeuEHOycyaoCzUeMx93WMwVDJDv0IoX+mP2HLyX6d5N6oLyScWGiseSS3i9fUl2y6LbgzZhbhTZ9
	+324kXRTfP+08yKZTeV6OCf1MAp8W5I8WWiWIpPsNa2MWxuzvS0aSOYdwrxPrOVJ3RuzvuLljwnG6
	88Ri4vZEkfQGaYblZMQg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nfJax-009jFx-NV; Fri, 15 Apr 2022 10:54:31 +0000
Received: from mxout4.routing.net ([2a03:2900:1:a::9])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nfJaj-009hfR-DO; Fri, 15 Apr 2022 10:54:18 +0000
Received: from mxbox2.masterlogin.de (unknown [192.168.10.89])
 by mxout4.routing.net (Postfix) with ESMTP id 676DA100770;
 Fri, 15 Apr 2022 10:50:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mailerdienst.de;
 s=20200217; t=1650019812;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=LB1Fy7OsMtsEl7x4ThJWUnVjP7eO5zGGMTmEHLEcvp0=;
 b=UiSFVDiHH0VKsEEJGo1JRnjUxdWuyg3ksgL7cYQKeyUcjIQz8d1IiEg7KUXVV+Lh0F5ToZ
 CU4S6dh4FvXTDBr+so0ftw6g5PmWBTCSzn7yqlDWOONPWAe1CE6Iooax2dPv/AaPD88aoO
 uQs05isNeVhkl7gNnP/hKh+V1OCF0Sk=
Received: from localhost.localdomain (fttx-pool-217.61.153.244.bambit.de
 [217.61.153.244])
 by mxbox2.masterlogin.de (Postfix) with ESMTPSA id 4FC3610074F;
 Fri, 15 Apr 2022 10:50:11 +0000 (UTC)
From: Frank Wunderlich <linux@fw-web.de>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Frank Wunderlich <frank-w@public-files.de>,
 Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Peter Geis <pgwipeout@gmail.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH 2/3] arm64: dts: rockchip: enable vop2 and hdmi tx on
 BPI-R2-Pro
Date: Fri, 15 Apr 2022 12:49:50 +0200
Message-Id: <20220415104951.27104-3-linux@fw-web.de>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220415104951.27104-1-linux@fw-web.de>
References: <20220415104951.27104-1-linux@fw-web.de>
MIME-Version: 1.0
X-Mail-ID: 65da6b53-325e-43b0-a251-c92be1d4911d
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220415_035417_638359_616207AB 
X-CRM114-Status: GOOD (  10.26  )
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

From: Frank Wunderlich <frank-w@public-files.de>

Enable the RK356x Video Output Processor (VOP) 2 on the
BananaPi R2 Pro board.

Signed-off-by: Frank Wunderlich <frank-w@public-files.de>
---
 .../boot/dts/rockchip/rk3568-bpi-r2-pro.dts   | 47 +++++++++++++++++++
 1 file changed, 47 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3568-bpi-r2-pro.dts b/arch/arm64/boot/dts/rockchip/rk3568-bpi-r2-pro.dts
index 0950f9659bb4..cc3591251bab 100644
--- a/arch/arm64/boot/dts/rockchip/rk3568-bpi-r2-pro.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3568-bpi-r2-pro.dts
@@ -8,6 +8,7 @@
 #include <dt-bindings/gpio/gpio.h>
 #include <dt-bindings/leds/common.h>
 #include <dt-bindings/pinctrl/rockchip.h>
+#include <dt-bindings/soc/rockchip,vop2.h>
 #include "rk3568.dtsi"
 
 / {
@@ -54,6 +55,17 @@ dc_12v: dc-12v {
 		regulator-max-microvolt = <12000000>;
 	};
 
+	hdmi-con {
+		compatible = "hdmi-connector";
+		type = "a";
+
+		port {
+			hdmi_con_in: endpoint {
+				remote-endpoint = <&hdmi_out_con>;
+			};
+		};
+	};
+
 	vcc3v3_sys: vcc3v3-sys {
 		compatible = "regulator-fixed";
 		regulator-name = "vcc3v3_sys";
@@ -184,6 +196,24 @@ &gmac1m1_rgmii_clk
 	status = "okay";
 };
 
+&hdmi {
+	avdd-0v9-supply = <&vdda0v9_image>;
+	avdd-1v8-supply = <&vcca1v8_image>;
+	status = "okay";
+};
+
+&hdmi_in {
+	hdmi_in_vp0: endpoint {
+		remote-endpoint = <&vp0_out_hdmi>;
+	};
+};
+
+&hdmi_out {
+	hdmi_out_con: endpoint {
+		remote-endpoint = <&hdmi_con_in>;
+	};
+};
+
 &i2c0 {
 	status = "okay";
 
@@ -600,3 +630,20 @@ &usb2phy0_otg {
 	phy-supply = <&vcc5v0_usb_otg>;
 	status = "okay";
 };
+
+&vop {
+	assigned-clocks = <&cru DCLK_VOP0>, <&cru DCLK_VOP1>;
+	assigned-clock-parents = <&pmucru PLL_HPLL>, <&cru PLL_VPLL>;
+	status = "okay";
+};
+
+&vop_mmu {
+	status = "okay";
+};
+
+&vp0 {
+	vp0_out_hdmi: endpoint@ROCKCHIP_VOP2_EP_HDMI0 {
+		reg = <ROCKCHIP_VOP2_EP_HDMI0>;
+		remote-endpoint = <&hdmi_in_vp0>;
+	};
+};
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
