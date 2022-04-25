Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 572B0C433F5
	for <linux-rockchip@archiver.kernel.org>; Mon, 25 Apr 2022 20:37:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RPiwqUCBYdA1NSSsahN4l1uBGkZ9Tr2yItdCxMk/apM=; b=NC53tE8C64tlry
	RIFfx20JMbm5UmSl/yjaQfGtaNAhaMJ17pMa2/UmgnZN+YiVAVhJ/R+Lgz/GZYMJBicXNJ2yxxzdY
	TEycvW3VruuUh2iKxcsty9dpEG8CJ0FjV7xFUvIZt4fgOZCry7Ml+Yn9kqoH2MnKEDxBtm+FXazdp
	GoXC1NNCURu/3nhZuLibXuMqwTvek+8LYDa5iS0xaqY+8XZZOZPTf556FSS8hkJcUF0D+D97yPz+G
	VwXzQu8h2tEZvvp4fLJeb26FiJeyGi17bDN5TRMaT2F8YVD8nXo6RwL4tDCRR01pHL+hUvWKk8O8J
	P/jNcAAxwJWh7miOY/+A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nj5SB-00BI6I-FN; Mon, 25 Apr 2022 20:37:03 +0000
Received: from mail-wr1-x42b.google.com ([2a00:1450:4864:20::42b])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nj5DV-00BBA8-2I
 for linux-rockchip@lists.infradead.org; Mon, 25 Apr 2022 20:21:56 +0000
Received: by mail-wr1-x42b.google.com with SMTP id t6so19044170wra.4
 for <linux-rockchip@lists.infradead.org>; Mon, 25 Apr 2022 13:21:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=RoEkU2wAHdZrSlV4sPqXXxqUUD/tymZLZdlnbgZM9Yc=;
 b=Lx624Hb1v8mbCoeAt514dLkicA4g8cGOsxM5mgr9CfcmzRoRE9QjF3OUuN8qV248cC
 c8cU3Rs6qgQYuJgFIYMb8KB5OmBLRZD5w5fYiZHnFaTrjokX+Rs3xgaVhvEzFK+6rZd7
 ismfGU1HrufI2PtGUz5+q9Q2k0uoX1IntKAMQ1r2PCnPGOcP4pDr3/GgSegDV14jq+jZ
 FuCX5/Hvng38+UBuYrWpF3+i8AgXuWDG9K9lYSKxJKt4+4VFdxgvPxwPsH3X41xhSV/o
 O38ElT7ffu0RIDyR4vikb4ufpR/qlbuiMvDdkDSbYz8307PJdCv2boqKfDEpntsqLxBY
 cPAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=RoEkU2wAHdZrSlV4sPqXXxqUUD/tymZLZdlnbgZM9Yc=;
 b=Js8tn6r7dGsWbxx1FNiv/2kAY0yWarAM1kNUecch6z9TALqOu7kDQMP78MwWeXQuLQ
 TLrkzVOaQHZqb2RgVvKme/lmEWnATY6aKHehYzL6BkfT1Ulp+oIWwtTCwH5uQFYV8Oby
 Od66AREawN9O0SPnNqwhsLKBjY3ZhevTYDa7/6AGUCmqKcFOIGLDBTajToMElI2hH7hF
 9U/bb8uA9MhBl0FD5pcDkxHkkHRho0pQv2UI9lf1738wnLnbIsSAN4VWiwBDKOe1R5W/
 uOOhVLI8gwvvWVeNG7Ip5y5goAOT4c1sNVXqJn9IFpnE+X1jThEs9VDqMcpr5NHy3ksF
 by/A==
X-Gm-Message-State: AOAM530IQO7yPO6Hf6Ue+Qa4KTZa2+T9wjvywE6H4pUPUWswtYZrxEWb
 qsELDuAryRGetF4TcGeMH2OxMQ==
