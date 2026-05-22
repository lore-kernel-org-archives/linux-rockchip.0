Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F25D3CD5BB3
	for <linux-rockchip@archiver.kernel.org>; Fri, 22 May 2026 17:49:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rIYcT3Fh+nLz574RLkXnGyhaueCOOUj1vVUskFrwjzM=; b=FKewgcMqhoLQgb
	oE5kPPbl8bw76Zt6XpNYrFdtnz4QroqP0C0H6txKW1hah4i4TqaIeOeG3Kga2E7Ee+xHCCQHA5Ayy
	oZQzBlLVehVnQU+WXDqB4z8BIHTcBGFOxs43au0AoB9Mz0EkLfljbXBrhhg7gGwufWoqa0E7GRKdM
	9lugJp1m4gIEz94FRGaPZ/voJx0yCyyEQQQOXup66RqAjbImygQN5rqY29qbiOLT7QszWIHco9UH3
	9tLxrCZ/JlvGBt0VbF1jKsb0U1gdnTk5SgxR5vYjp7Kp3lzaJt9tGDrF5rHXhx/Pu8xjdcrX0xKqe
	DWDJXSRrdCaKn2SkBM0w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wQU0C-0000000BbZs-1hyV;
	Fri, 22 May 2026 17:49:40 +0000
Received: from mail-ej1-x62b.google.com ([2a00:1450:4864:20::62b])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wQU09-0000000BbXy-3Lb9
	for linux-rockchip@lists.infradead.org;
	Fri, 22 May 2026 17:49:39 +0000
Received: by mail-ej1-x62b.google.com with SMTP id a640c23a62f3a-bce57c132b2so1513374266b.0
        for <linux-rockchip@lists.infradead.org>; Fri, 22 May 2026 10:49:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1779472176; x=1780076976; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ofsfdL5KmwPQrQrkRMLdrSUxu2MsRdoS1KWKGYYmfTM=;
        b=PqAlvAG+cZKH+r4qnHbiIYCviNS4Q1bjVklxsKD+rLWDo/Tcn5YONtG2QRq7TOO0ev
         6Z12DZ8FwDhn4o9ULIZFj6a3piwbNV8Xvdgj3yki8W+Y9aQ4W6N17aH8yAhR0nmtjrQb
         lCf0DUcMocKNs+U9mPf+oaE6mNcCMiJEtzSOo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779472176; x=1780076976;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=ofsfdL5KmwPQrQrkRMLdrSUxu2MsRdoS1KWKGYYmfTM=;
        b=iAFt/gROrw/Jo2IcVUiFXUxdS87Ir7R/GW7GUHop6De/IuM5ifSscOZFkGCLfUqNAZ
         AjC1iIOj34Yjj6IsEvYGarW+37nOVT7m1VvQAJmHQTF3Ub3kKQt9MG9aBjTbumWZZ9Gc
         a4L3Ow6RVYrqnq1nJ4moRPNdwNU+NPkkjvCtbIxv+prj4vcLeXvCD18M0JvIqqREXltc
         O+hsXRNZ1vlLk7FLnYLxcXJ3D0AfnOykSWTA6t294GPUluY1nbGBf+ohE2RqvDlALWj5
         e25EHB6crRYxsSxXpcOUUxNiEciMi1X/LitUDzGhdiOSg1wJrDKick0pJIF7C0SSq1bs
         t2XQ==
X-Forwarded-Encrypted: i=1; AFNElJ9xcoSDuEqRlDLRJa1gkNt6FJDgJjy+yUAg18LgxnuStu3Iu9ycKS3CNZBNnl/GIcMRYHIdctYdBivWGFzOMw==@lists.infradead.org
X-Gm-Message-State: AOJu0YxyRwmVDfDtBWSo2XGVYRht+CNUn9YUuMgrQ2Xn7O2SU/2Yv5+q
	09+6aEqOv+/lAhOZHW9j94IRIMC4fgkEerxGRgkf/EG/99+bRiyx/49rrq7CxuGolHs=
