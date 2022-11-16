Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C6D55C433FE
	for <linux-rockchip@archiver.kernel.org>; Wed, 16 Nov 2022 11:55:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9K6jp0eNDknf5vdSlgQ2fW9oJHJZfYhr6SnopXqswuI=; b=TzBc1u0Ye3z8dY
	pyYrZrrB33UxPwQyQSoubw/2I7HxDWBsEJ+N438ya+nS/WhLquE1MpUL3xvduMBFBorMjAmLGjhqk
	I3OYtZuPkjUow5pRFwFSbohqxgdl1rrjsrrjOIOgJkP6Um42o+RztUIzMSdVBHA6XvL88clSkFaa+
	W+fq0qgBh9QVCZPI5/vpxiW1KhFRxb89ZWptf6OymDtJeLNZWll2Z+VWB3sfoLEVDk5pYMDvJefLo
	QXikql67NedelN313IdhV7KA5B5Z+pke9Nmdmr3E50K9FB9x9FIgVyqihNboY0RlnhA2XR8PP+3V3
	euxDICLZHBWFB7eG6edg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ovH0v-003Alh-Gc; Wed, 16 Nov 2022 11:55:33 +0000
Received: from mail-wm1-x32a.google.com ([2a00:1450:4864:20::32a])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ovGzr-003A8b-OF; Wed, 16 Nov 2022 11:54:29 +0000
Received: by mail-wm1-x32a.google.com with SMTP id ja4-20020a05600c556400b003cf6e77f89cso2919311wmb.0;
        Wed, 16 Nov 2022 03:54:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6/TfDkn8E1wKATyX/gU0RGSZ6sAmInYSFUBAN2pVLwE=;
        b=YD7wB7w/GkdzSuZ6qei1xiZ6SCDp0GrCM7QiCDDnECjuXQ0TndJIfsywTN7mftv5mq
         9s9O8u8jdMpaY+wPKwQVKlHjfmtuXkjjN7AwXBqRYpCkU1xSk3g1vIaQ+VGFJqH80aWI
         KUDXvwKhVj+rBBS8ByVNjk69v/vBlxSFpxKcH+Jf4qR9wcEl0orO3KVpG5/7bpezn1sA
         5JyR9CLORrmr85lxrmniEdCJJczzf8uFIAIHwfcbWRxypVUlk9vReXNu8vLHnmX6FpII
         3rp/CV3z9SwUXCPiEl55or5OqC1aAcbXETdE9qpnYjyC4BBsF7GPKNCGwcE4KIdqOjVk
         6i5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=6/TfDkn8E1wKATyX/gU0RGSZ6sAmInYSFUBAN2pVLwE=;
        b=toTFSQLqx1jZfFwqseXJAjuIIn76X6sxNJBoBoDdlZ7EzuXxQehC86ObIfD6MSZHqx
         YyMPSMxn39nqSd6mFWjcX9jlk49NodybaB3/Tn3jXOQezZsYvx8WWTrKPVuJec/G/lhP
         UIzwyBlO9NMe3Fl6fcf6Fb592usiNlZORMvOxpH/ubeWlOqURpSHlen3BYeL9jokZ6Xu
         o3UDOOoWvk87tIZ8Pc9QDhjDXeSPN39NjqbXVFXUC1Um57M5M7QGAeBggQzkN4DZ2/zv
         C/+COLJT4ygggsu4nJ/MK43cDPfotDbUgKLBSHzxH0ezNypkx0kjpFduRGHld+NtsLXJ
         T01g==
X-Gm-Message-State: ANoB5pko7PsVY+cj9/OLsaw+Sabg8BOlt9t5Sd33POOp+J4zpMLKZutl
	dmhYj6Ph4k+yrKbPkmzQotI=
X-Google-Smtp-Source: AA0mqf4QWGFvPDsSzVAEknD3ZjQTMIx9AxZBaUsIpmWT0xh/vr0/hLw4QUYAgiF3kgrZztF9ZBQzSQ==
X-Received: by 2002:a05:600c:34c6:b0:3cf:6f25:a713 with SMTP id d6-20020a05600c34c600b003cf6f25a713mr1860277wmq.184.1668599663991;
        Wed, 16 Nov 2022 03:54:23 -0800 (PST)
Received: from localhost.localdomain (84-72-105-84.dclient.hispeed.ch. [84.72.105.84])
        by smtp.gmail.com with ESMTPSA id bt14-20020a056000080e00b002417e7f0685sm14576047wrb.9.2022.11.16.03.54.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 16 Nov 2022 03:54:23 -0800 (PST)
From: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
To: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Andrew Powers-Holmes <aholmes@omnom.net>,
	Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v3 4/4] arm64: dts: rockchip: rk3566: Add SOQuartz Model A baseboard
