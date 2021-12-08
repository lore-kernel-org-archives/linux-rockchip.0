Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F1B85C433F5
	for <linux-rockchip@archiver.kernel.org>; Wed,  8 Dec 2021 15:19:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pJa1gJSDFen+ru4ysvcTNaQhKtxluZ6XyPxD46T0SxU=; b=mLwh2llC1mvkhV
	meN10iGuWNpYSYS9T/QY+ixIFptJSYMo/Du5BbY3Adeym1O6EN2JqlU5AjfX4L1C5Jj1X68u3UeEW
	cewiXgT+acRTuDkZxa5fGSxr+Jp9V/xYd+6qoiFtjNk1b6TcIn+UWGkikkbx0h/NAmMCvf85TBF7O
	cWgWfWw9Yl4/NG9QzBi6jWWnqU7JKaADlbBZCO9ATUtHf0jC7yX2XQ5Gs13C5AvIAGkvGTMtef1tA
	xJWkJc9BW08YXlXyZdBDgiBJuSOnU4065T7zFe2JeZfFVYSmVbjv71UvKd/NHA1+tzPNylP0TrWjU
	zfxxDzZxR4irHaPU5l7Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1muyjQ-00DB4j-V1; Wed, 08 Dec 2021 15:19:45 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1muydB-00D7bi-BU
 for linux-rockchip@bombadil.infradead.org; Wed, 08 Dec 2021 15:13:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
 :References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description;
 bh=exQ/682bIVteobKnSAndFJhOjAz7PqkjDZiFIMD3478=; b=g45SpwiE8pwc0SnQ046QcUjiDV
 L4+ueN7mg3oEPPh8DfioE3W46w+jyBT5U/gKXrCW9N41dnNy74sclqUTdTiJlEwQnJV8EtRD0PqBE
 xIGwIsIvAi1JD+bzlNhcSx+nhqeB16t5dOdNQ7I2/CJRtxx8TiWqOe+XJA7/zvBp6+Ah4MrD3TUbY
 3kSnHopuKUrwGQYGEtEIoQBEkO3m9I5w6PJ3mpYrKwpmvAAWBM3dZCq7Gw8OdEIdgv34nwKRcfbuA
 loG3eFSNylbbWkXAKvKxSkI4cX95ZUNzqCs7GydDYzpLIXJi63v33l0kPoWgzGtLUAZ2oJtCX2xjU
 x9UHlgTg==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1muyd3-000Cb3-LE
 for linux-rockchip@lists.infradead.org; Wed, 08 Dec 2021 15:13:15 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1muyco-0004UV-KI; Wed, 08 Dec 2021 16:12:54 +0100
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <sha@pengutronix.de>)
 id 1muycd-00FVZX-2Q; Wed, 08 Dec 2021 16:12:43 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: dri-devel@lists.freedesktop.org
Cc: linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, kernel@pengutronix.de,
 Andy Yan <andy.yan@rock-chips.com>,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Michael Riesch <michael.riesch@wolfvision.net>,
 Sandy Huang <hjc@rock-chips.com>,
 =?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
 Peter Geis <pgwipeout@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>
