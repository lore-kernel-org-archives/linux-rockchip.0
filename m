Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 85327C52D6F
	for <linux-rockchip@archiver.kernel.org>; Fri,  2 Aug 2024 14:18:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tSa816RptS9gd0/CPa4yypm5d3ItieJbqZa0pNyEC6k=; b=Vz1EeAaQOSn+QO
	HBX/IwI+4p6H09C7ZwfCzL/9dGD8BtE4Y3cmFtuW8+dnpysIDbqIr9lB5hPG8Mcl6ebazt13JxepV
	kXGzx5mSiOBh68lTT6c8UdGZtKzG/epY4Hg5aAQrvrs3HtTRX48NNdrQciQh501zMFqq9E67EGhcG
	yT6mmqEER6qMI+I7ry+wI+iTnsp9cv4ZAPRYiWDuvuEyev2U4W0E748Bv6yGzG9ujsCkUvR2+F3kU
	5lmysqRIwEK/BN8v5X+iy9qjSE8DufIB4ZbXY5oBXZ/33rJu12NI0WHgHUdj9YBwOAbACC3F7GIa9
	vdv1m5EpmCb78Fl0S/Sw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZt6u-000000093Ob-220P;
	Fri, 02 Aug 2024 14:18:24 +0000
Received: from madrid.collaboradmins.com ([2a00:1098:ed:100::25])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZt5p-0000000934p-1SIm;
	Fri, 02 Aug 2024 14:17:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1722608234;
	bh=8kARDOUlK4s9GI+774yHjLROrqqrO3C+7cC+cdMj2NQ=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=JkvoRah1g3eD8NHJGmrqrznjOtjH2QcPUer0b0BQZfnn3bzvgzQnR9b3yS56ccwlS
	 TI8eYewYvg2FwwTLLBqeLqKT51qWA6zZlZ0D+ffW5C5f4a+fzLGpjntM2lwfNtrpLO
	 /OUKb9der7bz4ob6ljrJojdHGYklEniWn6duw1QZbhmH06348LXsZ42cbCCxCFoqtV
	 EMirmALuLj1stjWKk0oDtqKKxhKDUw3y3enhNgKrXiSWO10NOeGK4kGxrf/cKdxfOV
	 Ms6ramnHFjlAZC9f2Higg3aJswQ8rIt1/tgjsfhZyV0BFrTIe5S5nQ9l7tiKoNV4rx
	 mcOqxLFG2hWRA==
Received: from trenzalore.hitronhub.home (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: detlev)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id 9FF9E3782219;
	Fri,  2 Aug 2024 14:17:12 +0000 (UTC)
From: Detlev Casanova <detlev.casanova@collabora.com>
To: linux-kernel@vger.kernel.org
Cc: Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Elaine Zhang <zhangqing@rock-chips.com>,
	linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	Detlev Casanova <detlev.casanova@collabora.com>
Subject: [PATCH 1/3] dt-bindings: clock: add rk3576 cru bindings
Date: Fri,  2 Aug 2024 10:12:48 -0400
Message-ID: <20240802141816.288337-2-detlev.casanova@collabora.com>
X-Mailer: git-send-email 2.46.0
In-Reply-To: <20240802141816.288337-1-detlev.casanova@collabora.com>
References: <20240802141816.288337-1-detlev.casanova@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240802_071717_539383_96388979 
X-CRM114-Status: GOOD (  15.01  )
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

Document the device tree bindings of the rockchip rk3576 SoC
clock and reset unit.

Signed-off-by: Detlev Casanova <detlev.casanova@collabora.com>
---
 .../bindings/clock/rockchip,rk3576-cru.yaml   | 73 +++++++++++++++++++
 1 file changed, 73 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/clock/rockchip,rk3576-cru.yaml

diff --git a/Documentation/devicetree/bindings/clock/rockchip,rk3576-cru.yaml b/Documentation/devicetree/bindings/clock/rockchip,rk3576-cru.yaml
new file mode 100644
index 0000000000000..929eb6183bf18
--- /dev/null
+++ b/Documentation/devicetree/bindings/clock/rockchip,rk3576-cru.yaml
@@ -0,0 +1,73 @@
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/clock/rockchip,rk3576-cru.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Rockchip rk3576 Family Clock and Reset Control Module
+
+maintainers:
+  - Elaine Zhang <zhangqing@rock-chips.com>
+  - Heiko Stuebner <heiko@sntech.de>
+
+description: |
+  The RK3576 clock controller generates the clock and also implements a reset
+  controller for SoC peripherals. For example it provides SCLK_UART2 and
+  PCLK_UART2, as well as SRST_P_UART2 and SRST_S_UART2 for the second UART
+  module.
+  Each clock is assigned an identifier and client nodes can use this identifier
+  to specify the clock which they consume. All available clock and reset IDs
+  are defined as preprocessor macros in dt-binding headers.
+
+properties:
+  compatible:
+    enum:
+      - rockchip,rk3576-cru
+
+  reg:
+    maxItems: 1
+
+  "#clock-cells":
+    const: 1
+
+  "#reset-cells":
+    const: 1
+
+  clocks:
+    minItems: 2
+    maxItems: 2
+
+  clock-names:
+    items:
+      - const: xin24m
+      - const: xin32k
+
+  assigned-clocks: true
+
+  assigned-clock-rates: true
+
+  assigned-clock-parents: true
+
+  rockchip,grf:
+    $ref: /schemas/types.yaml#/definitions/phandle
+    description: >
+      phandle to the syscon managing the "general register files". It is used
+      for GRF muxes, if missing any muxes present in the GRF will not be
+      available.
+
+required:
+  - compatible
+  - reg
+  - "#clock-cells"
+  - "#reset-cells"
+
+additionalProperties: false
+
+examples:
+  - |
+    cru: clock-controller@27200000 {
+      compatible = "rockchip,rk3576-cru";
+      reg = <0xfd7c0000 0x5c000>;
+      #clock-cells = <1>;
+      #reset-cells = <1>;
+    };
-- 
2.46.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
