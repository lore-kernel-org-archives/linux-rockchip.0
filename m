Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 63C01C43334
	for <linux-rockchip@archiver.kernel.org>; Wed,  6 Jul 2022 09:22:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=a+REbs+4dZYI1qPV/EuAe3Cwlr0r9qpF5lTLwpLGOzY=; b=VfHKJmWtxHPuwu
	2O5XftT5bGcElcYYk7v3msnh7apK4/VD6MW/fFzmoIfvmsFox4PAiRH6eUSodQRwBPgfJ67FYStcX
	Ts+Ydfg+AzBxGGRNPtII+OKN31x0fYSIiZz90uO4beG8x1L/7XG80/YC7TVNmypjfxJftmQL0tHGo
	cuWJN7XPso3gjkQz2r+ZtVR94JkYlPRAFnJZeYwNSNJp1BM8Yp+IGBrUAS3VeoWf7LMKzT2Hv6DgV
	d8RpgQx9DebjrRHzjnLvUTn3y/TN6kHBTyNsJAOYqfWF5eiRlnZTJK4MawI9oP2ZzppblaTJBJE3N
	ynLA68XYU3QeDY+7T5Kw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o91Et-007k0d-Nd; Wed, 06 Jul 2022 09:22:31 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o91EO-007jjw-Q7
	for linux-rockchip@bombadil.infradead.org; Wed, 06 Jul 2022 09:22:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=X7cJlxa5ip0o5lrSA1Cq27Abc5a+ZcugcbcpPEkeHA0=; b=c7BPe9Ce1EibT+IcNWbuBcZnVf
	p4fRWPNWdmdhMq+7tjsf3B2xE7oABsM2IqLPr3TZuwf67Zog4riZ1TwPLzNWdwKa7LI1JQe/IVotZ
	pGJ9NInEWDSGu9XeOE5GhDNLCr5cJgT4FMou2o1iZz+zN3wc675FIbk083YadRXB4TKyASMQN4e5F
	iJ6PUnSpXgT2dS14zZcVu64MZxl6wR4SoCsYea7sJlK9WNofYGMNXJGrCvrbes46YBWVM7q6eH1SF
	sjFJDd3wVcUGCaFyLEiWKq7fmR9Q0at1vBIoxfdUw+21TOkLr/gMkvIyGff0QlrsSwEdems4xyQZ/
	L/qwEnOw==;
Received: from mail-wm1-x32b.google.com ([2a00:1450:4864:20::32b])
	by casper.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o90yD-001MPM-UU
	for linux-rockchip@lists.infradead.org; Wed, 06 Jul 2022 09:05:22 +0000
Received: by mail-wm1-x32b.google.com with SMTP id j7so8437104wmp.2
        for <linux-rockchip@lists.infradead.org>; Wed, 06 Jul 2022 02:05:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=X7cJlxa5ip0o5lrSA1Cq27Abc5a+ZcugcbcpPEkeHA0=;
        b=BfBzAqSa8w4fzWQfTTC5FNOLO2uFMVd7IYdWjSD1AGYBlpM8m5TE1ecjewFy4BzQdm
         FplphJsHz3EMKXLnuHO0YKsCoQMx9RNS6XtxNkdrGzCO6zQdxMATQaL8JL/UnQKwIv5c
         r/dKRE5+NOm78+DireDdXfXz7kYN9M2FmHCjQJNAlJkuAE5oh6lL6xe5FEcOBLKr5DYL
         cAAMmtZtdp+qJ+In3wyGnuARZcJJDnCvMzxpqfqdiomMHErTKlnxg2tQyzjSZRmh+EJU
         bAqN98KmOGhaUC5nWrNl1UZjuXvogwdsAedOnXZEBJcsl9x4KytoIM8gc4N7HlsFQAef
         hR4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=X7cJlxa5ip0o5lrSA1Cq27Abc5a+ZcugcbcpPEkeHA0=;
        b=Iutfk4rmavmnH8mnkMys0EB5/aZinn+numv3OC6c/9bIack41bBQ0UigUh0krFzBhs
         vo2qkv886/aqTvDL/2yNvivk+FTh2g+bnGbXiEnETXWqinDQSCLABx827VvdZeLQr6tc
         j8jETm/cWitQpDqO383jk9HJ2AmAW78/to0yFDJF/GinWh1RozQEvnL17VkRCEFNPUlX
         PJ/UaS8UYviuUa/lzzhWdhGaUyPJjl8LHLoETja0Pe5XTe2SIOk1QYaIyZuLSR/LYvA1
         IcsC1pZ29N73SWrUg6chHfeAQcHLvyF3nZ07lplK3uAnpQJGNHGdRi+Zp0EcmrwWIH34
         soyw==
