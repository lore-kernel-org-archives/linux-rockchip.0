Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E8FC5C761A6
	for <linux-rockchip@archiver.kernel.org>; Tue,  4 Apr 2023 17:38:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=L9DkNScNGV/UUAj4zUvZldgenjMmFXQwJs8+vIn87co=; b=cMGkskY7Ig3aAz
	UVP2BQYOj6DKusjPwpeCzHgNrt3aSBjmUYOj7tNo5i4MF9/ex9RqdKtvTgHcq5rClanCVNODqjUmo
	MhBSE5j2M+xcwYdr2XYoi1JxE9tS9oVhq4uiJ0rWXmMPnHRJqHkXd7UJqkErmOUvQ1HZvz8zOWmuX
	nJSxZHaUM855U7ncrwmvTUq7mFlwsLvf6KOnz81O5pqqza4vGeX0hQ2rklDGTgSGouM1o1HwK/gR+
	JgyqkNzm6Meij6jKEIDl2Cn93ttjVTZA19ThKRZ2EaqxhoERWhGUVCyLk0VTUQDKTEaS2Scokc+bw
	Bu0EQR28G2/+/TTTTf0A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pjkbv-002P9U-38;
	Tue, 04 Apr 2023 17:38:23 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pjkbp-002P6d-2B;
	Tue, 04 Apr 2023 17:38:19 +0000
Received: from localhost (unknown [188.27.34.213])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id CE2826603182;
	Tue,  4 Apr 2023 18:38:13 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1680629894;
	bh=KlijjLio97ihQkNKbDD0GN+ulVNt3WEfM5CnliYI74Q=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=BVOB663gd/3mWfkxeUPSy0gPJN5Th6yxPq+eOYx1JKWzP9jGf5BdrataBkOfnmtUy
	 eMnhIZWUYep9Et9AGLsYBHnuVvTSt+tnVsfr1fJ6V04NWjQYd0Dn/FEat1g9ZRHhjY
	 1l6xsMqYHBrSx8Q63UmcuxDAS5MWwDtHc2bgTe7LfTs4XBJoPTKR+cEDaJu+U/JQI3
	 iPKPmqusdWF2qq235soKndZn1f9RWt6f2rGwusI8MootKSREVtq38re/3gPWJpHWTo
	 6VY0++NYCCPsbTAhgUBhfB5I/EBxpLex4EjNquNlLwwmWdCCIkBkmJFlQtN6W6sEYY
	 TxqsR1KjqUOJg==
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
To: Jean Delvare <jdelvare@suse.com>,
	Guenter Roeck <linux@roeck-us.net>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: linux-hwmon@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	kernel@collabora.com
Subject: [PATCH v2 1/2] dt-bindings: hwmon: pwm-fan: Convert to DT schema
Date: Tue,  4 Apr 2023 20:38:06 +0300
Message-Id: <20230404173807.490520-2-cristian.ciocaltea@collabora.com>
X-Mailer: git-send-email 2.40.0
In-Reply-To: <20230404173807.490520-1-cristian.ciocaltea@collabora.com>
References: <20230404173807.490520-1-cristian.ciocaltea@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230404_103817_980133_307F1D1F 
X-CRM114-Status: GOOD (  20.61  )
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

Convert the PWM fan bindings to DT schema format.

Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
---
 .../devicetree/bindings/hwmon/pwm-fan.txt     |  68 +---------
 .../devicetree/bindings/hwmon/pwm-fan.yaml    | 119 ++++++++++++++++++
 2 files changed, 120 insertions(+), 67 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/hwmon/pwm-fan.yaml

