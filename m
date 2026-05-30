Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A1A37CD5BD0
	for <linux-rockchip@archiver.kernel.org>; Sat, 30 May 2026 16:07:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RYU1d+aDdgPlx4UDh6advEdZ++hnftWa39ay+JlWwOs=; b=LnX/ufhYJVdH3g
	2U37vsulSNtWKnQah11kAXmLhS8DrzFCAY0ZMtkwn2AXsoP4XRhYp2X+oZW4m/4nGpy+OUsE8AwEg
	NBFDC1gA0iuqn3Yvsut+f++XzwpMvGs1MmWfnNy3FEN8AX1ubeB4Xe/kEzouMJYowCmjSBiu0ay5R
	nwzP1IpfgtNlZE14jTV9w5Qad2LQX20H3sMZUTnJAxygH+M2BfCaHtJkzfzYTcNl/wctSyXe6e9+u
	5U3dbhQeqvtO9O72mzyS5OYdsmi2KHNHavYo2yYya2LcmyatfIiMZxkuws1faFiAOifKgrddeaPW7
	brrJjxKz18uk6ZGyxxLg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wTMDV-00000008u96-0gAi;
	Sat, 30 May 2026 16:07:17 +0000
Received: from mail-wr1-x42b.google.com ([2a00:1450:4864:20::42b])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wTMDS-00000008u7U-3eKO
	for linux-rockchip@lists.infradead.org;
	Sat, 30 May 2026 16:07:16 +0000
Received: by mail-wr1-x42b.google.com with SMTP id ffacd0b85a97d-45eea3448f2so1554674f8f.2
        for <linux-rockchip@lists.infradead.org>; Sat, 30 May 2026 09:07:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1780157233; x=1780762033; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=sh+f2AliULr9Rp7wvXUw2a0MafO9SPx6nLUlNFzn0RI=;
        b=l2zuropmHC6AXB+AZV1CFL4GMWvy6bS800/iexUqgn06dEU+d05rxyaIZkjcwrmz/I
         EIKz72vqGft51YJ4vgTIi8HYDA9GWdWo7DMrn7+sldP1be0Q4uLsYjU6oFUaigff9Cym
         QeOx+uK/9POhoStCTsnyNkFoVjz9urfCQp/EZ+RWyFJdHibxdruOLYuoEg9YxytDmHiV
         VXnpKT+osqDadwgtIBvQFvRTE5HwEGh8zjLQKsU7zsRmptG0WvzWVVHc3sS7r6DK5wR/
         QQuNBKnTJEG/rciBMSON9zwzN/lmdEiewy4yjEYsDKJS4BQSuzDBoR3ZJoavZUBMIOUd
         zwyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780157233; x=1780762033;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=sh+f2AliULr9Rp7wvXUw2a0MafO9SPx6nLUlNFzn0RI=;
        b=O3sD2/rZndS8TXpXmHEJFWM0jdi2ff7oJo6e0yo3naYReHcg+DDMdKqs19SkE3hKX+
         p2fX4M4GFO3NqCjRIKWWix0+GI6blGo2MGGpdX1thiD/14tXt6OqS0jXYdPnVGtA91Vr
         MtWyswsPegLwRIWZotMDXc6fmIEO1kWNpLE05I63IUwmmFuVSA5SAZ5gX7rT6LIc4Eho
         4nj3C+HXDREGR90rWNwfiQctMcOJ5+dMSE8PzmP7/hdvF0JwCyaTUmivk3wk8VcCVhKv
         fIi16b1rtNcgH90sBESTVupqwYpTDwU4Cmxt0to0SaVHpcb0GlqTk+hFTcDMZiYJN0CQ
         1wnQ==
X-Forwarded-Encrypted: i=1; AFNElJ8fWN7IANWgdkFEcl5GiyvGSXOfys2C08Hp0R5c5/2OouOMVxkxd64a1h9qtW/Bro1723+KD6UTzO1RcRGmCw==@lists.infradead.org
X-Gm-Message-State: AOJu0Yyj8tL7CBlCj3Q7SBLbIfmc1ioksXhC8XpLpeMxilsuaGrU7l5H
	8vcJ3M9l5ZLpu2Z6MsjRfdADU/7rolz/4wZfAENpFju+TSwd+WOjjYp+
X-Gm-Gg: Acq92OHhvNHFgUL8uCfN9m53mr/BuNUohrs7X+bd55ZJJ1v+Ut/WsL5ITOep0nQeqvu
	FAZrLtoZh/1ZEmLwAJzuEUVkxhd+ySJ4aiF6ZM3VLQ1J/1lIq0ja/ILaoQQfU5qbNGVE3e7xJfN
	uezCNHf7BbNJgxKKpKqoJqVGqi2RI/M8vW/zGChNnD1QSJ1pN7g0QaPYQppfHiBYW70VRXKAkqE
	0nomGX6yy+iJ2n1B4l0r6vPqwVjCOUXP5wKzFxd4e/a9LJ930FsFur9vELdL+HJ1RTUF93/5uQD
	tLReWXWWYawSmqHca2y27uMscldTg5UsN2k31fTHw/MQIdzsiQmAFQtWwjM9zTrV9ugT781NZ4O
	hkYW0HWdfqnLh7rwVxfg+boiUf4NQanTUg4gSrPMadAP/aCE7ugp4zUKw9Lnd1CbkfG+v/I+ELU
	gwPQ9Vmq45aNpPCbAcl3B4CKGoB9E=
