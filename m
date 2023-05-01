Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E0DC9C7EE22
	for <linux-rockchip@archiver.kernel.org>; Mon,  1 May 2023 08:44:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XnynOMuMUrxPxSC0GHAJ87NoIBTi78crxMkz6gKGrGU=; b=PVKjGg+TNHBJAn
	5CF30V57huYe8rxPHyrRkx1fPO1tGq3TslxrygGV8y8N4T5WJ4Z1Gk+s+DWV1JElsx0uMOHy77q8v
	NV5FvQg4Fi99oHmWyAoPtxoPEqkCaPSwMjyW1mw/4cDsQP3qkc6Rj2KFNAXQhKrMXEX50v1Rpnu7t
	BVPRcT01xaO0tvqLiqu1EsNYf9P4YY03m3w6FwGCXVghHoQFm201S8x7jWps7y1BO4eMwkLg/iE7P
	74kVBHoRcsNRp9ngqlKwUjePG3Shr/utV7gLuw9jsRETX3WqKp+eH8ecKf9voRnNyNT36B6tEz9dB
	zal86p1n4bpgeea/TSjg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1ptP8r-00FT50-0l;
	Mon, 01 May 2023 08:44:17 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1ptP8n-00FT1U-0w;
	Mon, 01 May 2023 08:44:14 +0000
Received: from localhost (unknown [188.27.34.213])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id EC90866031F8;
	Mon,  1 May 2023 09:44:10 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1682930651;
	bh=yOu4hxNG9H8E3BYZJ09jRWvIMd5u45GgHcAb3KhsBXs=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=dDtM4xXkSvrO9zdyBpA378ZJAH4M4xhc/dBOhKHaCOt+9q5hwE0pELA34MPZ+5FYv
	 7jqO+uj9fguFhOi6cHFI4hkdJX3pJppxA3yD92B7JYgdPfiXahOU0yyskQch7zhtho
	 y0Fi5zukqvta1IISIzKQWtPUIc8IaskyI6nDtLiaHC+WFb8A6K7hRNdFRVtYD8pydi
	 twf95xDWKxcWNTw6i8HBMpHlXcAZOEZZCaZUXcbWC82fB1frbWIYFfWuUdbjpE+EG+
	 pBJCVYA9hYqPLOZyX7Lk6mBvjolYDh6aNl3eZ0LlapUSoJ/+X6C9TI51ZCRXl+AUu0
	 YWtqnDKAxOK9A==
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
To: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	Shreeya Patel <shreeya.patel@collabora.com>,
	Kever Yang <kever.yang@rock-chips.com>,
	Finley Xiao <finley.xiao@rock-chips.com>
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	kernel@collabora.com
Subject: [PATCH 2/8] dt-bindings: nvmem: rockchip-otp: Add compatible for RK3588
Date: Mon,  1 May 2023 11:43:54 +0300
Message-Id: <20230501084401.765169-3-cristian.ciocaltea@collabora.com>
X-Mailer: git-send-email 2.40.0
In-Reply-To: <20230501084401.765169-1-cristian.ciocaltea@collabora.com>
References: <20230501084401.765169-1-cristian.ciocaltea@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230501_014413_463405_BECD7246 
X-CRM114-Status: UNSURE (   9.92  )
X-CRM114-Notice: Please train this message.
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

Document the OTP memory found on Rockchip RK3588 SoC.

Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
---
 .../bindings/nvmem/rockchip-otp.yaml          | 71 ++++++++++++++++---
 1 file changed, 60 insertions(+), 11 deletions(-)

diff --git a/Documentation/devicetree/bindings/nvmem/rockchip-otp.yaml b/Documentation/devicetree/bindings/nvmem/rockchip-otp.yaml
index 658ceed14ee2..84a11382c6e7 100644
--- a/Documentation/devicetree/bindings/nvmem/rockchip-otp.yaml
+++ b/Documentation/devicetree/bindings/nvmem/rockchip-otp.yaml
@@ -9,34 +9,31 @@ title: Rockchip internal OTP (One Time Programmable) memory
 maintainers:
   - Heiko Stuebner <heiko@sntech.de>
 
-allOf:
-  - $ref: nvmem.yaml#
-
 properties:
   compatible:
     enum:
       - rockchip,px30-otp
       - rockchip,rk3308-otp
+      - rockchip,rk3588-otp
 
   reg:
     maxItems: 1
 
   clocks:
     minItems: 3
-    maxItems: 3
+    maxItems: 4
 
   clock-names:
-    items:
-      - const: otp
-      - const: apb_pclk
-      - const: phy
+    minItems: 3
+    maxItems: 4
 
   resets:
-    maxItems: 1
+    minItems: 1
+    maxItems: 3
 
   reset-names:
-    items:
-      - const: phy
+    minItems: 1
+    maxItems: 3
 
 required:
   - compatible
@@ -46,6 +43,58 @@ required:
   - resets
   - reset-names
 
+allOf:
+  - $ref: nvmem.yaml#
+
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - rockchip,px30-otp
+              - rockchip,rk3308-otp
+    then:
+      properties:
+        clocks:
+          minItems: 3
+          maxItems: 3
+        clock-names:
+          items:
+            - const: otp
+            - const: apb_pclk
+            - const: phy
+        resets:
+          maxItems: 1
+        reset-names:
+          items:
+            - const: phy
+
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - rockchip,rk3588-otp
+    then:
+      properties:
+        clocks:
+          minItems: 4
+          maxItems: 4
+        clock-names:
+          items:
+            - const: otpc
+            - const: apb
+            - const: arb
+            - const: phy
+        resets:
+          minItems: 1
+          maxItems: 3
+        reset-names:
+          items:
+            - const: otpc
+            - const: apb
+            - const: arb
+
 unevaluatedProperties: false
 
 examples:
-- 
2.40.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
