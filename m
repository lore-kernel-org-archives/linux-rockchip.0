Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E9D4AEE49BD
	for <linux-rockchip@archiver.kernel.org>; Wed, 31 Dec 2025 03:10:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=liiymOTbWWbb7PwPppxaxcvfZtrJekISMdn4eKXJNYk=; b=H/+ye26TEleuhj
	sgkOefk//u8RSOYwQtEkfSDv9IFu+Bjl8ZjRnRSGHYZaOUtCLV8bKX5LfX1dHInoUIT1BuyDxBZcq
	4ZXz8KEC5+Un3HMknaLaC23LkEvgIT9ey+jV9fj9AXVX7YrOKLj8/wG3CrSrHCPw/hD/DDdRQFFNG
	gPUvQnrZ9QwV2u6WAVJUfsKvqwaUXYGZ6cmYWokZIfQ9J+H6THUvsBfHtr4CN3WEJCjl0wIgx2ZcV
	bXNLau7SK1sHIHpt/z5we4sw76uNYPgLrV8ewLqHA1cxgAdPxgvtaNLHEMrVKJLy8HfMR0MzbmFNU
	UoZ9Lk05wzGSCqC4x/uQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vambf-00000005d0L-04zs;
	Wed, 31 Dec 2025 03:10:39 +0000
Received: from mail-m19731120.qiye.163.com ([220.197.31.120])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vambb-00000005cyr-0btv
	for linux-rockchip@lists.infradead.org;
	Wed, 31 Dec 2025 03:10:37 +0000