X-Google-Smtp-Source: ABdhPJwP7xSsF5UJIq/gGiZBqI8EFC+nzUbUZIbMLeZPHpF3ww+DSMXe+2kgo+zQHk3hV1CpelO9gg==
X-Received: by 2002:adf:b64c:0:b0:1e3:16d0:3504 with SMTP id
 i12-20020adfb64c000000b001e316d03504mr15276335wre.333.1650918111706; 
 Mon, 25 Apr 2022 13:21:51 -0700 (PDT)
Received: from localhost.localdomain
 (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.googlemail.com with ESMTPSA id
 p3-20020a5d59a3000000b0020a9132d1fbsm11101003wrr.37.2022.04.25.13.21.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 25 Apr 2022 13:21:51 -0700 (PDT)
From: Corentin Labbe <clabbe@baylibre.com>
To: heiko@sntech.de, herbert@gondor.apana.org.au,
 krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org
Cc: linux-crypto@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Corentin Labbe <clabbe@baylibre.com>
Subject: [PATCH v6 25/33] dt-bindings: crypto: rockchip: convert to new driver
 bindings
Date: Mon, 25 Apr 2022 20:21:11 +0000
Message-Id: <20220425202119.3566743-26-clabbe@baylibre.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220425202119.3566743-1-clabbe@baylibre.com>
References: <20220425202119.3566743-1-clabbe@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220425_132153_274555_314EF0F0 
X-CRM114-Status: GOOD (  10.31  )
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

The latest addition to the rockchip crypto driver need to update the
driver bindings.

Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
---
 .../crypto/rockchip,rk3288-crypto.yaml        | 85 +++++++++++++++++--
 1 file changed, 77 insertions(+), 8 deletions(-)

diff --git a/Documentation/devicetree/bindings/crypto/rockchip,rk3288-crypto.yaml b/Documentation/devicetree/bindings/crypto/rockchip,rk3288-crypto.yaml
index 8a219d439d02..ad604d7e4bc0 100644
--- a/Documentation/devicetree/bindings/crypto/rockchip,rk3288-crypto.yaml
+++ b/Documentation/devicetree/bindings/crypto/rockchip,rk3288-crypto.yaml
@@ -13,6 +13,8 @@ properties:
   compatible:
     enum:
       - rockchip,rk3288-crypto
+      - rockchip,rk3328-crypto
+      - rockchip,rk3399-crypto
 
   reg:
     maxItems: 1
@@ -21,21 +23,88 @@ properties:
     maxItems: 1
 
   clocks:
+    minItems: 3
     maxItems: 4
 
   clock-names:
-    items:
-      - const: aclk
-      - const: hclk
-      - const: sclk
-      - const: apb_pclk
+    minItems: 3
+    maxItems: 4
 
   resets:
-    maxItems: 1
+    minItems: 1
+    maxItems: 3
 
   reset-names:
-    items:
-      - const: crypto-rst
+    minItems: 1
+    maxItems: 3
+
+allOf:
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: rockchip,rk3288-crypto
+    then:
+      properties:
+        clocks:
+          minItems: 4
+        clock-names:
+          items:
+            - const: "aclk"
+            - const: "hclk"
+            - const: "sclk"
+            - const: "apb_pclk"
+          minItems: 4
+        resets:
+          maxItems: 1
+        reset-names:
+          items:
+            - const: "crypto-rst"
+          maxItems: 1
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: rockchip,rk3328-crypto
+    then:
+      properties:
+        clocks:
+          maxItems: 3
+        clock-names:
+          items:
+            - const: "hclk_master"
+            - const: "hclk_slave"
+            - const: "sclk"
+          maxItems: 3
+        resets:
+          maxItems: 1
+        reset-names:
+          items:
+            - const: "crypto-rst"
+          maxItems: 1
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: rockchip,rk3399-crypto
+    then:
+      properties:
+        clocks:
+          maxItems: 3
+        clock-names:
+          items:
+            - const: "hclk_master"
+            - const: "hclk_slave"
+            - const: "sclk"
+          maxItems: 3
+        resets:
+          minItems: 3
+        reset-names:
+          items:
+            - const: "rst_master"
+            - const: "rst_slave"
+            - const: "crypto-rst"
+          minItems: 3
 
 required:
   - compatible
-- 
2.35.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
