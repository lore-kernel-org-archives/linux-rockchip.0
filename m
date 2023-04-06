Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7BC9CC7618D
	for <linux-rockchip@archiver.kernel.org>; Thu,  6 Apr 2023 18:20:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rg9wdfV31QcrO+62odxbcr7nCOlXO3WTmg5ZbdHTfC4=; b=Lf5At/Pe6D4dKA
	WK0u64ukNjHFTEBTiO/CoOnqzaE+dHWSE2HNQZL7O+d+UrWfLJig6noFUh6Vu8sxwqGB52f9slgTO
	yEPz9BL9xYCQS8Qw8ZTHNQtnmRpZp3xpJKovmtI9nLh/TMdZ1Q0Sp2UxUYlsu4ATfOgo+/LjcE5CJ
	4BuNzXVdREGKFAqUAtsnE90Rs297ieLrfHowDb6KdsStgnaffdKXwF5BAvsspSpr3CTq8EUt5/S4P
	OmB9fTUeAF0k0BHVL4soJhdthyaZJQelhRzTNuoJ5ODsroKKyAkzYKVVowHR9fQ08HZIs/9USkdaG
	1iaZVeO79ym47uiThRXQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pkUDW-008Eac-2y;
	Thu, 06 Apr 2023 18:20:14 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pkUDQ-008EYt-10;
	Thu, 06 Apr 2023 18:20:10 +0000
Received: from localhost (unknown [188.27.34.213])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id ED57366031CD;
	Thu,  6 Apr 2023 19:20:06 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1680805207;
	bh=O9BYcs5X9svxB2IhYBbHQXyjiztmPHgKP/OvoPE0WYs=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=n19Njp8M7GhQd8lf8p7tVb+pXxyvTtNiT27lmst804wRxmlaJy2zkRDQigwZuMv72
	 BNKpsw17t3cJ/jytT7weuS+ND/g6EwNttSH8oHWM4d/R9I5sH6zmxCtsjJTKRP3fSH
	 LNB5SOp+WKI2v3bpQIEaYC7afJ9g1jPPrVbUtcSg+iaFnh22RNAhHaXL2qz4o/CvCX
	 LTD64UChF0F0AMPZ2GuGZ/kOjuBQXmKwmYRqnC2F3pwA8i/kRxlKUq6EFrlPslka4F
	 VK3g5ZIWr5VcqSyGxU34NFhJHBokDnVdoZxEKD123W1DK5s4TYYDE7hSM8FnP3d1Fs
	 zVtrvdYoVOkHg==
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
Subject: [PATCH v3 1/1] dt-bindings: hwmon: pwm-fan: Convert to DT schema
Date: Thu,  6 Apr 2023 21:20:00 +0300
Message-Id: <20230406182000.956275-2-cristian.ciocaltea@collabora.com>
X-Mailer: git-send-email 2.40.0
In-Reply-To: <20230406182000.956275-1-cristian.ciocaltea@collabora.com>
References: <20230406182000.956275-1-cristian.ciocaltea@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230406_112008_605847_3123ABA1 
X-CRM114-Status: GOOD (  19.94  )
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
 .../devicetree/bindings/hwmon/pwm-fan.txt     | 68 +------------
 .../devicetree/bindings/hwmon/pwm-fan.yaml    | 97 +++++++++++++++++++
 2 files changed, 98 insertions(+), 67 deletions(-)
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
index 000000000000..4e5abf7580cc
--- /dev/null
+++ b/Documentation/devicetree/bindings/hwmon/pwm-fan.yaml
@@ -0,0 +1,97 @@
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
+    $ref: /schemas/types.yaml#/definitions/uint32-array
+    items:
+      maximum: 255
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
+    maxItems: 1
+
+  pulses-per-revolution:
+    description:
+      Define the number of pulses per fan revolution for each tachometer
+      input as an integer.
+    $ref: /schemas/types.yaml#/definitions/uint32
+    minimum: 1
+    maximum: 4
+    default: 2
+
+  pwms:
+    description: The PWM that is used to control the fan.
+    maxItems: 1
+
+  "#cooling-cells": true
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
-- 
2.40.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
