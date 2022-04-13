Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DF108C433F5
	for <linux-rockchip@archiver.kernel.org>; Wed, 13 Apr 2022 19:25:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5dJz4SynrfVjVesR+NHtC8FFkuWzxYuGTqFz7ee48AQ=; b=BZ20dWhYNIWr8v
	ZlH/U+Y+yDzR/iXIZPmfxT2jiCoZc6KYQ8Ca/RwarNxv0GAMP7kMKtQroHEwvmXzSt2aFE6+r0d02
	0x0c1fcsarpRHvHqN+nZ8ACEjXLxpWSbeiSSWpgnFgeiVxFYbfQoM+HMEzd4kZDMSC3YdisM+yMzY
	kPxOgtVr6Ix+mG+g9iWJFeY6+eCwPlwnXhIYeL/esjrSDFCc+x4/Z7xXTQCGVmdUW9xEfsh+kYBiv
	kd/DPMTRwUSBJv6MidlhERcQffdhtw3iXDAgfIBnGYx8GexApdXWQMn7Fgvm57SZbZfO16sEZs8bZ
	5UH6lOkUmYqdEi6Woj1w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1neicd-002QG8-Jl; Wed, 13 Apr 2022 19:25:47 +0000
Received: from mail-wm1-x334.google.com ([2a00:1450:4864:20::334])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1neiLG-002IGj-6h
 for linux-rockchip@lists.infradead.org; Wed, 13 Apr 2022 19:07:53 +0000
Received: by mail-wm1-x334.google.com with SMTP id
 o20-20020a05600c511400b0038ebbbb2ad8so1788238wms.0
 for <linux-rockchip@lists.infradead.org>; Wed, 13 Apr 2022 12:07:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=hzWov2h7bUv7TvPCe3xLER2qILsZ8moXoe1I60bhAfY=;
 b=8W4EodW3tieAkC0XUv6rm1jiKbjlFWNXCMOVXJ4IJ5LLrz127MRtiX2JSZr64Cstlj
 aRL4mwMrVfMH9nKgDzC91MXyiZRn8Bdjt0SYwhfWRF0KlcXf+DrbS8t5bkVt8E4G4b2t
 Rl3P2Av42/2ia+MmIN67h5jrKOaBb+mcac/hcr/E7oyUcTMnTA9hx86RutLHLJCfERnD
 WM656r/06c87D53EQq8dMtlR1G6hzi+dLvaAIzWeUChUlVFTj6eBXqDX9ect5ospg6BX
 n0b23f2ftyN5Mb8dNN4Csv5jHs6hhFKv2NSEyrvJKuG2MdSeJZr0TqVnPkO05p5eVyOB
 +JhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=hzWov2h7bUv7TvPCe3xLER2qILsZ8moXoe1I60bhAfY=;
 b=YHW0fuffXjlT2zNYYX+qsa7qH5m6eK6fNingUOR5qUPclO4/5xf0H9GuAQsAjd0vjL
 VGjLxU0nPrHOrgMZlFTjBC+KtXBIqOQMolT1sMw2vLDjxwUfzhbmxHH3M6uevDdrsJ25
 kPwJfHr+t5rx57k1xlQGJkm/8dv6bFKT9rFLU+XeZBgXBUnMLIgp98n3cBl2ZjVfAXHJ
 X+1TKLj6SmyWtTNsAA44NPuLLFxIQsD5OAhRxcjjSvw9tG/zNETQ9ENK/pCZTljMndYF
 7nlBI1XqkV+SJMOkB+rB/NifWVMxoEXRhKJ10KLGNmLJY9zrbZV1w58QFZohX0Wm23kI
 VeBw==
X-Gm-Message-State: AOAM532rg6QRyxI2lmyNUsfOqyGncpRnzqdz6uZuMNIQcsFRMsadN41i
 xHElaFE8E54hVSjzTJYI37o+ig==
X-Google-Smtp-Source: ABdhPJxuz0OK9LfQtbHytm4gTdeIsUNNlJtwRZx+O8qO8GtbdkHHvlem5OqFYML0B70oLzj6q0pcwA==
X-Received: by 2002:a7b:ce11:0:b0:38e:c257:4c76 with SMTP id
 m17-20020a7bce11000000b0038ec2574c76mr137202wmc.151.1649876869019; 
 Wed, 13 Apr 2022 12:07:49 -0700 (PDT)
Received: from localhost.localdomain
 (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.googlemail.com with ESMTPSA id
 o29-20020a05600c511d00b0038e3532b23csm3551852wms.15.2022.04.13.12.07.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 13 Apr 2022 12:07:48 -0700 (PDT)
From: Corentin Labbe <clabbe@baylibre.com>
To: heiko@sntech.de, herbert@gondor.apana.org.au,
 krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org
Cc: linux-arm-kernel@lists.infradead.org, linux-crypto@vger.kernel.org,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Corentin Labbe <clabbe@baylibre.com>
Subject: [PATCH v5 25/33] dt-bindings: crypto: rockchip: convert to new driver
 bindings
Date: Wed, 13 Apr 2022 19:07:05 +0000
Message-Id: <20220413190713.1427956-26-clabbe@baylibre.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220413190713.1427956-1-clabbe@baylibre.com>
References: <20220413190713.1427956-1-clabbe@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220413_120750_308021_E3FED403 
X-CRM114-Status: UNSURE (   9.73  )
X-CRM114-Notice: Please train this message.
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
 1 file changed, 76 insertions(+), 9 deletions(-)

diff --git a/Documentation/devicetree/bindings/crypto/rockchip,rk3288-crypto.yaml b/Documentation/devicetree/bindings/crypto/rockchip,rk3288-crypto.yaml
index b4e87e9894f8..ad604d7e4bc0 100644
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
@@ -21,23 +23,88 @@ properties:
     maxItems: 1
 
   clocks:
+    minItems: 3
     maxItems: 4
 
   clock-names:
+    minItems: 3
     maxItems: 4
-    items:
-      const: aclk
-      const: hclk
-      const: sclk
-      const: apb_pclk
 
   resets:
-    maxItems: 1
+    minItems: 1
+    maxItems: 3
 
   reset-names:
-    maxItems: 1
-    items:
-      const: crypto-rst
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
