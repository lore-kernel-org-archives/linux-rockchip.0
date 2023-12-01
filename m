Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0BAFBC07E97
	for <linux-rockchip@archiver.kernel.org>; Fri,  1 Dec 2023 16:58:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hmASKuNZR+nUkj97GXK0G46HwESfbHaB71pZVU4LlN4=; b=r7m/Pe5BVsAUYz
	kDv+nc/9CmYgWIo+4SxdYlJwr7ppg92xbf6ThjaL4dukSmruOQ6mcYRxf9+4ruYI8IreaRwEcR+P2
	wZKBDZRwfUE1uyeOE5wSSmGwYUp7TkEPbftF8UNpkBjdzyOP4mI6mFBQOhvsznq9Kz2XmOnBNajQq
	9ahDD0ucJXJLq4mcku8b0qnFyurf4tW94MzWayy/kAsEeyMFrEi8Kw/i2sYZ9zdL2AtHh8Lv8Uge6
	nGe5nKGlBA0G/3Um3FxPF6OoXYzKyb/5LDq86PunK278UjLE9sgw9dgt7T229t5gewqx6Ep3exISM
	CJWX/aMthlBWQw7MnSxQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r96qJ-00EGQs-0Y;
	Fri, 01 Dec 2023 16:58:19 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r96qF-00EGO9-2w;
	Fri, 01 Dec 2023 16:58:17 +0000
