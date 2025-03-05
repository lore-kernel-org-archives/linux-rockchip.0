Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 52FEFC282EC
	for <linux-rockchip@archiver.kernel.org>; Wed,  5 Mar 2025 22:48:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:Message-Id:
	MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uVUdbIppf14uvxgMWCh6NWDKhst8j6bAQ+Lbx3dVats=; b=VIj3TCHecYeXY8
	SeyL44l2e8I4gs3Aq5ZluVd+46LFiAvsb1pLaFRlKQxjx+yZXRpuFJLnyytYR2PwcJWtdVdXMNwMf
	FrdzFWPpxmbykZQMZ9/ZZRBaWwnyxvLioC519oko1RHrShTX048LJJ0WHh/uZZI8p3/kTVvecm9Dw
	fGTynupKJCrkesWW1S4SRuCfj1TxMtGE7snP1Eec5sFdpXeYXovO2CRfalAteqtqXXv9774uieXYM
	O4kYlGmWyHxsc0fn84BaQN0hFrGDLX7Yn6xfdkCJeWJWaluf8c3NlI62m75/KaepGYm4zlpY4Ykec
	WBUl/wNgACg+wKJbDvow==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tpxXn-00000009WVW-1Uqq;
	Wed, 05 Mar 2025 22:48:51 +0000
Received: from sender4-pp-f112.zoho.com ([136.143.188.112])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tpwFC-00000009LDB-0teG;
	Wed, 05 Mar 2025 21:25:35 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1741209923; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=OEelxNAApT7vS6/Kz/HpU+OruTv1o+SEspOSAHXYeb+k+M8FtMIrnJseIuWePt7Ww3zgTMJiPsNImxQxIvXpPtXrLhNcfBELn+e7NfC6vqC4PBBbhMn2PQib2lwZGUxRg6izhz5V3DwwJMITw2Ehr6iZxh20jjkyjheAzgaXjcg=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1741209923; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=3Jlaf/j3jeSFOP0bpJXJWNf3t/93dYT2IY3rNJ9zTBg=; 
	b=NjiQwR3nqHSAGjONVa5oBcMek5op0frTVizzP+zzlRSh30bLNmYDAbY3NNRKOrJw3vK1Vnb4VEcY/gZjBbESwv/5MVznBCeY0UTjh3fl5OZE9NAdNGG5c9fl5uHh89BU0kUj6/+OfdgQeHVxWnODTjDOF0j7s03gPspJDY6Uslo=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=nicolas.frattaroli@collabora.com;
	dmarc=pass header.from=<nicolas.frattaroli@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1741209923;
	s=zohomail; d=collabora.com; i=nicolas.frattaroli@collabora.com;
	h=From:From:Date:Date:Subject:Subject:MIME-Version:Content-Type:Content-Transfer-Encoding:Message-Id:Message-Id:References:In-Reply-To:To:To:Cc:Cc:Reply-To;
	bh=3Jlaf/j3jeSFOP0bpJXJWNf3t/93dYT2IY3rNJ9zTBg=;
	b=ad24r2D9OWGQGChRJqlugVz6q0q4YBndCylEOz7E90Dvu/wKY76zIRNbuvl8YJhR
	sb4awhQY1wVvKsvsN5NMKl8Wbm8uxa0pwdMMP9Tuar5EQ95L2xKMFoVkr8dSFQ1SI01
	96I7vy1/ZlaOBvp6xklDcPsBa1QTZMkvaAkFbYE8=
Received: by mx.zohomail.com with SMTPS id 174120992258066.36353357994255;
	Wed, 5 Mar 2025 13:25:22 -0800 (PST)
