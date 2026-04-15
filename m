Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EB6A9FA0C3C
	for <linux-rockchip@archiver.kernel.org>; Wed, 15 Apr 2026 07:24:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UgjBqdM4QqlNJbd/IxJCg+xvQHAbzjt/7iZoBUhlkAQ=; b=o2Egtt8lHQUPZp
	VmeEbMrVSacoSpgOWsg1RSIFiBUuPNCnAodbxL3DziXbPBLrYvIu5uO0MiFMxlKg7W5VE575UZ0PP
	Og7vh6GrTBqXdEyRuubWs7N1yJk0uUVE8ME2ksflF0uvd0W1guYOvVEZ/GO+/0TWhfCcmR8N6wVTF
	hcl5gxtgdHbgXq+dhVo44LU7xHrUf5AzKn5yjey/9cDFBrCDvHZN/0ibwTDKIIjqngPg7U7h7XfJH
	1EL+IhI6PCgd4GaaHD0yQfg8L+jAcvNzKcaH8hxmTf9x9/yjemPH6d4q8LiDjMwZv7cCjj/R3cD8p
	61eZlh2+3q0+bY9duoTQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCubk-00000000ioe-0KCo;
	Wed, 15 Apr 2026 07:24:20 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCube-00000000ihX-1wY6;
	Wed, 15 Apr 2026 07:24:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=9mtrdQXsmfpf1uRi6c7IZnrJmMwda+Bb18Mgv5ItycQ=; b=bQoCufP+2AevqQiquFvwo/idKO
	ZbgJYPDyAD9/FPi+w3UWVknN7oxOESOXzZHsuRkaWHFEK5d81xyJIKZDNqrLpXCq5rpOl+MoUsr2U
	uMLV+u2s+gVh74Qoa6195fKCvGGZ7bu6il7QqNBDRpOi8braYvlcm+W3tIMQPlF5p28lEWSPybjri
	3SSqPMsRuRb64wTc/gehWXEU7XdJ/rBNUymqOIW7H4iLCnLWZCY9jVWM9cjtR40VL/mTO0uY2T04x
	e9PZIUQ2ycX3R/5m8J9HWstYCBojLoFrqJ0ol5sm5wDbnzWK6CrLn1TQLiwx/+G3pCXrJ9wFBJCnH
	9WVuHQ1g==;
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCubY-000000020G8-1GNN;
	Wed, 15 Apr 2026 07:24:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1776237836;
	bh=heh+k/1ODoaxXv2R5HPjXJm6oybJcbQZVD3EyshC35g=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=gqFkTqn8z0pK8YA+xdWK7PRnq5dHuDZun6hNKMP5Vpodvz4+hg8pmvuWXRiCgLZQ8
	 gmxZl/tsEgP3zWx5Yz35yrxsg4nCRTiH6hAz43Ek+PLb2k7tOt46g8m6hhGY3g4evm
	 z1LOSkyjgQonwd54Ltb3cdRKqKa7AzZorS8I6Bas+MUyk5/dRYJILTwotJb5ZDOyCp
	 8Qm0U+Xny7rP/FGV7KACu6BtbNoWG7tfVhIa7zCPkalZ7oWr++bpd+jpLNZMdzj3cs
	 Xwv/fFTYlRG3ZZ/JXni+iGiJUvqh2UKldqobnID+CVh4ivdanRXG2yo9BpIOMZhrMy
	 hgBACg16oykUw==
Received: from benjamin-XPS-13-9310.. (unknown [100.64.1.43])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: benjamin.gaignard)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id C70A017E1388;
	Wed, 15 Apr 2026 09:23:55 +0200 (CEST)
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
To: joro@8bytes.org,
	will@kernel.org,
	robin.murphy@arm.com,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	heiko@sntech.de
Cc: iommu@lists.linux.dev,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	kernel@collabora.com,
	Benjamin Gaignard <benjamin.gaignard@collabora.com>,
	Conor Dooley <conor.dooley@microchip.com>
Subject: [PATCH v14 2/5] dt-bindings: iommu: verisilicon: Add binding for VSI IOMMU
Date: Wed, 15 Apr 2026 09:23:38 +0200
Message-ID: <20260415072349.44237-3-benjamin.gaignard@collabora.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260415072349.44237-1-benjamin.gaignard@collabora.com>
References: <20260415072349.44237-1-benjamin.gaignard@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260415_082408_878124_F095D543 
X-CRM114-Status: GOOD (  11.70  )
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

Add a device tree binding for the Verisilicon (VSI) IOMMU.
This IOMMU sits in front of hardware encoder and decoder
blocks on SoCs using Verisilicon IP, such as the Rockchip RK3588.

Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
Reviewed-by: Conor Dooley <conor.dooley@microchip.com>
---
 .../bindings/iommu/verisilicon,iommu.yaml     | 71 +++++++++++++++++++
 1 file changed, 71 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/iommu/verisilicon,iommu.yaml

diff --git a/Documentation/devicetree/bindings/iommu/verisilicon,iommu.yaml b/Documentation/devicetree/bindings/iommu/verisilicon,iommu.yaml
new file mode 100644
index 000000000000..d3ce9e603b61
--- /dev/null
+++ b/Documentation/devicetree/bindings/iommu/verisilicon,iommu.yaml
@@ -0,0 +1,71 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/iommu/verisilicon,iommu.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Verisilicon IOMMU
+
+maintainers:
+  - Benjamin Gaignard <benjamin.gaignard@collabora.com>
+
+description: |+
+  A Versilicon iommu translates io virtual addresses to physical addresses for
+  its associated video decoder.
+
+properties:
+  compatible:
+    items:
+      - const: rockchip,rk3588-av1-iommu
+      - const: verisilicon,iommu-1.2
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+  clocks:
+    items:
+      - description: Core clock
+      - description: Interface clock
+
+  clock-names:
+    items:
+      - const: core
+      - const: iface
+
+  "#iommu-cells":
+    const: 0
+
+  power-domains:
+    maxItems: 1
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
+    #include <dt-bindings/clock/rockchip,rk3588-cru.h>
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+
+    bus {
+      #address-cells = <2>;
+      #size-cells = <2>;
+
+      iommu@fdca0000 {
+        compatible = "rockchip,rk3588-av1-iommu","verisilicon,iommu-1.2";
+        reg = <0x0 0xfdca0000 0x0 0x600>;
+        interrupts = <GIC_SPI 109 IRQ_TYPE_LEVEL_HIGH 0>;
+        clocks = <&cru ACLK_AV1>, <&cru PCLK_AV1>;
+        clock-names = "core", "iface";
+        #iommu-cells = <0>;
+      };
+    };
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
