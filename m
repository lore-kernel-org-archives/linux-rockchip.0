Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8CA28ECAAD8
	for <linux-rockchip@archiver.kernel.org>; Fri, 16 Sep 2022 16:04:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=mAkAL/oD4mz7wautyb8luUQNgNGwh4CpEgp3VcPDfvw=; b=jD5+5y77uOgk6j
	NBElI2f+wz8YYKVqpjcT4sdLDwaj6XYApVxxE/hVbCFOVfoCdNb5frIHZ27y+qEz9DGcLnCfJMnc+
	JNN39tmwlkqSqIz5B4J65w32Rumd7dAyzABi2WjrqpaqSoU7oAta0XsiAs8xf7baOdtjWbo7dTgiN
	2/1elR3kcCPZJzSF9eL3e/OhM4ej1PPuERxx+KXUZkSnmXS9RXEZ5cRWuqE9x0DliTvBugsUylb+f
	LMAeLIbE68w3vj0ASO1cD8ZpKz6f32S3eGQj4jE5p7oguq6AQXFQLs8eSSH1y4/8pidNMlfULi5P9
	wersRpYqxAodu2SJIVNQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oZDow-00EpsL-Ks; Fri, 16 Sep 2022 16:04:02 +0000
Received: from mail-ed1-x534.google.com ([2a00:1450:4864:20::534])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oZDob-00EpjK-9m; Fri, 16 Sep 2022 16:03:42 +0000
Received: by mail-ed1-x534.google.com with SMTP id z97so32117413ede.8;
        Fri, 16 Sep 2022 09:03:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-disposition:mime-version:message-id:subject:to:from:date
         :from:to:cc:subject:date;
        bh=0tzsYhIa/dJvbCToayIrS0oYwHSfAteRC0zZoxGOrYs=;
        b=ood1pSNoIDGVsXsJLLimQBf0wBeePDy5702cPx3nGCu0Tnl5hw29tfYIC6dLIOgtyI
         FCvrpwOEjXHHFrpZ8hDRrIpUYxFl+eIS42VhT4Mj8vjyvHWojC675/LjbrLdtzIqeFMh
         f8Y5jsO50gTRwTenIEEMto21rJ2DEVR7uTQOYNUkyJFRiynrJhVfYed2GCMrrcgIoIc5
         JkAYBUZwukXx3y4hgSTK8IuDAvMvWCL6gzq9A/66QgqK1voi7i17NXA0da+TyO/VfiVF
         +FKM1XvridpgPulfJUEikthb2GszkqrgaE49V+rRINW5pHeFY73yFj0ckEeI8Phxx7UZ
         nzWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-disposition:mime-version:message-id:subject:to:from:date
         :x-gm-message-state:from:to:cc:subject:date;
        bh=0tzsYhIa/dJvbCToayIrS0oYwHSfAteRC0zZoxGOrYs=;
        b=T9MRmptmrJKaubpAVBYV3cd+QZlAgNf+PvkHwLiVr9qLv7gs/VjJYs2IR2qZtrtsZP
         jmKn8sIUOyFcLmfXBkTgn2ZsH9x78vXNHJyEwqzQgHHW5ihFTPrQs/P61CUM5tLFcHVj
         V72Rst5JhgeI2uA7o9Jc8flzHhH7FsSmrIScQj0dP5gMoDf31l8ZiZuVUxMs1SbJR006
         IQt1dGwRfh4VbvXUg7zlohFnlF3ngDBnXTqKeNfAPwVWoXTplN4+ca2XiV+y219AwLDQ
         2EEC/hUaJkaLWm27zpJCUS9w6ivFmGE1MurxhlKhaHqUwxGANqAAqjAWeWbzSGHOIP8s
         wkXw==
X-Gm-Message-State: ACrzQf0eF7p6kHTfAlxQmNvM45XIZd0GPLVYH+lda2srXB1x1qq5geOd
	5kHy3yj12PR6fE/3dFgoW0k=
X-Google-Smtp-Source: AMsMyM5npQxF7K1v7kagePkuwRUXy27ta1vg9zfBOyLq7NF5/u9kulaO10bqfVSrJZ3HjJZO6N9woQ==
X-Received: by 2002:a05:6402:34c8:b0:451:c7db:4984 with SMTP id w8-20020a05640234c800b00451c7db4984mr4523980edc.171.1663344217479;
        Fri, 16 Sep 2022 09:03:37 -0700 (PDT)
Received: from lab.hqhome163.com ([194.183.10.152])
        by smtp.gmail.com with ESMTPSA id la6-20020a170907780600b0078015cebd8csm4780157ejc.117.2022.09.16.09.03.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 16 Sep 2022 09:03:36 -0700 (PDT)
Date: Fri, 16 Sep 2022 15:58:50 +0000
From: Alessandro Carminati <alessandro.carminati@gmail.com>
To: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH v3 1/3] arm64: dts: rockchip: k3566-quartz64-a: fix names
 entries
