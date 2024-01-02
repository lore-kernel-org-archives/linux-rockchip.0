Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BAF33C47077
	for <linux-rockchip@archiver.kernel.org>; Tue,  2 Jan 2024 16:16:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Dm7ZJIQGLs1KbEmWpfPq17XR7BdqcWGnJyav4+XWHmg=; b=oNxajMliTLhyex
	pacjsMlvvP5wP+osKZWWJx4ojuqQW1l1JnpruID9IYoh34F3VoLvJDwk929TDJXsIsNa4GmzWG5+9
	2Hnd5Sk73UrII8cdjURnTVVHRJ74xOxC2uQuJNegsPB6uqKRzYqD5wEYyzj2WQ9Ihdf0zYJF9Pd+K
	wAkEFNlDgKdFhGf575B2va+V2jBrdz1Bq48f8725xhRvtWmj7e2Sbk1isFci46OtzyvhjtW5NMsHd
	qjvr9EpIpEGz+QoxNoaKexbxZ7J1KcHR3W05/nt0xyuqZ0y+EKYniv3BA1Hnbj4yGcbueVC+C+jh2
	YET5VeWNSAhMx1XKYKuA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rKhQs-008SjH-2z;
	Tue, 02 Jan 2024 16:15:58 +0000
Received: from [2a01:4f8:1c1c:934f::1] (helo=mecka.net)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rKhQn-008ShC-31;
	Tue, 02 Jan 2024 16:15:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=mecka.net; s=2016.11;
	t=1704212152; bh=j5RQjHHjEK5PMWTnoys+kCde51784rTlmwN4k68Z7/0=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=spSaVp2duUxvxmUGKf2GCI3Ks6qUdecVG3bBSH8rQOFT91WyULPvm2dlMLov4dk++
	 8NNdJcBCD4+2FLf/dBdyEYx8eWiJKzYqO/0oT6dOcPtBaJ9iMg6gSm2WZYTZRxIa3f
	 xie2Fr1BDZ0b+oxp2UYz9G3Y46C8fG1Vl5yRuxs/BqwA/y7zqLUULQdVZTkv++oGrb
	 EGPr08Jee/gqGyo6G+vXjZ6FPoRPejB+mFIg7E/YsKRlF5N9WQ8Isdgxqen8pjKBBI
	 q5Gs3059thjZEppTrVJ+RxY1zYAf4OX0iBJ+8uH/GtG5mteNiEuiDHwAoENR9bnsPz
	 IhbKo7XOubkOw==
Received: from arthur.fritz.box (unknown [185.147.11.134])
	by mecka.net (Postfix) with ESMTPSA id 14925377C53;
	Tue,  2 Jan 2024 17:15:52 +0100 (CET)
From: Manuel Traut <manut@mecka.net>
Date: Tue, 02 Jan 2024 17:15:44 +0100
Subject: [PATCH v3 1/4] dt-bindings: display: panel: Add BOE
 TH101MB31IG002-28A panel
MIME-Version: 1.0
Message-Id: <20240102-pinetab2-v3-1-cb1aa69f8c30@mecka.net>
References: <20240102-pinetab2-v3-0-cb1aa69f8c30@mecka.net>
In-Reply-To: <20240102-pinetab2-v3-0-cb1aa69f8c30@mecka.net>
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
 Danct12 <danct12@riseup.net>, Ondrej Jirman <megi@xff.cz>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, Manuel Traut <manut@mecka.net>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.12.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240102_081554_150927_DA58DCF3 
X-CRM114-Status: GOOD (  11.38  )
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
used e.g. in the Pine64 PineTab2 and PineTab-V.

Signed-off-by: Manuel Traut <manut@mecka.net>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
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
