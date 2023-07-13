Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5D4A2C001DD
	for <linux-rockchip@archiver.kernel.org>; Thu, 13 Jul 2023 17:19:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=y6CLegaQsfhG4ctslBtHS5BveDOIqLCLujgT7mNKKtU=; b=bosjL5GQAdEsdd
	OyUiwR5PAz76hrvavc3YhxfwAphSVGhsjzdageAUwOqjHHnkx++EJ98fe1WJbPHkwG1EHtSOd0hxA
	bSWTiRner+B8F2iYPOPUqxnzT46qJ0VFOpyPJSgZX5TOzCrUxpZRQt1CFYDkvuwzljLGjj+7DeWlH
	8B1nMXbR1/TPTicfIh7GFHEkyfkxHUzoRRHoggPGvbhMmOGQ5YW0jdEQN70dzm3vZMzdtkyCy9Qg9
	GWsJFSEWxrOoI1U+Fh6+EKVSn45bgmxgRi9MK7mWmQqXc9fHPXPlGAMTcLDD+4fVz89aDQVMgCSaf
	2nSQwxaB/wNTA+PLEMmg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qJzy0-0041rW-3B;
	Thu, 13 Jul 2023 17:19:00 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qJzxx-0041pw-2V;
	Thu, 13 Jul 2023 17:18:59 +0000
Received: from jupiter.universe (dyndsl-091-248-214-236.ewe-ip-backbone.de [91.248.214.236])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: sre)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id E28A26607052;
	Thu, 13 Jul 2023 18:18:55 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1689268736;
	bh=6jGIKPbfF8lFaKxaxnrLO3vT+yEQbM1fwyNNnYbXS6E=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=PLKB31XyoOBNRF8LVy2cE+0oXfj/7egsX6mmTa9pvIEw9EF1H/cIfCgJbglWhJjc+
	 OW2oPkLPEWQVMiJG712gHFi4b/610V11zA/aFHJ/o4Dc0/vJrzUNJkoc3+ajkOriug
	 I7NVE/iiV9qdRHR1NOpryI4vmIK5rQiTnvFn1bccajGr69n67Ui8HMEQY0Dpn7rbjA
	 rtvEvqAbtDI7E2VI5r9DN0ag4J/ChzR0v1JTwMXLWgZZX1cVqdFZy03wnigxlPxyA9
	 RHiBbdMHqFgw1NNdCpwhOx78OnvcBnu2TRJPSEobIKBj//XIsmH2Z5ddWmi9jZ7o3W
	 ynbpJUAQYTClA==
Received: by jupiter.universe (Postfix, from userid 1000)
	id CBDB5480086; Thu, 13 Jul 2023 19:18:53 +0200 (CEST)
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
Subject: [PATCH v2 2/3] dt-bindings: PCI: dwc: rockchip: Add missing legacy-interrupt-controller
Date: Thu, 13 Jul 2023 19:18:50 +0200
Message-Id: <20230713171851.73052-3-sebastian.reichel@collabora.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230713171851.73052-1-sebastian.reichel@collabora.com>
References: <20230713171851.73052-1-sebastian.reichel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230713_101858_014073_B51DB0C8 
X-CRM114-Status: GOOD (  10.95  )
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
index aad53c7d8485..8460b1a87248 100644
--- a/Documentation/devicetree/bindings/pci/rockchip-dw-pcie.yaml
+++ b/Documentation/devicetree/bindings/pci/rockchip-dw-pcie.yaml
@@ -71,6 +71,28 @@ properties:
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
@@ -158,6 +180,14 @@ examples:
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