X-Gm-Message-State: AJIora+qys9Ukhawsde7YEA6BtEVCOMW8b2N/mMyEXd0TR1DrwvvsjUX
	bxNGAcuN0cP9RJBreXR3jIztWA==
X-Google-Smtp-Source: AGRyM1utZG4kGVK/bdSC11gh5qhrQPpgTsu7xN4H/jrdTP0t32LTuyn3YGK5ZUhfv+JR9psfGdVT3Q==
X-Received: by 2002:a05:600c:1f11:b0:3a1:967c:5f0d with SMTP id bd17-20020a05600c1f1100b003a1967c5f0dmr22483370wmb.26.1657098299074;
        Wed, 06 Jul 2022 02:04:59 -0700 (PDT)
Received: from localhost.localdomain (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.googlemail.com with ESMTPSA id v11-20020adfe28b000000b0021d6ef34b2asm5230223wri.51.2022.07.06.02.04.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 06 Jul 2022 02:04:58 -0700 (PDT)
From: Corentin Labbe <clabbe@baylibre.com>
To: heiko@sntech.de,
	herbert@gondor.apana.org.au,
	krzysztof.kozlowski+dt@linaro.org,
	mturquette@baylibre.com,
	p.zabel@pengutronix.de,
	robh+dt@kernel.org,
	sboyd@kernel.org
Cc: linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-clk@vger.kernel.org,
	linux-crypto@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	john@metanate.com,
	didi.debian@cknow.org,
	Corentin Labbe <clabbe@baylibre.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v8 25/33] dt-bindings: crypto: rockchip: convert to new driver bindings
Date: Wed,  6 Jul 2022 09:04:04 +0000
Message-Id: <20220706090412.806101-26-clabbe@baylibre.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220706090412.806101-1-clabbe@baylibre.com>
References: <20220706090412.806101-1-clabbe@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220706_100519_228129_9F768702 
X-CRM114-Status: UNSURE (   8.43  )
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

The latest addition to the rockchip crypto driver need to update the
driver bindings.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
---
 .../crypto/rockchip,rk3288-crypto.yaml        | 85 +++++++++++++++++--
 1 file changed, 77 insertions(+), 8 deletions(-)

diff --git a/Documentation/devicetree/bindings/crypto/rockchip,rk3288-crypto.yaml b/Documentation/devicetree/bindings/crypto/rockchip,rk3288-crypto.yaml
index 8a219d439d02..5bb6bf4699ff 100644
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
+            - const: aclk
+            - const: hclk
+            - const: sclk
+            - const: apb_pclk
+          minItems: 4
+        resets:
+          maxItems: 1
+        reset-names:
+          items:
+            - const: crypto-rst
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
+            - const: hclk_master
+            - const: hclk_slave
+            - const: sclk
+          maxItems: 3
+        resets:
+          maxItems: 1
+        reset-names:
+          items:
+            - const: crypto-rst
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
+            - const: hclk_master
+            - const: hclk_slave
+            - const: sclk
+          maxItems: 3
+        resets:
+          minItems: 3
+        reset-names:
+          items:
+            - const: rst_master
+            - const: rst_slave
+            - const: crypto-rst
+          minItems: 3
 
 required:
   - compatible
-- 
2.35.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
