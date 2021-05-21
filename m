Return-Path: <SRS0=rr0l=KQ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.1 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,UNPARSEABLE_RELAY,
	URIBL_BLOCKED,USER_AGENT_GIT autolearn=unavailable autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 694ACC433ED
	for <linux-rockchip@archiver.kernel.org>; Fri, 21 May 2021 08:37:22 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id DAE1860FDC
	for <linux-rockchip@archiver.kernel.org>; Fri, 21 May 2021 08:37:21 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org DAE1860FDC
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=4tz8UiPbAP5Fc6Gpqud3ikAgPzqabh9gtlnhkaUIrP8=; b=mhcUAtfolfO+VIa3TSlVJ+pI2j
	Ge+GcbgMnS4U7KfCKm+fnkvnyiS25ihe20qWbv61UTNyWA++8qQc7A56dg44omYzDoKNBbWI+MOlJ
	KlqYWA6tHpL5mbH+Nx4z7z/sj1d2hMXo24yRRz4pbJUKY33QsTgEC9RcvK299IFkJkZWFWbBU21kA
	BXVC2LC97xpuXdcLnZgA4wkjRLvgvUtjq1S53M3Y37BA+jLp/NfXjKb6pPJmwT0F1De+ygRlibMRf
	rvZ1TZOxTHy/D5DO3HZt4MDKuZF2BPvvOdP+YdG1cnqrcEmD3IVjfTf3NAClKsFe5/ZAsZHzSisvW
	NqTjzHlQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lk0ej-004Rb5-8m; Fri, 21 May 2021 08:37:17 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lk0eN-004RXf-L9; Fri, 21 May 2021 08:36:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-Type:Content-ID:Content-Description;
 bh=yXn4lNWN47cq1g5TY7R2sFBOZToM/4FmLuS3fgC7XJI=; b=Wt5TUeVmxJSH/tu0yodJ2FWc6r
 lyQ47lCi3H7go/0jDyfTfAtebyt6DV+OHQNGB+ZMkSG4SOqEl7wzP5dcDDUVO8D2ELKB/AXI3O6Vq
 mqJCK+WJ0N5VNTYsv4wYtugxC+KdYSJUWTjqS7DC4ZiTsTQdvkAD5eU4lG3+WfMtW2kA793UOJHsr
 //itYB/BA0045hwZEK9My3FAY5wzSEECToUaD9C0FAhCa6ySq0tR5++2DE9H2blb6h9iAGGKexJ0p
 DZ4KJ8YzqapXGO23s/Dy87bMUhEBh8RpUwodljY6cqZrMDEGWSO1LmuybR9kt0ZwQNsMXqkaPuD4B
 RQMAUv+A==;
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lk0eK-00Gwza-GT; Fri, 21 May 2021 08:36:54 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: benjamin.gaignard)
 with ESMTPSA id DA47B1F42822
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
To: joro@8bytes.org, will@kernel.org, robh+dt@kernel.org, heiko@sntech.de,
 xxm@rock-chips.com, robin.murphy@arm.com
Cc: iommu@lists.linux-foundation.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, kernel@collabora.com,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Rob Herring <robh@kernel.org>
Subject: [PATCH v5 1/4] dt-bindings: iommu: rockchip: Convert IOMMU to DT
 schema
Date: Fri, 21 May 2021 10:36:34 +0200
Message-Id: <20210521083637.3221304-2-benjamin.gaignard@collabora.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210521083637.3221304-1-benjamin.gaignard@collabora.com>
References: <20210521083637.3221304-1-benjamin.gaignard@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210521_013652_831850_06C5B7A1 
X-CRM114-Status: GOOD (  16.88  )
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

Convert Rockchip IOMMU to DT schema

Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
Reviewed-by: Rob Herring <robh@kernel.org>
---
 .../bindings/iommu/rockchip,iommu.txt         | 38 ---------
 .../bindings/iommu/rockchip,iommu.yaml        | 80 +++++++++++++++++++
 2 files changed, 80 insertions(+), 38 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/iommu/rockchip,iommu.txt
 create mode 100644 Documentation/devicetree/bindings/iommu/rockchip,iommu.yaml

