Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 60856C4167B
	for <linux-rockchip@archiver.kernel.org>; Wed, 29 Nov 2023 09:29:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9evOGeD4ZVieY7iuo0D769pAvxADl7cnuPyK9dUw/oo=; b=ciRUbWkQcuZyEI
	Y01PM4Hz6MZaY67FuC9ew96WHuyY7onndKIv/2+tO5fu0XenaovklkwU+zrwmNu5NdINJEO+e4pWj
	gSl9VRLKsFejjj3MW3b/hYfh+w3GxYOyt1qh1Or8VwPFxkD5J11Ca3cd9pVNzK/PcyhAoaw/VC5j2
	k0ovrTl3n2lFxk8Vchw0G1mUCck3mNMM19cZBsHRziWhGq99fzOcIPOrQsEs4z4+vxGUihJZR6R8K
	8hPZiYC/RSgV+LfvB7OJ+3X9RcJgGoJlhhGGkV+Jgbc/KCobTE+wR9pxq5YfyGTrL2iVaL3Ve+q8J
	yWUjKH7P0coGBkwb04jw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r8Gse-007eYM-2B;
	Wed, 29 Nov 2023 09:29:16 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r8GsF-007e9H-0A;
	Wed, 29 Nov 2023 09:28:52 +0000
Received: from pyrite.hamster-moth.ts.net (h175-177-049-135.catv02.itscom.jp [175.177.49.135])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id A74A32B6;
	Wed, 29 Nov 2023 10:28:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1701250093;
	bh=yeDPN9oGkesAazzCi9HQ+rTaGgXNlCyocQHZh8/QGks=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=sTT5MvtAsPer5EX+3DkssuQuiTyU6eu29lIu1aDBXh/yy6n0fSxV0CHbx8t7O4as9
	 65Yg3jCqiXBAhMGTGLzOfFFA+E2bsegjSjdwiqXuv9QH0VIAFAZgbxuMi2D4S8I87z
	 sZJUzhRebfJVrM6T8OkUQGQ8vGG0/aAnENdEPqHg=
From: Paul Elder <paul.elder@ideasonboard.com>
To: linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org
Cc: kieran.bingham@ideasonboard.com,
	tomi.valkeinen@ideasonboard.com,
	umang.jain@ideasonboard.com,
	aford173@gmail.com,
	Paul Elder <paul.elder@ideasonboard.com>,
	Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
	Rob Herring <robh@kernel.org>,
	Dafna Hirschfeld <dafna@fastmail.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Helen Koike <helen.koike@collabora.com>,
	linux-arm-kernel@lists.infradead.org (moderated list:ARM/Rockchip SoC support),
	linux-kernel@vger.kernel.org (open list)
Subject: [PATCH v4 06/11] dt-bindings: media: rkisp1: Add i.MX8MP ISP to compatible
Date: Wed, 29 Nov 2023 18:27:54 +0900
Message-Id: <20231129092759.242641-7-paul.elder@ideasonboard.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231129092759.242641-1-paul.elder@ideasonboard.com>
References: <20231129092759.242641-1-paul.elder@ideasonboard.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231129_012851_252598_17D65062 
X-CRM114-Status: GOOD (  12.21  )
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

The i.MX8MP ISP is compatbile with the rkisp1 driver. Add it to the list
of compatible strings. While at it, expand on the description of the
clocks to make it clear which clock in the i.MX8MP ISP they map to,
based on the names from the datasheet (which are confusing).

Signed-off-by: Paul Elder <paul.elder@ideasonboard.com>
Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Reviewed-by: Rob Herring <robh@kernel.org>
---
Changes since v1:

- Add fsl,blk-ctrl property
- Make iommus, phys and phy-names conditional on compatible

 .../bindings/media/rockchip-isp1.yaml         | 37 ++++++++++++++++---
 1 file changed, 31 insertions(+), 6 deletions(-)

diff --git a/Documentation/devicetree/bindings/media/rockchip-isp1.yaml b/Documentation/devicetree/bindings/media/rockchip-isp1.yaml
index e466dff8286d..b9c812b81389 100644
--- a/Documentation/devicetree/bindings/media/rockchip-isp1.yaml
+++ b/Documentation/devicetree/bindings/media/rockchip-isp1.yaml
@@ -16,6 +16,7 @@ description: |
 properties:
   compatible:
     enum:
+      - fsl,imx8mp-isp
       - rockchip,px30-cif-isp
       - rockchip,rk3399-cif-isp
 
@@ -36,9 +37,9 @@ properties:
     minItems: 3
     items:
       # isp0 and isp1
-      - description: ISP clock
-      - description: ISP AXI clock
-      - description: ISP AHB clock
+      - description: ISP clock (for imx8mp, clk)
+      - description: ISP AXI clock (for imx8mp, m_hclk)
+      - description: ISP AHB clock (for imx8mp, hclk)
       # only for isp1
       - description: ISP Pixel clock
 
@@ -52,6 +53,13 @@ properties:
       # only for isp1
       - const: pclk
 
+  fsl,blk-ctrl:
+    $ref: /schemas/types.yaml#/definitions/phandle-array
+    maxItems: 1
+    description:
+      A phandle to the media block control for the ISP, followed by a cell
+      containing the index of the gasket.
+
   iommus:
     maxItems: 1
 
@@ -112,9 +120,6 @@ required:
   - interrupts
   - clocks
   - clock-names
-  - iommus
-  - phys
-  - phy-names
   - power-domains
   - ports
 
@@ -142,6 +147,26 @@ allOf:
       required:
         - interrupt-names
 
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: fsl,imx8mp-isp
+    then:
+      properties:
+        iommus: false
+        phys: false
+        phy-names: false
+      required:
+        - fsl,blk-ctrl
+    else:
+      properties:
+        fsl,blk-ctrl: false
+      required:
+        - iommus
+        - phys
+        - phy-names
+
 additionalProperties: false
 
 examples:
-- 
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
