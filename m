Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1E932C433EF
	for <linux-rockchip@archiver.kernel.org>; Fri, 26 Nov 2021 15:44:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=A3nubJSEO0djLPF3jBiZX8TdMaea8HEAI6JYaxHtMnU=; b=E+ZQq3oSZiRS7K
	14MR45nq6i+daOzfGFwNyx5tJAE1w95oZ7gUoDDRlCEorpBjSaVkOJ2cO2SsK2a5Hrr6qwsnvFHKr
	ufJ9bH0Wl7delKKSfVSuaK7yA3Epeu/HGArhMuQiCMSlPi9/Rc2D98hliBdlWZJp6bHb1jDslsVrc
	27KfstSrjj1d+OWknNhEKHmWZVkG3DD3ToKeuk/sEM/S5nZpk70bzkk1LfBgphN0eup7t7l/EvHMN
	45AqcP2L1jvpNsDugt5zPnXD9bvLhjm1a/LDRifYnguFhz6qBaYJf/Tp6QQ1WUEHj0o1tx/Yz7Bwf
	vmghJXJihLnuaFhZbTtQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mqdOx-00Az4C-FO; Fri, 26 Nov 2021 15:44:39 +0000
Received: from mail-wm1-x32e.google.com ([2a00:1450:4864:20::32e])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mqdOO-00AysH-Ma; Fri, 26 Nov 2021 15:44:06 +0000
Received: by mail-wm1-x32e.google.com with SMTP id
 p3-20020a05600c1d8300b003334fab53afso10998302wms.3; 
 Fri, 26 Nov 2021 07:44:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=6cSeWfhEbavNzmvOss4FAgbn9tZPKzO6/SplA5Hffp4=;
 b=G6mcWzcYp7e91PM3gab7OIfErFk73WW8RZYGaUEooLYuCWmVbOwubIwAVoZP05Bdm0
 ZwbvJI4Z4NvnoN9wu0eKqJfukOznzNwNDc+LwzdHmFTuuT2Emhhr7pZJP9ZnSzaWmLHP
 Iiz6QiWSSQKQBc8KNqOmUPPAnZ/cTIGrTKY7sqU+Q9Cdg47buxsVlIJHTTFrcnc60I+X
 hbD5XLTVJhsuC7kJQv+J3EmQ0Bmbduvka2Tf8zfEEDo3tG2MuZ1+IXqYiVK71I9yb76D
 sdJzo26ZbBfQyas48wF+XY3vrr6UyjWC8sQBt6aT6Lnhbb2XUP3JUTmJUjqMulKlU0nO
 aS8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=6cSeWfhEbavNzmvOss4FAgbn9tZPKzO6/SplA5Hffp4=;
 b=fKNdeqkoXdTk67FKwlEIs5Ms4AN9Z6tXLZYl6UX7+oAur7Jm3DamU7fsVYrCq2DQzK
 8l9SO2p6HloS9Zg/J39bx4shYOAHxxV4/zuLyvaZBPuhhByNMlm+/i62TWvnVbKk49Fh
 odfcr7erdOklRgZVzsJxBkcO7PaARg07WJAVI+uwxMYrWZPw85Gw+AhN1cubz6AcMDiT
 37n6x3VYV3d3IikSQcpKLf/iAYlmgWC1WeuaPDRzFXIm2RY4MV++afCPE7WhW6K8fBGf
 NOJHlNnKaQmreXG0lmqSgQXA6U5YAOWd9H8N9mbJmYJbpTT7Ra/L28DY0+tPe6xwrB0N
 uIbw==
X-Gm-Message-State: AOAM533dVvUe0O66Hp0E1r+iFVdTI4pjC/i/fgW7WuDpL4sYo6rHzNgF
 Oro5EhGFIJIX2vgBJrN3MiM=
X-Google-Smtp-Source: ABdhPJwXJqy2sr4dEeGSQAcAmKe4wzYDxJAqSpm+IEb8Foz3+w8Uyrezn/76WHNM8c4aI/9AZIsmrg==
X-Received: by 2002:a1c:6a13:: with SMTP id f19mr16535310wmc.89.1637941443439; 
 Fri, 26 Nov 2021 07:44:03 -0800 (PST)
Received: from localhost.localdomain (84-72-105-84.dclient.hispeed.ch.
 [84.72.105.84])
 by smtp.gmail.com with ESMTPSA id p13sm11372400wmi.0.2021.11.26.07.44.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 26 Nov 2021 07:44:03 -0800 (PST)
