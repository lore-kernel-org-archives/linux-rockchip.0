Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 651B3C433EF
	for <linux-rockchip@archiver.kernel.org>; Thu, 26 May 2022 20:48:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TfoCBOoSazCHpmHpqZlB7VUzQV8oeYd1yNz5WTUwL4c=; b=D+b00YCOzuKD2Z
	m4AW/+lkIAkcYDDW6m4GOCKgZaSnLXgwuOl3NrfLOx55EwYX0js/ncV4sWMJfuPkfEyO+hMFF2Caj
	a/lrZpuf8vj/GZUetPDSkwZFSqE7IGmKRJ+n4DabbwE4fRZq42lzOMSiXvWFAu0m6ibY08BP8Xx81
	u8+vVbYDS8UjBLw5zsXc6czpPbYa367rV8QHLZtSuA+1oXmKh0tgcet1OhXe5t6xz5G3c2oWDSik/
	B6j9Qx8oBey3djS2+6tdU4AxJhN/C2WIJxiBmykiBvZxzXXW8uGDzI93E0FY1m+tOXZ77NrwFAjzl
	uhM1QzLTlPa97+hwXJ7g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nuKPJ-00FqmJ-Kt; Thu, 26 May 2022 20:48:33 +0000
Received: from mail-ed1-x52c.google.com ([2a00:1450:4864:20::52c])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nuKJP-00FoD1-TN
	for linux-rockchip@lists.infradead.org; Thu, 26 May 2022 20:42:30 +0000
Received: by mail-ed1-x52c.google.com with SMTP id t5so3170276edc.2
        for <linux-rockchip@lists.infradead.org>; Thu, 26 May 2022 13:42:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=ADqKJdbqKJgJ+Kg0DAm3wQJ6kaap7SQu0KoHV5lMi6o=;
        b=UW/PIlwYn0ZoAUDaWjJIFIjFaJDJDpE22GNHHXfyeFrpw8sAg9hGAqJUuXHhlcOI0S
         Uuk1MqkSrW2j/eY1+x65UOWevsmO1H24hHTlmrLIzAaBy8fWfIHuESxie3PDbhitU4XI
         UuiZwqwRGIa6jap7jzXiEx8bskStr/mKiHi0Qf1BDp7P8sWEWT6P/x/7aVbaY/A0PXFF
         Q3/h3CdAONbLeV2+sinmhsRtSab2nY8417dlg1stPZtYAp6u1/ymJ/0nCgSeAUkAawHB
         k/ZlXCMweXeHyK3Ym0mGTg8kauAy0Lb4/btc23UYeB4F7ae+HVKBmETprFUIljfL5hM6
         JZpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=ADqKJdbqKJgJ+Kg0DAm3wQJ6kaap7SQu0KoHV5lMi6o=;
        b=0JP9Wco+bKiHNeDrXZ3ZGVkEtN4+48LCUgZ/cN01b1FpVR649hTQIXP0NIoEEEkgC1
         cu1OmITNL5wszf597f//wEwnw0be5KNQgXlCe5YoaMswCV4IlqSxkFKrIN+PEelD1r3d
         SoQe7OIdAWTP4fyT+n20rIRfnJfsb2tR12bcT8ZKWw2UEt9fXOHWwZQdVcWTHIiTj9l7
         pTHjvDtrdEEYTRz3PbicazmDv+vEB4hZLQ+eU0Qgspq8v9Nn6sHwtyDWO8Vhq0bEcSNx
         aGZ8bzVjX1giLK+J2RnqP8S1upnnZBWcDJWB5A4k5/5sbIKisuu/cVRAsxDVH+8h3JTR
         k0aQ==
X-Gm-Message-State: AOAM530CO3DJyFaOOowRq7P5iITojzxTHOQXYVdRMcfjTZZTMfZXKiL5
	dOu5kDXJZvnTSPtM2GwDZ0TrhA==
