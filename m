Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C7C74CE7B1F
	for <linux-rockchip@archiver.kernel.org>; Fri, 29 Sep 2023 10:08:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Iu4Ra3Xns7RFYM2/jQ/C5O/krWCGyb1GUMwak15I3Yw=; b=glbT5ltwhvXpUA
	I0ZTlXyIQ5OihbF+u6Up3Z9h5IqcYDNEfRskqxZqoXZ68gPzG6nhL8f7B/PoiBxolQFhxDIoHYwQV
	ugt5ZmoWaZCuurbixKGhvM1zG14q0YDTvuk9SNDW/RVjmVaxbAfQM7PVniotvZzd2xUFoDN2JZTfw
	V20JJ3ImlHu7etWZ614YQsrmH7NOTJ8Wqxufe0eTxgSs40dE+74nPWmPbD4tdNRJDTlIp1rL6moNr
	X9i7JyupWdbGtA1fnTF5lHsx/XfOB5bgWfOfjSII4vF6U4EJYfqBCIYJRyIYJTEPsa7FJCIeUujVn
	/d+w6d9BhpgdDoRMpAWQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qmAQJ-007W67-2E;
	Fri, 29 Sep 2023 10:08:39 +0000
Received: from relay8-d.mail.gandi.net ([217.70.183.201])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qmAQF-007W4S-24
	for linux-rockchip@lists.infradead.org;
	Fri, 29 Sep 2023 10:08:38 +0000
Received: by mail.gandi.net (Postfix) with ESMTPSA id 4EFBD1BF208;
	Fri, 29 Sep 2023 10:08:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1695982111;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=rxUXtFNvlhvWGDgidVJ0uGnxIHZPkgv/fvj4acke/Uo=;
	b=l3TOIOUnznLh4g3Pn6jMqLu3euT6ITw4jujrNAl8w6J3ITMmItSZk3v0vSO3n3dnbFJHfQ
	6rq0rz68ze+D9VjoM9SQXPFqfihrHis6JJ2JoJSLCsjtPALtg3ror+RIhnKpxJpeTE5ONt
	Usk/Hy+amCFNYMBIpFHpMdlSzAf/jhr+7ClutrmdXty3AYQvpAF4SrY1SxX4iE1i2kZLzI
	7UPlkPLBBRuSFvYAz9cyNBv7IRbLkrMQsmmJy0uGOfvgcdGp0rbDUALxeM/wpspB6hE8Ha
	DxAaZtFDv203mwcOCBneIx0qe+g/hQpwM1FDK1LNzKNeWKBrtAWws4VMyyTfMg==
From: Mehdi Djait <mehdi.djait@bootlin.com>
To: mchehab@kernel.org,
	heiko@sntech.de,
	ezequiel@vanguardiasur.com.ar,
	hverkuil-cisco@xs4all.nl,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org
Cc: paul.kocialkowski@bootlin.com,
	miquel.raynal@bootlin.com,
	maxime.chevallier@bootlin.com,
	luca.ceresoli@bootlin.com,
	thomas.petazzoni@bootlin.com,
	linux-kernel@vger.kernel.org,
	linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	Mehdi Djait <mehdi.djait@bootlin.com>
Subject: [PATCH v6 1/3] media: dt-bindings: media: add rockchip-vip
Date: Fri, 29 Sep 2023 12:08:00 +0200
Message-ID: <6fa90df50c201dec70165c5138bc837f5a8829b5.1695981374.git.mehdi.djait@bootlin.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <cover.1695981374.git.mehdi.djait@bootlin.com>
References: <cover.1695981374.git.mehdi.djait@bootlin.com>
MIME-Version: 1.0
X-GND-Sasl: mehdi.djait@bootlin.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230929_030835_969100_7D5A7236 
X-CRM114-Status: GOOD (  11.80  )
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

Add a documentation for the Rockchip Camera Interface controller
binding.

This controller can be found on platforms such as the PX30 or
RK1808, RK3128 and RK3288. The PX30 is the only platform
supported so far.

Signed-off-by: Mehdi Djait <mehdi.djait@bootlin.com>
---
 .../bindings/media/rockchip-vip.yaml          | 91 +++++++++++++++++++
 1 file changed, 91 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/media/rockchip-vip.yaml

diff --git a/Documentation/devicetree/bindings/media/rockchip-vip.yaml b/Documentation/devicetree/bindings/media/rockchip-vip.yaml
new file mode 100644
index 000000000000..33c603209c39
--- /dev/null
+++ b/Documentation/devicetree/bindings/media/rockchip-vip.yaml
@@ -0,0 +1,91 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/media/rockchip-vip.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Rockchip VIP Camera Interface
+
+maintainers:
+  - Mehdi Djait <mehdi.djait@bootlin.com>
+
+description: |-
+  Rockchip Video Input Processor present on PX30, RK1808, RK3128 and RK3288
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
+      - description: PCLK
+
+  clock-names:
+    items:
+      - const: aclk
+      - const: hclk
+      - const: pclk
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
+
+  port:
+    $ref: /schemas/graph.yaml#/$defs/port-base
+    description: A connection to a sensor or decoder
+
+required:
+  - compatible
+  - reg
+  - interrupts
+  - clocks
+  - port
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+    #include <dt-bindings/clock/px30-cru.h>
+    #include <dt-bindings/power/px30-power.h>
+
+    parent0: parent {
+        #address-cells = <2>;
+        #size-cells = <2>;
+
+        vip: vip@ff490000 {
+            compatible = "rockchip,px30-vip";
+            reg = <0x0 0xff490000 0x0 0x200>;
+            interrupts = <GIC_SPI 69 IRQ_TYPE_LEVEL_HIGH>;
+            clocks = <&cru ACLK_CIF>, <&cru HCLK_CIF>, <&cru PCLK_CIF>;
+            clock-names = "aclk", "hclk", "pclk";
+            resets = <&cru SRST_CIF_A>, <&cru SRST_CIF_H>, <&cru SRST_CIF_PCLKIN>;
+            reset-names = "axi", "ahb", "pclkin";
+            power-domains = <&power PX30_PD_VI>;
+            port {
+                vip_in: endpoint {
+                    remote-endpoint = <&tw9900_out>;
+                };
+            };
+        };
+    };
+...
-- 
2.41.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
