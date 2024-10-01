Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 00381CEB2F0
	for <linux-rockchip@archiver.kernel.org>; Tue,  1 Oct 2024 04:30:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fqP2/i7HHDZbgamvayYGh3n0LETHTgEkWcXWEePiOR0=; b=owi64cnJdUMY+1
	4GMt21d4Qx6xh+az2A+YYuHrD0lX6sk/JsSHBznhY3vOZgT61bLUXL8N8tb3xuy9erAXDF7LF9sL6
	k7WewqCrP+AfA2DqJm/EaZjR3Wvm7GxSUkIEjEsdcrjxpUovrlbYiDlfW9ZFSRIvD8wlpJGBi/zxo
	jGVbxwuvFhX3EhLYeq5l7SoNg8vEhHxlS3zcg1XJu5L8vsTwftw7uO2+rOGZHvrOSv9TrnzPZVO33
	4160ukLLhQ/4qr8BUea4w9819kzpQ/u10bXGamf/PLVlTLlf0pH8siR5uuzEy1VfbkGHdUYK40FPU
	MDQKi5I5NWZ7oiEzKRcA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1svUX1-00000001ZGQ-3qm1;
	Tue, 01 Oct 2024 04:30:39 +0000
Received: from layka.disroot.org ([178.21.23.139])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1svUSJ-00000001YOd-0Lz1;
	Tue, 01 Oct 2024 04:25:48 +0000
Received: from mail01.disroot.lan (localhost [127.0.0.1])
	by disroot.org (Postfix) with ESMTP id E3B8023DA2;
	Tue,  1 Oct 2024 06:25:45 +0200 (CEST)
X-Virus-Scanned: SPAM Filter at disroot.org
Received: from layka.disroot.org ([127.0.0.1])
 by localhost (disroot.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 1GZLnuBHkKf2; Tue,  1 Oct 2024 06:25:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=disroot.org; s=mail;
	t=1727756745; bh=5MrQbBokfZMOsLxeFgXKXqngGLTWAVulicUDVAiD3dc=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References;
	b=ZLb3Hg5JpYgyHICNo8PHo4FdgSJ1G15e47gYb5CK8D2WLjhQ5T/fw6PIa1TmdV9SM
	 8eq+uFmPbLAqquCYQoXg+fLbNlKvgQcuUcW2DTiDRvvsDDKJy0Gj/Ei9O/G7r8eikk
	 QcV0pCNdKtAN8Qfc7yJf6LPleddthpbxyOotK/QQx3yFtKKSpygBMYGK3+LrZXnfXY
	 ItcZlTAkQ04tyU1JYY+2F4u7fJS6wCzJwpfHdmUr5rzpxbGZY58g8pExdOR1yQoLk6
	 VOOKD62hErQXD6SEwCznQCFi1hnBMIaSV5gnNjF0pTa5LoCdOazF1MmfU+sxZAt3v7
	 xcB56LadeQYQQ==
From: Yao Zi <ziyao@disroot.org>
To: Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Philipp Zabel <p.zabel@pengutronix.de>
Cc: linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Celeste Liu <CoelacanthusHex@gmail.com>,
	Yao Zi <ziyao@disroot.org>
Subject: [PATCH 3/8] dt-bindings: clock: Add rockchip,rk3528-cru
Date: Tue,  1 Oct 2024 04:23:57 +0000
Message-ID: <20241001042401.31903-5-ziyao@disroot.org>
In-Reply-To: <20241001042401.31903-2-ziyao@disroot.org>
References: <20241001042401.31903-2-ziyao@disroot.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240930_212547_276778_832E9897 
X-CRM114-Status: GOOD (  11.70  )
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

Document Rockchip RK3528 clock and reset unit.

Signed-off-by: Yao Zi <ziyao@disroot.org>
---
 .../bindings/clock/rockchip,rk3528-cru.yaml   | 63 +++++++++++++++++++
 1 file changed, 63 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/clock/rockchip,rk3528-cru.yaml

diff --git a/Documentation/devicetree/bindings/clock/rockchip,rk3528-cru.yaml b/Documentation/devicetree/bindings/clock/rockchip,rk3528-cru.yaml
new file mode 100644
index 000000000000..ae51dfde5bb9
--- /dev/null
+++ b/Documentation/devicetree/bindings/clock/rockchip,rk3528-cru.yaml
@@ -0,0 +1,63 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/clock/rockchip,rk3528-cru.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Rockchip RK3528 Clock and Reset Controller
+
+maintainers:
+  - Yao Zi <ziyao@disroot.org>
+
+description: |
+  The RK3528 clock controller generates the clock and also implements a reset
+  controller for SoC peripherals. For example, it provides SCLK_UART0 and
+  PCLK_UART0 as well as SRST_P_UART0 and SRST_S_UART0 for the first UART
+  module.
+  Each clock is assigned an identifier, consumer nodes can use it to specify
+  the clock. All available clock and reset IDs are defined in dt-binding
+  headers.
+
+properties:
+  compatible:
+    enum:
+      - rockchip,rk3528-cru
+
+  reg:
+    maxItems: 1
+
+  assigned-clocks: true
+
+  assigned-clock-rates: true
+
+  clocks:
+    minItems: 2
+    maxItems: 2
+
+  clock-names:
+    items:
+      - const: xin24m
+      - const: phy_50m_out
+
+  "#clock-cells":
+    const: 1
+
+  "#reset-cells":
+    const: 1
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
+    cru: clock-controller@ff4a0000 {
+        compatible = "rockchip,rk3528-cru";
+        reg = <0xff4a0000 0x30000>;
+        #clock-cells = <1>;
+        #reset-cells = <1>;
+    };
-- 
2.46.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
