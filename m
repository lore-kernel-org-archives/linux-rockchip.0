Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0135ACEF14D
	for <linux-rockchip@archiver.kernel.org>; Tue,  8 Oct 2024 11:01:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mupg+cpl60jymNhfjinq6iSWBZAyeYYGK7A7Ee7Ncf4=; b=ijSy/Qb6E65syW
	AZQm9rRLtjSHCHbN3kF4XpxPdLolY+f9LZngtxDgy45If9ReK8A79Y7JB2OzWvTkSaMgZTjDVdoDY
	Y1lngJFmlsEdbNvjPp4QM/wLh9oICHBEZOQlbPLN2dQpLLRG4Cdb5lX8LxjePx+MWEmlinJDAd870
	387Mwmi3x3eU1y5V2WuUC7BhxBqRj54EheVpDcu6A/1Uls4V4t4QIN6gktSbcUNHGawI7ZIn+KoYl
	+WuwCxcLWVjVf9HUW/KXicFG4LoDcNxMsM9k70mv5KRgMOX7cN/EwfeEoMeI6RKbLtn+YRVZvS6FQ
	Sv2+GBRaEKnmqGHfEIQA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1sy7yU-00000005XQ2-0hYJ;
	Tue, 08 Oct 2024 11:01:54 +0000
Received: from out-181.mta1.migadu.com ([95.215.58.181])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1sy7sO-00000005WST-2D5N
	for linux-rockchip@lists.infradead.org;
	Tue, 08 Oct 2024 10:55:38 +0000
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow.org; s=key1;
	t=1728384934;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=AZP4bGg0/XhvOfldOzXHJ52hEwmuffYsqbe4Sf6TaHw=;
	b=bwrSzePw6y611eoV/2irVc1PKRrSh5oci5ER67I5uJ3Q8CNpTisn43sCDx9lKg/OpVtR/T
	kjuaSM3CcDu8r886R2idi+QDO1dDeOgM/YQjnCZWtn+5/dmD0fAgLHqb5oV8ISkF+cL41X
	yxwkczrJ0hg5TsOJv95U61xjunWhl4W42ABwAgWck/X216amns9yMinoCM6YODPIFJIY74
	CsHAzk2S4SFalsB2c7OcfqQt2x1ODgiO9SqYzgj9anet0zBAGpqUFmU2xZYsxVmSbJG6S9
	v0kLQSsOrD+O47X8hGYYa32m7R568rVhC4U1Iby9L7s0CNd6sn+uTCWjq5G95Q==
From: Diederik de Haas <didi.debian@cknow.org>
To: Heiko Stuebner <heiko@sntech.de>,
	linux-rockchip@lists.infradead.org
Cc: linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Dragan Simic <dsimic@manjaro.org>,
	Diederik de Haas <didi.debian@cknow.org>
Subject: [PATCH v2 5/5] arm64: dts: rockchip: rk356x: Drop rockchip prefix from s-p-c PMIC property
Date: Tue,  8 Oct 2024 12:48:05 +0200
Message-ID: <20241008105450.20648-6-didi.debian@cknow.org>
In-Reply-To: <20241008105450.20648-1-didi.debian@cknow.org>
References: <20241008105450.20648-1-didi.debian@cknow.org>
MIME-Version: 1.0
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241008_035536_742489_4123ACC1 
X-CRM114-Status: UNSURE (   7.99  )
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

Property 'rockchip,system-power-controller' was deprecated in commit
961748bb1555 ("dt-bindings: mfd: rk8xx: Deprecate rockchip,system-power-controller")

in the "rockchip,rk{805,808,809,817,818}.yaml" mtd bindings and its
replacement is (just) 'system-power-controller'.

Update the rk356x DT files which still used the deprecated variant.

