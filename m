Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B8C7CC433F5
	for <linux-rockchip@archiver.kernel.org>; Tue, 15 Feb 2022 21:16:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=95Rkrq16dwqf7bA3d+aUuz4jFVvL0pQUSzn0CEfvaC4=; b=AxuUrNvWWJmfMW
	HPVpEU0v4DIBNir5jEjoJ9ig6n3JaqmKcaNKduPWWiJpf0SO9wluZao3s3Y/EMxRg4fiPJLuU0sbY
	t9AvSQbyTcHb9ZPN9hVbvxYUHCLsgoX+aKzVGNiONPlnfU700TwVF22cUFKCs6nhqW3rK9DGsV3HS
	sOhAmUs9vxM6oQubIWbh80/xxm1C66NnuXhnckrIks29LLjMoqurSpszC61qhrvecyXKqqTJ4Lv1K
	qD0zckX7z/bpVxt66B55P75W+iXxVtFFXm7y4xg76zAjRqpTCk82jourqcgyo9G0CD6j9g2ON96mz
	HyM1/wkIFj9s9am11+8A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nK5B7-004g9b-A5; Tue, 15 Feb 2022 21:16:05 +0000
Received: from mail-oo1-xc2c.google.com ([2607:f8b0:4864:20::c2c])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nK5B1-004g6l-7Q
 for linux-rockchip@lists.infradead.org; Tue, 15 Feb 2022 21:16:03 +0000
Received: by mail-oo1-xc2c.google.com with SMTP id
 r15-20020a4ae5cf000000b002edba1d3349so188367oov.3
 for <linux-rockchip@lists.infradead.org>; Tue, 15 Feb 2022 13:15:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=mdX2ut4nwM4LgcfPxzNXYJhWqS4sB7RprBD9n3sCdAc=;
 b=RJAnDgGWnj3ynnnvZGAzOAI5BzK5PxXkoS8EFJDkfaDEkIFiC1y/DlkZvqW10z1Bvn
 G/At+vU2G9lyRdcP0zNBduVuOQO6Qh7TacMFapaTkjmGVnUkbaB5fN6c3g0F7bGX0nxe
 IatD7xXey/OCNjK7eiq10/elsqJVUhnhxDi6335H3DhXytUcAJ/f4844lpnu031Lw0us
 WzwPeY1dY+rmsls3/ezXNWrWz/iaC2OpVbD3w+ASNC5uYe5QZjGpM30rLArXUyOSyMDs
 7VZATI3yAwKAqOnnVPlt/zOWbsVXa8SdVa2/71k/XIXQPMjdUfAfCMyNEhq5eZ3uCg/V
 xzTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=mdX2ut4nwM4LgcfPxzNXYJhWqS4sB7RprBD9n3sCdAc=;
 b=2yeIxWPsYwjcx7713b0pyeE2vsoAZ2ut4IZjwJ1rNf+2WCkG9leFFslagW0EYfpaUW
 qhgMZbvMjuxCMP2c5uD8rUj0qftK4ffRdRtNoBoyQKw0zIlewraocLIDNBpnY3meb45u
 z8g830HpV3YiBDWHBCef0eu4eG4EnirAA4xAm/NPfUtc4Ux3xm9ZVpOKE+vsr65wLMlg
 yEK5qwjWBn2x0mC6Apt6H2NfbV+sV02pnCNte2pYJrO/1GJFw/VtydNQhN3yequ91ULf
 ZOx+hbNtqKyX4iKevwCvUI5gos/jNepBtG7wVl7MSJUZkSO5WWSLEfGLHqOTgXOARMKi
 IGZg==
X-Gm-Message-State: AOAM533B2/WZFVLzAlIKLRMHNe+Ff1mzegGA+YqqcZB50CTVVkUuxvpO
 UxzOGfrMEGCn0bZ6KVhI2LU=
X-Google-Smtp-Source: ABdhPJzdrT7JEXC06yiRc0/NM5d1UVNf2rE8FnABIX6kXvY3EKidIyMNbix9ml8ERzlKS72fbADsNQ==
X-Received: by 2002:a05:6870:1049:: with SMTP id
 9mr348448oaj.345.1644959756957; 
 Tue, 15 Feb 2022 13:15:56 -0800 (PST)
Received: from wintermute.localdomain (cpe-76-183-134-35.tx.res.rr.com.
 [76.183.134.35])
 by smtp.gmail.com with ESMTPSA id d20sm4736083otu.61.2022.02.15.13.15.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 15 Feb 2022 13:15:56 -0800 (PST)
From: Chris Morgan <macroalpha82@gmail.com>
To: devicetree@vger.kernel.org
Cc: lee.jones@linaro.org, robh+dt@kernel.org, heiko@sntech.de,
 zyw@rock-chips.com, zhangqing@rock-chips.com,
 linux-rockchip@lists.infradead.org, Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH v3] dt-bindings: mfd: rk808: Convert bindings to yaml
Date: Tue, 15 Feb 2022 15:15:48 -0600
Message-Id: <20220215211548.31940-1-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220215_131559_351843_72B5F4AF 
X-CRM114-Status: GOOD (  20.17  )
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

From: Chris Morgan <macromorgan@hotmail.com>

Convert the rk808 bindings into yaml format. I have tested the dtbs
against arm and arm64 and the only error outstanding is one for the
rk809. Upon examination of the datasheet for the rk809 PMIC it appears
that there is no vcc13 or vcc14 input, and these errors are legitimate,
and that the upstream devicetrees are incorrect. This error occurs for
4 boards currently: rk3399-roc-pc, rk3399-pinebook-pro,
rk3399-roc-pc-mezzanine, and rk3399-roc-pc-plus.

Changes from V2:
 - Dropped language about battery. I'm keeping the commits entirely
   separate.
 - Added vddio-supply for rk809 and rk818, since after examining the
   datasheet I can confirm such a supply exists.

