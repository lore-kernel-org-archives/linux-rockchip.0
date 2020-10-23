Return-Path: <SRS0=CSn7=D6=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 778A0C388F9
	for <linux-rockchip@archiver.kernel.org>; Fri, 23 Oct 2020 18:18:54 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id DF6AB2192A
	for <linux-rockchip@archiver.kernel.org>; Fri, 23 Oct 2020 18:18:53 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="OwnmseVV";
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="pk9cTuw5"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org DF6AB2192A
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=/IaUgGcSItjMnM39avi6aJkTIP7hUq5eZYpt8EJSFmo=; b=OwnmseVV62TPLkej3BoLKD/i2
	Ejs5sw85RfAE5ylLRgdkiJAZ2QiW8n/JIpLYDova3WjCUPK0LTMGkzcnIz6ODgu+oD2vD9zovDgCo
	3snu8Jyo0uJ3I65ZLbobmbo2l9sunAjWQ8i6x/F2vFiqIrK6DJ/xSQrCxzKexBKikkwF19RaRc3th
	OuBMtGVptUtdoTOzu09lOlBX5Ikz6SkGLX7Kr+itdnr7esOyeZ6oY8VyYj4Ftc3/rgH4ponnu2msd
	BM96VlW+CD4jk2h40OTb9Fi1HSsQd169r9kXeYODchw2NrELjrxUWsAF1taKdkKzE4ZxtzrBIRzbp
	5qkEdt98g==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kW1eL-0007SB-T2; Fri, 23 Oct 2020 18:18:49 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kW1e9-0007Om-Q5
 for linux-rockchip@lists.infradead.org; Fri, 23 Oct 2020 18:18:40 +0000
Received: by mail-pg1-x543.google.com with SMTP id b23so1890806pgb.3
 for <linux-rockchip@lists.infradead.org>; Fri, 23 Oct 2020 11:18:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=TodvX9MTBX7vTykdv70rmek7Lo3V0evCYJjQaUL+VJE=;
 b=pk9cTuw5sWjL9dMKYE/Zfxs3S2rkulRAJrsheIWcrgFP8sZyVF8n+sITafKUJONJr9
 lgdBm3Pr4BRoNjcEasVyfAstxqMSmZBHuE8IJ85+q+He1IihI7qo8yPp9K6n5Ehwc4C6
 DldFcIvPFLQ3qIVmAatrU9ap8S6guuEdQZKnU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=TodvX9MTBX7vTykdv70rmek7Lo3V0evCYJjQaUL+VJE=;
 b=pPYnZMYcMstizpxffAXRbkIp/ceRqps/t+AVxOEN3ZC2KgqU/2trGb/UWmnO6uf0mw
 RsTXSqyYUNBkdg4uJAxr7q+mt1kOVZ1KJ8yW8/2wXZSHFJ3AHzUJXE6BqZVn3xFX2A+h
 jSQ7K+R2bu4ehzHxiWRdJh+kAtUGpNlY31GnJbaQ05mFE/jGcI7trct93LYiLs3GWhQ5
 kEXgYIiP28ZeqUzzWDUIWalnmtIjGq2O0GZBVOoKKPSrgDowqRg+v/UeMpjeEQigQ6N9
 tvsuv5N5YadIXbhbZWPRrda+xWKZUQldSYbwGbhISKElWyq25Xqaho09Hw7sbxENm/v3
 2y2w==
X-Gm-Message-State: AOAM530QXWEdP5FLanJlWPex9Hllg4kpLr4Cmt83+0wGDCSBawax6sqF
 Pt+7+3ycLYqK2brgvAlYUm75UQ==
X-Google-Smtp-Source: ABdhPJxQW2pUQfxcv7j3aOU6N98NepZVuSxtJOAGI9h+/OdIr68fiDyV4dSGLx4Br4bp3DQaku7nRQ==
X-Received: by 2002:a05:6a00:1742:b029:155:dcd2:9155 with SMTP id
 j2-20020a056a001742b0290155dcd29155mr3543036pfc.78.1603477116038; 
 Fri, 23 Oct 2020 11:18:36 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c809:c7a4:2d08:2249:ad54:d32d])
 by smtp.gmail.com with ESMTPSA id q24sm3271162pfn.72.2020.10.23.11.18.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 23 Oct 2020 11:18:35 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>
Subject: [PATCH 2/2] ARM: dts: rockchip: Add SDIO0 node for VMARC SOM
Date: Fri, 23 Oct 2020 23:48:14 +0530
Message-Id: <20201023181814.220974-2-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20201023181814.220974-1-jagan@amarulasolutions.com>
References: <20201023181814.220974-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201023_141837_882401_F26FB31D 
X-CRM114-Status: GOOD (  14.46  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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
Cc: devicetree@vger.kernel.org, Tom Cubie <tom@radxa.com>,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Jagan Teki <jagan@amarulasolutions.com>,
 Suniel Mahesh <sunil@amarulasolutions.com>,
 linux-amarula <linux-amarula@amarulasolutions.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Rockchip RK3288 and RK3399Pro based VMARC SOM has sdio0 for
connecting WiFi/BT devices as a pluggable card via M.2 E-Key.

Add associated sdio0 nodes, properties.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 arch/arm/boot/dts/rk3288-vmarc-som.dtsi       | 40 +++++++++++++++++++
 .../dts/rockchip-radxa-dalang-carrier.dtsi    | 21 ++++++++++
 .../dts/rockchip/rk3399pro-vmarc-som.dtsi     | 16 ++++++++
 3 files changed, 77 insertions(+)

diff --git a/arch/arm/boot/dts/rk3288-vmarc-som.dtsi b/arch/arm/boot/dts/rk3288-vmarc-som.dtsi
index 4a373f5aa600..353d95b9953b 100644
--- a/arch/arm/boot/dts/rk3288-vmarc-som.dtsi
+++ b/arch/arm/boot/dts/rk3288-vmarc-som.dtsi
@@ -231,6 +231,23 @@ regulator-state-mem {
 	};
 };
 