Signed-off-by: Diederik de Haas <didi.debian@cknow.org>
---
changes in v2:
- rephrased commit message a bit

 arch/arm64/boot/dts/rockchip/rk3566-lckfb-tspi.dts      | 2 +-
 arch/arm64/boot/dts/rockchip/rk3566-lubancat-1.dts      | 2 +-
 arch/arm64/boot/dts/rockchip/rk3566-pinenote.dtsi       | 2 +-
 arch/arm64/boot/dts/rockchip/rk3566-pinetab2.dtsi       | 2 +-
 arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts      | 2 +-
 arch/arm64/boot/dts/rockchip/rk3566-quartz64-b.dts      | 2 +-
 arch/arm64/boot/dts/rockchip/rk3566-radxa-cm3.dtsi      | 2 +-
 arch/arm64/boot/dts/rockchip/rk3566-roc-pc.dts          | 2 +-
 arch/arm64/boot/dts/rockchip/rk3566-soquartz.dtsi       | 2 +-
 arch/arm64/boot/dts/rockchip/rk3568-bpi-r2-pro.dts      | 2 +-
 arch/arm64/boot/dts/rockchip/rk3568-evb1-v10.dts        | 2 +-
 arch/arm64/boot/dts/rockchip/rk3568-fastrhino-r66s.dtsi | 2 +-
 arch/arm64/boot/dts/rockchip/rk3568-lubancat-2.dts      | 2 +-
 arch/arm64/boot/dts/rockchip/rk3568-nanopi-r5s.dtsi     | 2 +-
 arch/arm64/boot/dts/rockchip/rk3568-odroid-m1.dts       | 2 +-
 arch/arm64/boot/dts/rockchip/rk3568-radxa-cm3i.dtsi     | 2 +-
 arch/arm64/boot/dts/rockchip/rk3568-roc-pc.dts          | 2 +-
 arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts         | 2 +-
 arch/arm64/boot/dts/rockchip/rk3568-wolfvision-pf5.dts  | 2 +-
 19 files changed, 19 insertions(+), 19 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3566-lckfb-tspi.dts b/arch/arm64/boot/dts/rockchip/rk3566-lckfb-tspi.dts
