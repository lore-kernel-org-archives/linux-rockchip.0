Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D8A57C04E69
	for <linux-rockchip@archiver.kernel.org>; Mon, 31 Jul 2023 16:57:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0+9sBqXav69zuGr10KGNFUX4CLu0zNnGChV1q0RArv8=; b=BZnQrOpqdqYXyX
	97mVfacQYewHT+SRVtuXxNLQtTWrOX0KOIZhr69F+O9QO3aqfmfEn6XsGoXX7vsiPwu1FFQA0Uxdy
	WUJeLobEAmmfaRcw2t+0kxF56Tr6ui8As5uiAnZfM6cMW99j2Dn+SetyKPuAcJORF+0ZMkg6k68xw
	Gs8A9n70LjHvXffcL/KHYKAI50KmvQ4fyHq5MhJ6fWetvTsjiifWNQLFARMO/6I0Ev0kUgAkbB3jb
	F1mMeK0lEQ9SHm6MiNmmo02RGB6FFSTINNeIdi3tZ2xnC6zIalcpye+Ya/SZqr9Sz3eh+9UBbPPhF
	fmVAlMTTI2sWvcxuSKQg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qQWDH-00Ghos-2i;
	Mon, 31 Jul 2023 16:57:43 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qQWD4-00GhF8-1W;
	Mon, 31 Jul 2023 16:57:32 +0000
Received: from jupiter.universe (dyndsl-091-248-210-008.ewe-ip-backbone.de [91.248.210.8])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: sre)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 3B76A6607120;
	Mon, 31 Jul 2023 17:57:27 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1690822647;
	bh=GALTLk1kp81TWDcsFroSmRcnp70s2ikSUk1HG3RlfRQ=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=m8o6k8EeKx1zZBOOe15TBm+kY3BiWkBrpBe1QCi3B2ASi0BP+YRrlZo/DcpQAE6DD
	 zUKWnwga9ntBIeWnxw2JBlQT61uR3qyMB2u/M+A1DqvFOA546BpJHDSAqTtd+tcR2B
	 qbWHBv/YwJ2jCoI6wMSLakWWUr8QReeq9qzAHhuhyAyPO5rCRxPw+34zmwxloE98tW
	 R/hQv61gjw4lpnZyOFIpQeVDM94FvsfEVs7FVjnasnwkSuQKTjT/3R3iPt+dcpbWnn
	 jplEbS7299jwVwdmWe7jb0mOhe5KT572ytQ+tgQIp8GlQheF3dHc1UvZpL+IZDSmyJ
	 pB73OuR0dPTPw==
Received: by jupiter.universe (Postfix, from userid 1000)
	id 2E1184800B0; Mon, 31 Jul 2023 18:57:25 +0200 (CEST)
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
Subject: [PATCH v4 4/5] dt-bindings: PCI: dwc: rockchip: Add missing legacy-interrupt-controller
Date: Mon, 31 Jul 2023 18:57:22 +0200
Message-Id: <20230731165723.53069-5-sebastian.reichel@collabora.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230731165723.53069-1-sebastian.reichel@collabora.com>
References: <20230731165723.53069-1-sebastian.reichel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230731_095730_687863_49E179E7 
X-CRM114-Status: GOOD (  11.40  )
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
