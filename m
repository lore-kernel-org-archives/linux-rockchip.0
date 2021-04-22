Return-Path: <SRS0=DOys=JT=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-16.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,UNPARSEABLE_RELAY,
	USER_AGENT_GIT autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 07062C433B4
	for <linux-rockchip@archiver.kernel.org>; Thu, 22 Apr 2021 14:17:14 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 5A92A61421
	for <linux-rockchip@archiver.kernel.org>; Thu, 22 Apr 2021 14:17:13 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 5A92A61421
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Ugi9FWeQvF7idLweBXVYZ//d7JA8vmQxWjGHxhPPXPI=; b=BslOlIbyVct98A8p19ufNumVH
	6cuhNzS6bNWMkR6ZN9LuflJ9MKBidFsl05Vaw66Wn1u9gwbuBDWC0Srn6GfTPZWGTYy/zvVWJeYSG
	V8wPoqI5AsiP0WTSQ17QN1/xWL/C0XFVueI1lvrrqvF/4Sgfb5CaCo/5izsieOmXuGfBmQuY3Gp0j
	pN73QyMWyACBB2po/1fzNihi8hFVXTg1O0PTmXttvrk/1MPp1pjgkALQwklzBH9V6j8pQzOFOgNfv
	md5NAFark/IAGnS+u00GQuXQMl0TJOsdQAmasdDTDCQm2/V9CVqiLAdwpwekIjyVsXMbcJS6jIvbD
	jMRDuw2GA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lZa8f-00Gru4-Vg; Thu, 22 Apr 2021 14:17:07 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lZa7w-00Grlf-KW; Thu, 22 Apr 2021 14:16:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-Type:Content-ID:Content-Description;
 bh=K3Mbdr/XOJFFjFrIm2o6HCVWX8iOQstVXj23Jb0vMLA=; b=0+Xa5cQTaPDkGHGlLj0fM0G95E
 vHDaNQPCZ/ANio3bRmJWgGHCiCsQcwP7dN/o4plQNxMMlG3tIMAmIpaj3cUM1Gg6r2crRzJoJpe7F
 fJakx42jN9eLy7mlEsn+4AjbQKOWvqVdrWX+a/H5RZQ5XAGt6wXpzrwfcGauCjMg0MuoNeJ/Vecxz
 IgBBweovx8hGrFtttgourgRf3sMLh1GYZheXK3mOjEtbRKZwNFUEI3sumlC21nJWUvI+XGuvSkedu
 jmmPV5TxQuPuAeIn4nkah69klyf/x3OQUtfBqusNtzQTavZySVH3+RbfzWNYuu4d+npaIs+mt6RWv
 np2J0OsQ==;
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lZa7q-00DkYI-3E; Thu, 22 Apr 2021 14:16:19 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: benjamin.gaignard)
 with ESMTPSA id 106EE1F43244
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
To: joro@8bytes.org, will@kernel.org, robh+dt@kernel.org, heiko@sntech.de,
 xxm@rock-chips.com
Cc: iommu@lists.linux-foundation.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, kernel@collabora.com,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>
Subject: [PATCH v2 1/4] dt-bindings: iommu: rockchip: Convert IOMMU to DT
 schema
Date: Thu, 22 Apr 2021 16:15:59 +0200
Message-Id: <20210422141602.350746-2-benjamin.gaignard@collabora.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210422141602.350746-1-benjamin.gaignard@collabora.com>
References: <20210422141602.350746-1-benjamin.gaignard@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210422_071614_299771_7C7D4C9D 
X-CRM114-Status: GOOD (  16.49  )
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
---
version 2:
 - Change maintainer
 - Change reg maxItems
 - Change interrupt maxItems

 .../bindings/iommu/rockchip,iommu.txt         | 38 ---------
 .../bindings/iommu/rockchip,iommu.yaml        | 79 +++++++++++++++++++
 2 files changed, 79 insertions(+), 38 deletions(-)
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
index 000000000000..0db208cf724a
--- /dev/null
+++ b/Documentation/devicetree/bindings/iommu/rockchip,iommu.yaml
@@ -0,0 +1,79 @@
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
+    minItems: 1
+    maxItems: 2
+
+  interrupts:
+    minItems: 1
+    maxItems: 2
+
+  interrupt-names:
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
+      interrupt-names = "vopl_mmu";
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
