Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 54F90C38145
	for <linux-rockchip@archiver.kernel.org>; Wed,  7 Sep 2022 16:08:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8jsNqsJbyBSOikJ68gYJ4GVCo/jH1Ca+A+AU+WEuY30=; b=iuf03pfovmvaEF
	0Fxwf11HlX8iKCEv6BG949/nhSyOM2/VgQ+uUAsKqMLW1w/IPpCpY6i/Hiv3O/fubSRjH2iLPeE6u
	lI9zOFy+2VnCRgxOY9mmtiT4virBqybQvhuKVKnofk1YKyJ6z+A8EPLdv40eWa64tQJv3CYZVk22l
	QC/7HriUlp7lBCyzCmARxDUYYySVqgKOfdsGjtsL6/7CFvc33AQX1UBlN6zBG11UnRUqUA3Yf2CwM
	PDhygN47m/2/dejIEvUATh3j2lP7SqGhJdBntp/3qUjfBLPzWMFMuz+K7gxzmQCCnY/ede6OBGm3J
	IshYW5jBq2+28MIhumlw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oVxb1-007byz-M7; Wed, 07 Sep 2022 16:08:11 +0000
Received: from mail-pf1-x434.google.com ([2607:f8b0:4864:20::434])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oVxWJ-007Z71-1G
	for linux-rockchip@lists.infradead.org; Wed, 07 Sep 2022 16:03:21 +0000
Received: by mail-pf1-x434.google.com with SMTP id z187so15069059pfb.12
        for <linux-rockchip@lists.infradead.org>; Wed, 07 Sep 2022 09:03:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
        bh=gETfGoZ4kQzUiEajKUNN4LEqqdTgN0ctMX1ujOe8sDE=;
        b=w2bK2j8PX1Szy8V0nQHrzGVAjvnYdhiQDRpcGPNOQkzmAJ1foPf5O98uTFGfJIRqR6
         XVkEfNyphHzjSMUpS9ePzQzLR9cJuCKk2qQLM/vWPcjKml/AaCloC9TPJUn8BUqDvrxo
         eO2EevRgicZk9SVjTG6FYDDbOpPwYYXThg1mMzkjH2BpNSJPBlZm8vOZ9vSBwq32TLeK
         bXlWvVwJt6M2x4j8qswZA9OOJM9pcF9eDF/mR3g4jYT0bc9wUBiOSYMRCHbbGRoA/2zx
         HdvBE3WMMFDEstIQj0lPp+5kMzZtpy+LmzL4wokNEj9tY/c0L3iZOktTKrg2KoC6wgPr
         qkyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=gETfGoZ4kQzUiEajKUNN4LEqqdTgN0ctMX1ujOe8sDE=;
        b=6nZQIve9vvzWEG7E6hxmKcW1HCYK6V7idws/BT7PyNzOn8xYiXmzhyeSNk10QgaSX+
         6/nP6wws3tUAmlvwTEVUlPEqKqUJ5AnDHo3mSfKxvAmKFUCs1Z7dJcJwKhl8OKmj/XFj
         Cmgfs05dB1ozdN+QQWS3Z4wswV5XF/WqzxjC1zC4/BuYVSm65DdyJGfHxe+b7gDl8cZt
         ZFAfiqPENSvCUexEDWwxVBtKpwLv4uu62CuqXqemumlWCNjT1EMTzXd4Q4J9q1MSVNt7
         s/h5iFgrtkaBof6HPVB2H5lmRBMHAUFWdzJwa47Ht63aAkdQVvbM5yNeJDETP+cZgQi2
         41aQ==
X-Gm-Message-State: ACgBeo1j9BEWzVsSWFxfiAwb1c8lHN6qrayZJlo6K26hGFFZ1mfoCUh3
	C1fnTRyN2bC2lQGV+7k84sQ51w==
