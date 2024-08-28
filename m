Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B245BC54E93
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Aug 2024 10:20:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6evOCZKnFSYAF8Zy0j9oN8uDeHpFsyvSvYCUhwtcQKE=; b=y2SuwDFCHngeB2
	sq9vybpU9psilcSQaHBeojvJhRl/Zy7eZDVAmI1EOoz/4S7d2leW29asoOhvLxvYA00ytrCL7nAPr
	kUhCJ7un9imBsMPDSA6uxwq2FJE4D6H18LdL8rmsHOqHZswGoxnj1mDn2RHDykhUn7jhLuzAlJTcF
	twJ9hObx/G4DLhJces3i6NkrWhsBLVb+FnmkDma9aofXoilIY3w8/UYgFfRXg0Zk6H6DZuwr1lxZD
	2reR6pir4pAg9MYOuIf4CaCpzltvr7+JkgS8SZzVQ4fiJAbJxhYRXzrWwX3caEFHb854VBvJaCiaE
	EWA98UZDXcOLrA/Rl+/w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sjFn8-0000000EuPO-0W4S;
	Wed, 28 Aug 2024 10:20:42 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sjFhx-0000000EsRX-2ZHC;
	Wed, 28 Aug 2024 10:15:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:MIME-Version:References:
	In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=H2K0zAoArSYqxte5X2D4PhODsFIDA8efuofXW5WP5do=; b=Ng3MEAGJ2czRhxq3mImVOHknWx
	TEbw0Nm6FsoEYe7ymgW0ivBDzvWutrqN32bLfl6BKPBVNDvnwo35StNPtfpifr4ziIx1GQLOqpjGv
	omypbq5QJk+T/Npzv5sd6zHn45pL2Y/d/LuHx8ogdUi3lpZoZrIN0Pn/jsoSUe8oe5GI0vy+95DkD
	inFffYhQIrTtO9uLNbqNbakQ2mDFPgNfDV6MxOx8j7Fl/Pt8RzW6fwz3ySL+PNk1KgflXSRNUXe3i
	mkA7Y2pE+ahLJaxsK8lrVDVGbnJYGsJO0xqeiuOEL1FYb2ujXU5RNU2HRs8GbD5IDwCctGL4n9SRo
	B57WXp2w==;
Received: from i5e8616cd.versanet.de ([94.134.22.205] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1sjFhs-0004M3-94; Wed, 28 Aug 2024 12:15:16 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: mturquette@baylibre.com,
	sboyd@kernel.org
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	linux-clk@vger.kernel.org,
	heiko@sntech.de,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: [PATCH v3 1/5] dt-bindings: clocks: add binding for gated-fixed-clocks
Date: Wed, 28 Aug 2024 12:14:59 +0200
Message-ID: <20240828101503.1478491-2-heiko@sntech.de>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240828101503.1478491-1-heiko@sntech.de>
References: <20240828101503.1478491-1-heiko@sntech.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240828_031521_677684_CA4A228E 
X-CRM114-Status: GOOD (  16.60  )
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

In contrast to fixed clocks that are described as ungateable, boards
sometimes use additional oscillators for things like PCIe reference
clocks, that need actual supplies to get enabled and enable-gpios to be
toggled for them to work.

This adds a binding for such oscillators that are not configurable
themself, but need to handle supplies for them to work.

In schematics they often can be seen as

         ----------------
Enable - | 100MHz,3.3V, | - VDD
         |    3225      |
   GND - |              | - OUT
         ----------------

or similar. The enable pin might be separate but can also just be tied
to the vdd supply, hence it is optional in the binding.

Signed-off-by: Heiko Stuebner <heiko@sntech.de>
---
 .../bindings/clock/gated-fixed-clock.yaml     | 49 +++++++++++++++++++
 1 file changed, 49 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/clock/gated-fixed-clock.yaml

diff --git a/Documentation/devicetree/bindings/clock/gated-fixed-clock.yaml b/Documentation/devicetree/bindings/clock/gated-fixed-clock.yaml
new file mode 100644
index 000000000000..76d264770d35
--- /dev/null
+++ b/Documentation/devicetree/bindings/clock/gated-fixed-clock.yaml
@@ -0,0 +1,49 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/clock/gated-fixed-clock.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Gated Fixed clock
+
+maintainers:
+  - Heiko Stuebner <heiko@sntech.de>
+
+properties:
+  compatible:
+    const: gated-fixed-clock
+
+  "#clock-cells":
+    const: 0
+
+  clock-frequency: true
+
+  clock-output-names:
+    maxItems: 1
+
+  enable-gpios:
+    description:
+      Contains a single GPIO specifier for the GPIO that enables and disables
+      the oscillator.
+    maxItems: 1
+
+  vdd-supply:
+    description: handle of the regulator that provides the supply voltage
+
+required:
+  - compatible
+  - "#clock-cells"
+  - clock-frequency
+  - vdd-supply
+
+additionalProperties: false
+
+examples:
+  - |
+    voltage-oscillator {
+      compatible = "gated-fixed-clock";
+      #clock-cells = <0>;
+      clock-frequency = <1000000000>;
+      vdd-supply = <&reg_vdd>;
+    };
+...
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
