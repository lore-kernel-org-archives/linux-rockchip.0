Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 53983C07E9D
	for <linux-rockchip@archiver.kernel.org>; Tue, 27 Sep 2022 08:21:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fTmD5h1GwKAkWOLrUe991bWjvxM2Ri5baezT4+Eyqe0=; b=Z/3aQr3NId315S
	pSsGdfxQIZsWx8aLWKcqyxOu4iE3Icljd4pnXKu0DgwM0KNBikOl4RWx+WoVD3qyUDuMsdLJGBVhY
	zjMdD3Uh2Z9d8BeZwZj+JEDJ+tD5UfeOzm+jYv0b2mbLvXXvZjzY2uxdNkmJ1udw8uMIHOXYktHqA
	FGeLP3OE2HVcIprcLdAEuiyU7WaocoRkC/Tk+yJwBrVMsFW1uJev8ejuUSKrQAYYSB89VbOTj/Knh
	gf4H1l4ChrQP9dc3cqnKR6jiRl2GKMbnNjkWrKpfHtXA8bS2XMAzuHqj2Q53Mq5te07ALbWpAvsAD
	+7NHcIvwC550AQtUxQbw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1od5qD-0096KG-Ns; Tue, 27 Sep 2022 08:21:23 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1od5kM-0093wH-MO
	for linux-rockchip@bombadil.infradead.org; Tue, 27 Sep 2022 08:15:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=ADE9d2Wn62ug3S5fC01dr3GFFHi+uj6qkqBx4/1dDhY=; b=KA6R38FAIUJHRy3gJ7OiRn575G
	PdNM53U0MLinvs8VWyGqsbS7l5UNLQ9++4XhnvcBBiLG5NWeJIoPgeU4Nuqd4VdnwLNQGdhPA8BYw
	PGtr5INf0GEkgm8bg1/Bum4t5eRgBlDLV3tXT1ibkUc4QslIlfYilBdBBzKJpZwgg2A0HJIMPYfUa
	lNjKc3d5Q6x+0FAee2axI9fb8LLwfYXyYgtc2p5tpJvZg6t8zSEZtZIfqQ0wG8+UEyMU1QtOPZzhZ
	nPVZb//LDqorOQIqsv2afvb8ub/5lap9lT10K8ptSw/kQRZ8dH5TYhOzSTCM/go46XffC49YD6g1F
	ly+U6sjw==;
Received: from mail-wr1-x431.google.com ([2a00:1450:4864:20::431])
	by casper.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1od5Rm-00BFZL-9Y
	for linux-rockchip@lists.infradead.org; Tue, 27 Sep 2022 07:56:14 +0000
Received: by mail-wr1-x431.google.com with SMTP id c11so13640727wrp.11
        for <linux-rockchip@lists.infradead.org>; Tue, 27 Sep 2022 00:56:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
        bh=ADE9d2Wn62ug3S5fC01dr3GFFHi+uj6qkqBx4/1dDhY=;
        b=SFEI88fkm5llcXA8dPnC3RNaxnqCMd7HxoPOQJrSbU2s0cxl37X0bOycL9YhowtTgN
         mnYLz/9AlqlQy1PRPCzLml87bfY9x9N2HP0evWgN0cowQbY7X1RDkW7ik8/bLMNGqrZw
         gj/pflWQQDsEJgi3q/tpwD6aU9fJKGBct8AYSmELz4BW6J5bof+QhacW8Ygv0uf5qd5X
         dh+gcjuxSMP8SRkBL607z+JzJKO4rvEfuldb99VUJfFpBWGwsHc78rNLimjJer28WwTl
         xYYlaNoUx621vQERHGohqDT5a6J+gdbd3tMr8O/1w+Wc2XC67onafUfYlR3mQl7zWe2k
         zoPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=ADE9d2Wn62ug3S5fC01dr3GFFHi+uj6qkqBx4/1dDhY=;
        b=6QREDFX4BVn2TrLKNGZ94Cb4b21NkuqF2pxkXVe9i9vm9eJ5B5M2x5pGh0uLVpjSH7
         I4nBI8Tl8/HKpcCvObIQMnGR7L5gGA2xiV+sbiU+470g6YQcusvtkSbnneSXqR9qfGT5
         peC8fA35wtHfhp94szSEZNNkdOtobKM/5jVj3i+SoqZaZXgGVO4eMoPF1jPxcTQqDCmz
         9+tnHQtNR3yM1XBs4LBfEYJHc5sIa1pbLfpUA+xd3/pm4GAerpfjvwWpibmoos4TugDO
         Orm378IWg3mOa9kOG7N9kHzvAnS0OVzmNTiqrFzfF6vz4VQjJNRLbenAJUQOKZ0fi9Sj
         ftDQ==
X-Gm-Message-State: ACrzQf2dlTeisXB0i2BvLGieb1NoxhCTCrD5Ve8/O59Cr73U9N3EdEQg
	JA7PKiZe8I8Pn2ad6P+w4IFEUA==
X-Google-Smtp-Source: AMsMyM6ePM+zTcykCEiPPOORnN7IA3QoPxj/NeY87glfHwuYP7Nou0cf8S83ruI20zoa58qpPnaAZg==
X-Received: by 2002:a5d:4a01:0:b0:21d:8ce1:8b6d with SMTP id m1-20020a5d4a01000000b0021d8ce18b6dmr15738325wrq.718.1664265361715;
        Tue, 27 Sep 2022 00:56:01 -0700 (PDT)
Received: from localhost.localdomain (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.googlemail.com with ESMTPSA id x8-20020adfdcc8000000b0022afbd02c69sm1076654wrm.56.2022.09.27.00.56.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Sep 2022 00:56:01 -0700 (PDT)
From: Corentin Labbe <clabbe@baylibre.com>
To: heiko@sntech.de,
	ardb@kernel.org,
	davem@davemloft.net,
	herbert@gondor.apana.org.au,
	krzysztof.kozlowski+dt@linaro.org,
	mturquette@baylibre.com,
	robh+dt@kernel.org,
	sboyd@kernel.org
Cc: linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-clk@vger.kernel.org,
	linux-crypto@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	Corentin Labbe <clabbe@baylibre.com>
Subject: [PATCH v10 25/33] dt-bindings: crypto: rockchip: add new compatible
Date: Tue, 27 Sep 2022 07:55:03 +0000
Message-Id: <20220927075511.3147847-26-clabbe@baylibre.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220927075511.3147847-1-clabbe@baylibre.com>
References: <20220927075511.3147847-1-clabbe@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220927_085606_368821_8A859930 
X-CRM114-Status: UNSURE (   8.27  )
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

Since driver support new compatible, we need to update the driver bindings.

Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
---
 .../crypto/rockchip,rk3288-crypto.yaml        | 79 +++++++++++++++++--
 1 file changed, 71 insertions(+), 8 deletions(-)

diff --git a/Documentation/devicetree/bindings/crypto/rockchip,rk3288-crypto.yaml b/Documentation/devicetree/bindings/crypto/rockchip,rk3288-crypto.yaml
index 8a219d439d02..f1a9da8bff7a 100644
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
+            - const: master
+            - const: slave
+            - const: crypto-rst
 
 required:
   - compatible
-- 
2.35.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