diff --git a/Documentation/devicetree/bindings/hwmon/pwm-fan.txt b/Documentation/devicetree/bindings/hwmon/pwm-fan.txt
index 4509e688623a..48886f0ce415 100644
--- a/Documentation/devicetree/bindings/hwmon/pwm-fan.txt
+++ b/Documentation/devicetree/bindings/hwmon/pwm-fan.txt
@@ -1,67 +1 @@
-Bindings for a fan connected to the PWM lines
-
-Required properties:
-- compatible	: "pwm-fan"
-- pwms		: the PWM that is used to control the PWM fan
-- cooling-levels      : PWM duty cycle values in a range from 0 to 255
-			which correspond to thermal cooling states
-
-Optional properties:
-- fan-supply		: phandle to the regulator that provides power to the fan
-- interrupts		: This contains an interrupt specifier for each fan
-			  tachometer output connected to an interrupt source.
-			  The output signal must generate a defined number of
-			  interrupts per fan revolution, which require that
-			  it must be self resetting edge interrupts. See
-			  interrupt-controller/interrupts.txt for the format.
-- pulses-per-revolution : define the number of pulses per fan revolution for
-			  each tachometer input as an integer (default is 2
-			  interrupts per revolution). The value must be
-			  greater than zero.
-
-Example:
-	fan0: pwm-fan {
-		compatible = "pwm-fan";
-		#cooling-cells = <2>;
-		pwms = <&pwm 0 10000 0>;
-		cooling-levels = <0 102 170 230>;
-	};
-
-	thermal-zones {
-		cpu_thermal: cpu-thermal {
-			     thermal-sensors = <&tmu 0>;
-			     polling-delay-passive = <0>;
-			     polling-delay = <0>;
-			     trips {
-					cpu_alert1: cpu-alert1 {
-						    temperature = <100000>; /* millicelsius */
-						    hysteresis = <2000>; /* millicelsius */
-						    type = "passive";
-					};
-			     };
-			     cooling-maps {
-					map0 {
-						    trip = <&cpu_alert1>;
-						    cooling-device = <&fan0 0 1>;
-					};
-			     };
-		};
-
-Example 2:
-	fan0: pwm-fan {
-		compatible = "pwm-fan";
-		pwms = <&pwm 0 40000 0>;
-		fan-supply = <&reg_fan>;
-		interrupt-parent = <&gpio5>;
-		interrupts = <1 IRQ_TYPE_EDGE_FALLING>;
-		pulses-per-revolution = <2>;
-	};
-
-Example 3:
-	fan0: pwm-fan {
-		compatible = "pwm-fan";
-		pwms = <&pwm1 0 25000 0>;
-		interrupts-extended = <&gpio1 1 IRQ_TYPE_EDGE_FALLING>,
-			<&gpio2 5 IRQ_TYPE_EDGE_FALLING>;
-		pulses-per-revolution = <2>, <1>;
-	};
+This file has moved to pwm-fan.yaml.
diff --git a/Documentation/devicetree/bindings/hwmon/pwm-fan.yaml b/Documentation/devicetree/bindings/hwmon/pwm-fan.yaml
new file mode 100644
index 000000000000..048b6ea794c7
--- /dev/null
+++ b/Documentation/devicetree/bindings/hwmon/pwm-fan.yaml
@@ -0,0 +1,119 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/hwmon/pwm-fan.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Fan connected to PWM lines
+
+maintainers:
+  - Jean Delvare <jdelvare@suse.com>
+  - Guenter Roeck <linux@roeck-us.net>
+
+properties:
+  compatible:
+    const: pwm-fan
+
+  cooling-levels:
+    description: PWM duty cycle values corresponding to thermal cooling states.
+    items:
+      maximum: 255
+    $ref: /schemas/types.yaml#/definitions/uint32-array
+
+  fan-supply:
+    description: Phandle to the regulator that provides power to the fan.
+
+  interrupts:
+    description:
+      This contains an interrupt specifier for each fan tachometer output
+      connected to an interrupt source. The output signal must generate a
+      defined number of interrupts per fan revolution, which require that
+      it must be self resetting edge interrupts.
+    minItems: 1
+    maxItems: 5
+
+  pulses-per-revolution:
+    description:
+      Define the number of pulses per fan revolution for each tachometer
+      input as an integer.
+    items:
+      minimum: 1
+      maximum: 4
+      default: 2
+    minItems: 1
+    maxItems: 5
+    $ref: /schemas/types.yaml#/definitions/uint32-array
+
+  pwms:
+    description: The PWM that is used to control the fan.
+    maxItems: 1
+
+  pwm-names: true
+
+  "#cooling-cells":
+    description:
+      Must be 2, in order to specify minimum and maximum cooling state used in
+      the cooling-maps reference. The first cell is the minimum cooling state
+      and the second cell is the maximum cooling state requested.
+    const: 2
+
+required:
+  - compatible
+  - pwms
+
+additionalProperties: false
+
+examples:
+  - |
+    pwm-fan {
+      compatible = "pwm-fan";
+      cooling-levels = <0 102 170 230>;
+      pwms = <&pwm 0 10000 0>;
+      #cooling-cells = <2>;
+    };
+
+    thermal-zones {
+      cpu_thermal: cpu-thermal {
+        thermal-sensors = <&tmu 0>;
+        polling-delay-passive = <0>;
+        polling-delay = <0>;
+
+        trips {
+          cpu_alert1: cpu-alert1 {
+            temperature = <100000>; /* millicelsius */
+            hysteresis = <2000>; /* millicelsius */
+            type = "passive";
+          };
+        };
+
+        cooling-maps {
+          map0 {
+            trip = <&cpu_alert1>;
+            cooling-device = <&fan0 0 1>;
+          };
+        };
+      };
+    };
+
+  - |
+    #include <dt-bindings/interrupt-controller/irq.h>
+
+    pwm-fan {
+      compatible = "pwm-fan";
+      pwms = <&pwm 0 40000 0>;
+      fan-supply = <&reg_fan>;
+      interrupt-parent = <&gpio5>;
+      interrupts = <1 IRQ_TYPE_EDGE_FALLING>;
+      pulses-per-revolution = <2>;
+    };
+
+  - |
+    #include <dt-bindings/interrupt-controller/irq.h>
+
+    pwm-fan {
+      compatible = "pwm-fan";
+      pwms = <&pwm1 0 25000 0>;
+      interrupts-extended = <&gpio1 1 IRQ_TYPE_EDGE_FALLING>,
+                            <&gpio2 5 IRQ_TYPE_EDGE_FALLING>;
+      pulses-per-revolution = <2>, <1>;
+    };
-- 
2.40.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
