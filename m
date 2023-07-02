Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 76655EB64DA
	for <linux-rockchip@archiver.kernel.org>; Sun,  2 Jul 2023 18:53:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=wai4zXPMba1efcK2JgbWGPGB4dT+3Ue2Qs7Na3/FP84=; b=Zdk4OP7amsB3fn
	te4pdWrsy7GXK/A6zDvhc7Wy0hmcrMAOOZJE0bKehY2D3c/VOle2/LYHEr6JNiCGmF+cMPafpDBTm
	Cbl/aS/r0yir71FupMoq/kX8a+Dx2MrPd3nvhZsHKs+F/v+TQC+6rWH+U/kIEGqYN0LFDLgQf9/uU
	hAT2i9NLUI60p0kFZaz7jEz1uYZkg89oEVyGvLYQ5RxpuwLcV70AoylsCvhYYjZcqPmQA7FjkyfOJ
	pTN2Qpt2rwh0HCsmBLnEDjb1TlyhHX1NIXiIi4Yf7+datAgb+g2UiihUgtPUSpcTmS6V99X6TjN0P
	f6QsQ/7JvppZ3MzNGJZQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qG2Bm-008Oee-2j;
	Sun, 02 Jul 2023 18:52:50 +0000
Received: from mail-ed1-x531.google.com ([2a00:1450:4864:20::531])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qG2Bj-008ObX-0g
	for linux-rockchip@lists.infradead.org;
	Sun, 02 Jul 2023 18:52:48 +0000
Received: by mail-ed1-x531.google.com with SMTP id 4fb4d7f45d1cf-51d804c7d14so4103614a12.3
        for <linux-rockchip@lists.infradead.org>; Sun, 02 Jul 2023 11:52:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1688323965; x=1690915965;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=ValAMvvW7bl+asxU+IEVVuNVd8PtfkHOrE7iQKr5VEQ=;
        b=GegptdCKBK4ks+1SEEtk7wBbjnbKg8gT8075KEIQ+BqAICgQuhkXEQEoLqkJzl/tyO
         yjNhADLhAO+LCtdjjdVn/bssVpZ5dz0vs1DM8Gp/N2n5rFGrERnbVcD436PWeD5P7wTy
         niLPD6FWIBT2Tu2U9zrUuGTifpS/q+HI4UJykHTd4JnfixfEjIoMhYtgjusaEUgvpSFt
         1sYlpdev1uCefGA0H/mJp8apUSsbDRvhSUzdMY5rnE9oRd04DOr6oZUk0jzMeNmXQEtO
         agFROlSAKG5yp2xF/vNS2b4sn0DUafaoq3+tBM2dNtb08HLXBNaaYagB60VC9C6F+88u
         9Jzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1688323965; x=1690915965;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ValAMvvW7bl+asxU+IEVVuNVd8PtfkHOrE7iQKr5VEQ=;
        b=AKn31FoX7FnBaxF8wvOAmIjfpDRhuo7ekZ9tFltOwy9H/NfQ+2pZROA0VgKvRF44aV
         y42gocUe712BJqmuceDKiVbVCsy/H07saA+Y/YezJpB7N4AaUNXRiDPJsWKYrgyGS8/P
         HIsQq+SZlT1x8A35K08GUhGS5MmtOTYJcbTh5O52jUFaJDoOg9CWO0yf+EdcWYNlDaii
         3wlbBEShe7vpPdupFKW1RlUw3yWM68RMrTb7fqsIZcEovqZ3PejqYFWF5o57wdmpHdz2
         lLfepDw9sH0IjKhjwTfYZrrv3dYpiLjSOZQNz10ejlfPxd2D6QPI5Jin75a+GPrDirvQ
         6OtQ==
X-Gm-Message-State: AC+VfDxFYUhSRCQWEzySsFrlxNn6FPRxcOVuH9DHSuol2l2atbF5YF2o
	JRQtUIjHrfLGIIE/850iVDHldA==
