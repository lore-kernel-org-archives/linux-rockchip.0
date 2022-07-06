Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 76AC7C433EF
	for <linux-rockchip@archiver.kernel.org>; Wed,  6 Jul 2022 09:22:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PvLHvPgkdXNjW06lWXyzHBo/Ek/+4m0dYe6KZZixp0o=; b=N6Nxvfq9vZTduR
	zttAsKg8YHgFKDOA6h8AkaNhZuLxY1OnHpISHX3YbPUdEaJsqa1aMg4xvbt3sHbTCZO7SXTDl2XEH
	QZi47+B6x2ESy9lz9mh/RnphdLjt5uDdTQh9BmrSLvnsf0n04VbghP0ijnTxLfScF59Z2cAM9YkJk
	6UsoZdzXqIpCJ1t8T2b2auy9FbXTeceECBh3ThcnCqdMggSLB7NfrQjRlmMCxMLEh/Qz/SPAbq5UB
	NVJO2dbukA8Nu9VJ59FWKKAC7EpuGfXCGmT69ZuGWxfP6zi1EK/u3ieO8wnIkx94asw9asQ2uWuip
	7ev5qYNu42ng4FfYJoRg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o91Eu-007k14-Df; Wed, 06 Jul 2022 09:22:32 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o91EO-007jcM-TK
	for linux-rockchip@bombadil.infradead.org; Wed, 06 Jul 2022 09:22:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=Y1ZryWow92c9hwwvz5Hh3ukn+dkdomJWMwO/HyG9hMQ=; b=sPHW6Jaodd7+pqDcgyHjV8wBzs
	k02vcQoue3Zw1gB6OvViWSo0Fa9R+m+dSoXfto2BXlVZmfmB6wbt5++IgTjWjCiGfp4Uu4V+oYWx0
	/PHq1H6uWqlMspJesE/51yW9DtZd1H2hcR3SOtnGGtW43PKl9dYuiVEAHX6aRgItjnSD+DBqnRrK9
	XHy+sX1AzWK4IzXHc5coRxtIS2V7/ov+htxl04ByrMcolm3rRQSXDT2lbuq8nfGTqejhcxmWcesMZ
	mVu9sHdAL5s4j2WyhUkKv0XENOz1+nrMlLWxlw7H/knfVcLSxkdBqVlhZgH4+rDDFSSGrmnc0X02E
	1GhNasWQ==;
Received: from mail-wr1-x42d.google.com ([2a00:1450:4864:20::42d])
	by casper.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o90yD-001MPK-UR
	for linux-rockchip@lists.infradead.org; Wed, 06 Jul 2022 09:05:21 +0000
Received: by mail-wr1-x42d.google.com with SMTP id f2so15687572wrr.6
        for <linux-rockchip@lists.infradead.org>; Wed, 06 Jul 2022 02:05:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=Y1ZryWow92c9hwwvz5Hh3ukn+dkdomJWMwO/HyG9hMQ=;
        b=1hvxm1lYCf3dt/kNWqZz5AZEreEizX7NEtB62mDJGcxhqDzVDR6GsNQjJEw6hU3Li5
         DiiKB9lR7xHFHTLRAdNpWSWuQbSURbNkL4ltJzXpRwp/LO7NlZUKRyuZNF5Er/bAPBjH
         fHTn0cTIeLflHz8GDaigTuF2B018PZUuJJJ4xtbR6ZbHJTTNqJHyMKENGJ+uiSownI2k
         CD5lvOVAK4ovTpy9ILkL1b2htX61KzBLOSOsgPiYEkLzX9zQDN5FUXrVf9eJk04sXXFR
         j9ASqPnC7sBOK4hXbpnemsRssUwnMlNqTMG60Jpoqpbr/89/GDSIcxJ2Q4T3Chwgbbus
         lRbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=Y1ZryWow92c9hwwvz5Hh3ukn+dkdomJWMwO/HyG9hMQ=;
        b=F5gj9Mm1gAzfwYYFYfA2SqaBmtX7//2WnAKqcSgSxp/7znjYRJ00fgPzyySiG+dKdK
         pSuOqPjFKEGAe9ww+g6jIe8qLpMr6kH3veNQks3841GvUDW0lIzMrGgmbH4v9aFUGwyU
         zU7XCIZaE/1EeRrDiW1qq7GImyrkj3XPP7G8AAHn4g/k2lmSGouULXbTLrSC1pl8qPff
         OMmydKGNNPb2JXfXMNVoDwrWi5Nr/EFi77DCgn4Aj0veqBvr8sTarzwyunjqUFU9OlBA
         gYgMsNM6grnBmt6WaUHatILH09XK5mlomyrwnm+7y+cTOqzZPncLpiNm5vgIif9q1aqD
         t5hA==
X-Gm-Message-State: AJIora8NBZFoIXg0GZnA/VAzHPkuoV6LvZw1BpB/9fHSpE0k+qw9Yh8i
	3OH/pZBX6WVuoB3IByq33BBGZTzNk/HLcg==
X-Google-Smtp-Source: AGRyM1uabznHJAkndj0/PP8wr1qRzCNfHAe31LWA6AzcW1fqDJpCvWnIpQT9vAyuXkgDBlb3NHxJMw==
X-Received: by 2002:a5d:59a9:0:b0:21d:7ee2:8f90 with SMTP id p9-20020a5d59a9000000b0021d7ee28f90mr1317827wrr.598.1657098297942;
        Wed, 06 Jul 2022 02:04:57 -0700 (PDT)
Received: from localhost.localdomain (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.googlemail.com with ESMTPSA id v11-20020adfe28b000000b0021d6ef34b2asm5230223wri.51.2022.07.06.02.04.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 06 Jul 2022 02:04:57 -0700 (PDT)
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
Subject: [PATCH v8 24/33] dt-bindings: crypto: convert rockchip-crypto to YAML
Date: Wed,  6 Jul 2022 09:04:03 +0000
Message-Id: <20220706090412.806101-25-clabbe@baylibre.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220706090412.806101-1-clabbe@baylibre.com>
References: <20220706090412.806101-1-clabbe@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220706_100518_296700_1B5B943C 
X-CRM114-Status: GOOD (  12.81  )
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

Convert rockchip-crypto to YAML.

Reviewed-by: John Keeping <john@metanate.com>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
---
 .../crypto/rockchip,rk3288-crypto.yaml        | 64 +++++++++++++++++++
 .../bindings/crypto/rockchip-crypto.txt       | 28 --------
 2 files changed, 64 insertions(+), 28 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/crypto/rockchip,rk3288-crypto.yaml
 delete mode 100644 Documentation/devicetree/bindings/crypto/rockchip-crypto.txt

diff --git a/Documentation/devicetree/bindings/crypto/rockchip,rk3288-crypto.yaml b/Documentation/devicetree/bindings/crypto/rockchip,rk3288-crypto.yaml
new file mode 100644
index 000000000000..8a219d439d02
--- /dev/null
+++ b/Documentation/devicetree/bindings/crypto/rockchip,rk3288-crypto.yaml
@@ -0,0 +1,64 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/crypto/rockchip,rk3288-crypto.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Rockchip Electronics Security Accelerator
+
+maintainers:
+  - Heiko Stuebner <heiko@sntech.de>
+
+properties:
+  compatible:
+    enum:
+      - rockchip,rk3288-crypto
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+  clocks:
+    maxItems: 4
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
+    items:
+      - const: crypto-rst
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
2.35.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