X-Gm-Gg: Acq92OFWZtORx0SVWjy2GGxyXZXJTT7Qsz4o5rsNqn9dRrsRRpprvoyRjHcjTTHh/MD
	h2GYNbSI6yTTz7VhD6k9VKTgF6aNpTD0wT2v9xv8pdwwWm9lmX3Em8DHpx4pxMxfcgp0dqxU4xG
	DxkRNit80lC+W8xAw6cU/nYSa2x/lKam1c5X73AUPd4J301tvZR3BUsiV+Rhc9mb0okjsQY6ajf
	Jj5bA/QY/ydnZwdwbmCBxIejfHYX/WKLbeiv83wTUo+2+wEDVZKDufzmqjO51OANxsJeL0MC69v
	P/dg0pszxyZfgcJqwKPkQu0aJjUqoYU5lwb98NX0wm5b8YM/4g7tNJUdBfEb1RTISWyzk6LHdc5
	1Wv8mb29JNyyuVDXHv1Z8C/TPrXmrGxiSJuflkuP74MaNy1je2MBWcpamO9w1tNP7V12cloyzvY
	LD11RnBvx01Scms0Qai3LE5englIT25XH0pqfEFeY+y+Pk8oWRMklQ/0VIvOr3SBFvz2kI4Mq24
	M2V52bd
X-Received: by 2002:a17:906:9fc1:b0:bd4:aafb:def8 with SMTP id a640c23a62f3a-bdd4aa86a50mr263269366b.21.1779472175730;
        Fri, 22 May 2026 10:49:35 -0700 (PDT)
Received: from thinkpat.amarulasolutions.com ([94.162.24.211])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-bddc5eca6f9sm74302366b.38.2026.05.22.10.49.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 22 May 2026 10:49:35 -0700 (PDT)
From: Patrick Barsanti <patrick.barsanti@amarulasolutions.com>
To: devicetree@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	heiko@sntech.de,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org
Cc: linux-amarula@amarulasolutions.com,
	michael@amarulasolutions.com,
	dario.binacchi@amarulasolutions.com,
	Patrick Barsanti <patrick.barsanti@amarulasolutions.com>
Subject: [PATCH 3/3] arm64: dts: rockchip: Add Axelera AI metis-sbc
Date: Fri, 22 May 2026 19:49:18 +0200
Message-ID: <20260522174918.61523-4-patrick.barsanti@amarulasolutions.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260522174918.61523-1-patrick.barsanti@amarulasolutions.com>
References: <20260522174918.61523-1-patrick.barsanti@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260522_104938_009449_B9DBC425 
X-CRM114-Status: GOOD (  14.82  )
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

Add minimal device tree for the Axelera AI Metis Compute Board
(rk3588-metis-sbc).

It offers efficient AI compute for multi-stream computer vision and
GenAI applications in a compact design. It features a quad-core
Axelera AI Metis AIPU and an RK3588 SoC processor.

This basic version of the dts supports:
- Console
- eMMC
- HDMI
- 4x USB-A
- 2x Gigabit Ethernet
- RTC
- Enumeration of on-board Axelera Metis AIPU

Link: https://axelera.ai/evaluation-systems/metis-compute-board
Signed-off-by: Michael Trimarchi <michael@amarulasolutions.com>
Signed-off-by: Dario Binacchi <dario.binacchi@amarulasolutions.com>
Signed-off-by: Patrick Barsanti <patrick.barsanti@amarulasolutions.com>
---
 arch/arm64/boot/dts/rockchip/Makefile         |   1 +
 .../boot/dts/rockchip/rk3588-metis-sbc.dts    | 840 ++++++++++++++++++
 2 files changed, 841 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3588-metis-sbc.dts