From: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
Date: Wed, 05 Mar 2025 22:24:25 +0100
Subject: [PATCH 5/7] arm64: dts: rockchip: Add RK3576 SAI nodes
MIME-Version: 1.0
Message-Id: <20250305-rk3576-sai-v1-5-64e6cf863e9a@collabora.com>
References: <20250305-rk3576-sai-v1-0-64e6cf863e9a@collabora.com>
In-Reply-To: <20250305-rk3576-sai-v1-0-64e6cf863e9a@collabora.com>
To: Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
 Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>, 
 Philipp Zabel <p.zabel@pengutronix.de>, 
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, 
 Sugar Zhang <sugar.zhang@rock-chips.com>
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250305_132534_301250_E467CD11 
X-CRM114-Status: GOOD (  11.07  )
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
Cc: devicetree@vger.kernel.org, Sebastian Reichel <sebastian.reichel@collabora.com>, linux-sound@vger.kernel.org, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, kernel@collabora.com, Luca Ceresoli <luca.ceresoli@bootlin.com>, linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

The RK3576 SoC has 10 SAI controllers in total. Five of them are in the
video output power domains, and are used for digital audio output along
with the video signal of those, e.g. HDMI audio.

The other five, SAI0 through SAI4, are exposed externally. SAI0 and SAI1
are capable of 8-channel audio, whereas SAI2, SAI3 and SAI4 are limited
to two channels. These five are in the audio power domain.

Signed-off-by: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
---
 arch/arm64/boot/dts/rockchip/rk3576.dtsi | 194 +++++++++++++++++++++++++++++++
 1 file changed, 194 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3576.dtsi b/arch/arm64/boot/dts/rockchip/rk3576.dtsi
index 8591065b575223a5eb2da70f723f16969aa2ecf7..2691efea02a3852babfdeb25c490f9309356c3b7 100644
--- a/arch/arm64/boot/dts/rockchip/rk3576.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3576.dtsi
@@ -1010,6 +1010,38 @@ vop_mmu: iommu@27d07e00 {
 			status = "disabled";
 		};
 
+		sai5: sai@27d40000 {
+			compatible = "rockchip,rk3576-sai";
+			reg = <0x0 0x27d40000 0x0 0x1000>;
+			interrupts = <GIC_SPI 192 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&cru MCLK_SAI5_8CH>, <&cru HCLK_SAI5_8CH>;
+			clock-names = "mclk", "hclk";
+			dmas = <&dmac2 3>;
+			dma-names = "rx";
+			power-domains = <&power RK3576_PD_VO0>;
+			resets = <&cru SRST_M_SAI5_8CH>, <&cru SRST_H_SAI5_8CH>;
+			reset-names = "m", "h";
+			#sound-dai-cells = <0>;
+			sound-name-prefix = "SAI5";
+			status = "disabled";
+		};
+
+		sai6: sai@27d50000 {
+			compatible = "rockchip,rk3576-sai";
+			reg = <0x0 0x27d50000 0x0 0x1000>;
+			interrupts = <GIC_SPI 193 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&cru MCLK_SAI6_8CH>, <&cru HCLK_SAI6_8CH>;
+			clock-names = "mclk", "hclk";
+			dmas = <&dmac2 4>, <&dmac2 5>;
+			dma-names = "tx", "rx";
+			power-domains = <&power RK3576_PD_VO0>;
+			resets = <&cru SRST_M_SAI6_8CH>, <&cru SRST_H_SAI6_8CH>;
+			reset-names = "m", "h";
+			#sound-dai-cells = <0>;
+			sound-name-prefix = "SAI6";
+			status = "disabled";
+		};
+
 		hdmi: hdmi@27da0000 {
 			compatible = "rockchip,rk3576-dw-hdmi-qp";
 			reg = <0x0 0x27da0000 0x0 0x20000>;
@@ -1050,6 +1082,54 @@ hdmi_out: port@1 {
 			};
 		};
 
