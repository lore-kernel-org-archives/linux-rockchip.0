Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9430FC3DA49
	for <linux-rockchip@archiver.kernel.org>; Sun, 28 Jul 2024 21:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QUq2poqOYcEZW4eLWsmTb9K0P2lU9pABeZJzkLos9no=; b=ZXA0vpI/sZoWuI
	x9lt/zkCV5SeWNPAyLQ0CLeGKDJHZzPxtBom+7XHElaOWd5lgcliYpIvC5zpCnh53qBvCI5hqdp37
	yQmH2qCWirv+X8ymLqwScF+o3RQUGyMxs4zAdDR84tos0FIHEoGy4DEusyJxh+L10G/0yIiyvf/Tz
	o3ZOMi+xJq4eq5t9Mb08sYXBMkrBWnnZ1boXz3VQMg5FyABGbdShMP6n/IwxiUplHUoBoWjJv0LTl
	Dk+/6WpD+8zUHmSaDAnyoGacyoSnM4PO+bunpY8dF+RbAKNE1k1pJi9+O8kryZjWQvOuAxNXD3V7C
	7cBskkqBVhIbt32w5bxQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sYBJy-00000009FSm-3rKF;
	Sun, 28 Jul 2024 21:20:50 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sYBHU-00000009EP1-1IqL;
	Sun, 28 Jul 2024 21:18:19 +0000
Received: from i5e86192c.versanet.de ([94.134.25.44] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1sYBHE-0005yh-95; Sun, 28 Jul 2024 23:18:00 +0200
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
	linux-leds@vger.kernel.org,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v2 1/7] dt-bindings: mfd: add binding for qnap,ts433-mcu devices
Date: Sun, 28 Jul 2024 23:17:45 +0200
Message-Id: <20240728211751.2160123-2-heiko@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240728211751.2160123-1-heiko@sntech.de>
References: <20240728211751.2160123-1-heiko@sntech.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240728_141816_412685_1FCE8DB4 
X-CRM114-Status: GOOD (  14.39  )
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

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Heiko Stuebner <heiko@sntech.de>
---
 .../bindings/mfd/qnap,ts433-mcu.yaml          | 43 +++++++++++++++++++
 1 file changed, 43 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/mfd/qnap,ts433-mcu.yaml

diff --git a/Documentation/devicetree/bindings/mfd/qnap,ts433-mcu.yaml b/Documentation/devicetree/bindings/mfd/qnap,ts433-mcu.yaml
new file mode 100644
index 0000000000000..5ae19d8faedbd
--- /dev/null
+++ b/Documentation/devicetree/bindings/mfd/qnap,ts433-mcu.yaml
@@ -0,0 +1,43 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/mfd/qnap,ts433-mcu.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: QNAP NAS on-board Microcontroller
+
+maintainers:
+  - Heiko Stuebner <heiko@sntech.de>
+
+description:
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
