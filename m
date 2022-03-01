Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 16204C433F5
	for <linux-rockchip@archiver.kernel.org>; Tue,  1 Mar 2022 15:26:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=emPlmogKzAffjKtunSR97O7MmqHugkE2X+okcE+8pbw=; b=kZF8HFsqaj3pMn
	8NYDJfYdQjnHmB2bs7riJJE/eRxpAtxMp1EKdJ7+Ntx8zuZ+VBKZTQnJiBCIcIlNafoXrZGuvyGu/
	tUFQ2qZYt/gBizwmuzpNwkczGYyAY2TtY8UvKz/V800xWe5HYulPATFqM0JkiotK/nqZQs9sKOVU5
	tPJlMKmf2mO3YskdQvEEpPJXeVGVmEXiKDvMbMGKxhd82pOg+FhqqP2t0OirEPjD7IPbf8ryqM2pM
	KQnBfM76U1xhT7P8rvVwX5iKv1e0ds5x82mMWM5CogsZNyZoirAn7iDnocihdZq1UZ47Y0Dj0UjdN
	eoPN74EAH64Dhstr77oA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nP4Nw-00HIY2-1K; Tue, 01 Mar 2022 15:25:56 +0000
Received: from mxout4.routing.net ([2a03:2900:1:a::9])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nP4Mr-00HHix-PX; Tue, 01 Mar 2022 15:24:52 +0000
Received: from mxbox2.masterlogin.de (unknown [192.168.10.89])
 by mxout4.routing.net (Postfix) with ESMTP id 399C6100816;
 Tue,  1 Mar 2022 15:24:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mailerdienst.de;
 s=20200217; t=1646148285;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=b0qbdWdchVs55lKgcO+PArNvnHkpFMGA5wttJcrt610=;
 b=a37cGh12OWDyFmoN99+cYWdQhmG+A9UY5C6XTpDQXpDEbdc/6qRd7RUHSypORrGwxWiiXl
 zbMkWkmmo9pwR7PpmElLwECpuT0qsdHCVaMjiRhaFoZydBb5Z5NRJewDPxkt9SJf3peQp+
 5hxFpreekJzrzjHfkVJfh4v08yfA3jk=
Received: from localhost.localdomain (fttx-pool-80.245.77.190.bambit.de
 [80.245.77.190])
 by mxbox2.masterlogin.de (Postfix) with ESMTPSA id 3A4101007FF;
 Tue,  1 Mar 2022 15:24:44 +0000 (UTC)
From: Frank Wunderlich <linux@fw-web.de>
To: devicetree@vger.kernel.org
Cc: Frank Wunderlich <frank-w@public-files.de>,
 Damien Le Moal <damien.lemoal@opensource.wdc.com>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
 Hans de Goede <hdegoede@redhat.com>, Jens Axboe <axboe@kernel.dk>,
 linux-ide@vger.kernel.org, linux-kernel@vger.kernel.org,
 Heiko Stuebner <heiko@sntech.de>, Peter Geis <pgwipeout@gmail.com>,
 Michael Riesch <michael.riesch@wolfvision.net>,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>,
 bcm-kernel-feedback-list@broadcom.com
Subject: [PATCH v4 1/5] dt-bindings: Convert ahci-platform DT bindings to yaml
Date: Tue,  1 Mar 2022 16:24:17 +0100
Message-Id: <20220301152421.57281-2-linux@fw-web.de>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220301152421.57281-1-linux@fw-web.de>
References: <20220301152421.57281-1-linux@fw-web.de>
MIME-Version: 1.0
X-Mail-ID: c8e35288-f479-431c-80f0-0e2efc10a65b
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220301_072450_206537_D3012858 
X-CRM114-Status: GOOD (  22.85  )
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
v4:
  - fix min vs. max
  - fix indention of examples
  - move up sata-common.yaml
  - reorder compatible
  - add descriptions/maxitems
  - fix compatible-structure
  - fix typo in example achi vs. ahci
  - add clock-names and reg-names
  - fix ns2 errors in separate patch
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
---
 .../devicetree/bindings/ata/ahci-platform.txt |  79 ---------
 .../bindings/ata/ahci-platform.yaml           | 162 ++++++++++++++++++
 2 files changed, 162 insertions(+), 79 deletions(-)
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
index 000000000000..cf67ddfc6afb
--- /dev/null
+++ b/Documentation/devicetree/bindings/ata/ahci-platform.yaml
@@ -0,0 +1,162 @@
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
+allOf:
+- $ref: "sata-common.yaml#"
+
+properties:
+  compatible:
+    oneOf:
+      - items:
+        - enum:
+          - brcm,iproc-ahci
+          - marvell,armada-8k-ahci
+          - marvell,berlin2q-ahci
+        - const: generic-ahci
+      - enum:
+        - brcm,iproc-ahci
+        - cavium,octeon-7130-ahci
+        - hisilicon,hisi-ahci
+        - ibm,476gtr-ahci
+        - marvell,armada-3700-ahci
+        - marvell,armada-380-ahci
+        - snps,dwc-ahci
+        - snps,spear-ahci
+
+  reg:
+    maxItems: 1
+
+  clocks:
+    description:
+      Clock IDs array as required by the controller.
+    minItems: 1
+    maxItems: 3
+
+  interrupts:
+    description:
+      specifies the interrupt number for the controller.
+    maxItems: 1
+
+  ahci-supply:
+    description:
+      regulator for AHCI controller
+
+  clock-names:
+    description:
+      Names of clocks corresponding to IDs in the clock property.
+    minItems: 1
+    maxItems: 3
+
+  dma-coherent:
+    true
+
+  phy-supply:
+    description:
+      regulator for PHY power
+
+  phys:
+    description:
+      List of all PHYs on this controller
+    maxItems: 1
+
+  phy-names:
+    description:
+      Name specifier for the PHYs
+    maxItems: 1
+
+  ports-implemented:
+    $ref: '/schemas/types.yaml#/definitions/uint32'
+    description:
+      Mask that indicates which ports that the HBA supports
+      are available for software to use. Useful if PORTS_IMPL
+      is not programmed by the BIOS, which is true with
+      some embedded SoCs.
+    maxItems: 1
+
+  reg-names:
+    maxItems: 1
+
+  resets:
+    maxItems: 1
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
+  "^sata-port@[0-9a-f]+$":
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
+unevaluatedProperties: false
+
+examples:
+  - |
+    sata@ffe08000 {
+           compatible = "snps,spear-ahci";
+           reg = <0xffe08000 0x1000>;
+           interrupts = <115>;
+    };
+  - |
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+    #include <dt-bindings/clock/berlin2q.h>
+    sata@f7e90000 {
+            compatible = "marvell,berlin2q-ahci", "generic-ahci";
+            reg = <0xe90000 0x1000>;
+            interrupts = <GIC_SPI 7 IRQ_TYPE_LEVEL_HIGH>;
+            clocks = <&chip CLKID_SATA>;
+            #address-cells = <1>;
+            #size-cells = <0>;
+
+            sata0: sata-port@0 {
+                    reg = <0>;
+                    phys = <&sata_phy 0>;
+                    target-supply = <&reg_sata0>;
+            };
+
+            sata1: sata-port@1 {
+                    reg = <1>;
+                    phys = <&sata_phy 1>;
+                    target-supply = <&reg_sata1>;
+            };
+    };
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
