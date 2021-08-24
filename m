Return-Path: <SRS0=/gBD=NP=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A660EC4338F
	for <linux-rockchip@archiver.kernel.org>; Tue, 24 Aug 2021 04:19:45 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 61F1561357
	for <linux-rockchip@archiver.kernel.org>; Tue, 24 Aug 2021 04:19:45 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 61F1561357
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=LWBE/oxjhWcl2WAWzWKviNXH35K90HaHNf3ssKnQEdY=; b=x91n82+0XAzsIA
	1IGM0wsfHEhhYuOJZlwxys4wUqAHHlw9nH+BEHl4A1SCY89ddmEf0rVlyJv91QpRGYBCQfyS2YiBk
	wsjQTCGub/8bEvlbYXfLqqf+/ShGv0LnBmx/yDa5NjQkxxn01kr8ZXWvQAC5tyDohJ+Oq65m/lKJv
	zV7hcsK7HJEsq63EtvPVVQjlWEcQ0V9Qxi0KxVLnC0tMk7g0FNJU5wxT38v4QbsMcNmlGOafKTpsA
	JOMIX68dANYKTHJnd02OD7W6jjKNXHxZKenu6XihGpbkA0DQ4mi+HS79yX+NqESko1CgWix2sT6fs
	n2F7haUDoNUIRF4Hl05A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mINuX-001XlF-MM; Tue, 24 Aug 2021 04:19:41 +0000
Received: from mail-ot1-x336.google.com ([2607:f8b0:4864:20::336])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mINuR-001XkN-Kz
 for linux-rockchip@lists.infradead.org; Tue, 24 Aug 2021 04:19:40 +0000
Received: by mail-ot1-x336.google.com with SMTP id
 a20-20020a0568300b9400b0051b8ca82dfcso21546216otv.3
 for <linux-rockchip@lists.infradead.org>; Mon, 23 Aug 2021 21:19:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=lkZAR+eg7jmGXXWvcyf1ZW3AO9gqSJvHMR+SZpM6B3Q=;
 b=OjFg7uA8q9xBVril12OT+a2OhCtxDBOAv4+8f+8eiK71wBMs9aF7wHThDjAo/RAqtz
 P+oeq8Tz3fdiQB7obl3/oTFpyG21OEc/F7OgRJwM2c7dK36V32+dwIZIZH2ILKO+Lptf
 1BEXzi48RUVd5p2pFE6nEhPxU+j1BSTWayHskJuR16kozjl/SLItFh716XIMT5z3NzKC
 eEMoXkWNOnPwG68Lr3uS9VcYNJ8F020hPdyC9KOEYEwvG+Y7qP1H0H6rUyv17No8qpPK
 Z+Ft6JOHroTXTgH47onKIFFDCYSX0TVpQ61dqKL/+ZUtqx96IsqQmRrgAJyhIivIYGjH
 aVqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=lkZAR+eg7jmGXXWvcyf1ZW3AO9gqSJvHMR+SZpM6B3Q=;
 b=e9ruEFfpfOQIILIrhrzzSTZ6fvIeM5B2FnxstkuuUFdjvsUpl8q4bEC6Pm2k6Drq0t
 WqTWZnReNbKNpbhyTN6hjEZZ4CSp0xruYL+DHkXNoRefSLv4sE2EgMVzOKfWu+36O6Hz
 4R3vC5yTFJmdCQYf2k9aIq4Eie9UX7D9rIz20RXzc3gW+fDecBtAlD2dOF4rCk24Cyk1
 yxqXyNGovmW+N4gyKEBnRu54FoEimDG2QteJl6nkJVwjvZvBT/uuT8B9rDrWaaJbF+Eb
 2iBheY4f3vVf83TnrkQqUYxqmUKfNNHk4edD8XkdT1PjHvEYDuo691CoijP44tMOambR
 a9Sg==
X-Gm-Message-State: AOAM5312lS6pYIAwLehPdNLwK6/Vm9SAaYte2x46SZTIJi3+czYlPyfY
 bfAwYyH9QdwVl20OrImVveQ=
X-Google-Smtp-Source: ABdhPJx3s8HWA2U7YeGUsLVa356cj4eqRnrdb08eVxQHWllZh8YWfl/FBittX/r9zCLrrYt1j3hVLQ==
X-Received: by 2002:a9d:6c19:: with SMTP id f25mr29784922otq.192.1629778772868; 
 Mon, 23 Aug 2021 21:19:32 -0700 (PDT)
Received: from wintermute.localdomain (cpe-76-183-134-35.tx.res.rr.com.
 [76.183.134.35])
 by smtp.gmail.com with ESMTPSA id h14sm4339570otm.5.2021.08.23.21.19.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 23 Aug 2021 21:19:32 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: devicetree@vger.kernel.org
Cc: linux-rockchip@lists.infradead.org, lee.jones@linaro.org,
 robh+dt@kernel.org, heiko@sntech.de, Chris Morgan <macromorgan@hotmail.com>