Changes from V1:
 - Removed generic descriptions.
 - Added maxItems to clock-output-names. Max items is 2 per the driver.
 - Added unevaluatedProperties as false to regulators.
 - Correct i2c node.
 - Added note about the battery.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 .../devicetree/bindings/mfd/rk808.txt         | 465 ------------------
 .../bindings/mfd/rockchip,rk805.yaml          |  88 ++++
 .../bindings/mfd/rockchip,rk808.yaml          | 257 ++++++++++
 .../bindings/mfd/rockchip,rk809.yaml          |  99 ++++
 .../bindings/mfd/rockchip,rk817.yaml          | 314 ++++++++++++
 .../bindings/mfd/rockchip,rk818.yaml          | 110 +++++
 6 files changed, 868 insertions(+), 465 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/mfd/rk808.txt
 create mode 100644 Documentation/devicetree/bindings/mfd/rockchip,rk805.yaml
 create mode 100644 Documentation/devicetree/bindings/mfd/rockchip,rk808.yaml
 create mode 100644 Documentation/devicetree/bindings/mfd/rockchip,rk809.yaml
 create mode 100644 Documentation/devicetree/bindings/mfd/rockchip,rk817.yaml
 create mode 100644 Documentation/devicetree/bindings/mfd/rockchip,rk818.yaml

