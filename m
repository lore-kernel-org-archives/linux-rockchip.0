Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8FB30C19F32
	for <linux-rockchip@archiver.kernel.org>; Wed,  5 Mar 2025 20:28:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Jx5YVPY4fSv0+LbzdeJPtrIaiW05nC+CS3tr+5XM47g=; b=fYtge7mFVM3CwC
	VHXnYPN0tJF3V1NeAdZeHBNOKsP8vgSg/YND0+QDZbIJy2AaSKXvKnnU0XKsm91Kt3aSfQrQpni8M
	MZn8HbAxanJu1UpFhwUAaxnTaFnIDPGeVHV6zzC36a/RPgXNhscAoPKHVNYZ8dWiBLRhGXZHH5FE0
	OlmR/qhnBG1EeQwn0hgTCDYbzEtyeHmAYY/Up6x6lbAawnlo1QQDwoop1axbxX4oSSVhd8d8cQW3t
	DLkdtkuTtv5FxPf7lkaJ+QlrMbBsJrVnEuK0bay4/fNQsSk/G42xjmDLDiqPfwLVxQpBWq0xE1sji
	g6O649/SYgF1yl6rnYQw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tpvM9-00000009DKL-19Dm;
	Wed, 05 Mar 2025 20:28:41 +0000
Received: from layka.disroot.org ([178.21.23.139])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tpuhM-0000000975C-3vVs;
	Wed, 05 Mar 2025 19:46:34 +0000
Received: from mail01.disroot.lan (localhost [127.0.0.1])
	by disroot.org (Postfix) with ESMTP id B1A4220262;
	Wed,  5 Mar 2025 20:46:31 +0100 (CET)
