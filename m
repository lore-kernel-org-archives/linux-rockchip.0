Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8FD96CF8573
	for <linux-rockchip@archiver.kernel.org>; Thu,  3 Oct 2024 09:55:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bYiXkKHxD4LvD72vziCIJyOp5RJqVIuA0XN7IpxN5tg=; b=sIWoCumbOyQwLk
	qnTJ5HNQHWxBgF6FxXGoC8TFJMCAMZkx8itNAXm/RVx9VeKNZ0RveLzgVvNIsZuDG0ckgD44ah4yO
	ogYBfvf4GPlz0IC1E8tx0zeKNphrhLygV6T0CyuNr1uxsOvpTRDu/xuxq6/eagp7mwW1HiLoEYIy/
	MmvALe66czj8/CRvXWdOe6H6WUBGShYa8piwLoLxWIwZ1YYcOMJ2mvxxeTwTeR5kV7nN9V+FRd/Ru
	KnT4IXZJiWtCP2BU1NHWwXF7ikZcCpB4Baw7GzKLrS2TY0QoHeCT6dMpCnPtDy58qWXseCEG7KdA/
	ulDtF279qwzt0yeH6oLg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1swIYH-00000008j5Z-3pE2;
	Thu, 03 Oct 2024 09:55:17 +0000
Received: from out-189.mta0.migadu.com ([91.218.175.189])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1swITT-00000008i65-2CQL
	for linux-rockchip@lists.infradead.org;
	Thu, 03 Oct 2024 09:50:21 +0000
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow.org; s=key1;
	t=1727949017;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=crP7QBj1eIxrhK4AYKdqfhxHntrdN+1O9B9c04iM0Vo=;
	b=WkdwyckemiTzNV7KW0DZo05f5r7PnAe8FycHSYUur5JbpnSz94kQRp04ZOwLLJeZVJV4dI
	wJCNPie8Nk//HO3FKzM0Iy8MMIWNak3GVYmMBrL1Cl7G1rnlwa10JqOEVpsn1HJ4qjOH05
	8BAgU5yZj1BrWa2mO5M6HAJbfQss+dXELF8bVKv+N/l1fJ3Za2PTeQrxDbNN3NCYg58f0d
	SZuTXm3NiW2SFglHmTF+3KzZTrDliQQ1LBlLIJ4/S3xIYed8xzwRvwvJb48PUAsT96L7U+
	zfEeWpVTuX+EoG7Fcw1EDerMN1kpBh9yGjRmNGfZDpvSyWfoietnE16HsgEDjg==
From: Diederik de Haas <didi.debian@cknow.org>
To: Heiko Stuebner <heiko@sntech.de>,
	linux-rockchip@lists.infradead.org
Cc: linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Diederik de Haas <didi.debian@cknow.org>
Subject: [PATCH 4/5] arm64: dts: rockchip: rk3399: Drop rockchip prefix from s-p-c PMIC property
Date: Thu,  3 Oct 2024 11:43:28 +0200
Message-ID: <20241003094927.62042-5-didi.debian@cknow.org>
In-Reply-To: <20241003094927.62042-1-didi.debian@cknow.org>
References: <20241003094927.62042-1-didi.debian@cknow.org>
MIME-Version: 1.0
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241003_025019_762804_06CD471D 
X-CRM114-Status: UNSURE (   8.34  )
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

961748bb1555 ("dt-bindings: mfd: rk8xx: Deprecate rockchip,system-power-controller")
made "rockchip,system-power-controller" deprecated in favor of (just)
"system-power-controller".
Update the rk3399 DT files which still used the deprecated variant.

