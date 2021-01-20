Return-Path: <SRS0=q9XV=GX=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-16.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51C20C433DB
	for <linux-rockchip@archiver.kernel.org>; Wed, 20 Jan 2021 10:16:19 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id A61A02332B
	for <linux-rockchip@archiver.kernel.org>; Wed, 20 Jan 2021 10:16:18 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org A61A02332B
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=rock-chips.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=1kVL8d2AL2gjv4lZBoPbBfoYpNxHmUjzcpwA6coxm4g=; b=uDX1giPda9Oc63kElU1cwWJ3Lb
	O+srlBSJ3JKWjo1epppVUp3WbaU4mJEUYJh1aAV7xiXUUGhBwF1g/I12c7d0eok311/4HJW6wuKT4
	EFXbvryP6UsM8uOmKVf/LapmWeKcpeuFNiF0vaDo1lIG/Pks4czO/eOiZH++g50rSghoQzGjZQcda
	6h/AwJOgTCVdCd21vyW/bfuW57fpxMTDIQgKEkvbOzHitN/3tSR97L3om0ybKwre1fymMBixcpijF
	lr88rXdBqSXoGLuQIuWZCeLMuO3g9/3XiiGKS08B/FtGRQKYCQExFOgf9pcq1IAYi0qG7+wtRpGX/
	pj/YVdow==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1l2AX4-000814-49; Wed, 20 Jan 2021 10:16:10 +0000
Received: from lucky1.263xmail.com ([211.157.147.131])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l2AWz-0007zX-36
 for linux-rockchip@lists.infradead.org; Wed, 20 Jan 2021 10:16:08 +0000
Received: from localhost (unknown [192.168.167.69])
 by lucky1.263xmail.com (Postfix) with ESMTP id 59422B6C5A;
 Wed, 20 Jan 2021 18:15:59 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-ANTISPAM-LEVEL: 2
X-ABS-CHECKED: 0
Received: from xxm-vm.localdomain (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P19895T139772813092608S1611137755735916_; 
 Wed, 20 Jan 2021 18:15:58 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <3093c1207baea7857c786500d30da240>
X-RL-SENDER: xxm@rock-chips.com
X-SENDER: xxm@rock-chips.com
X-LOGIN-NAME: xxm@rock-chips.com
X-FST-TO: bhelgaas@google.com
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-System-Flag: 0
From: Simon Xue <xxm@rock-chips.com>
To: Bjorn Helgaas <bhelgaas@google.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Subject: [PATCH v2 1/2] dt-bindings: rockchip: Add DesignWare based PCIe
 controller
Date: Wed, 20 Jan 2021 18:15:53 +0800
Message-Id: <20210120101554.241029-1-xxm@rock-chips.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210120_051605_656432_C1CBDF4E 
X-CRM114-Status: GOOD (  13.30  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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
Cc: devicetree@vger.kernel.org, Simon Xue <xxm@rock-chips.com>,
 linux-pci@vger.kernel.org, linux-rockchip@lists.infradead.org,
 robh+dt@kernel.org, Johan Jonker <jbx6244@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Signed-off-by: Simon Xue <xxm@rock-chips.com>
---
 .../bindings/pci/rockchip-dw-pcie.yaml        | 140 ++++++++++++++++++
 1 file changed, 140 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/pci/rockchip-dw-pcie.yaml

diff --git a/Documentation/devicetree/bindings/pci/rockchip-dw-pcie.yaml b/Documentation/devicetree/bindings/pci/rockchip-dw-pcie.yaml
new file mode 100644
index 000000000000..9d3a57f5305e
--- /dev/null
+++ b/Documentation/devicetree/bindings/pci/rockchip-dw-pcie.yaml
@@ -0,0 +1,140 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/pci/rockchip-dw-pcie.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: DesignWare based PCIe RC controller on Rockchip SoCs
+
+maintainers:
+  - Shawn Lin <shawn.lin@rock-chips.com>
+  - Simon Xue <xxm@rock-chips.com>
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
+    item:
+      - const: rockchip,rk3568-pcie
+      - const: snps,dw-pcie
+  reg:
+    maxItems: 1
+
+  interrupt:
+      - description: system information
+      - description: power management control
+      - description: PCIe message
+      - description: legacy interrupt
+      - description: error report
+
+  interrupt-names:
+    items:
+      - const: sys
+      - const: pmc
+      - const: msg
+      - const: legacy
+      - const: err
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
+  power-domains:
+    maxItems: 1
+
+  resets:
+    maxItems: 1
+
+  reset-names:
+    items:
+      - const: pipe
+
+required:
+  - compatible
+  - bus-range
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
+    #include <dt-bindings/clock/rk3568-cru.h>
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+    #include <dt-bindings/power/rk3568-power.h>
+
+    bus {
+        #address-cells = <2>;
+        #size-cells = <2>;
+
+        pcie3x2: pcie@fe280000 {
+            compatible = "rockchip,rk3568-pcie", "snps,dw-pcie";
+            #address-cells = <3>;
+            #size-cells = <2>;
+            bus-range = <0x20 0x2f>;
+            reg = <0x3 0xc0800000 0x0 0x400000>,
+                  <0x0 0xfe280000 0x0 0x10000>;
+            reg-names = "pcie-dbi", "pcie-apb";
+            interrupts = <GIC_SPI 165 IRQ_TYPE_LEVEL_HIGH>,
+                         <GIC_SPI 164 IRQ_TYPE_LEVEL_HIGH>,
+                         <GIC_SPI 163 IRQ_TYPE_LEVEL_HIGH>,
+                         <GIC_SPI 162 IRQ_TYPE_LEVEL_HIGH>,
+                         <GIC_SPI 161 IRQ_TYPE_LEVEL_HIGH>;
+            interrupt-names = "sys", "pmc", "msg", "legacy", "err";
+            clocks = <&cru ACLK_PCIE30X2_MST>, <&cru ACLK_PCIE30X2_SLV>,
+                     <&cru ACLK_PCIE30X2_DBI>, <&cru PCLK_PCIE30X2>,
+                     <&cru CLK_PCIE30X2_AUX_NDFT>;
+            clock-names = "aclk_mst", "aclk_slv",
+                          "aclk_dbi", "pclk",
+                          "aux";
+            msi-map = <0x2000 &its 0x2000 0x1000>;
+            num-lanes = <2>;
+            phys = <&pcie30phy>;
+            phy-names = "pcie-phy";
+            power-domains = <&power RK3568_PD_PIPE>;
+            ranges = <0x00000800 0x0 0x80000000 0x3 0x80000000 0x0 0x800000
+                      0x81000000 0x0 0x80800000 0x3 0x80800000 0x0 0x100000
+                      0x83000000 0x0 0x80900000 0x3 0x80900000 0x0 0x3f700000>;
+            resets = <&cru SRST_PCIE30X2_POWERUP>;
+            reset-names = "pipe";
+        };
+    };
+...
-- 
2.25.1




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
