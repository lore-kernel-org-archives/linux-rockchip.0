Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0A322C3DA47
	for <linux-rockchip@archiver.kernel.org>; Tue,  9 Jul 2024 12:32:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CUSKijRkYP2c/rjAoHax8YGDcdf+G7V68MnEAefITNg=; b=vsVj7Dq1dMnncx
	5Cgoo0BB2KGo/8fI1JIH8YfAoCknDU5VjcqNbqVukMRi6QQw0UnTZU8OThM2xDYe+EdW1F1uhLOMM
	aNW157rfqpuVKPN+mF94+eS75bNHePsToYJmPY4ySLeMlvucP/fWa4Eb3aL93UM/cCPJZvyAaNOqe
	GffiaMTuf+JDgl1jcz9GqbGRTbeekr2IoGXQs3IU7yQI4k1VGmZADzQnKgqvLaT+1q2W6209+wtdk
	pDrPNCjjVSV0pppYgTm7oW3yanSAZVhHdKqRAmTEJoKTsVYktAS+hj8RGd9Qi0kMOGVI9OM5sIPHA
	SycE+GdzLRaRMrtltf8g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sRA15-000000078X8-3pAQ;
	Tue, 09 Jul 2024 12:32:19 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sRA0a-000000078Kx-0wCz;
	Tue, 09 Jul 2024 12:31:49 +0000
Received: from i5e860d18.versanet.de ([94.134.13.24] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1sRA0T-00074P-3S; Tue, 09 Jul 2024 14:31:41 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: mturquette@baylibre.com,
	sboyd@kernel.org
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	heiko@sntech.de,
	quentin.schulz@cherry.de,
	linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: [PATCH 1/6] dt-bindings: clocks: add binding for generic clock-generators
Date: Tue,  9 Jul 2024 14:31:16 +0200
Message-Id: <20240709123121.1452394-2-heiko@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240709123121.1452394-1-heiko@sntech.de>
References: <20240709123121.1452394-1-heiko@sntech.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240709_053148_285370_A0FD7C7D 
X-CRM114-Status: GOOD (  18.04  )
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
sometimes use additional clock generators for things like PCIe reference
clocks, that need actual supplies to get enabled and enable-gpios to be
toggled for them to work.

This adds a binding for such clock generators that are not configurable
themself, but need to handle supplies for them to work.

While in a lot of cases the type of the IC used is described in board
schematics, in some cases just a generic type description like
"100MHz, 3.3V" might also be used. The binding therefore allows both
cases. Specifying the type is of course preferred.

The clock-frequency is set in devicetree, because while some clock
generators have pins to decide between multipls output rates, those
are generally set statically on the board-layout-level.

Signed-off-by: Heiko Stuebner <heiko@sntech.de>
---
 .../bindings/clock/clock-generator.yaml       | 62 +++++++++++++++++++
 1 file changed, 62 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/clock/clock-generator.yaml

diff --git a/Documentation/devicetree/bindings/clock/clock-generator.yaml b/Documentation/devicetree/bindings/clock/clock-generator.yaml
new file mode 100644
index 0000000000000..f44e61e414e89
--- /dev/null
+++ b/Documentation/devicetree/bindings/clock/clock-generator.yaml
@@ -0,0 +1,62 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/clock/clock-generator.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Simple clock generators
+
+maintainers:
+  - Heiko Stuebner <heiko@sntech.de>
+
+properties:
+  $nodename:
+    anyOf:
+      - description:
+          Preferred name is 'clock-<freq>' with <freq> being the output
+          frequency as defined in the 'clock-frequency' property.
+        pattern: "^clock-([0-9]+|[a-z0-9-]+)$"
+      - description: Any name allowed
+        deprecated: true
+
+  compatible:
+    oneOf:
+      - const: clock-generator
+      - items:
+          - enum:
+              - diodes,pi6c557-03b
+              - diodes,pi6c557-05b
+          - const: clock-generator
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
+      the clock generator.
+    maxItems: 1
+
+  vdd-supply:
+    description: handle of the regulator that provides the supply voltage
+
+required:
+  - compatible
+  - "#clock-cells"
+  - clock-frequency
+
+additionalProperties: false
+
+examples:
+  - |
+    clock {
+      compatible = "clock-generator";
+      #clock-cells = <0>;
+      clock-frequency = <1000000000>;
+    };
+...
-- 
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
