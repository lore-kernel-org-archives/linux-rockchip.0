Return-Path: <SRS0=hOKP=QE=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 32805C433F5
	for <linux-rockchip@archiver.kernel.org>; Wed, 17 Nov 2021 14:36:07 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id F3DCF6138D
	for <linux-rockchip@archiver.kernel.org>; Wed, 17 Nov 2021 14:36:06 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org F3DCF6138D
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9k8Teh2CtNe4Uxtu0YvUPm1Wnu+l4j3tdkL+g8LsUic=; b=ers800EDoGPkpK
	+3LnSzWIpVxpw8Ljr/28s5zT5qPSdIhgGfJ/T81IJGVAB+quOCx0UfJ6cpGiuQUT/UjmhIV82rcBx
	1bXY08Q483EC4RhDxpqyTzEkcGUmZ5zYtbxnpL587G2m8I3YaeZzDwTpo/Y2MtE+77db71PwgF1tC
	SdmesxKLjhap2ZsBPMyUMsGn8mDODifnPFzZtQXvvLdiij0aG6apJeKAq6h2+B0RcRaqr4q1k+G1Z
	dFRN2xs+co17cY1BFfZClIw1M+a0X7uVCy/tO3t9xJ8lS2ywxzKm6HvODhAR+nnUBbZ7/j4xBG2qx
	XkA9y3S7WDFkO70YnFvw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mnM2d-0058QO-Rn; Wed, 17 Nov 2021 14:36:03 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mnM0s-0057Tr-KT
 for linux-rockchip@lists.infradead.org; Wed, 17 Nov 2021 14:34:15 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1mnM0h-0005ti-5r; Wed, 17 Nov 2021 15:34:03 +0100
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <sha@pengutronix.de>)
 id 1mnM0b-001P6W-54; Wed, 17 Nov 2021 15:33:57 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: dri-devel@lists.freedesktop.org
Cc: linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, kernel@pengutronix.de,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Michael Riesch <michael.riesch@wolfvision.net>,
 Sandy Huang <hjc@rock-chips.com>,
 =?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
 Peter Geis <pgwipeout@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>
Subject: [PATCH 09/12] arm64: dts: rockchip: rk356x: Add HDMI nodes
Date: Wed, 17 Nov 2021 15:33:44 +0100
Message-Id: <20211117143347.314294-10-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20211117143347.314294-1-s.hauer@pengutronix.de>
References: <20211117143347.314294-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::28
X-SA-Exim-Mail-From: sha@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211117_063414_694808_BA1C8B1A 
X-CRM114-Status: GOOD (  11.00  )
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

Add support for the HDMI port found on RK3568.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm64/boot/dts/rockchip/rk356x.dtsi | 65 ++++++++++++++++++++++++
 1 file changed, 65 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk356x.dtsi b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
index 6ebf7c14e096a..53be61a7ce595 100644
--- a/arch/arm64/boot/dts/rockchip/rk356x.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
@@ -472,18 +472,36 @@ vp0: port@0 {
 				#address-cells = <1>;
 				#size-cells = <0>;
 				reg = <0>;
+
+				vp0_out_hdmi: endpoint@0 {
+					reg = <0>;
+					remote-endpoint = <&hdmi_in_vp0>;
+					status = "disabled";
+				};
 			};
 
 			vp1: port@1 {
 				#address-cells = <1>;
 				#size-cells = <0>;
 				reg = <1>;
+
+				vp1_out_hdmi: endpoint@0 {
+					reg = <0>;
+					remote-endpoint = <&hdmi_in_vp1>;
+					status = "disabled";
+				};
 			};
 
 			vp2: port@2 {
 				#address-cells = <1>;
 				#size-cells = <0>;
 				reg = <2>;
+
+				vp2_out_hdmi: endpoint@0 {
+					reg = <0>;
+					remote-endpoint = <&hdmi_in_vp2>;
+					status = "disabled";
+				};
 			};
 		};
 	};
@@ -499,6 +517,53 @@ vop_mmu: iommu@fe043e00 {
 		status = "disabled";
 	};
 
+	hdmi: hdmi@fe0a0000 {
+		compatible = "rockchip,rk3568-dw-hdmi";
+		reg = <0x0 0xfe0a0000 0x0 0x20000>;
+		interrupts = <GIC_SPI 45 IRQ_TYPE_LEVEL_HIGH>;
+		clocks = <&cru PCLK_HDMI_HOST>,
+			 <&cru CLK_HDMI_SFR>,
+			 <&cru CLK_HDMI_CEC>,
+			 <&cru HCLK_VOP>;
+		clock-names = "iahb", "isfr", "cec", "hclk";
+		power-domains = <&power RK3568_PD_VO>;
+		reg-io-width = <4>;
+		rockchip,grf = <&grf>;
+		#sound-dai-cells = <0>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&hdmitx_scl &hdmitx_sda &hdmitxm0_cec>;
+		status = "disabled";
+
+		ports {
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			hdmi_in: port@0 {
+				reg = <0>;
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				hdmi_in_vp0: endpoint@0 {
+					reg = <0>;
+					remote-endpoint = <&vp0_out_hdmi>;
+					status = "disabled";
+				};
+
+				hdmi_in_vp1: endpoint@1 {
+					reg = <1>;
+					remote-endpoint = <&vp1_out_hdmi>;
+					status = "disabled";
+				};
+
+				hdmi_in_vp2: endpoint@2 {
+					reg = <2>;
+					remote-endpoint = <&vp2_out_hdmi>;
+					status = "disabled";
+				};
+			};
+		};
+	};
+
 	qos_gpu: qos@fe128000 {
 		compatible = "rockchip,rk3568-qos", "syscon";
 		reg = <0x0 0xfe128000 0x0 0x20>;
-- 
2.30.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
