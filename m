Return-Path: <SRS0=A12b=J3=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3831C433ED
	for <linux-rockchip@archiver.kernel.org>; Fri, 30 Apr 2021 01:27:17 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id BB51D61441
	for <linux-rockchip@archiver.kernel.org>; Fri, 30 Apr 2021 01:27:16 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org BB51D61441
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=rock-chips.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=vlWNWl/CIz26CaqSgu/KZRHSZbR+F23fp6oEwngTMj4=; b=QsuYPfpbwYicnQnzRGtHxrfPCV
	UVBz4im90DmUga6SfIKS5DO06y3YxUSGXxNPiU5TtX+wXApl2WHpakMkYK8xxtFDTiIifOMOl28uh
	2A57qMr7oaxDKB3sSt5PS3sTs7kQbpqYsjOzOvGK93McPLNUV3Q0rjHs/kDiS9pPITmqh0Opfkz/B
	ULsdrcP0rTg0AQBHrswRI6NfOdsHg5Fqe5wC0ffonA3qFujNmtM+PSQqBoVoywyJr9Oq8TfLJavlM
	8J/h9ofnmP5778ySBvva8tiMbqtIxPNnAb8TXxuzWX3aTsvTQr21k3pvLumuYuPuZ2jIE+vyJMGPf
	GQQxb9pg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lcHvz-006vhf-Uh; Fri, 30 Apr 2021 01:27:12 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lcHvy-006vhY-Un
 for linux-rockchip@desiato.infradead.org; Fri, 30 Apr 2021 01:27:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:In-Reply-To:References;
 bh=GQqfQc+96bBnLbdHroU+edfNOGr00aj+Rgf27R1n3pk=; b=3doHP5p4n0vf1nKAclU99NNgGp
 B9acOuBlxY4SAO8z/8gpbwVdVPjt3cXxyNCqqpbEclehie/RCxE25dCzrmxY04ZPO2DHDtBjTfrhc
 URzgggKACaZg0SsfSd4Y2427kcEUhXZHrgrKJBrVcPUFkNUcjV3Pr4qSywts1puBTiNxTUkqTrYqb
 +Nc9Pnd/RMck2YZb+EQhrzYyxOMPOwUnBHs2qUZ8MG/nD8EiEe0viGMuYJbw6wsWxguCTz79SaHbD
 t8WZJJdndEDzcBrWMRbsaCXSV6WYbsCPIShXV7eK+00xKhyVsrKDEiYuGTYdcLNlAEtwcZl/xIbmX
 uSLrGlhQ==;
Received: from lucky1.263xmail.com ([211.157.147.135])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lcHvv-0013vv-BP
 for linux-rockchip@lists.infradead.org; Fri, 30 Apr 2021 01:27:09 +0000
Received: from localhost (unknown [192.168.167.70])
 by lucky1.263xmail.com (Postfix) with ESMTP id 8F5E0AB645;
 Fri, 30 Apr 2021 09:26:59 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-ANTISPAM-LEVEL: 2
