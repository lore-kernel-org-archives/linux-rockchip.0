Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 50BDEC7618E
	for <linux-rockchip@archiver.kernel.org>; Fri, 21 Apr 2023 15:26:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=LMTN+7KHh2zbdh3rM3OcY2iWTne7V6Z/tTowLGzL/u4=; b=jBi8TU1LnhaYTe
	Ol9Q79fZHVJ1UZAqBBj+H9kSPyCz4D4aLwvTpy/gIxkwtSnQRjgN1Cn28QUCNh1pojuhuUwE5yCOu
	r94V9ujLFYsFE6e9q/PZlYJW4CMWnjPyLU8nfo67uTyodqI9KhY7tCHDQr5n8pUltLfnWOKkNAWe4
	8WoMAaYQsBy7a454QwTF5itUARNot+j+RnrTprC1J8yC4yc99R6bQItk8MCXgg6gcTX8Bou7kokwB
	N+HuTIfaHPS9CzEB2EDIQw44rbuiAvI319FEsLU/85Avu+m9KQBxVMsaDYHqqtSelgoTDs59mBN11
	lo0xlkueZEZIvw7A1/Uw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1ppsek-00BH75-0p;
	Fri, 21 Apr 2023 15:26:38 +0000
Received: from mail-wm1-x32d.google.com ([2a00:1450:4864:20::32d])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1ppseg-00BH5q-29;
	Fri, 21 Apr 2023 15:26:36 +0000
Received: by mail-wm1-x32d.google.com with SMTP id 5b1f17b1804b1-3f1728c2a57so19615675e9.0;
        Fri, 21 Apr 2023 08:26:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1682090792; x=1684682792;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Sj/J7bBG6FjM8tAyQNQhnbZ2Rmtu2/+gz7MFzMP1cA8=;
        b=MHvBTVrIttJbs0SZk5eiJLxbUaG74Sfr1EvU0Edd7JVzcuWZvu9RcVyYv6JxRZDfzP
         f9YEQo1Okn+muqR7g6/eg7VcWVTy9NGGRiuRLlafK08Bpf8F3XyKf8LaxGul7OiTECaO
         5oKzQwe7R9xqU35OEJ/8qALhWkKSNK1ogkbb1oIT19oZbj+s/Ayx5oWA5F9Ls1IBS//8
         ZDL5UW2TId5MgsixOw6CiW2hvkuNAiHZX3bCsdV4ytX67STBSNEOVudgmyy+Ep8sRSGM
         uzm0Is0qWofMsM5wDLWadusSdtn64uKwK0gwZSGzTEBio4rnkxNRND34+QrTwb7m/eiQ
         TBlg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682090792; x=1684682792;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Sj/J7bBG6FjM8tAyQNQhnbZ2Rmtu2/+gz7MFzMP1cA8=;
        b=BRjXcNKi5bjCv5Jeh1umVE19zSS34C5EERtyP4c2UwoXcsxzA/5z7tZD2Pp0vbN1FD
         JcTKrL7FxRdQq0luRuxHJYP3bavqJ6EOFz9423hqR27q1+M+SxFhCg/Pg0UL5T36H0NF
         daZwZMuzgPFLXOKWGdsWxownuPxdLABq3rGFTC4PD8JdIIQaWnBgmhjLxH48psLM+gnn
         o/FxLVnHOcaClmseaGINiTEDHEXtVltJx8VvrPURDXNOfQRZd/v3kAQzNBG++nJojlTf
         OMzH0l8FMKYJJdb4EriQ37063rp1RQfayAXt2aop1nLYfylepszMpYLSJtbdiYOMYiJ+
         9xOg==
X-Gm-Message-State: AAQBX9ffqUTNvyHAXG/lNW16FM2Pq9fukPnavCzVzzmhGbO6DAAXjMTb
	P+UGcJd3OHgIZRhSvnMo5AA=
X-Google-Smtp-Source: AKy350Yxinw9SGq3XrBKhx6z7PPrrBznT5wZk4Zl9gpfkCIh1CtMRhsQD2QqD1qHq6nHgxWbSXUeZQ==
X-Received: by 2002:a1c:cc04:0:b0:3f0:9f9b:1665 with SMTP id h4-20020a1ccc04000000b003f09f9b1665mr2276223wmb.3.1682090791749;
        Fri, 21 Apr 2023 08:26:31 -0700 (PDT)
Received: from archbox.v.cablecom.net (84-72-105-84.dclient.hispeed.ch. [84.72.105.84])
        by smtp.gmail.com with ESMTPSA id a12-20020a05600c224c00b003f1788eeffesm8363153wmm.43.2023.04.21.08.26.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 Apr 2023 08:26:31 -0700 (PDT)
