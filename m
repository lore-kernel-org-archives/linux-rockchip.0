Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C20DDC27C53
	for <linux-rockchip@archiver.kernel.org>; Wed, 12 Jun 2024 13:53:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DtJJzfFH6VXjDgtUBHtBQzI1KLE8RSufTppjn8vHpws=; b=XWoiVtvO+bxiGv
	6JTBpG+8Gos42n1KSDhF/ywe2STrR0sjXPUvdXgbFfvj4zKP8TYEgF+Vy/RZprDF9d4S91s3UmPWb
	9nohA6CW0J5/KLWcT/oRKPT+OZ0QbwOkxmJPO2XZhGKxeK3s6AKnHzAlDIPcBKe8JzaczeaJhYdmY
	dh689kDM7VAUGKNoOj+mG6Aos8SVLdZjXR11qi6xV3FqXbBfmNFOqXOCqebjR45IFFCshJG2516Wc
	eWXtRE45RlL9pFGRw2e9YMcT5hT8z+A9zz+qwUil8gfHwuoG3raptz57kSU/xAyzCD88j8GwsepGz
	E9VbfMZN0LbMbctzL4NA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sHOQ1-0000000CouJ-1g0w;
	Wed, 12 Jun 2024 13:53:41 +0000
Received: from mail-wr1-f52.google.com ([209.85.221.52])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sHOPX-0000000CoVb-0S3Y;
	Wed, 12 Jun 2024 13:53:12 +0000
Received: by mail-wr1-f52.google.com with SMTP id ffacd0b85a97d-35f223e7691so624841f8f.1;
        Wed, 12 Jun 2024 06:53:10 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718200389; x=1718805189;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=cz9Php77CN5sqNTwFGYv2UDE+c/YCm+M4vWABkPbT/c=;
        b=mZsN4jRYnkP9FLkHLraSIcqoFVXJODNA4LyT01HZYuMixJfRcPbpPXqavYUTYC98xP
         OLncjP2ZfkGmC9E03/9deSeB2w1XmV+lfKOHTOzC/cezWQiFGjRvwGAUSDtcn/RNwQWp
         G3RN66fe8wBBnnhv8Qbi2AHTb61lBLD8k0qGD2Z+dXYCUpk/js+WWsdZaFEKSa+K6WOH
         pDAEnFLJicEKubpdXuAEiDM7H4hhLlnWXtHm8Z5xvZg2A+R+Zjs/w8V6n0XXzoRGmhRS
         op/MfK5SlTiw5MqC4yUIhfGZMrubBNSfYVkus0OJQIhkUzyofhDs5aH4S4zkFtMvvRF1
         Nilg==
X-Forwarded-Encrypted: i=1; AJvYcCWkjVkik+9UBTuVaMlvua06nAjFfkly2v/atgqlyN4p0HoKYPxKN3Os2ZNcXQwPcxSN9H1ut7bIFR+rrR1lSBrVq7+pA8xi0DRJzVaAxO2vkL0ygUA5+2Jc624UE5TeUSBG+rhClCZ+XjUp/ud3YvNT+T8D+7bP664=
X-Gm-Message-State: AOJu0YzjcKGX+bv1MKWcDMgZVAZJ1af9V7HDnuzQMDdlGcY5dvPHmu7C
	+qsiK4jZG8s4QqADdLM8rQGK1SroS1VYCo3DImTvZc/BMGDeEg7y
X-Google-Smtp-Source: AGHT+IEqb5Q+XEHVzZbym8NFLwOC3wy9t9R6o2Sd4pfu6UKsad2cWupip8wZTpYH3xU98HUt7kmz6A==
X-Received: by 2002:a05:6000:1250:b0:35f:2551:b967 with SMTP id ffacd0b85a97d-35f2b28a77amr5039442f8f.16.1718200389052;
        Wed, 12 Jun 2024 06:53:09 -0700 (PDT)
Received: from ramallet.home (cst-prg-45-36.cust.vodafone.cz. [46.135.45.36])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-422871ec9e6sm28201695e9.38.2024.06.12.06.53.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 12 Jun 2024 06:53:08 -0700 (PDT)
From: Tomeu Vizoso <tomeu@tomeuvizoso.net>
Date: Wed, 12 Jun 2024 15:52:56 +0200
Subject: [PATCH 3/9] dt-bindings: mailbox: rockchip,rknn: Add bindings
MIME-Version: 1.0
Message-Id: <20240612-6-10-rocket-v1-3-060e48eea250@tomeuvizoso.net>
References: <20240612-6-10-rocket-v1-0-060e48eea250@tomeuvizoso.net>
In-Reply-To: <20240612-6-10-rocket-v1-0-060e48eea250@tomeuvizoso.net>
To: Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>, 
 Robin Murphy <robin.murphy@arm.com>, Heiko Stuebner <heiko@sntech.de>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Oded Gabbay <ogabbay@kernel.org>, 
 Tomeu Vizoso <tomeu.vizoso@tomeuvizoso.net>, 
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 Philipp Zabel <p.zabel@pengutronix.de>, 
 Sumit Semwal <sumit.semwal@linaro.org>, 
 =?utf-8?q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