+		sai7: sai@27ed0000 {
+			compatible = "rockchip,rk3576-sai";
+			reg = <0x0 0x27ed0000 0x0 0x1000>;
+			interrupts = <GIC_SPI 194 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&cru MCLK_SAI7_8CH>, <&cru HCLK_SAI7_8CH>;
+			clock-names = "mclk", "hclk";
+			dmas = <&dmac2 19>;
+			dma-names = "tx";
+			power-domains = <&power RK3576_PD_VO1>;
+			resets = <&cru SRST_M_SAI7_8CH>, <&cru SRST_H_SAI7_8CH>;
+			reset-names = "m", "h";
+			#sound-dai-cells = <0>;
+			sound-name-prefix = "SAI7";
+			status = "disabled";
+		};
+
+		sai8: sai@27ee0000 {
+			compatible = "rockchip,rk3576-sai";
+			reg = <0x0 0x27ee0000 0x0 0x1000>;
+			interrupts = <GIC_SPI 372 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&cru MCLK_SAI8_8CH>, <&cru HCLK_SAI8_8CH>;
+			clock-names = "mclk", "hclk";
+			dmas = <&dmac1 7>;
+			dma-names = "tx";
+			power-domains = <&power RK3576_PD_VO1>;
+			resets = <&cru SRST_M_SAI8_8CH>, <&cru SRST_H_SAI8_8CH>;
+			reset-names = "m", "h";
+			#sound-dai-cells = <0>;
+			sound-name-prefix = "SAI8";
+			status = "disabled";
+		};
+
+		sai9: sai@27ef0000 {
+			compatible = "rockchip,rk3576-sai";
+			reg = <0x0 0x27ef0000 0x0 0x1000>;
+			interrupts = <GIC_SPI 373 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&cru MCLK_SAI9_8CH>, <&cru HCLK_SAI9_8CH>;
+			clock-names = "mclk", "hclk";
+			dmas = <&dmac0 26>;
+			dma-names = "tx";
+			power-domains = <&power RK3576_PD_VO1>;
+			resets = <&cru SRST_M_SAI9_8CH>, <&cru SRST_H_SAI9_8CH>;
+			reset-names = "m", "h";
+			#sound-dai-cells = <0>;
+			sound-name-prefix = "SAI9";
+			status = "disabled";
+		};
+
 		qos_hdcp1: qos@27f02000 {
 			compatible = "rockchip,rk3576-qos", "syscon";
 			reg = <0x0 0x27f02000 0x0 0x20>;
@@ -1436,6 +1516,120 @@ log_leakage: log-leakage@22 {
 			};
 		};
 
