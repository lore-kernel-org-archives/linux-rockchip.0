Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AC2B9C28B22
	for <linux-rockchip@archiver.kernel.org>; Wed,  5 Mar 2025 21:35:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:Message-Id:
	MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YxlA1ZhyNNd9xsN6mEtbDT3kz+johmeGFCh8jqn20IA=; b=0s2RtLIc1MhR0V
	SzlJercKCdD9d2ArE9r/Qonx1iHv/g+y1yiMjbNvGK9P4jnR/rETcjGehRLgSxsCLupptOb0yiHNS
	xNPVgXC0X24cHrrOviVQ0ckIcBQpazNIyeIoNVF5+D8uOIA5tcX9wJMquiPH8XpDwGGUTCAXIzDbG
	s2pSHzQ67pazs7FdivOoJ9xdPcGLTfs6+ySmrcZZHz3Haw+qqUchLFfNhsy7RNWPVXCt9HRTOjTdT
	56MIVfZb40aOe2CpIn+4qNawfvOvf/+jmqEJnK+2nDdJs11MnboP3DBsCWRY6zn0JYstjWzmpkaST
	v6F/aAAjEcDd1uS8Kbwg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tpwOM-00000009MrF-3bV7;
	Wed, 05 Mar 2025 21:35:02 +0000
Received: from sender4-pp-f112.zoho.com ([136.143.188.112])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tpwF2-00000009LA1-37g3;
	Wed, 05 Mar 2025 21:25:26 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1741209913; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=E8PM/x/VhWtwVwJtIUaf6T97P1i1ptg1XRIHZtsHQPYh9Xyfu8ejxx5i4MWWn5WR23UoNpfEcJWW6+GyhYf16EO5AukFqB7Vw1EN354WDouIy1KKoWnfIaAonBV3PhL1rPhZkELP9z6DnBi8LU8MODWSq/58tf8ZnlGMENxvtmE=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1741209913; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=j1d+wU9HbyuCcHJ1x5iw3HpFGebD1mUTzyLgQ69TKIs=; 
	b=Xx4zBl2jfDpCHhVgutxuOvhfuChrYNUCirntHGmnkeAWpHqkK6xih+5OX9Xbaunfn5UhnREmJaGGovDRZZeWckH9Y2/dEOqVbCxn4EfI9nWmrpWPF/xwbyVWK56/6Qv2dCplzElwbjNrSKrMIj5G0PD9TRg+BeZRbhrXnPoTk6M=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=nicolas.frattaroli@collabora.com;
	dmarc=pass header.from=<nicolas.frattaroli@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1741209913;
	s=zohomail; d=collabora.com; i=nicolas.frattaroli@collabora.com;
	h=From:From:Date:Date:Subject:Subject:MIME-Version:Content-Type:Content-Transfer-Encoding:Message-Id:Message-Id:References:In-Reply-To:To:To:Cc:Cc:Reply-To;
	bh=j1d+wU9HbyuCcHJ1x5iw3HpFGebD1mUTzyLgQ69TKIs=;
	b=HV9cBFswLKdX7cfqw0vSV69RkYYtc+qgW4mgG7DHw/nV55NxjatoeZ/SnwUhq4wt
	Xqe6y5FvZ5FWy49Tm9cwVZRO33LcYTfw36nwS6o756FDBTdVHhlVPJk+QjUOTYwctmK
	3V2ycnv6BKI3tOwgMCGRBWSt9Fn+cQH1g9uKOqgo=
Received: by mx.zohomail.com with SMTPS id 1741209910870600.8165634885264;
	Wed, 5 Mar 2025 13:25:10 -0800 (PST)
From: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
Date: Wed, 05 Mar 2025 22:24:23 +0100
Subject: [PATCH 3/7] ASoC: dt-bindings: add schema for rockchip SAI
 controllers
MIME-Version: 1.0
Message-Id: <20250305-rk3576-sai-v1-3-64e6cf863e9a@collabora.com>
References: <20250305-rk3576-sai-v1-0-64e6cf863e9a@collabora.com>
In-Reply-To: <20250305-rk3576-sai-v1-0-64e6cf863e9a@collabora.com>
To: Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
 Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>, 
 Philipp Zabel <p.zabel@pengutronix.de>, 
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, 
 Sugar Zhang <sugar.zhang@rock-chips.com>
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250305_132524_827006_7B79438D 
X-CRM114-Status: GOOD (  17.63  )
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
Cc: devicetree@vger.kernel.org, Sebastian Reichel <sebastian.reichel@collabora.com>, linux-sound@vger.kernel.org, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, kernel@collabora.com, Luca Ceresoli <luca.ceresoli@bootlin.com>, linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Rockchip introduced a new audio controller called the "Serial Audio
Interface", or "SAI" for short, on some of their newer SoCs. In
particular, this controller is used several times on the RK3576 SoC.

Add a schema for it, with only an RK3576 compatible for now. Other SoCs
may follow as mainline support for them lands.

Signed-off-by: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
---
 .../devicetree/bindings/sound/rockchip,sai.yaml    | 151 +++++++++++++++++++++
 MAINTAINERS                                        |   6 +
 2 files changed, 157 insertions(+)