Message-ID: <YySdOhxoFI/hkRN3@lab.hqhome163.com>
MIME-Version: 1.0
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220916_090341_360257_857710D3 
X-CRM114-Status: GOOD (  13.25  )
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

Fixes: "No underscores in node names" general rule,
Fixes: The newly agreed on scheme for regulators to have
"-regulator" at the end

Signed-off-by: Alessandro Carminati <alessandro.carminati@gmail.com>
---
 .../boot/dts/rockchip/rk3566-quartz64-a.dts   | 22 +++++++++----------
 1 file changed, 11 insertions(+), 11 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts b/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts
index d943559b157c..a30b17fd3c27 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts
@@ -28,7 +28,7 @@ gmac1_clkin: external-gmac1-clock {
 		#clock-cells = <0>;
 	};
 
-	fan: gpio_fan {
+	fan: gpio-fan {
 		compatible = "gpio-fan";
 		gpios = <&gpio0 RK_PD5 GPIO_ACTIVE_HIGH>;
 		gpio-fan,speed-map = <0    0
@@ -38,7 +38,7 @@ fan: gpio_fan {
 		#cooling-cells = <2>;
 	};
 
-	hdmi-con {
+	hdmi-connector {
 		compatible = "hdmi-connector";
 		type = "a";
 
@@ -116,7 +116,7 @@ simple-audio-card,codec {
 		};
 	};
 
-	vcc12v_dcin: vcc12v_dcin {
+	vcc12v_dcin: vcc12v-dcin-regulator {
 		compatible = "regulator-fixed";
 		regulator-name = "vcc12v_dcin";
 		regulator-always-on;
@@ -139,7 +139,7 @@ vbus: vbus {
 		vin-supply = <&vcc12v_dcin>;
 	};
 
-	vcc3v3_pcie_p: vcc3v3-pcie-p-regulator {
+	vcc3v3_pcie_p: vcc3v3-p-regulator {
 		compatible = "regulator-fixed";
 		enable-active-high;
 		gpio = <&gpio0 RK_PC6 GPIO_ACTIVE_HIGH>;
@@ -151,7 +151,7 @@ vcc3v3_pcie_p: vcc3v3-pcie-p-regulator {
 		vin-supply = <&vcc_3v3>;
 	};
 
-	vcc5v0_usb: vcc5v0_usb {
+	vcc5v0_usb: vcc5v0-usb-regulator {
 		compatible = "regulator-fixed";
 		regulator-name = "vcc5v0_usb";
 		regulator-always-on;
@@ -165,7 +165,7 @@ vcc5v0_usb: vcc5v0_usb {
 	 * the host ports are sourced from vcc5v0_usb
 	 * the otg port is sourced from vcc5v0_midu
 	 */
-	vcc5v0_usb20_host: vcc5v0_usb20_host {
+	vcc5v0_usb20_host: vcc5v0-usb20-host-regulator {
 		compatible = "regulator-fixed";
 		enable-active-high;
 		gpio = <&gpio4 RK_PB5 GPIO_ACTIVE_HIGH>;
@@ -177,7 +177,7 @@ vcc5v0_usb20_host: vcc5v0_usb20_host {
 		vin-supply = <&vcc5v0_usb>;
 	};
 
-	vcc5v0_usb20_otg: vcc5v0_usb20_otg {
+	vcc5v0_usb20_otg: vcc5v0-usb20-otg-regulator {
 		compatible = "regulator-fixed";
 		enable-active-high;
 		gpio = <&gpio4 RK_PB5 GPIO_ACTIVE_HIGH>;
@@ -187,7 +187,7 @@ vcc5v0_usb20_otg: vcc5v0_usb20_otg {
 		vin-supply = <&dcdc_boost>;
 	};
 
-	vcc3v3_sd: vcc3v3_sd {
+	vcc3v3_sd: vcc3v3-sd-regulator {
 		compatible = "regulator-fixed";
 		enable-active-low;
 		gpio = <&gpio0 RK_PA5 GPIO_ACTIVE_LOW>;
@@ -201,7 +201,7 @@ vcc3v3_sd: vcc3v3_sd {
 	};
 
 	/* sourced from vbus and vcc_bat+ via rk817 sw5 */
-	vcc_sys: vcc_sys {
+	vcc_sys: vcc-sys-regulator {
 		compatible = "regulator-fixed";
 		regulator-name = "vcc_sys";
 		regulator-always-on;
@@ -212,7 +212,7 @@ vcc_sys: vcc_sys {
 	};
 
 	/* sourced from vcc_sys, sdio module operates internally at 3.3v */
-	vcc_wl: vcc_wl {
+	vcc_wl: vcc-wl-regulator {
 		compatible = "regulator-fixed";
 		regulator-name = "vcc_wl";
 		regulator-always-on;
@@ -249,7 +249,7 @@ &cpu3 {
 
 &cpu_thermal {
 	trips {
-		cpu_hot: cpu_hot {
+		cpu_hot: cpu-hot {
 			temperature = <55000>;
 			hysteresis = <2000>;
 			type = "active";
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
