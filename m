Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A944DEB64DA
	for <linux-rockchip@archiver.kernel.org>; Fri, 16 Jun 2023 17:01:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KyqbfX7qcC9C3Xcw7TWTqQ4JV9Cxez8k04ZX9HCY+EE=; b=mA8nlAeqoaO1J/
	dURjv07zNXuKbyzF1u2McXFumcXSpbUFEevBceNlkxCNIdCufp7EXZ1q8oo0bUSPo+riC4HTWlmgG
	9hhBjwW8qTXDuLJjBu3ewClnDltnfJzwmT4B6V78onJ5x7//ksdq5rqPaTFswKe/hcj5aENrSURy6
	edHJuTTTmsERWPIkPCzNfHdO1l2FFeq4x6cRKH0xzOI431azHbunk3RITBkkYDLunSzXcNiuiqNhg
	tasBITICwBB9cl/H89DAGgIBo4wIn7+CZre5FNn0q1CYDk877sBQ5bj7KfXfVesOrCw6Mb+cKLNEM
	VlU9rI0W2Mp0Mj0uqH6w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qACoc-001DLj-0T;
	Fri, 16 Jun 2023 17:00:50 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qACoX-001DHY-0l;
	Fri, 16 Jun 2023 17:00:46 +0000
Received: from jupiter.universe (dyndsl-091-248-215-052.ewe-ip-backbone.de [91.248.215.52])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sre)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 604026606F85;
	Fri, 16 Jun 2023 18:00:41 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1686934841;
	bh=mUHbgHwI0ryNn4lkHpGJMiFlejZz09YJSeHgaUj4sVs=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=S1CdmAWzKuFM2OPpy48efHFqKqrkGIb8x97s4ZbEWcBxF8q5+lpT+Hrz3PXf47ERw
	 sBj4/bCLkLcZ8UtHigoDGHI+aqatV8L56UUYix5NOYc9KF81pN6soxP21e1xIizYgT
	 MTJ7l07paZki5dLIjjlsYMQkaG9eZAHZqpI88J6iT66mMjoNcBrBbJXwAzqyIgEljL
	 qDPM6I7IWZw+5HBqDdxspiSHpoVh9Net8+ZcmyykbXUf253Ah06b+0xMFHW7BgOFBP
	 p5fFMCQS/8UKcSogOo5SHKmWL4OvzJUldwxs/f3UtKxLC4GGX3cDQOmgcJWGPUr/4F
	 KJv0MEivPOSMQ==
Received: by jupiter.universe (Postfix, from userid 1000)
	id 10B6F480583; Fri, 16 Jun 2023 19:00:39 +0200 (CEST)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: linux-pci@vger.kernel.org,
	linux-rockchip@lists.infradead.org
Cc: Jingoo Han <jingoohan1@gmail.com>,
	Gustavo Pimentel <gustavo.pimentel@synopsys.com>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	=?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	Simon Xue <xxm@rock-chips.com>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	kernel@collabora.com
Subject: [PATCH v1 1/4] dt-bindings: PCI: dwc: rockchip: Fix interrupt-names issue
Date: Fri, 16 Jun 2023 19:00:19 +0200
Message-Id: <20230616170022.76107-2-sebastian.reichel@collabora.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230616170022.76107-1-sebastian.reichel@collabora.com>
References: <20230616170022.76107-1-sebastian.reichel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230616_100045_441973_C27F85C1 
X-CRM114-Status: GOOD (  13.06  )
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

The RK356x (and RK3588) have 5 ganged interrupts. For example the
"legacy" interrupt combines "inta/intb/intc/intd" with a register
providing the details.

Currently the binding is not specifying these interrupts resulting
in a bunch of errors for all rk356x boards using PCIe.

Fix this by specifying the interrupts and add them to the example
to prevent regressions.

Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
 .../bindings/pci/rockchip-dw-pcie.yaml         | 18 ++++++++++++++++++
 .../devicetree/bindings/pci/snps,dw-pcie.yaml  | 15 ++++++++++++++-
 2 files changed, 32 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/pci/rockchip-dw-pcie.yaml b/Documentation/devicetree/bindings/pci/rockchip-dw-pcie.yaml
index 24c88942e59e..98e45d2d8dfe 100644
--- a/Documentation/devicetree/bindings/pci/rockchip-dw-pcie.yaml
+++ b/Documentation/devicetree/bindings/pci/rockchip-dw-pcie.yaml
@@ -56,6 +56,17 @@ properties:
       - const: pclk
       - const: aux
 
+  interrupts:
+    maxItems: 5
+
+  interrupt-names:
+    items:
+      - const: sys
+      - const: pmc
+      - const: msg
+      - const: legacy
+      - const: err
+
   msi-map: true
 
   num-lanes: true
@@ -98,6 +109,7 @@ unevaluatedProperties: false
 
 examples:
   - |
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
 
     bus {
         #address-cells = <2>;
@@ -117,6 +129,12 @@ examples:
                           "aclk_dbi", "pclk",
                           "aux";
             device_type = "pci";
+            interrupts = <GIC_SPI 160 IRQ_TYPE_LEVEL_HIGH>,
+                         <GIC_SPI 159 IRQ_TYPE_LEVEL_HIGH>,
+                         <GIC_SPI 158 IRQ_TYPE_LEVEL_HIGH>,
+                         <GIC_SPI 157 IRQ_TYPE_LEVEL_HIGH>,
+                         <GIC_SPI 156 IRQ_TYPE_LEVEL_HIGH>;
+            interrupt-names = "sys", "pmc", "msg", "legacy", "err";
             linux,pci-domain = <2>;
             max-link-speed = <2>;
             msi-map = <0x2000 &its 0x2000 0x1000>;
diff --git a/Documentation/devicetree/bindings/pci/snps,dw-pcie.yaml b/Documentation/devicetree/bindings/pci/snps,dw-pcie.yaml
index 1a83f0f65f19..9f605eb297f5 100644
--- a/Documentation/devicetree/bindings/pci/snps,dw-pcie.yaml
+++ b/Documentation/devicetree/bindings/pci/snps,dw-pcie.yaml
@@ -193,9 +193,22 @@ properties:
           oneOf:
             - description: See native "app" IRQ for details
               enum: [ intr ]
+        - description: Combined Legacy A/B/C/D interrupt signal.
+          const: legacy
+        - description: Combined System interrupt signal.
+          const: sys
+        - description: Combined Power Management interrupt signal.
+          const: pmc
+        - description: Combined Message Received interrupt signal.
+          const: msg
+        - description: Combined Error interrupt signal.
+          const: err
+
     allOf:
       - contains:
-          const: msi
+          enum:
+            - msi
+            - msg
 
 additionalProperties: true
 
-- 
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
