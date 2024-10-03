Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9C786CF8571
	for <linux-rockchip@archiver.kernel.org>; Thu,  3 Oct 2024 09:52:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rT3aBAkQeqHhveJeSqxkrsrezK4u0SbM20Z5sKlYEdg=; b=GfJTjTS5YvAwlK
	7C2BhTzLyYx3+nc8pxGPVUzJZ4sS8W+rhPVRCrTWru61E2PjMnJhCN5Thst2Os2ezGLprnCgxElXM
	18CgVvnn/Dy9YHdPnafyhIWnGqmyrK4FaulEa26Z2cBbK8XQJnnANNxfGjn69Z7VCUV6yYy5+BBC9
	sxI04N/BDwIA7xHRcdqXkPF/yTmEbOZ7eyAKq7zpqiNZ4K+g9u9WIMAP/Cha7yS2FxcFHzCiMfLFP
	yFiN4uHS0dcGnRktUeinKt0vBwvCWt/MmDfX22TRxGKcW8Sa28QT0S3wykFC7AtAv/ZrQAQRCbVRo
	Tu5MBdZ9oaw1NZGXx8lg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1swIVo-00000008ik7-02gZ;
	Thu, 03 Oct 2024 09:52:44 +0000
Received: from out-186.mta0.migadu.com ([91.218.175.186])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1swITK-00000008i39-1OkT
	for linux-rockchip@lists.infradead.org;
	Thu, 03 Oct 2024 09:50:11 +0000
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow.org; s=key1;
	t=1727949007;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=SBJngG+t1StT+2RJ1rjKFpeZH1Aw4sVH2OKQO+jyrG4=;
	b=zNE+PCNviXvXFcUTtN7fXEX1vlJ1oc+8KO50lJq6mCUEa6x/lerNuKwD1hS4du1xpjosnf
	jrk8nPXUT0+yvzXLY6/LTTFnzgv+axzuQL2HGJgs7uVAJ7wRQgvc4qRACKLaXs9X+uQQSG
	hkteHq4CiWnCelQLVX2l9YYmFZGDcD5gABof1i4pOkHU7iQVjvwLNvN6m5PTLNaNpFV1NG
	0x/57GxQnx31R+vQ5CnAlhJtH9CiR6uEGXtW56LkdPPT6MCikLhJHxuZT4ef1y0+ybXwFg
	ArR22ho6Yr3yC4+TQ9io2ZkJmzqCevIhZi7K6kmjsDIrneBG8Lrcw6zlo+Z4QA==
From: Diederik de Haas <didi.debian@cknow.org>
To: Heiko Stuebner <heiko@sntech.de>,
	linux-rockchip@lists.infradead.org
Cc: linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Diederik de Haas <didi.debian@cknow.org>
Subject: [PATCH 2/5] arm64: dts: rockchip: rk3328: Drop rockchip prefix from s-p-c PMIC property
Date: Thu,  3 Oct 2024 11:43:26 +0200
Message-ID: <20241003094927.62042-3-didi.debian@cknow.org>
In-Reply-To: <20241003094927.62042-1-didi.debian@cknow.org>
References: <20241003094927.62042-1-didi.debian@cknow.org>
MIME-Version: 1.0
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241003_025010_705113_DDD133BD 
X-CRM114-Status: UNSURE (   8.44  )
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
Update the rk3328 DT files which still used the deprecated variant.

Signed-off-by: Diederik de Haas <didi.debian@cknow.org>
---
 arch/arm64/boot/dts/rockchip/rk3328-a1.dts               | 2 +-
 arch/arm64/boot/dts/rockchip/rk3328-evb.dts              | 2 +-
 arch/arm64/boot/dts/rockchip/rk3328-nanopi-r2s.dts       | 2 +-
 arch/arm64/boot/dts/rockchip/rk3328-orangepi-r1-plus.dts | 2 +-
 arch/arm64/boot/dts/rockchip/rk3328-roc-cc.dts           | 2 +-
 arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e.dts        | 2 +-
 arch/arm64/boot/dts/rockchip/rk3328-rock64.dts           | 2 +-
 7 files changed, 7 insertions(+), 7 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3328-a1.dts b/arch/arm64/boot/dts/rockchip/rk3328-a1.dts
