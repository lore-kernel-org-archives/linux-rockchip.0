Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1F1BEC4332F
	for <linux-rockchip@archiver.kernel.org>; Thu,  9 Nov 2023 18:45:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=eW4I2QQ3y7VqfkJZRz5Ry3a3uCkeDMhXvwMKyp/SzPU=; b=2uJV3nbLU7U+qQ
	0wGpqHyzyuOA6ckvEG5S7LZcV3whDXf7LlvI4e/wuUfOAsEfdzscwQTnBNdvX4dbbj/5br3y4lgSG
	DDSv+wpvcasmHNKgAxH1ML7Q3ry0wD0ZpKyFPbjd/LgYoERvWEbveLU1DcjcYnylCvJADpnT8Bv6j
	yJlhHMj6GRET84600J3pp1fMYVyKqxv9iclXWRPIFrRb1a0j0epQgwnFfculJRJhi2NYJGLZfYD2n
	Ka4+kzkdicmdlwuS+zgzk2QLLEq+VCVLMiNNOjU0/iI1Ivr5+d6G/xk1nAq1LJXIQHwRuJ4xcQwTK
	gpi+GNRPIcfo65InMauw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r1A1X-0073EP-2G;
	Thu, 09 Nov 2023 18:45:03 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r1A1T-0073CH-1W
	for linux-rockchip@lists.infradead.org;
	Thu, 09 Nov 2023 18:45:01 +0000
Received: from jupiter.universe (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sre)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 8BBEF660740F;
	Thu,  9 Nov 2023 18:44:56 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1699555496;
	bh=WPjYwcBCmS+prQOc/wOVgZLSo1macXZkqnIBkZkHKlg=;
	h=From:To:Cc:Subject:Date:From;
	b=Ynx+Wrd3fG7H0sFPwgbTm3LBIbPURppIDjkinci6RaxKwYL/kG+jxsdQobYdFMQFn
	 Wwbl5aAbFmfwDrhIuyQmNGjqolQQDEaScZVM/YxcM/2HA1zVLmPj+vJho1huh6IHBv
	 /f5V+6g9qROeNqIduZVOEb8jfC09S0+StL6RzdbIXgj/QBYoVK1uVaQFmKi6hhzjG1
	 7/UR+X+C8dgfcKrJMWq5Du1YPIdoBQTSet9sb8MuEIyvRDhl0OT6g1XpRgRlp0ljaf
	 H0/PTuE89Vi6gXdZGYjkoq3iYP1GztJyv7F+NVh3A2dO+4XgwDUdlAqQzkfAXHx1eh
	 mimr4LEXVARCw==
Received: by jupiter.universe (Postfix, from userid 1000)
	id 0B0004800CE; Thu,  9 Nov 2023 19:44:54 +0100 (CET)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Heiko Stuebner <heiko@sntech.de>,
	Mark Brown <broonie@kernel.org>
Cc: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-rockchip@lists.infradead.org,
	linux-sound@vger.kernel.org,
	devicetree@vger.kernel.org,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	kernel@collabora.com
Subject: [PATCH v1 1/2] dt-bindings: es8328: convert to DT schema format
Date: Thu,  9 Nov 2023 19:44:43 +0100
Message-ID: <20231109184453.108676-1-sebastian.reichel@collabora.com>
X-Mailer: git-send-email 2.42.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231109_104459_833268_CBC8D63C 
X-CRM114-Status: GOOD (  16.77  )
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

Convert the binding to DT schema format. Note, that "IPVDD-supply"
got fixed to be "HPVDD-supply" during the conversion. This was
obviously a typo in the old binding. The old binding example, DT
files, chip datasheet and Linux driver use HPVDD.

Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
 .../devicetree/bindings/sound/es8328.txt      | 38 ---------
 .../bindings/sound/everest,es8328.yaml        | 77 +++++++++++++++++++
 2 files changed, 77 insertions(+), 38 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/sound/es8328.txt
 create mode 100644 Documentation/devicetree/bindings/sound/everest,es8328.yaml

