Return-Path: <SRS0=NEY9=IW=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7C7BC433C1
	for <linux-rockchip@archiver.kernel.org>; Wed, 24 Mar 2021 12:24:45 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 2A43D61A06
	for <linux-rockchip@archiver.kernel.org>; Wed, 24 Mar 2021 12:24:45 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 2A43D61A06
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=1Dy7ebziqdnI2PJsMbVOCw1qL/1QQgPdH1ztwsTruxA=; b=ainPHDAEsFctgPeHqLOYrS/Hf
	rjiDzc3m3UFam6Is08G/u/H6BcuOwdgXbjOCeSlS9URhRJ4oonIL44tjwoJ8UcNRQej6vCb+mXxN6
	ND4EuMSbUzYiXfYO/YAOCvZWRDlgaDV200qxxczcZdd+V8Sr2UDdFWvvD/VqDVQ6VW6HQLXXTY4gE
	xpG4SAz1Zyyr5uJQAOqdtSnspkr74G/bZrsU+kQzTnutmvrmrsjpEADRGeTAh5BvuNcqk4e7cJ8YO
	vKUVqMpJGMz47b87/6LuVv2rxm4fj278X4TJFm9q1RmO8Qnv+f3FClLxhcv5yN9cIkuN1WlpPQsAC
	8osqBiK5A==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lP2Yv-00H3ww-Ce; Wed, 24 Mar 2021 12:24:37 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lP2X3-00H3Ag-Kn; Wed, 24 Mar 2021 12:22:46 +0000
Received: from [95.90.166.74] (helo=phil.lan)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1lP2X2-00009P-ND; Wed, 24 Mar 2021 13:22:40 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: heiko@sntech.de
Cc: jagan@amarulasolutions.com, jbx6244@gmail.com, robin.murphy@arm.com,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, arnd@kernel.org,
 Heiko Stuebner <heiko.stuebner@theobroma-systems.com>
Subject: [PATCH 7/7] arm64: dts: rockchip: move mmc aliases to board dts on
 rk3399
Date: Wed, 24 Mar 2021 13:22:35 +0100
Message-Id: <20210324122235.1059292-7-heiko@sntech.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210324122235.1059292-1-heiko@sntech.de>
References: <20210324122235.1059292-1-heiko@sntech.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210324_122242_229382_EB47CFD1 
X-CRM114-Status: GOOD (  13.84  )
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

From: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>

As suggested by Arnd Bergmann, the newly added mmc aliases
should be board specific, so move them from the general dtsi
to the individual boards.

Suggested-by: Arnd Bergmann <arnd@kernel.org>
Signed-off-by: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>
---
 arch/arm64/boot/dts/rockchip/rk3399-evb.dts                | 4 ++++
 arch/arm64/boot/dts/rockchip/rk3399-firefly.dts            | 6 ++++++
 arch/arm64/boot/dts/rockchip/rk3399-gru.dtsi               | 5 +++++
 arch/arm64/boot/dts/rockchip/rk3399-hugsun-x99.dts         | 6 ++++++
 arch/arm64/boot/dts/rockchip/rk3399-khadas-edge.dtsi       | 6 ++++++
 arch/arm64/boot/dts/rockchip/rk3399-kobol-helios64.dts     | 5 +++++
 arch/arm64/boot/dts/rockchip/rk3399-leez-p710.dts          | 6 ++++++
 arch/arm64/boot/dts/rockchip/rk3399-nanopi4.dtsi           | 6 ++++++
 arch/arm64/boot/dts/rockchip/rk3399-orangepi.dts           | 6 ++++++
 arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts       | 6 ++++++
 arch/arm64/boot/dts/rockchip/rk3399-puma-haikou.dts        | 4 ++++
 arch/arm64/boot/dts/rockchip/rk3399-puma.dtsi              | 4 ++++
 arch/arm64/boot/dts/rockchip/rk3399-roc-pc-mezzanine.dts   | 4 ++++
 arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi            | 5 +++++
 arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dtsi         | 5 +++++
 arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4b.dts         | 4 ++++
 arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4c.dts         | 4 ++++
 arch/arm64/boot/dts/rockchip/rk3399-rock960.dtsi           | 6 ++++++
 arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi         | 6 ++++++
 arch/arm64/boot/dts/rockchip/rk3399-sapphire-excavator.dts | 4 ++++
 arch/arm64/boot/dts/rockchip/rk3399-sapphire.dtsi          | 5 +++++
 arch/arm64/boot/dts/rockchip/rk3399.dtsi                   | 3 ---
 arch/arm64/boot/dts/rockchip/rk3399pro-vmarc-som.dtsi      | 5 +++++
 23 files changed, 112 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-evb.dts b/arch/arm64/boot/dts/rockchip/rk3399-evb.dts
