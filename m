Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CAAA2D44D5B
	for <linux-rockchip@archiver.kernel.org>; Wed,  6 Nov 2024 13:17:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=N4KHu3h4HiN2uSr9Z2ytuDgYL/dCD2Fz9IyAEdm5qJE=; b=Nx03+bBKRdyaBy
	XsJT7L6XpQgXY+zaUL96uN0VnZOWR+eJ00PWsPpyM+6qQ9wQSwDurIolumpa9EW417ssptkXRAgSu
	QWkqwQcDP4edn5QE3QcORtbZJTh7qa/Z+umbcw9MmsLZCNe3lDyi9zBkUwoHGH2Gb19v9dBR6QdYK
	K8wH6t0ZgWRyUEqm3Na2fXY1uM+TqumAgIHPvpBIyU2HwVEhPn5sFZ5jMI1CXVRN51fuX3O7YNfJn
	nylp8YvtnTrHtihRmLHwmN7NO5yQ8y3GEfFCczHsznkvhprF0EFYf3BOuFRe+5s67Qf5EvkQR+0iC
	un4a4X6OecLr/DuXDpxQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t8fub-00000003Nms-1yiV;
	Wed, 06 Nov 2024 13:17:29 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t8fIX-00000003F8P-30C4;
	Wed, 06 Nov 2024 12:38:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:MIME-Version:References:
	In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=nd8WDBdT4JcyHkbixH6x2sPY4R14WnZRTUvb0ld1FwA=; b=PqnMfRssaNkWIHW6vVO88Pw+lg
	GgbHjce6zAZnmMoqiX9JgT/2VEghfg22EfjNpIFpe1xbsBTKEFXWnyqf319oOZTNPzcgzSiRh8QtQ
	VY0fX6QF+m4+oXZE5JW+nmua6nbIfd2ou0Dq2WFcH7gvm2wJyrhklRKXY02kzihusbUBRsnxxkj/G
	TfeyOqUe4OpJMmbJ/Jw52vhaSw3koKfPOgSaPnMHRQS98HDXfe/oVKMk/MJwIAm77W4LY6M8QfcjE
	CNwf96hPOlQ3dxfB1eS3m40gBQLTqYtW1t7P60SesS1+RT22FT6dDNxr4cNjGkpnPuLquDjB+XKxS
	3d/zmOBw==;
Received: from i53875b28.versanet.de ([83.135.91.40] helo=localhost.localdomain)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1t8fIW-0007A8-8i; Wed, 06 Nov 2024 13:38:08 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: heiko@sntech.de
Cc: quentin.schulz@cherry.de,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Heiko Stuebner <heiko.stuebner@cherry.de>
Subject: [PATCH 2/3] arm64: dts: rockchip: add dsi controller nodes on rk3588
Date: Wed,  6 Nov 2024 13:37:57 +0100
Message-ID: <20241106123758.423584-3-heiko@sntech.de>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241106123758.423584-1-heiko@sntech.de>
References: <20241106123758.423584-1-heiko@sntech.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241106_043809_872540_704A0D23 
X-CRM114-Status: GOOD (  12.73  )
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

From: Heiko Stuebner <heiko.stuebner@cherry.de>

The RK3588 comes with two DSI2 controllers based on a new Synopsis IP.
Add the necessary nodes for them.

Signed-off-by: Heiko Stuebner <heiko.stuebner@cherry.de>
---
 arch/arm64/boot/dts/rockchip/rk3588-base.dtsi | 56 +++++++++++++++++++
 1 file changed, 56 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-base.dtsi b/arch/arm64/boot/dts/rockchip/rk3588-base.dtsi
index 8c95c56e8097..6d31de2a6930 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-base.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588-base.dtsi
@@ -1414,6 +1414,62 @@ i2s9_8ch: i2s@fddfc000 {
 		status = "disabled";
 	};
 
+	dsi0: dsi@fde20000 {
+		compatible = "rockchip,rk3588-mipi-dsi2";
+		reg = <0x0 0xfde20000 0x0 0x10000>;
+		interrupts = <GIC_SPI 167 IRQ_TYPE_LEVEL_HIGH 0>;
+		clocks = <&cru PCLK_DSIHOST0>, <&cru CLK_DSIHOST0>;
+		clock-names = "pclk", "sys";
+		resets = <&cru SRST_P_DSIHOST0>;
+		reset-names = "apb";
+		power-domains = <&power RK3588_PD_VOP>;
+		phys = <&mipidcphy0>;
+		phy-names = "dcphy";
+		rockchip,grf = <&vop_grf>;
+		status = "disabled";
+
+		ports {
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			dsi0_in: port@0 {
+				reg = <0>;
+			};
+
+			dsi0_out: port@1 {
+				reg = <1>;
+			};
+		};
+	};
+
+	dsi1: dsi@fde30000 {
+		compatible = "rockchip,rk3588-mipi-dsi2";
+		reg = <0x0 0xfde30000 0x0 0x10000>;
+		interrupts = <GIC_SPI 168 IRQ_TYPE_LEVEL_HIGH 0>;
+		clocks = <&cru PCLK_DSIHOST1>, <&cru CLK_DSIHOST1>;
+		clock-names = "pclk", "sys";
+		resets = <&cru SRST_P_DSIHOST1>;
+		reset-names = "apb";
+		power-domains = <&power RK3588_PD_VOP>;
+		phys = <&mipidcphy1>;
+		phy-names = "dcphy";
+		rockchip,grf = <&vop_grf>;
+		status = "disabled";
+
+		ports {
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			dsi1_in: port@0 {
+				reg = <0>;
+			};
+
+			dsi1_out: port@1 {
+				reg = <1>;
+			};
+		};
+	};
+
 	hdmi0: hdmi@fde80000 {
 		compatible = "rockchip,rk3588-dw-hdmi-qp";
 		reg = <0x0 0xfde80000 0x0 0x20000>;
-- 
2.45.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
