Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EB38EC7EE2F
	for <linux-rockchip@archiver.kernel.org>; Mon, 12 Jun 2023 17:14:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9MUaXow+dSAAi7oPanFMUxNRjLC0fUJT47cYFUKohKM=; b=C6s4KsaDppckJt
	U2jPN/6A2vJH+B2n/+7jYts/u1qu7do1zmtOPd2ii43pVT4BPXQgVRBZ6WPfypl9ttcKdzDMewkAb
	LtWM7+Cpv0rq3OOqG0z3zBJAGQEDv/tWBJtJPMf4xbXYHGQWWGstzNZc8FxsyJx9ev7WCy7F8I4SE
	wU/PZhPCvOGAERDSZLVZVrBTr6nDW/ktsHYMTUxM5X6BQ0WYs1NFBdwGa4W1826wWyLc9apmRWwIy
	+vFr/4IWItsDzuOsp9tuZuXtlubALdsgn3hOlcgl2n91FimCAT0Nz7yUTRy1fUYNWVgiHKcrg6qtS
	ofqqvBmv8bByBJG0nm9Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q8l72-004if6-2l;
	Mon, 12 Jun 2023 17:13:52 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q8l6w-004iZA-11;
	Mon, 12 Jun 2023 17:13:49 +0000
Received: from jupiter.universe (dyndsl-091-248-210-131.ewe-ip-backbone.de [91.248.210.131])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sre)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 04B4B6606EBB;
	Mon, 12 Jun 2023 18:13:41 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1686590021;
	bh=VJpqZyVFrCk2SKOCiAs/vOmL6h0Sc0ZuNVY80eWQnII=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=gVEkaJp21zFOAxvtACw6eyLVWi+x2W932RzMN8czl7lpS4QRTRk6JLX8OsuelJ7q3
	 zyjf4NdvAygv0fgoBIqIZ8ZSPb810kjkuKf9xESkI8AB6nnpV+QlO0Ar7inSNZyvPk
	 lPwX8kNAeyInhGxWkP4CPmBG/3wSsrTFVqpNxOJNPfOifVljB2e5ug5QfI5raXa3XU
	 b8tqRIxYtzbr3wm2XeK33ScfkkzLJzKHmbwG6cdpvUVUmDIT19k/EXrWn3IfF0gDvC
	 ojeIuKlsT2qyaOI6bSmiMrZEm/fqLXh1J/9/2FOc4kCes9C4IdOCyBJrClTFtKIyXV
	 YHCnQd3Hd989g==
Received: by jupiter.universe (Postfix, from userid 1000)
	id A57AE4807E1; Mon, 12 Jun 2023 19:13:38 +0200 (CEST)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Damien Le Moal <damien.lemoal@opensource.wdc.com>,
	Serge Semin <fancer.lancer@gmail.com>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	linux-ide@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	kernel@collabora.com
Subject: [PATCH v4 2/5] dt-bindings: ata: dwc-ahci: add Rockchip RK3588
Date: Mon, 12 Jun 2023 19:13:34 +0200
Message-Id: <20230612171337.74576-3-sebastian.reichel@collabora.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230612171337.74576-1-sebastian.reichel@collabora.com>
References: <20230612171337.74576-1-sebastian.reichel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230612_101346_643140_752710CC 
X-CRM114-Status: GOOD (  14.20  )
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

This adds Rockchip RK3588 AHCI binding. In order to narrow down the
allowed clocks without bloating the generic binding, the description
of Rockchip's AHCI controllers has been moved to its own file.

Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
 .../bindings/ata/rockchip,dwc-ahci.yaml       | 124 ++++++++++++++++++
 .../bindings/ata/snps,dwc-ahci.yaml           |  13 +-
 2 files changed, 133 insertions(+), 4 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/ata/rockchip,dwc-ahci.yaml

