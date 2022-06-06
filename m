Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6D74EC43334
	for <linux-rockchip@archiver.kernel.org>; Mon,  6 Jun 2022 17:08:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=t2Etiqs/VIIKyLC+1/Whhv4F7WVxsuGh8RH9zpyeHz4=; b=YjDN/gtUt659Ks
	8IRX8JWTEXktDkgS2/HVAfa6XUIJ7HLbx0VKBjoILmIFoOrMBVVP9bI0B2z4XvnFf3+9FF3Cm1vPh
	li5SL7oEsgG7jnWb7tVtiE6xmkEZCDomq1GB0Y5FV85A8mMqkttaApmw08NZd6BkbhUf79KxTdgVz
	YYaHqL62Wkxi4JnHiSuQPdeN6AgN8QmHBwXYTsJ5/Qb1/L3fc/kh6DXJS6e8Hw+LzBDnQzobGTuaT
	ddD9qY7+cHkIUkVjWkOGLvPVI5BZll3GbxdIFhOS+KU8iDfGBkDH4j0DwdndcwC9pmmJzShgHKeDM
	10Fqi7gtK+hP7WBUjr1A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nyGDS-002Aap-6q; Mon, 06 Jun 2022 17:08:34 +0000
Received: from mxout2.routing.net ([2a03:2900:1:a::b])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nyGDO-002AYZ-EQ
	for linux-rockchip@lists.infradead.org; Mon, 06 Jun 2022 17:08:33 +0000
Received: from mxbox2.masterlogin.de (unknown [192.168.10.89])
	by mxout2.routing.net (Postfix) with ESMTP id AE31860402;
	Mon,  6 Jun 2022 17:08:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mailerdienst.de;
	s=20200217; t=1654535293;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=vz1jUMX0hgXPNe5ZtZW+sXU/8PkjKOcZEAhjLjhZGU8=;
	b=mZQ1cNPNMHoVzvdnHhfa7pxpSGRnIxekuuVs1/zFQg8AVbJRCMX9xcYCPPCXxx+foi6TgK
	JQaqnvhivXNwA4K2waHuVcltclmCG8CsdaJvboKc3QiCH96KYanpkdffxZ7uGr9W5fdjQN
	epYaknmzKmE6n2Ncjkk+NRm9irhWLOY=
Received: from frank-G5.. (fttx-pool-217.61.151.134.bambit.de [217.61.151.134])
	by mxbox2.masterlogin.de (Postfix) with ESMTPSA id 429EC100274;
	Mon,  6 Jun 2022 17:08:13 +0000 (UTC)
From: Frank Wunderlich <linux@fw-web.de>
To: linux-rockchip@lists.infradead.org
Cc: Frank Wunderlich <frank-w@public-files.de>,
	Heiko Stuebner <heiko@sntech.de>
Subject: [PATCH v2 2/5] arm64: dts: rockchip: enable vop2 and hdmi tx on BPI-R2-Pro
Date: Mon,  6 Jun 2022 19:08:00 +0200
Message-Id: <20220606170803.478082-3-linux@fw-web.de>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220606170803.478082-1-linux@fw-web.de>
References: <20220606170803.478082-1-linux@fw-web.de>
MIME-Version: 1.0
X-Mail-ID: dbd3e06b-b642-467f-a03f-4a26483e9c60
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220606_100830_734321_89376E42 
X-CRM114-Status: UNSURE (   8.40  )
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

From: Frank Wunderlich <frank-w@public-files.de>

Enable the RK356x Video Output Processor (VOP) 2 on the
BananaPi R2 Pro board.

Signed-off-by: Frank Wunderlich <frank-w@public-files.de>
---
 .../boot/dts/rockchip/rk3568-bpi-r2-pro.dts   | 47 +++++++++++++++++++
 1 file changed, 47 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3568-bpi-r2-pro.dts b/arch/arm64/boot/dts/rockchip/rk3568-bpi-r2-pro.dts
index 5bb49bc2630f..eeaf02461f9b 100644
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
@@ -174,6 +186,24 @@ &gmac1m1_rgmii_clk
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
 
@@ -613,3 +643,20 @@ &usb2phy0_otg {
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
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