Signed-off-by: Diederik de Haas <didi.debian@cknow.org>
---
 arch/arm64/boot/dts/rockchip/rk3399-eaidk-610.dts      | 2 +-
 arch/arm64/boot/dts/rockchip/rk3399-evb.dts            | 2 +-
 arch/arm64/boot/dts/rockchip/rk3399-firefly.dts        | 2 +-
 arch/arm64/boot/dts/rockchip/rk3399-hugsun-x99.dts     | 2 +-
 arch/arm64/boot/dts/rockchip/rk3399-khadas-edge.dtsi   | 2 +-
 arch/arm64/boot/dts/rockchip/rk3399-kobol-helios64.dts | 2 +-
 arch/arm64/boot/dts/rockchip/rk3399-leez-p710.dts      | 2 +-
 arch/arm64/boot/dts/rockchip/rk3399-nanopi4.dtsi       | 2 +-
 arch/arm64/boot/dts/rockchip/rk3399-orangepi.dts       | 2 +-
 arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts   | 2 +-
 arch/arm64/boot/dts/rockchip/rk3399-pinephone-pro.dts  | 2 +-
 arch/arm64/boot/dts/rockchip/rk3399-puma.dtsi          | 2 +-
 arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi        | 2 +-
 arch/arm64/boot/dts/rockchip/rk3399-rock-4c-plus.dts   | 2 +-
 arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dtsi     | 2 +-
 arch/arm64/boot/dts/rockchip/rk3399-rock960.dtsi       | 2 +-
 arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi     | 2 +-
 arch/arm64/boot/dts/rockchip/rk3399-sapphire.dtsi      | 2 +-
 arch/arm64/boot/dts/rockchip/rk3399pro-vmarc-som.dtsi  | 2 +-
 19 files changed, 19 insertions(+), 19 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-eaidk-610.dts b/arch/arm64/boot/dts/rockchip/rk3399-eaidk-610.dts