+&i2c1 {
+	clock-frequency = <400000>;
+	status = "okay";
+
+	hym8563: hym8563@51 {
+		compatible = "haoyu,hym8563";
+		reg = <0x51>;
+		#clock-cells = <0>;
+		clock-frequency = <32768>;
+		clock-output-names = "hym8563";
+		pinctrl-names = "default";
+		pinctrl-0 = <&hym8563_int>;
+		interrupt-parent = <&gpio5>;
+		interrupts = <RK_PC3 IRQ_TYPE_LEVEL_LOW>;
+	};
+};
+
 &i2c5 {
 	status = "okay";
 };
@@ -241,10 +258,17 @@ &io_domains {
 	gpio1830-supply = <&vcc_18>;
 	gpio30-supply = <&vcc_io>;
 	sdcard-supply = <&vccio_sd>;
+	wifi-supply = <&vcc_wl>;
 	status = "okay";
 };
 
 &pinctrl {
+	hym8563 {
+		hym8563_int: hym8563-int {
+			rockchip,pins = <5 RK_PC3 RK_FUNC_GPIO &pcfg_pull_up>;
+		};
+	};
+
 	pcfg_pull_none_drv_8ma: pcfg-pull-none-drv-8ma {
 		drive-strength = <8>;
 	};
@@ -260,6 +284,12 @@ pmic_int: pmic-int {
 		};
 	};
 
+	sdio-pwrseq {
+		wifi_enable_h: wifi-enable-h {
+			rockchip,pins = <4 RK_PD4 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+
 	sdmmc {
 		sdmmc_bus4: sdmmc-bus4 {
 			rockchip,pins =
@@ -291,6 +321,16 @@ usb0_en_oc: usb0-en-oc {
 	};
 };
 
+&sdio_pwrseq {
+	/*
+	 * On the module itself this is one of these (depending
+	 * on the actual card populated):
+	 * - SDIO_RESET_L_WL_REG_ON
+	 * - PDN (power down when low)
+	 */
+	reset-gpios = <&gpio4 RK_PD4 GPIO_ACTIVE_LOW>;	/* WIFI_REG_ON */
+};
+
 &usbphy {
 	status = "okay";
 };
diff --git a/arch/arm/boot/dts/rockchip-radxa-dalang-carrier.dtsi b/arch/arm/boot/dts/rockchip-radxa-dalang-carrier.dtsi
index 26b53eac4706..da1d548b7330 100644
--- a/arch/arm/boot/dts/rockchip-radxa-dalang-carrier.dtsi
+++ b/arch/arm/boot/dts/rockchip-radxa-dalang-carrier.dtsi
@@ -15,6 +15,14 @@ clkin_gmac: external-gmac-clock {
 		#clock-cells = <0>;
 	};
 
+	sdio_pwrseq: sdio-pwrseq {
+		compatible = "mmc-pwrseq-simple";
+		clocks = <&hym8563>;
+		clock-names = "ext_clock";
+		pinctrl-names = "default";
+		pinctrl-0 = <&wifi_enable_h>;
+	};
+
 	vcc12v_dcin: vcc12v-dcin-regulator {
 		compatible = "regulator-fixed";
 		regulator-name = "vcc12v_dcin";
@@ -78,6 +86,19 @@ &pwm2 {
 	status = "okay";
 };
 
+&sdio0 {
+	bus-width = <4>;
+	cap-sd-highspeed;
+	cap-sdio-irq;
+	keep-power-in-suspend;
+	mmc-pwrseq = <&sdio_pwrseq>;
+	non-removable;
+	pinctrl-names = "default";
+	pinctrl-0 = <&sdio0_bus4 &sdio0_cmd &sdio0_clk>;
+	sd-uhs-sdr104;
+	status = "okay";
+};
+
 &sdmmc {
 	bus-width = <4>;
 	cap-mmc-highspeed;
diff --git a/arch/arm64/boot/dts/rockchip/rk3399pro-vmarc-som.dtsi b/arch/arm64/boot/dts/rockchip/rk3399pro-vmarc-som.dtsi
index 5d087be04af8..7257494d2831 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399pro-vmarc-som.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399pro-vmarc-som.dtsi
@@ -353,6 +353,12 @@ pmic_int_l: pmic-int-l {
 		};
 	};
 
+	sdio-pwrseq {
+		wifi_enable_h: wifi-enable-h {
+			rockchip,pins = <2 RK_PD3 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+
 	vbus_host {
 		usb1_en_oc: usb1-en-oc {
 			rockchip,pins = <4 RK_PD1 RK_FUNC_GPIO &pcfg_pull_up>;
@@ -371,6 +377,16 @@ &pmu_io_domains {
 	pmu1830-supply = <&vcc_1v8>;
 };
 
+&sdio_pwrseq {
+	/*
+	 * On the module itself this is one of these (depending
+	 * on the actual card populated):
+	 * - SDIO_RESET_L_WL_REG_ON
+	 * - PDN (power down when low)
+	 */
+	reset-gpios = <&gpio2 RK_PD3 GPIO_ACTIVE_LOW>;
+};
+
 &sdhci {
 	bus-width = <8>;
 	mmc-hs400-1_8v;
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
