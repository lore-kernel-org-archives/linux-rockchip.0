Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8133EC001B0
	for <linux-rockchip@archiver.kernel.org>; Mon, 17 Jul 2023 17:35:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NGhhOGdZuUDh1TnHGyc2LbV0c57cxUqQ2jc1oOVcDTA=; b=y/CbPxGgg0o/x7
	QOmsxQ5xnGgs+9Z4TbuWcelCbev8qnNOlqdqPQ8pXWq/cMvyMF6PW7lTPJmKTHxiosKdg23/XUX6F
	c9ohax8t2ZUGb3NZoLJ9WaluGIJh+VvZurCMWZIVTG9je5EzXDteswLl59OkSjDx4ud/7muepYpiH
	hA38hhuzfPv2Dv9KJD6AifxyUd5+Elb6rEK/ciK/wxTeff+bOJNqKcGH+rQDk/Tn2VIajKUNvVEjB
	wHSXsNle/cyh2CHFCutgcxqW6FksJwxJ4i9qzDvewdRztZOmRPtDHVk3crLrx/VbBvML8fowYsyLR
	kSZKFpRXybbyeqXy0Xeg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qLS85-004hL8-0q;
	Mon, 17 Jul 2023 17:35:25 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qLS7x-004hHt-1q;
	Mon, 17 Jul 2023 17:35:18 +0000
Received: from jupiter.universe (dyndsl-091-248-189-171.ewe-ip-backbone.de [91.248.189.171])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: sre)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id CD3E566028F5;
	Mon, 17 Jul 2023 18:35:15 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1689615316;
	bh=64KeJPG4Zg7KDZinmnbpSO47kNMgAyfiBh+eN2b40rg=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=B5HBbDB20yXRLoz4slfRfa4dcG7iTPpeXK0IKlVynGXZfrgZ/LTtP0NCtNffMTqp2
	 53y1ZhTnvb6nxC7WHaZme7TNf4+gjZOb1w7pG4WwffjpLj2HG5r23fVt7C0tOV3O8Z
	 YKWgBBEsTY540MUUQRvdf4+4SlmnZxx8LqfouRU0AwF9FDU9LoToi1Zcl4stwDZkvK
	 cR6MuMrIjixM9Zlc4MTTibxIXGuHxU6j7afd6FpeZrqSvmO+t7HXff2HhQoYiYRBpC
	 Qj7kH3ITX820LlNRz+dt9drHpbb2oJVULN0ijOb8COb5GIdTBGtyYJSPJIn+kx5bYD
	 pNWzNDmnpYOMQ==
Received: by jupiter.universe (Postfix, from userid 1000)
	id D348D480C77; Mon, 17 Jul 2023 19:35:12 +0200 (CEST)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: linux-phy@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Cc: Jingoo Han <jingoohan1@gmail.com>,
	Gustavo Pimentel <gustavo.pimentel@synopsys.com>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	=?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>,
	Rob Herring <robh@kernel.org>,
	Serge Semin <fancer.lancer@gmail.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	Simon Xue <xxm@rock-chips.com>,
	John Clark <inindev@gmail.com>,
	Qu Wenruo <wqu@suse.com>,
	devicetree@vger.kernel.org,
	linux-pci@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	kernel@collabora.com,
	Conor Dooley <conor.dooley@microchip.com>
Subject: [PATCH v2 1/2] dt-bindings: phy: rockchip: add RK3588 PCIe v3 phy
Date: Mon, 17 Jul 2023 19:35:11 +0200
Message-Id: <20230717173512.65169-2-sebastian.reichel@collabora.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230717173512.65169-1-sebastian.reichel@collabora.com>
References: <20230717173512.65169-1-sebastian.reichel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230717_103517_777628_5651CD56 
X-CRM114-Status: GOOD (  10.23  )
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

When the RK3568 PCIe v3 PHY supported has been upstreamed, RK3588
support was included, but the DT binding does not reflect this.
This adds the missing bits.

Reviewed-by: Conor Dooley <conor.dooley@microchip.com>
Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
 .../bindings/phy/rockchip,pcie3-phy.yaml      | 33 ++++++++++++++++---
 1 file changed, 28 insertions(+), 5 deletions(-)

diff --git a/Documentation/devicetree/bindings/phy/rockchip,pcie3-phy.yaml b/Documentation/devicetree/bindings/phy/rockchip,pcie3-phy.yaml
index 9f2d8d2cc7a5..c4fbffcde6e4 100644
--- a/Documentation/devicetree/bindings/phy/rockchip,pcie3-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/rockchip,pcie3-phy.yaml
@@ -13,19 +13,18 @@ properties:
   compatible:
     enum:
       - rockchip,rk3568-pcie3-phy
+      - rockchip,rk3588-pcie3-phy
 
   reg:
     maxItems: 1
 
   clocks:
-    minItems: 3
+    minItems: 1
     maxItems: 3
 
   clock-names:
-    items:
-      - const: refclk_m
-      - const: refclk_n
-      - const: pclk
+    minItems: 1
+    maxItems: 3
 
   data-lanes:
     description: which lanes (by position) should be mapped to which
@@ -61,6 +60,30 @@ required:
   - rockchip,phy-grf
   - "#phy-cells"
 
+allOf:
+  - if:
+      properties:
+        compatible:
+          enum:
+            - rockchip,rk3588-pcie3-phy
+    then:
+      properties:
+        clocks:
+          maxItems: 1
+        clock-names:
+          items:
+            - const: pclk
+    else:
+      properties:
+        clocks:
+          minItems: 3
+
+        clock-names:
+          items:
+            - const: refclk_m
+            - const: refclk_n
+            - const: pclk
+
 additionalProperties: false
 
 examples:
-- 
2.40.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
