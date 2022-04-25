Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D57A9C433FE
	for <linux-rockchip@archiver.kernel.org>; Mon, 25 Apr 2022 20:37:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+17UsS09c6KlQd9Q1FD5a6lRJO/JbgJdmEmoy3tNJmg=; b=G4v9j4kB76Y8p5
	qJmPRTNds5xYKHdk+XoLgn+Hk9vM9GdFJLtONjUM9gQI7mnNKdghjw9iirkS7kHSH3bRuqWMJ++zH
	/Tza7+JSEFaFmHXUDgpsGdGnc9umfhsZN6S9Z0xsRnC9PhAWaAb937aw0s/t+HLZ62oMA7IEpBUrA
	WY0J3XwJN1D85HA+IWmdT0CoFRYSuNAFQaOQCEzsIm+K+NvBH1RNEpjV7YLRifZ0HecxeMyNOSPVh
	vUYl1TupooQsUG0+IyUmLkauBr+m4bvdI4WE+vEpKCmuEDZ+XwbZ/y381D7+f6c8qQktBcw9Nl631
	xRon8/wwa9qGqiC1HMag==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nj5S9-00BI5F-1t; Mon, 25 Apr 2022 20:37:01 +0000
Received: from mail-wr1-x42c.google.com ([2a00:1450:4864:20::42c])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nj5DU-00BB9Z-L2
 for linux-rockchip@lists.infradead.org; Mon, 25 Apr 2022 20:21:56 +0000
Received: by mail-wr1-x42c.google.com with SMTP id b19so22452212wrh.11
 for <linux-rockchip@lists.infradead.org>; Mon, 25 Apr 2022 13:21:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=D9cjlrLVeM5eQ7C/euT61wRVQvdXmZsaTd4EP2AIO+8=;
 b=HDiaEKbctP/PoZzCcg6Y/UZ9i+TMTsG/paw7EACujRBL1ZlsU30GscUQZSS7lzpJxJ
 +Zx12C5u8mIxldNHKRflqtZHvsTTquBwOiugc/26CCyWHCgXTFneKA2mVeFMcumyJzGG
 xqlelCiomC9Qes137XQvBLU7ivMyP+eVy375wb1elS04yqdnSsAC9933MyH0hc5YCebR
 sJCbugPVcU3HaWdaEKkxecxqv2Sdd71qtHFVP2SoVQMWRYjcqBL6Q6pW6kRLt3Vg8nJg
 j+h5MiDrSJk6GJS2tLYVZNVEQP0QiTAjSjXTokosWBHjogBbaUPedUDAys2k6/F93AeE
 SjXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=D9cjlrLVeM5eQ7C/euT61wRVQvdXmZsaTd4EP2AIO+8=;
 b=tEuK8F8pQZ928F8L9oAZz0tx8R8/jypT9z1TiIpcexRz0VTrNYqkwiAHUipIf0km2T
 i1rNVKS7bDmhHcva9WIIAeCWYLuM6xHJWWSZ5w2Fv2B4L4+6Jp6+cdIw0qm2Xd+KBVv7
 s63vyhlbm3ypfuussoIjf3HBsEl5CE41r/uncdugsaB1OGi0fsx+eCE2piRISG8WA1WZ
 YP0zGd95fFJ9hXjvVfP+nq/A7nwOFG6q6b+6X9wo0CrMJjWV+i6OD0s9sy4E86scs/fm
 RsQbt/6L369xhR6c2oNtDMflebyd075U+VzSPy5nSkkgoXTMh6UKEQ6irNwtB5lfLIxS
 TE7A==
X-Gm-Message-State: AOAM531YqtfDnF+etydfwm5ONvKjXE60GSgpAvgAtyk6KioY0kpZEb84
 +U553jqYhUP7wjv3M3jUyFrxyQ==
X-Google-Smtp-Source: ABdhPJxMszpw1oraGi5oAhibxLOcQ55EGl2CReCfpRGXUikz3P2++wn1JFE51XVm1Twax0Lseq7Y3Q==
X-Received: by 2002:a5d:474f:0:b0:20a:cb5c:bbd7 with SMTP id
 o15-20020a5d474f000000b0020acb5cbbd7mr13345457wrs.21.1650918110690; 
 Mon, 25 Apr 2022 13:21:50 -0700 (PDT)
Received: from localhost.localdomain
 (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.googlemail.com with ESMTPSA id
 p3-20020a5d59a3000000b0020a9132d1fbsm11101003wrr.37.2022.04.25.13.21.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 25 Apr 2022 13:21:50 -0700 (PDT)
From: Corentin Labbe <clabbe@baylibre.com>
To: heiko@sntech.de, herbert@gondor.apana.org.au,
 krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org
Cc: linux-crypto@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Corentin Labbe <clabbe@baylibre.com>
Subject: [PATCH v6 24/33] dt-bindings: crypto: convert rockchip-crypto to YAML
Date: Mon, 25 Apr 2022 20:21:10 +0000
Message-Id: <20220425202119.3566743-25-clabbe@baylibre.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220425202119.3566743-1-clabbe@baylibre.com>
References: <20220425202119.3566743-1-clabbe@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220425_132152_819478_C131FEA0 
X-CRM114-Status: GOOD (  14.83  )
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

Convert rockchip-crypto to YAML.

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