X-Google-Smtp-Source: ABdhPJy3RfkUoqMH5w0G5VrkKRX7O3+5DdIFoLZRfjDU7Ds5U1HKL4bPRFugK9rvtFvsNaJPlNg6zw==
X-Received: by 2002:a05:6402:1113:b0:428:679e:f73f with SMTP id u19-20020a056402111300b00428679ef73fmr42108111edv.378.1653597746602;
        Thu, 26 May 2022 13:42:26 -0700 (PDT)
Received: from localhost.localdomain (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id r17-20020a50d691000000b0042617ba6389sm1239732edi.19.2022.05.26.13.42.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 May 2022 13:42:26 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Arnd Bergmann <arnd@arndb.de>,
	Olof Johansson <olof@lixom.net>,
	arm@kernel.org,
	soc@kernel.org,
	Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 3/3] ARM: dts: rv1108: adjust whitespace around '='
Date: Thu, 26 May 2022 22:42:18 +0200
Message-Id: <20220526204218.832029-3-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220526204218.832029-1-krzysztof.kozlowski@linaro.org>
References: <20220526204218.832029-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220526_134228_077728_79CACBFD 
X-CRM114-Status: GOOD (  10.76  )
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

Fix whitespace coding style: use single space instead of tabs or
multiple spaces around '=' sign in property assignment.  No functional
changes (same DTB).

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

---

Output compared with dtx_diff and fdtdump.
---
 arch/arm/boot/dts/rv1108-elgin-r1.dts | 14 +++++++-------
 arch/arm/boot/dts/rv1108-evb.dts      | 14 +++++++-------
 arch/arm/boot/dts/rv1108.dtsi         |  2 +-
 3 files changed, 15 insertions(+), 15 deletions(-)

