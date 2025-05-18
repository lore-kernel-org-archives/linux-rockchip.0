Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 46592C3ABC9
	for <linux-rockchip@archiver.kernel.org>; Sun, 18 May 2025 22:19:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=41rvVVdeSlEzPIHazr7OqRaCukxAfeoiMTL0PQDktGE=; b=SFBkQ82wqu8vub
	T00lTLCIBmlmJW4gSZNl/Wm3Xmis2HcHDPMxMksqmtySvORpM/M9s1oLFwOpXRNO8d2bCA9MBYrRf
	5OaneUKopauyi3bRDlLa8GdrFUgEnzq+xqVqTHBgwAxx7WqSqeWTsLnL0FpkpxhyNzykrnnNvMUtQ
	b44S8moVGag5hgvfhFoGqvfPru2wgw0AF6vYDX9slJiicMWUxOgFqzfvXvE6k4hPHFbPMxh1k2v3f
	nrl2VmheaMpA+ch4UmlYZt9z/Wj9vh13iIj8Us85mkMRCnJSMPfg29TYbsKIAARoy7iDdF/RS1sIV
	Ft53SVu8r7YPgzADsRnA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uGmLz-00000007c3r-2TZO;
	Sun, 18 May 2025 22:19:31 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uGm8A-00000007aGC-2LSc;
	Sun, 18 May 2025 22:05:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:MIME-Version:References:
	In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID;
	bh=A7bB8TX5zrgicF4aqvA9YeLanxwK8tkQjn9Eghl3sAg=; b=Luskou3/gyzaVfbtulZq2IYHk+
	xIytXRKcXYoUmOsjxbk8O8ReZxFORpsvQF03cusH7EFifQ1kvg5KhZJfziTMG6mtZyFnheuNVEzlg
	BShyOctseNHDrT/RTphrRMkdKH4Rrt2ltQyAZQDtV5+EY8fKjG9Njlj+/3sw5m6EQLgDVma7ClcHe
	+KyTzoUntP0wjS+QMGxeRo+fkUK3R2lsCfYV2BoT6vyUgDNb40NeeQ9scS+HJUt12c9ibZnbWfPyr
	uEe9CPqbskGPCTFOat6xNexTdTnsvRtZslApkg8RwwDvorjATJoq6/agUgKzQNvIlVbSiI6eD/iaH
	0y/unB6g==;
Received: from i53875a50.versanet.de ([83.135.90.80] helo=localhost.localdomain)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1uGm81-0004gv-Aa; Mon, 19 May 2025 00:05:05 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: heiko@sntech.de
Subject: [PATCH 6/6] arm64: dts: rockchip: move rk3562 pinctrl node outside the soc node
Date: Mon, 19 May 2025 00:04:48 +0200
Message-ID: <20250518220449.2722673-7-heiko@sntech.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20250518220449.2722673-1-heiko@sntech.de>
References: <20250518220449.2722673-1-heiko@sntech.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250518_150514_613150_067AA0E9 
X-CRM114-Status: GOOD (  12.43  )
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
Cc: robh@kernel.org, conor+dt@kernel.org, ziyao@disroot.org, devicetree@vger.kernel.org, kever.yang@rock-chips.com, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, krzk+dt@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

The non-mmio pinctrl node is not supposed to be inside the soc simple-bus
as dtc points out:

../arch/arm64/boot/dts/rockchip/rk3562.dtsi:1115.20-1181.5: Warning (simple_bus_reg): /soc/pinctrl: missing or empty reg/ranges property

Move the pinctrl node outside and adapt the indentation.

Signed-off-by: Heiko Stuebner <heiko@sntech.de>
---
 arch/arm64/boot/dts/rockchip/rk3562.dtsi | 136 +++++++++++------------
 1 file changed, 68 insertions(+), 68 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3562.dtsi b/arch/arm64/boot/dts/rockchip/rk3562.dtsi
index 292e82ec5d45..def504ffa326 100644
--- a/arch/arm64/boot/dts/rockchip/rk3562.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3562.dtsi
@@ -218,6 +218,74 @@ scmi_clk: protocol@14 {
 		};
 	};
 
