Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9D462C021B8
	for <linux-rockchip@archiver.kernel.org>; Tue,  4 Mar 2025 10:48:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/tHPyugWTi7kEb268QMx7d8Hco74Bg0uI57Y1v2X6/4=; b=XADGheL0QCC2lE
	GvHMVKXwg0rsXFLl2oRt2Pxjhv6r2OW6C0G9k8R+FPyiyB+Iu2vVgizD/8LPWINwVYelGh0RRIU0R
	LNU7juEnE6K3CamiyECs2yLzfXA3b1gLPEqxi38Fxvzi4d5f8wEuidj/dOymhl33jy3gVN1dJuTlM
	HB8U9VFMhSFNEyZDXmvrAtAR4xXVKHcumE1Q38EWaGYepzxV1jCsVLB1k6tyBmTY22UNDFhTqb2m7
	MxsnZUbflSHS31Hxp1ohhqOQpMUXwoHXOjfzNOp7hYTJGPt0Fn/LqkY3RE9cxKl+3vdqG40QfnGSv
	4bQGJX1v/PYUZ16bC2Hg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tpPoy-00000004GEY-2n9n;
	Tue, 04 Mar 2025 10:48:20 +0000
Received: from mail-wm1-x32d.google.com ([2a00:1450:4864:20::32d])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tpPiw-00000004ERh-1Hz8
	for linux-rockchip@lists.infradead.org;
	Tue, 04 Mar 2025 10:42:07 +0000
Received: by mail-wm1-x32d.google.com with SMTP id 5b1f17b1804b1-43982cede30so6464595e9.2
        for <linux-rockchip@lists.infradead.org>; Tue, 04 Mar 2025 02:42:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1741084925; x=1741689725; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=GDxLGGq40mrprdt8U26xMTW1xjWdDPFqwzgumK7bnvA=;
        b=wYc/YPrNwm0DuBPSbqCuBy5ctMkdf774WbLWU4ZkmY0g4wdKDfI9nX969WN+UW5TlT
         dQuY6xcn4QUXkzZDXwTaLN8ZQxT8YJa1lb9pDaUldxsu4oHFelTG5TxPRgxJS+4/hF0i
         qwcgkvcIFhK28DR0jvR6a8x7j+PmE9GFDqvL8asG+1TI6kuH1y4poFDh9EOvwvMToR2n
         AbvvroRwp518V93rOMZzmNeY120KT+KPsUAQimKk1CNvTE5GsppaX4NIn1revhOPJ2/d
         8GYOUXN5EL3F1xrb81lWsyBZuR9kaeyOpZeu7VPZyAj5QRGPOxLLMZvFT/ouQPCmM4i8
         RP+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741084925; x=1741689725;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=GDxLGGq40mrprdt8U26xMTW1xjWdDPFqwzgumK7bnvA=;
        b=Krl/KYlnoZQPKKqy17eNXgstRxwzmOrmERNde0bDUdto6oeJKizm1b9UPO9GeFh0DN
         4uo+6SIi5qAMMf8xhoaB2bRB6mSTSB7yZkP05HmRcbOkRmfncf/pLCh/LCVxIYQvSQmg
         03fdZ2oLnQCeKuN2QreQhD9j2Lgw4Ka0K6Nxml3v1NbOXO7pGAWYfDYQ4FqowN8off21
         jUuICly28+CPeu9C6taCjp8unCUr275ahiAw/DgOrEAL1CHvZLmMq1OKgxFEmPKtak8t
         H/OEkDWnCLNkZMv+2Ka7WuvFyFEFszMytIE5V8k2a7DGzApR7l3kVTd0e5NTdOxE90Rm
         Cz3g==
X-Forwarded-Encrypted: i=1; AJvYcCV7u1RsMVT99lcty3qi9rgqCH4w1FL6tmI9CrLerpgnc14EZZ3zXsoMFuWMSKDMYLJp7+FySTE7tl+FgjFAMg==@lists.infradead.org
X-Gm-Message-State: AOJu0YxCsB9q4ZUNrRAuXSn45BoGNwdxMbU4W8eXniNMZf6GKirIQaGZ
	UcTeSE5ewvir4tuS43vbcYJs+R+LBsVq4IylRCwPqsDISigUUAAw8MyVj8wTJLA=
X-Gm-Gg: ASbGncu5e2tvcYSVXWc+SozZ1OJMJnrIt5QbK6B+SD/BowvuZulyDPg5lMESEcdK9Ew
	dx3YmWpQ+VTl5zn995C1MO7xvno+3v2C+YeIm9Ccm1mrEiLQe1UMA8iAUeJhnPy9dA5cZfVuX7F
	j2Co7P1Cwnt8U7LnS/fPBB+uaQ2/L+Dq8hV0mY9gkvhNDhT9Yl8fEdfb0wIDyYmgIvIY2NfvTWW
	LpOvZHNvugjTReLeX7LaCIyN+u0tQH9eSSvFgoDfaXvacFHxDO7O5//pDEbH2u2TzLS7G0Vjg4R
	Q8hXARjffxrRKKXxvnJX6zP8O3EQZ509xn5l3MBtzyNnjfDzKYnFQeeW8JI=
X-Google-Smtp-Source: AGHT+IEBaeeS+ss4bvkyeewcMs2ci2tWe2j9anwRxAUmA/kmrMhdWw1KWJLeZhb3ucTu5owhQtYxHA==
X-Received: by 2002:a05:600c:3b8e:b0:43b:c228:1ee0 with SMTP id 5b1f17b1804b1-43bc2282147mr23743515e9.7.1741084924557;
        Tue, 04 Mar 2025 02:42:04 -0800 (PST)
