Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4D0B4C44501
	for <linux-rockchip@archiver.kernel.org>; Wed,  8 Jul 2026 17:59:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=toj4r7Vg+kWzg14Z1EWjXBZz9RJHBnobRDabhMXFFgE=; b=BVdZInjElx8eXC
	fGA07sok7XG//u0VU3Yz72Xzl0q2QcnEOAwK5hFlGbYJmaAdv26QmtAr5NuwJ1S/WbzgZ/aTGGeuB
	rK4cV4KHXH1/YkfGd4eNvmVPoVKTGA0DIB7xQXFmNmUwF7Izw0ImQoxYW3a95w1A6wMAGnpfTSCl3
	o9oxCx89oMRfZ4bbDVPUKl13SzKuVJUc3EKu6vvGNLEnfZnClNIyoZwncIeIFrQofpvhSEB5AaFL1
	pEwjpB0B3EYMQJ1vwNyd9RdavEKNuTnYd/a+bwJm5dnu7bJIJuCPnrioPzdBaMEXhiqbxP0grACZe
	3z62d/VVFqhlXkzuB3aw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1whWY5-000000008ht-3AlN;
	Wed, 08 Jul 2026 17:59:05 +0000
Received: from mail-ej1-x633.google.com ([2a00:1450:4864:20::633])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1whWY2-000000008fW-2art
	for linux-rockchip@lists.infradead.org;
	Wed, 08 Jul 2026 17:59:04 +0000
Received: by mail-ej1-x633.google.com with SMTP id a640c23a62f3a-c15b33f7b23so151421866b.3
        for <linux-rockchip@lists.infradead.org>; Wed, 08 Jul 2026 10:59:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1783533541; x=1784138341; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=ANaeyZnIlvUZuUb+qcVD79ri5D/Hu+DLtzSwYPDFNAo=;
        b=hRSQQ0PZjPfy5u8nrhriqspABANkyMRA3nbV5vLCMBUAdUzZgeylMvmKIPO1dXd9ft
         saXk2LosAXQyqz4x7XF4rbga3beXmwpP4vlHQeokBYKu73KnQXLYrqp100wFavGsBLVA
         r2Sm0fzhYjz+0jKEQ/9JUI6B2fXwboK1dpsK8sXJigaDrGIPOtVDMnvLDwo5TvG9Uqyq
         xzPvUcqfGJ0BURqGbftH2oWSH0SNkQGgSObJ3ZZbd4aOWdAj3js+yix5zScwKDdaqBlT
         E7a0QnZibhtperlL5un45jA4Xe7Wn2yr6aNjB63BW/DHQTZGqvvJHVd+PyWh/oMWEco7
         lqIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783533541; x=1784138341;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=ANaeyZnIlvUZuUb+qcVD79ri5D/Hu+DLtzSwYPDFNAo=;
        b=DFeKuxCq6+QXzZReo/4RYZxPkhAf3fzgA8Yjq6uKeTANu37TEk1rTOFpiKYVxGl9WY
         wf5dgcmGdox3FctyCLuPG7owxJd5xuabli+Z2pMGzbaCZMeTkM63LJGJ2Ep5Xl7PoDFd
         Uuck4RQfgMlJMJBLQQCPswnNsbcieZPhktHpJ0KLxWTCB/4d7865klc0owfd/FBglyfU
         b1DUfX1pjqmMvF31yjhNkUYUh9AlB9yf1LanFQlRqpgy2yU7BFMH7dfxxuI8ayUJ9PiM
         U3hbYH2rOxtaL9wrdIn57on+0RI31Oq7gQsGYt69pFG6+KUeq3VsF5OeMRpZNYaK2wfj
         SE1g==
X-Forwarded-Encrypted: i=1; AHgh+Rrn2LqLNqHBOfNhaUUvRGcQoP3Hunj1XNhwWMx3ZERkGPwXshF0QV7RNeyQ8YeKpnNZj7kMchLLlFI+fO7JEw==@lists.infradead.org
X-Gm-Message-State: AOJu0YxMiyiHbZjTvCtex1Eez+T+6uDyjw1ICV06Ue2j8xBXOEhR5hZD
	2GnnO7U/hj5JWd5hPlBjpXTuDLNBKagvKjsUWQnOcmENNzgwv+NTFfaj