diff --git a/arch/arm/boot/dts/rv1108-elgin-r1.dts b/arch/arm/boot/dts/rv1108-elgin-r1.dts
index 0c99a5934ebf..2d9994379eb2 100644
--- a/arch/arm/boot/dts/rv1108-elgin-r1.dts
+++ b/arch/arm/boot/dts/rv1108-elgin-r1.dts
@@ -83,7 +83,7 @@ rk805: pmic@18 {
 
 		regulators {
 			vdd_core: DCDC_REG1 {
-				regulator-name= "vdd_core";
+				regulator-name = "vdd_core";
 				regulator-min-microvolt = <700000>;
 				regulator-max-microvolt = <1500000>;
 				regulator-always-on;
@@ -95,7 +95,7 @@ regulator-state-mem {
 			};
 
 			vdd_buck2: DCDC_REG2 {
-				regulator-name= "vdd_buck2";
+				regulator-name = "vdd_buck2";
 				regulator-min-microvolt = <2200000>;
 				regulator-max-microvolt = <2200000>;
 				regulator-always-on;
@@ -106,7 +106,7 @@ regulator-state-mem {
 			};
 
 			vcc_ddr: DCDC_REG3 {
-				regulator-name= "vcc_ddr";
+				regulator-name = "vcc_ddr";
 				regulator-always-on;
 				regulator-boot-on;
 				regulator-state-mem {
@@ -115,7 +115,7 @@ regulator-state-mem {
 			};
 
 			vcc_io: DCDC_REG4 {
-				regulator-name= "vcc_io";
+				regulator-name = "vcc_io";
 				regulator-min-microvolt = <3300000>;
 				regulator-max-microvolt = <3300000>;
 				regulator-always-on;
@@ -127,7 +127,7 @@ regulator-state-mem {
 			};
 
 			vdd_10: LDO_REG1 {
-				regulator-name= "vdd_10";
+				regulator-name = "vdd_10";
 				regulator-min-microvolt = <1000000>;
 				regulator-max-microvolt = <1000000>;
 				regulator-always-on;
@@ -138,7 +138,7 @@ regulator-state-mem {
 			};
 
 			vcc_18: LDO_REG2 {
-				regulator-name= "vcc_18";
+				regulator-name = "vcc_18";
 				regulator-min-microvolt = <1800000>;
 				regulator-max-microvolt = <1800000>;
 				regulator-always-on;
@@ -149,7 +149,7 @@ regulator-state-mem {
 			};
 
 			vdd10_pmu: LDO_REG3 {
-				regulator-name= "vdd10_pmu";
+				regulator-name = "vdd10_pmu";
 				regulator-min-microvolt = <1000000>;
 				regulator-max-microvolt = <1000000>;
 				regulator-always-on;
diff --git a/arch/arm/boot/dts/rv1108-evb.dts b/arch/arm/boot/dts/rv1108-evb.dts
index 46cad7cb94bf..ef150f4ee99d 100644
--- a/arch/arm/boot/dts/rv1108-evb.dts
+++ b/arch/arm/boot/dts/rv1108-evb.dts
@@ -96,7 +96,7 @@ rk805: pmic@18 {
 
 		regulators {
 			vdd_core: DCDC_REG1 {
-				regulator-name= "vdd_core";
+				regulator-name = "vdd_core";
 				regulator-min-microvolt = <700000>;
 				regulator-max-microvolt = <1500000>;
 				regulator-always-on;
@@ -108,7 +108,7 @@ regulator-state-mem {
 			};
 
 			vdd_cam: DCDC_REG2 {
-				regulator-name= "vdd_cam";
+				regulator-name = "vdd_cam";
 				regulator-min-microvolt = <700000>;
 				regulator-max-microvolt = <2000000>;
 				regulator-state-mem {
@@ -117,7 +117,7 @@ regulator-state-mem {
 			};
 
 			vcc_ddr: DCDC_REG3 {
-				regulator-name= "vcc_ddr";
+				regulator-name = "vcc_ddr";
 				regulator-always-on;
 				regulator-boot-on;
 				regulator-state-mem {
@@ -126,7 +126,7 @@ regulator-state-mem {
 			};
 
 			vcc_io: DCDC_REG4 {
-				regulator-name= "vcc_io";
+				regulator-name = "vcc_io";
 				regulator-min-microvolt = <3300000>;
 				regulator-max-microvolt = <3300000>;
 				regulator-always-on;
@@ -138,7 +138,7 @@ regulator-state-mem {
 			};
 
 			vdd_10: LDO_REG1 {
-				regulator-name= "vdd_10";
+				regulator-name = "vdd_10";
 				regulator-min-microvolt = <1000000>;
 				regulator-max-microvolt = <1000000>;
 				regulator-always-on;
@@ -149,7 +149,7 @@ regulator-state-mem {
 			};
 
 			vcc_18: LDO_REG2 {
-				regulator-name= "vcc_18";
+				regulator-name = "vcc_18";
 				regulator-min-microvolt = <1800000>;
 				regulator-max-microvolt = <1800000>;
 				regulator-always-on;
@@ -160,7 +160,7 @@ regulator-state-mem {
 			};
 
 			vdd10_pmu: LDO_REG3 {
-				regulator-name= "vdd10_pmu";
+				regulator-name = "vdd10_pmu";
 				regulator-min-microvolt = <1000000>;
 				regulator-max-microvolt = <1000000>;
 				regulator-always-on;
diff --git a/arch/arm/boot/dts/rv1108.dtsi b/arch/arm/boot/dts/rv1108.dtsi
index c158a7ea86ec..abf3006f0a84 100644
--- a/arch/arm/boot/dts/rv1108.dtsi
+++ b/arch/arm/boot/dts/rv1108.dtsi
@@ -748,7 +748,7 @@ sfc_clk: sfc-clk {
 
 		gmac {
 			rmii_pins: rmii-pins {
-				rockchip,pins =	<1 RK_PC5 2 &pcfg_pull_none>,
+				rockchip,pins = <1 RK_PC5 2 &pcfg_pull_none>,
 						<1 RK_PC3 2 &pcfg_pull_none>,
 						<1 RK_PC4 2 &pcfg_pull_none>,
 						<1 RK_PB2 3 &pcfg_pull_none_drv_12ma>,
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
