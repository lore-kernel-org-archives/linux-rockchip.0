Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 22436C54EE9
	for <linux-rockchip@archiver.kernel.org>; Tue, 27 Sep 2022 08:23:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PvLHvPgkdXNjW06lWXyzHBo/Ek/+4m0dYe6KZZixp0o=; b=O6ERnhpFoxmiNC
	l/3FlerHsRm/aq1MZ5c+NnFKS6/+ToSxwugoXXX54okkT9oHTpUs5eublJI24sgsTChk9HoUStxuY
	HkTOlIiqsBvKlZV2Ynma9u0MZl5tjyy52UQKeN5QhkVelYYyc/41PDo2WUZF6HpIsBLMKmfEdUeBM
	nHX/HrCfTiLxYqZJCQalxK39fOOBjletErAx1ypJknGIAsa+zie2y+60r3cPhqsySYtxJNakWMiRS
	05lHZPYlh8BVPX4y2X/T140PkqkYRn3mJHpXxDlXldUYpB2Ugkenf+fQ997xAiTYxfa3kLIYu6Ksg
	Xa+a1bx036oFUJrJ4njA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1od5rc-0096tt-Hp; Tue, 27 Sep 2022 08:22:48 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1od5kO-0093wH-KR
	for linux-rockchip@bombadil.infradead.org; Tue, 27 Sep 2022 08:15:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=Y1ZryWow92c9hwwvz5Hh3ukn+dkdomJWMwO/HyG9hMQ=; b=M+f3zkCryeehJt8/v5qX13WBAE
	2YLhklR0BTg+9QPr7+wXo2g/5lWTRYuIGkSAJoSiO7siD/aECxz7Qv3w6osQ487PusxMtWRTrPf5e
	rkWwazHBvR96A3Y7z8/9m9tG5ciBnuUDMy5iK+supFcT/K8zfuz93jSGIn2RRvnf3nZ2GZJeEwUk8
	SnqM2UOhvY2AYCqKzWGpwwnlI0iwDl+xYX72ItY7QWsGVdALr4/LB/2Fh6f/LG+4GSuCopaDIvRVm
	SfwA9x7Xj0A2bi+l392U3dVXL2cIVTkIsjOccpiWQVu7zCMcESihf8osWndNjkcEa6UUEfsL58GnK
	4HdSGAUQ==;
Received: from mail-wr1-x42a.google.com ([2a00:1450:4864:20::42a])
	by casper.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1od5Rl-00BFZC-MC
	for linux-rockchip@lists.infradead.org; Tue, 27 Sep 2022 07:56:11 +0000
Received: by mail-wr1-x42a.google.com with SMTP id t14so13666373wrx.8
        for <linux-rockchip@lists.infradead.org>; Tue, 27 Sep 2022 00:56:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
        bh=Y1ZryWow92c9hwwvz5Hh3ukn+dkdomJWMwO/HyG9hMQ=;
        b=vSEfwmTdvS0rDWOpL4kN1U9FsGdM8Is94fqgDJOosfdOwlQjxFj2gaZo8uoGxnipj5
         vXvw238UdUg5hr8Pn+hR+lyATIEoLNX6VlWt192Nsdqtrq5dZ6SqdUEjF7P3mEtu5dlt
         lTVasTjkFs26TcTXRAWfGQjg7ch1Z5+fxpuECglpYnjnWILhq+j3jNQMDz2qVESS6zQb
         plYabEwgNUFEoDhbNamK/eHiuUrcR6qbIp0uqeomCHrt1IOZXYWsLvDy+QInbc17ARJl
         cN1B28TN+I8tLDBI+M5Sk649lb4bL6zmsBOZhjro21dDbiMc4U6sjWqakjbWXarnlzfU
         H1HA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=Y1ZryWow92c9hwwvz5Hh3ukn+dkdomJWMwO/HyG9hMQ=;
        b=6u0x6dJx8IdGHa1uNDLYDgahG74fXf9+eopRnjP1QQjdO/Q+DWOKmwfSdCBXP+n3zB
         UBVitOGfga3hKq8wdg6ErD2bFUGYVkM24+SnmdiH4YGzwT2zUmAsjWs5HlgyQ/vo48Vf
         Blu1k4a7bOjsz8pltlHQqJHwI+GZok1qZlVDslSpHtouys0vsY742b4E3ZyijpQ8lRpq
         CYPmTo3hdXPOEbu8JnLyweCwCpkB3UQ9szQnA1/IyWR02qA1LSlJ8jU3424MrfVkiqV7
         4JrJcWbHQlJSwCVuTnTcrjp36F54humW+A7OvWVR4fHRk8XUEWAoy/ghq89i9b0+MW5E
         y7LA==
X-Gm-Message-State: ACrzQf3JE1Q7GH/jJ170vLWBoWgZVgjRjxgIjt1yuD7rzH8JMD5Ss40M
	KueQt5+NNHDJC7HNULI4VxMpDA==
X-Google-Smtp-Source: AMsMyM6FtJzoyOaACXFQFUnMTqzDhHzSxdMONARXjapnrk5VKMZTHX5M8BbUXf/7AnxCxq/CgufRYw==
X-Received: by 2002:a05:6000:1a87:b0:22a:56da:9a2b with SMTP id f7-20020a0560001a8700b0022a56da9a2bmr15995284wry.433.1664265360372;
        Tue, 27 Sep 2022 00:56:00 -0700 (PDT)
Received: from localhost.localdomain (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.googlemail.com with ESMTPSA id x8-20020adfdcc8000000b0022afbd02c69sm1076654wrm.56.2022.09.27.00.55.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Sep 2022 00:55:59 -0700 (PDT)
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
	Corentin Labbe <clabbe@baylibre.com>,
	John Keeping <john@metanate.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v10 24/33] dt-bindings: crypto: convert rockchip-crypto to YAML
Date: Tue, 27 Sep 2022 07:55:02 +0000
Message-Id: <20220927075511.3147847-25-clabbe@baylibre.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220927075511.3147847-1-clabbe@baylibre.com>
References: <20220927075511.3147847-1-clabbe@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220927_085605_789313_545668ED 
X-CRM114-Status: GOOD (  13.74  )
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
