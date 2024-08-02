Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EE48AC3DA4A
	for <linux-rockchip@archiver.kernel.org>; Fri,  2 Aug 2024 21:41:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tSa816RptS9gd0/CPa4yypm5d3ItieJbqZa0pNyEC6k=; b=uTrDG7RkMgRfCB
	7hXx3QwNliA1ItaHyCi7fM6URC3vwRSBx4kWOFagKAb2Plr4WLLvagb18aAjARBORFToEhyug0q/I
	H1uWz8xc2M8iU5PIG+kzg1+1YY7/142rIfk4J6KKir9PtSzUQ3/kYR9BxTkoDxoqCplH90rB8N9z3
	vUpYOC7qV2bcSP3gFfBO0CnTPW4pn9L2a/tPViRcahMU3lCDL0TpNcqYmJF8tKQcCRG+3HxlTAto6
	5iT488xIutuTwRDVFRbpRSUF9EzwCB8jO7JPHh3aOxgymausGfDl/Il2sUnfCb3yVSOdVKtcIuL1X
	4VYixoaFX+/Duwswg3vA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sa01C-0000000A8yg-1Jod;
	Fri, 02 Aug 2024 21:40:58 +0000
Received: from madrid.collaboradmins.com ([46.235.227.194])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sa00A-0000000A8h3-1Wi1;
	Fri, 02 Aug 2024 21:39:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1722634792;
	bh=8kARDOUlK4s9GI+774yHjLROrqqrO3C+7cC+cdMj2NQ=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=mTSg/y5jI41lRHf3B9hbeIfBbNo3wITlfTKdXqnEbUIyvSSLIddX9KtDmZJN+k0X6
	 cA+0gnuOouSIa5zv1czj4lcawGTuop7QQGbTuMKbASt4DyEsFYlkY7VioKZkNoL7ax
	 yxhArH8QodEX1MLGzl1JuZO/6o1Kdi0Brmqq3orZUGknk78xroZBtMQsPpLUuOSPQD
	 v8BQGTf6OlR0MEUDL3eFd0KUeWWeWNMmcDo+GprX/DaUxWnJCwKLCullJLCK5hUzfO
	 aYS+WE7t/0nF+wCtD/YC0iOn/rIM6dFO0eV+FSz0btiC0Hf16OsYsjg/S3Gv4RZjgo
	 QPvMJiLJyxN2A==
Received: from trenzalore.hitronhub.home (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: detlev)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id 65AEE378221A;
	Fri,  2 Aug 2024 21:39:50 +0000 (UTC)
From: Detlev Casanova <detlev.casanova@collabora.com>
To: linux-kernel@vger.kernel.org
Cc: Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Elaine Zhang <zhangqing@rock-chips.com>,
	linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	kernel@collabora.com,
	Detlev Casanova <detlev.casanova@collabora.com>
Subject: [PATCH v2 1/3] dt-bindings: clock: add rk3576 cru bindings
Date: Fri,  2 Aug 2024 17:35:39 -0400
Message-ID: <20240802214053.433493-2-detlev.casanova@collabora.com>
X-Mailer: git-send-email 2.46.0
In-Reply-To: <20240802214053.433493-1-detlev.casanova@collabora.com>
References: <20240802214053.433493-1-detlev.casanova@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240802_143954_551357_A0E0859B 
X-CRM114-Status: GOOD (  15.02  )
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