X-Google-Smtp-Source: AA6agR6qUSsr3I60SKrWoE2MoblSMepn6JLA0JCMW7ulj9mCIBY61kjnYUZtBOfY3gAh1c2W0jVrQQ==
X-Received: by 2002:a63:df0e:0:b0:434:a80a:39b4 with SMTP id u14-20020a63df0e000000b00434a80a39b4mr3879500pgg.584.1662566598679;
        Wed, 07 Sep 2022 09:03:18 -0700 (PDT)
Received: from localhost.localdomain ([23.27.44.184])
        by smtp.gmail.com with ESMTPSA id x13-20020a17090a1f8d00b001f510175984sm14919719pja.41.2022.09.07.09.03.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 07 Sep 2022 09:03:18 -0700 (PDT)
From: Jagan Teki <jagan@edgeble.ai>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Kever Yang <kever.yang@rock-chips.com>
Cc: linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	Jagan Teki <jagan@edgeble.ai>
Subject: [PATCH v4 12/13] ARM: dts: rockchip: rv1126: Add Edgeble AI Edge Compute Module 0
Date: Wed,  7 Sep 2022 21:32:06 +0530
Message-Id: <20220907160207.3845791-13-jagan@edgeble.ai>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220907160207.3845791-1-jagan@edgeble.ai>
References: <20220907160207.3845791-1-jagan@edgeble.ai>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220907_090319_148359_4A412840 
X-CRM114-Status: GOOD (  14.35  )
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

Edge Compute Module 0 is a 96boards SoM-CB compute module based
on Rockchip RV1126 from Edgeble AI.

General features:
- Rockchip RV1126
- 2/4GB LPDDR4
- 16GB eMMC
- Fn-link 8223A-SR WiFi/BT

Edge Compute Module 0 needs to mount on top of Edgeble AI Carrier
boards for creating complete platform solutions.

Add support for it.

Signed-off-by: Jagan Teki <jagan@edgeble.ai>
---
Changes for v4:
- rebase on -next
Changes for v3:
- none
Changes for v2:
- change meaninful dtsi name 

 .../rv1126-edgeble-edge-compute-module-0.dtsi | 353 ++++++++++++++++++
 1 file changed, 353 insertions(+)
 create mode 100644 arch/arm/boot/dts/rv1126-edgeble-edge-compute-module-0.dtsi

