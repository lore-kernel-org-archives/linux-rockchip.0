Return-Path: <SRS0=lIs5=KU=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.1 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,UNPARSEABLE_RELAY,
	URIBL_BLOCKED,USER_AGENT_GIT autolearn=unavailable autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6BA61C2B9F8
	for <linux-rockchip@archiver.kernel.org>; Tue, 25 May 2021 12:16:56 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 35F3360FEB
	for <linux-rockchip@archiver.kernel.org>; Tue, 25 May 2021 12:16:56 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 35F3360FEB
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YuAsYW9k/5QssAgP6oA8wGxSDdxUR6uoWxJQdXyu2jk=; b=l8pTK412YmIXAK
	Z4ulrNeDThsFmVfwc3NRFApvXKX8ADKHeE9+hEWO7szF0OAoKRgJ+Jxhfgg8NXIGSNlxjGR3GKknd
	D2QElgskGeoMAIEhrldqh2Rojsv5l9fbm2eXRQP6skeaT93yaFA2ylQrKCvUoB1e5/FzNwK7xpDY3
	63cGqiZsUOk3d+Q6DiWSGp3VoJSguJ1vGuIRZJblzZViZGpTaUmDuF6LvD8u7mF/k0vovlagvgbsP
	QOcIn+pa63Ph1skmnd9hyZSFiz0T5km2/Mjh7anNZA5In2K7smCvL5iWO+5UAB8XpjDDHkqnwM3K0
	qrcUNEh4e4YHSTmpHsmA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1llVzP-004wyo-Ja; Tue, 25 May 2021 12:16:51 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1llVyd-004wea-4x; Tue, 25 May 2021 12:16:05 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: benjamin.gaignard)
 with ESMTPSA id C83E71F421E8
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
To: joro@8bytes.org, will@kernel.org, robh+dt@kernel.org, heiko@sntech.de,
 xxm@rock-chips.com, robin.murphy@arm.com
Cc: iommu@lists.linux-foundation.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, kernel@collabora.com,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Rob Herring <robh@kernel.org>
Subject: [PATCH v7 1/4] dt-bindings: iommu: rockchip: Convert IOMMU to DT
 schema
Date: Tue, 25 May 2021 14:15:48 +0200
Message-Id: <20210525121551.606240-2-benjamin.gaignard@collabora.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210525121551.606240-1-benjamin.gaignard@collabora.com>
References: <20210525121551.606240-1-benjamin.gaignard@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210525_051603_497131_8A873022 
X-CRM114-Status: GOOD (  16.96  )
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
Reviewed-by: Heiko Stuebner <heiko@sntech.de>
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
