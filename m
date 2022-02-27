Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D9F65C433F5
	for <linux-rockchip@archiver.kernel.org>; Sun, 27 Feb 2022 18:28:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=M+vsq/TPSRrB/aEsQ0Snlu4Faujp96ofus0ppEOic8Q=; b=uElqpiSG2iQ/jN
	oTBuHsH3DZGGKswL7IPWX0RQIFzqPOBruO+yOEhSwg0QH42BHIGjksywWQbX6eUzDSVEiWoPsSoRG
	H+fDX3HLHJjp2D/5TT5be0k1gb6z8qqUkpf2d7UwSQwYxVQsyTq6MFgvw5a96aKlYuH+q5N6Q9Ge3
	Gw8K3fN7GrPThYi35AOi+vhXLGdERGM7uPE6/ZTrVsDCnrfHPwyP0JvjwEgoHzMLT9G1nEwwcDUQ/
	s2FdFRWhZ2sP/NTGfT6UjW2MlvyIKU//+ltuorG+NLMaebhty7J+BSLuDZhpsq82bd5muTVO5Yqcs
	D4oT1vELEZPJtNqqoSSw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nOOHq-009wha-57; Sun, 27 Feb 2022 18:28:50 +0000
Received: from mxout4.routing.net ([2a03:2900:1:a::9])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nOOHT-009wXs-Kl; Sun, 27 Feb 2022 18:28:29 +0000
Received: from mxbox1.masterlogin.de (unknown [192.168.10.88])
 by mxout4.routing.net (Postfix) with ESMTP id 59BC410077C;
 Sun, 27 Feb 2022 18:28:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mailerdienst.de;
 s=20200217; t=1645986501;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=MF0tLgmx2g6E4ZrnpnexpNhjlLSkSnH6Zfy8eS4SQV0=;
 b=rF33pGDMIdsMH9Qqrsy73+ubpclC9z7Nau538CU2nynr3NrGavczFVv9L7snUhvian8xq4
 rZejAAXMSkwQdn8gzttkLzT9iuluC7mVLDRA63mY1qmfVKgQ4kJ4z18kn/CIo9GPCGTxOh
 Fyhi6o42o97qZPFxmMjuZrYZbyx7IuE=
Received: from localhost.localdomain (fttx-pool-80.245.76.205.bambit.de
 [80.245.76.205])
 by mxbox1.masterlogin.de (Postfix) with ESMTPSA id 9E924405AF;
 Sun, 27 Feb 2022 18:28:20 +0000 (UTC)
From: Frank Wunderlich <linux@fw-web.de>
To: "devicetree @ vger . kernel . org Damien Le Moal"
 <damien.lemoal@opensource.wdc.com>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
 Hans de Goede <hdegoede@redhat.com>, Jens Axboe <axboe@kernel.dk>,
 linux-ide@vger.kernel.org, linux-kernel@vger.kernel.org,
 Heiko Stuebner <heiko@sntech.de>, Peter Geis <pgwipeout@gmail.com>,
 Michael Riesch <michael.riesch@wolfvision.net>,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