Received: from localhost.localdomain (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 2f185eb3c;
	Wed, 31 Dec 2025 11:10:26 +0800 (GMT+08:00)
From: Joseph Chen <chenjh@rock-chips.com>
To: lee@kernel.org,
	lgirdwood@gmail.com,
	broonie@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org
Cc: linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	Joseph Chen <chenjh@rock-chips.com>
Subject: [PATCH v1 1/2] dt-bindings: mfd: Add rk801 binding
Date: Wed, 31 Dec 2025 11:09:50 +0800
Message-Id: <20251231030951.818-2-chenjh@rock-chips.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20251231030951.818-1-chenjh@rock-chips.com>
References: <20251231030951.818-1-chenjh@rock-chips.com>
MIME-Version: 1.0
X-HM-Tid: 0a9b7262a7ba09d2kunm5c2c20206ab0f2
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGhkYTVZIHhpMHkoZTkJDSU5WFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=UMOeFQRd10Fts8bJe7uVAy1cu9eSjddpM7UJ0vfd2LDXloqDjuyyRdGCzQHodLXbSQq6zbs3Ou8ORYQdojrjrogD3LVUvmw5eo3Sa6qWmP9kRYjNADtg3NHIl4yCsXQK5n9iMF9Muj8UkB0602IrBNTL9DxmuOovXskP7VXaLvI=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=pJDyZVU8UBhoZL2Hk2oZGuZv9aeWaJrXTMLpCjzYgDw=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251230_191035_668075_690A581D 
X-CRM114-Status: GOOD (  10.31  )
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

Add DT binding document for Rockchip's RK801 PMIC

Signed-off-by: Joseph Chen <chenjh@rock-chips.com>
---
 .../bindings/mfd/rockchip,rk801.yaml          | 199 ++++++++++++++++++
 1 file changed, 199 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/mfd/rockchip,rk801.yaml

diff --git a/Documentation/devicetree/bindings/mfd/rockchip,rk801.yaml b/Documentation/devicetree/bindings/mfd/rockchip,rk801.yaml
new file mode 100644
index 00000000000..d591125dfe8
--- /dev/null
+++ b/Documentation/devicetree/bindings/mfd/rockchip,rk801.yaml
@@ -0,0 +1,199 @@
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/mfd/rockchip,rk801.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: RK801 Power Management Integrated Circuit
+
+maintainers:
+  - Joseph Chen <chenjh@rock-chips.com>
+
+description: |
+  Rockchip RK801 series PMIC. This device consists of an i2c controlled MFD
+  that includes multiple switchable regulators.
+
+properties:
+  compatible:
+    enum:
+      - rockchip,rk801
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+  rockchip,system-power-controller:
+    type: boolean
+    description:
+      Telling whether or not this PMIC is controlling the system power.
+
+  system-power-controller: true
+
+  wakeup-source:
+    type: boolean
+    description:
+      Device can be used as a wakeup source.
+
+  vcc1-supply:
+    description:
+      The input supply for DCDC_REG1.
+
+  vcc2-supply:
+    description:
+      The input supply for DCDC_REG2.
+
+  vcc3-supply:
+    description:
+      The input supply for DCDC_REG3.
+
+  vcc4-supply:
+    description:
+      The input supply for DCDC_REG4.
+
+  vcc5-supply:
+    description:
+      The input supply for LDO_REG1.
+
+  vcc6-supply:
+    description:
+      The input supply for LDO_REG2.
+
+  vcc7-supply:
+    description:
+      The input supply for SWITCH_REG.
+
+  regulators:
+    type: object
+    patternProperties:
+      "^(DCDC_REG[1-4]|LDO_REG[1-2]|SWITCH_REG)$":
+        type: object
+        $ref: /schemas/regulator/regulator.yaml#
+        unevaluatedProperties: false
+    unevaluatedProperties: false
+
+required:
+  - compatible
+  - reg
+  - interrupts
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/pinctrl/rockchip.h>
+    #include <dt-bindings/interrupt-controller/irq.h>
+    #include <dt-bindings/gpio/gpio.h>
+    i2c {
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        rk801: rk801@27 {
+            compatible = "rockchip,rk801";
+            reg = <0x27>;
+            interrupt-parent = <&gpio0>;
+            interrupts = <RK_PC0 IRQ_TYPE_LEVEL_LOW>;
+            pwrctrl-gpios = <&gpio0 RK_PC1 GPIO_ACTIVE_HIGH>;
+            pinctrl-names = "default";
+            pinctrl-0 = <&pmic_int_l>;
+            rockchip,system-power-controller;
+            wakeup-source;
+
+            vcc1-supply = <&vcc12v_dcin>;
+            vcc2-supply = <&vcc12v_dcin>;
+            vcc3-supply = <&vcc5v0_sys>;
+            vcc4-supply = <&vcc5v0_sys>;
+            vcc5-supply = <&vcc3v3_sys>;
+            vcc6-supply = <&vcc3v3_sys>;
+            vcc7-supply = <&vcc3v3_sys>;
+
+            regulators {
+                vdd_cpu: DCDC_REG1 {
+                    regulator-name = "vdd_cpu";
+                    regulator-min-microvolt = <500000>;
+                    regulator-max-microvolt = <1500000>;
+                    regulator-initial-mode = <0x1>;
+                    regulator-boot-on;
+                    regulator-always-on;
+                    regulator-state-mem {
+                        regulator-mode = <0x2>;
+                        regulator-off-in-suspend;
+                        regulator-suspend-microvolt = <950000>;
+                    };
+                };
+
+                vcc3v3_sys: DCDC_REG2 {
+                    regulator-name = "vcc3v3_sys";
+                    regulator-min-microvolt = <3300000>;
+                    regulator-max-microvolt = <3300000>;
+                    regulator-initial-mode = <0x1>;
+                    regulator-boot-on;
+                    regulator-always-on;
+                    regulator-state-mem {
+                        regulator-mode = <0x2>;
+                        regulator-on-in-suspend;
+                        regulator-suspend-microvolt = <3300000>;
+                    };
+                };
+
+                vcc_ddr: DCDC_REG3 {
+                    regulator-name = "vcc_ddr";
+                    regulator-boot-on;
+                    regulator-always-on;
+                    regulator-state-mem {
+                        regulator-mode = <0x2>;
+                        regulator-on-in-suspend;
+                    };
+                };
+
+                vdd_logic: DCDC_REG4 {
+                    regulator-name = "vdd_logic";
+                    regulator-min-microvolt = <500000>;
+                    regulator-max-microvolt = <1500000>;
+                    regulator-initial-mode = <0x1>;
+                    regulator-boot-on;
+                    regulator-always-on;
+                    regulator-state-mem {
+                        regulator-mode = <0x2>;
+                        regulator-off-in-suspend;
+                        regulator-suspend-microvolt = <900000>;
+                    };
+                };
+
+                vdd0v9_sys: LDO_REG1 {
+                    regulator-name = "vdd0v9_sys";
+                    regulator-min-microvolt = <900000>;
+                    regulator-max-microvolt = <900000>;
+                    regulator-boot-on;
+                    regulator-always-on;
+                    regulator-state-mem {
+                        regulator-off-in-suspend;
+                        regulator-suspend-microvolt = <900000>;
+                    };
+                };
+
+                vcc_1v8: LDO_REG2 {
+                    regulator-name = "vcc_1v8";
+                    regulator-min-microvolt = <1800000>;
+                    regulator-max-microvolt = <1800000>;
+                    regulator-boot-on;
+                    regulator-always-on;
+                    regulator-state-mem {
+                        regulator-off-in-suspend;
+                        regulator-suspend-microvolt = <1800000>;
+                    };
+                };
+
+                vcc_3v3: SWITCH_REG {
+                    regulator-name = "vcc_3v3";
+                    regulator-boot-on;
+                    regulator-always-on;
+                    regulator-state-mem {
+                        regulator-off-in-suspend;
+                        regulator-suspend-microvolt = <3300000>;
+                    };
+                };
+            };
+        };
+    };
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