diff --git a/arch/arm/boot/dts/rv1126-edgeble-edge-compute-module-0.dtsi b/arch/arm/boot/dts/rv1126-edgeble-edge-compute-module-0.dtsi
new file mode 100644
index 000000000000..212990d8fb75
--- /dev/null
+++ b/arch/arm/boot/dts/rv1126-edgeble-edge-compute-module-0.dtsi
@@ -0,0 +1,353 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Copyright (c) 2020 Rockchip Electronics Co., Ltd.
+ * Copyright (c) 2022 Edgeble AI Technologies Pvt. Ltd.
+ */
+
+/ {
+	compatible = "edgeble,edge-compute-module-0", "rockchip,rv1126";
+
+	aliases {
+		mmc0 = &emmc;
+	};
+
+	vcc5v0_sys: vccsys {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc5v0_sys";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+	};
+
+	vccio_flash: vccio-flash {
+		compatible = "regulator-fixed";
+		enable-active-high;
+		gpios = <&gpio0 RK_PB3 GPIO_ACTIVE_HIGH>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&flash_vol_sel>;
+		regulator-name = "vccio_flash";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <1800000>;
+		regulator-max-microvolt = <1800000>;
+		vin-supply = <&vcc_3v3>;
+	};
+
+	sdio_pwrseq: sdio-pwrseq {
+		compatible = "mmc-pwrseq-simple";
+		clocks = <&rk809 1>;
+		clock-names = "ext_clock";
+		pinctrl-names = "default";
+		pinctrl-0 = <&wifi_enable_h>;
+		reset-gpios = <&gpio1 RK_PD0 GPIO_ACTIVE_LOW>;
+	};
+};
+
+&cpu0 {
+	cpu-supply = <&vdd_arm>;
+};
+
+&emmc {
+	bus-width = <8>;
+	non-removable;
+	pinctrl-names = "default";
+	pinctrl-0 = <&emmc_bus8 &emmc_cmd &emmc_clk &emmc_rstnout>;
+	vmmc-supply = <&vcc_3v3>;
+	vqmmc-supply = <&vccio_flash>;
+	rockchip,default-sample-phase = <90>;
+	status = "okay";
+};
+
+&i2c0 {
+	status = "okay";
+	clock-frequency = <400000>;
+
+	rk809: pmic@20 {
+		compatible = "rockchip,rk809";
+		reg = <0x20>;
+		interrupt-parent = <&gpio0>;
+		interrupts = <RK_PB1 IRQ_TYPE_LEVEL_LOW>;
+		#clock-cells = <1>;
+		clock-output-names = "rk808-clkout1", "rk808-clkout2";
+		pinctrl-names = "default";
+		pinctrl-0 = <&pmic_int_l>;
+		rockchip,system-power-controller;
+		wakeup-source;
+
+		vcc1-supply = <&vcc5v0_sys>;
+		vcc2-supply = <&vcc5v0_sys>;
+		vcc3-supply = <&vcc5v0_sys>;
+		vcc4-supply = <&vcc5v0_sys>;
+		vcc5-supply = <&vcc_buck5>;
+		vcc6-supply = <&vcc_buck5>;
+		vcc7-supply = <&vcc5v0_sys>;
+		vcc8-supply = <&vcc3v3_sys>;
+		vcc9-supply = <&vcc5v0_sys>;
+
+		regulators {
+			vdd_npu_vepu: DCDC_REG1 {
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <650000>;
+				regulator-max-microvolt = <950000>;
+				regulator-ramp-delay = <6001>;
+				regulator-initial-mode = <0x2>;
+				regulator-name = "vdd_npu_vepu";
+
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+
+			vdd_arm: DCDC_REG2 {
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <725000>;
+				regulator-max-microvolt = <1350000>;
+				regulator-ramp-delay = <6001>;
+				regulator-initial-mode = <0x2>;
+				regulator-name = "vdd_arm";
+
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+
+			vcc_ddr: DCDC_REG3 {
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-initial-mode = <0x2>;
+				regulator-name = "vcc_ddr";
+
+				regulator-state-mem {
+					regulator-on-in-suspend;
+				};
+			};
+
+			vcc3v3_sys: DCDC_REG4 {
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <3300000>;
+				regulator-max-microvolt = <3300000>;
+				regulator-initial-mode = <0x2>;
+				regulator-name = "vcc3v3_sys";
+
+				regulator-state-mem {
+					regulator-on-in-suspend;
+					regulator-suspend-microvolt = <3300000>;
+				};
+			};
+
+			vcc_buck5: DCDC_REG5 {
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <2200000>;
+				regulator-max-microvolt = <2200000>;
+				regulator-name = "vcc_buck5";
+
+				regulator-state-mem {
+					regulator-on-in-suspend;
+					regulator-suspend-microvolt = <2200000>;
+				};
+			};
+
+			vcc_0v8: LDO_REG1 {
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <800000>;
+				regulator-max-microvolt = <800000>;
+				regulator-name = "vcc_0v8";
+
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+
+			vcc1v8_pmu: LDO_REG2 {
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <1800000>;
+				regulator-name = "vcc1v8_pmu";
+
+				regulator-state-mem {
+					regulator-on-in-suspend;
+					regulator-suspend-microvolt = <1800000>;
+				};
+			};
+
+			vdd0v8_pmu: LDO_REG3 {
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <800000>;
+				regulator-max-microvolt = <800000>;
+				regulator-name = "vcc0v8_pmu";
+
+				regulator-state-mem {
+					regulator-on-in-suspend;
+					regulator-suspend-microvolt = <800000>;
+				};
+			};
+
+			vcc_1v8: LDO_REG4 {
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <1800000>;
+				regulator-name = "vcc_1v8";
+
+				regulator-state-mem {
+					regulator-on-in-suspend;
+					regulator-suspend-microvolt = <1800000>;
+				};
+			};
+
+			vcc_dovdd: LDO_REG5 {
+				regulator-boot-on;
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <1800000>;
+				regulator-name = "vcc_dovdd";
+
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+
+			vcc_dvdd: LDO_REG6 {
+				regulator-min-microvolt = <1200000>;
+				regulator-max-microvolt = <1200000>;
+				regulator-name = "vcc_dvdd";
+
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+
+			vcc_avdd: LDO_REG7 {
+				regulator-min-microvolt = <2800000>;
+				regulator-max-microvolt = <2800000>;
+				regulator-name = "vcc_avdd";
+
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+
+			vccio_sd: LDO_REG8 {
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <3300000>;
+				regulator-name = "vccio_sd";
+
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+
+			vcc3v3_sd: LDO_REG9 {
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <3300000>;
+				regulator-max-microvolt = <3300000>;
+				regulator-name = "vcc3v3_sd";
+
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+
+			vcc_5v0: SWITCH_REG1 {
+				regulator-name = "vcc_5v0";
+			};
+
+			vcc_3v3: SWITCH_REG2 {
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-name = "vcc_3v3";
+			};
+		};
+	};
+};
+
+&pinctrl {
+	bt {
+		bt_enable: bt-enable {
+			rockchip,pins = <3 RK_PA5 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+
+	flash {
+		flash_vol_sel: flash-vol-sel {
+			rockchip,pins = <0 RK_PB3 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+
+	pmic {
+		pmic_int_l: pmic-int-l {
+			rockchip,pins = <0 RK_PB1 RK_FUNC_GPIO &pcfg_pull_up>;
+		};
+	};
+
+	wifi {
+		wifi_enable_h: wifi-enable-h {
+			rockchip,pins = <1 RK_PD0 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+};
+
+&pmu_io_domains {
+	pmuio0-supply = <&vcc1v8_pmu>;
+	pmuio1-supply = <&vcc3v3_sys>;
+	vccio1-supply = <&vccio_flash>;
+	vccio2-supply = <&vccio_sd>;
+	vccio3-supply = <&vcc_1v8>;
+	vccio4-supply = <&vcc_dovdd>;
+	vccio5-supply = <&vcc_1v8>;
+	vccio6-supply = <&vcc_1v8>;
+	vccio7-supply = <&vcc_dovdd>;
+	status = "okay";
+};
+
+&saradc {
+	vref-supply = <&vcc_1v8>;
+	status = "okay";
+};
+
+&sdio {
+	#address-cells = <1>;
+	#size-cells = <0>;
+	max-frequency = <100000000>;
+	bus-width = <4>;
+	cap-sd-highspeed;
+	cap-sdio-irq;
+	keep-power-in-suspend;
+	mmc-pwrseq = <&sdio_pwrseq>;
+	non-removable;
+	pinctrl-names = "default";
+	pinctrl-0 = <&sdmmc1_clk &sdmmc1_cmd &sdmmc1_bus4>;
+	vmmc-supply = <&vcc3v3_sys>;
+	vqmmc-supply = <&vcc_1v8>;
+	rockchip,default-sample-phase = <90>;
+	sd-uhs-sdr104;
+	status = "okay";
+};
+
+&uart0 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&uart0_xfer &uart0_ctsn &uart0_rtsn>;
+	status = "okay";
+
+	bluetooth {
+		compatible = "qcom,qca9377-bt";
+		clocks = <&rk809 1>;
+		clock-names = "lpo";
+		enable-gpios = <&gpio3 RK_PA5 GPIO_ACTIVE_HIGH>; /* BT_RST */
+		max-speed = <2000000>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&bt_enable>;
+		vddxo-supply = <&vcc3v3_sys>;
+		vddio-supply = <&vcc_1v8>;
+	};
+};
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
