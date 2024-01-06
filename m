Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 11FB2C47077
	for <linux-rockchip@archiver.kernel.org>; Sat,  6 Jan 2024 16:03:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Tr+YqwhOocz4o54ZdB/Wv/y/FD+z8REGUPJmGg/csY8=; b=Yb8EsQHFNKfTIf
	ecmhjymKUALjhWRxzeOkR/s4agMk6t8nB1aiWzSh0UEaLCegKS3nQWpST4n0TmHI+HzjImBgL+RN8
	B7Ck45B+34eGviRFNW4wWHD5M9Hsfoq3OfVQhRdhXFW/Su4eqSVIfhd02pikpqHl+BMJl1pk/Vwk1
	WU/k2VulopkCYrQ+kWR1yH/hAKak0qarVXKIX7M5zgdMqAysNVmZtEsSdyfmEjNrWA0esfDVtKEjR
	fCVA0eKgTNboWzSq8QkfHSuvmTQ4U6IxIpn4uLULOJ3wPxtlstw5/nBDiZqg9nTON16p+eGCQ5nM3
	38jG21iaQh6hNu4hGK2w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rM98v-001YZd-0s;
	Sat, 06 Jan 2024 16:03:25 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rM98q-001YVs-23;
	Sat, 06 Jan 2024 16:03:22 +0000
Received: from pyrite.hamster-moth.ts.net (unknown [IPv6:2001:268:c203:a8ee:6c57:4243:1eb3:6cb])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 87A8EFF3;
	Sat,  6 Jan 2024 17:02:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1704556937;
	bh=+W3iDB8WTozj1nqYH1DK/H9GSSjDUiV71a1AKS5P110=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=hqqj/PLKrswgCHkDhwM6K2QRH6eSKcHBr1amNzgf2yFx2b8EEPyPM5niW1I+2dNHe
	 WY/yn2LSs5D0Q/PLW3acm/04goYT6Izu3znG6t97yJHwoLsX+e0F7gsKn+3KSig8J6
	 zkh7sWiZgXyMlxZ/HN1kj5YRSI4d95mTt9pmFlGM=
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
	Alexander Stein <alexander.stein@ew.tq-group.com>,
	Dafna Hirschfeld <dafna@fastmail.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Helen Koike <helen.koike@collabora.com>,
	linux-arm-kernel@lists.infradead.org (moderated list:ARM/Rockchip SoC support),
	linux-kernel@vger.kernel.org (open list)
Subject: [PATCH v5 05/10] dt-bindings: media: rkisp1: Add i.MX8MP ISP to compatible
Date: Sun,  7 Jan 2024 01:02:16 +0900
Message-Id: <20240106160221.4183409-6-paul.elder@ideasonboard.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240106160221.4183409-1-paul.elder@ideasonboard.com>
References: <20240106160221.4183409-1-paul.elder@ideasonboard.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240106_080320_824754_5D5A0936 
X-CRM114-Status: GOOD (  11.74  )
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
based on the names from the datasheet.

Signed-off-by: Paul Elder <paul.elder@ideasonboard.com>
Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Reviewed-by: Rob Herring <robh@kernel.org>
Tested-by: Alexander Stein <alexander.stein@ew.tq-group.com>
Tested-by: Adam Ford <aford173@gmail.com>
---
Changes since v1:

- Add fsl,blk-ctrl property
- Make iommus, phys and phy-names conditional on compatible
---
 .../bindings/media/rockchip-isp1.yaml         | 37 ++++++++++++++++---
 1 file changed, 31 insertions(+), 6 deletions(-)

diff --git a/Documentation/devicetree/bindings/media/rockchip-isp1.yaml b/Documentation/devicetree/bindings/media/rockchip-isp1.yaml
index afcaa427d48b..6be00aca4181 100644
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
 
@@ -113,9 +121,6 @@ required:
   - interrupts
   - clocks
   - clock-names
-  - iommus
-  - phys
-  - phy-names
   - power-domains
   - ports
 
@@ -143,6 +148,26 @@ allOf:
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