X-Google-Smtp-Source: APBJJlEhFDRi0cZoTTkO/OfTnoN12inINwe6GfZI7o+exq2+VZ6gqTza7a/JIKKOM1Q0h0UpVuF7gg==
X-Received: by 2002:a17:906:4dcb:b0:96f:8439:6143 with SMTP id f11-20020a1709064dcb00b0096f84396143mr5905397ejw.40.1688323964907;
        Sun, 02 Jul 2023 11:52:44 -0700 (PDT)
Received: from krzk-bin.. ([217.169.179.6])
        by smtp.gmail.com with ESMTPSA id u19-20020a170906069300b0099364d9f0e2sm838225ejb.98.2023.07.02.11.52.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 02 Jul 2023 11:52:44 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH] arm64: dts: rockchip: minor whitespace cleanup around '='
Date: Sun,  2 Jul 2023 20:52:42 +0200
Message-Id: <20230702185242.44421-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230702_115247_248043_228B9818 
X-CRM114-Status: GOOD (  11.62  )
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

The DTS code coding style expects exactly one space before and after '='
sign.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm64/boot/dts/rockchip/px30.dtsi           | 16 ++++++++--------
 arch/arm64/boot/dts/rockchip/rk3566-box-demo.dts |  2 +-
 .../boot/dts/rockchip/rk3566-radxa-cm3-io.dts    |  4 ++--
 3 files changed, 11 insertions(+), 11 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/px30.dtsi b/arch/arm64/boot/dts/rockchip/px30.dtsi
index 8332c8aaf49b..42ce78beb413 100644
--- a/arch/arm64/boot/dts/rockchip/px30.dtsi
+++ b/arch/arm64/boot/dts/rockchip/px30.dtsi
@@ -291,14 +291,14 @@ power-domain@PX30_PD_GMAC {
 			};
 			power-domain@PX30_PD_MMC_NAND {
 				reg = <PX30_PD_MMC_NAND>;
-				clocks =  <&cru HCLK_NANDC>,
-					  <&cru HCLK_EMMC>,
-					  <&cru HCLK_SDIO>,
-					  <&cru HCLK_SFC>,
-					  <&cru SCLK_EMMC>,
-					  <&cru SCLK_NANDC>,
-					  <&cru SCLK_SDIO>,
-					  <&cru SCLK_SFC>;
+				clocks = <&cru HCLK_NANDC>,
+					 <&cru HCLK_EMMC>,
+					 <&cru HCLK_SDIO>,
+					 <&cru HCLK_SFC>,
+					 <&cru SCLK_EMMC>,
+					 <&cru SCLK_NANDC>,
+					 <&cru SCLK_SDIO>,
+					 <&cru SCLK_SFC>;
 				pm_qos = <&qos_emmc>, <&qos_nand>,
 					 <&qos_sdio>, <&qos_sfc>;
 				#power-domain-cells = <0>;
diff --git a/arch/arm64/boot/dts/rockchip/rk3566-box-demo.dts b/arch/arm64/boot/dts/rockchip/rk3566-box-demo.dts
index 410cd3e5e7bc..322f3e809f15 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-box-demo.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3566-box-demo.dts
@@ -239,7 +239,7 @@ &cpu3 {
 
 &gmac1 {
 	assigned-clocks = <&cru SCLK_GMAC1_RX_TX>, <&cru SCLK_GMAC1>;
-	assigned-clock-parents =  <&cru SCLK_GMAC1_RGMII_SPEED>, <&gmac1_clkin>;
+	assigned-clock-parents = <&cru SCLK_GMAC1_RGMII_SPEED>, <&gmac1_clkin>;
 	phy-mode = "rgmii";
 	clock_in_out = "input";
 	pinctrl-names = "default";
diff --git a/arch/arm64/boot/dts/rockchip/rk3566-radxa-cm3-io.dts b/arch/arm64/boot/dts/rockchip/rk3566-radxa-cm3-io.dts
index 5e4236af4fcb..1b1c67d5b1ef 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-radxa-cm3-io.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3566-radxa-cm3-io.dts
@@ -137,8 +137,8 @@ &hdmi_sound {
 
 &mdio1 {
 	rgmii_phy1: ethernet-phy@0 {
-		compatible="ethernet-phy-ieee802.3-c22";
-		reg= <0x0>;
+		compatible = "ethernet-phy-ieee802.3-c22";
+		reg = <0x0>;
 	};
 };
 
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