Subject: [PATCH 10/18] dt-bindings: display: rockchip: Add binding for VOP2
Date: Wed,  8 Dec 2021 16:12:22 +0100
Message-Id: <20211208151230.3695378-11-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20211208151230.3695378-1-s.hauer@pengutronix.de>
References: <20211208151230.3695378-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::28
X-SA-Exim-Mail-From: sha@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211208_151309_956297_0931B1AD 
X-CRM114-Status: GOOD (  15.99  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

The VOP2 is found on newer Rockchip SoCs like the rk3568 or the rk3566.
The binding differs slightly from the existing VOP binding, so add a new
binding file for it.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 .../display/rockchip/rockchip-vop2.yaml       | 118 ++++++++++++++++++
 1 file changed, 118 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/display/rockchip/rockchip-vop2.yaml

diff --git a/Documentation/devicetree/bindings/display/rockchip/rockchip-vop2.yaml b/Documentation/devicetree/bindings/display/rockchip/rockchip-vop2.yaml
new file mode 100644
index 0000000000000..6533c4ae4ec3a
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/rockchip/rockchip-vop2.yaml
@@ -0,0 +1,118 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/display/rockchip/rockchip-vop2.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Rockchip SoC display controller (VOP2)
+
+description:
+  VOP2 (Video Output Processor v2) is the display controller for the Rockchip
+  series of SoCs which transfers the image data from a video memory
+  buffer to an external LCD interface.
+
+maintainers:
+  - Sandy Huang <hjc@rock-chips.com>
+  - Heiko Stuebner <heiko@sntech.de>
+
+properties:
+  compatible:
+    enum:
+      - rockchip,rk3566-vop
+      - rockchip,rk3568-vop
+
+  reg:
+    minItems: 1
+    items:
+      - description:
+          Must contain one entry corresponding to the base address and length
+          of the register space.
+      - description:
+          Can optionally contain a second entry corresponding to
+          the CRTC gamma LUT address.
+
+  interrupts:
+    maxItems: 1
+    description:
+      The VOP interrupt is shared by several interrupt sources, such as
+      frame start (VSYNC), line flag and other status interrupts.
+
+  clocks:
+    items:
+      - description: Clock for ddr buffer transfer.
+      - description: Clock for the ahb bus to R/W the phy regs.
+      - description: Pixel clock for video port 0.
+      - description: Pixel clock for video port 1.
+      - description: Pixel clock for video port 2.
+
+  clock-names:
+    items:
+      - const: aclk_vop
+      - const: hclk_vop
+      - const: dclk_vp0
+      - const: dclk_vp1
+      - const: dclk_vp2
+
+  port:
+    $ref: /schemas/graph.yaml#/properties/port
+
+  assigned-clocks:
+    maxItems: 2
+
+  assigned-clock-rates:
+    maxItems: 2
+
+  iommus:
+    maxItems: 1
+
+  power-domains:
+    maxItems: 1
+
+required:
+  - compatible
+  - reg
+  - interrupts
+  - clocks
+  - clock-names
+  - port
+
+additionalProperties: false
+
+examples:
+  - |
+        #include <dt-bindings/clock/rk3568-cru.h>
+        #include <dt-bindings/interrupt-controller/arm-gic.h>
+        #include <dt-bindings/power/rk3568-power.h>
+        bus {
+            #address-cells = <2>;
+            #size-cells = <2>;
+            vop: vop@fe040000 {
+                compatible = "rockchip,rk3568-vop";
+                reg = <0x0 0xfe040000 0x0 0x3000>, <0x0 0xfe044000 0x0 0x1000>;
+                interrupts = <GIC_SPI 148 IRQ_TYPE_LEVEL_HIGH>;
+                clocks = <&cru ACLK_VOP>,
+                         <&cru HCLK_VOP>,
+                         <&cru DCLK_VOP0>,
+                         <&cru DCLK_VOP1>,
+                         <&cru DCLK_VOP2>;
+                clock-names = "aclk_vop",
+                              "hclk_vop",
+                              "dclk_vp0",
+                              "dclk_vp1",
+                              "dclk_vp2";
+                power-domains = <&power RK3568_PD_VO>;
+                iommus = <&vop_mmu>;
+                vop_out: port {
+                    #address-cells = <1>;
+                    #size-cells = <0>;
+                    vp0_out_dsi0: endpoint@0 {
+                        reg = <0>;
+                        remote-endpoint = <&dsi0_in_vp0>;
+                    };
+                    vp0_out_hdmi: endpoint@1 {
+                        reg = <1>;
+                        remote-endpoint = <&hdmi0_in_vp0>;
+                    };
+                };
+            };
+        };
-- 
2.30.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
