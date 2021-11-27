Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 882E4C433F5
	for <linux-rockchip@archiver.kernel.org>; Sat, 27 Nov 2021 14:20:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TEmFw/LBWfcE/YsNi0JImJFJNWt2ag0ruEc7ewOGto8=; b=l8GTX4241IeheA
	v+FzDxNsudt4ZaIocw3MPHFaUv1IXyqxH7sLennlsTBSq7FzHjqzNLfY+XmKTCnxdTiHlroKo4kKn
	Ak0sH/ldcLdBjb5V5ThM2FjIRm1xsLRfLYXa4wPDtIB0gRjG7+WUXFiYYnfIzJBFEyf/46NZIth/l
	NPZFsOiJhR8rTSjkddrlhDSD/c80yfIVRzHvU2H6SZT9hDtdBRo8TzbPATNsH7TbaDZJDiLEpGJbi
	/zHsR7kCgsCTmjhs7SXzSPXJ1+nT5LKuRr1dNHYln8uI5qooPXIg1f0+iC4CeaFm9Tg1O9vAlYGXN
	zbZKSSK32YqeVKvhJb5w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mqyYm-00Dmc9-RK; Sat, 27 Nov 2021 14:20:12 +0000
Received: from mail-wr1-x42d.google.com ([2a00:1450:4864:20::42d])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mqyYP-00DmVK-Pu; Sat, 27 Nov 2021 14:19:51 +0000
Received: by mail-wr1-x42d.google.com with SMTP id a9so25222681wrr.8;
 Sat, 27 Nov 2021 06:19:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=9wFuxDU6XuWJPQiYwJY3rcE0CQIucc2FP/TwiBCR7CM=;
 b=oDf9Td0LQWW6yd0qcV4bAzAIio053nSL93uf21Zr6S6ZK0esGNNF2itq6zCtD1NPaC
 reFQTtWpZPcIIUqigbnRuxMrgWo9hETNjrfJnTDeI2bUotBbD1mZs8nU7O93pCc6Ou3k
 Dtg4UHtknxhfrPEoJ3uphlJsySTmA6YJwZq+RIUQtFx+Mif/IlxCkOlItxEu1sILGaRb
 bp+gwsJVyLaKoOx0jC1Ao4Sd5Jku8u5gYzT1KHF3UUdhbp4IDMzk49rUZEkp/khtJblx
 n4T+VNlvLazXXO0+Bm1UMXX/bik9lL3C6lsMBJFqRryD1PRHjzxefq/J6W9BqOpUhqGg
 zqIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=9wFuxDU6XuWJPQiYwJY3rcE0CQIucc2FP/TwiBCR7CM=;
 b=XVRbj0gNxl4D6pnr5IIygWsI3zL46+8ay6uijwcte0HpLtTJFpV7CxodSuXAk0qpSh
 SuS/Ag11g+twaglJS8XzKIU81nuYXEUkpNpuNPfcGbaDaboQE22RkxvWoqV6FQJv2gfg
 GR9tJZc8kJWbtW2g+xk1vG5pYevKxpQxIqlwsLF8tJlnBM4B+n0qMMN1rGM+80TZCxF8
 kx2QV4JRob+GHDj2bGK1x/4S7ibvY6Rp0PQaOfe2T9oQFiwDOyfJkKSCLvCVJb33cN7L
 eFnE9nrmqe3Ooztb4EFGR0QChi4Yl0q52x0VhaClfUZjIjz21VynSyGUVUfnVNgUkXKP
 SDpQ==
X-Gm-Message-State: AOAM530O/woP/XfsfWEYuxvp4wLEJuRsNRy44jWHWB/I27Y0+IHi65br
 mkZ4ZbKfNqiFgrU6XTn7cT+FlobadxI=
X-Google-Smtp-Source: ABdhPJxz/q4qsNt0TFfidBSuwLFbxLSBCnsbvAP17diM4xDFsKLyto01NbYiDUP6zBNQxJRjlvNybA==
X-Received: by 2002:a5d:47c9:: with SMTP id o9mr21402130wrc.348.1638022788307; 
 Sat, 27 Nov 2021 06:19:48 -0800 (PST)
Received: from localhost.localdomain (84-72-105-84.dclient.hispeed.ch.
 [84.72.105.84])
 by smtp.gmail.com with ESMTPSA id o1sm8509839wrn.63.2021.11.27.06.19.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 27 Nov 2021 06:19:48 -0800 (PST)