X-Received: by 2002:a05:6000:22c7:b0:43d:762e:76ba with SMTP id ffacd0b85a97d-45ef6b19b8emr8623681f8f.17.1780157232877;
        Sat, 30 May 2026 09:07:12 -0700 (PDT)
Received: from olympus.. ([2a0a:ef40:ea3:3f01:2e0:4cff:fe68:285])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-45ef32fabcasm11667339f8f.0.2026.05.30.09.07.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 30 May 2026 09:07:12 -0700 (PDT)
From: Dawid Olesinski <dawidro@gmail.com>
To: herbert@gondor.apana.org.au,
	davem@davemloft.net,
	heiko@sntech.de
Cc: linux-crypto@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	clabbe@baylibre.com,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	linux-kernel@vger.kernel.org,
	Dawid Olesinski <dawidro@gmail.com>
Subject: [PATCH 1/4] dt-bindings: crypto: rockchip: Add RK356x/RK3588 crypto engine binding
Date: Sat, 30 May 2026 17:06:42 +0100
Message-ID: <20260530160704.3453555-2-dawidro@gmail.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260530160704.3453555-1-dawidro@gmail.com>
References: <20260530160704.3453555-1-dawidro@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260530_090714_940391_BA9D3AE0 
X-CRM114-Status: GOOD (  13.36  )
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

Add a YAML device tree binding for the Rockchip second-generation (V2)
cryptographic hardware accelerator present on the RK3568 and RK3588 SoCs.

The IP block exposes AES-ECB, AES-CBC, AES-XTS block ciphers, SHA-1,
SHA-224, SHA-256, SHA-384, SHA-512, MD5, and SM3 hash algorithms, each
with a hardware DMA engine controlled via linked-list descriptors.

The binding covers two compatible strings:

  - rockchip,rk3568-crypto: clocks and resets are driven directly by the
    non-secure CRU (accessible to Linux at EL1).
  - rockchip,rk3588-crypto: clocks and resets live in SECURECRU, a
    register bank sandboxed to TrustZone. Linux must request them through
    the ARM SCMI firmware interface (scmi_clk / scmi_reset), as direct
    MMIO access to SECURECRU from EL1 triggers a bus fault.

Signed-off-by: Dawid Olesinski <dawidro@gmail.com>
---
 .../crypto/rockchip,rk3588-crypto.yaml        | 69 +++++++++++++++++++
 1 file changed, 69 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/crypto/rockchip,rk3588-crypto.yaml

diff --git a/Documentation/devicetree/bindings/crypto/rockchip,rk3588-crypto.yaml b/Documentation/devicetree/bindings/crypto/rockchip,rk3588-crypto.yaml
new file mode 100644
index 000000000000..4188ed8920db
--- /dev/null
+++ b/Documentation/devicetree/bindings/crypto/rockchip,rk3588-crypto.yaml
@@ -0,0 +1,69 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/crypto/rockchip,rk3588-crypto.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Rockchip cryptographic offloader
+
+maintainers:
+  - Heiko Stuebner <heiko@sntech.de>
+  - Corentin Labbe <clabbe@baylibre.com>
+  - Dawid Olesinski <dawidro@gmail.com>
+
+properties:
+  compatible:
+    enum:
+      - rockchip,rk3568-crypto
+      - rockchip,rk3588-crypto
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+  clocks:
+    items:
+      - description: Core clock for the crypto IP internal logic
+      - description: AXI interconnect clock interface
+      - description: AHB interface clock
+
+  clock-names:
+    items:
+      - const: core
+      - const: aclk
+      - const: hclk
+
+  resets:
+    maxItems: 1
+
+  reset-names:
+    items:
+      - const: core
+
+required:
+  - compatible
+  - reg
+  - interrupts
+  - clocks
+  - clock-names
+  - resets
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+
+    crypto@fe370000 {
+        compatible = "rockchip,rk3588-crypto";
+        reg = <0x0 0xfe370000 0x0 0x2000>;
+        interrupts = <GIC_SPI 209 IRQ_TYPE_LEVEL_HIGH 0>;
+        clocks = <&scmi_clk SCMI_CRYPTO_CORE>,
+                 <&scmi_clk SCMI_ACLK_SECURE_NS>,
+                 <&scmi_clk SCMI_HCLK_SECURE_NS>;
+        clock-names = "core", "aclk", "hclk";
+        resets = <&scmi_reset SCMI_SRST_CRYPTO_CORE>;
+        reset-names = "core";
+    };
-- 
2.47.3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