diff --git a/Documentation/devicetree/bindings/mfd/rk808.txt b/Documentation/devicetree/bindings/mfd/rk808.txt
deleted file mode 100644
index 23a17a6663ec..000000000000
--- a/Documentation/devicetree/bindings/mfd/rk808.txt
+++ /dev/null
@@ -1,465 +0,0 @@
-RK8XX Power Management Integrated Circuit
-
-The rk8xx family current members:
-rk805
-rk808
-rk809
-rk817
-rk818
-
-Required properties:
-- compatible: "rockchip,rk805"
-- compatible: "rockchip,rk808"
-- compatible: "rockchip,rk809"
-- compatible: "rockchip,rk817"
-- compatible: "rockchip,rk818"
-- reg: I2C slave address
-- interrupts: the interrupt outputs of the controller.
-- #clock-cells: from common clock binding; shall be set to 1 (multiple clock
-  outputs). See <dt-bindings/clock/rockchip,rk808.h> for clock IDs.
-
-Optional properties:
-- clock-output-names: From common clock binding to override the
-  default output clock name
-- rockchip,system-power-controller: Telling whether or not this pmic is controlling
-  the system power.
-- wakeup-source: Device can be used as a wakeup source.
-
-Optional RK805 properties:
-- vcc1-supply:  The input supply for DCDC_REG1
-- vcc2-supply:  The input supply for DCDC_REG2
-- vcc3-supply:  The input supply for DCDC_REG3
-- vcc4-supply:  The input supply for DCDC_REG4
-- vcc5-supply:  The input supply for LDO_REG1 and LDO_REG2
-- vcc6-supply:  The input supply for LDO_REG3
-
-Optional RK808 properties:
-- vcc1-supply:  The input supply for DCDC_REG1
-- vcc2-supply:  The input supply for DCDC_REG2
-- vcc3-supply:  The input supply for DCDC_REG3
-- vcc4-supply:  The input supply for DCDC_REG4
-- vcc6-supply:  The input supply for LDO_REG1 and LDO_REG2
-- vcc7-supply:  The input supply for LDO_REG3 and LDO_REG7
-- vcc8-supply:  The input supply for SWITCH_REG1
-- vcc9-supply:  The input supply for LDO_REG4 and LDO_REG5
-- vcc10-supply: The input supply for LDO_REG6
-- vcc11-supply: The input supply for LDO_REG8
-- vcc12-supply: The input supply for SWITCH_REG2
-- dvs-gpios:  buck1/2 can be controlled by gpio dvs, this is GPIO specifiers
-  for 2 host gpio's used for dvs. The format of the gpio specifier depends in
-  the gpio controller. If DVS GPIOs aren't present, voltage changes will happen
-  very quickly with no slow ramp time.
-
-Optional shared RK809 and RK817 properties:
-- vcc1-supply:  The input supply for DCDC_REG1
-- vcc2-supply:  The input supply for DCDC_REG2
-- vcc3-supply:  The input supply for DCDC_REG3
-- vcc4-supply:  The input supply for DCDC_REG4
-- vcc5-supply:  The input supply for LDO_REG1, LDO_REG2, LDO_REG3
-- vcc6-supply:  The input supply for LDO_REG4, LDO_REG5, LDO_REG6
-- vcc7-supply:  The input supply for LDO_REG7, LDO_REG8, LDO_REG9
-
-Optional RK809 properties:
-- vcc8-supply:  The input supply for SWITCH_REG1
-- vcc9-supply:  The input supply for DCDC_REG5, SWITCH_REG2
-
-Optional RK817 properties:
-- clocks:	The input clock for the audio codec
-- clock-names:	The clock name for the codec clock. Should be "mclk".
-- #sound-dai-cells: Needed for the interpretation of sound dais. Should be 0.
-
-- vcc8-supply:  The input supply for BOOST
-- vcc9-supply:  The input supply for OTG_SWITCH
-- codec:	The child node for the codec to hold additional properties.
-		If no additional properties are required for the codec, this
-		node can be omitted.
-
-- rockchip,mic-in-differential: Telling if the microphone uses differential
-				mode. Should be under the codec child node.
-
-Optional RK818 properties:
-- vcc1-supply:  The input supply for DCDC_REG1
-- vcc2-supply:  The input supply for DCDC_REG2
-- vcc3-supply:  The input supply for DCDC_REG3
-- vcc4-supply:  The input supply for DCDC_REG4
-- boost-supply: The input supply for DCDC_BOOST
-- vcc6-supply:  The input supply for LDO_REG1 and LDO_REG2
-- vcc7-supply:  The input supply for LDO_REG3, LDO_REG5 and LDO_REG7
-- vcc8-supply:  The input supply for LDO_REG4, LDO_REG6 and LDO_REG8
-- vcc9-supply:  The input supply for LDO_REG9 and SWITCH_REG
-- h_5v-supply:  The input supply for HDMI_SWITCH
-- usb-supply:   The input supply for OTG_SWITCH
-
-Regulators: All the regulators of RK8XX to be instantiated shall be
-listed in a child node named 'regulators'. Each regulator is represented
-by a child node of the 'regulators' node.
-
-	regulator-name {
-		/* standard regulator bindings here */
-	};
-
-Following regulators of the RK805 PMIC regulators are supported. Note that
-the 'n' in regulator name, as in DCDC_REGn or LDOn, represents the DCDC or LDO
-number as described in RK805 datasheet.
-
-	- DCDC_REGn
-		- valid values for n are 1 to 4.
-	- LDO_REGn
-		- valid values for n are 1 to 3
-
-Following regulators of the RK808 PMIC block are supported. Note that
-the 'n' in regulator name, as in DCDC_REGn or LDOn, represents the DCDC or LDO
-number as described in RK808 datasheet.
-
-	- DCDC_REGn
-		- valid values for n are 1 to 4.
-	- LDO_REGn
-		- valid values for n are 1 to 8.
-	- SWITCH_REGn
-		- valid values for n are 1 to 2
-
-Following regulators of the RK809 and RK817 PMIC blocks are supported. Note that
-the 'n' in regulator name, as in DCDC_REGn or LDOn, represents the DCDC or LDO
-number as described in RK809 and RK817 datasheets.
-
-	- DCDC_REGn
-		- valid values for n are 1 to 5 for RK809.
-		- valid values for n are 1 to 4 for RK817.
-	- LDO_REGn
-		- valid values for n are 1 to 9 for RK809.
-		- valid values for n are 1 to 9 for RK817.
-	- SWITCH_REGn
-		- valid values for n are 1 to 2 for RK809.
-	- BOOST for RK817
-	- OTG_SWITCH for RK817
-
-Following regulators of the RK818 PMIC block are supported. Note that
-the 'n' in regulator name, as in DCDC_REGn or LDOn, represents the DCDC or LDO
-number as described in RK818 datasheet.
-
-	- DCDC_REGn
-		- valid values for n are 1 to 4.
-	- LDO_REGn
-		- valid values for n are 1 to 9.
-	- SWITCH_REG
-	- HDMI_SWITCH
-	- OTG_SWITCH
-
-It is necessary to configure three pins for both the RK809 and RK817, the three
-pins are "gpio_ts" "gpio_gt" "gpio_slp".
-	The gpio_gt and gpio_ts pins support the gpio function.
-	The gpio_slp pin is for controlling the pmic states, as below:
-		- reset
-		- power down
-		- sleep
-
-Standard regulator bindings are used inside regulator subnodes. Check
-  Documentation/devicetree/bindings/regulator/regulator.txt
-for more details
-
-Example:
-	rk808: pmic@1b {
-		compatible = "rockchip,rk808";
-		clock-output-names = "xin32k", "rk808-clkout2";
-		interrupt-parent = <&gpio0>;
-		interrupts = <4 IRQ_TYPE_LEVEL_LOW>;
-		pinctrl-names = "default";
-		pinctrl-0 = <&pmic_int &dvs_1 &dvs_2>;
-		dvs-gpios = <&gpio7 11 GPIO_ACTIVE_HIGH>,
-			    <&gpio7 15 GPIO_ACTIVE_HIGH>;
-		reg = <0x1b>;
-		rockchip,system-power-controller;
-		wakeup-source;
-		#clock-cells = <1>;
-
-		vcc8-supply = <&vcc_18>;
-		vcc9-supply = <&vcc_io>;
-		vcc10-supply = <&vcc_io>;
-		vcc12-supply = <&vcc_io>;
-		vddio-supply = <&vccio_pmu>;
-
-		regulators {
-			vdd_cpu: DCDC_REG1 {
-				regulator-always-on;
-				regulator-boot-on;
-				regulator-min-microvolt = <750000>;
-				regulator-max-microvolt = <1300000>;
-				regulator-name = "vdd_arm";
-			};
-
-			vdd_gpu: DCDC_REG2 {
-				regulator-always-on;
-				regulator-boot-on;
-				regulator-min-microvolt = <850000>;
-				regulator-max-microvolt = <1250000>;
-				regulator-name = "vdd_gpu";
-			};
-
-			vcc_ddr: DCDC_REG3 {
-				regulator-always-on;
-				regulator-boot-on;
-				regulator-name = "vcc_ddr";
-			};
-
-			vcc_io: DCDC_REG4 {
-				regulator-always-on;
-				regulator-boot-on;
-				regulator-min-microvolt = <3300000>;
-				regulator-max-microvolt = <3300000>;
-				regulator-name = "vcc_io";
-			};
-
-			vccio_pmu: LDO_REG1 {
-				regulator-always-on;
-				regulator-boot-on;
-				regulator-min-microvolt = <3300000>;
-				regulator-max-microvolt = <3300000>;
-				regulator-name = "vccio_pmu";
-			};
-
-			vcc_tp: LDO_REG2 {
-				regulator-always-on;
-				regulator-boot-on;
-				regulator-min-microvolt = <3300000>;
-				regulator-max-microvolt = <3300000>;
-				regulator-name = "vcc_tp";
-			};
-
-			vdd_10: LDO_REG3 {
-				regulator-always-on;
-				regulator-boot-on;
-				regulator-min-microvolt = <1000000>;
-				regulator-max-microvolt = <1000000>;
-				regulator-name = "vdd_10";
-			};
-
-			vcc18_lcd: LDO_REG4 {
-				regulator-always-on;
-				regulator-boot-on;
-				regulator-min-microvolt = <1800000>;
-				regulator-max-microvolt = <1800000>;
-				regulator-name = "vcc18_lcd";
-			};
-
-			vccio_sd: LDO_REG5 {
-				regulator-always-on;
-				regulator-boot-on;
-				regulator-min-microvolt = <1800000>;
-				regulator-max-microvolt = <3300000>;
-				regulator-name = "vccio_sd";
-			};
-
-			vdd10_lcd: LDO_REG6 {
-				regulator-always-on;
-				regulator-boot-on;
-				regulator-min-microvolt = <1000000>;
-				regulator-max-microvolt = <1000000>;
-				regulator-name = "vdd10_lcd";
-			};
-
-			vcc_18: LDO_REG7 {
-				regulator-always-on;
-				regulator-boot-on;
-				regulator-min-microvolt = <1800000>;
-				regulator-max-microvolt = <1800000>;
-				regulator-name = "vcc_18";
-			};
-
-			vcca_codec: LDO_REG8 {
-				regulator-always-on;
-				regulator-boot-on;
-				regulator-min-microvolt = <3300000>;
-				regulator-max-microvolt = <3300000>;
-				regulator-name = "vcca_codec";
-			};
-
-			vcc_wl: SWITCH_REG1 {
-				regulator-always-on;
-				regulator-boot-on;
-				regulator-name = "vcc_wl";
-			};
-
-			vcc_lcd: SWITCH_REG2 {
-				regulator-always-on;
-				regulator-boot-on;
-				regulator-name = "vcc_lcd";
-			};
-		};
-	};
-
-	rk817: pmic@20 {
-		compatible = "rockchip,rk817";
-		reg = <0x20>;
-		interrupt-parent = <&gpio0>;
-		interrupts = <RK_PB2 IRQ_TYPE_LEVEL_LOW>;
-		clock-output-names = "rk808-clkout1", "xin32k";
-		clock-names = "mclk";
-		clocks = <&cru SCLK_I2S1_OUT>;
-		pinctrl-names = "default";
-		pinctrl-0 = <&pmic_int>, <&i2s1_2ch_mclk>;
-		wakeup-source;
-		#clock-cells = <1>;
-		#sound-dai-cells = <0>;
-
-		vcc1-supply = <&vccsys>;
-		vcc2-supply = <&vccsys>;
-		vcc3-supply = <&vccsys>;
-		vcc4-supply = <&vccsys>;
-		vcc5-supply = <&vccsys>;
-		vcc6-supply = <&vccsys>;
-		vcc7-supply = <&vccsys>;
-
-		regulators {
-			vdd_logic: DCDC_REG1 {
-				regulator-name = "vdd_logic";
-				regulator-min-microvolt = <950000>;
-				regulator-max-microvolt = <1150000>;
-				regulator-ramp-delay = <6001>;
-				regulator-always-on;
-				regulator-boot-on;
-
-				regulator-state-mem {
-					regulator-on-in-suspend;
-					regulator-suspend-microvolt = <950000>;
-				};
-			};
-
-			vdd_arm: DCDC_REG2 {
-				regulator-name = "vdd_arm";
-				regulator-min-microvolt = <950000>;
-				regulator-max-microvolt = <1350000>;
-				regulator-ramp-delay = <6001>;
-				regulator-always-on;
-				regulator-boot-on;
-
-				regulator-state-mem {
-					regulator-off-in-suspend;
-					regulator-suspend-microvolt = <950000>;
-				};
-			};
-
-			vcc_ddr: DCDC_REG3 {
-				regulator-name = "vcc_ddr";
-				regulator-always-on;
-				regulator-boot-on;
-
-				regulator-state-mem {
-					regulator-on-in-suspend;
-				};
-			};
-
-			vcc_3v3: DCDC_REG4 {
-				regulator-name = "vcc_3v3";
-				regulator-min-microvolt = <3300000>;
-				regulator-max-microvolt = <3300000>;
-				regulator-always-on;
-				regulator-boot-on;
-
-				regulator-state-mem {
-					regulator-off-in-suspend;
-					regulator-suspend-microvolt = <3300000>;
-				};
-			};
-
-			vcc_1v8: LDO_REG2 {
-				regulator-name = "vcc_1v8";
-				regulator-min-microvolt = <1800000>;
-				regulator-max-microvolt = <1800000>;
-				regulator-always-on;
-				regulator-boot-on;
-
-				regulator-state-mem {
-					regulator-on-in-suspend;
-					regulator-suspend-microvolt = <1800000>;
-				};
-			};
-
-			vdd_1v0: LDO_REG3 {
-				regulator-name = "vdd_1v0";
-				regulator-min-microvolt = <1000000>;
-				regulator-max-microvolt = <1000000>;
-				regulator-always-on;
-				regulator-boot-on;
-
-				regulator-state-mem {
-					regulator-on-in-suspend;
-					regulator-suspend-microvolt = <1000000>;
-				};
-			};
-
-			vcc3v3_pmu: LDO_REG4 {
-				regulator-name = "vcc3v3_pmu";
-				regulator-min-microvolt = <3300000>;
-				regulator-max-microvolt = <3300000>;
-				regulator-always-on;
-				regulator-boot-on;
-
-				regulator-state-mem {
-					regulator-on-in-suspend;
-					regulator-suspend-microvolt = <3300000>;
-				};
-			};
-
-			vccio_sd: LDO_REG5 {
-				regulator-name = "vccio_sd";
-				regulator-min-microvolt = <1800000>;
-				regulator-max-microvolt = <3300000>;
-				regulator-always-on;
-				regulator-boot-on;
-
-				regulator-state-mem {
-					regulator-on-in-suspend;
-					regulator-suspend-microvolt = <3300000>;
-				};
-			};
-
-			vcc_sd: LDO_REG6 {
-				regulator-name = "vcc_sd";
-				regulator-min-microvolt = <3300000>;
-				regulator-max-microvolt = <3300000>;
-				regulator-boot-on;
-
-				regulator-state-mem {
-					regulator-on-in-suspend;
-					regulator-suspend-microvolt = <3300000>;
-				};
-			};
-
-			vcc_bl: LDO_REG7 {
-				regulator-name = "vcc_bl";
-				regulator-min-microvolt = <3300000>;
-				regulator-max-microvolt = <3300000>;
-
-				regulator-state-mem {
-					regulator-off-in-suspend;
-					regulator-suspend-microvolt = <3300000>;
-				};
-			};
-
-			vcc_lcd: LDO_REG8 {
-				regulator-name = "vcc_lcd";
-				regulator-min-microvolt = <2800000>;
-				regulator-max-microvolt = <2800000>;
-
-				regulator-state-mem {
-					regulator-off-in-suspend;
-					regulator-suspend-microvolt = <2800000>;
-				};
-			};
-
-			vcc_cam: LDO_REG9 {
-				regulator-name = "vcc_cam";
-				regulator-min-microvolt = <3000000>;
-				regulator-max-microvolt = <3000000>;
-
-				regulator-state-mem {
-					regulator-off-in-suspend;
-					regulator-suspend-microvolt = <3000000>;
-				};
-			};
-		};
-
-		rk817_codec: codec {
-			rockchip,mic-in-differential;
-		};
-	};
diff --git a/Documentation/devicetree/bindings/mfd/rockchip,rk805.yaml b/Documentation/devicetree/bindings/mfd/rockchip,rk805.yaml
new file mode 100644
index 000000000000..1b928b94fbfd
--- /dev/null
+++ b/Documentation/devicetree/bindings/mfd/rockchip,rk805.yaml
@@ -0,0 +1,88 @@
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/mfd/rockchip,rk805.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: RK805 Power Management Integrated Circuit
+
+maintainers:
+  - Chris Zhong <zyw@rock-chips.com>
+  - Zhang Qing <zhangqing@rock-chips.com>
+
+description: |
+  Rockchip RK805 series PMIC. This device consists of an i2c controlled MFD
+  that includes multiple switchable regulators.
+
+properties:
+  compatible:
+    enum:
+      - rockchip,rk805
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+  '#clock-cells':
+    const: 1
+
+  clock-output-names:
+    maxItems: 2
+    description:
+      From common clock binding to override the default output clock name.
+
+  gpio-controller: true
+
+  '#gpio-cells':
+    const: 2
+
+  rockchip,system-power-controller:
+    type: boolean
+    description:
+      Telling whether or not this PMIC is controlling the system power.
+
+  wakeup-source:
+    type: boolean
+    description:
+      Device can be used as a wakeup source.
+
+  vcc1-supply:
+    description:
+      The input supply for DCDC_REG1.
+
+  vcc2-supply:
+    description:
+      The input supply for DCDC_REG2.
+
+  vcc3-supply:
+    description:
+      The input supply for DCDC_REG3.
+
+  vcc4-supply:
+    description:
+      The input supply for DCDC_REG4.
+
+  vcc5-supply:
+    description:
+      The input supply for LDO_REG1 and LDO_REG2.
+
+  vcc6-supply:
+    description:
+      The input supply for LDO_REG3.
+
+  regulators:
+    type: object
+    patternProperties:
+      "^(DCDC_REG[1-4]|LDO_REG[1-3])$":
+        type: object
+        $ref: ../regulator/regulator.yaml#
+    unevaluatedProperties: false
+
+required:
+  - compatible
+  - reg
+  - interrupts
+
+additionalProperties: false
diff --git a/Documentation/devicetree/bindings/mfd/rockchip,rk808.yaml b/Documentation/devicetree/bindings/mfd/rockchip,rk808.yaml
new file mode 100644
index 000000000000..f5908fa01a61
--- /dev/null
+++ b/Documentation/devicetree/bindings/mfd/rockchip,rk808.yaml
@@ -0,0 +1,257 @@
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/mfd/rockchip,rk808.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: RK808 Power Management Integrated Circuit
+
+maintainers:
+  - Chris Zhong <zyw@rock-chips.com>
+  - Zhang Qing <zhangqing@rock-chips.com>
+
+description: |
+  Rockchip RK808 series PMIC. This device consists of an i2c controlled MFD
+  that includes regulators, an RTC, and a power button.
+
+properties:
+  compatible:
+    enum:
+      - rockchip,rk808
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+  '#clock-cells':
+    description:
+      See <dt-bindings/clock/rockchip,rk808.h> for clock IDs.
+    const: 1
+
+  clock-output-names:
+    description:
+      From common clock binding to override the default output clock name.
+    maxItems: 2
+
+  rockchip,system-power-controller:
+    type: boolean
+    description:
+      Telling whether or not this PMIC is controlling the system power.
+
+  wakeup-source:
+    type: boolean
+    description:
+      Device can be used as a wakeup source.
+
+  vcc1-supply:
+    description:
+      The input supply for DCDC_REG1.
+
+  vcc2-supply:
+    description:
+      The input supply for DCDC_REG2.
+
+  vcc3-supply:
+    description:
+      The input supply for DCDC_REG3.
+
+  vcc4-supply:
+    description:
+      The input supply for DCDC_REG4.
+
+  vcc6-supply:
+    description:
+      The input supply for LDO_REG1 and LDO_REG2.
+
+  vcc7-supply:
+    description:
+      The input supply for LDO_REG3 and LDO_REG7.
+
+  vcc8-supply:
+    description:
+      The input supply for SWITCH_REG1.
+
+  vcc9-supply:
+    description:
+      The input supply for LDO_REG4 and LDO_REG5.
+
+  vcc10-supply:
+    description:
+      The input supply for LDO_REG6.
+
+  vcc11-supply:
+    description:
+      The input supply for LDO_REG8.
+
+  vcc12-supply:
+    description:
+      The input supply for SWITCH_REG2.
+
+  vddio-supply:
+    description:
+      The input supply for digital IO.
+
+  dvs-gpios:
+    description: |
+      buck1/2 can be controlled by gpio dvs, this is GPIO specifiers for
+      2 host gpio's used for dvs. The format of the gpio specifier
+      depends in the gpio controller. If DVS GPIOs aren't present,
+      voltage changes will happen very quickly with no slow ramp time.
+    maxItems: 2
+
+  regulators:
+    type: object
+    patternProperties:
+      "^(DCDC_REG[1-4]|LDO_REG[1-8]|SWITCH_REG[1-2])$":
+        type: object
+        $ref: ../regulator/regulator.yaml#
+    unevaluatedProperties: false
+
+required:
+  - compatible
+  - reg
+  - interrupts
+  - "#clock-cells"
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/pinctrl/rockchip.h>
+    #include <dt-bindings/interrupt-controller/irq.h>
+    #include <dt-bindings/gpio/gpio.h>
+    i2c {
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        rk808: pmic@1b {
+            compatible = "rockchip,rk808";
+            clock-output-names = "xin32k", "rk808-clkout2";
+            interrupt-parent = <&gpio0>;
+            interrupts = <4 IRQ_TYPE_LEVEL_LOW>;
+            pinctrl-names = "default";
+            pinctrl-0 = <&pmic_int &dvs_1 &dvs_2>;
+            dvs-gpios = <&gpio7 11 GPIO_ACTIVE_HIGH>,
+                <&gpio7 15 GPIO_ACTIVE_HIGH>;
+            reg = <0x1b>;
+            rockchip,system-power-controller;
+            wakeup-source;
+            #clock-cells = <1>;
+
+            vcc8-supply = <&vcc_18>;
+            vcc9-supply = <&vcc_io>;
+            vcc10-supply = <&vcc_io>;
+            vcc12-supply = <&vcc_io>;
+            vddio-supply = <&vccio_pmu>;
+
+            regulators {
+                vdd_cpu: DCDC_REG1 {
+                    regulator-always-on;
+                    regulator-boot-on;
+                    regulator-min-microvolt = <750000>;
+                    regulator-max-microvolt = <1300000>;
+                    regulator-name = "vdd_arm";
+                };
+
+                vdd_gpu: DCDC_REG2 {
+                    regulator-always-on;
+                    regulator-boot-on;
+                    regulator-min-microvolt = <850000>;
+                    regulator-max-microvolt = <1250000>;
+                    regulator-name = "vdd_gpu";
+                };
+
+                vcc_ddr: DCDC_REG3 {
+                    regulator-always-on;
+                    regulator-boot-on;
+                    regulator-name = "vcc_ddr";
+                };
+
+                vcc_io: DCDC_REG4 {
+                    regulator-always-on;
+                    regulator-boot-on;
+                    regulator-min-microvolt = <3300000>;
+                    regulator-max-microvolt = <3300000>;
+                    regulator-name = "vcc_io";
+                };
+
+                vccio_pmu: LDO_REG1 {
+                    regulator-always-on;
+                    regulator-boot-on;
+                    regulator-min-microvolt = <3300000>;
+                    regulator-max-microvolt = <3300000>;
+                    regulator-name = "vccio_pmu";
+                };
+
+                vcc_tp: LDO_REG2 {
+                    regulator-always-on;
+                    regulator-boot-on;
+                    regulator-min-microvolt = <3300000>;
+                    regulator-max-microvolt = <3300000>;
+                    regulator-name = "vcc_tp";
+                };
+
+                vdd_10: LDO_REG3 {
+                    regulator-always-on;
+                    regulator-boot-on;
+                    regulator-min-microvolt = <1000000>;
+                    regulator-max-microvolt = <1000000>;
+                    regulator-name = "vdd_10";
+                };
+
+                vcc18_lcd: LDO_REG4 {
+                    regulator-always-on;
+                    regulator-boot-on;
+                    regulator-min-microvolt = <1800000>;
+                    regulator-max-microvolt = <1800000>;
+                    regulator-name = "vcc18_lcd";
+                };
+
+                vccio_sd: LDO_REG5 {
+                    regulator-always-on;
+                    regulator-boot-on;
+                    regulator-min-microvolt = <1800000>;
+                    regulator-max-microvolt = <3300000>;
+                    regulator-name = "vccio_sd";
+                };
+
+                vdd10_lcd: LDO_REG6 {
+                    regulator-always-on;
+                    regulator-boot-on;
+                    regulator-min-microvolt = <1000000>;
+                    regulator-max-microvolt = <1000000>;
+                    regulator-name = "vdd10_lcd";
+                };
+
+                vcc_18: LDO_REG7 {
+                    regulator-always-on;
+                    regulator-boot-on;
+                    regulator-min-microvolt = <1800000>;
+                    regulator-max-microvolt = <1800000>;
+                    regulator-name = "vcc_18";
+                };
+
+                vcca_codec: LDO_REG8 {
+                    regulator-always-on;
+                    regulator-boot-on;
+                    regulator-min-microvolt = <3300000>;
+                    regulator-max-microvolt = <3300000>;
+                    regulator-name = "vcca_codec";
+                };
+
+                vcc_wl: SWITCH_REG1 {
+                    regulator-always-on;
+                    regulator-boot-on;
+                    regulator-name = "vcc_wl";
+                };
+
+                vcc_lcd: SWITCH_REG2 {
+                    regulator-always-on;
+                    regulator-boot-on;
+                    regulator-name = "vcc_lcd";
+                };
+            };
+        };
+    };
diff --git a/Documentation/devicetree/bindings/mfd/rockchip,rk809.yaml b/Documentation/devicetree/bindings/mfd/rockchip,rk809.yaml
new file mode 100644
index 000000000000..bc9e1c90deec
--- /dev/null
+++ b/Documentation/devicetree/bindings/mfd/rockchip,rk809.yaml
@@ -0,0 +1,99 @@
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/mfd/rockchip,rk809.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: RK809 Power Management Integrated Circuit
+
+maintainers:
+  - Chris Zhong <zyw@rock-chips.com>
+  - Zhang Qing <zhangqing@rock-chips.com>
+
+description: |
+  Rockchip RK809 series PMIC. This device consists of an i2c controlled MFD
+  that includes regulators, an RTC, and power button.
+
+properties:
+  compatible:
+    enum:
+      - rockchip,rk809
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+  '#clock-cells':
+    description: |
+      See <dt-bindings/clock/rockchip,rk808.h> for clock IDs.
+    maximum: 1
+
+  clock-output-names:
+    description:
+      From common clock binding to override the default output clock name.
+    minItems: 1
+    maxItems: 2
+
+  rockchip,system-power-controller:
+    type: boolean
+    description:
+      Telling whether or not this PMIC is controlling the system power.
+
+  wakeup-source:
+    type: boolean
+    description:
+      Device can be used as a wakeup source.
+
+  vcc1-supply:
+    description:
+      The input supply for DCDC_REG1.
+
+  vcc2-supply:
+    description:
+      The input supply for DCDC_REG2.
+
+  vcc3-supply:
+    description:
+      The input supply for DCDC_REG3.
+
+  vcc4-supply:
+    description:
+      The input supply for DCDC_REG4.
+
+  vcc5-supply:
+    description:
+      The input supply for LDO_REG1, LDO_REG2, and LDO_REG3.
+
+  vcc6-supply:
+    description:
+      The input supply for LDO_REG4, LDO_REG5, and LDO_REG6.
+
+  vcc7-supply:
+    description:
+      The input supply for LDO_REG7, LDO_REG8, and LDO_REG9.
+
+  vcc8-supply:
+    description:
+      The input supply for SWITCH_REG1.
+
+  vcc9-supply:
+    description:
+      The input supply for DCDC_REG5 and SWITCH_REG2.
+
+  regulators:
+    type: object
+    patternProperties:
+      "^(LDO_REG[1-9]|DCDC_REG[1-5]|SWITCH_REG[1-2])$":
+        type: object
+        $ref: ../regulator/regulator.yaml#
+    unevaluatedProperties: false
+
+required:
+  - compatible
+  - reg
+  - interrupts
+  - "#clock-cells"
+
+additionalProperties: false
diff --git a/Documentation/devicetree/bindings/mfd/rockchip,rk817.yaml b/Documentation/devicetree/bindings/mfd/rockchip,rk817.yaml
new file mode 100644
index 000000000000..f1e4efa47ac4
--- /dev/null
+++ b/Documentation/devicetree/bindings/mfd/rockchip,rk817.yaml
@@ -0,0 +1,314 @@
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/mfd/rockchip,rk817.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: RK817 Power Management Integrated Circuit
+
+maintainers:
+  - Chris Zhong <zyw@rock-chips.com>
+  - Zhang Qing <zhangqing@rock-chips.com>
+
+description: |
+  Rockchip RK817 series PMIC. This device consists of an i2c controlled MFD
+  that includes regulators, an RTC, a power button, an audio codec, and a
+  battery charger manager.
+
+properties:
+  compatible:
+    enum:
+      - rockchip,rk817
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+  '#clock-cells':
+    description:
+      See <dt-bindings/clock/rockchip,rk808.h> for clock IDs.
+    const: 1
+
+  clock-output-names:
+    description:
+      From common clock binding to override the default output clock name.
+    maxItems: 2
+
+  rockchip,system-power-controller:
+    type: boolean
+    description:
+      Telling whether or not this PMIC is controlling the system power.
+
+  wakeup-source:
+    type: boolean
+    description:
+      Device can be used as a wakeup source.
+
+  vcc1-supply:
+    description:
+      The input supply for DCDC_REG1.
+
+  vcc2-supply:
+    description:
+      The input supply for DCDC_REG2.
+
+  vcc3-supply:
+    description:
+      The input supply for DCDC_REG3.
+
+  vcc4-supply:
+    description:
+      The input supply for DCDC_REG4.
+
+  vcc5-supply:
+    description:
+      The input supply for LDO_REG1, LDO_REG2, and LDO_REG3.
+
+  vcc6-supply:
+    description:
+      The input supply for LDO_REG4, LDO_REG5, and LDO_REG6.
+
+  vcc7-supply:
+    description:
+      The input supply for LDO_REG7, LDO_REG8, and LDO_REG9.
+
+  vcc8-supply:
+    description:
+      The input supply for BOOST.
+
+  vcc9-supply:
+    description:
+      The input supply for OTG_SWITCH.
+
+  regulators:
+    type: object
+    patternProperties:
+      "^(LDO_REG[1-9]|DCDC_REG[1-4]|BOOST|OTG_SWITCH)$":
+        type: object
+        $ref: ../regulator/regulator.yaml#
+    unevaluatedProperties: false
+
+  clocks:
+    description:
+      The input clock for the audio codec.
+
+  clock-names:
+    description:
+      The clock name for the codec clock.
+    items:
+      - const: mclk
+
+  '#sound-dai-cells':
+    description:
+      Needed for the interpretation of sound dais.
+    const: 0
+
+  codec:
+    description: |
+      The child node for the codec to hold additional properties. If no
+      additional properties are required for the codec, this node can be
+      omitted.
+    type: object
+    properties:
+      rockchip,mic-in-differential:
+        type: boolean
+        description:
+          Describes if the microphone uses differential mode.
+
+required:
+  - compatible
+  - reg
+  - interrupts
+  - "#clock-cells"
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/px30-cru.h>
+    #include <dt-bindings/pinctrl/rockchip.h>
+    #include <dt-bindings/interrupt-controller/irq.h>
+    #include <dt-bindings/gpio/gpio.h>
+    i2c {
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        rk817: pmic@20 {
+            compatible = "rockchip,rk817";
+            reg = <0x20>;
+            interrupt-parent = <&gpio0>;
+            interrupts = <RK_PB2 IRQ_TYPE_LEVEL_LOW>;
+            clock-output-names = "rk808-clkout1", "xin32k";
+            clock-names = "mclk";
+            clocks = <&cru SCLK_I2S1_OUT>;
+            pinctrl-names = "default";
+            pinctrl-0 = <&pmic_int>, <&i2s1_2ch_mclk>;
+            wakeup-source;
+            #clock-cells = <1>;
+            #sound-dai-cells = <0>;
+
+            vcc1-supply = <&vccsys>;
+            vcc2-supply = <&vccsys>;
+            vcc3-supply = <&vccsys>;
+            vcc4-supply = <&vccsys>;
+            vcc5-supply = <&vccsys>;
+            vcc6-supply = <&vccsys>;
+            vcc7-supply = <&vccsys>;
+
+            regulators {
+                vdd_logic: DCDC_REG1 {
+                    regulator-name = "vdd_logic";
+                    regulator-min-microvolt = <950000>;
+                    regulator-max-microvolt = <1150000>;
+                    regulator-ramp-delay = <6001>;
+                    regulator-always-on;
+                    regulator-boot-on;
+
+                    regulator-state-mem {
+                        regulator-on-in-suspend;
+                        regulator-suspend-microvolt = <950000>;
+                    };
+                };
+
+                vdd_arm: DCDC_REG2 {
+                    regulator-name = "vdd_arm";
+                    regulator-min-microvolt = <950000>;
+                    regulator-max-microvolt = <1350000>;
+                    regulator-ramp-delay = <6001>;
+                    regulator-always-on;
+                    regulator-boot-on;
+
+                    regulator-state-mem {
+                        regulator-off-in-suspend;
+                        regulator-suspend-microvolt = <950000>;
+                    };
+                };
+
+                vcc_ddr: DCDC_REG3 {
+                    regulator-name = "vcc_ddr";
+                    regulator-always-on;
+                    regulator-boot-on;
+
+                    regulator-state-mem {
+                        regulator-on-in-suspend;
+                    };
+                };
+
+                vcc_3v3: DCDC_REG4 {
+                    regulator-name = "vcc_3v3";
+                    regulator-min-microvolt = <3300000>;
+                    regulator-max-microvolt = <3300000>;
+                    regulator-always-on;
+                    regulator-boot-on;
+
+                    regulator-state-mem {
+                        regulator-off-in-suspend;
+                        regulator-suspend-microvolt = <3300000>;
+                    };
+                };
+
+                vcc_1v8: LDO_REG2 {
+                    regulator-name = "vcc_1v8";
+                    regulator-min-microvolt = <1800000>;
+                    regulator-max-microvolt = <1800000>;
+                    regulator-always-on;
+                    regulator-boot-on;
+
+                    regulator-state-mem {
+                        regulator-on-in-suspend;
+                        regulator-suspend-microvolt = <1800000>;
+                    };
+                };
+
+                vdd_1v0: LDO_REG3 {
+                    regulator-name = "vdd_1v0";
+                    regulator-min-microvolt = <1000000>;
+                    regulator-max-microvolt = <1000000>;
+                    regulator-always-on;
+                    regulator-boot-on;
+
+                    regulator-state-mem {
+                        regulator-on-in-suspend;
+                        regulator-suspend-microvolt = <1000000>;
+                    };
+                };
+
+                vcc3v3_pmu: LDO_REG4 {
+                    regulator-name = "vcc3v3_pmu";
+                    regulator-min-microvolt = <3300000>;
+                    regulator-max-microvolt = <3300000>;
+                    regulator-always-on;
+                    regulator-boot-on;
+
+                    regulator-state-mem {
+                        regulator-on-in-suspend;
+                        regulator-suspend-microvolt = <3300000>;
+                    };
+                };
+
+                vccio_sd: LDO_REG5 {
+                    regulator-name = "vccio_sd";
+                    regulator-min-microvolt = <1800000>;
+                    regulator-max-microvolt = <3300000>;
+                    regulator-always-on;
+                    regulator-boot-on;
+
+                    regulator-state-mem {
+                        regulator-on-in-suspend;
+                        regulator-suspend-microvolt = <3300000>;
+                    };
+                };
+
+                vcc_sd: LDO_REG6 {
+                    regulator-name = "vcc_sd";
+                    regulator-min-microvolt = <3300000>;
+                    regulator-max-microvolt = <3300000>;
+                    regulator-boot-on;
+
+                    regulator-state-mem {
+                        regulator-on-in-suspend;
+                        regulator-suspend-microvolt = <3300000>;
+                    };
+                };
+
+                vcc_bl: LDO_REG7 {
+                    regulator-name = "vcc_bl";
+                    regulator-min-microvolt = <3300000>;
+                    regulator-max-microvolt = <3300000>;
+
+                    regulator-state-mem {
+                        regulator-off-in-suspend;
+                        regulator-suspend-microvolt = <3300000>;
+                    };
+                };
+
+                vcc_lcd: LDO_REG8 {
+                    regulator-name = "vcc_lcd";
+                    regulator-min-microvolt = <2800000>;
+                    regulator-max-microvolt = <2800000>;
+
+                    regulator-state-mem {
+                        regulator-off-in-suspend;
+                        regulator-suspend-microvolt = <2800000>;
+                    };
+                };
+
+                vcc_cam: LDO_REG9 {
+                    regulator-name = "vcc_cam";
+                    regulator-min-microvolt = <3000000>;
+                    regulator-max-microvolt = <3000000>;
+
+                    regulator-state-mem {
+                        regulator-off-in-suspend;
+                        regulator-suspend-microvolt = <3000000>;
+                    };
+                };
+            };
+
+            rk817_codec: codec {
+                rockchip,mic-in-differential;
+            };
+        };
+    };
diff --git a/Documentation/devicetree/bindings/mfd/rockchip,rk818.yaml b/Documentation/devicetree/bindings/mfd/rockchip,rk818.yaml
new file mode 100644
index 000000000000..aaa573247e3f
--- /dev/null
+++ b/Documentation/devicetree/bindings/mfd/rockchip,rk818.yaml
@@ -0,0 +1,110 @@
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/mfd/rockchip,rk818.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: RK818 Power Management Integrated Circuit
+
+maintainers:
+  - Chris Zhong <zyw@rock-chips.com>
+  - Zhang Qing <zhangqing@rock-chips.com>
+
+description: |
+  Rockchip RK818 series PMIC. This device consists of an i2c controlled MFD
+  that includes regulators, an RTC, and a power button.
+
+properties:
+  compatible:
+    enum:
+      - rockchip,rk818
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+  '#clock-cells':
+    description: |
+      See <dt-bindings/clock/rockchip,rk808.h> for clock IDs.
+    const: 1
+
+  clock-output-names:
+    description:
+      From common clock binding to override the default output clock name.
+    maxItems: 2
+
+  rockchip,system-power-controller:
+    type: boolean
+    description:
+      Telling whether or not this PMIC is controlling the system power.
+
+  wakeup-source:
+    type: boolean
+    description:
+      Device can be used as a wakeup source.
+
+  vcc1-supply:
+    description:
+      The input supply for DCDC_REG1.
+
+  vcc2-supply:
+    description:
+      The input supply for DCDC_REG2.
+
+  vcc3-supply:
+    description:
+      The input supply for DCDC_REG3.
+
+  vcc4-supply:
+    description:
+      The input supply for DCDC_REG4.
+
+  boost-supply:
+    description:
+      The input supply for DCDC_BOOST
+
+  vcc6-supply:
+    description:
+      The input supply for LDO_REG1 and LDO_REG2.
+
+  vcc7-supply:
+    description:
+      The input supply for LDO_REG3, LDO_REG5, and LDO_REG7.
+
+  vcc8-supply:
+    description:
+      The input supply for LDO_REG4, LDO_REG6, and LDO_REG8.
+
+  vcc9-supply:
+    description:
+      The input supply for LDO_REG9 and SWITCH_REG.
+
+  vddio-supply:
+    description:
+      The input supply for digital IO.
+
+  h_5v-supply:
+    description:
+      The input supply for HDMI_SWITCH.
+
+  usb-supply:
+    description:
+      The input supply for OTG_SWITCH.
+
+  regulators:
+    type: object
+    patternProperties:
+      "^(DCDC_REG[1-4]|LDO_REG[1-9]|SWITCH_REG|HDMI_SWITCH|OTG_SWITCH)$":
+        type: object
+        $ref: ../regulator/regulator.yaml#
+    unevaluatedProperties: false
+
+required:
+  - compatible
+  - reg
+  - interrupts
+  - "#clock-cells"
+
+additionalProperties: false
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
