Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BCB40CEB2E9
	for <linux-rockchip@archiver.kernel.org>; Tue,  1 Oct 2024 04:44:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TnBHPJXjd2aKSuCl0SaAykGLhLXTQ4Feuq/n9cDk1uM=; b=dJpLX+0lNPdYmU
	8EXStAPeqFGE8+/y0UQaJsqK6V+uzrHNAiuVhbImPfjb53ctEQIZMYx2wE8j611VuHPso3bdp1c5f
	YK4sD5SioWf9kAZ0wIRKkXSqmGLEx3C18O/lsM8fICjNTKPX+CT3QVgMsYtjqS5ZkbcVOlZKH9FnJ
	ZTOfqDHuYkouWU0WYYNl1Mj2G64DelkCyYHCkjjo47ZrIB8vX+gL3ek97D6184Uwg1SbAWNyOP/dH
	D/DQdR44eHtvA94P8VEpV+hCrYsYgi6DMTCjNJQQWciQLV6T2BJol5gUr6s51g3x+skZeY88Dx/wi
	nFzV1dZIV/tiLR8tlL+g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1svUk3-00000001axz-3Wxd;
	Tue, 01 Oct 2024 04:44:07 +0000
Received: from layka.disroot.org ([178.21.23.139])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1svUfv-00000001aND-3KEO;
	Tue, 01 Oct 2024 04:39:53 +0000
Received: from mail01.disroot.lan (localhost [127.0.0.1])
	by disroot.org (Postfix) with ESMTP id 8A5ED23CAD;
	Tue,  1 Oct 2024 06:39:50 +0200 (CEST)
