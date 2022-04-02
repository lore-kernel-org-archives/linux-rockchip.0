Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DBC14C433EF
	for <linux-rockchip@archiver.kernel.org>; Sat,  2 Apr 2022 10:44:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YaDlBDwtorfG3mAF2yuAv1A5+CwZxHovn+teUNJ01nU=; b=xSTvetgOTSrOR6
	L5IPy+mnlocDjlCVJo/IdfhXxcBX3JG4yG9zHx+ohLGMNXlxgkIdhJ2VGmxHtLFbYjLhWuWm65g/3
	sGJn0BFroCipDWDIRDV0aCtTT1pP8WqIhnu+MkzKUBQy+AFhsWVAiCdsunGT+09tqLlgcSZhikOVB
	SZ7GkqUspWesGmbL6OWz/JQhJ7fiOoQNBpybMzNwgbK3eb7BEnqBJ0AnKxRVHlmMdsnJdaprdl9qM
	YOr9jfWYQCtNbQXhG0+DXnWCorqs1VPTOH2bh5jYka8+pEk0F5oymtzmgXRkL5WuxxutbbON7Epb8
	yWMvdeCGKFu4RswDBaWg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nabEw-008X29-Sx; Sat, 02 Apr 2022 10:44:18 +0000
Received: from mxout3.routing.net ([2a03:2900:1:a::8])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nabEc-008Wwe-AW; Sat, 02 Apr 2022 10:43:59 +0000
Received: from mxbox1.masterlogin.de (unknown [192.168.10.88])
 by mxout3.routing.net (Postfix) with ESMTP id D0527604DC;
 Sat,  2 Apr 2022 10:43:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mailerdienst.de;
 s=20200217; t=1648896233;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=rVlsNMjXQQ4jdCL0TbPne+ht1OtgQ3f4+EzKpSKvrX8=;
 b=laU5/8abs7BHEJiXUVOxX/fh85mUVBUDwAH9+jDMwO/f9mGWpiSwt4ZUrFPAE7KGkMKUPJ
 +mjsNSrOTgI4P7PHHnQFwRQaKd2LIZ1e8BKJcuGqj/CqcnlPd5FHYEJ4923KdR1LiMCHUz
 PpzFTTQEDyx4yiYhKUuefvKK8dq8ugE=
Received: from localhost.localdomain (fttx-pool-80.245.79.107.bambit.de
 [80.245.79.107])
 by mxbox1.masterlogin.de (Postfix) with ESMTPSA id 21652403AC;
 Sat,  2 Apr 2022 10:43:52 +0000 (UTC)
From: Frank Wunderlich <linux@fw-web.de>
To: linux-rockchip@lists.infradead.org
Cc: Frank Wunderlich <frank-w@public-files.de>,
 Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Heiko Stuebner <heiko@sntech.de>, Peter Geis <pgwipeout@gmail.com>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v1 2/2] arm64: dts: rockchip: Add gmac1 and change network
 settings
Date: Sat,  2 Apr 2022 12:43:12 +0200
Message-Id: <20220402104313.100333-3-linux@fw-web.de>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220402104313.100333-1-linux@fw-web.de>
References: <20220402104313.100333-1-linux@fw-web.de>
MIME-Version: 1.0
X-Mail-ID: 9004292b-8e73-4ef7-931d-e37bf50c2a4b
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220402_034358_582719_CD51D021 
X-CRM114-Status: GOOD (  12.08  )
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

New Version (v1.0) of R2 pro has swapped gmacs compared to the v00.

WAN-Port is now on gmac1 (RTL8211F) and lan-ports on gmac0 with mt7531
switch.

There is already a mt7531 dsa driver in mainline, but it needs to be
modified to work for this board.

Fixes: f901aaadaa2a ("arm64: dts: rockchip: Add Bananapi R2 Pro")
Signed-off-by: Frank Wunderlich <frank-w@public-files.de>
---
 .../boot/dts/rockchip/rk3568-bpi-r2-pro.dts   | 36 +++++++++++++++++--
 1 file changed, 33 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3568-bpi-r2-pro.dts b/arch/arm64/boot/dts/rockchip/rk3568-bpi-r2-pro.dts
index a0388ff85ddf..067fe4a6b178 100644
--- a/arch/arm64/boot/dts/rockchip/rk3568-bpi-r2-pro.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3568-bpi-r2-pro.dts
@@ -16,6 +16,7 @@ / {
 
 	aliases {
 		ethernet0 = &gmac0;
+		ethernet1 = &gmac1;
 		mmc0 = &sdmmc0;
 		mmc1 = &sdhci;
 	};
@@ -78,7 +79,6 @@ &gmac0 {
 	assigned-clocks = <&cru SCLK_GMAC0_RX_TX>, <&cru SCLK_GMAC0>;
 	assigned-clock-parents = <&cru SCLK_GMAC0_RGMII_SPEED>, <&cru CLK_MAC0_2TOP>;
 	clock_in_out = "input";
-	phy-handle = <&rgmii_phy0>;
 	phy-mode = "rgmii";
 	pinctrl-names = "default";
 	pinctrl-0 = <&gmac0_miim
@@ -90,8 +90,38 @@ &gmac0_rgmii_clk
 	snps,reset-active-low;
 	/* Reset time is 20ms, 100ms for rtl8211f */
 	snps,reset-delays-us = <0 20000 100000>;
+	tx_delay = <0x4f>;
+	rx_delay = <0x0f>;
+	status = "okay";
+
+	fixed-link {
+		speed = <1000>;
+		full-duplex;
+		pause;
+	};
+};
+
+&gmac1 {
+	assigned-clocks = <&cru SCLK_GMAC1_RX_TX>, <&cru SCLK_GMAC1>;
+	assigned-clock-parents = <&cru SCLK_GMAC1_RGMII_SPEED>, <&cru CLK_MAC1_2TOP>;
+	clock_in_out = "output";
+	phy-handle = <&rgmii_phy1>;
+	phy-mode = "rgmii";
+	pinctrl-names = "default";
+	pinctrl-0 = <&gmac1m1_miim
+		     &gmac1m1_tx_bus2
+		     &gmac1m1_rx_bus2
+		     &gmac1m1_rgmii_clk
+		     &gmac1m1_rgmii_bus>;
+
+	snps,reset-gpio = <&gpio3 RK_PB0 GPIO_ACTIVE_LOW>;
+	snps,reset-active-low;
+	/* Reset time is 20ms, 100ms for rtl8211f */
+	snps,reset-delays-us = <0 20000 100000>;
+
 	tx_delay = <0x3c>;
 	rx_delay = <0x2f>;
+
 	status = "okay";
 };
 
@@ -315,8 +345,8 @@ &i2c5 {
 	status = "disabled";
 };
 
-&mdio0 {
-	rgmii_phy0: ethernet-phy@0 {
+&mdio1 {
+	rgmii_phy1: ethernet-phy@0 {
 		compatible = "ethernet-phy-ieee802.3-c22";
 		reg = <0x0>;
 	};
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