From: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
To: Rob Herring <robh+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH 2/3] arm64: dts: rockchip: Add spi nodes on rk356x
Date: Fri, 26 Nov 2021 16:43:43 +0100
Message-Id: <20211126154344.724316-3-frattaroli.nicolas@gmail.com>
X-Mailer: git-send-email 2.34.0
In-Reply-To: <20211126154344.724316-1-frattaroli.nicolas@gmail.com>
References: <20211126154344.724316-1-frattaroli.nicolas@gmail.com>
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211126_074404_813492_F0F7E756 
X-CRM114-Status: GOOD (  11.19  )
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
 arch/arm64/boot/dts/rockchip/rk356x.dtsi | 68 ++++++++++++++++++++++++
 1 file changed, 68 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk356x.dtsi b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
index 46d9552f6028..57c0197cc65a 100644
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
@@ -742,6 +746,70 @@ wdt: watchdog@fe600000 {
 		clock-names = "tclk", "pclk";
 	};
 
+	spi0: spi@fe610000 {
+		compatible = "rockchip,rk3568-spi", "rockchip,rk3066-spi";
+		reg = <0x0 0xfe610000 0x0 0x1000>;
+		interrupts = <GIC_SPI 103 IRQ_TYPE_LEVEL_HIGH>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+		clocks = <&cru CLK_SPI0>, <&cru PCLK_SPI0>;
+		clock-names = "spiclk", "apb_pclk";
+		dmas = <&dmac0 20>, <&dmac0 21>;
+		dma-names = "tx", "rx";
+		pinctrl-names = "default", "high_speed";
+		pinctrl-0 = <&spi0m0_cs0 &spi0m0_cs1 &spi0m0_pins>;
+		pinctrl-1 = <&spi0m0_cs0 &spi0m0_cs1 &spi0m0_pins_hs>;
+		status = "disabled";
+	};
+
+	spi1: spi@fe620000 {
+		compatible = "rockchip,rk3568-spi", "rockchip,rk3066-spi";
+		reg = <0x0 0xfe620000 0x0 0x1000>;
+		interrupts = <GIC_SPI 104 IRQ_TYPE_LEVEL_HIGH>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+		clocks = <&cru CLK_SPI1>, <&cru PCLK_SPI1>;
+		clock-names = "spiclk", "apb_pclk";
+		dmas = <&dmac0 22>, <&dmac0 23>;
+		dma-names = "tx", "rx";
+		pinctrl-names = "default", "high_speed";
+		pinctrl-0 = <&spi1m0_cs0 &spi1m0_cs1 &spi1m0_pins>;
+		pinctrl-1 = <&spi1m0_cs0 &spi1m0_cs1 &spi1m0_pins_hs>;
+		status = "disabled";
+	};
+
+	spi2: spi@fe630000 {
+		compatible = "rockchip,rk3568-spi", "rockchip,rk3066-spi";
+		reg = <0x0 0xfe630000 0x0 0x1000>;
+		interrupts = <GIC_SPI 105 IRQ_TYPE_LEVEL_HIGH>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+		clocks = <&cru CLK_SPI2>, <&cru PCLK_SPI2>;
+		clock-names = "spiclk", "apb_pclk";
+		dmas = <&dmac0 24>, <&dmac0 25>;
+		dma-names = "tx", "rx";
+		pinctrl-names = "default", "high_speed";
+		pinctrl-0 = <&spi2m0_cs0 &spi2m0_cs1 &spi2m0_pins>;
+		pinctrl-1 = <&spi2m0_cs0 &spi2m0_cs1 &spi2m0_pins_hs>;
+		status = "disabled";
+	};
+
+	spi3: spi@fe640000 {
+		compatible = "rockchip,rk3568-spi", "rockchip,rk3066-spi";
+		reg = <0x0 0xfe640000 0x0 0x1000>;
+		interrupts = <GIC_SPI 106 IRQ_TYPE_LEVEL_HIGH>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+		clocks = <&cru CLK_SPI3>, <&cru PCLK_SPI3>;
+		clock-names = "spiclk", "apb_pclk";
+		dmas = <&dmac0 26>, <&dmac0 27>;
+		dma-names = "tx", "rx";
+		pinctrl-names = "default", "high_speed";
+		pinctrl-0 = <&spi3m0_cs0 &spi3m0_cs1 &spi3m0_pins>;
+		pinctrl-1 = <&spi3m0_cs0 &spi3m0_cs1 &spi3m0_pins_hs>;
+		status = "disabled";
+	};
+
 	uart1: serial@fe650000 {
 		compatible = "rockchip,rk3568-uart", "snps,dw-apb-uart";
 		reg = <0x0 0xfe650000 0x0 0x100>;
-- 
2.34.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