diff --git a/Documentation/devicetree/bindings/sound/es8328.txt b/Documentation/devicetree/bindings/sound/es8328.txt
deleted file mode 100644
index 33fbf058c997..000000000000
--- a/Documentation/devicetree/bindings/sound/es8328.txt
+++ /dev/null
@@ -1,38 +0,0 @@
-Everest ES8328 audio CODEC
-
-This device supports both I2C and SPI.
-
-Required properties:
-
-  - compatible  : Should be "everest,es8328" or "everest,es8388"
-  - DVDD-supply : Regulator providing digital core supply voltage 1.8 - 3.6V
-  - AVDD-supply : Regulator providing analog supply voltage 3.3V
-  - PVDD-supply : Regulator providing digital IO supply voltage 1.8 - 3.6V
-  - IPVDD-supply : Regulator providing analog output voltage 3.3V
-  - clocks : A 22.5792 or 11.2896 MHz clock
-  - reg : the I2C address of the device for I2C, the chip select number for SPI
-
-Pins on the device (for linking into audio routes):
-
-  * LOUT1
-  * LOUT2
-  * ROUT1
-  * ROUT2
-  * LINPUT1
-  * RINPUT1
-  * LINPUT2
-  * RINPUT2
-  * Mic Bias
-
-
-Example:
-
-codec: es8328@11 {
-	compatible = "everest,es8328";
-	DVDD-supply = <&reg_3p3v>;
-	AVDD-supply = <&reg_3p3v>;
-	PVDD-supply = <&reg_3p3v>;
-	HPVDD-supply = <&reg_3p3v>;
-	clocks = <&clks 169>;
-	reg = <0x11>;
-};
diff --git a/Documentation/devicetree/bindings/sound/everest,es8328.yaml b/Documentation/devicetree/bindings/sound/everest,es8328.yaml
new file mode 100644
index 000000000000..a0f4670fa38c
--- /dev/null
+++ b/Documentation/devicetree/bindings/sound/everest,es8328.yaml
@@ -0,0 +1,77 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/sound/everest,es8328.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Everest ES8328 audio CODEC
+
+description:
+  Everest Audio Codec, which can be connected via I2C or SPI.
+  Pins on the device (for linking into audio routes) are
+  * LOUT1
+  * LOUT2
+  * ROUT1
+  * ROUT2
+  * LINPUT1
+  * RINPUT1
+  * LINPUT2
+  * RINPUT2
+  * Mic Bias
+
+maintainers:
+  - David Yang <yangxiaohua@everest-semi.com>
+
+properties:
+  compatible:
+    enum:
+      - everest,es8328
+      - everest,es8388
+
+  reg:
+    maxItems: 1
+
+  "#sound-dai-cells":
+    const: 0
+
+  clocks:
+    items:
+      - description: A 22.5792 or 11.2896 MHz clock
+
+  DVDD-supply:
+    description: Regulator providing digital core supply voltage 1.8 - 3.6V
+
+  AVDD-supply:
+    description: Regulator providing analog supply voltage 3.3V
+
+  PVDD-supply:
+    description: Regulator providing digital IO supply voltage 1.8 - 3.6V
+
+  HPVDD-supply:
+    description: Regulator providing analog output voltage 3.3V
+
+required:
+  - compatible
+  - clocks
+  - DVDD-supply
+  - AVDD-supply
+  - PVDD-supply
+  - HPVDD-supply
+
+additionalProperties: false
+
+examples:
+  - |
+    i2c {
+      #address-cells = <1>;
+      #size-cells = <0>;
+      es8328: codec@11 {
+        compatible = "everest,es8328";
+        reg = <0x11>;
+        AVDD-supply = <&reg_3p3v>;
+        DVDD-supply = <&reg_3p3v>;
+        HPVDD-supply = <&reg_3p3v>;
+        PVDD-supply = <&reg_3p3v>;
+        clocks = <&clks 169>;
+      };
+    };
-- 
2.42.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
