Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 81C87C433F5
	for <linux-rockchip@archiver.kernel.org>; Wed,  2 Mar 2022 23:26:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SMGurcNBoazYw/KjDS50OCsHl6wV78SJeVaJrr4ED3I=; b=j7Zd3+360ljuTg
	D+N7MZh8s9s9FBCIVdRVqNx4fBqtP0GAU4FHH8Vek45f+s5VEaKIZCoRUGOjXBE+0qiVQ6yHil/HQ
	mrYZ/0zIUol8cK2+HX7AuTIb0IiqRoYYlo5MHTqk0huv5cM4f3d91zXKP9GMXn7DoAJz0GzHdnUnR
	xMKlAs4qG5Lf74JunvRFyB/H4TSY/vNfCi0Y4JX5jnDx5oDOVHmBGUgn2HdORz58y9ZDPUhBdLuiW
	ovCdxUemt7e+/1+5iK5oMERtjZxmSTqLSJmvxTyIk3yaaNFns3Gq7RvvK3L8GyvyWqI3OSxtlQWah
	PzyVBvKqzS1jY8OD1a1A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nPYMi-004haa-6h; Wed, 02 Mar 2022 23:26:40 +0000
Received: from mail-ot1-x32e.google.com ([2607:f8b0:4864:20::32e])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nPYMc-004hX0-57
 for linux-rockchip@lists.infradead.org; Wed, 02 Mar 2022 23:26:38 +0000
Received: by mail-ot1-x32e.google.com with SMTP id
 k9-20020a056830242900b005ad25f8ebfdso3068113ots.7
 for <linux-rockchip@lists.infradead.org>; Wed, 02 Mar 2022 15:26:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=T2az3J6jHjB9Z1jK35od9UmlW1wvk6VI+oeRDMQvYVQ=;
 b=KgPz/Zlsefmmpbc1czmHjspohTdBl/5o4vOtt5ZJ6Aam+CNRStq1uHB7Y52/q6TkCT
 TNPhu7yjw6b2MgV9pTITGMzIBOs0AWZqlmf+73K4KkPYTnF1Ug3urT7jGddU28MF3/om
 tOb84bKgTRslxmwylP3L6XjwRoeETe3O8olutzv2IALUKA5+ERZA03a5YRopolb/h/iL
 QM+JARtDVW8CwCtGIwcYyd3JfrxNcqlGZpr4INrXKddjV8E2+sUi9x6j0JdzVIjfyQ26
 gfpjNoX4KIk8WMkhuzcbZnmwLu5K7sJ2bvDg6Tn5S9qYYCczyeLJaXeQmhwUgSlpv8+Y
 Rgfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=T2az3J6jHjB9Z1jK35od9UmlW1wvk6VI+oeRDMQvYVQ=;
 b=xrZaWN6FHbhQMxw2NM4KoxMbeU5FVbemefzHhZ+vqFgiMzy7kZ0LONU7AiXdYjhrUM
 cjbAbH6HzmIOQzDvj2HIH1NdfXDBlVPMoWOOZVQtA+Oil84zQyy6K/b8XbODs0LQ5P1l
 3uEYsahZTG1yIj4xOzBn1xqnLaiBK80Zg3OWoVm4BS6+t9uAlmRWIHx1jy1whcYGOjgK
 JLPZzSZgsPak7loQ8Gyo/Ufo7Fdov4k9xTCwedqVVYBrFiilFc1QslwWQ8K5kUk8JYu0
 UFYIT7Vh5m7pskL4qpievOsNn1OT1w1lbuwYLy7LjyEyJ+//axRkfd6nzo+6BRERrn0Q
 h3lg==
X-Gm-Message-State: AOAM533cu1eMNiJu5vkAdfCuF45MzERWT9fcosMV7ZJtba22lM1SY3du
 Zktcsd/JmZ+vJ69QEqCO6js=