Date: Wed, 16 Nov 2022 12:53:37 +0100
Message-Id: <20221116115337.541601-5-frattaroli.nicolas@gmail.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20221116115337.541601-1-frattaroli.nicolas@gmail.com>
References: <20221116115337.541601-1-frattaroli.nicolas@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221116_035427_818709_A6995072 
X-CRM114-Status: GOOD (  19.76  )
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

From: Andrew Powers-Holmes <aholmes@omnom.net>

This patch adds the device tree for the "Model A" baseboard for
the SOQuartz CM4 SoM, which is not to be confused with the
Quartz64 Model A, which is the same form factor and SoC, but is
not a CM4 carrier board.

The board features a PCIe 2 x1 slot, USB 2 host ports, CSI/DSI
connectors, an eDP FFC connector, gigabit ethernet, HDMI, and a
12V DC barrel jack. Also present is a microSD card slot, 40-pin
GPIO, and a power and reset button.

Signed-off-by: Andrew Powers-Holmes <aholmes@omnom.net>
[rebase, misc fixes, reword]
Signed-off-by: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
---
 arch/arm64/boot/dts/rockchip/Makefile         |   1 +
 .../dts/rockchip/rk3566-soquartz-model-a.dts  | 232 ++++++++++++++++++
 2 files changed, 233 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3566-soquartz-model-a.dts