Subject: [RFC] dt-bindings: mfd: rk808: Convert bindings to yaml
Date: Mon, 23 Aug 2021 23:19:22 -0500
Message-Id: <20210824041922.30586-1-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210823_211935_836392_0F22C7B5 
X-CRM114-Status: GOOD (  24.86  )
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

This is an RFC to convert the rk808 bindings into yaml format. Please
note that currently there are a few errors that appear when performing
a make dtbs_check. However, after looking at the errors it appears
in most cases it occurs on device trees which are not following
the current rk808.txt document today. For example for the rk808
there are multiple errors regarding vcc13-supply, vcc14-supply, and
vddio-supply; however these supplies are not listed in the current
driver or cared for in any way.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 .../devicetree/bindings/mfd/rk808.txt         | 503 ------------------
 .../bindings/mfd/rockchip,rk805.yaml          |  89 ++++
 .../bindings/mfd/rockchip,rk808.yaml          | 255 +++++++++
 .../bindings/mfd/rockchip,rk809.yaml          | 101 ++++
 .../bindings/mfd/rockchip,rk817.yaml          | 365 +++++++++++++
 .../bindings/mfd/rockchip,rk818.yaml          | 109 ++++
 6 files changed, 919 insertions(+), 503 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/mfd/rk808.txt
 create mode 100644 Documentation/devicetree/bindings/mfd/rockchip,rk805.yaml
 create mode 100644 Documentation/devicetree/bindings/mfd/rockchip,rk808.yaml
 create mode 100644 Documentation/devicetree/bindings/mfd/rockchip,rk809.yaml
 create mode 100644 Documentation/devicetree/bindings/mfd/rockchip,rk817.yaml
 create mode 100644 Documentation/devicetree/bindings/mfd/rockchip,rk818.yaml