X-Gm-Gg: AfdE7cnl3wGhyAYre7smCGlBUNzrxYKTFVgFvPzknEu9Q64BrY/dsvOSLQ6DN9bOnQI
	uMjZIndQiy7Rvvw2zx6A30CEQnVfEd3aISeYsHuHZcPcLK2/PzxNYYWsrhl6PezgofvUVS2CDxf
	/KZBm/Hs6xxsHI/eJOW3obpaEhQUwoUcTxhMfFfT2vbltEbqrzk4Mptrpu4j0y1nKMthNULReEq
	Qq2DXa6jUBj/jXLIOUSMlMxagmyFbY5X78zYxTTOPyMrhIqyFo6JL898CgAJ7xVXrLkguNw0uQf
	efh+tCkwP4hUz+UGart2GunIXHK8nO79LHwnUgtPmkzF2LCUkA84mdVyEYbBoKvk9HaXG/SGGBd
	hCq0i/+hCKZFqsmdcZcMPDts9FU6gdU8YsBafqNMvQ2dra6/BC4k3qZejQR1YFLoGwaCxV+YrPw
	EEsoIHlg==
X-Received: by 2002:a17:907:a286:b0:c15:b6bd:cbb8 with SMTP id a640c23a62f3a-c15ce121a12mr164929166b.50.1783533540594;
        Wed, 08 Jul 2026 10:59:00 -0700 (PDT)
Received: from olympus.. ([2a0a:ef40:ea3:3f01:2e0:4cff:fe68:285])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-c15ad9bcc26sm357653666b.34.2026.07.08.10.58.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Jul 2026 10:59:00 -0700 (PDT)
From: Dawid Olesinski <dawidro@gmail.com>
To: Herbert Xu <herbert@gondor.apana.org.au>,
	"David S . Miller" <davem@davemloft.net>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc: Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Corentin Labbe <clabbe@baylibre.com>,
	linux-crypto@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Dawid Olesinski <dawidro@gmail.com>
Subject: [PATCH v2 1/4] dt-bindings: crypto: rockchip: Add RK356x/RK3588 crypto engine binding
Date: Wed,  8 Jul 2026 18:58:22 +0100
Message-ID: <20260708175837.1718437-2-dawidro@gmail.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260708175837.1718437-1-dawidro@gmail.com>
References: <20260708175837.1718437-1-dawidro@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260708_105902_674196_72BDEAA4 
X-CRM114-Status: GOOD (  14.05  )
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
 .../crypto/rockchip,rk3588-crypto.yaml        | 75 +++++++++++++++++++
 1 file changed, 75 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/crypto/rockchip,rk3588-crypto.yaml

diff --git a/Documentation/devicetree/bindings/crypto/rockchip,rk3588-crypto.yaml b/Documentation/devicetree/bindings/crypto/rockchip,rk3588-crypto.yaml
new file mode 100644
index 000000000000..fc09f21b0654
--- /dev/null
+++ b/Documentation/devicetree/bindings/crypto/rockchip,rk3588-crypto.yaml
@@ -0,0 +1,75 @@
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
+    #include <dt-bindings/clock/rockchip,rk3588-cru.h>
+    #include <dt-bindings/reset/rockchip,rk3588-cru.h>
+
+    bus {
+      #address-cells = <2>;
+      #size-cells = <2>;
+
+      crypto@fe370000 {
+        compatible = "rockchip,rk3588-crypto";
+        reg = <0x0 0xfe370000 0x0 0x2000>;
+        interrupts = <GIC_SPI 209 IRQ_TYPE_LEVEL_HIGH 0>;
+        clocks = <&scmi_clk SCMI_CRYPTO_CORE>, <&scmi_clk SCMI_ACLK_SECURE_NS>,
+                 <&scmi_clk SCMI_HCLK_SECURE_NS>;
+        clock-names = "core", "aclk", "hclk";
+        resets = <&scmi_reset SCMI_SRST_CRYPTO_CORE>;
+        reset-names = "core";
+        };
+    };
-- 
2.47.3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