diff --git a/Documentation/devicetree/bindings/sound/rockchip,sai.yaml b/Documentation/devicetree/bindings/sound/rockchip,sai.yaml
new file mode 100644
index 0000000000000000000000000000000000000000..8f5a292a7f2a6c737d983d00cbe40ec45bfa6249
--- /dev/null
+++ b/Documentation/devicetree/bindings/sound/rockchip,sai.yaml
@@ -0,0 +1,151 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/sound/rockchip,sai.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Rockchip Serial Audio Interface Controller
+
+description:
+  The Rockchip Serial Audio Interface (SAI) controller is a flexible audio
+  controller that implements the I2S, I2S/TDM and the PDM standards.
+
+maintainers:
+  - Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
+
+allOf:
+  - $ref: dai-common.yaml#
+
+properties:
+  compatible:
+    const: rockchip,rk3576-sai
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+  dmas:
+    minItems: 1
+    maxItems: 2
+
+  dma-names:
+    minItems: 1
+    maxItems: 2
+    oneOf:
+      - const: tx
+      - const: rx
+      - items:
+          - const: tx
+          - const: rx
+
+  clocks:
+    items:
+      - description: master audio clock
+      - description: AHB clock driving the interface
+
+  clock-names:
+    items:
+      - const: mclk
+      - const: hclk
+
+  resets:
+    minItems: 1
+    maxItems: 2
+    description: resets for the mclk domain and ahb domain
+
+  reset-names:
+    minItems: 1
+    items:
+      - const: m
+      - const: h
+
+  port:
+    $ref: audio-graph-port.yaml#
+    unevaluatedProperties: false
+
+  power-domains:
+    maxItems: 1
+
+  "#sound-dai-cells":
+    const: 0
+
+  rockchip,sai-rx-route:
+    $ref: /schemas/types.yaml#/definitions/uint32-array
+    description:
+      Defines the mapping of the controller's SDI ports to actual input lanes,
+      as well as the number of input lanes.
+      rockchip,sai-rx-route = <3> would mean sdi3 is receiving from data0, and
+      that there is only one receiving lane.
+      This property's absence is to be understood as only one receiving lane
+      being used if the controller has capture capabilities.
+    maxItems: 4
+    items:
+      enum: [0, 1, 2, 3]
+
+  rockchip,sai-tx-route:
+    $ref: /schemas/types.yaml#/definitions/uint32-array
+    description:
+      Defines the mapping of the controller's SDO ports to actual output lanes,
+      as well as the number of output lanes.
+      rockchip,sai-tx-route = <3> would mean sdo3 is sending to data0, and
+      that there is only one transmitting lane.
+      This property's absence is to be understood as only one transmitting lane
+      being used if the controller has playback capabilities.
+    maxItems: 4
+    items:
+      enum: [0, 1, 2, 3]
+
+  rockchip,always-on:
+    type: boolean
+    description:
+      The hardware requires this controller to remain turned on.
+
+
+required:
+  - compatible
+  - reg
+  - dmas
+  - dma-names
+  - clocks
+  - clock-names
+  - "#sound-dai-cells"
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/rockchip,rk3576-cru.h>
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+    #include <dt-bindings/interrupt-controller/irq.h>
+    #include <dt-bindings/pinctrl/rockchip.h>
+    #include <dt-bindings/power/rockchip,rk3576-power.h>
+    #include <dt-bindings/reset/rockchip,rk3576-cru.h>
+
+    bus {
+        #address-cells = <2>;
+        #size-cells = <2>;
+        sai1: sai@2a610000 {
+            compatible = "rockchip,rk3576-sai";
+            reg = <0x0 0x2a610000 0x0 0x1000>;
+            interrupts = <GIC_SPI 188 IRQ_TYPE_LEVEL_HIGH>;
+            clocks = <&cru MCLK_SAI1_8CH>, <&cru HCLK_SAI1_8CH>;
+            clock-names = "mclk", "hclk";
+            dmas = <&dmac0 2>, <&dmac0 3>;
+            dma-names = "tx", "rx";
+            power-domains = <&power RK3576_PD_AUDIO>;
+            resets = <&cru SRST_M_SAI1_8CH>, <&cru SRST_H_SAI1_8CH>;
+            reset-names = "m", "h";
+            pinctrl-names = "default";
+            pinctrl-0 = <&sai1m0_lrck
+                         &sai1m0_sclk
+                         &sai1m0_sdi0
+                         &sai1m0_sdo0
+                         &sai1m0_sdo1
+                         &sai1m0_sdo2
+                         &sai1m0_sdo3>;
+            rockchip,sai-tx-route = <3 1 2 0>;
+            #sound-dai-cells = <0>;
+        };
+    };
diff --git a/MAINTAINERS b/MAINTAINERS
index 4e9e0e52f92e3c649835ddfb65b2fde0a486198b..a68bf5391df6d3785f376c68ae61669d310cfb17 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -20661,6 +20661,12 @@ F:	Documentation/devicetree/bindings/sound/rockchip,rk3308-codec.yaml
 F:	sound/soc/codecs/rk3308_codec.c
 F:	sound/soc/codecs/rk3308_codec.h
 
+ROCKCHIP SAI DRIVER
+M:	Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
+L:	linux-rockchip@lists.infradead.org
+S:	Maintained
+F:	Documentation/devicetree/bindings/sound/rockchip,sai.yaml
+
 ROCKCHIP VIDEO DECODER DRIVER
 M:	Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
 L:	linux-media@vger.kernel.org

-- 
2.48.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
