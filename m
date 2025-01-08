Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AF3D2E77188
	for <linux-rockchip@archiver.kernel.org>; Wed,  8 Jan 2025 12:38:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kOlVA8wPM+wSecirIAbqteEzPa7YVz4x96rLo7mN5lc=; b=OtEqJHyOoWJetE
	wuB0ToQ+9Rv4bFuKEqjJ7ikdkQHAUWxJVKDWT3jAkwEPH9xVUcEEmd25BrwtCnvudDOh+toEnVMsF
	+d/zbUKyrUFcXKSYscjUB7OvW1O0+ZaN/Xz05oOq1Lll1P4+ucTv9wfEjGvKtzKlo/WbiphSdReH7
	Eq5uUDr2/QvqRQwQ6h7JAPd4Kpx8VJJWQ765Mg4OzO4NoB4Y+Td1lFRPo8BB+xqq86G2zcHYCG2gr
	7EcQhbCRsJU4jO+M8p6dQga1OTqVvM8L9wrrlPvionXgV0O9N0Js6EgDuNTsbidFH73fUy0sZSuLM
	/03+V0kzcd8+CR69IoDQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tVVKb-00000008SNm-0HyE;
	Wed, 08 Jan 2025 12:38:41 +0000
Received: from layka.disroot.org ([178.21.23.139])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tVUXA-00000008HQZ-3FhE;
	Wed, 08 Jan 2025 11:47:37 +0000
Received: from mail01.disroot.lan (localhost [127.0.0.1])
	by disroot.org (Postfix) with ESMTP id 4BEF325BCB;
	Wed,  8 Jan 2025 12:47:32 +0100 (CET)