X-Google-Smtp-Source: ABdhPJw5VMD+p96cLtmjQdoABon9c/ssCcnUvx0B+pPRflrVZS7W8FdLiR9iI4i/x6Yz/wPBzOryYg==
X-Received: by 2002:a9d:191f:0:b0:5a2:4998:952f with SMTP id
 j31-20020a9d191f000000b005a24998952fmr16922374ota.276.1646263592421; 
 Wed, 02 Mar 2022 15:26:32 -0800 (PST)
Received: from wintermute.localdomain (cpe-76-183-134-35.tx.res.rr.com.
 [76.183.134.35]) by smtp.gmail.com with ESMTPSA id
 fs3-20020a056870f78300b000d75f1d9b89sm234925oab.54.2022.03.02.15.26.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 02 Mar 2022 15:26:30 -0800 (PST)
From: Chris Morgan <macroalpha82@gmail.com>
To: devicetree@vger.kernel.org
Cc: linux-rockchip@lists.infradead.org, lee.jones@linaro.org,
 robh+dt@kernel.org, heiko@sntech.de, strit@manjaro.org, mbrugger@suse.com,
 arnaud.ferraris@collabora.com, knaerzche@gmail.com, zyw@rock-chips.com,
 zhangqing@rock-chips.com, Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH 3/3 v4] dt-bindings: mfd: rk808: Convert bindings to yaml
Date: Wed,  2 Mar 2022 17:26:12 -0600
Message-Id: <20220302232612.25455-4-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220302232612.25455-1-macroalpha82@gmail.com>
References: <20220302232612.25455-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220302_152634_315657_05685062 
X-CRM114-Status: GOOD (  20.50  )
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

