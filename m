Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DCF50C2BA4C
	for <linux-rockchip@archiver.kernel.org>; Wed, 26 Jan 2022 15:15:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JerSBWhHmmEwTgGi4kJH9CQAEfICExsfU5xOaX7iT7E=; b=1J46IOdixLCrhY
	VOvdWRiD775TyGahUVCJsCp9RGaq7gLp2WDXmAqLoGDxGw/0PMPt4ZAIfQRyY+RkxK/my8KhOW87l
	S0BMr8BHbgMEl8g1uyGVky9vAVTvc2BYLhycYWdNkIRtg5hZeIkFGLXRP1iXs3bghy3jCji+nA53j
	JfPpQYanzepqGtxB+X+ks5n7+AxFKOTy1R8aTONlFzvQIdGbxMGy9RA0EdAQ4K7f9H99M8GyJJxXm
	4JIEk9A/FOMFTJu7A2qilnskfZxlmYdA13WJwD9zvVd7G1JAe3vehxLQwUSoUkczlexy+GCaATFMt
	TxeY4WC/fRJjVj6dZ3+A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nCk1Q-00CCJH-9s; Wed, 26 Jan 2022 15:15:44 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nCjkw-00C4QS-37
 for linux-rockchip@bombadil.infradead.org; Wed, 26 Jan 2022 14:58:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
 :References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description;
 bh=QuZbedix0AVJP91m/C5HuwnhGNyDplIhsBeAT6v3zzM=; b=T16Es79vIpSBUwxWe05PGWXSRD
 WQxrkaq5Gnmur5v8wms69dGjcqEk72sJjHtFlJUZurN3ALQqK1a+Kzb9oPyfU70SXw36Oqtr30NoE
 sSeHq1lVBJyJvEcvlGBiCmvh51NIIcwa6ih3ioJRe1sVxRIpQM8e55kwBfkuMQ1hciMhd7GndpEuI
 T7R6UwuPbPFM5af0eNf5FEcbh9ffYmiG3hhX2hs7OCURERwoxqIDbuwhq8iWhU4dZXs0AYZDHPOFW
 9j2RqZyN37TengJM0BBCd6bLo/0eNvqtFNuTAkki1WfUGIzuoLaeOF+Caz60HMprfZ6UdRLqqmd9i
 lFinfMAw==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nCjkm-003pih-JS
 for linux-rockchip@lists.infradead.org; Wed, 26 Jan 2022 14:58:40 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nCjkc-0005fX-DY; Wed, 26 Jan 2022 15:58:22 +0100
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <sha@pengutronix.de>)
 id 1nCjka-002l7C-R8; Wed, 26 Jan 2022 15:58:20 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: dri-devel@lists.freedesktop.org
Cc: linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, kernel@pengutronix.de,
 Andy Yan <andy.yan@rock-chips.com>,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Michael Riesch <michael.riesch@wolfvision.net>,
 Sandy Huang <hjc@rock-chips.com>,
 =?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
 Peter Geis <pgwipeout@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>
Subject: [PATCH 23/27] arm64: dts: rockchip: enable vop2 and hdmi tx on
 quartz64a
Date: Wed, 26 Jan 2022 15:55:45 +0100
Message-Id: <20220126145549.617165-24-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220126145549.617165-1-s.hauer@pengutronix.de>
References: <20220126145549.617165-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::28
X-SA-Exim-Mail-From: sha@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220126_145832_878322_195159F9 
X-CRM114-Status: GOOD (  12.54  )
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

From: Michael Riesch <michael.riesch@wolfvision.net>

Enable the RK356x Video Output Processor (VOP) 2 on the Pine64
Quartz64 Model A.

Changes since v3:
- Fix HDMI connector type

Signed-off-by: Michael Riesch <michael.riesch@wolfvision.net>
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 .../boot/dts/rockchip/rk3566-quartz64-a.dts   | 48 +++++++++++++++++++
 1 file changed, 48 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts b/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts
index 166399b7f13f..64de5b15f572 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts
@@ -4,6 +4,7 @@
 
 #include <dt-bindings/gpio/gpio.h>
 #include <dt-bindings/pinctrl/rockchip.h>
+#include <dt-bindings/soc/rockchip,vop2.h>
 #include "rk3566.dtsi"
 
 / {
@@ -35,6 +36,17 @@ fan: gpio_fan {
 		#cooling-cells = <2>;
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
 	leds {
 		compatible = "gpio-leds";
 
@@ -205,6 +217,18 @@ &gmac1m0_clkinout
 	status = "okay";
 };
 
+&hdmi {
+	avdd-0v9-supply = <&vdda_0v9>;
+	avdd-1v8-supply = <&vcc_1v8>;
+	status = "okay";
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
 
@@ -551,3 +575,27 @@ bluetooth {
 &uart2 {
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
+&hdmi_in {
+	hdmi_in_vp0: endpoint@0 {
+		reg = <0>;
+		remote-endpoint = <&vp0_out_hdmi>;
+	};
+};
+
+&vp0 {
+	vp0_out_hdmi: endpoint@RK3568_VOP2_EP_HDMI {
+		reg = <RK3568_VOP2_EP_HDMI>;
+		remote-endpoint = <&hdmi_in_vp0>;
+	};
+};
-- 
2.30.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
