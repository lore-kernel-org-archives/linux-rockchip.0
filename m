Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 862D8ECAAD3
	for <linux-rockchip@archiver.kernel.org>; Thu,  1 Sep 2022 13:03:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eISxcxz/GNtEsrHiuCo0dwSle6B04pJLXpQZ7j65feE=; b=ewwJ9IyMoJEyMF
	RoKtz/5+2pEymowhPG+YMNGS7l1AwxnV4MfxAdQl6oxIboxzlncFDIHXGnTZdn0HUs7lIS0xNcO6s
	bwqy+alm7FRgrFqJ1//yn1/J0bNKMY6X9uCJi6yaebB6UdHsp+md5Hj608uh1TdOQkflR8HqyMMN0
	xO1zx2d4dksOkSfkQ1WYJV4bzWJ/Zo5J+yhp+zSZJ/+g+RsUywBh2jKzcfb/G0tPXZfbSVZT1iGVj
	46HjzZge6HQNCJ4GzqvctNXc5A3/Je9Jcc4K7dPNZ7MpE1SbaKbYKtsJRQTKKTTkiioCo4OESRHCK
	Kk7xlsIpbqLogjzzndUg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oTjqW-00BqmV-UJ; Thu, 01 Sep 2022 13:03:00 +0000
Received: from mail-wm1-x32b.google.com ([2a00:1450:4864:20::32b])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oTjlP-00Bnmo-6J
	for linux-rockchip@lists.infradead.org; Thu, 01 Sep 2022 12:57:44 +0000
Received: by mail-wm1-x32b.google.com with SMTP id d12-20020a05600c34cc00b003a83d20812fso1400632wmq.1
        for <linux-rockchip@lists.infradead.org>; Thu, 01 Sep 2022 05:57:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc;
        bh=a7kQbSuJBA+hO+22/DPT0818Q67abekR8AZbfSsKp0c=;
        b=u9zUrow7UUAI2VuY0iwmPzhV8W5dimlC/350NOd2L3tXR2TZ/Nejbgiu/1bUp5pYcO
         k9S3Fj5VZEa8osLdkf+cvWPER3AuYQHXUEKzBTff2yUHC2iPzTceaJnWcADh24dpOKpm
         jDRWx7WJyXWqyuzNAK3YlbLpMPZmXq4Ci18YqdMYtKaqWfu4eoXbvMj/3N2q7FGw9E15
         QS9377Jv3ULe3GZXDAD8/3QySkbxZF9Q0tfdSJezyhxJcUgU5qavpXwifl1vDJ4MqpK3
         hcsHBmoAcbV1R/bSB2zmafCBfNXA/xyugF9qGieoy0Cx5yR4dEG+/gMfOLtMrSR53/1x
         7CnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc;
        bh=a7kQbSuJBA+hO+22/DPT0818Q67abekR8AZbfSsKp0c=;
        b=WvK24Lx0JFnj+Zof48mBzHqmnCRLADEy/+t9txP7U3FWOD47KVsEyDO+LtvWaqPNHi
         6PZ9kFOED1ek+JQEG7SWpps6zHxQ9GNPe9eUbg7yM4nv0OyUSZ93tXbSSqqSX0qeyboq
         fLXWe7ByIfZ4WfjAepF1T09wR/7buP1kF9TKvJoATH6avqQHtbFibSwqySKAmIji14TR
         3dmAdwE08N2pnabOw4zu94A5KSiOhIIdrBmrV4RJkrwIL+QfuOvk7n2gHxuvB8sAMkeR
         dvE5S7g5uNwADPZnEBXnNc5C39c+xhKoV8BYpPpHCDMFWH/lja6JtxlHj/zY5Ds3moWl
         GjSg==
X-Gm-Message-State: ACgBeo3N8uwv3s5CPfhmPvaxbp2FhF9gbCv90bYKx8pq8OIy/KMOD4ZV
	uOMXwSEWpCZZXgTYnnx1dIYD3Q==
X-Google-Smtp-Source: AA6agR5VvcCXGzWQESlA+LLQuf2ieHTUv+0KU0BzRwd+V6NbSjvJ0o3/pRpLlVr4iK7FMU49/1c9LQ==
X-Received: by 2002:a05:600c:1e88:b0:3a6:2ca3:f7f2 with SMTP id be8-20020a05600c1e8800b003a62ca3f7f2mr5334042wmb.7.1662037062715;
        Thu, 01 Sep 2022 05:57:42 -0700 (PDT)
Received: from localhost.localdomain (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.googlemail.com with ESMTPSA id v5-20020a5d59c5000000b002257fd37877sm15556709wry.6.2022.09.01.05.57.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 01 Sep 2022 05:57:42 -0700 (PDT)
From: Corentin Labbe <clabbe@baylibre.com>
To: heiko@sntech.de,
	herbert@gondor.apana.org.au,
	ardb@kernel.org,
	davem@davemloft.net,
	krzysztof.kozlowski+dt@linaro.org,
	mturquette@baylibre.com,
	robh+dt@kernel.org,
	sboyd@kernel.org
Cc: linux-crypto@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-clk@vger.kernel.org,
	Corentin Labbe <clabbe@baylibre.com>
Subject: [PATCH v9 25/33] dt-bindings: crypto: rockchip: convert to new driver bindings
Date: Thu,  1 Sep 2022 12:57:02 +0000
Message-Id: <20220901125710.3733083-26-clabbe@baylibre.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220901125710.3733083-1-clabbe@baylibre.com>
References: <20220901125710.3733083-1-clabbe@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220901_055743_265718_633E67A0 
X-CRM114-Status: GOOD (  10.03  )
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

The latest addition to the rockchip crypto driver need to update the
driver bindings.

Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
---
 .../crypto/rockchip,rk3288-crypto.yaml        | 79 +++++++++++++++++--
 1 file changed, 71 insertions(+), 8 deletions(-)

diff --git a/Documentation/devicetree/bindings/crypto/rockchip,rk3288-crypto.yaml b/Documentation/devicetree/bindings/crypto/rockchip,rk3288-crypto.yaml
index 8a219d439d02..b7870a4cbdbe 100644
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
@@ -21,21 +23,82 @@ properties:
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
+            - const: aclk
+            - const: hclk
+            - const: sclk
+            - const: apb_pclk
+        resets:
+          maxItems: 1
+        reset-names:
+          items:
+            - const: crypto-rst
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
+            - const: hclk_master
+            - const: hclk_slave
+            - const: sclk
+        resets:
+          maxItems: 1
+        reset-names:
+          items:
+            - const: crypto-rst
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
+            - const: hclk_master
+            - const: hclk_slave
+            - const: sclk
+        resets:
+          minItems: 3
+        reset-names:
+          items:
+            - const: rst_master
+            - const: rst_slave
+            - const: crypto-rst
 
 required:
   - compatible
-- 
2.35.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