diff --git a/Documentation/devicetree/bindings/iommu/rockchip,iommu.txt b/Documentation/devicetree/bindings/iommu/rockchip,iommu.txt
deleted file mode 100644
index 6ecefea1c6f9..000000000000
--- a/Documentation/devicetree/bindings/iommu/rockchip,iommu.txt
+++ /dev/null
@@ -1,38 +0,0 @@
-Rockchip IOMMU
-==============
-
-A Rockchip DRM iommu translates io virtual addresses to physical addresses for
-its master device.  Each slave device is bound to a single master device, and
-shares its clocks, power domain and irq.
-
-Required properties:
-- compatible      : Should be "rockchip,iommu"
-- reg             : Address space for the configuration registers
-- interrupts      : Interrupt specifier for the IOMMU instance
-- interrupt-names : Interrupt name for the IOMMU instance
-- #iommu-cells    : Should be <0>.  This indicates the iommu is a
-                    "single-master" device, and needs no additional information
-                    to associate with its master device.  See:
-                    Documentation/devicetree/bindings/iommu/iommu.txt
-- clocks          : A list of clocks required for the IOMMU to be accessible by
-                    the host CPU.
-- clock-names     : Should contain the following:
-	"iface" - Main peripheral bus clock (PCLK/HCL) (required)
-	"aclk"  - AXI bus clock (required)
-
-Optional properties:
-- rockchip,disable-mmu-reset : Don't use the mmu reset operation.
-			       Some mmu instances may produce unexpected results
-			       when the reset operation is used.
-
-Example:
-
-	vopl_mmu: iommu@ff940300 {
-		compatible = "rockchip,iommu";
-		reg = <0xff940300 0x100>;
-		interrupts = <GIC_SPI 16 IRQ_TYPE_LEVEL_HIGH>;
-		interrupt-names = "vopl_mmu";
-		clocks = <&cru ACLK_VOP1>, <&cru HCLK_VOP1>;
-		clock-names = "aclk", "iface";
-		#iommu-cells = <0>;
-	};
diff --git a/Documentation/devicetree/bindings/iommu/rockchip,iommu.yaml b/Documentation/devicetree/bindings/iommu/rockchip,iommu.yaml
new file mode 100644
index 000000000000..099fc2578b54
--- /dev/null
+++ b/Documentation/devicetree/bindings/iommu/rockchip,iommu.yaml
@@ -0,0 +1,80 @@
+# SPDX-License-Identifier: GPL-2.0-only
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/iommu/rockchip,iommu.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Rockchip IOMMU
+
+maintainers:
+  - Heiko Stuebner <heiko@sntech.de>
+
+description: |+
+  A Rockchip DRM iommu translates io virtual addresses to physical addresses for
+  its master device. Each slave device is bound to a single master device and
+  shares its clocks, power domain and irq.
+
+  For information on assigning IOMMU controller to its peripheral devices,
+  see generic IOMMU bindings.
+
+properties:
+  compatible:
+    const: rockchip,iommu
+
+  reg:
+    items:
+      - description: configuration registers for MMU instance 0
+      - description: configuration registers for MMU instance 1
+    minItems: 1
+    maxItems: 2
+
+  interrupts:
+    items:
+      - description: interruption for MMU instance 0
+      - description: interruption for MMU instance 1
+    minItems: 1
+    maxItems: 2
+
+  clocks:
+    items:
+      - description: Core clock
+      - description: Interface clock
+
+  clock-names:
+    items:
+      - const: aclk
+      - const: iface
+
+  "#iommu-cells":
+    const: 0
+
+  rockchip,disable-mmu-reset:
+    $ref: /schemas/types.yaml#/definitions/flag
+    description: |
+      Do not use the mmu reset operation.
+      Some mmu instances may produce unexpected results
+      when the reset operation is used.
+
+required:
+  - compatible
+  - reg
+  - interrupts
+  - clocks
+  - clock-names
+  - "#iommu-cells"
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/rk3399-cru.h>
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+
+    vopl_mmu: iommu@ff940300 {
+      compatible = "rockchip,iommu";
+      reg = <0xff940300 0x100>;
+      interrupts = <GIC_SPI 16 IRQ_TYPE_LEVEL_HIGH>;
+      clocks = <&cru ACLK_VOP1>, <&cru HCLK_VOP1>;
+      clock-names = "aclk", "iface";
+      #iommu-cells = <0>;
+    };
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