X-ABS-CHECKED: 0
Received: from xxm-vm.localdomain (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P26231T140423009896192S1619746012679800_; 
 Fri, 30 Apr 2021 09:26:57 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <cd460a6fd15e67f968aba0066f2bc74f>
X-RL-SENDER: xxm@rock-chips.com
X-SENDER: xxm@rock-chips.com
X-LOGIN-NAME: xxm@rock-chips.com
X-FST-TO: bhelgaas@google.com
X-RCPT-COUNT: 11
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-System-Flag: 0
From: Simon Xue <xxm@rock-chips.com>
To: Bjorn Helgaas <bhelgaas@google.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Cc: linux-pci@vger.kernel.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, robh+dt@kernel.org,
 Johan Jonker <jbx6244@gmail.com>, Heiko Stuebner <heiko@sntech.de>,
 Simon Xue <xxm@rock-chips.com>, Rob Herring <robh@kernel.org>,
 Kever Yang <kever.yang@rock-chips.com>
Subject: [PATCH v8 1/2] dt-bindings: rockchip: Add DesignWare based PCIe
 controller
Date: Fri, 30 Apr 2021 09:26:50 +0800
Message-Id: <20210430012650.24760-1-xxm@rock-chips.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210429_182707_714145_1A461D3E 
X-CRM114-Status: GOOD (  14.15  )
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

Document DT bindings for PCIe controller found on Rockchip SoC.

Reviewed-by: Rob Herring <robh@kernel.org>
Reviewed-by: Kever Yang <kever.yang@rock-chips.com>
Signed-off-by: Simon Xue <xxm@rock-chips.com>
---
 .../bindings/pci/rockchip-dw-pcie.yaml        | 141 ++++++++++++++++++
 1 file changed, 141 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/pci/rockchip-dw-pcie.yaml

diff --git a/Documentation/devicetree/bindings/pci/rockchip-dw-pcie.yaml b/Documentation/devicetree/bindings/pci/rockchip-dw-pcie.yaml
new file mode 100644
index 000000000000..142bbe577763
--- /dev/null
+++ b/Documentation/devicetree/bindings/pci/rockchip-dw-pcie.yaml
@@ -0,0 +1,141 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/pci/rockchip-dw-pcie.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: DesignWare based PCIe controller on Rockchip SoCs
+
+maintainers:
+  - Shawn Lin <shawn.lin@rock-chips.com>
+  - Simon Xue <xxm@rock-chips.com>
+  - Heiko Stuebner <heiko@sntech.de>
+
+description: |+
+  RK3568 SoC PCIe host controller is based on the Synopsys DesignWare
+  PCIe IP and thus inherits all the common properties defined in
+  designware-pcie.txt.
+
+allOf:
+  - $ref: /schemas/pci/pci-bus.yaml#
+
+# We need a select here so we don't match all nodes with 'snps,dw-pcie'
+select:
+  properties:
+    compatible:
+      contains:
+        const: rockchip,rk3568-pcie
+  required:
+    - compatible
+
+properties:
+  compatible:
+    items:
+      - const: rockchip,rk3568-pcie
+      - const: snps,dw-pcie
+
+  reg:
+    items:
+      - description: Data Bus Interface (DBI) registers
+      - description: Rockchip designed configuration registers
+      - description: Config registers
+
+  reg-names:
+    items:
+      - const: dbi
+      - const: apb
+      - const: config
+
+  clocks:
+    items:
+      - description: AHB clock for PCIe master
+      - description: AHB clock for PCIe slave
+      - description: AHB clock for PCIe dbi
+      - description: APB clock for PCIe
+      - description: Auxiliary clock for PCIe
+
+  clock-names:
+    items:
+      - const: aclk_mst
+      - const: aclk_slv
+      - const: aclk_dbi
+      - const: pclk
+      - const: aux
+
+  msi-map: true
+
+  num-lanes: true
+
+  phys:
+    maxItems: 1
+
+  phy-names:
+    const: pcie-phy
+
+  power-domains:
+    maxItems: 1
+
+  ranges:
+    maxItems: 2
+
+  resets:
+    maxItems: 1
+
+  reset-names:
+    const: pipe
+
+  vpcie3v3-supply: true
+
+required:
+  - compatible
+  - reg
+  - reg-names
+  - clocks
+  - clock-names
+  - msi-map
+  - num-lanes
+  - phys
+  - phy-names
+  - power-domains
+  - resets
+  - reset-names
+
+unevaluatedProperties: false
+
+examples:
+  - |
+
+    bus {
+        #address-cells = <2>;
+        #size-cells = <2>;
+
+        pcie3x2: pcie@fe280000 {
+            compatible = "rockchip,rk3568-pcie", "snps,dw-pcie";
+            reg = <0x3 0xc0800000 0x0 0x390000>,
+                  <0x0 0xfe280000 0x0 0x10000>,
+                  <0x3 0x80000000 0x0 0x100000>;
+            reg-names = "dbi", "apb", "config";
+            bus-range = <0x20 0x2f>;
+            clocks = <&cru 143>, <&cru 144>,
+                     <&cru 145>, <&cru 146>,
+                     <&cru 147>;
+            clock-names = "aclk_mst", "aclk_slv",
+                          "aclk_dbi", "pclk",
+                          "aux";
+            device_type = "pci";
+            linux,pci-domain = <2>;
+            max-link-speed = <2>;
+            msi-map = <0x2000 &its 0x2000 0x1000>;
+            num-lanes = <2>;
+            phys = <&pcie30phy>;
+            phy-names = "pcie-phy";
+            power-domains = <&power 15>;
+            ranges = <0x81000000 0x0 0x80800000 0x3 0x80800000 0x0 0x100000>,
+                     <0x83000000 0x0 0x80900000 0x3 0x80900000 0x0 0x3f700000>;
+            resets = <&cru 193>;
+            reset-names = "pipe";
+            #address-cells = <3>;
+            #size-cells = <2>;
+        };
+    };
+...
-- 
2.25.1




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
