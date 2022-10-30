Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 41B91ECAAA1
	for <linux-rockchip@archiver.kernel.org>; Sun, 30 Oct 2022 19:37:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=8/nkK+Z4IoizxYw5R4UJnD/cYakcfyqLjCySuVHWqDQ=; b=lURDynbg/ICxUY
	aFJA4XKJIn4eCP0VIhXOnryXI++Ix+TGtwYXW1p8O9+DY8I2qFhVeqYwZ8L6IsD/IP/UZxcH6RjXh
	4jgNCTBAoyJ12dJGofYiFKYkfBnzMlfFZ3m4NW7rhnE4dfVYyzT1L9ga5ZTwoEodNPIAOGLHKWJHa
	uaLFKElT4ll90woOhcHKjkOolWWj1N96g/8oQ4vpZxKLY7dG/U0WIu8fAgfdnP4Am1Vrv/4NZY+rD
	wADmMdpP6Bus5gTptp1agKQ0XiNE77zC+zuAxk1zwucis37hWpdqNNfxRDuo5IDXF8NA/HvJc9W+9
	6+mVzJd4f5U9hgXk23Rw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1opE7P-002MDe-B3; Sun, 30 Oct 2022 19:37:15 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1opE7N-002MAt-F7
	for linux-rockchip@lists.infradead.org; Sun, 30 Oct 2022 19:37:14 +0000
Received: from [185.156.123.69] (helo=phil.sntech)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1opE7L-0005Tu-TI; Sun, 30 Oct 2022 20:37:11 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org
Cc: Heiko Stuebner <heiko@sntech.de>
Subject: [PATCH] arm64: dts: rockchip: fix spdif@fe460000 ordering on rk356x
Date: Sun, 30 Oct 2022 20:37:08 +0100
Message-Id: <20221030193708.1671069-1-heiko@sntech.de>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221030_123713_519552_50ED5714 
X-CRM114-Status: UNSURE (   9.31  )
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

Move the node to its correct position, based on its
mmio-address.

Signed-off-by: Heiko Stuebner <heiko@sntech.de>
---
 arch/arm64/boot/dts/rockchip/rk356x.dtsi | 28 ++++++++++++------------
 1 file changed, 14 insertions(+), 14 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk356x.dtsi b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
index 164708f1eb67..10e3a0862602 100644
--- a/arch/arm64/boot/dts/rockchip/rk356x.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
@@ -1049,20 +1049,6 @@ sdhci: mmc@fe310000 {
 		status = "disabled";
 	};
 
-	spdif: spdif@fe460000 {
-		compatible = "rockchip,rk3568-spdif";
-		reg = <0x0 0xfe460000 0x0 0x1000>;
-		interrupts = <GIC_SPI 102 IRQ_TYPE_LEVEL_HIGH>;
-		clock-names = "mclk", "hclk";
-		clocks = <&cru MCLK_SPDIF_8CH>, <&cru HCLK_SPDIF_8CH>;
-		dmas = <&dmac1 1>;
-		dma-names = "tx";
-		pinctrl-names = "default";
-		pinctrl-0 = <&spdifm0_tx>;
-		#sound-dai-cells = <0>;
-		status = "disabled";
-	};
-
 	i2s0_8ch: i2s@fe400000 {
 		compatible = "rockchip,rk3568-i2s-tdm";
 		reg = <0x0 0xfe400000 0x0 0x1000>;
@@ -1142,6 +1128,20 @@ &pdmm0_sdi2
 		status = "disabled";
 	};
 
+	spdif: spdif@fe460000 {
+		compatible = "rockchip,rk3568-spdif";
+		reg = <0x0 0xfe460000 0x0 0x1000>;
+		interrupts = <GIC_SPI 102 IRQ_TYPE_LEVEL_HIGH>;
+		clock-names = "mclk", "hclk";
+		clocks = <&cru MCLK_SPDIF_8CH>, <&cru HCLK_SPDIF_8CH>;
+		dmas = <&dmac1 1>;
+		dma-names = "tx";
+		pinctrl-names = "default";
+		pinctrl-0 = <&spdifm0_tx>;
+		#sound-dai-cells = <0>;
+		status = "disabled";
+	};
+
 	dmac0: dma-controller@fe530000 {
 		compatible = "arm,pl330", "arm,primecell";
 		reg = <0x0 0xfe530000 0x0 0x4000>;
-- 
2.35.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