diff --git a/arch/arm64/boot/dts/rockchip/Makefile b/arch/arm64/boot/dts/rockchip/Makefile
index cb55c6b70d0e..8241f6ec2606 100644
--- a/arch/arm64/boot/dts/rockchip/Makefile
+++ b/arch/arm64/boot/dts/rockchip/Makefile
@@ -192,6 +192,7 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-h96-max-v58.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-jaguar.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-jaguar-ethernet-switch.dtbo
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-jaguar-pre-ict-tester.dtbo
+dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-metis-sbc.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-mnt-reform2.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-nanopc-t6.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-nanopc-t6-lts.dtb
diff --git a/arch/arm64/boot/dts/rockchip/rk3588-metis-sbc.dts b/arch/arm64/boot/dts/rockchip/rk3588-metis-sbc.dts
new file mode 100644
index 000000000000..56d734f9f25b
--- /dev/null
+++ b/arch/arm64/boot/dts/rockchip/rk3588-metis-sbc.dts
@@ -0,0 +1,840 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+
+/dts-v1/;
+
+#include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/input/input.h>
+#include <dt-bindings/pinctrl/rockchip.h>
+#include <dt-bindings/soc/rockchip,vop2.h>
+#include "rk3588.dtsi"
+
+/ {
+	model = "Axelera AI Metis Compute Board";
+	compatible = "axelera,metis-sbc", "rockchip,rk3588";
+
+	aliases {
+		ethernet0 = &gmac0;
+		ethernet1 = &gmac1;
+		mmc0 = &sdhci;
+	};
+
+	chosen {
+		stdout-path = "serial2:1500000n8";
+	};
+
+	hdmi0-con {
+		compatible = "hdmi-connector";
+		type = "a";
+
+		port {
+			hdmi0_con_in: endpoint {
+				remote-endpoint = <&hdmi0_out_con>;
+			};
+		};
+	};
+
+	pcie20_avdd0v85: pcie20-avdd0v85 {
+		compatible = "regulator-fixed";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <850000>;
+		regulator-max-microvolt = <850000>;
+		regulator-name = "pcie20_avdd0v85";
+		vin-supply = <&vdda_0v85_s0>;
+	};
+
+	pcie20_avdd1v8: pcie20-avdd1v8 {
+		compatible = "regulator-fixed";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <1800000>;
+		regulator-max-microvolt = <1800000>;
+		regulator-name = "pcie20_avdd1v8";
+		vin-supply = <&vcca_1v8_s0>;
+	};
+
+	pcie30_avdd0v75: pcie30-avdd0v75 {
+		compatible = "regulator-fixed";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <750000>;
+		regulator-max-microvolt = <750000>;
+		regulator-name = "pcie30_avdd0v75";
+		vin-supply = <&hdmi_vdda0v85_s0>;
+	};
+
+	pcie30_avdd1v8: pcie30-avdd1v8 {
+		compatible = "regulator-fixed";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <1800000>;
+		regulator-max-microvolt = <1800000>;
+		regulator-name = "pcie30_avdd1v8";
+		vin-supply = <&vcca_1v8_s0>;
+	};
+
+	vbus5v0_typec: vbus5v0-typec {
+		compatible = "regulator-fixed";
+		enable-active-high;
+		gpio = <&gpio4 RK_PB4 GPIO_ACTIVE_HIGH>; /* TYPEC5V_PWREN */
+		pinctrl-0 = <&typec5v_pwren>;
+		pinctrl-names = "default";
+		regulator-name = "usbc_ss_vbus";
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		vin-supply = <&vcc5v0_sus>;
+	};
+
+	vcc_1v1_nldo_s3: vcc-1v1-nldo-s3 {
+		compatible = "regulator-fixed";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <1100000>;
+		regulator-max-microvolt = <1100000>;
+		regulator-name = "vcc_1v1_nldo_s3";
+		vin-supply = <&vcc4v0_sys>;
+	};
+
+	vcc_1v8_pcie: vcc-1v8-pcie {
+		compatible = "regulator-fixed";
+		enable-active-high;
+		gpio = <&gpio3 RK_PD5 GPIO_ACTIVE_HIGH>; /* PCIE30_PWREN_H */
+		pinctrl-0 = <&pcie30_pwren_h>;
+		pinctrl-names = "default";
+		regulator-always-on;
+		regulator-min-microvolt = <1800000>;
+		regulator-max-microvolt = <1800000>;
+		regulator-name = "vcc_1v8_pcie";
+		startup-delay-us = <50000>;
+		vin-supply = <&vcc_1v8_s3>;
+	};
+
+	vcc_3v3_sd_s0: vcc-3v3-sd-s0 {
+		compatible = "regulator-fixed";
+		enable-active-high;
+		gpio = <&gpio0 RK_PC5 GPIO_ACTIVE_HIGH>; /* SDMMC_PWREN */
+		pinctrl-0 = <&sdmmc_pwren>;
+		pinctrl-names = "default";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		regulator-name = "vsd_3v3";
+		startup-delay-us = <1000000>;
+		vin-supply = <&vcc_3v3_s3>;
+	};
+
+	vcc12v_dcin: vcc12v-dcin {
+		compatible = "regulator-fixed";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <12000000>;
+		regulator-max-microvolt = <12000000>;
+		regulator-name = "12vsus";
+	};
+
+	vcc3v3_hubreset: vcc3v3-hubreset {
+		compatible = "regulator-fixed";
+		enable-active-high;
+		gpio = <&gpio3 RK_PB2 GPIO_ACTIVE_HIGH>; /* USB_HUB_RST_N */
+		pinctrl-0 = <&usb_hub_rst_n>;
+		pinctrl-names = "default";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-name = "vcc3v3_hubreset";
+		vin-supply = <&vcc_3v3_s3>;
+	};
+
+	vcc3v3_m2: vcc3v3-m2 {
+		compatible = "regulator-fixed";
+		enable-active-high;
+		gpio = <&gpio0 RK_PC4 GPIO_ACTIVE_HIGH>; /* PCIE_PWREN_H */
+		pinctrl-0 = <&pcie_pwren_h>;
+		pinctrl-names = "default";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		regulator-name = "3v_m2";
+		vin-supply = <&vcc3v3_sus>;
+	};
+
+	vcc3v3_sus: vcc3v3-sus {
+		compatible = "regulator-fixed";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		regulator-name = "3vsus";
+		vin-supply = <&vcc12v_dcin>;
+	};
+
+	vcc4v0_sys: vcc4v0-sys {
+		compatible = "regulator-fixed";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <4000000>;
+		regulator-max-microvolt = <4000000>;
+		regulator-name = "vcc4v0_sys";
+		vin-supply = <&vcc12v_dcin>;
+	};
+
+	vcc5v0_host: vcc5v0-host {
+		compatible = "regulator-fixed";
+		enable-active-high;
+		gpio = <&gpio4 RK_PB0 GPIO_ACTIVE_HIGH>; /* USB_HOST_PWREN */
+		pinctrl-0 = <&usb_host_pwren>;
+		pinctrl-names = "default";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		regulator-name = "vcc5v0_host";
+		vin-supply = <&vcc5v0_sus>;
+	};
+
+	vcc5v0_sus: vcc5v0-sus {
+		compatible = "regulator-fixed";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		regulator-name = "5vsus";
+		vin-supply = <&vcc12v_dcin>;
+	};
+};
+
+&cpu_b0 {
+	cpu-supply = <&vdd_cpu_big0_s0>;
+	mem-supply = <&vdd_cpu_big0_s0>;
+};
+
+&cpu_b1 {
+	cpu-supply = <&vdd_cpu_big0_s0>;
+	mem-supply = <&vdd_cpu_big0_s0>;
+};
+
+&cpu_b2 {
+	cpu-supply = <&vdd_cpu_big1_s0>;
+	mem-supply = <&vdd_cpu_big1_s0>;
+};
+
+&cpu_b3 {
+	cpu-supply = <&vdd_cpu_big1_s0>;
+	mem-supply = <&vdd_cpu_big1_s0>;
+};
+
+&cpu_l0 {
+	cpu-supply = <&vdd_cpu_lit_s0>;
+	mem-supply = <&vdd_cpu_lit_mem_s0>;
+};
+
+&cpu_l1 {
+	cpu-supply = <&vdd_cpu_lit_s0>;
+	mem-supply = <&vdd_cpu_lit_mem_s0>;
+};
+
+&cpu_l2 {
+	cpu-supply = <&vdd_cpu_lit_s0>;
+	mem-supply = <&vdd_cpu_lit_mem_s0>;
+};
+
+&cpu_l3 {
+	cpu-supply = <&vdd_cpu_lit_s0>;
+	mem-supply = <&vdd_cpu_lit_mem_s0>;
+};
+
+&gmac0 {
+	clock_in_out = "output";
+	phy-handle = <&rgmii_phy0>;
+	/* Use rgmii-rxid mode to disable rx delay inside Soc */
+	phy-mode = "rgmii-rxid";
+	pinctrl-0 = <&gmac0_miim
+		     &gmac0_tx_bus2
+		     &gmac0_rx_bus2
+		     &gmac0_rgmii_clk
+		     &gmac0_rgmii_bus>;
+	pinctrl-names = "default";
+	tx_delay = <0x44>;
+	snps,reset-gpio = <&gpio4 RK_PB3 GPIO_ACTIVE_LOW>; /* GMAC0_RST_N */
+	snps,reset-active-low;
+	/* Reset time is 20ms, 100ms for rtl8211f */
+	snps,reset-delays-us = <0 20000 100000>;
+	status = "okay";
+};
+
+&gmac1 {
+	clock_in_out = "output";
+	phy-handle = <&rgmii_phy1>;
+	/* Use rgmii-rxid mode to disable rx delay inside Soc */
+	phy-mode = "rgmii-rxid";
+	pinctrl-0 = <&gmac1_miim
+		     &gmac1_tx_bus2
+		     &gmac1_rx_bus2
+		     &gmac1_rgmii_clk
+		     &gmac1_rgmii_bus>;
+	pinctrl-names = "default";
+	tx_delay = <0x43>;
+	snps,reset-gpio = <&gpio3 RK_PB7 GPIO_ACTIVE_LOW>; /* GMAC1_RST_N */
+	snps,reset-active-low;
+	/* Reset time is 20ms, 100ms for rtl8211f */
+	snps,reset-delays-us = <0 20000 100000>;
+	status = "okay";
+};
+
+&gpu {
+	mali-supply = <&vdd_gpu_s0>;
+	status = "okay";
+};
+
+&hdmi0 {
+	pinctrl-0 = <&hdmim0_tx0_cec &hdmim0_tx0_hpd_sbc &hdmim0_tx0_scl &hdmim0_tx0_sda>;
+	pinctrl-names = "default";
+	status = "okay";
+};
+
+&hdmi0_in {
+	hdmi0_in_vp0: endpoint {
+		remote-endpoint = <&vp0_out_hdmi0>;
+	};
+};
+
+&hdmi0_out {
+	hdmi0_out_con: endpoint {
+		remote-endpoint = <&hdmi0_con_in>;
+	};
+};
+
+&hdmi0_sound {
+	status = "okay";
+};
+
+&hdptxphy0 {
+	status = "okay";
+};
+
+&i2c0 {
+	pinctrl-0 = <&i2c0m2_xfer>;
+	pinctrl-names = "default";
+	status = "okay";
+
+	vdd_cpu_big0_s0: regulator@42 {
+		compatible = "rockchip,rk8602";
+		reg = <0x42>;
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <550000>;
+		regulator-max-microvolt = <1050000>;
+		regulator-name = "vdd_cpu_big0_s0";
+		regulator-ramp-delay = <2300>;
+		vin-supply = <&vcc4v0_sys>;
+		fcs,suspend-voltage-selector = <1>;
+
+		regulator-state-mem {
+			regulator-off-in-suspend;
+		};
+	};
+
+	vdd_cpu_big1_s0: regulator@43 {
+		compatible = "rockchip,rk8603", "rockchip,rk8602";
+		reg = <0x43>;
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <550000>;
+		regulator-max-microvolt = <1050000>;
+		regulator-name = "vdd_cpu_big1_s0";
+		regulator-ramp-delay = <2300>;
+		vin-supply = <&vcc4v0_sys>;
+		fcs,suspend-voltage-selector = <1>;
+
+		regulator-state-mem {
+			regulator-off-in-suspend;
+		};
+	};
+};
+
+&i2c1 {
+	pinctrl-0 = <&i2c1m2_xfer>;
+	pinctrl-names = "default";
+	status = "okay";
+
+	vdd_npu_s0: vdd_npu_mem_s0: regulator@42 {
+		compatible = "rockchip,rk8602";
+		reg = <0x42>;
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <550000>;
+		regulator-max-microvolt = <950000>;
+		regulator-name = "vdd_npu_s0";
+		regulator-ramp-delay = <2300>;
+		vin-supply = <&vcc4v0_sys>;
+		fcs,suspend-voltage-selector = <1>;
+
+		regulator-state-mem {
+			regulator-off-in-suspend;
+		};
+	};
+};
+
+&i2c6 {
+	status = "okay";
+
+	rtc: rtc@68 {
+		compatible = "ti,bq32000";
+		reg = <0x68>;
+	};
+};
+
+&i2s5_8ch {
+	status = "okay";
+};
+
+&mdio0 {
+	rgmii_phy0: phy@1 {
+		compatible = "ethernet-phy-ieee802.3-c22";
+		reg = <0x1>;
+	};
+};
+
+&mdio1 {
+	rgmii_phy1: phy@3 {
+		compatible = "ethernet-phy-ieee802.3-c22";
+		reg = <0x3>;
+	};
+};
+
+&pcie30phy {
+	status = "okay";
+};
+
+&pcie3x4 {
+	pinctrl-0 = <&pciex4_perst_n>;
+	pinctrl-names = "default";
+	reset-gpios = <&gpio4 RK_PB6 GPIO_ACTIVE_HIGH>; /* PCIEX4_PERST_N */
+	/*
+	 * Add specific mapping required by the onboard
+	 * Axelera Metis AIPU to function.
+	 */
+	ranges = <0x81000000 0x0 0xf0100000 0x0 0xf0100000 0x0 0x100000
+		  0x82000000 0x0 0x40000000 0x9 0x00000000 0x0 0x20000000
+		  0xc3000000 0x0 0x60000000 0x9 0x20000000 0x0 0x20000000>;
+	/*
+	 * Set to 1v8 because the electronics on the pcie3x4 slot
+	 * do not receive 3v3 supply at all, but vpcie3v3-supply
+	 * must be specified.
+	 */
+	vpcie3v3-supply = <&vcc_1v8_pcie>;
+	status = "okay";
+};
+
+&pinctrl {
+	hdmi {
+		hdmim0_tx0_hpd_sbc: hdmim0-tx0-hpd-sbc {
+			rockchip,pins = <3 RK_PD4 3 &pcfg_pull_none>;
+		};
+	};
+
+	pci {
+		pcie_pwren_h: pcie-pwren-h {
+			rockchip,pins = <0 RK_PC4 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+
+		pcie30_pwren_h: pcie30-pwren-h {
+			rockchip,pins = <3 RK_PD5 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+
+		pciex1_clkreq_n: pciex1-clkreq-n {
+			rockchip,pins = <4 RK_PA0 4 &pcfg_pull_down>;
+		};
+
+		pcie_wake_n: pcie-wake-n { /* M.2_TYPE_B1 wake irq */
+			rockchip,pins = <4 RK_PA1 4 &pcfg_pull_down>;
+		};
+
+		pciex1_perst_n: pciex1-perst-n { /* pcie reset */
+			rockchip,pins = <4 RK_PA2 4 &pcfg_pull_none>;
+		};
+
+		pciex4_perst_n: pciex4-perst-n { /* pcie3x4 reset */
+			rockchip,pins = <4 RK_PB6 4 &pcfg_pull_none>;
+		};
+	};
+
+	sdmmc {
+		sdmmc_pwren: sdmmc-pwren {
+			rockchip,pins = <0 RK_PC5 RK_FUNC_GPIO &pcfg_pull_up>;
+		};
+	};
+
+	usb {
+		usb_hub_rst_n: usb-hub-rst-n {
+			rockchip,pins = <3 RK_PB2 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+
+		usb_host_pwren: usb-host-pwren {
+			rockchip,pins = <4 RK_PB0 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+
+	usb-typec {
+		cc_int_n: cc-int-n {
+			rockchip,pins = <0 RK_PD3 RK_FUNC_GPIO &pcfg_pull_up>;
+		};
+
+		typec5v_pwren: typec5v-pwren {
+			rockchip,pins = <4 RK_PB4 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+};
+
+&saradc {
+	vref-supply = <&vcca_1v8_s0>;
+	status = "okay";
+};
+
+/* eMMC */
+&sdhci {
+	bus-width = <8>;
+	max-frequency = <200000000>;
+	mmc-hs400-1_8v;
+	mmc-hs400-enhanced-strobe;
+	no-sd;
+	no-sdio;
+	non-removable;
+	full-pwr-cycle-in-suspend;
+	status = "okay";
+};
+
+&spi2 {
+	assigned-clock-rates = <200000000>;
+	assigned-clocks = <&cru CLK_SPI2>;
+	num-cs = <1>;
+	pinctrl-0 = <&spi2m2_cs0 &spi2m2_pins>;
+	pinctrl-names = "default";
+	status = "okay";
+
+	pmic@0 {
+		compatible = "rockchip,rk806";
+		reg = <0x0>;
+		interrupt-parent = <&gpio0>;
+		interrupts = <RK_PA7 IRQ_TYPE_LEVEL_LOW>; /* PMIC_INT_L */
+		spi-max-frequency = <1000000>;
+		system-power-controller;
+		vcc1-supply = <&vcc4v0_sys>;
+		vcc2-supply = <&vcc4v0_sys>;
+		vcc3-supply = <&vcc4v0_sys>;
+		vcc4-supply = <&vcc4v0_sys>;
+		vcc5-supply = <&vcc4v0_sys>;
+		vcc6-supply = <&vcc4v0_sys>;
+		vcc7-supply = <&vcc4v0_sys>;
+		vcc8-supply = <&vcc4v0_sys>;
+		vcc9-supply = <&vcc4v0_sys>;
+		vcc10-supply = <&vcc4v0_sys>;
+		vcc11-supply = <&vcc_2v0_pldo_s3>;
+		vcc12-supply = <&vcc4v0_sys>;
+		vcc13-supply = <&vcc_1v1_nldo_s3>;
+		vcc14-supply = <&vcc_1v1_nldo_s3>;
+		vcca-supply = <&vcc4v0_sys>;
+
+		regulators {
+			vdd_gpu_s0: vdd_gpu_mem_s0: dcdc-reg1 {
+				regulator-boot-on;
+				regulator-enable-ramp-delay = <400>;
+				regulator-min-microvolt = <550000>;
+				regulator-max-microvolt = <950000>;
+				regulator-name = "vdd_gpu_s0";
+				regulator-ramp-delay = <12500>;
+
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+
+			vdd_cpu_lit_s0: vdd_cpu_lit_mem_s0: dcdc-reg2 {
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <550000>;
+				regulator-max-microvolt = <950000>;
+				regulator-name = "vdd_cpu_lit_s0";
+				regulator-ramp-delay = <12500>;
+
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+
+			vdd_log_s0: dcdc-reg3 {
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <675000>;
+				regulator-max-microvolt = <800000>;
+				regulator-name = "vdd_log_s0";
+				regulator-ramp-delay = <12500>;
+
+				regulator-state-mem {
+					regulator-off-in-suspend;
+					regulator-suspend-microvolt = <750000>;
+				};
+			};
+
+			vdd_vdenc_s0: vdd_vdenc_mem_s0: dcdc-reg4 {
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <550000>;
+				regulator-max-microvolt = <950000>;
+				regulator-name = "vdd_vdenc_s0";
+				regulator-ramp-delay = <12500>;
+
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+
+			vdd_ddr_s0: dcdc-reg5 {
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <675000>;
+				regulator-max-microvolt = <900000>;
+				regulator-name = "vdd_ddr_s0";
+				regulator-ramp-delay = <12500>;
+
+				regulator-state-mem {
+					regulator-off-in-suspend;
+					regulator-suspend-microvolt = <850000>;
+				};
+			};
+
+			vdd2_ddr_s3: dcdc-reg6 {
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-name = "vdd2_ddr_s3";
+
+				regulator-state-mem {
+					regulator-on-in-suspend;
+				};
+			};
+
+			vcc_2v0_pldo_s3: dcdc-reg7 {
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <2000000>;
+				regulator-max-microvolt = <2000000>;
+				regulator-name = "vdd_2v0_pldo_s3";
+
+				regulator-state-mem {
+					regulator-on-in-suspend;
+					regulator-suspend-microvolt = <2000000>;
+				};
+			};
+
+			vcc_3v3_s3: dcdc-reg8 {
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <3300000>;
+				regulator-max-microvolt = <3300000>;
+				regulator-name = "vcc_3v3_s3";
+
+				regulator-state-mem {
+					regulator-on-in-suspend;
+					regulator-suspend-microvolt = <3300000>;
+				};
+			};
+
+			vddq_ddr_s0: dcdc-reg9 {
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-name = "vddq_ddr_s0";
+
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+
+			vcc_1v8_s3: dcdc-reg10 {
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <1800000>;
+				regulator-name = "vcc_1v8_s3";
+
+				regulator-state-mem {
+					regulator-on-in-suspend;
+					regulator-suspend-microvolt = <1800000>;
+				};
+			};
+
+			vcca_1v8_s0: pldo-reg1 {
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <1800000>;
+				regulator-name = "vcca_1v8_s0";
+
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+
+			vcc_1v8_s0: pldo-reg2 {
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <1800000>;
+				regulator-name = "vcc_1v8_s0";
+
+				regulator-state-mem {
+					regulator-off-in-suspend;
+					regulator-suspend-microvolt = <1800000>;
+				};
+			};
+
+			vdda_1v2_s0: pldo-reg3 {
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <1200000>;
+				regulator-max-microvolt = <1200000>;
+				regulator-name = "vdda_1v2_s0";
+
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+
+			vcca_3v3_s0: pldo-reg4 {
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <3300000>;
+				regulator-max-microvolt = <3300000>;
+				regulator-name = "vcca_3v3_s0";
+
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+
+			vccio_sd_s0: pldo-reg5 {
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <3300000>;
+				regulator-name = "vccio_sd_s0";
+
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+
+			vcca1v8_pldo6_s3: pldo-reg6 {
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <1800000>;
+				regulator-name = "vcca1v8_pldo6_s3";
+
+				regulator-state-mem {
+					regulator-on-in-suspend;
+					regulator-suspend-microvolt = <1800000>;
+				};
+			};
+
+			vdd_0v75_s3: nldo-reg1 {
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <750000>;
+				regulator-max-microvolt = <750000>;
+				regulator-name = "vdd_0v75_s3";
+
+				regulator-state-mem {
+					regulator-on-in-suspend;
+					regulator-suspend-microvolt = <750000>;
+				};
+			};
+
+			vdda_ddr_pll_s0: nldo-reg2 {
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <850000>;
+				regulator-max-microvolt = <850000>;
+				regulator-name = "vdda_ddr_pll_s0";
+
+				regulator-state-mem {
+					regulator-off-in-suspend;
+					regulator-suspend-microvolt = <850000>;
+				};
+			};
+
+			hdmi_vdda0v85_s0: nldo-reg3 {
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <837500>;
+				regulator-max-microvolt = <837500>;
+				regulator-name = "hdmi_vdda0v85_s0";
+
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+
+			vdda_0v85_s0: nldo-reg4 {
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <850000>;
+				regulator-max-microvolt = <850000>;
+				regulator-name = "vdda_0v85_s0";
+
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+
+			vdd_0v75_s0: nldo-reg5 {
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <750000>;
+				regulator-max-microvolt = <750000>;
+				regulator-name = "vdd_0v75_s0";
+
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+		};
+	};
+};
+
+&u2phy1 {
+	status = "okay";
+};
+
+&u2phy1_otg {
+	phy-supply = <&vcc5v0_host>;
+	status = "okay";
+};
+
+&uart2 {
+	pinctrl-0 = <&uart2m0_xfer>;
+	status = "okay";
+};
+
+&usb_host1_xhci {
+	dr_mode = "host";
+	status = "okay";
+};
+
+&usbdp_phy1 {
+	phy-supply = <&vcc3v3_hubreset>;
+	status = "okay";
+};
+
+&vop {
+	status = "okay";
+};
+
+&vop_mmu {
+	status = "okay";
+};
+
+&vp0 {
+	vp0_out_hdmi0: endpoint@ROCKCHIP_VOP2_EP_HDMI0 {
+		reg = <ROCKCHIP_VOP2_EP_HDMI0>;
+		remote-endpoint = <&hdmi0_in_vp0>;
+	};
+};
-- 
2.53.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
