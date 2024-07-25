Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 16FDAC3DA5D
	for <linux-rockchip@archiver.kernel.org>; Thu, 25 Jul 2024 19:47:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kAlEqIqo+kLTe8K+wVJ8nVCtj5Xk7l36KpxSL3falXo=; b=cssKrysi3y7a6E
	1gEoZCvwd2uDb4p5vh26nIRj0+FBCTAn1vzsjuTWM0hvANpa/o5+LYB0f9UWMEQZvQqrFKeExMLwt
	EJ5cy0csbasgy47UVNK2YGJtqwmAagslkP0ZAllQUYVnxZA9GiW9jxOKTQCTqQcy8EevrgRcXPngV
	RfZzUG6P2IJ9CoGrCmc6d7I92g7HWsmojEYnceOiIn99uoxc/kEWspJ2NjMjFnRGcXEzACsUOAqYD
	R1dxnxA5KB5VONoBqRwnrDDLQJBhgLF7PEZ/oTJ0kvANN7BCoefWhlmsY0FXUUha0hre8PD3xL+tJ
	syuomTQUYv+bbJ2RRm6w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sX4RH-00000001wpQ-1hP7;
	Thu, 25 Jul 2024 19:47:47 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sX4Pc-00000001w91-4A1L;
	Thu, 25 Jul 2024 19:46:11 +0000
Received: from i5e860cdd.versanet.de ([94.134.12.221] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1sX4PO-0001rD-6Z; Thu, 25 Jul 2024 21:45:50 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: lee@kernel.org,
	jdelvare@suse.com,
	linux@roeck-us.net,
	dmitry.torokhov@gmail.com,
	pavel@ucw.cz
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	heiko@sntech.de,
	ukleinek@debian.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-hwmon@vger.kernel.org,
	linux-input@vger.kernel.org,
	linux-leds@vger.kernel.org
Subject: [PATCH 1/7] dt-bindings: mfd: add binding for qnap,mcu devices
Date: Thu, 25 Jul 2024 21:45:33 +0200
Message-Id: <20240725194539.1780790-2-heiko@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240725194539.1780790-1-heiko@sntech.de>
References: <20240725194539.1780790-1-heiko@sntech.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240725_124605_177579_07731EB0 
X-CRM114-Status: GOOD (  14.99  )
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

These MCUs can be found in network attached storage devices made by QNAP.
They are connected to a serial port of the host device and provide
functionality like LEDs, power-control and temperature monitoring.

Signed-off-by: Heiko Stuebner <heiko@sntech.de>
---
 .../devicetree/bindings/mfd/qnap,mcu.yaml     | 43 +++++++++++++++++++
 1 file changed, 43 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/mfd/qnap,mcu.yaml

diff --git a/Documentation/devicetree/bindings/mfd/qnap,mcu.yaml b/Documentation/devicetree/bindings/mfd/qnap,mcu.yaml
new file mode 100644
index 0000000000000..3b1ad8cb54da3
--- /dev/null
+++ b/Documentation/devicetree/bindings/mfd/qnap,mcu.yaml
@@ -0,0 +1,43 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/mfd/qnap,mcu.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: QNAP NAS on-board Microcontroller
+
+maintainers:
+  - Heiko Stuebner <heiko@sntech.de>
+
+description: |
+  QNAP embeds a microcontroller on their NAS devices adding system feature
+  as PWM Fan control, additional LEDs, power button status and more.
+
+properties:
+  compatible:
+    enum:
+      - qnap,ts433-mcu
+
+  "#cooling-cells":
+    const: 2
+
+  cooling-levels:
+    description: PWM duty cycle values corresponding to thermal cooling states.
+    $ref: /schemas/types.yaml#/definitions/uint32-array
+    items:
+      maximum: 255
+
+required:
+  - compatible
+
+additionalProperties: false
+
+examples:
+  - |
+    uart {
+      mcu {
+        compatible = "qnap,ts433-mcu";
+        #cooling-cells = <2>;
+        cooling-levels = <0 64 89 128 166 204 221 238>;
+      };
+    };
-- 
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
