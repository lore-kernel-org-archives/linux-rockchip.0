Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5A268D2F7C0
	for <linux-rockchip@archiver.kernel.org>; Wed, 16 Oct 2024 21:16:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=P5Yeh//vBuehFgkd3nDJb+lYkjhlNIDl1FHOAmVA8gQ=; b=wI5M6qZm5wYh/9
	Upu4HUnAql18gwdKoVtnNbxkL0Gw2IejnS4pcfzb/rBEuna3hVvRKkNQSHlFPSTiJvXhzQROzU4Oe
	QF0bJ/7zfBUKZzzw17RGhrRmcB8ogIa3ZY5UGFpCw8iGG7KY39qEX+P0CQjIYLhdG8Ck3bIoPYmGO
	T//ruehqPpJOtacIgm6ZzUyEJEOUifrDOkyVEU6bguPuA3knSW/MRlg2HAPzbeQxTbMXqq7fcnnAX
	QdedH/+4HuLWSXAHqnG0aAAWG1iXPPz5mT7zs8QkzHGzdZHjODefUB5zDX+eEx1Mv/2fAw9Lz8Gt+
	YV1TV3LVG532ImFf+ndQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t1BN4-0000000D1sJ-2E8F;
	Wed, 16 Oct 2024 21:15:54 +0000
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t1AIj-0000000Ctdc-3690;
	Wed, 16 Oct 2024 20:07:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1729109240;
	bh=NjGZnIenb0EaKd6qu5B3MX3MiIxc8MpfHJe6mJyYUJY=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=BBjXz18+YrR2tH/f/3u1nZD0UZIu+cXYtYjeQk6KvwJK6C4b3pmofodDbn1fsPpKm
	 p8mcSE4RJUd6P1yJoKGiUyu7qD14XUKdFrj0KdRUYMaKPwZjcxcIyZPJkq+Stj5ZkI
	 jHHZiRBdI60imhWVsXJo/uBDXcYTbRyLyW1CXYx2TvFbN7m674SZRefEIUbL1RlRIT
	 twqvu3izJT2aNU/dprSMQPsjwpE69faJvtq8NZV/OcA6ioHiSwdJCtMV03i48Bear0
	 fMSPG7G8dUEM/nhhwx4pba2SnlvHg7GIMVrbKm2/SYde+zyb+exeqigV7+z1Se9zOy
	 E2b5CzC2M2ncA==
Received: from localhost (unknown [188.24.146.62])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (prime256v1) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 0999117E36CD;
	Wed, 16 Oct 2024 22:07:20 +0200 (CEST)
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Date: Wed, 16 Oct 2024 23:06:52 +0300
Subject: [PATCH v10 2/3] dt-bindings: display: rockchip: Add schema for
 RK3588 HDMI TX Controller
MIME-Version: 1.0
Message-Id: <20241016-b4-rk3588-bridge-upstream-v10-2-87ef92a6d14e@collabora.com>
References: <20241016-b4-rk3588-bridge-upstream-v10-0-87ef92a6d14e@collabora.com>
In-Reply-To: <20241016-b4-rk3588-bridge-upstream-v10-0-87ef92a6d14e@collabora.com>
To: Andrzej Hajda <andrzej.hajda@intel.com>, 
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>, 
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, 
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 David Airlie <airlied@gmail.com>, Sandy Huang <hjc@rock-chips.com>, 
 =?utf-8?q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
 Andy Yan <andy.yan@rock-chips.com>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Mark Yao <markyao0591@gmail.com>, 
 Sascha Hauer <s.hauer@pengutronix.de>, Simona Vetter <simona@ffwll.ch>, 
 Simona Vetter <simona.vetter@ffwll.ch>
Cc: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 devicetree@vger.kernel.org, kernel@collabora.com, 
 Alexandre ARNOUD <aarnoud@me.com>, Luis de Arquer <ldearquer@gmail.com>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241016_130721_986348_3C3EEFE3 
X-CRM114-Status: GOOD (  12.70  )
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

Rockchip RK3588 SoC integrates the Synopsys DesignWare HDMI 2.1
Quad-Pixel (QP) TX controller IP.

Since this is a new IP block, quite different from those used in the
previous generations of Rockchip SoCs, add a dedicated binding file.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
---
 .../rockchip/rockchip,rk3588-dw-hdmi-qp.yaml       | 188 +++++++++++++++++++++
 1 file changed, 188 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/rockchip/rockchip,rk3588-dw-hdmi-qp.yaml b/Documentation/devicetree/bindings/display/rockchip/rockchip,rk3588-dw-hdmi-qp.yaml
