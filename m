Return-Path: <SRS0=Db5J=MU=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6A74BC4338F
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Jul 2021 18:04:24 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 35A5D60EB9
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Jul 2021 18:04:24 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 35A5D60EB9
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FqkAtqSX2ve5L0b4CA/RDyZN6iQ3xqrSv5tVFS11SII=; b=kn2bWOeE69C2IL
	Ru8CZrshYKGlBeFZhmpEANN4MwcMEB2VPftgP/OuwiXDwcMKeRa+l/aOsYXkx2oYyQPPj+OGJOCRq
	n7zklfYm3p+ui6I7o4px8PZNB/K2HRby/nwMAAhtPXg4WQEZq0ic3wCcBmXE5//ngc0JEaYXwpzhm
	lykLrFela2YxknlOrb3Kaz0I8ofYg3h4vrW6c4HkTjoQR+ufIJ7CahASiWMVFF2EljY1cPeDbWUHp
	+sqi2zq/dpwPCWIuGf3e/ajKyEtAdlcNYlvLfDktPgfMwOV2u6Ws9aj4UYihfUoqguFXxeJIKGY/a
	STLZXgD8YfRs79bChCKA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m8nul-001z6a-O3; Wed, 28 Jul 2021 18:04:19 +0000
Received: from mail-qk1-x731.google.com ([2607:f8b0:4864:20::731])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m8nra-001xpv-Qm; Wed, 28 Jul 2021 18:01:06 +0000
Received: by mail-qk1-x731.google.com with SMTP id z24so3088200qkz.7;
 Wed, 28 Jul 2021 11:01:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=hlccHpa8acGXb7hg5ss9czD81tD5ZKFSFRVC1kWUrxw=;
 b=Ojz77QqKjmVztoMw3rsxwbE690JvJsOr2S8VEZWpAA5pf7u2buke7yp4IJ0NoaXvc1
 UwC6gt+9oj969NZ1poLr9aD1sudJr2kcGqllK12KJSWINb0XdcL8BUU0GcW2vMtEgd+Z
 MXI+f7XlI/LWHSOYmO+BXY4B6d5mqS3XGwjklvxeN4UK5Qd/d6A83ImexLtp3WoITgI7
 LeJ2EaMuoJa6T+i7lmXMOiyRnW715+g6WdjMjulFdp/lXkUj7aIWML38K5W9QivAnExw
 GM7RWAi/MNYkDU/e43XL5fPjq9fPABMbh2CzEYGhbu2s5P/PP95E/EBvQO6UB+XB2YG9
 PzZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=hlccHpa8acGXb7hg5ss9czD81tD5ZKFSFRVC1kWUrxw=;
 b=PZrlzluoOUA+2Z0/TBieBUISUFzVc0NryMPYlcwaIpT60SQ5Wh8nNsFT9FdaQstABJ
 JIzveXUnWTdE1ioqaJL2HCAeXe7qnXSOx+/SNs1k59Hb02qHayBPEUwcK51f6QbvEz0p
 fBhu1E7A/+wnv7AMhD/G+84Q5rfc/aUTcgWiLSJ8vpYc9AqAFkfaxjqU0vqq0gkzTxuC
 v5QdQXCRXYXXjX8tA5FOX5HldibVnZK2euF82xjY1H4TQ3HJy+DutedybQo5O/nyGH2x
 V2/tk3d8qrbUE6HuEVs9isxS6BMHS4B5MqsfHSXJsaPqdOpXW4u+DXTT4UdKihL9RiNh
 qyWg==
X-Gm-Message-State: AOAM5323KjzJL8HWOwef2nG7HRs5sHBStiM/XCAzpNjU/LvhT+RX9on4
 GE8+1XXs3g7Y9THl+7W5GfI=
X-Google-Smtp-Source: ABdhPJwtPXGltmuVn4d51nUTh5OWU+sQ7JKCW1/OCoG25HkG/Rhw0OCR3b+6aoShqcjmf6mFLgugQA==
X-Received: by 2002:a05:620a:1322:: with SMTP id
 p2mr924099qkj.432.1627495261134; 
 Wed, 28 Jul 2021 11:01:01 -0700 (PDT)
Received: from master-laptop.sparksnet ([2601:153:980:85b1:b58:2ae8:d75f:660a])
 by smtp.gmail.com with ESMTPSA id r5sm223341qtm.75.2021.07.28.11.01.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 28 Jul 2021 11:01:00 -0700 (PDT)
From: Peter Geis <pgwipeout@gmail.com>
To: Rob Herring <robh+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Peter Geis <pgwipeout@gmail.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v2 5/8] arm64: dts: rockchip: add rk3568 tsadc nodes
Date: Wed, 28 Jul 2021 14:00:31 -0400
Message-Id: <20210728180034.717953-6-pgwipeout@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210728180034.717953-1-pgwipeout@gmail.com>
References: <20210728180034.717953-1-pgwipeout@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210728_110104_681162_8342CE67 
X-CRM114-Status: GOOD (  13.14  )
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

Add the thermal and tsadc nodes to the rk3568 device tree.
There are two sensors, one for the cpu, one for the gpu.

