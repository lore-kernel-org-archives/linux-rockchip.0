Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EB4B7C761A6
	for <linux-rockchip@archiver.kernel.org>; Mon,  3 Apr 2023 10:51:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5xVKLMpv/r6bBQg4HDtBuHNsE+iaTiNMdzqC8COhq/s=; b=nN5XSN2wGdXhXm
	gMNdZPPlGbgDLR7Lgf83pWS2VBp5YCXiSALebkh3TEt4ZEvrBQKspoj4l2U2sFJkug5rHMhOHNjCN
	ChJt7jFPNGjugFih8OGWkWczcNKmUToAI7WslLJccuFGBu+VHEYBGlmK1uBCE8kGc+oOvUZYy9wQ4
	kq+XhV2nnJJRXSWQS1aL9KcsWyvEaqfhL8A/Kajojz8GO/yNIHBlEzdFVH9Debgym66I5QmFf1Fu4
	BAuX+F5Pt17/WnLAOzK20ZlgrBKiwqbZ0s18FDQsE9YAWG2/LRo2fgtT4ivcmzX2/Iskn65EDRKSh
	OD17fjj5Ntuu9/4fhVZg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pjHmO-00F0N7-0d;
	Mon, 03 Apr 2023 10:51:16 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pjHmE-00F0HT-2Z;
	Mon, 03 Apr 2023 10:51:11 +0000
Received: from localhost (unknown [188.27.34.213])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 8C2CA6601F5E;
	Mon,  3 Apr 2023 11:50:59 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1680519059;
	bh=3p6JM3yd+WNtA17Lh4gwyYervmzfd8F94ozGs1R5ndg=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=AM6QdN55bibFuOhSGSqDXnGJ/x/2UP38lGYkrJph8AcpokSGG68FR7mJ+qFxbRoPv
	 /yUpWdzsscPfJ5kGt3enNjNiyellhBMCZqWl3oykS0mhE4Engzmhp6Rqg4ih5Micro
	 5OD73v/HMboooby22jVWDbG8oNyMnF0FcIxOaqYcXPfkNhAjc8SnJPzFdPOJwQHcdU
	 mGSJxSoSXHkuMQ4zwvONnA6iqGSfX/+Hjgw/g/x4aGNyW03TFwFi76KE5onUcwvH3t
	 ynn82IAaAgRp+SQQuxewqr2hrzQc1IxZBY2QOCP4n9E5RveTXezF8FfIhwT6BXIltx
	 6KioWqEmb1vCg==
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
Subject: [PATCH 1/2] dt-bindings: hwmon: pwm-fan: Convert to DT schema
Date: Mon,  3 Apr 2023 13:50:51 +0300
Message-Id: <20230403105052.426135-2-cristian.ciocaltea@collabora.com>
X-Mailer: git-send-email 2.40.0
In-Reply-To: <20230403105052.426135-1-cristian.ciocaltea@collabora.com>
References: <20230403105052.426135-1-cristian.ciocaltea@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230403_035107_094137_909C862B 
X-CRM114-Status: GOOD (  20.18  )
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
 .../devicetree/bindings/hwmon/pwm-fan.txt     |  68 +----------
 .../devicetree/bindings/hwmon/pwm-fan.yaml    | 109 ++++++++++++++++++
 2 files changed, 110 insertions(+), 67 deletions(-)
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
index 000000000000..448b48ec5d73
--- /dev/null
+++ b/Documentation/devicetree/bindings/hwmon/pwm-fan.yaml
@@ -0,0 +1,109 @@
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
+    description:
+      PWM duty cycle values in a range from 0 to 255 which correspond to
+      thermal cooling states.
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
+
+  pulses-per-revolution:
+    description:
+      Define the number of pulses per fan revolution for each tachometer
+      input as an integer (default is 2 interrupts per revolution).
+      The value must be greater than zero.
+    $ref: /schemas/types.yaml#/definitions/uint32-array
+
+  pwms:
+    description: The PWM that is used to control the fan.
+    maxItems: 1
+
+  pwm-names: true
+
+  "#cooling-cells":
+    description: The PWM fan can be referenced as a cooling-device.
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