From: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
To: Rob Herring <robh+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH v2 2/3] arm64: dts: rockchip: Add spi nodes on rk356x
Date: Sat, 27 Nov 2021 15:19:08 +0100
Message-Id: <20211127141910.12649-3-frattaroli.nicolas@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20211127141910.12649-1-frattaroli.nicolas@gmail.com>
References: <20211127141910.12649-1-frattaroli.nicolas@gmail.com>
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211127_061949_873312_0AB3A610 
X-CRM114-Status: GOOD (  10.88  )
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

This adds the four spi nodes (spi0, spi1, spi2, spi3) to the
rk356x dtsi. These are from the downstream device tree, though
I have double-checked that their interrupts and DMA numbers are
correct. I have also tested spi1 with an SPI device.

Signed-off-by: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk356x.dtsi | 64 ++++++++++++++++++++++++
 1 file changed, 64 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk356x.dtsi b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
index 46d9552f6028..a058a9e9d5d7 100644
--- a/arch/arm64/boot/dts/rockchip/rk356x.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
@@ -39,6 +39,10 @@ aliases {
 		serial7 = &uart7;
 		serial8 = &uart8;
 		serial9 = &uart9;
+		spi0 = &spi0;
+		spi1 = &spi1;
+		spi2 = &spi2;
+		spi3 = &spi3;
 	};
 
 	cpus {
@@ -742,6 +746,66 @@ wdt: watchdog@fe600000 {
 		clock-names = "tclk", "pclk";
 	};
 
+	spi0: spi@fe610000 {
+		compatible = "rockchip,rk3568-spi", "rockchip,rk3066-spi";
+		reg = <0x0 0xfe610000 0x0 0x1000>;
+		interrupts = <GIC_SPI 103 IRQ_TYPE_LEVEL_HIGH>;
+		clocks = <&cru CLK_SPI0>, <&cru PCLK_SPI0>;
+		clock-names = "spiclk", "apb_pclk";
+		dmas = <&dmac0 20>, <&dmac0 21>;
+		dma-names = "tx", "rx";
+		pinctrl-names = "default";
+		pinctrl-0 = <&spi0m0_cs0 &spi0m0_cs1 &spi0m0_pins>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+		status = "disabled";
+	};
+
+	spi1: spi@fe620000 {
+		compatible = "rockchip,rk3568-spi", "rockchip,rk3066-spi";
+		reg = <0x0 0xfe620000 0x0 0x1000>;
+		interrupts = <GIC_SPI 104 IRQ_TYPE_LEVEL_HIGH>;
+		clocks = <&cru CLK_SPI1>, <&cru PCLK_SPI1>;
+		clock-names = "spiclk", "apb_pclk";
+		dmas = <&dmac0 22>, <&dmac0 23>;
+		dma-names = "tx", "rx";
+		pinctrl-names = "default";
+		pinctrl-0 = <&spi1m0_cs0 &spi1m0_cs1 &spi1m0_pins>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+		status = "disabled";
+	};
+
+	spi2: spi@fe630000 {
+		compatible = "rockchip,rk3568-spi", "rockchip,rk3066-spi";
+		reg = <0x0 0xfe630000 0x0 0x1000>;
+		interrupts = <GIC_SPI 105 IRQ_TYPE_LEVEL_HIGH>;
+		clocks = <&cru CLK_SPI2>, <&cru PCLK_SPI2>;
+		clock-names = "spiclk", "apb_pclk";
+		dmas = <&dmac0 24>, <&dmac0 25>;
+		dma-names = "tx", "rx";
+		pinctrl-names = "default";
+		pinctrl-0 = <&spi2m0_cs0 &spi2m0_cs1 &spi2m0_pins>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+		status = "disabled";
+	};
+
+	spi3: spi@fe640000 {
+		compatible = "rockchip,rk3568-spi", "rockchip,rk3066-spi";
+		reg = <0x0 0xfe640000 0x0 0x1000>;
+		interrupts = <GIC_SPI 106 IRQ_TYPE_LEVEL_HIGH>;
+		clocks = <&cru CLK_SPI3>, <&cru PCLK_SPI3>;
+		clock-names = "spiclk", "apb_pclk";
+		dmas = <&dmac0 26>, <&dmac0 27>;
+		dma-names = "tx", "rx";
+		pinctrl-names = "default";
+		pinctrl-0 = <&spi3m0_cs0 &spi3m0_cs1 &spi3m0_pins>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+		status = "disabled";
+	};
+
 	uart1: serial@fe650000 {
 		compatible = "rockchip,rk3568-uart", "snps,dw-apb-uart";
 		reg = <0x0 0xfe650000 0x0 0x100>;
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