From: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
To: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Peter Geis <pgwipeout@gmail.com>
Cc: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2] arm64: dts: rockchip: fix nEXTRST on SOQuartz
Date: Fri, 21 Apr 2023 17:26:10 +0200
Message-Id: <20230421152610.21688-1-frattaroli.nicolas@gmail.com>
X-Mailer: git-send-email 2.40.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230421_082634_701972_DE49A13D 
X-CRM114-Status: GOOD (  15.69  )
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

In pre-production prototypes (of which I only know one person
having one, Peter Geis), GPIO0 pin A5 was tied to the SDMMC
power enable pin on the CM4 connector. On all production models,
this is not the case; instead, this pin is used for the nEXTRST
signal, and the SDMMC power enable pin is always pulled high.

Since everyone currently using the SOQuartz device trees will
want this change, it is made to the tree without splitting the
trees into two separate ones of which users will then inevitably
choose the wrong one.

This fixes USB and PCIe on a wide variety of CM4IO-compatible
boards which use the nEXTRST signal.

Fixes: 5859b5a9c3ac ("arm64: dts: rockchip: add SoQuartz CM4IO dts")
Signed-off-by: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
---
Changes in v2:
 - use GPIO hog instead of a fake regulator

 .../boot/dts/rockchip/rk3566-soquartz-cm4.dts | 18 +++++++-----
 .../boot/dts/rockchip/rk3566-soquartz.dtsi    | 29 +++++++++----------
 2 files changed, 24 insertions(+), 23 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3566-soquartz-cm4.dts b/arch/arm64/boot/dts/rockchip/rk3566-soquartz-cm4.dts
index 263ce40770dd..cddf6cd2fecb 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-soquartz-cm4.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3566-soquartz-cm4.dts
@@ -28,6 +28,16 @@ vcc_5v: vcc-5v-regulator {
 		regulator-max-microvolt = <5000000>;
 		vin-supply = <&vcc12v_dcin>;
 	};
+
+	vcc_sd_pwr: vcc-sd-pwr-regulator {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc_sd_pwr";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		vin-supply = <&vcc3v3_sys>;
+	};
 };
 
 /* phy for pcie */
@@ -130,13 +140,7 @@ &saradc {
 };
 
 &sdmmc0 {
-	vmmc-supply = <&sdmmc_pwr>;
-	status = "okay";
-};
-
-&sdmmc_pwr {
-	regulator-min-microvolt = <3300000>;
-	regulator-max-microvolt = <3300000>;
+	vmmc-supply = <&vcc_sd_pwr>;
 	status = "okay";
 };
 
diff --git a/arch/arm64/boot/dts/rockchip/rk3566-soquartz.dtsi b/arch/arm64/boot/dts/rockchip/rk3566-soquartz.dtsi
index ce7165d7f1a1..3036985e2567 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-soquartz.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3566-soquartz.dtsi
@@ -104,16 +104,6 @@ vcc3v3_sys: vcc3v3-sys-regulator {
 		regulator-max-microvolt = <3300000>;
 		vin-supply = <&vcc5v0_sys>;
 	};
-
-	sdmmc_pwr: sdmmc-pwr-regulator {
-		compatible = "regulator-fixed";
-		enable-active-high;
-		gpio = <&gpio0 RK_PA5 GPIO_ACTIVE_HIGH>;
-		pinctrl-names = "default";
-		pinctrl-0 = <&sdmmc_pwr_h>;
-		regulator-name = "sdmmc_pwr";
-		status = "disabled";
-	};
 };
 
 &cpu0 {
@@ -155,6 +145,19 @@ &gmac1m0_clkinout
 	status = "disabled";
 };
 
+&gpio0 {
+	nextrst-hog {
+		gpio-hog;
+		/*
+		 * GPIO_ACTIVE_LOW + output-low here means that the pin is set
+		 * to high, because output-low decides the value pre-inversion.
+		 */
+		gpios = <RK_PA5 GPIO_ACTIVE_LOW>;
+		output-low;
+		line-name = "nEXTRST";
+	};
+};
+
 &gpu {
 	mali-supply = <&vdd_gpu>;
 	status = "okay";
@@ -538,12 +541,6 @@ wifi_enable_h: wifi-enable-h {
 			rockchip,pins = <2 RK_PC2 RK_FUNC_GPIO &pcfg_pull_none>;
 		};
 	};
-
-	sdmmc-pwr {
-		sdmmc_pwr_h: sdmmc-pwr-h {
-			rockchip,pins = <0 RK_PA5 RK_FUNC_GPIO &pcfg_pull_none>;
-		};
-	};
 };
 
 &pmu_io_domains {
-- 
2.40.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