diff --git a/arch/arm64/boot/dts/rockchip/Makefile b/arch/arm64/boot/dts/rockchip/Makefile
index 528a02b11552..f78c0a935bce 100644
--- a/arch/arm64/boot/dts/rockchip/Makefile
+++ b/arch/arm64/boot/dts/rockchip/Makefile
@@ -73,6 +73,7 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-quartz64-b.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-roc-pc.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-soquartz-blade.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-soquartz-cm4.dtb
+dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-soquartz-model-a.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-box-demo.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3568-bpi-r2-pro.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3568-evb1-v10.dtb
diff --git a/arch/arm64/boot/dts/rockchip/rk3566-soquartz-model-a.dts b/arch/arm64/boot/dts/rockchip/rk3566-soquartz-model-a.dts
new file mode 100644
index 000000000000..2208dbfb7f0a
--- /dev/null
+++ b/arch/arm64/boot/dts/rockchip/rk3566-soquartz-model-a.dts
@@ -0,0 +1,232 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+
+/dts-v1/;
+
+#include "rk3566-soquartz.dtsi"
+
+/ {
+	model = "PINE64 RK3566 SOQuartz on Model A carrier board";
+	compatible = "pine64,soquartz-model-a", "pine64,soquartz", "rockchip,rk3566";
+
+	/* labeled DCIN_12V in schematic */
+	vcc12v_dcin: vcc12v-dcin-regulator {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc12v_dcin";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <12000000>;
+		regulator-max-microvolt = <12000000>;
+	};
+
+	vcc5v0_usb: vcc5v0-usb-regulator {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc5v0_usb";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		vin-supply = <&vcc12v_dcin>;
+	};
+
+	/*
+	 * Labelled VCC3V0_SD in schematic to not conflict with PMIC
+	 * regulator, it's 3.3v in actuality
+	 */
+	vcc3v0_sd: vcc3v0-sd-regulator {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc3v0_sd";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		vin-supply = <&vcc3v3_sys>;
+	};
+
+	vcc3v3_pcie: vcc3v3-pcie-regulator {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc3v3_pcie";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		vin-supply = <&vcc12v_dcin>;
+	};
+
+	vcc12v_pcie: vcc12v-pcie-regulator {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc12v_pcie";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <12000000>;
+		regulator-max-microvolt = <12000000>;
+		vin-supply = <&vcc12v_dcin>;
+	};
+};
+
+/* phy for pcie */
+&combphy2 {
+	phy-supply = <&vcc3v3_sys>;
+	status = "okay";
+};
+
+&gmac1 {
+	status = "okay";
+};
+
+/*
+ * i2c1 is exposed on CM1 / Module1A
+ * pin 80 - SCL0 - i2c1_scl_m0, pullup to vcc3v3_pmu
+ * pin 82 - SDA0 - i2c1_sda_m0, pullup to vcc3v3_pmu
+ */
+&i2c1 {
+	status = "okay";
+
+	/*
+	 * the rtc interrupt is tied to PMIC_PWRON,
+	 * it will force reset the board if triggered.
+	 */
+	pcf85063: rtc@51 {
+		compatible = "nxp,pcf85063";
+		reg = <0x51>;
+	};
+};
+
+/*
+ * i2c2 is exposed on CM1 / Module1A - to PI40
+ * pin 56 - GPIO3 - i2c2_scl_m1, pullup to vcc_3v3, shared with i2s1_8ch
+ * pin 58 - GPIO2 - i2c2_sda_m1, pullup to vcc_3v3
+ */
+&i2c2 {
+	status = "disabled";
+};
+
+/*
+ * i2c3 is exposed on CM1 / Module1A - to PI40
+ * pin 35 - ID_SC(GPIO28) - i2c3_scl_m0, pullup to vcc_3v3
+ * pin 36 - ID_SD(GPIO27) - i2c3_sda_m0, pullup to vcc_3v3
+ */
+&i2c3 {
+	status = "disabled";
+};
+
+/*
+ * i2c4 is exposed on CM2 / Module1B - to PI40
+ * pin 45 - GPIO24 - i2c4_scl_m1
+ * pin 47 - GPIO23 - i2c4_sda_m1
+ */
+&i2c4 {
+	status = "disabled";
+};
+
+/*
+ * i2s1_8ch is exposed on CM1 / Module1A - to PI40
+ * pin 24 - GPIO26 - i2s1_sdi1_m1
+ * pin 25 - GPIO21 - i2s1_sdo0_m1
+ * pin 26 - GPIO19 - i2s1_lrck_tx_m1
+ * pin 27 - GPIO20 - i2s1_sdi0_m1
+ * pin 29 - GPIO16 - i2s1_sdi3_m1
+ * pin 30 - GPIO6  - i2s1_sdi2_m1
+ * pin 40 - GPIO9  - i2s1_sdo1_m1, shared with spi3
+ * pin 41 - GPIO25 - i2s1_sdo2_m1
+ * pin 49 - GPIO18 - i2s1_sclk_tx_m1
+ * pin 50 - GPIO17 - i2s1_mclk_m1
+ * pin 56 - GPIO3  - i2s1_sdo3_m1, shared with i2c2
+ */
+&i2s1_8ch {
+	status = "disabled";
+};
+
+&led_diy {
+	status = "okay";
+};
+
+&led_work {
+	status = "okay";
+};
+
+&pcie2x1 {
+	vpcie3v3-supply = <&vcc3v3_pcie>;
+	status = "okay";
+};
+
+&rgmii_phy1 {
+	status = "okay";
+};
+
+&rgmii_phy1 {
+	status = "okay";
+};
+
+/*
+ * saradc is exposed on CM1 / Module1A - to J2
+ * pin 94 - AIN1 - saradc_vin3
+ * pin 96 - AIN0 - saradc_vin2
+ */
+&saradc {
+	status = "disabled";
+};
+
+/*
+ * vmmc-supply is vcc3v3_sd on v1.0 and vcc3v0_sd on v1.1+
+ * the soquartz SoM has SDMMC_PWR (CM1 pin 75) hardwired to vcc3v3_sys,
+ * so we use vcc3v3_sd here to ensure the regulator is enabled on older boards.
+ */
+&sdmmc0 {
+	vmmc-supply = <&vcc3v3_sd>;
+	status = "okay";
+};
+
+/*
+ * spi3 is exposed on CM1 / Module1A - to PI40
+ * pin 37 - GPIO7  - spi3_cs1_m0
+ * pin 38 - GPIO11 - spi3_clk_m0
+ * pin 39 - GPIO8  - spi3_cs0_m0
+ * pin 40 - GPIO9  - spi3_miso_m0, shared with i2s1_8ch
+ * pin 44 - GPIO10 - spi3_mosi_m0
+ */
+&spi3 {
+	status = "disabled";
+};
+
+/*
+ * uart2 is exposed on CM1 / Module1A - to PI40
+ * pin 51 - GPIO15 - uart2_rx_m0
+ * pin 55 - GPIO14 - uart2_tx_m0
+ */
+&uart2 {
+	status = "okay";
+};
+
+/*
+ * uart7 is exposed on CM1 / Module1A - to PI40
+ * pin 46 - GPIO22 - uart7_tx_m2
+ * pin 47 - GPIO23 - uart7_rx_m2
+ */
+&uart7 {
+	status = "okay";
+};
+
+&usb2phy0 {
+	status = "okay";
+};
+
+&usb2phy0_otg {
+	phy-supply = <&vcc5v0_usb>;
+	status = "okay";
+};
+
+&usb_host0_xhci {
+	status = "okay";
+};
+
+&vbus {
+	vin-supply = <&vcc5v0_usb>;
+};
+
+&vcc3v3_sd {
+	regulator-always-on;
+	regulator-boot-on;
+	regulator-min-microvolt = <3300000>;
+	regulator-max-microvolt = <3300000>;
+	status = "okay";
+};
-- 
2.38.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