+		sai0: sai@2a600000 {
+			compatible = "rockchip,rk3576-sai";
+			reg = <0x0 0x2a600000 0x0 0x1000>;
+			interrupts = <GIC_SPI 187 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&cru MCLK_SAI0_8CH>, <&cru HCLK_SAI0_8CH>;
+			clock-names = "mclk", "hclk";
+			dmas = <&dmac0 0>, <&dmac0 1>;
+			dma-names = "tx", "rx";
+			power-domains = <&power RK3576_PD_AUDIO>;
+			resets = <&cru SRST_M_SAI0_8CH>, <&cru SRST_H_SAI0_8CH>;
+			reset-names = "m", "h";
+			pinctrl-names = "default";
+			pinctrl-0 = <&sai0m0_lrck
+				&sai0m0_sclk
+				&sai0m0_sdi0
+				&sai0m0_sdi1
+				&sai0m0_sdi2
+				&sai0m0_sdi3
+				&sai0m0_sdo0
+				&sai0m0_sdo1
+				&sai0m0_sdo2
+				&sai0m0_sdo3>;
+			#sound-dai-cells = <0>;
+			sound-name-prefix = "SAI0";
+			status = "disabled";
+		};
+
+		sai1: sai@2a610000 {
+			compatible = "rockchip,rk3576-sai";
+			reg = <0x0 0x2a610000 0x0 0x1000>;
+			interrupts = <GIC_SPI 188 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&cru MCLK_SAI1_8CH>, <&cru HCLK_SAI1_8CH>;
+			clock-names = "mclk", "hclk";
+			dmas = <&dmac0 2>, <&dmac0 3>;
+			dma-names = "tx", "rx";
+			power-domains = <&power RK3576_PD_AUDIO>;
+			resets = <&cru SRST_M_SAI1_8CH>, <&cru SRST_H_SAI1_8CH>;
+			reset-names = "m", "h";
+			pinctrl-names = "default";
+			pinctrl-0 = <&sai1m0_lrck
+				&sai1m0_sclk
+				&sai1m0_sdi0
+				&sai1m0_sdo0
+				&sai1m0_sdo1
+				&sai1m0_sdo2
+				&sai1m0_sdo3>;
+			#sound-dai-cells = <0>;
+			sound-name-prefix = "SAI1";
+			status = "disabled";
+		};
+
+		sai2: sai@2a620000 {
+			compatible = "rockchip,rk3576-sai";
+			reg = <0x0 0x2a620000 0x0 0x1000>;
+			interrupts = <GIC_SPI 189 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&cru MCLK_SAI2_2CH>, <&cru HCLK_SAI2_2CH>;
+			clock-names = "mclk", "hclk";
+			dmas = <&dmac1 0>, <&dmac1 1>;
+			dma-names = "tx", "rx";
+			power-domains = <&power RK3576_PD_AUDIO>;
+			resets = <&cru SRST_M_SAI2_2CH>, <&cru SRST_H_SAI2_2CH>;
+			reset-names = "m", "h";
+			pinctrl-names = "default";
+			pinctrl-0 = <&sai2m0_lrck
+				&sai2m0_sclk
+				&sai2m0_sdi
+				&sai2m0_sdo>;
+			#sound-dai-cells = <0>;
+			sound-name-prefix = "SAI2";
+			status = "disabled";
+		};
+
+		sai3: sai@2a630000 {
+			compatible = "rockchip,rk3576-sai";
+			reg = <0x0 0x2a630000 0x0 0x1000>;
+			interrupts = <GIC_SPI 190 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&cru MCLK_SAI3_2CH>, <&cru HCLK_SAI3_2CH>;
+			clock-names = "mclk", "hclk";
+			dmas = <&dmac1 2>, <&dmac1 3>;
+			dma-names = "tx", "rx";
+			power-domains = <&power RK3576_PD_AUDIO>;
+			resets = <&cru SRST_M_SAI3_2CH>, <&cru SRST_H_SAI3_2CH>;
+			reset-names = "m", "h";
+			pinctrl-names = "default";
+			pinctrl-0 = <&sai3m0_lrck
+				&sai3m0_sclk
+				&sai3m0_sdi
+				&sai3m0_sdo>;
+			#sound-dai-cells = <0>;
+			sound-name-prefix = "SAI3";
+			status = "disabled";
+		};
+
+		sai4: sai@2a640000 {
+			compatible = "rockchip,rk3576-sai";
+			reg = <0x0 0x2a640000 0x0 0x1000>;
+			interrupts = <GIC_SPI 191 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&cru MCLK_SAI4_2CH>, <&cru HCLK_SAI4_2CH>;
+			clock-names = "mclk", "hclk";
+			dmas = <&dmac2 0>, <&dmac2 1>;
+			dma-names = "tx", "rx";
+			power-domains = <&power RK3576_PD_AUDIO>;
+			resets = <&cru SRST_M_SAI4_2CH>, <&cru SRST_H_SAI4_2CH>;
+			reset-names = "m", "h";
+			pinctrl-names = "default";
+			pinctrl-0 = <&sai4m0_lrck
+				&sai4m0_sclk
+				&sai4m0_sdi
+				&sai4m0_sdo>;
+			#sound-dai-cells = <0>;
+			sound-name-prefix = "SAI4";
+			status = "disabled";
+		};
+
 		gic: interrupt-controller@2a701000 {
 			compatible = "arm,gic-400";
 			reg = <0x0 0x2a701000 0 0x10000>,

-- 
2.48.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
