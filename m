Return-Path: <SRS0=X5eU=C7=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7B6F1C4727C
	for <linux-rockchip@archiver.kernel.org>; Tue, 22 Sep 2020 16:55:59 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id C795823119
	for <linux-rockchip@archiver.kernel.org>; Tue, 22 Sep 2020 16:55:58 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="1NX7hYxm"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org C795823119
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=bootlin.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=abZmfD8smwNbHRUc6bdH/gCb5gfp/iKjdIN/WGgA9vc=; b=1NX7hYxmEKSYcavH7oTfscB1I
	UwaRimU0ny/5SQPgsEFC9ziPB8j3SVU3Q7s9jUJO3bry9psPPO//hXm8c53oGUa0hJSoyyRLOfeuz
	hPoGaMwAXnI/VnPGICKrQESYFlQwLd5FyZlbNBjuUmUCqfWQHkZRWH+B0li5zGsxtk84vYEE5vgh7
	kkFYf+skGT11BBY63Vm5mIRUrHwUlAJfvk0l2se06VjE43psu859konwoMg8p+yDPLK4+Dr0qNHhW
	Z7b7CVydnUF2O6wWqg80VRd3gzAEbmkBIRNMTbrPmNVm/iBciuY7F2r2WOBOihloFA2fMCg9BdmtQ
	Wa0mpynmA==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kKla3-0006WY-3x; Tue, 22 Sep 2020 16:55:51 +0000
Received: from relay6-d.mail.gandi.net ([217.70.183.198])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kKlZv-0006U3-Lj; Tue, 22 Sep 2020 16:55:45 +0000
X-Originating-IP: 90.89.95.46
Received: from pc-2.home (lfbn-tou-1-1532-46.w90-89.abo.wanadoo.fr
 [90.89.95.46]) (Authenticated sender: maxime.chevallier@bootlin.com)
 by relay6-d.mail.gandi.net (Postfix) with ESMTPSA id D6E4FC0006;
 Tue, 22 Sep 2020 16:55:40 +0000 (UTC)
From: Maxime Chevallier <maxime.chevallier@bootlin.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Robin Murphy <robin.murphy@arm.com>,
 Mark Rutland <mark.rutland@arm.com>, Heiko Stuebner <heiko@sntech.de>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>,
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
Subject: [PATCH v3 1/3] media: dt-bindings: media: Document Rockchip VIP
 bindings
Date: Tue, 22 Sep 2020 18:55:33 +0200
Message-Id: <20200922165535.1356622-2-maxime.chevallier@bootlin.com>
X-Mailer: git-send-email 2.25.4
In-Reply-To: <20200922165535.1356622-1-maxime.chevallier@bootlin.com>
References: <20200922165535.1356622-1-maxime.chevallier@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200922_125543_940678_DAC310E2 
X-CRM114-Status: GOOD (  14.41  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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
Cc: devicetree@vger.kernel.org,
 Dafna Hirschfeld <dafna.hirschfeld@collabora.com>,
 linux-kernel@vger.kernel.org,
 Maxime Chevallier <maxime.chevallier@bootlin.com>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 linux-rockchip@lists.infradead.org, Helen Koike <helen.koike@collabora.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Add a documentation for the Rockchip Camera Interface controller
binding.

This controller can be found on platforms such as the PX30 or the
RK3288, the PX30 being the only platform supported so far.

Signed-off-by: Maxime Chevallier <maxime.chevallier@bootlin.com>
---
V3 :
 - renamed the controller

 .../bindings/media/rockchip-vip.yaml          | 100 ++++++++++++++++++
 1 file changed, 100 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/media/rockchip-vip.yaml

diff --git a/Documentation/devicetree/bindings/media/rockchip-vip.yaml b/Documentation/devicetree/bindings/media/rockchip-vip.yaml
new file mode 100644
index 000000000000..652c46053b29
--- /dev/null
+++ b/Documentation/devicetree/bindings/media/rockchip-vip.yaml
@@ -0,0 +1,100 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/media/rockchip-vip.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Rockchip VIP Camera Interface
+
+maintainers:
+  - Maxime Chevallier <maxime.chevallier@bootlin.com>
+
+description: |-
+  Camera Interface for Rockcip platforms
+
+properties:
+  compatible:
+    const: rockchip,px30-vip
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+  clocks:
+    items:
+      - description: ACLK
+      - description: HCLK
+      - description: PCLK IN
+
+  clock-names:
+    items:
+      - const: aclk
+      - const: hclkf
+      - const: pclkin
+
+  resets:
+    items:
+      - description: AXI
+      - description: AHB
+      - description: PCLK IN
+
+  reset-names:
+    items:
+      - const: axi
+      - const: ahb
+      - const: pclkin
+
+  power-domains:
+    maxItems: 1
+    description: phandle to the associated power domain
+
+  # See ./video-interfaces.txt for details
+  port:
+    type: object
+    additionalProperties: false
+
+    properties:
+      endpoint:
+        type: object
+
+        properties:
+          remote-endpoint: true
+
+        required:
+          - remote-endpoint
+
+    required:
+      - endpoint
+
+required:
+  - compatible
+  - reg
+  - interrupts
+  - clocks
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+    #include <dt-bindings/clock/px30-cru.h>
+    #include <dt-bindings/power/px30-power.h>
+
+    vip: vip@ff490000 {
+    	compatible = "rockchip,px30-vip";
+    	reg = <0x0 0xff490000 0x0 0x200>;
+    	interrupts = <GIC_SPI 69 IRQ_TYPE_LEVEL_HIGH>;
+    	clocks = <&cru ACLK_CIF>, <&cru HCLK_CIF>, <&cru PCLK_CIF>, <&cru SCLK_CIF_OUT>;
+    	clock-names = "aclk", "hclk", "pclkin";
+    	resets = <&cru SRST_CIF_A>, <&cru SRST_CIF_H>, <&cru SRST_CIF_PCLKIN>;
+    	reset-names = "axi", "ahb", "pclkin";
+    	power-domains = <&power PX30_PD_VI>;
+            port {
+                    vip_in: endpoint {
+                            remote-endpoint = <&tw9900_out>;
+                    };
+            };
+    };
+...
-- 
2.25.4


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
