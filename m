Return-Path: <SRS0=3OfA=KB=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,UNPARSEABLE_RELAY,
	USER_AGENT_GIT autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8DD7CC433B4
	for <linux-rockchip@archiver.kernel.org>; Thu,  6 May 2021 17:55:59 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id E6B6B6113E
	for <linux-rockchip@archiver.kernel.org>; Thu,  6 May 2021 17:55:58 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org E6B6B6113E
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Kb5XhraufR6jAwb1U+SJIdpGNLyvkx4wt6rD/Vno7sg=; b=hHmwQzS0J9QxU3sJzdKMhc697
	6NaClfnl86Oogf8ARtslHaCo4Leorv9YiykQImi3kUKqHcsLDwArDsktNuBaM70P6S3hUniPHeOHr
	giH3ZS/y2EqZlTOHfwldHUqV6M2hF4zKmq+WXgvjMHbGnwoVafhgCEtCEfid1Mnc13vQLgTBKz+f/
	1oDEF/nD686LUGEzWIdGyaOmS4rykEmrki1rriLpKPKYTc50Xm7N9ghQRy0f5B8wZkJBEzStltXia
	1jP4ibzFANwuR64REw+ttGk1oUbohe5JXG+3VwKhymY7+lzZ2gkr94/BmMwOkJV4NRm3xQTuIbhhP
	ZZzv2CV0g==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1leiE5-004zIg-2f; Thu, 06 May 2021 17:55:53 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1leiE2-004zH2-It
 for linux-rockchip@desiato.infradead.org; Thu, 06 May 2021 17:55:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-Type:Content-ID:Content-Description;
 bh=aMNs+mk5dgygr64Gyt8CZ5HgubZzSaMR1fLiLVNNF1k=; b=w9cTtKd6Pua/FtRjNBksWdaW4v
 Bg1jhdxZLsW9VFmcIrqsvqdjne9DwHZ9ZX5VzNaKEqR8e+w99a5+Zk2/EwpGABwxGLnmKuA8A6qus
 DSLlAbQ5gTx84m6ScuKTbSIoDHy+Nh1410+NVSMDzM0Lg7aQdX+yyIONEuM7Z1NETbr8GM/8JqOEy
 9KU6Q6JR4oPH4c7D3oAO3I/3RVLO9SV5lTc6aVjyVVkS0x1Rk0YnWTj7IZBa1nmHuX7918jRyhHoN
 TtS04Fu4pSSKL5mwf37yEVkGKoRhwNQS3AI2jXVrwEJEHi4VPRehrpC2PcjvUBN+0tyz8cQ8iPB66
 cbWGrT0Q==;
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1leiDz-006Ghz-BS
 for linux-rockchip@lists.infradead.org; Thu, 06 May 2021 17:55:49 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: ezequiel) with ESMTPSA id E6D081F43B82
From: Ezequiel Garcia <ezequiel@collabora.com>
To: linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 linux-pm@vger.kernel.org
Cc: Heiko Stuebner <heiko@sntech.de>, Kever Yang <kever.yang@rock-chips.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Rob Herring <robh+dt@kernel.org>, Finley Xiao <finley.xiao@rock-chips.com>,
 Zhang Rui <rui.zhang@intel.com>, Ezequiel Garcia <ezequiel@collabora.com>,
 kernel@collabora.com
Subject: [PATCH v2 2/4] dt-bindings: thermal: convert rockchip-thermal to
 json-schema
Date: Thu,  6 May 2021 14:55:12 -0300
Message-Id: <20210506175514.168365-3-ezequiel@collabora.com>
X-Mailer: git-send-email 2.30.0
In-Reply-To: <20210506175514.168365-1-ezequiel@collabora.com>
References: <20210506175514.168365-1-ezequiel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210506_105547_673958_448DE237 
X-CRM114-Status: GOOD (  18.20  )
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

Convert Rockchip Thermal sensor dt-bindings to YAML.

