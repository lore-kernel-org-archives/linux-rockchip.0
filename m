Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A540DC3ABBF
	for <linux-rockchip@archiver.kernel.org>; Tue,  6 May 2025 13:02:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:Message-Id:
	MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0fF2p7BbJDejkZgswffFgBdNw6ev42gZMuRt0fT5jX4=; b=xvt2zyJJYZcZ1Y
	J57vaiQz4XlbJnqYs9jzSG7WEHn8x+Mb8aXI07FcCTd66CFCW6iR/UPVWMuJ6VMS2NB28VYUkCEmA
	en+u/8LX0jKYvbmD+09tu0TEj+VUGSTkqur1HSzkh4wSW6M5FjHaM90coBLinn+LqajbfozDbJZUw
	KJNago0wZGJR7WnKjwhS0aSgMW29D+mG4zSpF37XfSHV5yzdaADSvk/oatY3+P0P8KoXjUPHAXzQ/
	Z6yIyVWgdAd9InnTC7VOUcotmtqfo7Lz0NQNro3+P6ZC2BLmKLtHamGkXyN58FTwKV/9YOAHqsp/e
	NP8A94nPY6jF9c0Oyi6w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uCHvs-0000000C0ZM-3qss;
	Tue, 06 May 2025 13:02:00 +0000
Received: from sender4-pp-f112.zoho.com ([136.143.188.112])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uCFlf-0000000Bbfl-3R4t;
	Tue, 06 May 2025 10:43:21 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1746528186; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=DgF/zVWGWJl7AAReI1hJR9cRPTrndBwCbBKuQpJrH/SbLlxEk3YGhWq84FfRAKATOjx8g3Lm6818VcE7SliEcyT1agSTtARB8762l0P1mT3jspTEGDGBZzTul3GZ1SqrqQOFEoEPiUyNFbJpEmpwyD3jMnczkRIdAiS5frbTbPY=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1746528186; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=tLCasK8e9R84NfOujCZyRtRjQpqhlhhO1RqpULpghak=; 
	b=lwJ5oBa4vV4azfh4btroVPf7MgZmFgQQ70L7luUclq4TirEuA2OX/2BJOi5mb8JcqN+jff/ye5Wr/GuEG0NqNnMQk7uAFcEgjU1BJn0qeNdfPychoDl96aXZEDohs5a2plH4GCJqho2l14rxySrkIhUSWt4lNdFzqZgJXroX8bs=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=nicolas.frattaroli@collabora.com;
	dmarc=pass header.from=<nicolas.frattaroli@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1746528186;
	s=zohomail; d=collabora.com; i=nicolas.frattaroli@collabora.com;
	h=From:From:Date:Date:Subject:Subject:MIME-Version:Content-Type:Content-Transfer-Encoding:Message-Id:Message-Id:References:In-Reply-To:To:To:Cc:Cc:Reply-To;
	bh=tLCasK8e9R84NfOujCZyRtRjQpqhlhhO1RqpULpghak=;
	b=UbONrpCNlDVWVrMcywxVeN3yNMoi0eeYd9YsAI/gS86pcaJz/K/p1Tzs3CssQ8f5
	shNjzjFPOvasChjoE5Vpa9AFjfcqH5QcA8HuFj/XHEXwi0l2ODHX/1S0JZS2bnwoSZt
	7LNeA8mU6vMXgH0hNcWoAZxGIxzAzvicHaDq5h44=
Received: by mx.zohomail.com with SMTPS id 1746528184511266.37259709756916;
	Tue, 6 May 2025 03:43:04 -0700 (PDT)
From: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
Date: Tue, 06 May 2025 12:42:40 +0200
Subject: [PATCH v4 1/5] arm64: dts: rockchip: Add RK3576 SAI nodes
MIME-Version: 1.0
Message-Id: <20250506-rk3576-sai-v4-1-a8b5f5733ceb@collabora.com>
References: <20250506-rk3576-sai-v4-0-a8b5f5733ceb@collabora.com>
In-Reply-To: <20250506-rk3576-sai-v4-0-a8b5f5733ceb@collabora.com>
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
X-CRM114-CacheID: sfid-20250506_034319_935368_5EC6228D 
X-CRM114-Status: GOOD (  11.12  )
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
 arch/arm64/boot/dts/rockchip/rk3576.dtsi | 200 +++++++++++++++++++++++++++++++
 1 file changed, 200 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3576.dtsi b/arch/arm64/boot/dts/rockchip/rk3576.dtsi
index d7c6495e18c08042e7d541e21c06d9c7a3f18286..335a868a1200493d60d08983281fe5637a20ec61 100644
--- a/arch/arm64/boot/dts/rockchip/rk3576.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3576.dtsi
@@ -1010,6 +1010,41 @@ vop_mmu: iommu@27d07e00 {
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
+			rockchip,sai-rx-route = <0 1 2 3>;
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
+			rockchip,sai-rx-route = <0 1 2 3>;
+			rockchip,sai-tx-route = <0 1 2 3>;
+			#sound-dai-cells = <0>;
+			sound-name-prefix = "SAI6";
+			status = "disabled";
+		};
+
 		hdmi: hdmi@27da0000 {
 			compatible = "rockchip,rk3576-dw-hdmi-qp";
 			reg = <0x0 0x27da0000 0x0 0x20000>;
@@ -1050,6 +1085,57 @@ hdmi_out: port@1 {
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
+			rockchip,sai-tx-route = <0 1 2 3>;
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
+			rockchip,sai-tx-route = <0 1 2 3>;
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
+			rockchip,sai-tx-route = <0 1 2 3>;
+			#sound-dai-cells = <0>;
+			sound-name-prefix = "SAI9";
+			status = "disabled";
+		};
+
 		qos_hdcp1: qos@27f02000 {
 			compatible = "rockchip,rk3576-qos", "syscon";
 			reg = <0x0 0x27f02000 0x0 0x20>;
@@ -1604,6 +1690,120 @@ log_leakage: log-leakage@22 {
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
2.49.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