X-Virus-Scanned: SPAM Filter at disroot.org
Received: from layka.disroot.org ([127.0.0.1])
 by localhost (disroot.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id W90cDK1kOghZ; Tue,  1 Oct 2024 06:39:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=disroot.org; s=mail;
	t=1727757589; bh=0V1Ookeeycp/R5rCacItScFvCKb6+3jLczQxITY6ufc=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References;
	b=eiXw0rh5fMrnLqvcXty6qEiTI3w19WxPvQ0wG5vl7/KzU0qCckejE1MxJk890Q2mL
	 qs0JOGececmxZpMYctfKAoEJnS122T02kaKdOjY+qj+kDH3HJvWfRg+Ec6QK6/kcVN
	 d4MhWM1oCxyVklv7qHCMyt+Ejef7Jm12KHZ0E5kPOfpYZznAwIsdKKH7t7dBAaWBg0
	 4PCyI2F9tpmkn3rz+ambGFNCGlIdi45wC6/jFvzRUZCIwsZ3Mq3+tq4neP+s6DQAhI
	 wDfMK+IJc8TkKclVpdivmKrKFFQmnfNTRV7ACt6JoQBk0Ugu3Ls9YdMss5qU2OwpmZ
	 KSUgZfwk/4Rvw==
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
	Celeste Liu <CoelacanthusHex@gmail.com>,
	Yao Zi <ziyao@disroot.org>
Subject: [PATCH 8/8] arm64: dts: rockchip: Add UART clocks for RK3528 SoC
Date: Tue,  1 Oct 2024 04:38:38 +0000
Message-ID: <20241001043838.31963-2-ziyao@disroot.org>
In-Reply-To: <20241001042401.31903-2-ziyao@disroot.org>
References: <20241001042401.31903-2-ziyao@disroot.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240930_213951_992823_9393413E 
X-CRM114-Status: UNSURE (   8.73  )
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
index c0552ff7cd31..9c28e1d0d7ea 100644
--- a/arch/arm64/boot/dts/rockchip/rk3528.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3528.dtsi
@@ -166,7 +166,8 @@ cru: clock-controller@ff4a0000 {
 		uart0: serial@ff9f0000 {
 			compatible = "rockchip,rk3528-uart", "snps,dw-apb-uart";
 			reg = <0x0 0xff9f0000 0x0 0x100>;
-			clock-frequency = <24000000>;
+			clocks = <&cru SCLK_UART0>, <&cru PCLK_UART0>;
+			clock-names = "baudclk", "apb_pclk";
 			interrupts = <GIC_SPI 40 IRQ_TYPE_LEVEL_HIGH>;
 			reg-io-width = <4>;
 			reg-shift = <2>;
@@ -176,6 +177,8 @@ uart0: serial@ff9f0000 {
 		uart1: serial@ff9f8000 {
 			compatible = "rockchip,rk3528-uart", "snps,dw-apb-uart";
 			reg = <0x0 0xff9f8000 0x0 0x100>;
+			clocks = <&cru SCLK_UART1>, <&cru PCLK_UART1>;
+			clock-names = "baudclk", "apb_pclk";
 			interrupts = <GIC_SPI 41 IRQ_TYPE_LEVEL_HIGH>;
 			reg-io-width = <4>;
 			reg-shift = <2>;
@@ -185,6 +188,8 @@ uart1: serial@ff9f8000 {
 		uart2: serial@ffa00000 {
 			compatible = "rockchip,rk3528-uart", "snps,dw-apb-uart";
 			reg = <0x0 0xffa00000 0x0 0x100>;
+			clocks = <&cru SCLK_UART2>, <&cru PCLK_UART2>;
+			clock-names = "baudclk", "apb_pclk";
 			interrupts = <GIC_SPI 42 IRQ_TYPE_LEVEL_HIGH>;
 			reg-io-width = <4>;
 			reg-shift = <2>;
@@ -193,6 +198,8 @@ uart2: serial@ffa00000 {
 
 		uart3: serial@ffa08000 {
 			compatible = "rockchip,rk3528-uart", "snps,dw-apb-uart";
+			clocks = <&cru SCLK_UART3>, <&cru PCLK_UART3>;
+			clock-names = "baudclk", "apb_pclk";
 			reg = <0x0 0xffa08000 0x0 0x100>;
 			reg-io-width = <4>;
 			reg-shift = <2>;
@@ -202,6 +209,8 @@ uart3: serial@ffa08000 {
 		uart4: serial@ffa10000 {
 			compatible = "rockchip,rk3528-uart", "snps,dw-apb-uart";
 			reg = <0x0 0xffa10000 0x0 0x100>;
+			clocks = <&cru SCLK_UART4>, <&cru PCLK_UART4>;
+			clock-names = "baudclk", "apb_pclk";
 			interrupts = <GIC_SPI 44 IRQ_TYPE_LEVEL_HIGH>;
 			reg-io-width = <4>;
 			reg-shift = <2>;
@@ -211,6 +220,8 @@ uart4: serial@ffa10000 {
 		uart5: serial@ffa18000 {
 			compatible = "rockchip,rk3528-uart", "snps,dw-apb-uart";
 			reg = <0x0 0xffa18000 0x0 0x100>;
+			clocks = <&cru SCLK_UART5>, <&cru PCLK_UART5>;
+			clock-names = "baudclk", "apb_pclk";
 			interrupts = <GIC_SPI 45 IRQ_TYPE_LEVEL_HIGH>;
 			reg-io-width = <4>;
 			reg-shift = <2>;
@@ -220,6 +231,8 @@ uart5: serial@ffa18000 {
 		uart6: serial@ffa20000 {
 			compatible = "rockchip,rk3528-uart", "snps,dw-apb-uart";
 			reg = <0x0 0xffa20000 0x0 0x100>;
+			clocks = <&cru SCLK_UART6>, <&cru PCLK_UART6>;
+			clock-names = "baudclk", "apb_pclk";
 			interrupts = <GIC_SPI 46 IRQ_TYPE_LEVEL_HIGH>;
 			reg-io-width = <4>;
 			reg-shift = <2>;
@@ -229,6 +242,8 @@ uart6: serial@ffa20000 {
 		uart7: serial@ffa28000 {
 			compatible = "rockchip,rk3528-uart", "snps,dw-apb-uart";
 			reg = <0x0 0xffa28000 0x0 0x100>;
+			clocks = <&cru SCLK_UART7>, <&cru PCLK_UART7>;
+			clock-names = "baudclk", "apb_pclk";
 			interrupts = <GIC_SPI 47 IRQ_TYPE_LEVEL_HIGH>;
 			reg-io-width = <4>;
 			reg-shift = <2>;
-- 
2.46.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
