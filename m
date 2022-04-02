Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A0F60C433F5
	for <linux-rockchip@archiver.kernel.org>; Sat,  2 Apr 2022 11:01:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YaDlBDwtorfG3mAF2yuAv1A5+CwZxHovn+teUNJ01nU=; b=ZFENwFuizPkNcR
	V4/gwsN4IqeqX9nWvfamOVS2O85k4opSad64WW1j4oV2u5PSSR9IjJRnD8fPiHNrqLCTp1+z9mwTu
	+rvCPVW8bSekPCCweh2vHRv5BUdHAB/+R7sF7VK8AFYIc279MCU/X6uaXJrMrFaDgsm04k+0JdgIZ
	NHsLL9lp4q/6q34/SUv414kye+3HeZwdcPbZehdCSvp2vAUJlqFuRAsGm32fuAI3I37CxiRICKn9a
	IKte6wk42jsTh6aRgwJ0HHtINdDcFAazZuHJPXHWWj3kHPc/tYHcg6pWV6Xdu9MFbY6TtU6wgfNJP
	P1VXl9C+LKQ4dRzUb4zA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nabVX-008YjV-QX; Sat, 02 Apr 2022 11:01:27 +0000
Received: from mxout3.routing.net ([2a03:2900:1:a::8])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nabV6-008Ydb-LP; Sat, 02 Apr 2022 11:01:02 +0000
Received: from mxbox3.masterlogin.de (unknown [192.168.10.78])
 by mxout3.routing.net (Postfix) with ESMTP id C5B4C62646;
 Sat,  2 Apr 2022 11:00:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mailerdienst.de;
 s=20200217; t=1648897258;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=rVlsNMjXQQ4jdCL0TbPne+ht1OtgQ3f4+EzKpSKvrX8=;
 b=swkdD0x3TBBMxA6IIt68vV136Ukio9/0J4qdADpFPOgGC+yP7O1HvdJCs96zAKFr2g/Fh9
 6jdwMZk5w5cA/E7Sl2xHDRCPmfsQCk4zV0q8ThqFr3MGs0u//QGAO/2a37kI9r6owa9M38
 FF7gD4bup1CeOcB6+uvcAwQ1gV3Gzio=
Received: from localhost.localdomain (fttx-pool-80.245.79.107.bambit.de
 [80.245.79.107])
 by mxbox3.masterlogin.de (Postfix) with ESMTPSA id 211523602D1;
 Sat,  2 Apr 2022 11:00:58 +0000 (UTC)
From: Frank Wunderlich <linux@fw-web.de>
To: linux-rockchip@lists.infradead.org
Cc: Frank Wunderlich <frank-w@public-files.de>,
 Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Heiko Stuebner <heiko@sntech.de>, Peter Geis <pgwipeout@gmail.com>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v1 2/2] arm64: dts: rockchip: Add gmac1 and change network
 settings
Date: Sat,  2 Apr 2022 13:00:45 +0200
Message-Id: <20220402110045.104031-3-linux@fw-web.de>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220402110045.104031-1-linux@fw-web.de>
References: <20220402110045.104031-1-linux@fw-web.de>
MIME-Version: 1.0
X-Mail-ID: 97d707e2-b6e5-46ae-8685-faf5e876b31a
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220402_040101_187970_BBB27532 
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