+	pinctrl: pinctrl {
+		compatible = "rockchip,rk3562-pinctrl";
+		rockchip,grf = <&ioc_grf>;
+		#address-cells = <2>;
+		#size-cells = <2>;
+		ranges;
+
+		gpio0: gpio@ff260000 {
+			compatible = "rockchip,gpio-bank";
+			reg = <0x0 0xff260000 0x0 0x100>;
+			clocks = <&cru PCLK_PMU0_GPIO0>, <&cru DBCLK_PMU0_GPIO0>;
+			gpio-controller;
+			gpio-ranges = <&pinctrl 0 0 32>;
+			interrupts = <GIC_SPI 0 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-controller;
+			#gpio-cells = <2>;
+			#interrupt-cells = <2>;
+		};
+
+		gpio1: gpio@ff620000 {
+			compatible = "rockchip,gpio-bank";
+			reg = <0x0 0xff620000 0x0 0x100>;
+			clocks = <&cru PCLK_PERI_GPIO1>, <&cru DCLK_PERI_GPIO1>;
+			gpio-controller;
+			gpio-ranges = <&pinctrl 0 32 32>;
+			interrupts = <GIC_SPI 2 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-controller;
+			#gpio-cells = <2>;
+			#interrupt-cells = <2>;
+		};
+
+		gpio2: gpio@ff630000 {
+			compatible = "rockchip,gpio-bank";
+			reg = <0x0 0xff630000 0x0 0x100>;
+			clocks = <&cru PCLK_PERI_GPIO2>, <&cru DCLK_PERI_GPIO2>;
+			gpio-controller;
+			gpio-ranges = <&pinctrl 0 64 32>;
+			interrupts = <GIC_SPI 4 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-controller;
+			#gpio-cells = <2>;
+			#interrupt-cells = <2>;
+		};
+
+		gpio3: gpio@ffac0000 {
+			compatible = "rockchip,gpio-bank";
+			reg = <0x0 0xffac0000 0x0 0x100>;
+			clocks = <&cru PCLK_GPIO3_VCCIO156>, <&cru DCLK_BUS_GPIO3>;
+			gpio-controller;
+			gpio-ranges = <&pinctrl 0 96 32>;
+			interrupts = <GIC_SPI 6 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-controller;
+			#gpio-cells = <2>;
+			#interrupt-cells = <2>;
+		};
+
+		gpio4: gpio@ffad0000 {
+			compatible = "rockchip,gpio-bank";
+			reg = <0x0 0xffad0000 0x0 0x100>;
+			clocks = <&cru PCLK_GPIO4_VCCIO156>, <&cru DCLK_BUS_GPIO4>;
+			gpio-controller;
+			gpio-ranges = <&pinctrl 0 128 32>;
+			interrupts = <GIC_SPI 8 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-controller;
+			#gpio-cells = <2>;
+			#interrupt-cells = <2>;
+		};
+	};
+
 	psci {
 		compatible = "arm,psci-1.0";
 		method = "smc";
@@ -1111,74 +1179,6 @@ saradc1: adc@ffaa0000 {
 			#io-channel-cells = <1>;
 			status = "disabled";
 		};
-
-		pinctrl: pinctrl {
-			compatible = "rockchip,rk3562-pinctrl";
-			rockchip,grf = <&ioc_grf>;
-			#address-cells = <2>;
-			#size-cells = <2>;
-			ranges;
-
-			gpio0: gpio@ff260000 {
-				compatible = "rockchip,gpio-bank";
-				reg = <0x0 0xff260000 0x0 0x100>;
-				clocks = <&cru PCLK_PMU0_GPIO0>, <&cru DBCLK_PMU0_GPIO0>;
-				gpio-controller;
-				gpio-ranges = <&pinctrl 0 0 32>;
-				interrupts = <GIC_SPI 0 IRQ_TYPE_LEVEL_HIGH>;
-				interrupt-controller;
-				#gpio-cells = <2>;
-				#interrupt-cells = <2>;
-			};
-
-			gpio1: gpio@ff620000 {
-				compatible = "rockchip,gpio-bank";
-				reg = <0x0 0xff620000 0x0 0x100>;
-				clocks = <&cru PCLK_PERI_GPIO1>, <&cru DCLK_PERI_GPIO1>;
-				gpio-controller;
-				gpio-ranges = <&pinctrl 0 32 32>;
-				interrupts = <GIC_SPI 2 IRQ_TYPE_LEVEL_HIGH>;
-				interrupt-controller;
-				#gpio-cells = <2>;
-				#interrupt-cells = <2>;
-			};
-
-			gpio2: gpio@ff630000 {
-				compatible = "rockchip,gpio-bank";
-				reg = <0x0 0xff630000 0x0 0x100>;
-				clocks = <&cru PCLK_PERI_GPIO2>, <&cru DCLK_PERI_GPIO2>;
-				gpio-controller;
-				gpio-ranges = <&pinctrl 0 64 32>;
-				interrupts = <GIC_SPI 4 IRQ_TYPE_LEVEL_HIGH>;
-				interrupt-controller;
-				#gpio-cells = <2>;
-				#interrupt-cells = <2>;
-			};
-
-			gpio3: gpio@ffac0000 {
-				compatible = "rockchip,gpio-bank";
-				reg = <0x0 0xffac0000 0x0 0x100>;
-				clocks = <&cru PCLK_GPIO3_VCCIO156>, <&cru DCLK_BUS_GPIO3>;
-				gpio-controller;
-				gpio-ranges = <&pinctrl 0 96 32>;
-				interrupts = <GIC_SPI 6 IRQ_TYPE_LEVEL_HIGH>;
-				interrupt-controller;
-				#gpio-cells = <2>;
-				#interrupt-cells = <2>;
-			};
-
-			gpio4: gpio@ffad0000 {
-				compatible = "rockchip,gpio-bank";
-				reg = <0x0 0xffad0000 0x0 0x100>;
-				clocks = <&cru PCLK_GPIO4_VCCIO156>, <&cru DCLK_BUS_GPIO4>;
-				gpio-controller;
-				gpio-ranges = <&pinctrl 0 128 32>;
-				interrupts = <GIC_SPI 8 IRQ_TYPE_LEVEL_HIGH>;
-				interrupt-controller;
-				#gpio-cells = <2>;
-				#interrupt-cells = <2>;
-			};
-		};
 	};
 };
 
-- 
2.47.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
