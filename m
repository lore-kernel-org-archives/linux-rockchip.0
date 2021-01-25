Return-Path: <SRS0=VpfD=G4=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6362CC433E0
	for <linux-rockchip@archiver.kernel.org>; Mon, 25 Jan 2021 02:49:08 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id CB434225AC
	for <linux-rockchip@archiver.kernel.org>; Mon, 25 Jan 2021 02:49:07 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org CB434225AC
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=rock-chips.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=OeQ84ikRTb+IPBHmW42iBxh5nhANo8Q5Fj64udoV55Q=; b=ept/x8HFT5IMFwi4zStRZ/gJuL
	NwpuTKqsAG0MUchNa8NeTTW5DFcD+TKf/uSR9IAo6zywwu+urtL2RkXkGUkKCXWqwkHfgEVrHlS94
	0MhNbtXmW6eSC3Y6scHG/WUOMUiN01uZJXRTkclzMYj9gZdFr1FAeZCQey0G0YWj1Ei2tl27dXV+I
	8XqHCWTivhqSAvVSmegZcTQnwzWI6CkcaGK/klXHvdxWgwoFYl5d3uG2fFz4WKNH63Kqz5JlA4lBn
	MYuTj1uJnvxMbzbkYRR380FNTAMckQlXaVFhWxTlAmNcB6RRv29b98ej/wY/xZLpBQDJ7ysvnut5j
	Z7+b2NUg==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1l3rw6-0004LF-0b; Mon, 25 Jan 2021 02:49:02 +0000
Received: from lucky1.263xmail.com ([211.157.147.134])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l3rw1-0004JF-27
 for linux-rockchip@lists.infradead.org; Mon, 25 Jan 2021 02:49:00 +0000
Received: from localhost (unknown [192.168.167.69])
 by lucky1.263xmail.com (Postfix) with ESMTP id 43D03C629F;
 Mon, 25 Jan 2021 10:48:48 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-ANTISPAM-LEVEL: 2
X-ABS-CHECKED: 0
Received: from xxm-vm.localdomain (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P19895T139773254842112S1611542921937758_; 
 Mon, 25 Jan 2021 10:48:47 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <795ec5fdb5e2b7467358464f6eed9eb5>
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
Subject: [PATCH v3 1/2] dt-bindings: rockchip: Add DesignWare based PCIe
 controller
Date: Mon, 25 Jan 2021 10:48:24 +0800
Message-Id: <20210125024824.634583-1-xxm@rock-chips.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210124_214858_065192_C1258370 
X-CRM114-Status: GOOD (  12.47  )
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
Cc: devicetree@vger.kernel.org, Heiko Stuebner <heiko@sntech.de>,
 linux-pci@vger.kernel.org, linux-rockchip@lists.infradead.org,
 robh+dt@kernel.org, Johan Jonker <jbx6244@gmail.com>,
 Simon Xue <xxm@rock-chips.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Document DT bindings for PCIe controller found on Rockchip SoC.

Signed-off-by: Simon Xue <xxm@rock-chips.com>
---
 .../bindings/pci/rockchip-dw-pcie.yaml        | 133 ++++++++++++++++++
 1 file changed, 133 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/pci/rockchip-dw-pcie.yaml

diff --git a/Documentation/devicetree/bindings/pci/rockchip-dw-pcie.yaml b/Documentation/devicetree/bindings/pci/rockchip-dw-pcie.yaml
new file mode 100644
index 000000000000..24ea42203c14
--- /dev/null
+++ b/Documentation/devicetree/bindings/pci/rockchip-dw-pcie.yaml
@@ -0,0 +1,133 @@
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
+    maxItems: 3
+
+  resets:
+    maxItems: 1
+
+  reset-names:
+    const: pipe
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
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+
+    bus {
+        #address-cells = <2>;
+        #size-cells = <2>;
+
+        pcie3x2: pcie@fe280000 {
+            compatible = "rockchip,rk3568-pcie", "snps,dw-pcie";
+            reg = <0x3 0xc0800000 0x0 0x400000>,
+                  <0x0 0xfe280000 0x0 0x10000>;
+            reg-names = "pcie-dbi", "pcie-apb";
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
+            ranges = <0x00000800 0x0 0x80000000 0x3 0x80000000 0x0 0x800000>,
+                     <0x81000000 0x0 0x80800000 0x3 0x80800000 0x0 0x100000>,
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