new file mode 100644
index 0000000000000000000000000000000000000000..d8e761865f27e284d168d08c7599e4cd31a4c015
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/rockchip/rockchip,rk3588-dw-hdmi-qp.yaml
@@ -0,0 +1,188 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/display/rockchip/rockchip,rk3588-dw-hdmi-qp.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Rockchip DW HDMI QP TX Encoder
+
+maintainers:
+  - Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
+
+description: |
+  Rockchip RK3588 SoC integrates the Synopsys DesignWare HDMI QP TX controller
+  IP and a HDMI/eDP TX Combo PHY based on a Samsung IP block, providing the
+  following features, among others:
+
+  * Fixed Rate Link (FRL)
+  * Display Stream Compression (DSC)
+  * 4K@120Hz and 8K@60Hz video modes
+  * Variable Refresh Rate (VRR) including Quick Media Switching (QMS)
+  * Fast Vactive (FVA)
+  * SCDC I2C DDC access
+  * Multi-stream audio
+  * Enhanced Audio Return Channel (EARC)
+
+allOf:
+  - $ref: /schemas/sound/dai-common.yaml#
+
+properties:
+  compatible:
+    enum:
+      - rockchip,rk3588-dw-hdmi-qp
+
+  reg:
+    maxItems: 1
+
+  clocks:
+    items:
+      - description: Peripheral/APB bus clock
+      - description: EARC RX biphase clock
+      - description: Reference clock
+      - description: Audio interface clock
+      - description: TMDS/FRL link clock
+      - description: Video datapath clock
+
+  clock-names:
+    items:
+      - const: pclk
+      - const: earc
+      - const: ref
+      - const: aud
+      - const: hdp
+      - const: hclk_vo1
+
+  interrupts:
+    items:
+      - description: AVP Unit interrupt
+      - description: CEC interrupt
+      - description: eARC RX interrupt
+      - description: Main Unit interrupt
+      - description: HPD interrupt
+
+  interrupt-names:
+    items:
+      - const: avp
+      - const: cec
+      - const: earc
+      - const: main
+      - const: hpd
+
+  phys:
+    maxItems: 1
+    description: The HDMI/eDP PHY
+
+  ports:
+    $ref: /schemas/graph.yaml#/properties/ports
+
+    properties:
+      port@0:
+        $ref: /schemas/graph.yaml#/properties/port
+        description: Video port for RGB/YUV input.
+
+      port@1:
+        $ref: /schemas/graph.yaml#/properties/port
+        description: Video port for HDMI/eDP output.
+
+    required:
+      - port@0
+      - port@1
+
+  power-domains:
+    maxItems: 1
+
+  resets:
+    maxItems: 2
+
+  reset-names:
+    items:
+      - const: ref
+      - const: hdp
+
+  "#sound-dai-cells":
+    const: 0
+
+  rockchip,grf:
+    $ref: /schemas/types.yaml#/definitions/phandle
+    description:
+      Some HDMI QP related data is accessed through SYS GRF regs.
+
+  rockchip,vo-grf:
+    $ref: /schemas/types.yaml#/definitions/phandle
+    description:
+      Additional HDMI QP related data is accessed through VO GRF regs.
+
+required:
+  - compatible
+  - reg
+  - clocks
+  - clock-names
+  - interrupts
+  - interrupt-names
+  - phys
+  - ports
+  - resets
+  - reset-names
+  - rockchip,grf
+  - rockchip,vo-grf
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/rockchip,rk3588-cru.h>
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+    #include <dt-bindings/interrupt-controller/irq.h>
+    #include <dt-bindings/power/rk3588-power.h>
+    #include <dt-bindings/reset/rockchip,rk3588-cru.h>
+
+    soc {
+      #address-cells = <2>;
+      #size-cells = <2>;
+
+      hdmi@fde80000 {
+        compatible = "rockchip,rk3588-dw-hdmi-qp";
+        reg = <0x0 0xfde80000 0x0 0x20000>;
+        clocks = <&cru PCLK_HDMITX0>,
+                 <&cru CLK_HDMITX0_EARC>,
+                 <&cru CLK_HDMITX0_REF>,
+                 <&cru MCLK_I2S5_8CH_TX>,
+                 <&cru CLK_HDMIHDP0>,
+                 <&cru HCLK_VO1>;
+        clock-names = "pclk", "earc", "ref", "aud", "hdp", "hclk_vo1";
+        interrupts = <GIC_SPI 169 IRQ_TYPE_LEVEL_HIGH 0>,
+                     <GIC_SPI 170 IRQ_TYPE_LEVEL_HIGH 0>,
+                     <GIC_SPI 171 IRQ_TYPE_LEVEL_HIGH 0>,
+                     <GIC_SPI 172 IRQ_TYPE_LEVEL_HIGH 0>,
+                     <GIC_SPI 360 IRQ_TYPE_LEVEL_HIGH 0>;
+        interrupt-names = "avp", "cec", "earc", "main", "hpd";
+        phys = <&hdptxphy_hdmi0>;
+        power-domains = <&power RK3588_PD_VO1>;
+        resets = <&cru SRST_HDMITX0_REF>, <&cru SRST_HDMIHDP0>;
+        reset-names = "ref", "hdp";
+        rockchip,grf = <&sys_grf>;
+        rockchip,vo-grf = <&vo1_grf>;
+        #sound-dai-cells = <0>;
+
+        ports {
+          #address-cells = <1>;
+          #size-cells = <0>;
+
+          port@0 {
+            reg = <0>;
+
+            hdmi0_in_vp0: endpoint {
+              remote-endpoint = <&vp0_out_hdmi0>;
+            };
+          };
+
+          port@1 {
+            reg = <1>;
+
+            hdmi0_out_con0: endpoint {
+              remote-endpoint = <&hdmi_con0_in>;
+            };
+          };
+        };
+      };
+    };

-- 
2.47.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