Convert the rk808 bindings into yaml format. clock-output-names varies
in maxItems depending on whether or not the clock-cells is 0 or 1. For
the rk805, rk809, and rk817. This preserves behavior with the existing
driver handling setting the clock for these specific PMICs. When this
driver is corrected and the devicetrees updated this logic can be
removed (since the rk805, rk808, and rk817 only have one actual clock).

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 .../devicetree/bindings/mfd/rk808.txt         | 465 ------------------
 .../bindings/mfd/rockchip,rk805.yaml          | 219 +++++++++
 .../bindings/mfd/rockchip,rk808.yaml          | 257 ++++++++++
 .../bindings/mfd/rockchip,rk809.yaml          | 284 +++++++++++
 .../bindings/mfd/rockchip,rk817.yaml          | 330 +++++++++++++
 .../bindings/mfd/rockchip,rk818.yaml          | 282 +++++++++++
 6 files changed, 1372 insertions(+), 465 deletions(-)
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
index 000000000000..4992f71b6fc3
--- /dev/null
+++ b/Documentation/devicetree/bindings/mfd/rockchip,rk805.yaml
@@ -0,0 +1,219 @@
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
+    description:
+      See <dt-bindings/clock/rockchip,rk808.h> for clock IDs.
+    minimum: 0
+    maximum: 1
+
+  clock-output-names:
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
+allOf:
+  - if:
+      properties:
+        '#clock-cells':
+          const: 0
+
+    then:
+      properties:
+        clock-output-names:
+          maxItems: 1
+
+    else:
+      properties:
+        clock-output-names:
+          maxItems: 2
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
+        pmic@18 {
+            compatible = "rockchip,rk805";
+            reg = <0x18>;
+            interrupt-parent = <&gpio2>;
+            interrupts = <RK_PA6 IRQ_TYPE_LEVEL_LOW>;
+            pinctrl-names = "default";
+            pinctrl-0 = <&pmic_int_l>;
+            rockchip,system-power-controller;
+            wakeup-source;
+            #clock-cells = <0>;
+
+            vcc1-supply = <&vcc_sys>;
+            vcc2-supply = <&vcc_sys>;
+            vcc3-supply = <&vcc_sys>;
+            vcc4-supply = <&vcc_sys>;
+            vcc5-supply = <&vcc_io>;
+            vcc6-supply = <&vcc_io>;
+
+            regulators {
+                vdd_logic: DCDC_REG1 {
+                    regulator-name = "vdd_logic";
+                    regulator-min-microvolt = <700000>;
+                    regulator-max-microvolt = <1350000>;
+                    regulator-always-on;
+                    regulator-boot-on;
+                    regulator-state-mem {
+                        regulator-on-in-suspend;
+                        regulator-suspend-microvolt = <1000000>;
+                    };
+                };
+
+                vdd_arm: DCDC_REG2 {
+                    regulator-name = "vdd_arm";
+                    regulator-min-microvolt = <700000>;
+                    regulator-max-microvolt = <1350000>;
+                    regulator-always-on;
+                    regulator-boot-on;
+                    regulator-state-mem {
+                        regulator-on-in-suspend;
+                        regulator-suspend-microvolt = <950000>;
+                    };
+                };
+
+                vcc_ddr: DCDC_REG3 {
+                    regulator-name = "vcc_ddr";
+                    regulator-always-on;
+                    regulator-boot-on;
+                    regulator-state-mem {
+                        regulator-on-in-suspend;
+                    };
+                };
+
+                vcc_io: DCDC_REG4 {
+                    regulator-name = "vcc_io";
+                    regulator-min-microvolt = <3300000>;
+                    regulator-max-microvolt = <3300000>;
+                    regulator-always-on;
+                    regulator-boot-on;
+                    regulator-state-mem {
+                        regulator-on-in-suspend;
+                        regulator-suspend-microvolt = <3300000>;
+                    };
+                };
+
+                vdd_18: LDO_REG1 {
+                    regulator-name = "vdd_18";
+                    regulator-min-microvolt = <1800000>;
+                    regulator-max-microvolt = <1800000>;
+                    regulator-always-on;
+                    regulator-boot-on;
+                    regulator-state-mem {
+                        regulator-on-in-suspend;
+                        regulator-suspend-microvolt = <1800000>;
+                    };
+                };
+
+                vcc18_emmc: LDO_REG2 {
+                    regulator-name = "vcc_18emmc";
+                    regulator-min-microvolt = <1800000>;
+                    regulator-max-microvolt = <1800000>;
+                    regulator-always-on;
+                    regulator-boot-on;
+                    regulator-state-mem {
+                        regulator-on-in-suspend;
+                        regulator-suspend-microvolt = <1800000>;
+                    };
+                };
+
+                vdd_11: LDO_REG3 {
+                    regulator-name = "vdd_11";
+                    regulator-min-microvolt = <1100000>;
+                    regulator-max-microvolt = <1100000>;
+                    regulator-always-on;
+                    regulator-boot-on;
+                    regulator-state-mem {
+                        regulator-on-in-suspend;
+                        regulator-suspend-microvolt = <1100000>;
+                    };
+                };
+            };
+        };
+    };
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
index 000000000000..7fb849ac74a7
--- /dev/null
+++ b/Documentation/devicetree/bindings/mfd/rockchip,rk809.yaml
@@ -0,0 +1,284 @@
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
+    minimum: 0
+    maximum: 1
+
+  clock-output-names:
+    description:
+      From common clock binding to override the default output clock name.
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
+allOf:
+  - if:
+      properties:
+        '#clock-cells':
+          const: 0
+
+    then:
+      properties:
+        clock-output-names:
+          maxItems: 1
+
+    else:
+      properties:
+        clock-output-names:
+          maxItems: 2
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
+            reg = <0x1b>;
+            #clock-cells = <1>;
+            clock-output-names = "xin32k", "rk808-clkout2";
+            interrupt-parent = <&gpio3>;
+            interrupts = <10 IRQ_TYPE_LEVEL_LOW>;
+            pinctrl-names = "default";
+            pinctrl-0 = <&pmic_int_l_pin>;
+            rockchip,system-power-controller;
+            wakeup-source;
+
+            vcc1-supply = <&vcc_sysin>;
+            vcc2-supply = <&vcc_sysin>;
+            vcc3-supply = <&vcc_sysin>;
+            vcc4-supply = <&vcc_sysin>;
+            vcc6-supply = <&vcc_sysin>;
+            vcc7-supply = <&vcc_sysin>;
+            vcc8-supply = <&vcc3v3_sys>;
+            vcc9-supply = <&vcc_sysin>;
+            vcc10-supply = <&vcc_sysin>;
+            vcc11-supply = <&vcc_sysin>;
+            vcc12-supply = <&vcc3v3_sys>;
+
+            regulators {
+                vdd_center: DCDC_REG1 {
+                    regulator-name = "vdd_center";
+                    regulator-always-on;
+                    regulator-boot-on;
+                    regulator-min-microvolt = <750000>;
+                    regulator-max-microvolt = <1350000>;
+                    regulator-ramp-delay = <6001>;
+                    regulator-state-mem {
+                        regulator-off-in-suspend;
+                    };
+                };
+
+                vdd_cpu_l: DCDC_REG2 {
+                    regulator-name = "vdd_cpu_l";
+                    regulator-always-on;
+                    regulator-boot-on;
+                    regulator-min-microvolt = <750000>;
+                    regulator-max-microvolt = <1350000>;
+                    regulator-ramp-delay = <6001>;
+                    regulator-state-mem {
+                        regulator-off-in-suspend;
+                    };
+                };
+
+                vcc_ddr: DCDC_REG3 {
+                    regulator-name = "vcc_ddr";
+                    regulator-always-on;
+                    regulator-boot-on;
+                    regulator-state-mem {
+                        regulator-on-in-suspend;
+                    };
+                };
+
+                vcc_1v8: vcc_wl: DCDC_REG4 {
+                    regulator-name = "vcc_1v8";
+                    regulator-always-on;
+                    regulator-boot-on;
+                    regulator-min-microvolt = <1800000>;
+                    regulator-max-microvolt = <1800000>;
+                    regulator-state-mem {
+                        regulator-on-in-suspend;
+                        regulator-suspend-microvolt = <1800000>;
+                    };
+                };
+
+                vcc1v8_pmupll: LDO_REG3 {
+                    regulator-name = "vcc1v8_pmupll";
+                    regulator-always-on;
+                    regulator-boot-on;
+                    regulator-min-microvolt = <1800000>;
+                    regulator-max-microvolt = <1800000>;
+                    regulator-state-mem {
+                        regulator-on-in-suspend;
+                        regulator-suspend-microvolt = <1800000>;
+                    };
+                };
+
+                vcc_sdio: LDO_REG4 {
+                    regulator-name = "vcc_sdio";
+                    regulator-always-on;
+                    regulator-boot-on;
+                    regulator-min-microvolt = <1800000>;
+                    regulator-max-microvolt = <3000000>;
+                    regulator-state-mem {
+                        regulator-on-in-suspend;
+                        regulator-suspend-microvolt = <3000000>;
+                    };
+                };
+
+                vcca3v0_codec: LDO_REG5 {
+                    regulator-name = "vcca3v0_codec";
+                    regulator-always-on;
+                    regulator-boot-on;
+                    regulator-min-microvolt = <3000000>;
+                    regulator-max-microvolt = <3000000>;
+                    regulator-state-mem {
+                        regulator-off-in-suspend;
+                    };
+                };
+
+                vcc_1v5: LDO_REG6 {
+                    regulator-name = "vcc_1v5";
+                    regulator-always-on;
+                    regulator-boot-on;
+                    regulator-min-microvolt = <1500000>;
+                    regulator-max-microvolt = <1500000>;
+                    regulator-state-mem {
+                        regulator-on-in-suspend;
+                        regulator-suspend-microvolt = <1500000>;
+                    };
+                };
+
+                vcca1v8_codec: LDO_REG7 {
+                    regulator-name = "vcca1v8_codec";
+                    regulator-always-on;
+                    regulator-boot-on;
+                    regulator-min-microvolt = <1800000>;
+                    regulator-max-microvolt = <1800000>;
+                    regulator-state-mem {
+                        regulator-off-in-suspend;
+                    };
+                };
+
+                vcc_3v0: LDO_REG8 {
+                    regulator-name = "vcc_3v0";
+                    regulator-always-on;
+                    regulator-boot-on;
+                    regulator-min-microvolt = <3000000>;
+                    regulator-max-microvolt = <3000000>;
+                    regulator-state-mem {
+                        regulator-on-in-suspend;
+                        regulator-suspend-microvolt = <3000000>;
+                    };
+                };
+
+                vcc3v3_s3: SWITCH_REG1 {
+                    regulator-name = "vcc3v3_s3";
+                    regulator-always-on;
+                    regulator-boot-on;
+                    regulator-state-mem {
+                        regulator-off-in-suspend;
+                    };
+                };
+
+                vcc3v3_s0: SWITCH_REG2 {
+                    regulator-name = "vcc3v3_s0";
+                    regulator-always-on;
+                    regulator-boot-on;
+                    regulator-state-mem {
+                        regulator-off-in-suspend;
+                    };
+                };
+            };
+        };
+    };
diff --git a/Documentation/devicetree/bindings/mfd/rockchip,rk817.yaml b/Documentation/devicetree/bindings/mfd/rockchip,rk817.yaml
new file mode 100644
index 000000000000..bfc1720adc43
--- /dev/null
+++ b/Documentation/devicetree/bindings/mfd/rockchip,rk817.yaml
@@ -0,0 +1,330 @@
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
+    minimum: 0
+    maximum: 1
+
+  clock-output-names:
+    description:
+      From common clock binding to override the default output clock name.
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
+allOf:
+  - if:
+      properties:
+        '#clock-cells':
+          const: 0
+
+    then:
+      properties:
+        clock-output-names:
+          maxItems: 1
+
+    else:
+      properties:
+        clock-output-names:
+          maxItems: 2
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
index 000000000000..5a954159b123
--- /dev/null
+++ b/Documentation/devicetree/bindings/mfd/rockchip,rk818.yaml
@@ -0,0 +1,282 @@
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
+        rk818: pmic@1c {
+            compatible = "rockchip,rk818";
+            reg = <0x1c>;
+            interrupt-parent = <&gpio0>;
+            interrupts = <4 IRQ_TYPE_LEVEL_LOW>;
+            pinctrl-names = "default";
+            pinctrl-0 = <&pmic_int>;
+            rockchip,system-power-controller;
+            wakeup-source;
+            #clock-cells = <1>;
+
+            vcc1-supply = <&vdd_sys>;
+            vcc2-supply = <&vdd_sys>;
+            vcc3-supply = <&vdd_sys>;
+            vcc4-supply = <&vdd_sys>;
+            boost-supply = <&vdd_in_otg_out>;
+            vcc6-supply = <&vdd_sys>;
+            vcc7-supply = <&vdd_misc_1v8>;
+            vcc8-supply = <&vdd_misc_1v8>;
+            vcc9-supply = <&vdd_3v3_io>;
+            vddio-supply = <&vdd_3v3_io>;
+
+            regulators {
+                vdd_log: DCDC_REG1 {
+                    regulator-name = "vdd_log";
+                    regulator-always-on;
+                    regulator-boot-on;
+                    regulator-min-microvolt = <1100000>;
+                    regulator-max-microvolt = <1100000>;
+                    regulator-state-mem {
+                        regulator-off-in-suspend;
+                    };
+                };
+
+                vdd_gpu: DCDC_REG2 {
+                    regulator-name = "vdd_gpu";
+                    regulator-always-on;
+                    regulator-boot-on;
+                    regulator-min-microvolt = <800000>;
+                    regulator-max-microvolt = <1250000>;
+                    regulator-state-mem {
+                        regulator-on-in-suspend;
+                        regulator-suspend-microvolt = <1000000>;
+                    };
+                };
+
+                vcc_ddr: DCDC_REG3 {
+                    regulator-name = "vcc_ddr";
+                    regulator-always-on;
+                    regulator-boot-on;
+                    regulator-state-mem {
+                        regulator-on-in-suspend;
+                    };
+                };
+
+                vdd_3v3_io: DCDC_REG4 {
+                    regulator-name = "vdd_3v3_io";
+                    regulator-always-on;
+                    regulator-boot-on;
+                    regulator-min-microvolt = <3300000>;
+                    regulator-max-microvolt = <3300000>;
+                    regulator-state-mem {
+                        regulator-on-in-suspend;
+                        regulator-suspend-microvolt = <3300000>;
+                    };
+                };
+
+                vdd_sys: DCDC_BOOST {
+                    regulator-name = "vdd_sys";
+                    regulator-always-on;
+                    regulator-boot-on;
+                    regulator-min-microvolt = <5000000>;
+                    regulator-max-microvolt = <5000000>;
+                    regulator-state-mem {
+                        regulator-on-in-suspend;
+                        regulator-suspend-microvolt = <5000000>;
+                    };
+                };
+
+                vdd_sd: SWITCH_REG {
+                    regulator-name = "vdd_sd";
+                    regulator-always-on;
+                    regulator-boot-on;
+                    regulator-state-mem {
+                        regulator-off-in-suspend;
+                    };
+                };
+
+                vdd_eth_2v5: LDO_REG2 {
+                    regulator-name = "vdd_eth_2v5";
+                    regulator-always-on;
+                    regulator-boot-on;
+                    regulator-min-microvolt = <2500000>;
+                    regulator-max-microvolt = <2500000>;
+                    regulator-state-mem {
+                        regulator-on-in-suspend;
+                        regulator-suspend-microvolt = <2500000>;
+                    };
+                };
+
+                vdd_1v0: LDO_REG3 {
+                    regulator-name = "vdd_1v0";
+                    regulator-always-on;
+                    regulator-boot-on;
+                    regulator-min-microvolt = <1000000>;
+                    regulator-max-microvolt = <1000000>;
+                    regulator-state-mem {
+                        regulator-on-in-suspend;
+                        regulator-suspend-microvolt = <1000000>;
+                    };
+                };
+
+                vdd_1v8_lcd_ldo: LDO_REG4 {
+                    regulator-name = "vdd_1v8_lcd_ldo";
+                    regulator-always-on;
+                    regulator-boot-on;
+                    regulator-min-microvolt = <1800000>;
+                    regulator-max-microvolt = <1800000>;
+                    regulator-state-mem {
+                        regulator-on-in-suspend;
+                        regulator-suspend-microvolt = <1800000>;
+                    };
+                };
+
+                vdd_1v0_lcd: LDO_REG6 {
+                    regulator-name = "vdd_1v0_lcd";
+                    regulator-always-on;
+                    regulator-boot-on;
+                    regulator-min-microvolt = <1000000>;
+                    regulator-max-microvolt = <1000000>;
+                    regulator-state-mem {
+                        regulator-on-in-suspend;
+                        regulator-suspend-microvolt = <1000000>;
+                    };
+                };
+
+                vdd_1v8_ldo: LDO_REG7 {
+                    regulator-name = "vdd_1v8_ldo";
+                    regulator-always-on;
+                    regulator-boot-on;
+                    regulator-min-microvolt = <1800000>;
+                    regulator-max-microvolt = <1800000>;
+                    regulator-state-mem {
+                        regulator-off-in-suspend;
+                        regulator-suspend-microvolt = <1800000>;
+                    };
+                };
+
+                vdd_io_sd: LDO_REG9 {
+                    regulator-name = "vdd_io_sd";
+                    regulator-always-on;
+                    regulator-boot-on;
+                    regulator-min-microvolt = <1800000>;
+                    regulator-max-microvolt = <3300000>;
+                    regulator-state-mem {
+                        regulator-off-in-suspend;
+                    };
+                };
+            };
+        };
+    };
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
