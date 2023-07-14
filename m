Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9BA07EB64DC
	for <linux-rockchip@archiver.kernel.org>; Fri, 14 Jul 2023 06:42:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Fy3fVUv5ReKPlwm7QYybS2BYgvWDmSnxOC1Puai2/yA=; b=hFBleozv9U2RZP
	BrUrqQ3Nmu0y1bhBt1YCztYYafD/Oo5+N0kf97evIZX2rXxcvLbYtKzTbgawlj5HJB3gOVfzMrKzD
	gN+SNsztQX8uVfzV+XbSvw7pDsRIu23zf1o1bcjG9KbrDuQI+I9gZOHA1F2XYAg6IzOWKcrGNbP6l
	+MkXuIy+OBG5MWRXaOVFvSpjCySlnZz2ghPdVCgjyYyxRBebkqRQhHI/HkzBV0sZKMtrAx85kWiMG
	BqdMj0S8fIg12nrmlvOu6lzgZ4kyRL+kys3HF/BnI5B9szl9/Tayy7Zmm1JisImmaecYZdiihUf2o
	pQV64jXWOpAfY4PvCOow==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qKCVt-005COe-37;
	Fri, 14 Jul 2023 06:42:49 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qKCVr-005COP-2O
	for linux-rockchip@bombadil.infradead.org;
	Fri, 14 Jul 2023 06:42:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
	Content-Description:In-Reply-To:References;
	bh=Q8jvk8HxqSll+q13DIUmb5xEyjBMskrIj+VbITOtZSQ=; b=N/OESIknOUQEUT1hz80ViNQvgB
	rtHpxLzxekkdN30Ryk70kdlYHWlMp4lnnSXEvE8iyXjHhPAcxOn904+gypu90beSF+pnpNqPeT3P0
	1WU32AizldDKS7yZH8RFwGqx7BqmK0DqzJ5kxRgF1jkseI+EZDgFsRD/TRpsUCm61tuYLM4LiodaX
	UOH/hEsRsrMuEcym4me5WHYSkg8ZkEb2mS84W0mFdrJlpkvE2zkcFmdbmc5RdHxvbEHNeJ11TXX3K
	q5gOMN4XBDfQSyNiNE0ch9iduPePVHhPc/2JqpIizggu7Sa89nnKVpigdnImUiBbHrn+ngBNqT/vK
	Z2wJS7zQ==;
Received: from sakura.naobsd.org ([160.16.200.221] helo=mail.naobsd.org)
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qKCVn-006Akr-0I
	for linux-rockchip@lists.infradead.org;
	Fri, 14 Jul 2023 06:42:46 +0000
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 36E6gAoM013194;
	Fri, 14 Jul 2023 15:42:11 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Cc: michael.riesch@wolfvision.net, linux-rockchip@lists.infradead.org,
        FUKAUMI Naoki <naoki@radxa.com>
Subject: [PATCH] arm64: dts: rockchip: rock-3a: make ethernet work
Date: Fri, 14 Jul 2023 15:30:27 +0900
Message-Id: <20230714063027.74489-1-naoki@radxa.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230714_074243_868713_EB728347 
X-CRM114-Status: UNSURE (   8.82  )
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

ethernet on Radxa ROCK 3A is not working by following error:

 rk_gmac-dwmac fe010000.ethernet eth0: no phy at addr -1
 rk_gmac-dwmac fe010000.ethernet eth0: stmmac_open: Cannot attach to PHY (error: -19)

to fix this problem, align related properties with vendor kernel
 https://github.com/radxa/kernel/blob/linux-5.10-gen-rkr4.1/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts

Fixes: 22a442e6586c ("arm64: dts: rockchip: add basic dts for the radxa rock3 model a")
Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
---
 .../boot/dts/rockchip/rk3568-rock-3a.dts      | 32 ++++++-------------
 1 file changed, 10 insertions(+), 22 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts b/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts
index 917f5b2b8aab..f9381ab9629b 100644
--- a/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts
@@ -32,13 +32,6 @@ hdmi_con_in: endpoint {
 		};
 	};
 
-	gmac1_clkin: external-gmac1-clock {
-		compatible = "fixed-clock";
-		clock-frequency = <125000000>;
-		clock-output-names = "gmac1_clkin";
-		#clock-cells = <0>;
-	};
-
 	leds {
 		compatible = "gpio-leds";
 
@@ -256,18 +249,24 @@ &cpu3 {
 
 &gmac1 {
 	assigned-clocks = <&cru SCLK_GMAC1_RX_TX>, <&cru SCLK_GMAC1>;
-	assigned-clock-parents = <&cru SCLK_GMAC1_RGMII_SPEED>, <&gmac1_clkin>;
-	clock_in_out = "input";
+	assigned-clock-parents = <&cru SCLK_GMAC1_RGMII_SPEED>;
+	assigned-clock-rates = <0>, <125000000>;
+	clock_in_out = "output";
 	phy-handle = <&rgmii_phy1>;
-	phy-mode = "rgmii-id";
+	phy-mode = "rgmii";
 	phy-supply = <&vcc_3v3>;
 	pinctrl-names = "default";
 	pinctrl-0 = <&gmac1m1_miim
 		     &gmac1m1_tx_bus2
 		     &gmac1m1_rx_bus2
 		     &gmac1m1_rgmii_clk
-		     &gmac1m1_clkinout
 		     &gmac1m1_rgmii_bus>;
+	snps,reset-gpio = <&gpio3 RK_PB0 GPIO_ACTIVE_LOW>;
+	snps,reset-active-low;
+	/* Reset time is 20ms, 100ms for rtl8211f */
+	snps,reset-delays-us = <0 20000 100000>;
+	tx_delay = <0x42>;
+	rx_delay = <0x28>;
 	status = "okay";
 };
 
@@ -588,11 +587,6 @@ &mdio1 {
 	rgmii_phy1: ethernet-phy@0 {
 		compatible = "ethernet-phy-ieee802.3-c22";
 		reg = <0x0>;
-		pinctrl-names = "default";
-		pinctrl-0 = <&eth_phy_rst>;
-		reset-assert-us = <20000>;
-		reset-deassert-us = <100000>;
-		reset-gpios = <&gpio3 RK_PB0 GPIO_ACTIVE_LOW>;
 	};
 };
 
@@ -630,12 +624,6 @@ vcc_mipi_en: vcc_mipi_en {
 		};
 	};
 
-	ethernet {
-		eth_phy_rst: eth_phy_rst {
-			rockchip,pins = <3 RK_PB0 RK_FUNC_GPIO &pcfg_pull_none>;
-		};
-	};
-
 	hym8563 {
 		hym8563_int: hym8563-int {
 			rockchip,pins = <0 RK_PD3 RK_FUNC_GPIO &pcfg_pull_up>;
-- 
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