X-Virus-Scanned: SPAM Filter at disroot.org
Received: from layka.disroot.org ([127.0.0.1])
 by localhost (disroot.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id BtPQKoG2eIOz; Wed,  8 Jan 2025 12:47:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=disroot.org; s=mail;
	t=1736336848; bh=1pkpQsa+REF1tJCdkKoGqcXMk6p5YIj1+XA5lPxMgnc=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References;
	b=I3WRS7ezJmFQ+xQ8t0So04riW667+GToWi2GIZFNUliGjBfBxGRNaJjwHoq+4Pq9w
	 Q264UquhenbnJhG73fwVWn9UyDlt0DDiqkp1OPio8AT0yyd/UyNwKKzOZYGBauGQlr
	 mn5v/ZgZKS3L0s0HvOdZ5YF5beXpEsmquYlyNYW0fRBQzBeDwrebJxLKlHyv7NS1E3
	 Iu+PV23r/ZbXAEcDJ7hvvEooXUy/sRfYI6fsdrYfVYnKys7C7OTUiTZAeP5HA9F1Ju
	 CN3MMjLrfLYzuoDR9hbXegQShRnqKtCRrbIuiMa1RepGMQT//+mYPUMj45sC01Sgld
	 PCGbILDHQyAFA==
From: Yao Zi <ziyao@disroot.org>
To: Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Philipp Zabel <p.zabel@pengutronix.de>
Cc: linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Yao Zi <ziyao@disroot.org>
Subject: [PATCH v2 5/5] arm64: dts: rockchip: Add UART clocks for RK3528 SoC
Date: Wed,  8 Jan 2025 11:46:06 +0000
Message-ID: <20250108114605.1960-7-ziyao@disroot.org>
In-Reply-To: <20250108114605.1960-2-ziyao@disroot.org>
References: <20250108114605.1960-2-ziyao@disroot.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250108_034736_942318_242BD49E 
X-CRM114-Status: UNSURE (   9.70  )
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

Add missing clocks in UART nodes for RK3528 SoC.

Signed-off-by: Yao Zi <ziyao@disroot.org>
---
 arch/arm64/boot/dts/rockchip/rk3528.dtsi | 17 ++++++++++++++++-
 1 file changed, 16 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3528.dtsi b/arch/arm64/boot/dts/rockchip/rk3528.dtsi
index 37fd40377076..5b334690356a 100644
--- a/arch/arm64/boot/dts/rockchip/rk3528.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3528.dtsi
@@ -168,7 +168,8 @@ cru: clock-controller@ff4a0000 {
 		uart0: serial@ff9f0000 {
 			compatible = "rockchip,rk3528-uart", "snps,dw-apb-uart";
 			reg = <0x0 0xff9f0000 0x0 0x100>;
-			clock-frequency = <24000000>;
+			clocks = <&cru SCLK_UART0>, <&cru PCLK_UART0>;
+			clock-names = "baudclk", "apb_pclk";
 			interrupts = <GIC_SPI 40 IRQ_TYPE_LEVEL_HIGH>;
 			reg-io-width = <4>;
 			reg-shift = <2>;
@@ -178,6 +179,8 @@ uart0: serial@ff9f0000 {
 		uart1: serial@ff9f8000 {
 			compatible = "rockchip,rk3528-uart", "snps,dw-apb-uart";
 			reg = <0x0 0xff9f8000 0x0 0x100>;
+			clocks = <&cru SCLK_UART1>, <&cru PCLK_UART1>;
+			clock-names = "baudclk", "apb_pclk";
 			interrupts = <GIC_SPI 41 IRQ_TYPE_LEVEL_HIGH>;
 			reg-io-width = <4>;
 			reg-shift = <2>;
@@ -187,6 +190,8 @@ uart1: serial@ff9f8000 {
 		uart2: serial@ffa00000 {
 			compatible = "rockchip,rk3528-uart", "snps,dw-apb-uart";
 			reg = <0x0 0xffa00000 0x0 0x100>;
+			clocks = <&cru SCLK_UART2>, <&cru PCLK_UART2>;
+			clock-names = "baudclk", "apb_pclk";
 			interrupts = <GIC_SPI 42 IRQ_TYPE_LEVEL_HIGH>;
 			reg-io-width = <4>;
 			reg-shift = <2>;
@@ -195,6 +200,8 @@ uart2: serial@ffa00000 {
 
 		uart3: serial@ffa08000 {
 			compatible = "rockchip,rk3528-uart", "snps,dw-apb-uart";
+			clocks = <&cru SCLK_UART3>, <&cru PCLK_UART3>;
+			clock-names = "baudclk", "apb_pclk";
 			reg = <0x0 0xffa08000 0x0 0x100>;
 			reg-io-width = <4>;
 			reg-shift = <2>;
@@ -204,6 +211,8 @@ uart3: serial@ffa08000 {
 		uart4: serial@ffa10000 {
 			compatible = "rockchip,rk3528-uart", "snps,dw-apb-uart";
 			reg = <0x0 0xffa10000 0x0 0x100>;
+			clocks = <&cru SCLK_UART4>, <&cru PCLK_UART4>;
+			clock-names = "baudclk", "apb_pclk";
 			interrupts = <GIC_SPI 44 IRQ_TYPE_LEVEL_HIGH>;
 			reg-io-width = <4>;
 			reg-shift = <2>;
@@ -213,6 +222,8 @@ uart4: serial@ffa10000 {
 		uart5: serial@ffa18000 {
 			compatible = "rockchip,rk3528-uart", "snps,dw-apb-uart";
 			reg = <0x0 0xffa18000 0x0 0x100>;
+			clocks = <&cru SCLK_UART5>, <&cru PCLK_UART5>;
+			clock-names = "baudclk", "apb_pclk";
 			interrupts = <GIC_SPI 45 IRQ_TYPE_LEVEL_HIGH>;
 			reg-io-width = <4>;
 			reg-shift = <2>;
@@ -222,6 +233,8 @@ uart5: serial@ffa18000 {
 		uart6: serial@ffa20000 {
 			compatible = "rockchip,rk3528-uart", "snps,dw-apb-uart";
 			reg = <0x0 0xffa20000 0x0 0x100>;
+			clocks = <&cru SCLK_UART6>, <&cru PCLK_UART6>;
+			clock-names = "baudclk", "apb_pclk";
 			interrupts = <GIC_SPI 46 IRQ_TYPE_LEVEL_HIGH>;
 			reg-io-width = <4>;
 			reg-shift = <2>;
@@ -231,6 +244,8 @@ uart6: serial@ffa20000 {
 		uart7: serial@ffa28000 {
 			compatible = "rockchip,rk3528-uart", "snps,dw-apb-uart";
 			reg = <0x0 0xffa28000 0x0 0x100>;
+			clocks = <&cru SCLK_UART7>, <&cru PCLK_UART7>;
+			clock-names = "baudclk", "apb_pclk";
 			interrupts = <GIC_SPI 47 IRQ_TYPE_LEVEL_HIGH>;
 			reg-io-width = <4>;
 			reg-shift = <2>;
-- 
2.47.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
