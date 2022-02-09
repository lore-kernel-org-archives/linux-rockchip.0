Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D0AE2C433F5
	for <linux-rockchip@archiver.kernel.org>; Wed,  9 Feb 2022 12:47:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=DdgjtoP7zVgGWaCoGaIAUiAX5z/Rcy398/BQWRHIAsk=; b=1309qY8aNh1QrN
	BM51znLu5mKAMUPLClRzNDw9p1al98SoE2CvZYJy0tq1oE0YCTVTt2TDcAUvjQ5rOkV5Q4KuOfN3/
	Qgmx96d3vWFAJo6RV6nuO4U9VeDJUgyzFjbVcEmIQVN+ef8cQnSuZmY7Iky+UvQEvn+ut6EHCLW2K
	5OTuf8hrfhFcDoMSxS48DPGfIjoN8RYlxeyecqnOUSYtBWZYZsX+q+sOQ0sKXZvrVMDQLviNq8qZs
	xWyccmvOmri+PBtWpxER5D//1iesp4qBqCFaRXv0gGfzYPbVc0+IXfN9uvF7YwitGM6yxRWHF0LIK
	hlCaJWARTgcE8WjOgf4g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nHmNv-0004QF-2F; Wed, 09 Feb 2022 12:47:47 +0000
Received: from mail-wr1-x42d.google.com ([2a00:1450:4864:20::42d])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nHmNi-0004N8-AQ
 for linux-rockchip@lists.infradead.org; Wed, 09 Feb 2022 12:47:38 +0000
Received: by mail-wr1-x42d.google.com with SMTP id d27so3861050wrc.6
 for <linux-rockchip@lists.infradead.org>; Wed, 09 Feb 2022 04:47:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=8KKYJ6eDy6KSnsSKdeEJDtLtm3smSqg5GzRuwnz+AbE=;
 b=RS6jPHtzTIJDhkk3PdljqHoRS37P6K6YLpDOj8DRjIol0d5IU22yJ5omh4BClCAY9d
 8rj4iecxAZASniAHLurbjkx8FR6SCkc/tGj9gx/yrSyLlZWd3oSA3IkFSf+ZeyrDOYGX
 KS6ZBnauyFzSVGx83yorjIBc/7qN0vtan67xMzLXWd/s2CpYCLpvgqXN45YBBEP2Ss12
 3KxhZM7iaTS9OoAorjP8/rmH2N2chrNYepuCrz7Tfm7OJS1Lupfx9Qj2GF65QiKk7CW1
 4EIsdXJxevbr6zkb/1dXtonKvKeLlols1WCO+Jku/A1OLyDveOB81Mlg/xtfpIq7Tntl
 T2MQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=8KKYJ6eDy6KSnsSKdeEJDtLtm3smSqg5GzRuwnz+AbE=;
 b=qWnl5rwSg7Vkd3CejWDCEtHduCxY7uW7i/E3bmIArAs8WzCQQZMY4fJG4JGB0EvmCQ
 kz2NhUEVtBdoTD9UHmiEVKqdbe2nz0sZS37uvXwzBksRtt6OiRT+88zl83H6cTLf/89D
 xWgzT4E7kLRtkIlu1N+JBH1zz++JWoduDhU6RMD5AbHzMGvUcw4d/hO0hTe+KSVOsrma
 NCF7XazbXbS3CRoIR/TRz4Ww2tK1+7IDKb6lfYRiFcaZ0A9AuiYdqQm2eAVpQLKXtELT
 ZtW0tCuaLXhgiF0RQfXV0PfD9PE7cnFRpigN4LdLe7AnyrNvmCnGVwGI4AnY8Db04Oo1
 tAjg==
X-Gm-Message-State: AOAM5321buIgGxfAjRg34dBZcygyidhnqLhJkbxFr3NG0ZxDNs9zvomP
 QzUXbdj/vg9Qo8s+r8Iw5whBTA==
X-Google-Smtp-Source: ABdhPJwSsJ8mWCJ3s7wNHrs1Ze3j6HvXeNSDhG9u3iAU2F4IW/6g3LKiNDG5Xk9tl6gLMze4VGEXjA==
X-Received: by 2002:adf:f50a:: with SMTP id q10mr2006142wro.252.1644410852767; 
 Wed, 09 Feb 2022 04:47:32 -0800 (PST)
Received: from localhost.localdomain
 (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.googlemail.com with ESMTPSA id o20sm5137834wmq.35.2022.02.09.04.47.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 09 Feb 2022 04:47:32 -0800 (PST)
From: Corentin Labbe <clabbe@baylibre.com>
To: davem@davemloft.net, heiko@sntech.de, herbert@gondor.apana.org.au,
 krzysztof.kozlowski@canonical.com, robh+dt@kernel.org
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-crypto@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Corentin Labbe <clabbe@baylibre.com>
Subject: [PATCH] dt-bindings: crypto: convert rockchip-crypto to yaml
Date: Wed,  9 Feb 2022 12:47:25 +0000
Message-Id: <20220209124725.2080986-1-clabbe@baylibre.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220209_044734_451354_C57BC6D2 
X-CRM114-Status: GOOD (  14.13  )
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

Convert rockchip-crypto to yaml.

Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
---
 .../bindings/crypto/rockchip-crypto.txt       | 28 --------
 .../bindings/crypto/rockchip-crypto.yaml      | 64 +++++++++++++++++++
 2 files changed, 64 insertions(+), 28 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/crypto/rockchip-crypto.txt
 create mode 100644 Documentation/devicetree/bindings/crypto/rockchip-crypto.yaml

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
diff --git a/Documentation/devicetree/bindings/crypto/rockchip-crypto.yaml b/Documentation/devicetree/bindings/crypto/rockchip-crypto.yaml
new file mode 100644
index 000000000000..392d89055398
--- /dev/null
+++ b/Documentation/devicetree/bindings/crypto/rockchip-crypto.yaml
@@ -0,0 +1,64 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/crypto/rockchip-crypto.yaml#
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
+    minItems: 1
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
+    crypto: crypto@ff8a0000 {
+      compatible = "rockchip,rk3288-crypto";
+      reg = <0xff8a0000 0x4000>;
+      interrupts = <GIC_SPI 48 IRQ_TYPE_LEVEL_HIGH>;
+      clocks = <&cru ACLK_CRYPTO>, <&cru HCLK_CRYPTO>,
+               <&cru SCLK_CRYPTO>, <&cru ACLK_DMAC1>;
+      clock-names = "aclk", "hclk", "sclk", "apb_pclk";
+      resets = <&cru SRST_CRYPTO>;
+      reset-names = "crypto-rst";
+    };
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