Received: from krzk-bin.. ([178.197.206.225])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-390e47b792asm17202257f8f.53.2025.03.04.02.42.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 04 Mar 2025 02:42:04 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 2/2] arm64: dts: rockchip: Add ES8388 audio codec fallback on RK3588 boards
Date: Tue,  4 Mar 2025 11:42:00 +0100
Message-ID: <20250304104200.76178-2-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250304104200.76178-1-krzysztof.kozlowski@linaro.org>
References: <20250304104200.76178-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250304_024206_339133_64CE7699 
X-CRM114-Status: GOOD (  12.57  )
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

Devicetree bindings for ES8388 audio codec expect the device to be
marked as compatible with ES8328.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

---

Changeset depends on bindings patch being accepted to ASoC:
https://lore.kernel.org/all/20250304103808.75236-1-krzysztof.kozlowski@linaro.org/

Please take it to the same or next merge cycle as above ASoC binding.
---
 arch/arm64/boot/dts/rockchip/rk3588-evb1-v10.dts         | 2 +-
 arch/arm64/boot/dts/rockchip/rk3588-orangepi-5.dtsi      | 2 +-
 arch/arm64/boot/dts/rockchip/rk3588-quartzpro64.dts      | 2 +-
 arch/arm64/boot/dts/rockchip/rk3588s-evb1-v10.dts        | 2 +-
 arch/arm64/boot/dts/rockchip/rk3588s-gameforce-ace.dts   | 2 +-
 arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts | 2 +-
 arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5.dtsi     | 2 +-
 7 files changed, 7 insertions(+), 7 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-evb1-v10.dts b/arch/arm64/boot/dts/rockchip/rk3588-evb1-v10.dts
index 27a7895595ee..e77a38d726e0 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-evb1-v10.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-evb1-v10.dts
@@ -472,7 +472,7 @@ &i2c7 {
 	status = "okay";
 
 	es8388: audio-codec@11 {
-		compatible = "everest,es8388";
+		compatible = "everest,es8388", "everest,es8328";
 		reg = <0x11>;
 		clocks = <&cru I2S0_8CH_MCLKOUT>;
 		assigned-clocks = <&cru I2S0_8CH_MCLKOUT>;
diff --git a/arch/arm64/boot/dts/rockchip/rk3588-orangepi-5.dtsi b/arch/arm64/boot/dts/rockchip/rk3588-orangepi-5.dtsi
index a98e804a0949..81031b99c9b9 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-orangepi-5.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588-orangepi-5.dtsi
@@ -276,7 +276,7 @@ &i2c7 {
 
 	/* PLDO2 vcca 1.8V, BUCK8 gated by PLDO2 being enabled */
 	es8388: audio-codec@11 {
-		compatible = "everest,es8388";
+		compatible = "everest,es8388", "everest,es8328";
 		reg = <0x11>;
 		clocks = <&cru I2S0_8CH_MCLKOUT>;
 		AVDD-supply = <&vcc_3v3_s0>;
diff --git a/arch/arm64/boot/dts/rockchip/rk3588-quartzpro64.dts b/arch/arm64/boot/dts/rockchip/rk3588-quartzpro64.dts
index 088cfade6f6f..e07888c9948f 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-quartzpro64.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-quartzpro64.dts
@@ -311,7 +311,7 @@ &i2c7 {
 	status = "okay";
 
 	es8388: audio-codec@11 {
-		compatible = "everest,es8388";
+		compatible = "everest,es8388", "everest,es8328";
 		reg = <0x11>;
 		assigned-clocks = <&cru I2S0_8CH_MCLKOUT>;
 		assigned-clock-rates = <12288000>;
diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-evb1-v10.dts b/arch/arm64/boot/dts/rockchip/rk3588s-evb1-v10.dts
index bc4077575beb..7c948b2653da 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-evb1-v10.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-evb1-v10.dts
@@ -242,7 +242,7 @@ &i2c3 {
 	status = "okay";
 
 	es8388: audio-codec@11 {
-		compatible = "everest,es8388";
+		compatible = "everest,es8388", "everest,es8328";
 		reg = <0x11>;
 		clocks = <&cru I2S0_8CH_MCLKOUT>;
 		assigned-clocks = <&cru I2S0_8CH_MCLKOUT>;
diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-gameforce-ace.dts b/arch/arm64/boot/dts/rockchip/rk3588s-gameforce-ace.dts
index 812bba0aef1a..b79ce3ec1186 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-gameforce-ace.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-gameforce-ace.dts
@@ -611,7 +611,7 @@ &i2c7 {
 	status = "okay";
 
 	es8388: audio-codec@11 {
-		compatible = "everest,es8388";
+		compatible = "everest,es8388", "everest,es8328";
 		reg = <0x11>;
 		assigned-clock-rates = <12288000>;
 		assigned-clocks = <&cru I2S0_8CH_MCLKOUT>;
diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts b/arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts
index 74a4f03e05e3..73042e7416bc 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts
@@ -412,7 +412,7 @@ &i2c7 {
 	status = "okay";
 
 	es8388: audio-codec@11 {
-		compatible = "everest,es8388";
+		compatible = "everest,es8388", "everest,es8328";
 		reg = <0x11>;
 		assigned-clock-rates = <12288000>;
 		assigned-clocks = <&cru I2S0_8CH_MCLKOUT>;
diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5.dtsi b/arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5.dtsi
index 9e16960b8705..a48bcb6b6a91 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5.dtsi
@@ -268,7 +268,7 @@ &i2c6 {
 	status = "okay";
 
 	es8388: audio-codec@10 {
-		compatible = "everest,es8388";
+		compatible = "everest,es8388", "everest,es8328";
 		reg = <0x10>;
 		clocks = <&cru I2S1_8CH_MCLKOUT>;
 		AVDD-supply = <&vcc_3v3_s0>;
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
