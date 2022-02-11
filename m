Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 63781C433EF
	for <linux-rockchip@archiver.kernel.org>; Fri, 11 Feb 2022 12:00:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=S6MdaTPFNNPLyqi7n9WsYG5IvX4kRp9DtxxSHLN/umQ=; b=dctstAhhs1RHFh
	nWtuzvZZd3Yyg58fbcRjaJA9U1DQduE2y00T5EUGkIdNXkssPNyg+63IQcXbJnE8k7GTCLF7WkQXD
	IMC9On0PRxhunEq87GV0mZGMki6uNmFlQnnl1cX7f8Wgpk3yW22mzNQT69cectgY8ojqTCdIjysfM
	hU2Oj13RqSk/UHTHTmVhKaag8gxpQDVvckPiWhk4MWHUueqBZoq3Q13Oliy4+n5RG0Kg1TDYEAjNw
	MyGuD3etqstrk6emA0VnqbYLpjQcBJojLrk1jymbHJks8pEVEvw6JKuhT/7FvpYe1SnxfWh4M5dcI
	x3aCDdH1ypaCrEHNc3NQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nIUak-0070vA-1A; Fri, 11 Feb 2022 11:59:58 +0000
Received: from mail-wm1-x333.google.com ([2a00:1450:4864:20::333])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nIUaL-0070cj-IL
 for linux-rockchip@lists.infradead.org; Fri, 11 Feb 2022 11:59:36 +0000
Received: by mail-wm1-x333.google.com with SMTP id
 l12-20020a7bc34c000000b003467c58cbdfso7115252wmj.2
 for <linux-rockchip@lists.infradead.org>; Fri, 11 Feb 2022 03:59:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=tx8ZFq8JdO/4oUXF/KhCH6Nf7XCVn/8UewteKqP8h1s=;
 b=qFuJQjxgvlT2bAueQpdORWOfP43xD0e9K9dpxtvEuNkSBmi78JUWnzGS/JJ24WgnT+
 xmsbEsQQ0PS/X6OwzA7TnNT9C6OfK/X7stRvoYNMAu99/yiDTcgwglSlcBW3kfdbBwyj
 JVS3vcWbyRWXaFKBO6IwAoi2vUivUvSgdSKP8mrWFN4wD4N7VQ1p82JzooQtWS7GXNWb
 nzkZ/F+GgntKUs4PqHPwVkdyKnNp5DqeR5rqJyJHhpRqny4w/I9ag2PCyokFPyJEV0Uo
 azUOZmMvsleKSTM+DBPEiBBBNCcxN3n1iMRxd+cAGLtOyMtvr41E0CBkb14hUsEwA0qH
 qSfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=tx8ZFq8JdO/4oUXF/KhCH6Nf7XCVn/8UewteKqP8h1s=;
 b=W3HSzYX2noBQQsGPdFXNUPoPwYuXeJMCeOJE8d0w76VOxcjXudr2FUyS/L9+3VE8BV
 w5nUakd6XiU5rpaLSEHvbKR/uSUtvlM7PGbsapPF/OJkN8kcINAQ3Al9QnFmFaiYFokR
 h6u80sr0HUpJZjFCBQcy/v5SjI691sPJoRGr7pFZKvDQZkq/xUVIfqrfvOIkF7cobaih
 X6uj1WVvbOcQx1qV1JB6Hgvv73KvpqR0RXNIvEom/4uSyoOeKaECjvz3w5x5zWPnQ0DG
 LVsR0k7KX3yw8IWQaGga97OHu2OTb3zTunTafHd4MBIz8JqBztcOAdydcZwbdBQrmKIi
 HRzQ==
X-Gm-Message-State: AOAM531iXnEfYX4LGZ0jbzoAUyZAfoOJB2I3wN0rhdxR3XM5GzAgtINU
 I5qKL5Csjs3gyFoYBtcjrRS7mg==
X-Google-Smtp-Source: ABdhPJwYjEPwR7ld+ZHbxRmJzqFRQ73mz77IVh4ygiFj10b1bK4/nIyP38c85s51FxEHBMDjEn43Bg==
X-Received: by 2002:a05:600c:4611:: with SMTP id
 m17mr17712wmo.94.1644580771686; 
 Fri, 11 Feb 2022 03:59:31 -0800 (PST)
