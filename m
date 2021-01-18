Return-Path: <SRS0=qa0x=GV=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-16.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 03713C433DB
	for <linux-rockchip@archiver.kernel.org>; Mon, 18 Jan 2021 09:18:17 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 23F4820829
	for <linux-rockchip@archiver.kernel.org>; Mon, 18 Jan 2021 09:18:15 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 23F4820829
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=rock-chips.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=dINQ13HwfaM0UHrqMqZxh7OejgovPCUj/2iDPnvOMSc=; b=YyDjCZdqRsVGbbDj+EM7DBHZE
	RUEQjsyRkZOxE643tutwQyH6suXzQgHmv0eHxPkX8YEXsu9HHu0BEYpYaGx1xyKbqu/Irawo7/cR/
	rcZgl4lA4QlrylMwIJzRXzG1XCDUWD/VLJCpYCKbJqM8hd58U0Pqds93Pf86eimpw+3itujao8d0p
	KijGFNhvzGbEKUQw+huIsOPWSOQmfxDNutYT+MAkbsbRBIDdH1ojPLsdTlW0Tp/WCJQu6+Zrqax00
	vHvlgfK73VPb5Hxgczm/n3HbiEcBXRXsHCy4zIxaMNNGdV7EzbAzw+8tpOCTLN5lnM/sXGnunPWri
	K+7kMYySw==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1l1Qfr-0004xI-Bi; Mon, 18 Jan 2021 09:18:11 +0000
Received: from lucky1.263xmail.com ([211.157.147.132])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l1Qfk-0004vR-UA
 for linux-rockchip@lists.infradead.org; Mon, 18 Jan 2021 09:18:09 +0000
Received: from localhost (unknown [192.168.167.70])
 by lucky1.263xmail.com (Postfix) with ESMTP id 3DD38EFBB8;
 Mon, 18 Jan 2021 17:17:58 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-ANTISPAM-LEVEL: 2
X-ABS-CHECKED: 0
Received: from xxm-vm.localdomain (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P13518T140326291363584S1610961461018109_; 
 Mon, 18 Jan 2021 17:17:57 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <537c15aae69a0918012960324760c77f>
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
Subject: [PATCH 2/3] dt-bindings: rockchip: Add DesignWare based PCIe
 controller
Date: Mon, 18 Jan 2021 17:17:38 +0800
Message-Id: <20210118091739.247040-2-xxm@rock-chips.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210118091739.247040-1-xxm@rock-chips.com>
References: <20210118091739.247040-1-xxm@rock-chips.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210118_041809_057860_4E9B1582 
X-CRM114-Status: GOOD (  12.28  )
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
Cc: linux-pci@vger.kernel.org, Simon Xue <xxm@rock-chips.com>,
 linux-rockchip@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Signed-off-by: Simon Xue <xxm@rock-chips.com>
---
 .../bindings/pci/rockchip-dw-pcie.yaml        | 101 ++++++++++++++++++
 1 file changed, 101 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/pci/rockchip-dw-pcie.yaml

diff --git a/Documentation/devicetree/bindings/pci/rockchip-dw-pcie.yaml b/Documentation/devicetree/bindings/pci/rockchip-dw-pcie.yaml
new file mode 100644
index 000000000000..fa664cfffb29
--- /dev/null
+++ b/Documentation/devicetree/bindings/pci/rockchip-dw-pcie.yaml
@@ -0,0 +1,101 @@
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
+    enum:
+      - rockchip,rk3568-pcie
+      - snps,dw-pcie
+
+  reg:
+    maxItems: 1
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
+  resets:
+    items:
+      - description: PCIe pipe reset line
+
+  reset-names:
+    items:
+      - const: pipe
+
+required:
+  - compatible
+  - "#address-cells"
+  - "#size-cells"
+  - bus-range
+  - reg
+  - reg-names
+  - clocks
+  - clock-names
+  - msi-map
+  - num-lanes
+  - phys
+  - phy-names
+  - ranges
+  - resets
+  - reset-names
+
+additionalProperties: false
+
+examples:
+  - |
+    pcie3x2: pcie@fe280000 {
+      compatible = "rockchip,rk3568-pcie", "snps,dw-pcie";
+      #address-cells = <3>;
+      #size-cells = <2>;
+      bus-range = <0x20 0x2f>;
+      reg = <0x3 0xc0800000 0x0 0x400000>,
+            <0x0 0xfe280000 0x0 0x10000>;
+      reg-names = "pcie-dbi", "pcie-apb";
+      clocks = <&cru ACLK_PCIE30X2_MST>, <&cru ACLK_PCIE30X2_SLV>,
+               <&cru ACLK_PCIE30X2_DBI>, <&cru PCLK_PCIE30X2>,
+               <&cru CLK_PCIE30X2_AUX_NDFT>;
+      clock-names = "aclk_mst", "aclk_slv",
+                    "aclk_dbi", "pclk",
+                    "aux";
+      msi-map = <0x2000 &its 0x2000 0x1000>;
+      num-lanes = <2>;
+      phys = <&pcie30phy>;
+      phy-names = "pcie-phy";
+      ranges = <0x00000800 0x0 0x80000000 0x3 0x80000000 0x0 0x800000
+                0x81000000 0x0 0x80800000 0x3 0x80800000 0x0 0x100000
+                0x83000000 0x0 0x80900000 0x3 0x80900000 0x0 0x3f700000>;
+      resets = <&cru SRST_PCIE30X2_POWERUP>;
+      reset-names = "pipe";
+    };
+
+...
-- 
2.25.1




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