diff --git a/Documentation/devicetree/bindings/ata/rockchip,dwc-ahci.yaml b/Documentation/devicetree/bindings/ata/rockchip,dwc-ahci.yaml
new file mode 100644
index 000000000000..b5e5767d8698
--- /dev/null
+++ b/Documentation/devicetree/bindings/ata/rockchip,dwc-ahci.yaml
@@ -0,0 +1,124 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/ata/rockchip,dwc-ahci.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Synopsys DWC AHCI SATA controller for Rockchip devices
+
+maintainers:
+  - Serge Semin <fancer.lancer@gmail.com>
+
+description:
+  This document defines device tree bindings for the Synopsys DWC
+  implementation of the AHCI SATA controller found in Rockchip
+  devices.
+
+select:
+  properties:
+    compatible:
+      contains:
+        enum:
+          - rockchip,rk3568-dwc-ahci
+          - rockchip,rk3588-dwc-ahci
+  required:
+    - compatible
+
+properties:
+  compatible:
+    items:
+      - enum:
+          - rockchip,rk3568-dwc-ahci
+          - rockchip,rk3588-dwc-ahci
+      - const: snps,dwc-ahci
+
+  ports-implemented:
+    const: 1
+
+  sata-port@0:
+    $ref: /schemas/ata/snps,dwc-ahci-common.yaml#/$defs/dwc-ahci-port
+
+    properties:
+      reg:
+        const: 0
+
+    unevaluatedProperties: false
+
+patternProperties:
+  "^sata-port@[1-9a-e]$": false
+
+required:
+  - compatible
+  - reg
+  - interrupts
+  - clocks
+  - clock-names
+  - ports-implemented
+
+allOf:
+  - $ref: snps,dwc-ahci-common.yaml#
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - rockchip,rk3588-dwc-ahci
+    then:
+      properties:
+        clocks:
+          maxItems: 5
+        clock-names:
+          items:
+            - const: sata
+            - const: pmalive
+            - const: rxoob
+            - const: ref
+            - const: asic
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - rockchip,rk3568-dwc-ahci
+    then:
+      properties:
+        clocks:
+          maxItems: 3
+        clock-names:
+          items:
+            - const: sata
+            - const: pmalive
+            - const: rxoob
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/rockchip,rk3588-cru.h>
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+    #include <dt-bindings/ata/ahci.h>
+    #include <dt-bindings/phy/phy.h>
+
+    sata@fe210000 {
+      compatible = "rockchip,rk3588-dwc-ahci", "snps,dwc-ahci";
+      reg = <0xfe210000 0x1000>;
+      clocks = <&cru ACLK_SATA0>, <&cru CLK_PMALIVE0>,
+               <&cru CLK_RXOOB0>, <&cru CLK_PIPEPHY0_REF>,
+               <&cru CLK_PIPEPHY0_PIPE_ASIC_G>;
+      clock-names = "sata", "pmalive", "rxoob", "ref", "asic";
+      interrupts = <GIC_SPI 273 IRQ_TYPE_LEVEL_HIGH 0>;
+      ports-implemented = <0x1>;
+      #address-cells = <1>;
+      #size-cells = <0>;
+
+      sata-port@0 {
+        reg = <0>;
+        hba-port-cap = <HBA_PORT_FBSCP>;
+        phys = <&combphy0_ps PHY_TYPE_SATA>;
+        phy-names = "sata-phy";
+        snps,rx-ts-max = <32>;
+        snps,tx-ts-max = <32>;
+      };
+    };
+
+...
diff --git a/Documentation/devicetree/bindings/ata/snps,dwc-ahci.yaml b/Documentation/devicetree/bindings/ata/snps,dwc-ahci.yaml
index 5afa4b57ce20..4c848fcb5a5d 100644
--- a/Documentation/devicetree/bindings/ata/snps,dwc-ahci.yaml
+++ b/Documentation/devicetree/bindings/ata/snps,dwc-ahci.yaml
@@ -13,6 +13,15 @@ description:
   This document defines device tree bindings for the generic Synopsys DWC
   implementation of the AHCI SATA controller.
 
+select:
+  properties:
+    compatible:
+      enum:
+        - snps,dwc-ahci
+        - snps,spear-ahci
+  required:
+    - compatible
+
 allOf:
   - $ref: snps,dwc-ahci-common.yaml#
 
@@ -23,10 +32,6 @@ properties:
         const: snps,dwc-ahci
       - description: SPEAr1340 AHCI SATA device
         const: snps,spear-ahci
-      - description: Rockhip RK3568 AHCI controller
-        items:
-          - const: rockchip,rk3568-dwc-ahci
-          - const: snps,dwc-ahci
 
 patternProperties:
   "^sata-port@[0-9a-e]$":
-- 
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
