Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B7898ECAAD8
	for <linux-rockchip@archiver.kernel.org>; Fri, 16 Sep 2022 09:18:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=i82fzzMZAU2HnFotim4GBi6nLYD8vpqw3K4hKrX9b40=; b=F6JTumEP3FE/66
	ebGpapo+G/F7utrK9T2AMr9E8yvN2hBtmGjr89yDpXw8bvV19kfgmy4uaKugIEnMtuffNONgjLj5w
	z0v3tacjfPXBnokWCR4+q8R92B5+p62S2lhwpHSC6LqVZ8wQXGCOr4OJBkhSQ6hMsVgFj7uBk5BRr
	YtTwT5BRcwgwFtQo9HLTazTiFkLmhE5+v/+dlKkihEN686jKpk753+q2vUh1NvrABO+8Zl/iyrrs4
	chG7ZmAIDOe4IweSIRGGrBtrj940UBCURj1kyVQCcAqVsDgRDpE2jpeG2tEyA3a5Zlk00LxYhO8qC
	skCjAEK+2N5fYTj4kK5Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oZ7UU-00BcPL-UU; Fri, 16 Sep 2022 09:18:30 +0000
Received: from relay7-d.mail.gandi.net ([2001:4b98:dc4:8::227])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oZ7UI-00BcFX-AL; Fri, 16 Sep 2022 09:18:20 +0000
Received: (Authenticated sender: foss@0leil.net)
	by mail.gandi.net (Postfix) with ESMTPSA id 8B6692000E;
	Fri, 16 Sep 2022 09:18:07 +0000 (UTC)
From: Quentin Schulz <foss+kernel@0leil.net>
To: 
Cc: robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	heiko@sntech.de,
	linus.walleij@linaro.org,
	david@ixit.cz,
	jbx6244@gmail.com,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	foss+kernel@0leil.net,
	Quentin Schulz <quentin.schulz@theobroma-systems.com>
Subject: [PATCH] arm64: dts: rockchip: add i2s0 I2S/PDM/TDM 8ch controller to px30
Date: Fri, 16 Sep 2022 11:17:46 +0200
Message-Id: <20220916091746.35108-1-foss+kernel@0leil.net>
X-Mailer: git-send-email 2.37.3
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220916_021818_578387_A9EFA7E4 
X-CRM114-Status: UNSURE (   8.80  )
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

From: Quentin Schulz <quentin.schulz@theobroma-systems.com>

The Rockchip PX30 SoC has three I2S controllers, i2s1 and i2s2 are
2-channel I2S/PCM controllers handled by the same controller driver, and
i2s0 a 8-channel I2S/PCM/TDM controller handled by another controller
driver.

This adds the device tree node required to enable I2S0 on PX30.

This was tested in a 2-channel I2S with TX BCLK/LRCK for both TX and RX
(rockchip,trcm-sync-tx-only) setup on a soon-to-be-released board.

Signed-off-by: Quentin Schulz <quentin.schulz@theobroma-systems.com>
---
 arch/arm64/boot/dts/rockchip/px30.dtsi | 22 ++++++++++++++++++++++
 1 file changed, 22 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/px30.dtsi b/arch/arm64/boot/dts/rockchip/px30.dtsi
index 214f94fea3dc..bfa3580429d1 100644
--- a/arch/arm64/boot/dts/rockchip/px30.dtsi
+++ b/arch/arm64/boot/dts/rockchip/px30.dtsi
@@ -365,6 +365,28 @@ uart0: serial@ff030000 {
 		status = "disabled";
 	};
 
+	i2s0_8ch: i2s@ff060000 {
+		compatible = "rockchip,px30-i2s-tdm";
+		reg = <0x0 0xff060000 0x0 0x1000>;
+		interrupts = <GIC_SPI 12 IRQ_TYPE_LEVEL_HIGH>;
+		clocks = <&cru SCLK_I2S0_TX>, <&cru SCLK_I2S0_RX>, <&cru HCLK_I2S0>;
+		clock-names = "mclk_tx", "mclk_rx", "hclk";
+		dmas = <&dmac 16>, <&dmac 17>;
+		dma-names = "tx", "rx";
+		rockchip,grf = <&grf>;
+		resets = <&cru SRST_I2S0_TX>, <&cru SRST_I2S0_RX>;
+		reset-names = "tx-m", "rx-m";
+		pinctrl-names = "default";
+		pinctrl-0 = <&i2s0_8ch_sclktx &i2s0_8ch_sclkrx
+			     &i2s0_8ch_lrcktx &i2s0_8ch_lrckrx
+			     &i2s0_8ch_sdo0 &i2s0_8ch_sdi0
+			     &i2s0_8ch_sdo1 &i2s0_8ch_sdi1
+			     &i2s0_8ch_sdo2 &i2s0_8ch_sdi2
+			     &i2s0_8ch_sdo3 &i2s0_8ch_sdi3>;
+		#sound-dai-cells = <0>;
+		status = "disabled";
+	};
+
 	i2s1_2ch: i2s@ff070000 {
 		compatible = "rockchip,px30-i2s", "rockchip,rk3066-i2s";
 		reg = <0x0 0xff070000 0x0 0x1000>;
-- 
2.37.3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
