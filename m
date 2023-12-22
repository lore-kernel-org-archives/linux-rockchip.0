Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6ECD2C41535
	for <linux-rockchip@archiver.kernel.org>; Fri, 22 Dec 2023 11:11:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lndcTwIwkQc5KJZLG4hs6h6bkIRrcK0QSfPMolSWHTE=; b=ZFVqZVPgZCpZUl
	nM0FaO30S37rl/AGIYQIlz3hKJZQaDjLH6332EVD5Kqp8q8nK/A3jqz9U1839JCCI0zyEqsidprMz
	aDLITnTCV9dLMPPGv657uc26DzqVY11I2+ouHJD0X30XU+ZSvxQt8LsLM6UQRRuTcJFl77w3AFwGV
	zWJod1YisFHpi0L18Tue0BYZuhAo+8v/i4AXmQ76AsoFfynXjL0hz6x5vmij6zC5BH4Yh9SaKp2rR
	LrjDVh0lANnQ4s4azvi70clwNl6o4UYW1M0dyAmDXwDFXZoHcTGaJipFKjz+dl/uOkfVynDGQr3FD
	5zgECxYSMd7La1b86t0g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rGdQw-005cTL-0e;
	Fri, 22 Dec 2023 11:11:14 +0000
Received: from mecka.net ([159.69.159.214])
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rGdQs-005cRQ-0f;
	Fri, 22 Dec 2023 11:11:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=mecka.net; s=2016.11;
	t=1703243143; bh=lLn1TvkFpD62y29Aa+jQpFVZRQMCpTszyZVqB2SdRCE=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=G4AUWUolEsmkt6OUpTMTH0p4mm9gguHy0BTTSr8GCPunr5uBvbmsJ8s06hnd61QFG
	 lMsKyEtqm+KrIfON8N8WO7cR44V7arfzqXaGkiNsDF7q0wW73Bb5hhaNS2X/R6SJwd
	 xHgLWvdlQW+Jf2YSbAR+DdGaUr8HSghf1YooLUu3btDeC+e9EnmIgvFcCwtJPnQNWy
	 fsMKSJEXDXV9ZznTB/Lz8zJQCrxB0KOXHIjBW3DTazx4f8mkixFInqvhrLvJfe0Nc6
	 CijCW6RaZv1o9LHu2OWKdBqE9aVJSPrgvSw+t6Ab7z82IrgdKdJ3irQVku8ebrlJJ0
	 m7uLqcnTzu2Ng==
Received: from arthur.fritz.box (unknown [185.147.11.134])
	by mecka.net (Postfix) with ESMTPSA id 3E255370D3C;
	Fri, 22 Dec 2023 12:05:43 +0100 (CET)
From: Manuel Traut <manut@mecka.net>
Date: Fri, 22 Dec 2023 12:05:41 +0100
Subject: [PATCH 1/6] dt-bindings: display: panel: Add BOE
 TH101MB31IG002-28A panel
MIME-Version: 1.0
Message-Id: <20231222-pinetab2-v1-1-e148a7f61bd1@mecka.net>
References: <20231222-pinetab2-v1-0-e148a7f61bd1@mecka.net>
In-Reply-To: <20231222-pinetab2-v1-0-e148a7f61bd1@mecka.net>
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
 Segfault <awarnecke002@hotmail.com>, Arnaud Ferraris <aferraris@debian.org>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, Manuel Traut <manut@mecka.net>
X-Mailer: b4 0.12.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231222_031110_434044_4BB88060 
X-CRM114-Status: GOOD (  11.91  )
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
 .../display/panel/boe,th101mb31ig002-28a.yaml      | 73 ++++++++++++++++++++++
 1 file changed, 73 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/panel/boe,th101mb31ig002-28a.yaml b/Documentation/devicetree/bindings/display/panel/boe,th101mb31ig002-28a.yaml
new file mode 100644
index 000000000000..a8a5e1b4439b
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/panel/boe,th101mb31ig002-28a.yaml
@@ -0,0 +1,73 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/display/panel/boe,th101mb31ig002-28a.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: BOE TH101MB31IG002-28A Pine64 Pinetab2 DSI Display Panel
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
+  reg:
+    description: the virtual channel number of a DSI peripheral
+
+  backlight:
+    description: phandle of the backlight device attached to the panel
+
+  enable-gpios:
+    description: a GPIO spec for the enable pin
+
+  power-supply:
+    description: core voltage supply
+
+
+  ports: true
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
+    dsi {
+        #address-cells = <1>;
+        #size-cells = <0>;
+        panel@0 {
+            compatible = "boe,th101mb31ig002-28a";
+            reg = <0>;
+            backlight = <&backlight_lcd0>;
+            enable-gpios = <&pio 45 0>;
+            rotation = <90>;
+            power-supply = <&vcc_3v3>;
+            ports {
+                #address-cells = <1>;
+                #size-cells = <0>;
+                port@0 {
+                    reg = <0>;
+                    #address-cells = <1>;
+                    #size-cells = <0>;
+                    panel_in_dsi: endpoint@0 {
+                        reg = <0>;
+                        remote-endpoint = <&dsi0_out_con>;
+                    };
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
