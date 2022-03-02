Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8D467C433F5
	for <linux-rockchip@archiver.kernel.org>; Wed,  2 Mar 2022 21:32:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kFpkHz5GUg7UQ5rAr0S3duTO0hqVVlEpstsl5zVGlEQ=; b=g+ohtH2QUcSZTR
	AjXumIUDzIz5MDYeL5tfVupXeN6hsiZCqR5lmrtq5qlvFJsHWFBGcddmS9RtD6Xihra8kveOx/tnd
	VRcmsrdVk9ALu/VCuogsT8VF51QkDKiEu61U5GZtBjokuODmIv7YyKfRxZh6yanixVBwv3YLbE1Wt
	GbGJ46tp+pXsRRzGCpiPzrjQYMsR6Boy1vCYeU45YPh/HBpWu1gBtoNLmU9Yq0zGtyxIDdFYpayMB
	0dj5elQEK+2FQayD/xwPbCqr1YqvPJAc7wV+eHlpescMhMGr2Yjfhh7CqU4jH8pCnq2tgyJJiB8Jc
	Z9F88wnlcGjGnWzC6ncQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nPWab-004LMN-8s; Wed, 02 Mar 2022 21:32:53 +0000
Received: from mail-wm1-x32a.google.com ([2a00:1450:4864:20::32a])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nPWG1-004Bq2-5a
 for linux-rockchip@lists.infradead.org; Wed, 02 Mar 2022 21:11:48 +0000
Received: by mail-wm1-x32a.google.com with SMTP id
 o18-20020a05600c4fd200b003826701f847so3573316wmq.4
 for <linux-rockchip@lists.infradead.org>; Wed, 02 Mar 2022 13:11:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=yUNJa0n+/+VLKeUfbQ8m8zZAWYXlq8+bAjwZIreykv0=;
 b=Zwi2SldWf2lk9iDg37u7jYK+5ZP1gxBN/3G9ZIm2I7K0hz8hn6u33L2bXaisNRfjSV
 iRGl2GXhiPqX6z16bOzcrS/0gaOd0JA0VcOB6nf7DB1vgeX9WeHp6pTGJz23+ojK3uP7
 nt9svK80mVMOMdkE3WQvNwCOn/ZFbxsWXfOKwXkX/8311ONh+W42xCGKIPMxbMH10WtC
 1aL/PSexg6jjs1YXH+ESMz8vD5RBZHhNHV145iAaGqEWU4PY3mtyHqHRre5Pyie1M2m/
 SmcDhGUxi2ZtIrje9Rc5FWefvSpg/uXLBpS3fpIwAeBeoT0L3K/Mv2dWExhc+A7wYQBf
 GgpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=yUNJa0n+/+VLKeUfbQ8m8zZAWYXlq8+bAjwZIreykv0=;
 b=h+bKRZd/MeCJdOlYywG73NGnIQ+HW48Ej8qP+qj7q69kmpfQEh0cHWDE020ANoT/LQ
 Zfm8/Zkt3nl3Hh8e5cos2wTnXWtuphEVFlM4cJxyF5y1s91ZA/DU5dpW4GbhxZVmUiOw
 sI3r83O7jgkoPs3+ulfMmnMoyzl3HzbTV9NciIuwLC2i8/0Z0lCZQLJF4Qj0/xp+Xm82
 p6/s5tCosPQv536G1/yS4SGc8iflelOukklooAOZINt0Z8NaAHC2psKSHgB3BNkD9nS2
 sQXc5v7UzOKaTa+xQoUb6cVrqpIm+d3jilHQoc2oScy6+M0kV6yvcrBKhL1KzGVsTrpc
 hYwQ==
X-Gm-Message-State: AOAM530RHcO0tXhy3YOwvsXPlZwzzTil2vBbPNKwvCxlrO+22oSoXiKl
 uRZGE7EJVenWKCpY/bM/H7B9pA==
X-Google-Smtp-Source: ABdhPJwJf1Ae9DsZbV31LZDvdGUZaCcdetV3oblUUCxn5a1acjkqW6HqjBin1t6XrQn3tp0Ou8+M+A==
X-Received: by 2002:a7b:c939:0:b0:37b:c13f:6fa3 with SMTP id
 h25-20020a7bc939000000b0037bc13f6fa3mr1368632wml.72.1646255495819; 
 Wed, 02 Mar 2022 13:11:35 -0800 (PST)
Received: from localhost.localdomain
 (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.googlemail.com with ESMTPSA id
 z5-20020a05600c0a0500b0037fa93193a8sm145776wmp.44.2022.03.02.13.11.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 02 Mar 2022 13:11:35 -0800 (PST)
From: Corentin Labbe <clabbe@baylibre.com>
To: heiko@sntech.de,
	herbert@gondor.apana.org.au,
	robh+dt@kernel.org
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-crypto@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, john@metanate.com,
 Corentin Labbe <clabbe@baylibre.com>
Subject: [PATCH v2 17/18] dt-bindings: crypto: convert rockchip-crypto to yaml
Date: Wed,  2 Mar 2022 21:11:12 +0000
Message-Id: <20220302211113.4003816-18-clabbe@baylibre.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220302211113.4003816-1-clabbe@baylibre.com>
References: <20220302211113.4003816-1-clabbe@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220302_131137_258380_3FBC7B70 
X-CRM114-Status: GOOD (  15.33  )
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

convert rockchip-crypto to yaml

Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
---
 .../crypto/rockchip,rk3288-crypto.yaml        | 64 +++++++++++++++++++
 .../bindings/crypto/rockchip-crypto.txt       | 28 --------
 2 files changed, 64 insertions(+), 28 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/crypto/rockchip,rk3288-crypto.yaml
 delete mode 100644 Documentation/devicetree/bindings/crypto/rockchip-crypto.txt

diff --git a/Documentation/devicetree/bindings/crypto/rockchip,rk3288-crypto.yaml b/Documentation/devicetree/bindings/crypto/rockchip,rk3288-crypto.yaml
new file mode 100644
index 000000000000..1db03165f21a
--- /dev/null
+++ b/Documentation/devicetree/bindings/crypto/rockchip,rk3288-crypto.yaml
@@ -0,0 +1,64 @@
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
+
+  clock-names:
+    items:
+      - const: aclk
+      - const: hclk
+      - const: sclk
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
+               <&cru SCLK_CRYPTO>;
+      clock-names = "aclk", "hclk", "sclk";
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