Signed-off-by: Ezequiel Garcia <ezequiel@collabora.com>
---
 .../bindings/thermal/rockchip-thermal.txt     | 85 -----------------
 .../bindings/thermal/rockchip-thermal.yaml    | 95 +++++++++++++++++++
 2 files changed, 95 insertions(+), 85 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/thermal/rockchip-thermal.txt
 create mode 100644 Documentation/devicetree/bindings/thermal/rockchip-thermal.yaml

diff --git a/Documentation/devicetree/bindings/thermal/rockchip-thermal.txt b/Documentation/devicetree/bindings/thermal/rockchip-thermal.txt
deleted file mode 100644
index 7f94669e9ebe..000000000000
--- a/Documentation/devicetree/bindings/thermal/rockchip-thermal.txt
+++ /dev/null
@@ -1,85 +0,0 @@
-* Temperature Sensor ADC (TSADC) on rockchip SoCs
-
-Required properties:
-- compatible : should be "rockchip,<name>-tsadc"
-   "rockchip,px30-tsadc":   found on PX30 SoCs
-   "rockchip,rv1108-tsadc": found on RV1108 SoCs
-   "rockchip,rk3228-tsadc": found on RK3228 SoCs
-   "rockchip,rk3288-tsadc": found on RK3288 SoCs
-   "rockchip,rk3328-tsadc": found on RK3328 SoCs
-   "rockchip,rk3368-tsadc": found on RK3368 SoCs
-   "rockchip,rk3399-tsadc": found on RK3399 SoCs
-- reg : physical base address of the controller and length of memory mapped
-	region.
-- interrupts : The interrupt number to the cpu. The interrupt specifier format
-	       depends on the interrupt controller.
-- clocks : Must contain an entry for each entry in clock-names.
-- clock-names : Shall be "tsadc" for the converter-clock, and "apb_pclk" for
-		the peripheral clock.
-- resets : Must contain an entry for each entry in reset-names.
-	   See ../reset/reset.txt for details.
-- reset-names : Must include the name "tsadc-apb".
-- pinctrl-names : The pin control state names;
-- pinctrl-0 : The "init" pinctrl state, it will be set before device probe.
-- pinctrl-1 : The "default" pinctrl state, it will be set after reset the
-	      TSADC controller.
-- pinctrl-2 : The "sleep" pinctrl state, it will be in for suspend.
-- #thermal-sensor-cells : Should be 1. See Documentation/devicetree/bindings/thermal/thermal-sensor.yaml for a description.
-
-Optional properties:
-- rockchip,hw-tshut-temp : The hardware-controlled shutdown temperature value.
-- rockchip,hw-tshut-mode : The hardware-controlled shutdown mode 0:CRU 1:GPIO.
-- rockchip,hw-tshut-polarity : The hardware-controlled active polarity 0:LOW
-			       1:HIGH.
-- rockchip,grf : The phandle of the syscon node for the general register file.
-
-Exiample:
-tsadc: tsadc@ff280000 {
-	compatible = "rockchip,rk3288-tsadc";
-	reg = <0xff280000 0x100>;
-	interrupts = <GIC_SPI 37 IRQ_TYPE_LEVEL_HIGH>;
-	clocks = <&cru SCLK_TSADC>, <&cru PCLK_TSADC>;
-	clock-names = "tsadc", "apb_pclk";
-	resets = <&cru SRST_TSADC>;
-	reset-names = "tsadc-apb";
-	pinctrl-names = "init", "default", "sleep";
-	pinctrl-0 = <&otp_gpio>;
-	pinctrl-1 = <&otp_out>;
-	pinctrl-2 = <&otp_gpio>;
-	#thermal-sensor-cells = <1>;
-	rockchip,hw-tshut-temp = <95000>;
-	rockchip,hw-tshut-mode = <0>;
-	rockchip,hw-tshut-polarity = <0>;
-};
-
-Example: referring to thermal sensors:
-thermal-zones {
-	cpu_thermal: cpu_thermal {
-		polling-delay-passive = <1000>; /* milliseconds */
-		polling-delay = <5000>; /* milliseconds */
-
-		/* sensor	ID */
-		thermal-sensors = <&tsadc	1>;
-
-		trips {
-			cpu_alert0: cpu_alert {
-				temperature = <70000>; /* millicelsius */
-				hysteresis = <2000>; /* millicelsius */
-				type = "passive";
-			};
-			cpu_crit: cpu_crit {
-				temperature = <90000>; /* millicelsius */
-				hysteresis = <2000>; /* millicelsius */
-				type = "critical";
-			};
-		};
-
-		cooling-maps {
-			map0 {
-				trip = <&cpu_alert0>;
-				cooling-device =
-				    <&cpu0 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>;
-			};
-		};
-	};
-};
diff --git a/Documentation/devicetree/bindings/thermal/rockchip-thermal.yaml b/Documentation/devicetree/bindings/thermal/rockchip-thermal.yaml
new file mode 100644
index 000000000000..8385e8ac03e8
--- /dev/null
+++ b/Documentation/devicetree/bindings/thermal/rockchip-thermal.yaml
@@ -0,0 +1,95 @@
+# SPDX-License-Identifier: GPL-2.0-only
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/thermal/rockchip-thermal.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Temperature Sensor ADC (TSADC) on Rockchip SoCs
+
+maintainers:
+  - Heiko Stuebner <heiko@sntech.de>
+
+properties:
+  compatible:
+    enum:
+      - rockchip,px30-tsadc # PX30 SoCs
+      - rockchip,rv1108-tsadc # RV1108 SoCs
+      - rockchip,rk3228-tsadc # RK3228 SoCs
+      - rockchip,rk3288-tsadc # RK3288 SoCs
+      - rockchip,rk3328-tsadc # RK3328 SoCs
+      - rockchip,rk3368-tsadc # RK3368 SoCs
+      - rockchip,rk3399-tsadc # RK3399 SoCs
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+  clocks:
+    minItems: 2
+    maxItems: 2
+
+  clock-names:
+    items:
+      - const: tsadc
+      - const: apb_pclk
+
+  resets:
+    maxItems: 1
+
+  reset-names:
+    items:
+      - const: tsadc-apb
+
+  "#thermal-sensor-cells":
+    const: 1
+
+  rockchip,grf:
+    description: The phandle of the syscon node for the general register file.
+    $ref: /schemas/types.yaml#/definitions/phandle
+
+  rockchip,hw-tshut-temp:
+    description: The hardware-controlled shutdown temperature value.
+    $ref: /schemas/types.yaml#/definitions/uint32
+
+  rockchip,hw-tshut-mode:
+    description: The hardware-controlled shutdown mode 0:CRU 1:GPIO.
+    $ref: /schemas/types.yaml#/definitions/uint32
+    enum: [0, 1]
+
+  rockchip,hw-tshut-polarity:
+    description: The hardware-controlled active polarity 0:LOW 1:HIGH.
+    $ref: /schemas/types.yaml#/definitions/uint32
+    enum: [0, 1]
+
+required:
+  - compatible
+  - reg
+  - interrupts
+  - clocks
+  - clock-names
+  - resets
+  - reset-names
+  - "#thermal-sensor-cells"
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+    #include <dt-bindings/clock/rk3288-cru.h>
+
+    tsadc: tsadc@ff280000 {
+        compatible = "rockchip,rk3288-tsadc";
+        reg = <0xff280000 0x100>;
+        interrupts = <GIC_SPI 37 IRQ_TYPE_LEVEL_HIGH>;
+        clocks = <&cru SCLK_TSADC>, <&cru PCLK_TSADC>;
+        clock-names = "tsadc", "apb_pclk";
+        resets = <&cru SRST_TSADC>;
+        reset-names = "tsadc-apb";
+        #thermal-sensor-cells = <1>;
+        rockchip,hw-tshut-temp = <95000>;
+        rockchip,hw-tshut-mode = <0>;
+        rockchip,hw-tshut-polarity = <0>;
+    };
-- 
2.30.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
