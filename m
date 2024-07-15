Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A1F75C3DA5D
	for <linux-rockchip@archiver.kernel.org>; Mon, 15 Jul 2024 11:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HOqWqYb+FJQKJZl5k+L3jjD1mpEUUckBk5L9dv7JDwQ=; b=k2yxN6dd+pekNl
	AKIuhXPmFM3J0PRKD73QzGZ2RL3U8sGEU1ExGc/1A4WWloq5SWsJRktejQ+tXbTzP9M/DhV9GcmXz
	f8SAKmZ1MPJulUwo2eDdrRMQM3EqSx3QkmwSjkEW5wyd30AGI3cjs0KuJKPyy8QFm+iYfWcqFaAVp
	5dRrTad7VYPNYYgxTOXFtL3Cbk+3hE7HFlMQ2IsWY+FANRi4QJMMNcHBVsBABWQwLwqGC0vX+Rlqk
	PlD45ErHzMHZwg6LnEG+BEyc0GtTBlsKQo+RpVrRKlJ8Adgp3OsOdURKb/xbQdZK3n3wqD9MhSdY6
	96RJtPp9+i5fVYLZ6MxA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sTJVj-00000006oLG-046V;
	Mon, 15 Jul 2024 11:04:51 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sTJV8-00000006o9G-2xD9;
	Mon, 15 Jul 2024 11:04:16 +0000
Received: from i5e860d09.versanet.de ([94.134.13.9] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1sTJV3-0006GM-KP; Mon, 15 Jul 2024 13:04:09 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: mturquette@baylibre.com,
	sboyd@kernel.org
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	heiko@sntech.de,
	linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: [PATCH v2 1/3] dt-bindings: clocks: add binding for voltage-controlled-oscillators
Date: Mon, 15 Jul 2024 13:02:49 +0200
Message-Id: <20240715110251.261844-2-heiko@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240715110251.261844-1-heiko@sntech.de>
References: <20240715110251.261844-1-heiko@sntech.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240715_040414_763395_8E5B3082 
X-CRM114-Status: GOOD (  16.49  )
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

In contrast to fixed clocks that are described as ungateable, boards
sometimes use additional oscillators for things like PCIe reference
clocks, that need actual supplies to get enabled and enable-gpios to be
toggled for them to work.

This adds a binding for such oscillators that are not configurable
themself, but need to handle supplies for them to work.

In schematics they often can be seen as

         ----------------
Enable - | 100MHz,3.3V, | - VDD
         |    3225      |
   GND - |              | - OUT
         ----------------

or similar. The enable pin might be separate but can also just be tied
to the vdd supply, hence it is optional in the binding.

Signed-off-by: Heiko Stuebner <heiko@sntech.de>
---
 .../bindings/clock/voltage-oscillator.yaml    | 49 +++++++++++++++++++
 1 file changed, 49 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/clock/voltage-oscillator.yaml

diff --git a/Documentation/devicetree/bindings/clock/voltage-oscillator.yaml b/Documentation/devicetree/bindings/clock/voltage-oscillator.yaml
new file mode 100644
index 0000000000000..8bff6b0fd582e
--- /dev/null
+++ b/Documentation/devicetree/bindings/clock/voltage-oscillator.yaml
@@ -0,0 +1,49 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/clock/voltage-oscillator.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Voltage controlled oscillator
+
+maintainers:
+  - Heiko Stuebner <heiko@sntech.de>
+
+properties:
+  compatible:
+    const: voltage-oscillator
+
+  "#clock-cells":
+    const: 0
+
+  clock-frequency: true
+
+  clock-output-names:
+    maxItems: 1
+
+  enable-gpios:
+    description:
+      Contains a single GPIO specifier for the GPIO that enables and disables
+      the oscillator.
+    maxItems: 1
+
+  vdd-supply:
+    description: handle of the regulator that provides the supply voltage
+
+required:
+  - compatible
+  - "#clock-cells"
+  - clock-frequency
+  - vdd-supply
+
+additionalProperties: false
+
+examples:
+  - |
+    voltage-oscillator {
+      compatible = "voltage-oscillator";
+      #clock-cells = <0>;
+      clock-frequency = <1000000000>;
+      vdd-supply = <&reg_vdd>;
+    };
+...
-- 
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