Signed-off-by: Peter Geis <pgwipeout@gmail.com>
---
 .../boot/dts/rockchip/rk3568-pinctrl.dtsi     |  7 ++
 arch/arm64/boot/dts/rockchip/rk356x.dtsi      | 70 +++++++++++++++++++
 2 files changed, 77 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3568-pinctrl.dtsi b/arch/arm64/boot/dts/rockchip/rk3568-pinctrl.dtsi
index a588ca95ace2..3b1efaf2646e 100644
--- a/arch/arm64/boot/dts/rockchip/rk3568-pinctrl.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3568-pinctrl.dtsi
@@ -2420,6 +2420,13 @@ spi3m1_cs1: spi3m1-cs1 {
 	};
 
 	tsadc {
+		/omit-if-no-ref/
+		tsadc_pin: tsadc-pin {
+			rockchip,pins =
+				/* tsadc_pin */
+				<0 RK_PA1 0 &pcfg_pull_none>;
+		};
+
 		/omit-if-no-ref/
 		tsadcm0_shut: tsadcm0-shut {
 			rockchip,pins =
diff --git a/arch/arm64/boot/dts/rockchip/rk356x.dtsi b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
index fbd9f1c366ff..c74072941da1 100644
--- a/arch/arm64/boot/dts/rockchip/rk356x.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
@@ -50,6 +50,7 @@ cpu0: cpu@0 {
 			compatible = "arm,cortex-a55";
 			reg = <0x0 0x0>;
 			clocks = <&scmi_clk 0>;
+			#cooling-cells = <2>;
 			enable-method = "psci";
 			operating-points-v2 = <&cpu0_opp_table>;
 		};
@@ -58,6 +59,7 @@ cpu1: cpu@100 {
 			device_type = "cpu";
 			compatible = "arm,cortex-a55";
 			reg = <0x0 0x100>;
+			#cooling-cells = <2>;
 			enable-method = "psci";
 			operating-points-v2 = <&cpu0_opp_table>;
 		};
@@ -66,6 +68,7 @@ cpu2: cpu@200 {
 			device_type = "cpu";
 			compatible = "arm,cortex-a55";
 			reg = <0x0 0x200>;
+			#cooling-cells = <2>;
 			enable-method = "psci";
 			operating-points-v2 = <&cpu0_opp_table>;
 		};
@@ -74,6 +77,7 @@ cpu3: cpu@300 {
 			device_type = "cpu";
 			compatible = "arm,cortex-a55";
 			reg = <0x0 0x300>;
+			#cooling-cells = <2>;
 			enable-method = "psci";
 			operating-points-v2 = <&cpu0_opp_table>;
 		};
@@ -773,6 +777,72 @@ uart9: serial@fe6d0000 {
 		status = "disabled";
 	};
 
+	thermal_zones: thermal-zones {
+		cpu_thermal: cpu-thermal {
+			polling-delay-passive = <100>;
+			polling-delay = <1000>;
+
+			thermal-sensors = <&tsadc 0>;
+
+			trips {
+				cpu_alert0: cpu_alert0 {
+					temperature = <70000>;
+					hysteresis = <2000>;
+					type = "passive";
+				};
+				cpu_alert1: cpu_alert1 {
+					temperature = <75000>;
+					hysteresis = <2000>;
+					type = "passive";
+				};
+				cpu_crit: cpu_crit {
+					temperature = <95000>;
+					hysteresis = <2000>;
+					type = "critical";
+				};
+			};
+
+			cooling-maps {
+				map0 {
+					trip = <&cpu_alert0>;
+					cooling-device =
+						<&cpu0 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
+						<&cpu1 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
+						<&cpu2 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
+						<&cpu3 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>;
+				};
+			};
+		};
+
+		gpu_thermal: gpu-thermal {
+			polling-delay-passive = <20>; /* milliseconds */
+			polling-delay = <1000>; /* milliseconds */
+
+			thermal-sensors = <&tsadc 1>;
+		};
+	};
+
+	tsadc: tsadc@fe710000 {
+		compatible = "rockchip,rk3568-tsadc";
+		reg = <0x0 0xfe710000 0x0 0x100>;
+		interrupts = <GIC_SPI 115 IRQ_TYPE_LEVEL_HIGH>;
+		assigned-clocks = <&cru CLK_TSADC_TSEN>, <&cru CLK_TSADC>;
+		assigned-clock-rates = <17000000>, <700000>;
+		clocks = <&cru CLK_TSADC>, <&cru PCLK_TSADC>;
+		clock-names = "tsadc", "apb_pclk";
+		resets = <&cru SRST_TSADC>, <&cru SRST_P_TSADC>,
+			 <&cru SRST_TSADCPHY>;
+		reset-names = "tsadc", "tsadc-apb", "tsadc-phy";
+		rockchip,grf = <&grf>;
+		rockchip,hw-tshut-temp = <95000>;
+		pinctrl-names = "init", "default", "sleep";
+		pinctrl-0 = <&tsadc_pin>;
+		pinctrl-1 = <&tsadc_shutorg>;
+		pinctrl-2 = <&tsadc_pin>;
+		#thermal-sensor-cells = <1>;
+		status = "disabled";
+	};
+
 	saradc: saradc@fe720000 {
 		compatible = "rockchip,rk3568-saradc", "rockchip,rk3399-saradc";
 		reg = <0x0 0xfe720000 0x0 0x100>;
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
