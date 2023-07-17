Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CE832C001DC
	for <linux-rockchip@archiver.kernel.org>; Mon, 17 Jul 2023 17:28:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0+9sBqXav69zuGr10KGNFUX4CLu0zNnGChV1q0RArv8=; b=uH9hl4XmpKLPQC
	tByRY121WS66GbkDyNGW2Ab5X0OEdySXbVO5XA0l9Czi0xJS7jLmaSAQ/2t8OW/D/VlPwv20umkQe
	8N0qTcXx4+n9RbpO8XLWep74reiOoBJMujZ6eh41SecOLrO+G33JITrvILAsuGOIqvSS4ulEbC//T
	mFAdJY1Dk5j8YxBuB036scQk+9JXUAXdBvIZNX4/W1Lvl4fIb3QDSRXIWl5yMVM10pq9fUy4ur3VZ
	l5W+E9DGUamxBIfTydufoTfunPVdJpK4lxNcjfeec6W3R+hYcsbKK6l9AZ36MYW9RgzHgGaUrnuvq
	3Coin9BWF+ZcPdmEAr3g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qLS0x-004flf-0h;
	Mon, 17 Jul 2023 17:28:03 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qLRzx-004fRz-33;
	Mon, 17 Jul 2023 17:27:04 +0000
Received: from jupiter.universe (dyndsl-091-248-189-171.ewe-ip-backbone.de [91.248.189.171])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sre)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id E09F86606FC8;
	Mon, 17 Jul 2023 18:26:55 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1689614816;
	bh=GALTLk1kp81TWDcsFroSmRcnp70s2ikSUk1HG3RlfRQ=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=cZUsBZPo1A8U4vH4pXrI8+kODvY49w9R9s8Bz+sAvYJ6s81eW9IL/9fHAQ5b30ZlH
	 tQZa/pCyp5f2FzezGXpQGbAKmIb7mmxWwlBJU5YMGVS4FukE/HswiUgOn2HiLasLpa
	 sYXVwsyu81hz8eLju/qLDwAhVz2IDbq3amZfGnFYgbAjW4Z3NuAcWtqEhSKPa9+NOB
	 XuDHyHbZiv1/Q7vIgCnkRsAD42yrtPXOKOZgGUnqSLMlYrYFZTpceESix/i5XJZOCk
	 e9fV/ZLZJl6joamxDS9PxW5sW+wbPC30ZRna+SyZ1Ggs6gJCA+mTLAfeYV8Yw0qQ8g
	 F+31a4qQxOUKA==
Received: by jupiter.universe (Postfix, from userid 1000)
	id 1EE9D480C7A; Mon, 17 Jul 2023 19:26:53 +0200 (CEST)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: linux-pci@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	Serge Semin <fancer.lancer@gmail.com>
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
Subject: [PATCH v3 4/5] dt-bindings: PCI: dwc: rockchip: Add missing legacy-interrupt-controller
Date: Mon, 17 Jul 2023 19:26:50 +0200
Message-Id: <20230717172651.64324-5-sebastian.reichel@collabora.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230717172651.64324-1-sebastian.reichel@collabora.com>
References: <20230717172651.64324-1-sebastian.reichel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230717_102702_167196_D34B6902 
X-CRM114-Status: GOOD (  10.60  )
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

Rockchip RK356x and RK3588 handle legacy interrupts via a ganged
interrupts. The RK356x DT implements this via a sub-node named
"legacy-interrupt-controller", just like a couple of other PCIe
implementations. This adds proper documentation for this and updates
the example to avoid regressions.

Reviewed-by: Rob Herring <robh@kernel.org>
Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
 .../bindings/pci/rockchip-dw-pcie.yaml        | 30 +++++++++++++++++++
 1 file changed, 30 insertions(+)

diff --git a/Documentation/devicetree/bindings/pci/rockchip-dw-pcie.yaml b/Documentation/devicetree/bindings/pci/rockchip-dw-pcie.yaml
index ad9954f7fe02..1ae8dcfa072c 100644
--- a/Documentation/devicetree/bindings/pci/rockchip-dw-pcie.yaml
+++ b/Documentation/devicetree/bindings/pci/rockchip-dw-pcie.yaml
@@ -93,6 +93,28 @@ properties:
       - const: legacy
       - const: err
 
+  legacy-interrupt-controller:
+    description: Interrupt controller node for handling legacy PCI interrupts.
+    type: object
+    additionalProperties: false
+    properties:
+      "#address-cells":
+        const: 0
+
+      "#interrupt-cells":
+        const: 1
+
+      interrupt-controller: true
+
+      interrupts:
+        items:
+          - description: combined legacy interrupt
+    required:
+      - "#address-cells"
+      - "#interrupt-cells"
+      - interrupt-controller
+      - interrupts
+
   msi-map: true
 
   num-lanes: true
@@ -180,6 +202,14 @@ examples:
             reset-names = "pipe";
             #address-cells = <3>;
             #size-cells = <2>;
+
+            legacy-interrupt-controller {
+                interrupt-controller;
+                #address-cells = <0>;
+                #interrupt-cells = <1>;
+                interrupt-parent = <&gic>;
+                interrupts = <GIC_SPI 72 IRQ_TYPE_EDGE_RISING>;
+            };
         };
     };
 ...
-- 
2.40.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
