Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 683DFC001B0
	for <linux-rockchip@archiver.kernel.org>; Wed, 19 Jul 2023 17:40:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+MlpyBVo5cNP1H0l1DZSpXdVNkUr9GZa1YAx4pJPN4M=; b=ED3tGP6B4NSmjb
	RYOSei13VtCKWpvwuNdXJOQ72Hin+4qCvYZq/szyqhuDStP+JZCdImGQAp8mIHXTjrSGXpxp8PID5
	TxOtioXejLp/VZk0m+vIPAY5pIM7yyBJgMKGSLiC4Q8YWaYPro1upc97bMMukGO0ZogKBxSrx2FFX
	sWeAeTdnQM0d/9FjygGl7brHo9uIGl+ey2yQVRwkcOz8aQFeFlrEP5358HWukPjBJNP7Wvd4N/6iO
	v9BC4Fpy0ob32r7eWm/7btvGea5WqLOVV9nRZVdroLXLs7UAAzg8XcXv0xa6c4XGLZTfh0SIu1nka
	4Gngat3CM3D8boKW/HkQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qMBAJ-008NdF-2A;
	Wed, 19 Jul 2023 17:40:43 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qMBA2-008NTT-2f;
	Wed, 19 Jul 2023 17:40:29 +0000
Received: from jupiter.universe (dyndsl-091-248-208-009.ewe-ip-backbone.de [91.248.208.9])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sre)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 3F2EB6606FCE;
	Wed, 19 Jul 2023 18:40:19 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1689788419;
	bh=LlUh7Fn0cj04qJmOdkCXn8GhQI6+9wcTUh77kHYpm+c=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=mId2p9mv1C0V9ofkmv80IFSeXy7Dod5LmGeSNOVTRWn+aumEFnzwSJt8PhFyRI5Ng
	 n4UubNfF51wVwIkymVzRcwci+XM+ospEBgV+CfTkRv47yFYjDeoJgJpXaZRZji48xr
	 UeMg9z2rH6u1IhneCdSsAKiMft2EJVrStEJv/EVgMnVNaQFNLGCV6bGjg/8ZL0PaZW
	 hdMoXYOdJNi+12XtDlskQM5FlEkkrEskp1QiARs1t4ueXsHR+2cCp4LTAw/vQL/k9K
	 k0agJfPQ2nTearEeZmqwTqy/fsqL2ldcANHxDcX2CSvwNbCPRpYFrUTI2K3Us6Fmwt
	 DhZCKdG3yi1wg==
Received: by jupiter.universe (Postfix, from userid 1000)
	id 20E6C480DA8; Wed, 19 Jul 2023 19:40:17 +0200 (CEST)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Heiko Stuebner <heiko@sntech.de>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-rockchip@lists.infradead.org,
	linux-usb@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	kernel@collabora.com
Subject: [PATCH v1 1/2] dt-bindings: usb: rockchip,dwc3: Add RK3588 binding
Date: Wed, 19 Jul 2023 19:40:14 +0200
Message-Id: <20230719174015.68153-2-sebastian.reichel@collabora.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230719174015.68153-1-sebastian.reichel@collabora.com>
References: <20230719174015.68153-1-sebastian.reichel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230719_104027_125187_E7BDB25B 
X-CRM114-Status: GOOD (  12.69  )
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

RK3588 contains three DWC3 cores. Two of them are connected to
dedicated USBDP PHY and can be used in dual-role. The third is
connected to one of the shared combo PHYs used for PCIe/SATA/USB3
and can only be used in host mode. Since the binding is all about
the PHY glueing and involved clocks, separate compatible values
have been created for these two types.

Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
 .../bindings/usb/rockchip,rk3399-dwc3.yaml    | 107 ++++++++++++++----
 1 file changed, 85 insertions(+), 22 deletions(-)

diff --git a/Documentation/devicetree/bindings/usb/rockchip,rk3399-dwc3.yaml b/Documentation/devicetree/bindings/usb/rockchip,rk3399-dwc3.yaml
index 3159f9a6a0f7..0db4dc86e506 100644
--- a/Documentation/devicetree/bindings/usb/rockchip,rk3399-dwc3.yaml
+++ b/Documentation/devicetree/bindings/usb/rockchip,rk3399-dwc3.yaml
@@ -11,7 +11,13 @@ maintainers:
 
 properties:
   compatible:
-    const: rockchip,rk3399-dwc3
+    oneOf:
+      - items:
+          - enum:
+              - rockchip,rk3588-dwc3-otg
+              - rockchip,rk3588-dwc3-host
+          - const: rockchip,rk3399-dwc3
+      - const: rockchip,rk3399-dwc3
 
   '#address-cells':
     const: 2
@@ -22,35 +28,37 @@ properties:
   ranges: true
 
   clocks:
-    items:
-      - description:
-          Controller reference clock, must to be 24 MHz
-      - description:
-          Controller suspend clock, must to be 24 MHz or 32 KHz
-      - description:
-          Master/Core clock, must to be >= 62.5 MHz for SS
-          operation and >= 30MHz for HS operation
-      - description:
-          USB3 aclk peri
-      - description:
-          USB3 aclk
-      - description:
-          Controller grf clock
+    minItems: 3
+    maxItems: 6
 
   clock-names:
     items:
-      - const: ref_clk
-      - const: suspend_clk
-      - const: bus_clk
-      - const: aclk_usb3_rksoc_axi_perf
-      - const: aclk_usb3
-      - const: grf_clk
+      oneOf:
+        - enum:
+            - ref
+            - ref_clk
+        - enum:
+            - suspend
+            - suspend_clk
+        - enum:
+            - bus
+            - bus_clk
+        - const: aclk_usb3_rksoc_axi_perf
+        - const: aclk_usb3
+        - const: grf_clk
+        - const: utmi
+        - const: php
+        - const: pipe
+    minItems: 3
+    maxItems: 6
 
   resets:
     maxItems: 1
 
   reset-names:
-    const: usb3-otg
+    enum:
+      - usb3-host
+      - usb3-otg
 
 patternProperties:
   '^usb@':
@@ -68,6 +76,61 @@ required:
   - resets
   - reset-names
 
+allOf:
+  - if:
+      properties:
+        compatible:
+          const: rockchip,rk3399-dwc3
+    then:
+      properties:
+        clocks:
+          minItems: 6
+        clock-names:
+          items:
+            - const: ref_clk
+            - const: suspend_clk
+            - const: bus_clk
+            - const: aclk_usb3_rksoc_axi_perf
+            - const: aclk_usb3
+            - const: grf_clk
+        reset-names:
+          const: usb3-otg
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: rockchip,rk3588-dwc3-otg
+    then:
+      properties:
+        clocks:
+          maxItems: 3
+        clock-names:
+          items:
+            - const: ref
+            - const: suspend
+            - const: bus
+        reset-names:
+          const: usb3-otg
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: rockchip,rk3588-dwc3-host
+    then:
+      properties:
+        clocks:
+          minItems: 6
+        clock-names:
+          items:
+            - const: ref
+            - const: suspend
+            - const: bus
+            - const: utmi
+            - const: php
+            - const: pipe
+        reset-names:
+          const: usb3-host
+
 examples:
   - |
     #include <dt-bindings/clock/rk3399-cru.h>
-- 
2.40.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