diff --git a/Documentation/devicetree/bindings/mfd/rk808.txt b/Documentation/devicetree/bindings/mfd/rk808.txt
deleted file mode 100644
index 6e1b9fb1f64a..000000000000
--- a/Documentation/devicetree/bindings/mfd/rk808.txt
+++ /dev/null
@@ -1,503 +0,0 @@
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
-- battery:	The child node for the charger to hold additional properties.
-		If a battery is not in use, this node can be omitted. If a
-		battery node is used, the following values are required in the
-		battery node itself:
-		rockchip,resistor-sense-micro-ohms,
-		rockchip,sleep-enter-current-microamp,
-		rockchip,sleep-filter-current-microamp,
-		Additionally, a phandle to a monitored-battery node that
-		contains the following is also required:
-		charge-full-design-microamp-hours,
-		charge-term-current-microamp,
-		constant-charge-current-max-microamp,
-		constant-charge-voltage-max-microvolt,
-		voltage-max-design-microvolt,
-		voltage-min-design-microvolt,
-		and a valid ocv-capacity table.
-- rockchip,resistor-sense-micro-ohms: Value in microohms of the battery sense
-				      resistor. The PMIC only supports values
-				      of either 10000 or 20000. This value is
-				      used by the driver to set the correct
-				      divisor value to translate ADC readings
-				      into the proper units of measure.
-- rockchip,sleep-enter-current-microamp: Value in microamps of the sleep enter
-					 current for the charger. Value is used
-					 by the driver to calibrate the relax
-					 threshold.
-- rockchip,sleep-filter-current-microamp: Value in microamps of the sleep
-					  filter current for the charger.
-					  Value is used by the driver to derive
-					  the sleep sample current.
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
-		rk817_battery: battery {
-			monitored-battery = <&battery_cell>;
-			rockchip,resistor-sense-micro-ohms = <10000>;
-			rockchip,sleep-enter-current-microamp = <300000>;
-			rockchip,sleep-filter-current-microamp = <100000>;
-		};
-
-		rk817_codec: codec {
-			rockchip,mic-in-differential;
-		};
-	};
diff --git a/Documentation/devicetree/bindings/mfd/rockchip,rk805.yaml b/Documentation/devicetree/bindings/mfd/rockchip,rk805.yaml
new file mode 100644
index 000000000000..347696f1709c
--- /dev/null
+++ b/Documentation/devicetree/bindings/mfd/rockchip,rk805.yaml
@@ -0,0 +1,89 @@
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/mfd/rockchip,rk805.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: RK808 Power Management Integrated Circuit
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
+    description:
+      The I2C slave address.
+
+  interrupts:
+    maxItems: 1
+    description:
+      The interrupt output of the controller.
+
+  '#clock-cells':
+    description: |
+      From common clock binding; shall be set to 1 (multiple clock outputs).
+      See <dt-bindings/clock/rockchip,rk808.h> for clock IDs.
+    const: 1
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
+
+required:
+  - compatible
+  - reg
+  - interrupts
+  - "#clock-cells"
+
+additionalProperties: false
diff --git a/Documentation/devicetree/bindings/mfd/rockchip,rk808.yaml b/Documentation/devicetree/bindings/mfd/rockchip,rk808.yaml
new file mode 100644
index 000000000000..6bec1d9e4640
--- /dev/null
+++ b/Documentation/devicetree/bindings/mfd/rockchip,rk808.yaml
@@ -0,0 +1,255 @@
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
+    description:
+      The I2C slave address.
+
+  interrupts:
+    maxItems: 1
+    description:
+      The interrupt output of the controller.
+
+  '#clock-cells':
+    description: |
+      From common clock binding; shall be set to 1 (multiple clock outputs).
+      See <dt-bindings/clock/rockchip,rk808.h> for clock IDs.
+    const: 1
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
+  dvs-gpios:
+    description: |
+      buck1/2 can be controlled by gpio dvs, this is GPIO specifiers for
+      2 host gpio's used for dvs. The format of the gpio specifier
+      depends in the gpio controller. If DVS GPIOs aren't present,
+      voltage changes will happen very quickly with no slow ramp time.
+
+  regulators:
+    type: object
+    patternProperties:
+      "^(DCDC_REG[1-4]|LDO_REG[1-8]|SWITCH_REG[1-2])$":
+        type: object
+        $ref: ../regulator/regulator.yaml#
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
+    i2c0 {
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
index 000000000000..6d509e863da3
--- /dev/null
+++ b/Documentation/devicetree/bindings/mfd/rockchip,rk809.yaml
@@ -0,0 +1,101 @@
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/mfd/rockchip,rk809.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: RK817 Power Management Integrated Circuit
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
+    description:
+      The I2C slave address.
+
+  interrupts:
+    maxItems: 1
+    description:
+      The interrupt output of the controller.
+
+  '#clock-cells':
+    description: |
+      From common clock binding; shall be set to 1 (multiple clock outputs).
+      See <dt-bindings/clock/rockchip,rk808.h> for clock IDs.
+    const: 1
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
index 000000000000..cbe6c2a9f254
--- /dev/null
+++ b/Documentation/devicetree/bindings/mfd/rockchip,rk817.yaml
@@ -0,0 +1,365 @@
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
+    description:
+      The I2C slave address.
+
+  interrupts:
+    maxItems: 1
+    description:
+      The interrupt output of the controller.
+
+  '#clock-cells':
+    description: |
+      From common clock binding; shall be set to 1 (multiple clock outputs).
+      See <dt-bindings/clock/rockchip,rk808.h> for clock IDs.
+    const: 1
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
+  battery:
+    description: |
+      The child node for the charger to hold additional properties. If a
+      battery is not in use, this node can be omitted.
+    type: object
+    properties:
+      monitored-battery:
+        description: |
+          A phandle to a monitored battery node that contains a valid
+          value for:
+          charge-full-design-microamp-hours,
+          charge-term-current-microamp,
+          constant-charge-current-max-microamp,
+          constant-charge-voltage-max-microvolt,
+          voltage-max-design-microvolt,
+          voltage-min-design-microvolt,
+          and a valid ocv-capacity table.
+
+      rockchip,resistor-sense-micro-ohms:
+        description: |
+          Value in microohms of the battery sense resistor. This value is
+          used by the driver to set the correct divisor value to translate
+          ADC readings into the proper units of measure.
+        enum: [10000, 20000]
+
+      rockchip,sleep-enter-current-microamp:
+        description: |
+          Value in microamps of the sleep enter current for the charger.
+          Value is used by the driver to calibrate the relax threshold.
+
+      rockchip,sleep-filter-current-microamp:
+        description:
+          Value in microamps of the sleep filter current for the charger.
+          Value is used by the driver to derive the sleep sample current.
+
+    required:
+      - monitored-battery
+      - rockchip,resistor-sense-micro-ohms
+      - rockchip,sleep-enter-current-microamp
+      - rockchip,sleep-filter-current-microamp
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
+    i2c0 {
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
+            rk817_battery: battery {
+                monitored-battery = <&battery_cell>;
+                rockchip,resistor-sense-micro-ohms = <10000>;
+                rockchip,sleep-enter-current-microamp = <300000>;
+                rockchip,sleep-filter-current-microamp = <100000>;
+            };
+
+            rk817_codec: codec {
+                rockchip,mic-in-differential;
+            };
+        };
+    };
diff --git a/Documentation/devicetree/bindings/mfd/rockchip,rk818.yaml b/Documentation/devicetree/bindings/mfd/rockchip,rk818.yaml
new file mode 100644
index 000000000000..8440353e5dbf
--- /dev/null
+++ b/Documentation/devicetree/bindings/mfd/rockchip,rk818.yaml
@@ -0,0 +1,109 @@
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
+    description:
+      The I2C slave address.
+
+  interrupts:
+    maxItems: 1
+    description:
+      The interrupt output of the controller.
+
+  '#clock-cells':
+    description: |
+      From common clock binding; shall be set to 1 (multiple clock outputs).
+      See <dt-bindings/clock/rockchip,rk808.h> for clock IDs.
+    const: 1
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