Received: from localhost.localdomain
 (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.googlemail.com with ESMTPSA id s187sm4763212wme.14.2022.02.11.03.59.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 11 Feb 2022 03:59:31 -0800 (PST)
From: Corentin Labbe <clabbe@baylibre.com>
To: davem@davemloft.net, heiko@sntech.de, herbert@gondor.apana.org.au,
 krzysztof.kozlowski@canonical.com, robh+dt@kernel.org
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-crypto@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Corentin Labbe <clabbe@baylibre.com>
Subject: [PATCH v3] dt-bindings: crypto: convert rockchip-crypto to yaml
Date: Fri, 11 Feb 2022 11:59:25 +0000
Message-Id: <20220211115925.3382735-1-clabbe@baylibre.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220211_035933_634741_B0B569C7 
X-CRM114-Status: GOOD (  14.09  )
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

Convert rockchip-crypto to yaml

Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
---
Changes since v1:
- fixed example
- renamed to a new name
- fixed some maxItems

Change since v2:
- Fixed maintainers section

 .../crypto/rockchip,rk3288-crypto.yaml        | 66 +++++++++++++++++++
 .../bindings/crypto/rockchip-crypto.txt       | 28 --------
 2 files changed, 66 insertions(+), 28 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/crypto/rockchip,rk3288-crypto.yaml
 delete mode 100644 Documentation/devicetree/bindings/crypto/rockchip-crypto.txt

diff --git a/Documentation/devicetree/bindings/crypto/rockchip,rk3288-crypto.yaml b/Documentation/devicetree/bindings/crypto/rockchip,rk3288-crypto.yaml
new file mode 100644
index 000000000000..2e1e9fa711c4
--- /dev/null
+++ b/Documentation/devicetree/bindings/crypto/rockchip,rk3288-crypto.yaml
@@ -0,0 +1,66 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/crypto/rockchip,rk3288-crypto.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Rockchip Electronics And Security Accelerator
+
+maintainers:
+  - Heiko Stuebner <heiko@sntech.de>
+
+properties:
+  compatible:
+    const: rockchip,rk3288-crypto
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+  clocks:
+    items:
+      - description: clock data
+      - description: clock data
+      - description: clock crypto accelerator
+      - description: clock dma
+
+  clock-names:
+    items:
+      - const: aclk
+      - const: hclk
+      - const: sclk
+      - const: apb_pclk
+
+  resets:
+    maxItems: 1
+
+  reset-names:
+    const: crypto-rst
+
+required:
+  - compatible
+  - reg
+  - interrupts
+  - clocks
+  - clock-names
+  - resets
+  - reset-names
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+    #include <dt-bindings/clock/rk3288-cru.h>
+    crypto@ff8a0000 {
+      compatible = "rockchip,rk3288-crypto";
+      reg = <0xff8a0000 0x4000>;
+      interrupts = <GIC_SPI 48 IRQ_TYPE_LEVEL_HIGH>;
+      clocks = <&cru ACLK_CRYPTO>, <&cru HCLK_CRYPTO>,
+               <&cru SCLK_CRYPTO>, <&cru ACLK_DMAC1>;
+      clock-names = "aclk", "hclk", "sclk", "apb_pclk";
+      resets = <&cru SRST_CRYPTO>;
+      reset-names = "crypto-rst";
+    };
diff --git a/Documentation/devicetree/bindings/crypto/rockchip-crypto.txt b/Documentation/devicetree/bindings/crypto/rockchip-crypto.txt
deleted file mode 100644
index 5e2ba385b8c9..000000000000
--- a/Documentation/devicetree/bindings/crypto/rockchip-crypto.txt
+++ /dev/null
@@ -1,28 +0,0 @@
-Rockchip Electronics And Security Accelerator
-
-Required properties:
-- compatible: Should be "rockchip,rk3288-crypto"
-- reg: Base physical address of the engine and length of memory mapped
-       region
-- interrupts: Interrupt number
-- clocks: Reference to the clocks about crypto
-- clock-names: "aclk" used to clock data
-	       "hclk" used to clock data
-	       "sclk" used to clock crypto accelerator
-	       "apb_pclk" used to clock dma
-- resets: Must contain an entry for each entry in reset-names.
-	  See ../reset/reset.txt for details.
-- reset-names: Must include the name "crypto-rst".
-
-Examples:
-
-	crypto: cypto-controller@ff8a0000 {
-		compatible = "rockchip,rk3288-crypto";
-		reg = <0xff8a0000 0x4000>;
-		interrupts = <GIC_SPI 48 IRQ_TYPE_LEVEL_HIGH>;
-		clocks = <&cru ACLK_CRYPTO>, <&cru HCLK_CRYPTO>,
-			 <&cru SCLK_CRYPTO>, <&cru ACLK_DMAC1>;
-		clock-names = "aclk", "hclk", "sclk", "apb_pclk";
-		resets = <&cru SRST_CRYPTO>;
-		reset-names = "crypto-rst";
-	};
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
