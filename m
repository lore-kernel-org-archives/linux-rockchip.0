Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1F66DEB64D7
	for <linux-rockchip@archiver.kernel.org>; Fri, 16 Jun 2023 17:01:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sSGu6QcaN1F6ZpnXSgwfO/w17Wr6tyHAXPgDhxF3ECc=; b=jdTDYn+CiIG8Jk
	fVf7j8ROLm+ImrT4ltgDiqrUvPIzTEZv6ZY+hjOGA6UzjAQU/vH5eTcr7Hwn94NrhXst119fhs40o
	syLzfJqcC9w8mTPcZ3+Iz62IuoGTwbfKCzW8k030TJADj1K65KpfEb94Y/71QRBaO6Fxfipwc1d84
	hR5wNkUCLtn1eHkK7Ie23Uzt1TZ5i6kguH7KU5f8u5PfKZFD0JoqWQl1rnnkh1ji6q0kFi8Z5emkx
	hMAdDGsL4vt4ygTLg6ltpVWf285cZqhTnfFC1mHkghcv4+T+po26OO5Q9qoWCeSxtODWb4zuDTXac
	yHPaA8s5xT+XDuIVBkKg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qACon-001DQR-15;
	Fri, 16 Jun 2023 17:01:01 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qACoX-001DHb-0v;
	Fri, 16 Jun 2023 17:00:48 +0000
Received: from jupiter.universe (dyndsl-091-248-215-052.ewe-ip-backbone.de [91.248.215.52])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sre)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 6D92D6606F86;
	Fri, 16 Jun 2023 18:00:41 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1686934841;
	bh=UUp1ukfBywtwpph0BM+a29Xo/RNDQnnSMjgz7LkN1Zw=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=msXBX3v/bw9oWUk68ClxuJHLoBW+kShPYmlyil7ZsQbf/tJHHvGSN+qSQs5ZJKBsi
	 riuH9SBaJNosZrohWiM1K0qh6ovjSLSWnB3ziBnxWyRAnIaufz9qXA3p+9w76Pbe6p
	 4ly7dPNMxzq2n04Il8SCtFkNUBgO2qTL7Oeiy+uisz2X+kMyEfSExYcQaw78pGpILN
	 et1warkNVV99NGzB/L8F3SShOrizPsunC3vqBU12DcKMgIz3qw9VmsbNmKKsubFcrt
	 Dpj2qDBkTSamasPhK83nxaA+7TUAKIf1utFYdmAPWiwbx2yGqWqcbBqXa7SOZCuLBi
	 Q5cZpNUmhH/KA==
Received: by jupiter.universe (Postfix, from userid 1000)
	id 124BF480596; Fri, 16 Jun 2023 19:00:39 +0200 (CEST)
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
Subject: [PATCH v1 2/4] dt-bindings: PCI: dwc: rockchip: Add missing legacy-interrupt-controller
Date: Fri, 16 Jun 2023 19:00:20 +0200
Message-Id: <20230616170022.76107-3-sebastian.reichel@collabora.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230616170022.76107-1-sebastian.reichel@collabora.com>
References: <20230616170022.76107-1-sebastian.reichel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230616_100045_468790_4BEC3641 
X-CRM114-Status: GOOD (  11.53  )
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

Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
 .../bindings/pci/rockchip-dw-pcie.yaml        | 24 +++++++++++++++++++
 1 file changed, 24 insertions(+)

diff --git a/Documentation/devicetree/bindings/pci/rockchip-dw-pcie.yaml b/Documentation/devicetree/bindings/pci/rockchip-dw-pcie.yaml
index 98e45d2d8dfe..bf81d306cc80 100644
--- a/Documentation/devicetree/bindings/pci/rockchip-dw-pcie.yaml
+++ b/Documentation/devicetree/bindings/pci/rockchip-dw-pcie.yaml
@@ -67,6 +67,22 @@ properties:
       - const: legacy
       - const: err
 
+  legacy-interrupt-controller:
+    description: Interrupt controller node for handling legacy PCI interrupts.
+    type: object
+    properties:
+      "#address-cells":
+        const: 0
+
+      "#interrupt-cells":
+        const: 1
+
+      "interrupt-controller": true
+
+      interrupts:
+        items:
+          - description: combined legacy interrupt
+
   msi-map: true
 
   num-lanes: true
@@ -148,6 +164,14 @@ examples:
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
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
