Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 941A7C52D7C
	for <linux-rockchip@archiver.kernel.org>; Sun, 18 Aug 2024 22:30:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LJ/TOikrDBAXPHTg+V2xEp4ENEQ0mhJ1S3cOWgfqpvs=; b=33i/XTMn2n4rkY
	kk5aN3CziLYvScp5ZMh4fYfRMC5WnqUQJCo2pN/22+1kZh/8NFOPpYJEBTjyKBnsK9XIdaS3u+hXD
	GXAc71uKcRzfCwhfX9FmBBFbDifNKnOZIWWD5iE7ADnb7uKxuGQolJsvEDUkOnziz/w3QnVMGnPb9
	QdfcwFnzJ9UJbAbXjdYae4fEIxlLWErCBiSRs4BlEPaZYYdNOZ3Tr3eJe+8/HzYN3DX4G8Q8vRBVg
	cyuMZb1rv8vHbw4Vh20l8a52aXxQHB9gBAWWM0qac1nGYaYM/Lw3Nc4DnZ4pQxpjLcDKBwo4La4fI
	Bed6owv44j2A8B0FmT6g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sfoQF-0000000HRac-3Mvy;
	Sun, 18 Aug 2024 22:30:52 +0000
Received: from sender4-pp-f112.zoho.com ([136.143.188.112])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sfoQA-0000000HRWl-0PwB;
	Sun, 18 Aug 2024 22:30:47 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1724020219; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=lyFfFPx4YDENcZT6LyTuC5t3BYV7vf5LXCFyzKnyZGnEAf4PdEjsKh1yVJF4KPvPMCAOylnW77Tb4ULetcX/KTAJtR9nQEv91U1/6FroQN0mTx4QflhTq8oXltWfA6GKXSFMVUkGAGbS8DbXke/8vFjF15ajCQw4uxSsQtXuEwQ=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1724020219; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=GUxI7Nryt2fJIoARGtRz+5S3ET1E1hMLQbOdW+WClGA=; 
	b=j36kkdoAtpoEgKCyrGHRrI03iJq6D2eA8PT+REWrMffW0jd3H+kgJ5qSFd3jMHmC5e3hU3PN37YaRvA8VythPOJrU1/ilVtq6TKjYqYJXHk8blL9ZVnr17kGjLc41xRVBB/SjAttPRk2ik5Cey1n/h9AP5D7IpVucD75iUx92/s=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=cristian.ciocaltea@collabora.com;
	dmarc=pass header.from=<cristian.ciocaltea@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1724020219;
	s=zohomail; d=collabora.com; i=cristian.ciocaltea@collabora.com;
	h=From:From:Date:Date:Subject:Subject:MIME-Version:Content-Type:Content-Transfer-Encoding:Message-Id:Message-Id:References:In-Reply-To:To:To:Cc:Cc:Reply-To;
	bh=GUxI7Nryt2fJIoARGtRz+5S3ET1E1hMLQbOdW+WClGA=;
	b=He/xZeshsZQS+JdN6+c/r4Cnz8sVRqqoptGPQEorSFk4CrnAnC+gV7ay8qNQgBgG
	s0TOO8JQHeg1Qez14IAMDE21qG+qLMsdXEbpSPA14ZjWbz7GZGOrcrL6sMhIi58Vz10
	zXFjJ+Ye3keoNk0OWo27I/DCN6pVkHPEVWWxxOY4=
Received: by mx.zohomail.com with SMTPS id 1724020217463976.332429107037;
	Sun, 18 Aug 2024 15:30:17 -0700 (PDT)
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Date: Mon, 19 Aug 2024 01:29:28 +0300
Subject: [PATCH v4 1/4] dt-bindings: display: bridge: Add schema for
 Synopsys DW HDMI QP TX IP
MIME-Version: 1.0
Message-Id: <20240819-b4-rk3588-bridge-upstream-v4-1-6417c72a2749@collabora.com>
References: <20240819-b4-rk3588-bridge-upstream-v4-0-6417c72a2749@collabora.com>
In-Reply-To: <20240819-b4-rk3588-bridge-upstream-v4-0-6417c72a2749@collabora.com>
To: Andrzej Hajda <andrzej.hajda@intel.com>, 
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>, 
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, 
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, 
 Sandy Huang <hjc@rock-chips.com>, 
 =?utf-8?q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
 Andy Yan <andy.yan@rock-chips.com>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Mark Yao <markyao0591@gmail.com>, 
 Sascha Hauer <s.hauer@pengutronix.de>
Cc: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 devicetree@vger.kernel.org, kernel@collabora.com, 
 Alexandre ARNOUD <aarnoud@me.com>, Luis de Arquer <ldearquer@gmail.com>
X-Mailer: b4 0.14.1
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240818_153046_174325_C4FB8964 
X-CRM114-Status: GOOD (  11.37  )
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

Add dt-binding schema containing the common properties for the Synopsys
DesignWare HDMI QP TX controller.

Note this is not a full dt-binding specification, but is meant to be
referenced by platform-specific bindings for this IP core.

Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
---
 .../display/bridge/synopsys,dw-hdmi-qp.yaml        | 88 ++++++++++++++++++++++
 1 file changed, 88 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/bridge/synopsys,dw-hdmi-qp.yaml b/Documentation/devicetree/bindings/display/bridge/synopsys,dw-hdmi-qp.yaml
new file mode 100644
index 000000000000..771f7fba6c50
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/bridge/synopsys,dw-hdmi-qp.yaml
@@ -0,0 +1,88 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/display/bridge/synopsys,dw-hdmi-qp.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Common Properties for Synopsys DesignWare HDMI QP TX Controller IP
+
+maintainers:
+  - Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
+
+description: |
+  The Synopsys DesignWare HDMI 2.1 Quad-Pixel (QP) TX Controller IP core
+  supports the following features, among others:
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
+  Note this is not a full dt-binding specification, but is meant to be
+  referenced by platform-specific bindings for this IP core.
+
+properties:
+  reg:
+    maxItems: 1
+
+  clocks:
+    minItems: 4
+    maxItems: 6
+    items:
+      - description: Peripheral/APB bus clock
+      - description: EARC RX biphase clock
+      - description: Reference clock
+      - description: Audio interface clock
+    additionalItems: true
+
+  clock-names:
+    minItems: 4
+    maxItems: 6
+    items:
+      - const: pclk
+      - const: earc
+      - const: ref
+      - const: aud
+    additionalItems: true
+
+  interrupts:
+    minItems: 4
+    maxItems: 5
+    items:
+      - description: AVP Unit interrupt
+      - description: CEC interrupt
+      - description: eARC RX interrupt
+      - description: Main Unit interrupt
+    additionalItems: true
+
+  interrupt-names:
+    minItems: 4
+    maxItems: 5
+    items:
+      - const: avp
+      - const: cec
+      - const: earc
+      - const: main
+    additionalItems: true
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
+additionalProperties: true

-- 
2.46.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