index 824183e515da..9406a887652d 100644
--- a/arch/arm64/boot/dts/rockchip/rk3328-a1.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3328-a1.dts
@@ -159,7 +159,7 @@ pmic@18 {
 		interrupts = <RK_PA6 IRQ_TYPE_LEVEL_LOW>;
 		pinctrl-names = "default";
 		pinctrl-0 = <&pmic_int_l>;
-		rockchip,system-power-controller;
+		system-power-controller;
 		wakeup-source;
 		#clock-cells = <0>;
 
diff --git a/arch/arm64/boot/dts/rockchip/rk3328-evb.dts b/arch/arm64/boot/dts/rockchip/rk3328-evb.dts
index 1eef5504445f..12a4e421ec95 100644
--- a/arch/arm64/boot/dts/rockchip/rk3328-evb.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3328-evb.dts
@@ -121,7 +121,7 @@ rk805: pmic@18 {
 		#gpio-cells = <2>;
 		pinctrl-names = "default";
 		pinctrl-0 = <&pmic_int_l>;
-		rockchip,system-power-controller;
+		system-power-controller;
 		wakeup-source;
 
 		vcc1-supply = <&vcc_sys>;
diff --git a/arch/arm64/boot/dts/rockchip/rk3328-nanopi-r2s.dts b/arch/arm64/boot/dts/rockchip/rk3328-nanopi-r2s.dts
index a4399da7d8b1..a10847509bfe 100644
--- a/arch/arm64/boot/dts/rockchip/rk3328-nanopi-r2s.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3328-nanopi-r2s.dts
@@ -181,7 +181,7 @@ rk805: pmic@18 {
 		#gpio-cells = <2>;
 		pinctrl-0 = <&pmic_int_l>;
 		pinctrl-names = "default";
-		rockchip,system-power-controller;
+		system-power-controller;
 		wakeup-source;
 
 		vcc1-supply = <&vdd_5v>;
diff --git a/arch/arm64/boot/dts/rockchip/rk3328-orangepi-r1-plus.dts b/arch/arm64/boot/dts/rockchip/rk3328-orangepi-r1-plus.dts
index f20662929c77..99499a0bab19 100644
--- a/arch/arm64/boot/dts/rockchip/rk3328-orangepi-r1-plus.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3328-orangepi-r1-plus.dts
@@ -152,7 +152,7 @@ rk805: pmic@18 {
 		#gpio-cells = <2>;
 		pinctrl-0 = <&pmic_int_l>;
 		pinctrl-names = "default";
-		rockchip,system-power-controller;
+		system-power-controller;
 		wakeup-source;
 
 		vcc1-supply = <&vcc_sys>;
diff --git a/arch/arm64/boot/dts/rockchip/rk3328-roc-cc.dts b/arch/arm64/boot/dts/rockchip/rk3328-roc-cc.dts
index 414897a57e75..88bb95075b6f 100644
--- a/arch/arm64/boot/dts/rockchip/rk3328-roc-cc.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3328-roc-cc.dts
@@ -191,7 +191,7 @@ rk805: pmic@18 {
 		#gpio-cells = <2>;
 		pinctrl-names = "default";
 		pinctrl-0 = <&pmic_int_l>;
-		rockchip,system-power-controller;
+		system-power-controller;
 		wakeup-source;
 
 		vcc1-supply = <&vcc_sys>;
diff --git a/arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e.dts b/arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e.dts
index 3e08e2fd0a78..905ef4b94095 100644
--- a/arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e.dts
@@ -249,7 +249,7 @@ rk805: pmic@18 {
 		#gpio-cells = <2>;
 		pinctrl-names = "default";
 		pinctrl-0 = <&pmic_int_l>;
-		rockchip,system-power-controller;
+		system-power-controller;
 		wakeup-source;
 
 		vcc1-supply = <&vcc_sys>;
diff --git a/arch/arm64/boot/dts/rockchip/rk3328-rock64.dts b/arch/arm64/boot/dts/rockchip/rk3328-rock64.dts
index 90fef766f3ae..7d179aae8d24 100644
--- a/arch/arm64/boot/dts/rockchip/rk3328-rock64.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3328-rock64.dts
@@ -181,7 +181,7 @@ rk805: pmic@18 {
 		#gpio-cells = <2>;
 		pinctrl-names = "default";
 		pinctrl-0 = <&pmic_int_l>;
-		rockchip,system-power-controller;
+		system-power-controller;
 		wakeup-source;
 
 		vcc1-supply = <&vcc_sys>;
-- 
2.45.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