Cc: iommu@lists.linux.dev, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org, 
 linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, 
 Tomeu Vizoso <tomeu@tomeuvizoso.net>
X-Mailer: b4 0.13.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240612_065311_228694_23836672 
X-CRM114-Status: GOOD (  11.69  )
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

Add the bindings for the Neural Processing Unit IP from Rockchip.

Signed-off-by: Tomeu Vizoso <tomeu@tomeuvizoso.net>
---
 .../devicetree/bindings/npu/rockchip,rknn.yaml     | 123 +++++++++++++++++++++
 1 file changed, 123 insertions(+)

diff --git a/Documentation/devicetree/bindings/npu/rockchip,rknn.yaml b/Documentation/devicetree/bindings/npu/rockchip,rknn.yaml
new file mode 100644
index 000000000000..570a4889c11c
--- /dev/null
+++ b/Documentation/devicetree/bindings/npu/rockchip,rknn.yaml
@@ -0,0 +1,123 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/npu/rockchip,rknn.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Neural Processing Unit IP from Rockchip, based on NVIDIA's NVDLA
+
+maintainers:
+  - Tomeu Vizoso <tomeu@tomeuvizoso.net>
+
+description: |+
+  Rockchip IP for accelerating inference of neural networks, based on NVIDIA's open source NVDLA IP.
+
+properties:
+  compatible:
+    items:
+      - enum:
+          - rockchip,rk3588-rknn
+      - const: rockchip,rknn
+
+  reg:
+    description: Base registers for NPU cores
+    minItems: 1
+    maxItems: 20
+
+  interrupts:
+    minItems: 1
+    maxItems: 20
+
+  interrupt-names:
+    minItems: 1
+    maxItems: 20
+
+  clocks:
+    minItems: 1
+    maxItems: 20
+
+  clock-names:
+    minItems: 1
+    maxItems: 20
+
+  assigned-clocks:
+    maxItems: 1
+
+  assigned-clock-rates:
+    maxItems: 1
+
+  resets:
+    minItems: 1
+    maxItems: 20
+
+  reset-names:
+    minItems: 1
+    maxItems: 20
+
+  power-domains:
+    minItems: 1
+    maxItems: 20
+
+  power-domain-names:
+    minItems: 1
+    maxItems: 20
+
+  iommus:
+    items:
+      - description: IOMMU for all cores
+
+required:
+  - compatible
+  - reg
+  - interrupts
+  - interrupt-names
+  - clocks
+  - clock-names
+  - assigned-clocks
+  - assigned-clock-rates
+  - resets
+  - reset-names
+  - power-domains
+  - power-domain-names
+  - iommus
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+
+    bus {
+        #address-cells = <2>;
+        #size-cells = <2>;
+
+        rknn: npu@fdab0000 {
+          compatible = "rockchip,rk3588-rknn", "rockchip,rknn";
+          reg = <0x0 0xfdab0000 0x0 0x9000>,
+                <0x0 0xfdac0000 0x0 0x9000>,
+                <0x0 0xfdad0000 0x0 0x9000>;
+          interrupts = <GIC_SPI 110 IRQ_TYPE_LEVEL_HIGH 0>,
+                       <GIC_SPI 111 IRQ_TYPE_LEVEL_HIGH 0>,
+                       <GIC_SPI 112 IRQ_TYPE_LEVEL_HIGH 0>;
+          interrupt-names = "npu0_irq", "npu1_irq", "npu2_irq";
+          clocks = <&scmi_clk 0>, <&cru 1>,
+                   <&cru 2>, <&cru 3>,
+                   <&cru 4>, <&cru 5>,
+                   <&cru 6>, <&cru 7>;
+          clock-names = "clk_npu",
+                  "aclk0", "aclk1", "aclk2",
+                  "hclk0", "hclk1", "hclk2",
+                  "pclk";
+          assigned-clocks = <&scmi_clk 0>;
+          assigned-clock-rates = <200000000>;
+          resets = <&cru 0>, <&cru 1>, <&cru 2>,
+                   <&cru 3>, <&cru 4>, <&cru 5>;
+          reset-names = "srst_a0", "srst_a1", "srst_a2",
+                        "srst_h0", "srst_h1", "srst_h2";
+          power-domains = <&power 0>, <&power 1>, <&power 2>;
+          power-domain-names = "npu0", "npu1", "npu2";
+          iommus = <&rknpu_mmu>;
+          status = "disabled";
+        };
+    };
+...

-- 
2.45.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