Received: from i53875b61.versanet.de ([83.135.91.97] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1r96qC-0001Os-R9; Fri, 01 Dec 2023 17:58:12 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org
Cc: linux-arm-kernel@lists.infradead.org,
	quentin.schulz@theobroma-systems.com,
	heiko@sntech.de,
	Heiko Stuebner <heiko.stuebner@cherry.de>
Subject: [PATCH 1/4] arm64: dts: rockchip: move rk3588 serial aliases to soc dtsi
Date: Fri,  1 Dec 2023 17:58:07 +0100
Message-Id: <20231201165810.334212-2-heiko@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231201165810.334212-1-heiko@sntech.de>
References: <20231201165810.334212-1-heiko@sntech.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231201_085815_964427_EACB870C 
X-CRM114-Status: GOOD (  14.01  )
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

From: Heiko Stuebner <heiko.stuebner@cherry.de>

The serial ports on rk3588 are named uart0 - uart9. Board schematics
also use these exact numbers and we want those names to also reflect
in the OS devices because everything else would just cause confusion.

So instead of having each board repeating their list of serial aliases
move them to the soc dtsi, as all previous Rockchip soc do already.

Signed-off-by: Heiko Stuebner <heiko.stuebner@cherry.de>
---
 .../boot/dts/rockchip/rk3588-edgeble-neu6a-io.dts   |  4 ----
 .../boot/dts/rockchip/rk3588-edgeble-neu6b-io.dts   |  4 ----
 arch/arm64/boot/dts/rockchip/rk3588-evb1-v10.dts    |  1 -
 arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dts   |  1 -
 .../boot/dts/rockchip/rk3588-orangepi-5-plus.dts    |  1 -
 arch/arm64/boot/dts/rockchip/rk3588-quartzpro64.dts |  1 -
 arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts     |  1 -
 arch/arm64/boot/dts/rockchip/rk3588-turing-rk1.dtsi |  2 --
 .../boot/dts/rockchip/rk3588s-indiedroid-nova.dts   |  1 -
 .../boot/dts/rockchip/rk3588s-khadas-edge2.dts      |  1 -
 arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5.dts |  1 -
 arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts    |  1 -
 arch/arm64/boot/dts/rockchip/rk3588s.dtsi           | 13 +++++++++++++
 13 files changed, 13 insertions(+), 19 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6a-io.dts b/arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6a-io.dts
index b51543892078..be6a4f4f90f6 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6a-io.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6a-io.dts
@@ -12,10 +12,6 @@ / {
 	compatible = "edgeble,neural-compute-module-6a-io",
 		     "edgeble,neural-compute-module-6a", "rockchip,rk3588";
 
-	aliases {
-		serial2 = &uart2;
-	};
-
 	chosen {
 		stdout-path = "serial2:1500000n8";
 	};
diff --git a/arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6b-io.dts b/arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6b-io.dts
index 9933765e4097..96a18077f26f 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6b-io.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6b-io.dts
@@ -12,10 +12,6 @@ / {
 	compatible = "edgeble,neural-compute-module-6b-io",
 		     "edgeble,neural-compute-module-6b", "rockchip,rk3588";
 
-	aliases {
-		serial2 = &uart2;
-	};
-
 	chosen {
 		stdout-path = "serial2:1500000n8";
 	};
diff --git a/arch/arm64/boot/dts/rockchip/rk3588-evb1-v10.dts b/arch/arm64/boot/dts/rockchip/rk3588-evb1-v10.dts
index b9d789d57862..a36d4fcd9b1d 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-evb1-v10.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-evb1-v10.dts
@@ -17,7 +17,6 @@ / {
 
 	aliases {
 		mmc0 = &sdhci;
-		serial2 = &uart2;
 	};
 
 	chosen {
diff --git a/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dts b/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dts
index 97af4f912828..612107615e66 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dts
@@ -19,7 +19,6 @@ / {
 	aliases {
 		mmc0 = &sdhci;
 		mmc1 = &sdmmc;
-		serial2 = &uart2;
 	};
 
 	chosen {
diff --git a/arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-plus.dts b/arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-plus.dts
index 298c183d6f4f..3e660ff6cd5f 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-plus.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-plus.dts
@@ -19,7 +19,6 @@ / {
 	aliases {
 		mmc0 = &sdhci;
 		mmc1 = &sdmmc;
-		serial2 = &uart2;
 	};
 
 	chosen {
diff --git a/arch/arm64/boot/dts/rockchip/rk3588-quartzpro64.dts b/arch/arm64/boot/dts/rockchip/rk3588-quartzpro64.dts
index 5c59f9571dce..c7cd57609bc2 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-quartzpro64.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-quartzpro64.dts
@@ -19,7 +19,6 @@ / {
 	aliases {
 		mmc0 = &sdhci;
 		mmc1 = &sdmmc;
-		serial2 = &uart2;
 	};
 
 	chosen {
diff --git a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
index 741f631db345..e302eeb6ce5a 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
@@ -14,7 +14,6 @@ aliases {
 		mmc0 = &sdhci;
 		mmc1 = &sdmmc;
 		mmc2 = &sdio;
-		serial2 = &uart2;
 	};
 
 	chosen {
diff --git a/arch/arm64/boot/dts/rockchip/rk3588-turing-rk1.dtsi b/arch/arm64/boot/dts/rockchip/rk3588-turing-rk1.dtsi
index 9570b34aca2e..25a0ca73a8f7 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-turing-rk1.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588-turing-rk1.dtsi
@@ -19,8 +19,6 @@ / {
 	aliases {
 		ethernet0 = &gmac1;
 		mmc0 = &sdhci;
-		serial2 = &uart2;
-		serial9 = &uart9;
 	};
 
 	fan: pwm-fan {
diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts b/arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts
index 60f00ceb630e..dc677f29a9c7 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts
@@ -44,7 +44,6 @@ aliases {
 		mmc0 = &sdhci;
 		mmc1 = &sdmmc;
 		mmc2 = &sdio;
-		serial2 = &uart2;
 	};
 
 	chosen {
diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-khadas-edge2.dts b/arch/arm64/boot/dts/rockchip/rk3588s-khadas-edge2.dts
index 82478a452533..f53e993c785e 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-khadas-edge2.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-khadas-edge2.dts
@@ -12,7 +12,6 @@ / {
 
 	aliases {
 		mmc0 = &sdhci;
-		serial2 = &uart2;
 	};
 
 	chosen {
diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5.dts b/arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5.dts
index 8f399c4317bd..52ec9cb38f57 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5.dts
@@ -14,7 +14,6 @@ / {
 
 	aliases {
 		mmc0 = &sdmmc;
-		serial2 = &uart2;
 	};
 
 	chosen {
diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
index 8347adcbd003..73cf97062a09 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
@@ -14,7 +14,6 @@ / {
 	aliases {
 		mmc0 = &sdhci;
 		mmc1 = &sdmmc;
-		serial2 = &uart2;
 	};
 
 	analog-sound {
diff --git a/arch/arm64/boot/dts/rockchip/rk3588s.dtsi b/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
index 8aa0499f9b03..d854536a44b8 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
@@ -18,6 +18,19 @@ / {
 	#address-cells = <2>;
 	#size-cells = <2>;
 
+	aliases {
+		serial0 = &uart0;
+		serial1 = &uart1;
+		serial2 = &uart2;
+		serial3 = &uart3;
+		serial4 = &uart4;
+		serial5 = &uart5;
+		serial6 = &uart6;
+		serial7 = &uart7;
+		serial8 = &uart8;
+		serial9 = &uart9;
+	};
+
 	cpus {
 		#address-cells = <1>;
 		#size-cells = <0>;
-- 
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
