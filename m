Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 88735C7EE45
	for <linux-rockchip@archiver.kernel.org>; Thu,  8 Jun 2023 16:23:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=89xa2VSpcyAoz4IS9oiGWK291rQ9quYjYnsaiffhA98=; b=TNcnBRSsbRoXKL
	Op87R7g1kWrDBt9r5orkvLi0NGWRB43xcUTG5zjp9Zjf3nygdTAc1azuCnslqSKDhCP6OkEBvkiFU
	u0NYJ4ELeWfdITsP9fjDr7GS3InvqaL5R5AVrrQCrItH0v0UlbhCTL9Bx7IIG69CTzIkw4Y3yWTPz
	f8PeZhcb9+INWNyC47SuoTavFsV3by2kyE1SNsW6TEY3fBoDCI+NnkMr3nuKEqGPiKhNTh98r+ItP
	L3hICnDtaaAHqrbBkr+gZDbogCYODSnNfPQPMaS8zJLlQyr4MYg/xq3Xo9bMrHS214tgaPObBxtKH
	jYzvg2f2XGBIPQnYMAvA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q7IPU-009rW2-21;
	Thu, 08 Jun 2023 16:22:52 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q7IPO-009rPu-1A;
	Thu, 08 Jun 2023 16:22:49 +0000
Received: from jupiter.universe (dyndsl-091-248-189-092.ewe-ip-backbone.de [91.248.189.92])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sre)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id E351A6606F23;
	Thu,  8 Jun 2023 17:22:41 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1686241362;
	bh=FonCoURcO7g6os0P5Lry6rxjs+kuIZse14bTr8E1Exk=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=F5KlnpTuQFJ4my18FW/nI8RQGW0+E5iTneKQNFOHw2yiomPyhhch+cGXVduah2w1a
	 vaeAa/eGnc3YPyU9rq/ZQClj2huNrYHURfv5U0QwCXH9YlfSridso03knEp6VaBMum
	 eQ88TdD3kLsfwEGu0ex2CaH3t5ih6lnU31tWlgPD6KtGSDivxLGDjX/TdZwOw4JduM
	 VlhgZ8fAyLvNpE145fOttcGApiOeWBec+ewjpE1E5iV49IoDx0SnAY87cbotYd7zVs
	 ZcVeo8dnGntbn682aPm4fKiPvA0T6eosqF9S7+K6ezF8o7L/YdnxskDMJt3cB9/8HL
	 0FC70aBvf9HJQ==
Received: by jupiter.universe (Postfix, from userid 1000)
	id CC1714807E1; Thu,  8 Jun 2023 18:22:39 +0200 (CEST)
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
Subject: [PATCH v3 2/5] dt-bindings: ata: dwc-ahci: add Rockchip RK3588
Date: Thu,  8 Jun 2023 18:22:35 +0200
Message-Id: <20230608162238.50078-3-sebastian.reichel@collabora.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230608162238.50078-1-sebastian.reichel@collabora.com>
References: <20230608162238.50078-1-sebastian.reichel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230608_092246_684720_EA2E85BF 
X-CRM114-Status: GOOD (  13.89  )
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
 .../bindings/ata/rockchip,dwc-ahci.yaml       | 114 ++++++++++++++++++
 .../bindings/ata/snps,dwc-ahci.yaml           |  17 ++-
 2 files changed, 125 insertions(+), 6 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/ata/rockchip,dwc-ahci.yaml

diff --git a/Documentation/devicetree/bindings/ata/rockchip,dwc-ahci.yaml b/Documentation/devicetree/bindings/ata/rockchip,dwc-ahci.yaml
new file mode 100644
index 000000000000..86da9bd594a7
--- /dev/null
+++ b/Documentation/devicetree/bindings/ata/rockchip,dwc-ahci.yaml
@@ -0,0 +1,114 @@
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
+patternProperties:
+  "^sata-port@[0-9a-e]$":
+    $ref: /schemas/ata/snps,dwc-ahci-common.yaml#/$defs/dwc-ahci-port
+
+    unevaluatedProperties: false
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
index 5afa4b57ce20..55a4bdfa3d9a 100644
--- a/Documentation/devicetree/bindings/ata/snps,dwc-ahci.yaml
+++ b/Documentation/devicetree/bindings/ata/snps,dwc-ahci.yaml
@@ -13,8 +13,14 @@ description:
   This document defines device tree bindings for the generic Synopsys DWC
   implementation of the AHCI SATA controller.
 
-allOf:
-  - $ref: snps,dwc-ahci-common.yaml#
+select:
+  properties:
+    compatible:
+      enum:
+        - snps,dwc-ahci
+        - snps,spear-ahci
+  required:
+    - compatible
 
 properties:
   compatible:
@@ -23,10 +29,6 @@ properties:
         const: snps,dwc-ahci
       - description: SPEAr1340 AHCI SATA device
         const: snps,spear-ahci
-      - description: Rockhip RK3568 AHCI controller
-        items:
-          - const: rockchip,rk3568-dwc-ahci
-          - const: snps,dwc-ahci
 
 patternProperties:
   "^sata-port@[0-9a-e]$":
@@ -39,6 +41,9 @@ required:
   - reg
   - interrupts
 
+allOf:
+  - $ref: snps,dwc-ahci-common.yaml#
+
 unevaluatedProperties: false
 
 examples:
-- 
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
