Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D39DAC27C4F
	for <linux-rockchip@archiver.kernel.org>; Sun, 30 Jun 2024 15:02:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wy29HKeMjEz6ELz+lmctiPMVJuXdwbKibx/o3PcAGJo=; b=4UHOGgF7UHhiM8
	qzt4I6PJx1nbp9pSC0zFLc73OLOXpPlGtcy/MuMm0RhoxNaC3xKv+rligvkTO3hWqqnhWofLfq8GI
	ClLxRxlEjmRPTn2KuMv465/O4OJie+HCjPRo+Nlm+2+sYtBPiD9vbRVRfhOZvXlAhtFlijc/u9Vsl
	1aWzS2ltW9qyFNAegvu5AbcO3rNbrvKnOGJbd4nFJ3Enxi6PCegMuYROpFKjZpt+plWd1cP145JSe
	CvW2O3U/JWpHDy0CocHBOEqVLq8t8JJffcCKEBegYMBpOHH7+oOdSnOdL+rtAeF8PpyKVIlBSiP7M
	ENGBAhE0W+KS2q3lP5jA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sNw3z-00000000Z7C-1p40;
	Sun, 30 Jun 2024 15:01:59 +0000
Received: from mail-m6010.netease.com ([210.79.60.10])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sNw2h-00000000YTx-0mom;
	Sun, 30 Jun 2024 15:00:44 +0000
Received: from amadeus-Vostro-3710.lan (unknown [IPV6:240e:3b3:2c01:1720:3110:52ea:d52a:84f0])
	by smtp.qiye.163.com (Hmail) with ESMTPA id 028B27E0189;
	Sun, 30 Jun 2024 23:00:17 +0800 (CST)
From: Chukun Pan <amadeus@jmu.edu.cn>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Rob Herring <robh@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	Chukun Pan <amadeus@jmu.edu.cn>
Subject: [PATCH v2 6/9] arm64: dts: rockchip: fixes PHY reset for Lunzn Fastrhino R68S
Date: Sun, 30 Jun 2024 23:00:07 +0800
Message-Id: <20240630150010.55729-7-amadeus@jmu.edu.cn>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240630150010.55729-1-amadeus@jmu.edu.cn>
References: <20240630150010.55729-1-amadeus@jmu.edu.cn>
MIME-Version: 1.0
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWS1ZQUlXWQ8JGhUIEh9ZQVlCSEkeVh9PSBlIGkMeQ0lPGVYeHw5VEwETFhoSFy
	QUDg9ZV1kYEgtZQVlJT0seQUgZSEFJGEtKQUpMSUtBSEpKS0FOSR4aQR9OSRpBQ08dS1lXWRYaDx
	IVHRRZQVlPS0hVSktJT09PS1VKS0tVS1kG
X-HM-Tid: 0a9069a940b803a2kunm028b27e0189
X-HM-MType: 10
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6OTo6Dyo6DjMMQhwQVjABSDoo
	MSxPCgtVSlVKTEpCTE5CTUpDTUlCVTMWGhIXVRoWGh8eDgg7ERYOVR4fDlUYFUVZV1kSC1lBWUlP
	Sx5BSBlIQUkYS0pBSkxJS0FISkpLQU5JHhpBH05JGkFDTx1LWVdZCAFZQUhJSkg3Bg++
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240630_080039_467591_067805FC 
X-CRM114-Status: UNSURE (   8.91  )
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

Fixed the PHY address and reset GPIOs (does not match the corresponding
pinctrl) for gmac0 and gmac1.

Fixes: b9f8ca655d80 ("arm64: dts: rockchip: Add Lunzn Fastrhino R68S")
Signed-off-by: Chukun Pan <amadeus@jmu.edu.cn>
---
 .../boot/dts/rockchip/rk3568-fastrhino-r68s.dts      | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3568-fastrhino-r68s.dts b/arch/arm64/boot/dts/rockchip/rk3568-fastrhino-r68s.dts
index a3339186e89c..ce2a5e1ccefc 100644
--- a/arch/arm64/boot/dts/rockchip/rk3568-fastrhino-r68s.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3568-fastrhino-r68s.dts
@@ -39,7 +39,7 @@ &gmac0_tx_bus2
 		     &gmac0_rx_bus2
 		     &gmac0_rgmii_clk
 		     &gmac0_rgmii_bus>;
-	snps,reset-gpio = <&gpio0 RK_PB0 GPIO_ACTIVE_LOW>;
+	snps,reset-gpio = <&gpio1 RK_PB0 GPIO_ACTIVE_LOW>;
 	snps,reset-active-low;
 	/* Reset time is 15ms, 50ms for rtl8211f */
 	snps,reset-delays-us = <0 15000 50000>;
@@ -61,7 +61,7 @@ &gmac1m1_tx_bus2
 		     &gmac1m1_rx_bus2
 		     &gmac1m1_rgmii_clk
 		     &gmac1m1_rgmii_bus>;
-	snps,reset-gpio = <&gpio0 RK_PB1 GPIO_ACTIVE_LOW>;
+	snps,reset-gpio = <&gpio1 RK_PB1 GPIO_ACTIVE_LOW>;
 	snps,reset-active-low;
 	/* Reset time is 15ms, 50ms for rtl8211f */
 	snps,reset-delays-us = <0 15000 50000>;
@@ -71,18 +71,18 @@ &gmac1m1_rgmii_clk
 };
 
 &mdio0 {
-	rgmii_phy0: ethernet-phy@0 {
+	rgmii_phy0: ethernet-phy@1 {
 		compatible = "ethernet-phy-ieee802.3-c22";
-		reg = <0>;
+		reg = <0x1>;
 		pinctrl-0 = <&eth_phy0_reset_pin>;
 		pinctrl-names = "default";
 	};
 };
 
 &mdio1 {
-	rgmii_phy1: ethernet-phy@0 {
+	rgmii_phy1: ethernet-phy@1 {
 		compatible = "ethernet-phy-ieee802.3-c22";
-		reg = <0>;
+		reg = <0x1>;
 		pinctrl-0 = <&eth_phy1_reset_pin>;
 		pinctrl-names = "default";
 	};
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
