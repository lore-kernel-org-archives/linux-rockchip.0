Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 837F9FA373F
	for <linux-rockchip@archiver.kernel.org>; Mon, 24 Oct 2022 16:56:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1bT5tHUjtuCRhezFx+Az8s4mnH5rYo4wp3ohSW3BrKw=; b=0zlyDFEZfO0OsI
	EYvsBlhgt6T3OTsEA4B5bWlJ+EVwrckc0d6+x1BOntFCcHV5fsLIsQFkTKtGUTK3TCb8V8Z86qrhk
	nYlJ4NwuD6Sb8jgbly3ijsh3OjlfHNnyOb2fTjW/k4gpp+RUpWy/Dyymk+KufPjwKAThrXI2hANiL
	oOB2JvqSnLAoWAKQluHOzzwOdlv/6fGJx0UNI2Ue1CCE1f9ec3gcx/M0U11bW1diSALeCrH1Hq5pS
	4/YKqCSP6Kqhma4QiQMZi1W5pIYU3D/es1erF/pX5deaoNnoLBqYruNzsVTp1dU6gknFh5jt8lTgS
	mqaT+n+3sDDnMtfxLYYA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1on0kK-002OOf-BL; Mon, 24 Oct 2022 16:56:16 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1on0k6-002O7h-5e; Mon, 24 Oct 2022 16:56:04 +0000
Received: from jupiter.universe (dyndsl-091-096-059-109.ewe-ip-backbone.de [91.96.59.109])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: sre)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 86827660283F;
	Mon, 24 Oct 2022 17:55:58 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1666630558;
	bh=4ZJL66e4uW0ZMfoXxSwlQ168x6AE5qji5g/hEVVVtNI=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=U+ts7lMAMaWbjGgf47Fa/x8M9r74NDlhkJ23lZoQTUPGZwiHwGaAQaybJZy8O2Hur
	 jffcrKCymXnnLhjBFBC9fFbniFal2QGpkWaFogWxTtyPldygP1pM3geMIGwXJGlJLG
	 DlnFI6gUL7q7BF6Mr6b8QiLDTwGB7y7q7mRcASHcmcFlMH7xEwv2+EvE3JA5EMsUFe
	 q/1sD+RcxAV0WnNumJaVxQno+zl6KgZ3outsIoCgoJ5wBFwXOaqGa3yvPC50gMVaKi
	 PLVJs2F35RXXDuDFlNEftBEqtbDJQIJoo1oUFuRhZ+y0/QREx9L/ruy5bTJMDNLBy4
	 Hz07fHHRzs9fg==
Received: by jupiter.universe (Postfix, from userid 1000)
	id 099CF480AF2; Mon, 24 Oct 2022 18:55:54 +0200 (CEST)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Alexandre Belloni <alexandre.belloni@bootlin.com>,
	Alessandro Zummo <a.zummo@towertech.it>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
	Kevin Hilman <khilman@baylibre.com>,
	Jerome Brunet <jbrunet@baylibre.com>,
	Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
	Heiko Stuebner <heiko@sntech.de>,
	linux-rockchip@lists.infradead.org,
	linux-amlogic@lists.infradead.org,
	linux-rtc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	kernel@collabora.com
Subject: [PATCHv2 6/6] dt-bindings: rtc: convert hym8563 bindings to json-schema
Date: Mon, 24 Oct 2022 18:55:49 +0200
Message-Id: <20221024165549.74574-7-sebastian.reichel@collabora.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20221024165549.74574-1-sebastian.reichel@collabora.com>
References: <20221024165549.74574-1-sebastian.reichel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221024_095602_383528_A1A52D79 
X-CRM114-Status: GOOD (  14.41  )
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

Convert RTC binding for Haoyu Microelectronics HYM8563 to Device Tree
Schema format.

Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
 .../devicetree/bindings/rtc/haoyu,hym8563.txt | 30 ----------
 .../bindings/rtc/haoyu,hym8563.yaml           | 56 +++++++++++++++++++
 2 files changed, 56 insertions(+), 30 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/rtc/haoyu,hym8563.txt
 create mode 100644 Documentation/devicetree/bindings/rtc/haoyu,hym8563.yaml

diff --git a/Documentation/devicetree/bindings/rtc/haoyu,hym8563.txt b/Documentation/devicetree/bindings/rtc/haoyu,hym8563.txt
deleted file mode 100644
index a8934fe2ab4c..000000000000
--- a/Documentation/devicetree/bindings/rtc/haoyu,hym8563.txt
+++ /dev/null
@@ -1,30 +0,0 @@
-Haoyu Microelectronics HYM8563 Real Time Clock
-
-The HYM8563 provides basic rtc and alarm functionality
-as well as a clock output of up to 32kHz.
-
-Required properties:
-- compatible: should be: "haoyu,hym8563"
-- reg: i2c address
-- #clock-cells: the value should be 0
-
-Optional properties:
-- clock-output-names: From common clock binding
-- interrupts: rtc alarm/event interrupt
-
-Example:
-
-hym8563: hym8563@51 {
-	compatible = "haoyu,hym8563";
-	reg = <0x51>;
-
-	interrupts = <13 IRQ_TYPE_EDGE_FALLING>;
-
-	#clock-cells = <0>;
-};
-
-device {
-...
-	clocks = <&hym8563>;
-...
-};
diff --git a/Documentation/devicetree/bindings/rtc/haoyu,hym8563.yaml b/Documentation/devicetree/bindings/rtc/haoyu,hym8563.yaml
new file mode 100644
index 000000000000..0b9f39ef0edc
--- /dev/null
+++ b/Documentation/devicetree/bindings/rtc/haoyu,hym8563.yaml
@@ -0,0 +1,56 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/rtc/haoyu,hym8563.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Haoyu Microelectronics HYM8563 RTC
+
+maintainers:
+  - Alexandre Belloni <alexandre.belloni@bootlin.com>
+
+properties:
+  compatible:
+    const: haoyu,hym8563
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+  "#clock-cells":
+    const: 0
+
+  clock-output-names:
+    description: From common clock binding to override the default output clock name.
+    maxItems: 1
+
+  wakeup-source:
+    description: Enables wake up of host system on alarm.
+
+allOf:
+  - $ref: rtc.yaml
+
+unevaluatedProperties: false
+
+required:
+  - compatible
+  - reg
+  - "#clock-cells"
+
+examples:
+  - |
+    #include <dt-bindings/interrupt-controller/irq.h>
+
+    i2c {
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        rtc@51 {
+            compatible = "haoyu,hym8563";
+            reg = <0x51>;
+            interrupts = <13 IRQ_TYPE_EDGE_FALLING>;
+            #clock-cells = <0>;
+        };
+    };
-- 
2.35.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