index 1489eb32e266..040845570a6d 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-eaidk-610.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-eaidk-610.dts
@@ -309,7 +309,7 @@ rk808: pmic@1b {
 		interrupts = <21 IRQ_TYPE_LEVEL_LOW>;
 		pinctrl-names = "default";
 		pinctrl-0 = <&pmic_int_l>;
-		rockchip,system-power-controller;
+		system-power-controller;
 		wakeup-source;
 		#clock-cells = <1>;
 		clock-output-names = "xin32k", "rk808-clkout2";
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-evb.dts b/arch/arm64/boot/dts/rockchip/rk3399-evb.dts
index 54e67d2dac09..ef29dc0c3caf 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-evb.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-evb.dts
@@ -178,7 +178,7 @@ rk808: pmic@1b {
 		interrupts = <21 IRQ_TYPE_LEVEL_LOW>;
 		pinctrl-names = "default";
 		pinctrl-0 = <&pmic_int_l>;
-		rockchip,system-power-controller;
+		system-power-controller;
 		wakeup-source;
 		#clock-cells = <1>;
 		clock-output-names = "rk808-clkout1", "rk808-clkout2";
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-firefly.dts b/arch/arm64/boot/dts/rockchip/rk3399-firefly.dts
index f4491317a1b0..e7d6c8e34210 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-firefly.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-firefly.dts
@@ -326,7 +326,7 @@ rk808: pmic@1b {
 		clock-output-names = "xin32k", "rk808-clkout2";
 		pinctrl-names = "default";
 		pinctrl-0 = <&pmic_int_l>;
-		rockchip,system-power-controller;
+		system-power-controller;
 		wakeup-source;
 
 		vcc1-supply = <&vcc_sys>;
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-hugsun-x99.dts b/arch/arm64/boot/dts/rockchip/rk3399-hugsun-x99.dts
index 5a02502d21cd..ed0301ff642c 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-hugsun-x99.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-hugsun-x99.dts
@@ -252,7 +252,7 @@ rk808: pmic@1b {
 		interrupts = <21 IRQ_TYPE_LEVEL_LOW>;
 		pinctrl-names = "default";
 		pinctrl-0 = <&pmic_int_l>;
-		rockchip,system-power-controller;
+		system-power-controller;
 		wakeup-source;
 		#clock-cells = <1>;
 		clock-output-names = "xin32k", "rtc_clko_wifi";
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-khadas-edge.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-khadas-edge.dtsi
index c772985ae4e5..00e399d6dabd 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-khadas-edge.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-khadas-edge.dtsi
@@ -315,7 +315,7 @@ rk808: pmic@1b {
 		clock-output-names = "xin32k", "rk808-clkout2";
 		pinctrl-names = "default";
 		pinctrl-0 = <&pmic_int_l>;
-		rockchip,system-power-controller;
+		system-power-controller;
 		wakeup-source;
 
 		vcc1-supply = <&vsys_3v3>;
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-kobol-helios64.dts b/arch/arm64/boot/dts/rockchip/rk3399-kobol-helios64.dts
index b0c1fb0b704e..6086b9782f29 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-kobol-helios64.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-kobol-helios64.dts
@@ -309,7 +309,7 @@ rk808: pmic@1b {
 		clock-output-names = "xin32k", "rk808-clkout2";
 		pinctrl-names = "default";
 		pinctrl-0 = <&pmic_int_l>;
-		rockchip,system-power-controller;
+		system-power-controller;
 		vcc1-supply = <&vcc5v0_sys>;
 		vcc2-supply = <&vcc5v0_sys>;
 		vcc3-supply = <&vcc5v0_sys>;
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-leez-p710.dts b/arch/arm64/boot/dts/rockchip/rk3399-leez-p710.dts
index f12b1eb00575..d2ffa5fdbff7 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-leez-p710.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-leez-p710.dts
@@ -187,7 +187,7 @@ rk808: pmic@1b {
 		clock-output-names = "xin32k", "rk808-clkout2";
 		pinctrl-names = "default";
 		pinctrl-0 = <&pmic_int_l>;
-		rockchip,system-power-controller;
+		system-power-controller;
 		wakeup-source;
 
 		vcc1-supply = <&vcc5v0_sys>;
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-nanopi4.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-nanopi4.dtsi
index 7debc4a1b5fa..65ea8dff0476 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-nanopi4.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-nanopi4.dtsi
@@ -269,7 +269,7 @@ rk808: pmic@1b {
 		interrupts = <21 IRQ_TYPE_LEVEL_LOW>;
 		pinctrl-names = "default";
 		pinctrl-0 = <&pmic_int_l>, <&ap_pwroff>, <&clk_32k>;
-		rockchip,system-power-controller;
+		system-power-controller;
 		wakeup-source;
 
 		vcc1-supply = <&vcc3v3_sys>;
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-orangepi.dts b/arch/arm64/boot/dts/rockchip/rk3399-orangepi.dts
index 07ec33f3f55f..2a354a3a281b 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-orangepi.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-orangepi.dts
@@ -262,7 +262,7 @@ rk808: pmic@1b {
 		clock-output-names = "rtc_clko_soc", "rtc_clko_wifi";
 		pinctrl-names = "default";
 		pinctrl-0 = <&pmic_int_l>;
-		rockchip,system-power-controller;
+		system-power-controller;
 		wakeup-source;
 
 		vcc1-supply = <&vcc3v3_sys>;
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts b/arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts
index a5a7e374bc59..d02aea19b329 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts
@@ -447,7 +447,7 @@ rk808: pmic@1b {
 		interrupts = <10 IRQ_TYPE_LEVEL_LOW>;
 		pinctrl-names = "default";
 		pinctrl-0 = <&pmic_int_l_pin>;
-		rockchip,system-power-controller;
+		system-power-controller;
 		wakeup-source;
 
 		vcc1-supply = <&vcc_sysin>;
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-pinephone-pro.dts b/arch/arm64/boot/dts/rockchip/rk3399-pinephone-pro.dts
index 1a44582a49fb..33c128bff6fa 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-pinephone-pro.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-pinephone-pro.dts
@@ -243,7 +243,7 @@ rk818: pmic@1c {
 		clock-output-names = "xin32k", "rk808-clkout2";
 		pinctrl-names = "default";
 		pinctrl-0 = <&pmic_int_l>;
-		rockchip,system-power-controller;
+		system-power-controller;
 		wakeup-source;
 
 		vcc1-supply = <&vcc_sys>;
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-puma.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-puma.dtsi
index 650b1ba9c192..80768b6d3bdf 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-puma.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-puma.dtsi
@@ -205,7 +205,7 @@ rk808: pmic@1b {
 		clock-output-names = "xin32k", "rk808-clkout2";
 		pinctrl-names = "default";
 		pinctrl-0 = <&pmic_int_l>;
-		rockchip,system-power-controller;
+		system-power-controller;
 		wakeup-source;
 
 		vcc1-supply = <&vcc5v0_sys>;
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi
index d95b1cde1fc3..9b0b3e5ccbe6 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi
@@ -298,7 +298,7 @@ rk808: pmic@1b {
 		clock-output-names = "xin32k", "rk808-clkout2";
 		pinctrl-names = "default";
 		pinctrl-0 = <&pmic_int_l>;
-		rockchip,system-power-controller;
+		system-power-controller;
 		wakeup-source;
 
 		vcc1-supply = <&vcc3v3_sys>;
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rock-4c-plus.dts b/arch/arm64/boot/dts/rockchip/rk3399-rock-4c-plus.dts
index 475d57f64d58..f8c3454435ab 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-rock-4c-plus.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-rock-4c-plus.dts
@@ -220,7 +220,7 @@ rk809: pmic@20 {
 		clock-output-names = "rk808-clkout1", "rk808-clkout2";
 		pinctrl-names = "default";
 		pinctrl-0 = <&pmic_int_l>, <&i2s_8ch_mclk>;
-		rockchip,system-power-controller;
+		system-power-controller;
 		#sound-dai-cells = <0>;
 		wakeup-source;
 
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dtsi
index 9666504cd1c1..9814f5772002 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dtsi
@@ -245,7 +245,7 @@ rk808: pmic@1b {
 		clock-output-names = "xin32k", "rk808-clkout2";
 		pinctrl-names = "default";
 		pinctrl-0 = <&pmic_int_l>;
-		rockchip,system-power-controller;
+		system-power-controller;
 		wakeup-source;
 
 		vcc1-supply = <&vcc5v0_sys>;
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rock960.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-rock960.dtsi
index 8146f870d2bd..335aa3cc1e88 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-rock960.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-rock960.dtsi
@@ -186,7 +186,7 @@ rk808: pmic@1b {
 		interrupts = <21 IRQ_TYPE_LEVEL_LOW>;
 		pinctrl-names = "default";
 		pinctrl-0 = <&pmic_int_l>;
-		rockchip,system-power-controller;
+		system-power-controller;
 		wakeup-source;
 		#clock-cells = <1>;
 		clock-output-names = "xin32k", "rk808-clkout2";
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi
index 11d99d8b34a2..ddba1841e187 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi
@@ -342,7 +342,7 @@ rk808: pmic@1b {
 		clock-output-names = "xin32k", "rk808-clkout2";
 		pinctrl-names = "default";
 		pinctrl-0 = <&pmic_int_l>;
-		rockchip,system-power-controller;
+		system-power-controller;
 		wakeup-source;
 
 		vcc1-supply = <&vcc5v0_sys>;
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-sapphire.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-sapphire.dtsi
index 31832aae9ab6..cd891bc199d9 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-sapphire.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-sapphire.dtsi
@@ -233,7 +233,7 @@ rk808: pmic@1b {
 		clock-output-names = "xin32k", "rk808-clkout2";
 		pinctrl-names = "default";
 		pinctrl-0 = <&pmic_int_l>;
-		rockchip,system-power-controller;
+		system-power-controller;
 		wakeup-source;
 
 		vcc1-supply = <&vcc_sys>;
diff --git a/arch/arm64/boot/dts/rockchip/rk3399pro-vmarc-som.dtsi b/arch/arm64/boot/dts/rockchip/rk3399pro-vmarc-som.dtsi
index 8823c924dc1d..86cf2f27ac13 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399pro-vmarc-som.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399pro-vmarc-som.dtsi
@@ -78,7 +78,7 @@ rk809: pmic@20 {
 		clock-output-names = "rk808-clkout1", "rk808-clkout2";
 		pinctrl-names = "default";
 		pinctrl-0 = <&pmic_int_l>;
-		rockchip,system-power-controller;
+		system-power-controller;
 		wakeup-source;
 
 		vcc1-supply = <&vcc5v0_sys>;
-- 
2.45.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