index 694b0d08d644..7b717ebec8ff 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-evb.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-evb.dts
@@ -11,6 +11,10 @@ / {
 	model = "Rockchip RK3399 Evaluation Board";
 	compatible = "rockchip,rk3399-evb", "rockchip,rk3399";
 
+	aliases {
+		mmc0 = &sdhci;
+	};
+
 	backlight: backlight {
 		compatible = "pwm-backlight";
 		brightness-levels = <
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-firefly.dts b/arch/arm64/boot/dts/rockchip/rk3399-firefly.dts
index 6db18808b9c5..45254be1350d 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-firefly.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-firefly.dts
@@ -13,6 +13,12 @@ / {
 	model = "Firefly-RK3399 Board";
 	compatible = "firefly,firefly-rk3399", "rockchip,rk3399";
 
+	aliases {
+		mmc0 = &sdio0;
+		mmc1 = &sdmmc;
+		mmc2 = &sdhci;
+	};
+
 	chosen {
 		stdout-path = "serial2:1500000n8";
 	};
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-gru.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-gru.dtsi
index 32dcaf210085..4002742fed4c 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-gru.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-gru.dtsi
@@ -10,6 +10,11 @@
 #include "rk3399-op1-opp.dtsi"
 
 / {
+	aliases {
+		mmc0 = &sdmmc;
+		mmc1 = &sdhci;
+	};
+
 	chosen {
 		stdout-path = "serial2:115200n8";
 	};
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-hugsun-x99.dts b/arch/arm64/boot/dts/rockchip/rk3399-hugsun-x99.dts
index 341d074ed996..bee45c17e2ca 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-hugsun-x99.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-hugsun-x99.dts
@@ -9,6 +9,12 @@ / {
 	model = "Hugsun X99 TV BOX";
 	compatible = "hugsun,x99", "rockchip,rk3399";
 
+	aliases {
+		mmc0 = &sdio0;
+		mmc1 = &sdmmc;
+		mmc2 = &sdhci;
+	};
+
 	chosen {
 		stdout-path = "serial2:1500000n8";
 	};
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-khadas-edge.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-khadas-edge.dtsi
index 635afdd99122..d5c7648c841d 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-khadas-edge.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-khadas-edge.dtsi
@@ -11,6 +11,12 @@
 #include "rk3399-opp.dtsi"
 
 / {
+	aliases {
+		mmc0 = &sdio0;
+		mmc1 = &sdmmc;
+		mmc2 = &sdhci;
+	};
+
 	chosen {
 		stdout-path = "serial2:1500000n8";
 	};
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-kobol-helios64.dts b/arch/arm64/boot/dts/rockchip/rk3399-kobol-helios64.dts
index 66c725a34220..19485b552bc4 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-kobol-helios64.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-kobol-helios64.dts
@@ -18,6 +18,11 @@ / {
 	model = "Kobol Helios64";
 	compatible = "kobol,helios64", "rockchip,rk3399";
 
+	aliases {
+		mmc0 = &sdmmc;
+		mmc1 = &sdhci;
+	};
+
 	avdd_1v8_s0: avdd-1v8-s0 {
 		compatible = "regulator-fixed";
 		regulator-name = "avdd_1v8_s0";
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-leez-p710.dts b/arch/arm64/boot/dts/rockchip/rk3399-leez-p710.dts
index 1fa80ac15464..7c93f840bc64 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-leez-p710.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-leez-p710.dts
@@ -13,6 +13,12 @@ / {
 	model = "Leez RK3399 P710";
 	compatible = "leez,p710", "rockchip,rk3399";
 
+	aliases {
+		mmc0 = &sdio0;
+		mmc1 = &sdmmc;
+		mmc2 = &sdhci;
+	};
+
 	chosen {
 		stdout-path = "serial2:1500000n8";
 	};
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-nanopi4.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-nanopi4.dtsi
index 48ed4aaa37f3..16fd58c4a80f 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-nanopi4.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-nanopi4.dtsi
@@ -17,6 +17,12 @@
 #include "rk3399-opp.dtsi"
 
 / {
+	aliases {
+		mmc0 = &sdio0;
+		mmc1 = &sdmmc;
+		mmc2 = &sdhci;
+	};
+
 	chosen {
 		stdout-path = "serial2:1500000n8";
 	};
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-orangepi.dts b/arch/arm64/boot/dts/rockchip/rk3399-orangepi.dts
index ad7c4d00888f..04b54abea3cc 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-orangepi.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-orangepi.dts
@@ -15,6 +15,12 @@ / {
 	model = "Orange Pi RK3399 Board";
 	compatible = "rockchip,rk3399-orangepi", "rockchip,rk3399";
 
+	aliases {
+		mmc0 = &sdio0;
+		mmc1 = &sdmmc;
+		mmc2 = &sdhci;
+	};
+
 	chosen {
 		stdout-path = "serial2:1500000n8";
 	};
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts b/arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts
index 219b7507a10f..2b5f001ff4a6 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts
@@ -18,6 +18,12 @@ / {
 	model = "Pine64 Pinebook Pro";
 	compatible = "pine64,pinebook-pro", "rockchip,rk3399";
 
+	aliases {
+		mmc0 = &sdio0;
+		mmc1 = &sdmmc;
+		mmc2 = &sdhci;
+	};
+
 	chosen {
 		stdout-path = "serial2:1500000n8";
 	};
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-puma-haikou.dts b/arch/arm64/boot/dts/rockchip/rk3399-puma-haikou.dts
index 42a488b74e0e..545de88d756f 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-puma-haikou.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-puma-haikou.dts
@@ -10,6 +10,10 @@ / {
 	model = "Theobroma Systems RK3399-Q7 SoM";
 	compatible = "tsd,rk3399-puma-haikou", "rockchip,rk3399";
 
+	aliases {
+		mmc1 = &sdmmc;
+	};
+
 	chosen {
 		stdout-path = "serial0:115200n8";
 	};
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-puma.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-puma.dtsi
index 6aad90e23141..c635b01e67df 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-puma.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-puma.dtsi
@@ -8,6 +8,10 @@
 #include "rk3399-opp.dtsi"
 
 / {
+	aliases {
+		mmc0 = &sdhci;
+	};
+
 	leds {
 		compatible = "gpio-leds";
 		pinctrl-names = "default";
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-roc-pc-mezzanine.dts b/arch/arm64/boot/dts/rockchip/rk3399-roc-pc-mezzanine.dts
index 754627d97144..9447c8724b65 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-roc-pc-mezzanine.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-roc-pc-mezzanine.dts
@@ -11,6 +11,10 @@ / {
 	model = "Firefly ROC-RK3399-PC Mezzanine Board";
 	compatible = "firefly,roc-rk3399-pc-mezzanine", "rockchip,rk3399";
 
+	aliases {
+		mmc2 = &sdio0;
+	};
+
 	/* MP8009 PoE PD */
 	poe_12v: poe-12v {
 		compatible = "regulator-fixed";
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi
index 20309076dbac..c172f5a803e7 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi
@@ -13,6 +13,11 @@ / {
 	model = "Firefly ROC-RK3399-PC Board";
 	compatible = "firefly,roc-rk3399-pc", "rockchip,rk3399";
 
+	aliases {
+		mmc0 = &sdmmc;
+		mmc1 = &sdhci;
+	};
+
 	chosen {
 		stdout-path = "serial2:1500000n8";
 	};
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dtsi
index fb7599f07af4..7d0a7c697703 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dtsi
@@ -11,6 +11,11 @@
 #include "rk3399-opp.dtsi"
 
 / {
+	aliases {
+		mmc0 = &sdmmc;
+		mmc1 = &sdhci;
+	};
+
 	chosen {
 		stdout-path = "serial2:1500000n8";
 	};
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4b.dts b/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4b.dts
index f0055ce2fda0..6c63e617063c 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4b.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4b.dts
@@ -10,6 +10,10 @@
 / {
 	model = "Radxa ROCK Pi 4B";
 	compatible = "radxa,rockpi4b", "radxa,rockpi4", "rockchip,rk3399";
+
+	aliases {
+		mmc2 = &sdio0;
+	};
 };
 
 &sdio0 {
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4c.dts b/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4c.dts
index 4c7ebb1c5d2d..99169bcd51c0 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4c.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4c.dts
@@ -11,6 +11,10 @@
 / {
 	model = "Radxa ROCK Pi 4C";
 	compatible = "radxa,rockpi4c", "radxa,rockpi4", "rockchip,rk3399";
+
+	aliases {
+		mmc2 = &sdio0;
+	};
 };
 
 &sdio0 {
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rock960.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-rock960.dtsi
index 5e3ac589bc54..25dc61c26a94 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-rock960.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-rock960.dtsi
@@ -9,6 +9,12 @@
 #include "rk3399-opp.dtsi"
 
 / {
+	aliases {
+		mmc0 = &sdio0;
+		mmc1 = &sdmmc;
+		mmc2 = &sdhci;
+	};
+
 	sdio_pwrseq: sdio-pwrseq {
 		compatible = "mmc-pwrseq-simple";
 		clocks = <&rk808 1>;
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi
index d42c75c6dcbd..6bff8db7d33e 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi
@@ -10,6 +10,12 @@
 #include "rk3399-opp.dtsi"
 
 / {
+	aliases {
+		mmc0 = &sdio0;
+		mmc1 = &sdmmc;
+		mmc2 = &sdhci;
+	};
+
 	chosen {
 		stdout-path = "serial2:1500000n8";
 	};
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-sapphire-excavator.dts b/arch/arm64/boot/dts/rockchip/rk3399-sapphire-excavator.dts
index 73e269a8ae0c..f6b2199a42bd 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-sapphire-excavator.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-sapphire-excavator.dts
@@ -10,6 +10,10 @@ / {
 	model = "Excavator-RK3399 Board";
 	compatible = "rockchip,rk3399-sapphire-excavator", "rockchip,rk3399";
 
+	aliases {
+		mmc2 = &sdio0;
+	};
+
 	adc-keys {
 		compatible = "adc-keys";
 		io-channels = <&saradc 1>;
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-sapphire.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-sapphire.dtsi
index 701a567d7638..46b0f97a0b1c 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-sapphire.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-sapphire.dtsi
@@ -11,6 +11,11 @@
 / {
 	compatible = "rockchip,rk3399-sapphire", "rockchip,rk3399";
 
+	aliases {
+		mmc0 = &sdmmc;
+		mmc1 = &sdhci;
+	};
+
 	chosen {
 		stdout-path = "serial2:1500000n8";
 	};
diff --git a/arch/arm64/boot/dts/rockchip/rk3399.dtsi b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
index 98cec9387300..d620a683bff3 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
@@ -29,9 +29,6 @@ aliases {
 		i2c6 = &i2c6;
 		i2c7 = &i2c7;
 		i2c8 = &i2c8;
-		mmc0 = &sdio0;
-		mmc1 = &sdmmc;
-		mmc2 = &sdhci;
 		serial0 = &uart0;
 		serial1 = &uart1;
 		serial2 = &uart2;
diff --git a/arch/arm64/boot/dts/rockchip/rk3399pro-vmarc-som.dtsi b/arch/arm64/boot/dts/rockchip/rk3399pro-vmarc-som.dtsi
index 7257494d2831..c0074b3ed4af 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399pro-vmarc-som.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399pro-vmarc-som.dtsi
@@ -12,6 +12,11 @@
 / {
 	compatible = "vamrs,rk3399pro-vmarc-som", "rockchip,rk3399pro";
 
+	aliases {
+		mmc0 = &sdmmc;
+		mmc1 = &sdhci;
+	};
+
 	vcc3v3_pcie: vcc-pcie-regulator {
 		compatible = "regulator-fixed";
 		enable-active-high;
-- 
2.29.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
