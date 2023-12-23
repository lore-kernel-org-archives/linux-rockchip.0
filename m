Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DE21FC3DA6E
	for <linux-rockchip@archiver.kernel.org>; Sat, 23 Dec 2023 15:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UJYd4NFMb1zXaVBqqv34w/DA5vKOTQ46wIbVxgKHMUE=; b=M4+TkZ5pboFAnv
	2I3paAVhuqaFa9aq2bFeL5rzXP+83xgFyRqWYqQrL7zEuKeN60wnVS004emiCqWfre3cYjlKzrFqo
	+33ixXgC6D/iyL3GLtYwZCaaiNu9WbXyk9lo1hBpSrlQEZ7eHu4w+t99PIlKsxAI1g9Kd8Wlu5tf6
	uWczMm32q2OEzFpWZaLzNdBmluPlxr9QSTWus25vgGEGQUuY6ZwrjfcrL2OQgM0uTC1Ou9hVpIIoC
	THihJBTBafKOLMWXv0WQh1SaxzNQ4NEvCA2EhHe1gR6QunxHeeGq/CM/qjcaKPoKoX6YIGRDzhCSy
	0U8jZgaK9qdtXx2hX6mg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rH3nw-0085QE-06;
	Sat, 23 Dec 2023 15:20:44 +0000
Received: from mecka.net ([159.69.159.214])
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rH3nr-0085OA-2u;
	Sat, 23 Dec 2023 15:20:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=mecka.net; s=2016.11;
	t=1703344838; bh=eKk/DlnzPtMcPQxfNWOgU5Nu4ITnGNL+vBoe3BdXNpk=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=KmfjTpyirTuxzhN5kRBez0UKDeoEjWwsTPqJcC7UyM0Dbm2SsePYa0PdDCdwRQa7t
	 HbmDD+u3sGyw933zqnKQPS5iIeq1iOYNH/nycrjrqVFrCpFM2aQifwDEJ/xhUBlYy3
	 Vv2InnjAmQ33kf7A+5Fhxks+crunKFtDd3xKQbVXGLjXq4sP7QGf8H53ttuzS/21NS
	 6LbWAPEXsbGEahhdeLE2gOA0Na+Orhs4S9EZ2s4eJ0MxL7IyBnmUO507W4ZX4N9i2l
	 gQ1ZfqqJQbDiUz2r6pCsQKsR2ALANPlt6jGZXjGznRWcqVGGym8It2XtH3z6XdS7A2
	 D6nWj6rgRqamg==
Received: from arthur.fritz.box (unknown [185.147.11.134])
	by mecka.net (Postfix) with ESMTPSA id BD3B6371959;
	Sat, 23 Dec 2023 16:20:37 +0100 (CET)
From: Manuel Traut <manut@mecka.net>
Date: Sat, 23 Dec 2023 16:20:15 +0100
Subject: [PATCH v2 1/4] dt-bindings: display: panel: Add BOE
 TH101MB31IG002-28A panel
MIME-Version: 1.0
Message-Id: <20231223-pinetab2-v2-1-ec1856d0030e@mecka.net>
References: <20231223-pinetab2-v2-0-ec1856d0030e@mecka.net>
In-Reply-To: <20231223-pinetab2-v2-0-ec1856d0030e@mecka.net>
To: Neil Armstrong <neil.armstrong@linaro.org>, 
 Jessica Zhang <quic_jesszhan@quicinc.com>, Sam Ravnborg <sam@ravnborg.org>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 Sandy Huang <hjc@rock-chips.com>, Mark Yao <markyao0591@gmail.com>, 
 Diederik de Haas <didi.debian@cknow.org>, 
 Segfault <awarnecke002@hotmail.com>, Arnaud Ferraris <aferraris@debian.org>, 
 Danct12 <danct12@riseup.net>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, Manuel Traut <manut@mecka.net>
X-Mailer: b4 0.12.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231223_072040_149302_A680009E 
X-CRM114-Status: GOOD (  10.30  )
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

Add bindings for the BOE TH101MB31IG002-28A LCD panel. It is
used e.g. in the Pine64 Pinetab2 and PinetabV.

Signed-off-by: Manuel Traut <manut@mecka.net>
---
 .../display/panel/boe,th101mb31ig002-28a.yaml      | 58 ++++++++++++++++++++++
 1 file changed, 58 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/panel/boe,th101mb31ig002-28a.yaml b/Documentation/devicetree/bindings/display/panel/boe,th101mb31ig002-28a.yaml
new file mode 100644
index 000000000000..32df26cbfeed
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/panel/boe,th101mb31ig002-28a.yaml
@@ -0,0 +1,58 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/display/panel/boe,th101mb31ig002-28a.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: BOE TH101MB31IG002-28A WXGA DSI Display Panel
+
+maintainers:
+  - Manuel Traut <manut@mecka.net>
+
+allOf:
+  - $ref: panel-common.yaml#
+
+properties:
+  compatible:
+    enum:
+        # BOE TH101MB31IG002-28A 10.1" WXGA TFT LCD panel
+      - boe,th101mb31ig002-28a
+
+  reg: true
+  backlight: true
+  enable-gpios: true
+  power-supply: true
+  port: true
+  rotation: true
+
+required:
+  - compatible
+  - reg
+  - enable-gpios
+  - power-supply
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/gpio/gpio.h>
+
+    dsi {
+        #address-cells = <1>;
+        #size-cells = <0>;
+        panel@0 {
+            compatible = "boe,th101mb31ig002-28a";
+            reg = <0>;
+            backlight = <&backlight_lcd0>;
+            enable-gpios = <&gpio 45 GPIO_ACTIVE_HIGH>;
+            rotation = <90>;
+            power-supply = <&vcc_3v3>;
+            port {
+                panel_in_dsi: endpoint {
+                    remote-endpoint = <&dsi_out_con>;
+                };
+            };
+        };
+    };
+
+...

-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