X-Virus-Scanned: SPAM Filter at disroot.org
Received: from layka.disroot.org ([127.0.0.1])
 by localhost (disroot.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id WOTQifpnZT0D; Wed,  5 Mar 2025 20:46:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=disroot.org; s=mail;
	t=1741203991; bh=PKjtU6X4d0BMYFIAHp85g3ctIB6zYtcVyxlZgZ0SqSY=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References;
	b=BiglscAiQIrOV5Ag4smqrsqVfPlteU387gDZeDB6HnUQACBGXv/6lFueYVyFntbvh
	 L3Xm2vefp6rucwM+R4oNuEKBSlexIYb5lCs1sUqFYPkaqdeO3O104h7ejWW/ARPuw/
	 cUQFpaKDw8hewlYjGXsSllhdKcxJZP8Uo5XI20DHMbniQULrDfOlf+zpA1yGPUWj34
	 rJnF5j4YCUlDeZMdA4JdISHrh3eDIaGoG9U1prvwgC3NK3TEfml7BLaviafzZG6mwY
	 J6PDqYI/EAoI8pMBrXOKwEKGhiS9seECw/SjOrHyA84AhiP+Uk1j1JmbfzJHTS0/1l
	 /cIELJkUS+iNA==
From: Yao Zi <ziyao@disroot.org>
To: Ulf Hansson <ulf.hansson@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Shresth Prasad <shresthprasad7@gmail.com>,
	Cristian Ciocaltea <cristian.ciocaltea@collabora.com>,
	Detlev Casanova <detlev.casanova@collabora.com>,
	Jonas Karlman <jonas@kwiboo.se>,
	Chukun Pan <amadeus@jmu.edu.cn>
Cc: linux-mmc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-clk@vger.kernel.org,
	Yao Zi <ziyao@disroot.org>
Subject: [PATCH v2 7/8] arm64: dts: rockchip: Add SDMMC/SDIO controllers for RK3528
Date: Wed,  5 Mar 2025 19:46:11 +0000
Message-ID: <20250305194612.47171-1-ziyao@disroot.org>
In-Reply-To: <20250305194217.47052-1-ziyao@disroot.org>
References: <20250305194217.47052-1-ziyao@disroot.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250305_114633_108446_A92FD3FD 
X-CRM114-Status: UNSURE (   9.04  )
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

RK3528 features two SDIO controllers and one SD/MMC controller, describe
them in devicetree. Since their sample and drive clocks are located in
the VO and VPU GRFs, corresponding syscons are added to make these
clocks available.

Signed-off-by: Yao Zi <ziyao@disroot.org>
---
 arch/arm64/boot/dts/rockchip/rk3528.dtsi | 70 ++++++++++++++++++++++++
 1 file changed, 70 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3528.dtsi b/arch/arm64/boot/dts/rockchip/rk3528.dtsi
index d3e2a64ff2d5..363023314e9c 100644
--- a/arch/arm64/boot/dts/rockchip/rk3528.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3528.dtsi
@@ -130,6 +130,16 @@ gic: interrupt-controller@fed01000 {
 			#interrupt-cells = <3>;
 		};
 
+		vpu_grf: syscon@ff340000 {
+			compatible = "rockchip,rk3528-vpu-grf", "syscon";
+			reg = <0x0 0xff340000 0x0 0x8000>;
+		};
+
+		vo_grf: syscon@ff360000 {
+			compatible = "rockchip,rk3528-vo-grf", "syscon";
+			reg = <0x0 0xff360000 0x0 0x10000>;
+		};
+
 		cru: clock-controller@ff4a0000 {
 			compatible = "rockchip,rk3528-cru";
 			reg = <0x0 0xff4a0000 0x0 0x30000>;
@@ -274,6 +284,66 @@ saradc: adc@ffae0000 {
 			resets = <&cru SRST_P_SARADC>;
 			reset-names = "saradc-apb";
 			#io-channel-cells = <1>;
+		};
+
+		sdio0: mmc@ffc10000 {
+			compatible = "rockchip,rk3528-dw-mshc",
+				     "rockchip,rk3288-dw-mshc";
+			reg = <0x0 0xffc10000 0x0 0x4000>;
+			clocks = <&cru HCLK_SDIO0>,
+				 <&cru CCLK_SRC_SDIO0>,
+				 <&cru SCLK_SDIO0_DRV>,
+				 <&cru SCLK_SDIO0_SAMPLE>;
+			clock-names = "biu", "ciu", "ciu-drive", "ciu-sample";
+			fifo-depth = <0x100>;
+			interrupts = <GIC_SPI 137 IRQ_TYPE_LEVEL_HIGH>;
+			max-frequency = <150000000>;
+			pinctrl-names = "default";
+			pinctrl-0 = <&sdio0_bus4>, <&sdio0_clk>, <&sdio0_cmd>,
+				    <&sdio0_det>, <&sdio0_pwren>;
+			resets = <&cru SRST_H_SDIO0>;
+			reset-names = "reset";
+			status = "disabled";
+		};
+
+		sdio1: mmc@ffc20000 {
+			compatible = "rockchip,rk3528-dw-mshc",
+				     "rockchip,rk3288-dw-mshc";
+			reg = <0x0 0xffc20000 0x0 0x4000>;
+			clocks = <&cru HCLK_SDIO1>,
+				 <&cru CCLK_SRC_SDIO1>,
+				 <&cru SCLK_SDIO1_DRV>,
+				 <&cru SCLK_SDIO1_SAMPLE>;
+			clock-names = "biu", "ciu", "ciu-drive", "ciu-sample";
+			fifo-depth = <0x100>;
+			interrupts = <GIC_SPI 138 IRQ_TYPE_LEVEL_HIGH>;
+			max-frequency = <150000000>;
+			pinctrl-names = "default";
+			pinctrl-0 = <&sdio1_bus4>, <&sdio1_clk>, <&sdio1_cmd>,
+				    <&sdio1_det>, <&sdio1_pwren>;
+			resets = <&cru SRST_H_SDIO1>;
+			reset-names = "reset";
+			status = "disabled";
+		};
+
+		sdmmc: mmc@ffc30000 {
+			compatible = "rockchip,rk3528-dw-mshc",
+				     "rockchip,rk3288-dw-mshc";
+			reg = <0x0 0xffc30000 0x0 0x4000>;
+			clocks = <&cru HCLK_SDMMC0>,
+				 <&cru CCLK_SRC_SDMMC0>,
+				 <&cru SCLK_SDMMC_DRV>,
+				 <&cru SCLK_SDMMC_SAMPLE>;
+			clock-names = "biu", "ciu", "ciu-drive", "ciu-sample";
+			fifo-depth = <0x100>;
+			interrupts = <GIC_SPI 133 IRQ_TYPE_LEVEL_HIGH>;
+			max-frequency = <150000000>;
+			pinctrl-names = "default";
+			pinctrl-0 = <&sdmmc_bus4>, <&sdmmc_clk>, <&sdmmc_cmd>,
+				    <&sdmmc_det>;
+			resets = <&cru SRST_H_SDMMC0>;
+			reset-names = "reset";
+			rockchip,default-sample-phase = <90>;
 			status = "disabled";
 		};
 
-- 
2.48.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