Cc: Frank Wunderlich <frank-w@public-files.de>
Subject: [PATCH v3 1/3] dt-bindings: Convert ahci-platform DT bindings to yaml
Date: Sun, 27 Feb 2022 19:27:58 +0100
Message-Id: <20220227182800.275572-2-linux@fw-web.de>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220227182800.275572-1-linux@fw-web.de>
References: <20220227182800.275572-1-linux@fw-web.de>
MIME-Version: 1.0
X-Mail-ID: 8a7f4aef-73a8-4cc1-a58c-260611dd9f5c
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220227_102828_063052_51F0272E 
X-CRM114-Status: GOOD (  21.59  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

From: Frank Wunderlich <frank-w@public-files.de>

Create a yaml file for dtbs_check from the old txt binding.

Signed-off-by: Frank Wunderlich <frank-w@public-files.de>
---
v3:
  - add conversion to sata-series
  - fix some errors in dt_binding_check and dtbs_check
  - move to unevaluated properties = false

---

imho all errors should be fixed in the dts not in the yaml...

errors about the subitem requirement that was defined in txt but not fixed some marvell dts

some dts for Marvell SoC bring error
'phys' is a required property
'target-supply' is a required property

problem is in arch/arm64/boot/dts/marvell/armada-cp11x.dtsi:331
here the sata-port@0 is defined, but not overridden with phy/target-supply in any following dts

====================================================================

arch/arm64/boot/dts/broadcom/northstar2
ns2-svk.dt.yaml:
ns2-xmc.dt.yaml:
  ahci@663f2000:
    $nodename:0: 'ahci@663f2000' does not match '^sata(@.*)?$'

    Unevaluated properties are not allowed
    ('reg-names', '#address-cells', '#size-cells' were unexpected)
---
 .../devicetree/bindings/ata/ahci-platform.txt |  79 ----------
 .../bindings/ata/ahci-platform.yaml           | 140 ++++++++++++++++++
 2 files changed, 140 insertions(+), 79 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/ata/ahci-platform.txt
 create mode 100644 Documentation/devicetree/bindings/ata/ahci-platform.yaml

diff --git a/Documentation/devicetree/bindings/ata/ahci-platform.txt b/Documentation/devicetree/bindings/ata/ahci-platform.txt
deleted file mode 100644
index 77091a277642..000000000000
--- a/Documentation/devicetree/bindings/ata/ahci-platform.txt
+++ /dev/null
@@ -1,79 +0,0 @@
-* AHCI SATA Controller
-
-SATA nodes are defined to describe on-chip Serial ATA controllers.
-Each SATA controller should have its own node.
-
-It is possible, but not required, to represent each port as a sub-node.
-It allows to enable each port independently when dealing with multiple
-PHYs.
-
-Required properties:
-- compatible        : compatible string, one of:
-  - "brcm,iproc-ahci"
-  - "hisilicon,hisi-ahci"
-  - "cavium,octeon-7130-ahci"
-  - "ibm,476gtr-ahci"
-  - "marvell,armada-380-ahci"
-  - "marvell,armada-3700-ahci"
-  - "snps,dwc-ahci"
-  - "snps,spear-ahci"
-  - "generic-ahci"
-- interrupts        : <interrupt mapping for SATA IRQ>
-- reg               : <registers mapping>
-
-Please note that when using "generic-ahci" you must also specify a SoC specific
-compatible:
-	compatible = "manufacturer,soc-model-ahci", "generic-ahci";
-
-Optional properties:
-- dma-coherent      : Present if dma operations are coherent
-- clocks            : a list of phandle + clock specifier pairs
-- resets            : a list of phandle + reset specifier pairs
-- target-supply     : regulator for SATA target power
-- phy-supply        : regulator for PHY power
-- phys              : reference to the SATA PHY node
-- phy-names         : must be "sata-phy"
-- ahci-supply       : regulator for AHCI controller
-- ports-implemented : Mask that indicates which ports that the HBA supports
-		      are available for software to use. Useful if PORTS_IMPL
-		      is not programmed by the BIOS, which is true with
-		      some embedded SOC's.
-
-Required properties when using sub-nodes:
-- #address-cells    : number of cells to encode an address
-- #size-cells       : number of cells representing the size of an address
-
-Sub-nodes required properties:
-- reg		    : the port number
-And at least one of the following properties:
-- phys		    : reference to the SATA PHY node
-- target-supply     : regulator for SATA target power
-
-Examples:
-        sata@ffe08000 {
-		compatible = "snps,spear-ahci";
-		reg = <0xffe08000 0x1000>;
-		interrupts = <115>;
-        };
-
-With sub-nodes:
-	sata@f7e90000 {
-		compatible = "marvell,berlin2q-achi", "generic-ahci";
-		reg = <0xe90000 0x1000>;
-		interrupts = <GIC_SPI 7 IRQ_TYPE_LEVEL_HIGH>;
-		clocks = <&chip CLKID_SATA>;
-		#address-cells = <1>;
-		#size-cells = <0>;
-
-		sata0: sata-port@0 {
-			reg = <0>;
-			phys = <&sata_phy 0>;
-			target-supply = <&reg_sata0>;
-		};
-
-		sata1: sata-port@1 {
-			reg = <1>;
-			phys = <&sata_phy 1>;
-			target-supply = <&reg_sata1>;;
-		};
-	};
diff --git a/Documentation/devicetree/bindings/ata/ahci-platform.yaml b/Documentation/devicetree/bindings/ata/ahci-platform.yaml
new file mode 100644
index 000000000000..cc246b312c59
--- /dev/null
+++ b/Documentation/devicetree/bindings/ata/ahci-platform.yaml
@@ -0,0 +1,140 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/ata/ahci-platform.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: AHCI SATA Controller
+description:
+  SATA nodes are defined to describe on-chip Serial ATA controllers.
+  Each SATA controller should have its own node.
+
+  It is possible, but not required, to represent each port as a sub-node.
+  It allows to enable each port independently when dealing with multiple
+  PHYs.
+
+maintainers:
+  - Hans de Goede <hdegoede@redhat.com>
+  - Jens Axboe <axboe@kernel.dk>
+
+properties:
+  compatible:
+    contains:
+      enum:
+        - brcm,iproc-ahci
+        - cavium,octeon-7130-ahci
+        - generic-ahci
+        - hisilicon,hisi-ahci
+        - ibm,476gtr-ahci
+        - marvell,armada-380-ahci
+        - marvell,armada-3700-ahci
+        - snps,dwc-ahci
+        - snps,spear-ahci
+
+  reg:
+    maxItems: 1
+
+  clocks:
+    minItems: 1
+    maxItems: 3
+
+  interrupts:
+    minItems: 1
+
+  ahci-supply:
+    description:
+      regulator for AHCI controller
+
+  dma-coherent:
+    description:
+      Present if dma operations are coherent
+
+  phy-supply:
+    description:
+      regulator for PHY power
+
+  phys:
+    minItems: 1
+
+  phy-names:
+    minItems: 1
+
+  ports-implemented:
+    description:
+      Mask that indicates which ports that the HBA supports
+      are available for software to use. Useful if PORTS_IMPL
+      is not programmed by the BIOS, which is true with
+      some embedded SoCs.
+    minItems: 1
+
+  resets:
+    minItems: 1
+
+  target-supply:
+    description:
+      regulator for SATA target power
+
+required:
+  - compatible
+  - reg
+  - interrupts
+
+patternProperties:
+  "^sata-port@[0-9]+$":
+    type: object
+    description:
+      Subnode with configuration of the Ports.
+
+    properties:
+      reg:
+        maxItems: 1
+
+      phys:
+        minItems: 1
+
+      target-supply:
+        description:
+          regulator for SATA target power
+
+    required:
+      - reg
+
+    anyOf:
+      - required: [ phys ]
+      - required: [ target-supply ]
+
+allOf:
+- $ref: "sata-common.yaml#"
+
+unevaluatedProperties: false
+
+examples:
+  - |
+        sata@ffe08000 {
+               compatible = "snps,spear-ahci";
+               reg = <0xffe08000 0x1000>;
+               interrupts = <115>;
+        };
+  - |
+        #include <dt-bindings/interrupt-controller/arm-gic.h>
+        #include <dt-bindings/clock/berlin2q.h>
+        sata@f7e90000 {
+                compatible = "marvell,berlin2q-achi", "generic-ahci";
+                reg = <0xe90000 0x1000>;
+                interrupts = <GIC_SPI 7 IRQ_TYPE_LEVEL_HIGH>;
+                clocks = <&chip CLKID_SATA>;
+                #address-cells = <1>;
+                #size-cells = <0>;
+
+                sata0: sata-port@0 {
+                        reg = <0>;
+                        phys = <&sata_phy 0>;
+                        target-supply = <&reg_sata0>;
+                };
+
+                sata1: sata-port@1 {
+                        reg = <1>;
+                        phys = <&sata_phy 1>;
+                        target-supply = <&reg_sata1>;
+                };
+        };
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
