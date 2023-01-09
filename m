Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CF9CCC54EBD
	for <linux-rockchip@archiver.kernel.org>; Mon,  9 Jan 2023 20:34:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=2kMYiE6TM2SbY9O5Iel5xGnkdPbPTGGPJl4r+HVdEvU=; b=w8KHHHguUkO22Q
	XykIsTTKfZ2dOzNaQ7sDFxcbyXHhXFC17G8gNZKumJH3MGhJJzY77L6Nrq5SfDba3BXmi797/OMFC
	zPvV3iFaWkdS3c1FBTxAtIGOZLyongNFm2J9ja3j/Q0tGdd/YnQ3sNsrRhoI5BsElZ1u/Di6gAmvr
	lOx6iDzLCeOLXkwKPscltjuDScLr2AfBbpkyVHeOmwQWP0dwqKljK5QvuqrHCt34CHh5LkvVvWQKJ
	hUZp5z9/cbgNKH/I5tYMQeGBghcrPwIJtnNN1YLk+K/ZpjBP8KsuWZvop1ioWTdLHuItX7pmmUOCg
	M0ImP2avOTACcEV+iJVg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pEyq7-003v1Q-FZ; Mon, 09 Jan 2023 20:33:51 +0000
Received: from mail.manjaro.org ([116.203.91.91])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pEypq-003umI-GY; Mon, 09 Jan 2023 20:33:38 +0000
From: Furkan Kardame <f.kardame@manjaro.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1673296405;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=uCiIFW9X9S8QH+XXjcYHqmwtdnxIZDOXae5WYVYtdTI=;
	b=VfoA0GhnbTNVILYBTeYpuM3tsPmwPk5BAKHDfFQmMjMomyJ8cO+Zdbbru0msJ4rn9KvSLR
	4gD7o0kA/VUw3lDnKByNtQJ9/oD0gsxT++xMdCbx7KNVkSIG0JqZbMFGzZ2LNus635B2pc
	ok/mne7GuDy/bTU6bo+QuzgsrU0UFzUhaWg1Y+hpaDo7mq3h7oQziIjEAkmqYBVM6DMTmw
	YsBlWrZpppAfrcJXCYwwkND5vmoWhTqzoWsniJArTSBNnoUyEiUQ8rRS+bzZC3C71E9VRX
	389TEkN8YGphLuDbt/I7JONAsNOS3Y7+LAaHACHws0KnjNhQrbw5UoobCiHESQ==
To: pgwipeout@gmail.com
Cc: heiko@sntech.de,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	Furkan Kardame <f.kardame@manjaro.org>
Subject: [PATCH] arm64: dts: rockchip: add rk3566 audio nodes
Date: Mon,  9 Jan 2023 23:32:33 +0300
Message-Id: <20230109203232.45192-1-f.kardame@manjaro.org>
MIME-Version: 1.0
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=f.kardame@manjaro.org smtp.mailfrom=f.kardame@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230109_123335_222962_ABB06A80 
X-CRM114-Status: UNSURE (   9.16  )
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

This patch adds simple audio card nodes
Enabled i2s0_8ch as it is needed for hdmi audio
Added i2s1_8ch as it is needed for 3.5mm audio jack

Signed-off-by: Furkan Kardame <f.kardame@manjaro.org>
---
 .../arm64/boot/dts/rockchip/rk3566-roc-pc.dts | 60 ++++++++++++++++++-
 1 file changed, 58 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3566-roc-pc.dts b/arch/arm64/boot/dts/rockchip/rk3566-roc-pc.dts
index 61c7a3ad7..793d07f0c 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-roc-pc.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3566-roc-pc.dts
@@ -39,6 +39,28 @@ hdmi_con_in: endpoint {
 		};
 	};
 
+	i2s1_8ch: i2s@fe410000 {
+		compatible = "rockchip,rk3568-i2s-tdm";
+		reg = <0x0 0xfe410000 0x0 0x1000>;
+		interrupts = <GIC_SPI 53 IRQ_TYPE_LEVEL_HIGH>;
+		assigned-clocks = <&cru CLK_I2S1_8CH_TX_SRC>, <&cru CLK_I2S1_8CH_RX_SRC>;
+		assigned-clock-rates = <1188000000>, <1188000000>;
+		clocks = <&cru MCLK_I2S1_8CH_TX>, <&cru MCLK_I2S1_8CH_RX>,
+			 <&cru HCLK_I2S1_8CH>;
+		clock-names = "mclk_tx", "mclk_rx", "hclk";
+		dmas = <&dmac1 3>, <&dmac1 2>;
+		dma-names = "rx", "tx";
+		resets = <&cru SRST_M_I2S1_8CH_TX>, <&cru SRST_M_I2S1_8CH_RX>;
+		reset-names = "tx-m", "rx-m";
+		rockchip,grf = <&grf>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&i2s1m0_sclktx &i2s1m0_sclkrx
+			     &i2s1m0_lrcktx &i2s1m0_lrckrx
+			     &i2s1m0_sdi0   &i2s1m0_sdo0>;
+		#sound-dai-cells = <0>;
+		status = "disabled";
+	};
+
 	leds {
 		compatible = "gpio-leds";
 
@@ -53,6 +75,22 @@ led-user {
 		};
 	};
 
+	rk809-sound {
+		compatible = "simple-audio-card";
+		simple-audio-card,format = "i2s";
+		simple-audio-card,name = "STATION-M2-FRONT";
+		simple-audio-card,mclk-fs = <256>;
+		status = "okay";
+
+		simple-audio-card,cpu {
+			sound-dai = <&i2s1_8ch>;
+		};
+
+		simple-audio-card,codec {
+			sound-dai = <&rk809>;
+		};
+	};
+
 	sdio_pwrseq: sdio-pwrseq {
 		status = "okay";
 		compatible = "mmc-pwrseq-simple";
@@ -226,9 +264,13 @@ rk809: pmic@20 {
 		interrupt-parent = <&gpio0>;
 		interrupts = <RK_PA7 IRQ_TYPE_LEVEL_LOW>;
 		clock-output-names = "rk808-clkout1", "rk808-clkout2";
-
+		assigned-clocks = <&cru I2S1_MCLKOUT_TX>;
+		assigned-clock-parents = <&cru CLK_I2S1_8CH_TX>;
+		clock-names = "mclk";
+		clocks = <&cru I2S1_MCLKOUT_TX>;
+		pinctrl-0 = <&pmic_int>, <&i2s1m0_mclk>;
+		#sound-dai-cells = <0>;
 		pinctrl-names = "default";
-		pinctrl-0 = <&pmic_int>;
 		rockchip,system-power-controller;
 		wakeup-source;
 		#clock-cells = <1>;
@@ -435,6 +477,11 @@ vcc3v3_sd: SWITCH_REG2 {
 				regulator-boot-on;
 			};
 		};
+
+		codec {
+			mic-in-differential;
+		};
+
 	};
 };
 
@@ -452,6 +499,15 @@ &i2c3 {
 	status = "okay";
 };
 
+&i2s0_8ch {
+	status = "okay";
+};
+
+&i2s1_8ch {
+	rockchip,trcm-sync-tx-only;
+	status = "okay";
+};
+
 &mdio1 {
 	rgmii_phy1: ethernet-phy@0 {
 		compatible = "ethernet-phy-ieee802.3-c22";
-- 
2.39.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