index 7cd91f8000cb..ed65d3120444 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-lckfb-tspi.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3566-lckfb-tspi.dts
@@ -245,7 +245,7 @@ rk809: pmic@20 {
 		interrupts = <RK_PA3 IRQ_TYPE_LEVEL_LOW>;
 		pinctrl-names = "default";
 		pinctrl-0 = <&pmic_int>, <&i2s1m0_mclk>;
-		rockchip,system-power-controller;
+		system-power-controller;
 		#sound-dai-cells = <0>;
 		wakeup-source;
 
diff --git a/arch/arm64/boot/dts/rockchip/rk3566-lubancat-1.dts b/arch/arm64/boot/dts/rockchip/rk3566-lubancat-1.dts
index c1194d1e438d..55da1dbdd139 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-lubancat-1.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3566-lubancat-1.dts
@@ -197,7 +197,7 @@ rk809: pmic@20 {
 
 		pinctrl-names = "default";
 		pinctrl-0 = <&pmic_int>;
-		rockchip,system-power-controller;
+		system-power-controller;
 		wakeup-source;
 		#clock-cells = <1>;
 
diff --git a/arch/arm64/boot/dts/rockchip/rk3566-pinenote.dtsi b/arch/arm64/boot/dts/rockchip/rk3566-pinenote.dtsi
index ae2536c65a83..de4c082dce07 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-pinenote.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3566-pinenote.dtsi
@@ -244,7 +244,7 @@ rk817: pmic@20 {
 		#clock-cells = <1>;
 		pinctrl-0 = <&i2s1m0_mclk>, <&pmic_int_l>, <&pmic_sleep>;
 		pinctrl-names = "default";
-		rockchip,system-power-controller;
+		system-power-controller;
 		#sound-dai-cells = <0>;
 		wakeup-source;
 
diff --git a/arch/arm64/boot/dts/rockchip/rk3566-pinetab2.dtsi b/arch/arm64/boot/dts/rockchip/rk3566-pinetab2.dtsi
index db40281eafbe..abcb60b49487 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-pinetab2.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3566-pinetab2.dtsi
@@ -370,7 +370,7 @@ rk817: pmic@20 {
 		#clock-cells = <1>;
 		pinctrl-names = "default";
 		pinctrl-0 = <&pmic_int_l>, <&i2s1m0_mclk>;
-		rockchip,system-power-controller;
+		system-power-controller;
 		#sound-dai-cells = <0>;
 		wakeup-source;
 
diff --git a/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts b/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts
index 37a1303d9a34..1ba20aab2796 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts
@@ -347,7 +347,7 @@ rk817: pmic@20 {
 		#clock-cells = <1>;
 		pinctrl-names = "default";
 		pinctrl-0 = <&pmic_int_l>, <&i2s1m0_mclk>;
-		rockchip,system-power-controller;
+		system-power-controller;
 		#sound-dai-cells = <0>;
 		wakeup-source;
 
diff --git a/arch/arm64/boot/dts/rockchip/rk3566-quartz64-b.dts b/arch/arm64/boot/dts/rockchip/rk3566-quartz64-b.dts
index c164074ddf54..a80042b58542 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-quartz64-b.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3566-quartz64-b.dts
@@ -255,7 +255,7 @@ rk809: pmic@20 {
 
 		pinctrl-names = "default";
 		pinctrl-0 = <&pmic_int>, <&i2s1m0_mclk>;
-		rockchip,system-power-controller;
+		system-power-controller;
 		#sound-dai-cells = <0>;
 		wakeup-source;
 		#clock-cells = <1>;
diff --git a/arch/arm64/boot/dts/rockchip/rk3566-radxa-cm3.dtsi b/arch/arm64/boot/dts/rockchip/rk3566-radxa-cm3.dtsi
index 45de2630bb50..d09e6542e236 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-radxa-cm3.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3566-radxa-cm3.dtsi
@@ -127,7 +127,7 @@ rk817: pmic@20 {
 		interrupts = <RK_PA3 IRQ_TYPE_LEVEL_LOW>;
 		pinctrl-names = "default";
 		pinctrl-0 = <&pmic_int_l>;
-		rockchip,system-power-controller;
+		system-power-controller;
 		wakeup-source;
 
 		vcc1-supply = <&vcc_sys>;
diff --git a/arch/arm64/boot/dts/rockchip/rk3566-roc-pc.dts b/arch/arm64/boot/dts/rockchip/rk3566-roc-pc.dts
index 67e7801bd489..8bd1f60d2de6 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-roc-pc.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3566-roc-pc.dts
@@ -253,7 +253,7 @@ rk809: pmic@20 {
 		clocks = <&cru I2S1_MCLKOUT_TX>;
 		pinctrl-names = "default";
 		pinctrl-0 = <&pmic_int>, <&i2s1m0_mclk>;
-		rockchip,system-power-controller;
+		system-power-controller;
 		wakeup-source;
 		#clock-cells = <1>;
 		#sound-dai-cells = <0>;
diff --git a/arch/arm64/boot/dts/rockchip/rk3566-soquartz.dtsi b/arch/arm64/boot/dts/rockchip/rk3566-soquartz.dtsi
index e42c474ef4ad..4f4af040f7e8 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-soquartz.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3566-soquartz.dtsi
@@ -213,7 +213,7 @@ rk809: pmic@20 {
 		clock-output-names = "rk808-clkout1", "rk808-clkout2";
 		pinctrl-names = "default";
 		pinctrl-0 = <&pmic_int_l>;
-		rockchip,system-power-controller;
+		system-power-controller;
 		wakeup-source;
 
 		vcc1-supply = <&vcc3v3_sys>;
diff --git a/arch/arm64/boot/dts/rockchip/rk3568-bpi-r2-pro.dts b/arch/arm64/boot/dts/rockchip/rk3568-bpi-r2-pro.dts
index c87fad2c34cb..5dd93a08489a 100644
--- a/arch/arm64/boot/dts/rockchip/rk3568-bpi-r2-pro.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3568-bpi-r2-pro.dts
@@ -291,7 +291,7 @@ rk809: pmic@20 {
 		#clock-cells = <1>;
 		pinctrl-names = "default";
 		pinctrl-0 = <&pmic_int>;
-		rockchip,system-power-controller;
+		system-power-controller;
 		vcc1-supply = <&vcc3v3_sys>;
 		vcc2-supply = <&vcc3v3_sys>;
 		vcc3-supply = <&vcc3v3_sys>;
diff --git a/arch/arm64/boot/dts/rockchip/rk3568-evb1-v10.dts b/arch/arm64/boot/dts/rockchip/rk3568-evb1-v10.dts
index 8c3ab07d3807..6e6d3c4a4f37 100644
--- a/arch/arm64/boot/dts/rockchip/rk3568-evb1-v10.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3568-evb1-v10.dts
@@ -275,7 +275,7 @@ rk809: pmic@20 {
 		clocks = <&cru I2S1_MCLKOUT_TX>;
 		pinctrl-names = "default";
 		pinctrl-0 = <&pmic_int>, <&i2s1m0_mclk>;
-		rockchip,system-power-controller;
+		system-power-controller;
 		#sound-dai-cells = <0>;
 		vcc1-supply = <&vcc3v3_sys>;
 		vcc2-supply = <&vcc3v3_sys>;
diff --git a/arch/arm64/boot/dts/rockchip/rk3568-fastrhino-r66s.dtsi b/arch/arm64/boot/dts/rockchip/rk3568-fastrhino-r66s.dtsi
index 25c49bdbadbc..4976e64ed262 100644
--- a/arch/arm64/boot/dts/rockchip/rk3568-fastrhino-r66s.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3568-fastrhino-r66s.dtsi
@@ -152,7 +152,7 @@ rk809: pmic@20 {
 		#clock-cells = <1>;
 		pinctrl-names = "default";
 		pinctrl-0 = <&pmic_int>;
-		rockchip,system-power-controller;
+		system-power-controller;
 		vcc1-supply = <&vcc3v3_sys>;
 		vcc2-supply = <&vcc3v3_sys>;
 		vcc3-supply = <&vcc3v3_sys>;
diff --git a/arch/arm64/boot/dts/rockchip/rk3568-lubancat-2.dts b/arch/arm64/boot/dts/rockchip/rk3568-lubancat-2.dts
index a3112d5df200..ce6d5dccb0ed 100644
--- a/arch/arm64/boot/dts/rockchip/rk3568-lubancat-2.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3568-lubancat-2.dts
@@ -223,7 +223,7 @@ rk809: pmic@20 {
 		clocks = <&cru I2S1_MCLKOUT_TX>;
 		pinctrl-names = "default";
 		pinctrl-0 = <&pmic_int>;
-		rockchip,system-power-controller;
+		system-power-controller;
 		#sound-dai-cells = <0>;
 		vcc1-supply = <&vcc3v3_sys>;
 		vcc2-supply = <&vcc3v3_sys>;
diff --git a/arch/arm64/boot/dts/rockchip/rk3568-nanopi-r5s.dtsi b/arch/arm64/boot/dts/rockchip/rk3568-nanopi-r5s.dtsi
index 93189f830640..cee052f65004 100644
--- a/arch/arm64/boot/dts/rockchip/rk3568-nanopi-r5s.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3568-nanopi-r5s.dtsi
@@ -215,7 +215,7 @@ rk809: pmic@20 {
 		#clock-cells = <1>;
 		pinctrl-names = "default";
 		pinctrl-0 = <&pmic_int>;
-		rockchip,system-power-controller;
+		system-power-controller;
 		vcc1-supply = <&vcc3v3_sys>;
 		vcc2-supply = <&vcc3v3_sys>;
 		vcc3-supply = <&vcc3v3_sys>;
diff --git a/arch/arm64/boot/dts/rockchip/rk3568-odroid-m1.dts b/arch/arm64/boot/dts/rockchip/rk3568-odroid-m1.dts
index 6a02db4f073f..5818028c14b9 100644
--- a/arch/arm64/boot/dts/rockchip/rk3568-odroid-m1.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3568-odroid-m1.dts
@@ -273,7 +273,7 @@ rk809: pmic@20 {
 		clocks = <&cru I2S1_MCLKOUT_TX>;
 		pinctrl-names = "default";
 		pinctrl-0 = <&pmic_int_l>, <&i2s1m0_mclk>;
-		rockchip,system-power-controller;
+		system-power-controller;
 		#sound-dai-cells = <0>;
 		vcc1-supply = <&vcc3v3_sys>;
 		vcc2-supply = <&vcc3v3_sys>;
diff --git a/arch/arm64/boot/dts/rockchip/rk3568-radxa-cm3i.dtsi b/arch/arm64/boot/dts/rockchip/rk3568-radxa-cm3i.dtsi
index 19d309654bdb..0e447ffea73b 100644
--- a/arch/arm64/boot/dts/rockchip/rk3568-radxa-cm3i.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3568-radxa-cm3i.dtsi
@@ -141,7 +141,7 @@ rk809: pmic@20 {
 		#clock-cells = <1>;
 		pinctrl-names = "default";
 		pinctrl-0 = <&pmic_int>;
-		rockchip,system-power-controller;
+		system-power-controller;
 		wakeup-source;
 
 		vcc1-supply = <&vcc3v3_sys>;
diff --git a/arch/arm64/boot/dts/rockchip/rk3568-roc-pc.dts b/arch/arm64/boot/dts/rockchip/rk3568-roc-pc.dts
index e333449ead04..ce14ff8c5945 100644
--- a/arch/arm64/boot/dts/rockchip/rk3568-roc-pc.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3568-roc-pc.dts
@@ -255,7 +255,7 @@ rk809: pmic@20 {
 		#clock-cells = <1>;
 		pinctrl-names = "default";
 		pinctrl-0 = <&pmic_int>;
-		rockchip,system-power-controller;
+		system-power-controller;
 		vcc1-supply = <&vcc3v3_sys>;
 		vcc2-supply = <&vcc3v3_sys>;
 		vcc3-supply = <&vcc3v3_sys>;
diff --git a/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts b/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts
index 59f1403b4fa5..4fa6eff3b469 100644
--- a/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts
@@ -333,7 +333,7 @@ rk809: pmic@20 {
 		clocks = <&cru I2S1_MCLKOUT_TX>;
 		pinctrl-names = "default";
 		pinctrl-0 = <&pmic_int>, <&i2s1m0_mclk>;
-		rockchip,system-power-controller;
+		system-power-controller;
 		#sound-dai-cells = <0>;
 		vcc1-supply = <&vcc3v3_sys>;
 		vcc2-supply = <&vcc3v3_sys>;
diff --git a/arch/arm64/boot/dts/rockchip/rk3568-wolfvision-pf5.dts b/arch/arm64/boot/dts/rockchip/rk3568-wolfvision-pf5.dts
index 170b14f92f51..048cc4eebd40 100644
--- a/arch/arm64/boot/dts/rockchip/rk3568-wolfvision-pf5.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3568-wolfvision-pf5.dts
@@ -178,7 +178,7 @@ rk809: pmic@20 {
 		#clock-cells = <0>;
 		pinctrl-names = "default";
 		pinctrl-0 = <&pmic_int_l>;
-		rockchip,system-power-controller;
+		system-power-controller;
 		vcc1-supply = <&vcc5v_in>;
 		vcc2-supply = <&vcc5v_in>;
 		vcc3-supply = <&vcc5v_in>;
-- 
2.45.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
