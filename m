Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A92CFC021B8
	for <linux-rockchip@archiver.kernel.org>; Tue, 25 Feb 2025 07:59:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=s0mJBt69auu0aLdby12YMGcvQ/2IYawiAB40vCGeJfE=; b=XXe9kIck5RTNFX
	rISIitUFTIWfPaBYA1dd/YUl4BT+qWLV93jXClMATBD3ZiaFuIplLggwtAZ3nhgu9U/EUc5NZWXvn
	BbNDqE3vBVLinEw02tOp2yy2HPb8cDvmKExiPp2vdBIgKRo6ase00esErtuELJNYjoeaOKVIL53Kd
	0cKJ0o7YV3m2/5bf2yGHWAB7HlheS33GI+bwuq/90zI31buvOs5XBafih+WZIdnH72G1nrSsMuwdU
	GSquS0UAB+HIwYSPfmMn81F0F1wG0OQfOgjmr9/zIOLk/1b3BMksh17KscTdZG7exvAr1cnYhP0lw
	BmrpPNDTNfUGKWSVIdsg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tmpqP-0000000GIQe-0U7E;
	Tue, 25 Feb 2025 07:59:09 +0000
Received: from mail-wm1-f54.google.com ([209.85.128.54])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tmpnP-0000000GHcE-03co;
	Tue, 25 Feb 2025 07:56:04 +0000
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-438a3216fc2so49848375e9.1;
        Mon, 24 Feb 2025 23:56:02 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740470161; x=1741074961;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=fQ8rK/SFPwv0iTdPidLWNwq+goMXwpaEZtcN5vvMS8I=;
        b=MdzVSrDJXclYKTsZjznfdmvAsPRMBqhZSC6hE9wHCrKC2ikCqyzXezX+n3irWWVH12
         h476yh8Ht5Z7mbqQaqibQxRvR0zWd1hnD0icRf5EIcJWEAz/aTKe+/r9uzJiztWqvFur
         tsX4+8amTfhymkU85w4pXsuhDrWC5gEQD9KrCJl+5LyBYS0NPefZgm/McoLJDhlOE6cb
         5QWxajWNkPTQdtHvXCVKv1AXQ0j/gyX8pSMN5rg5niPedEpeHWl5R69f4p34uPH9LfDy
         b6IxlUrCzigAWAbUt39bsknjx0N/na2JOZVB4WWPnTEaNEnHIAxgWUCN60buV7S76+YQ
         pF3Q==
X-Forwarded-Encrypted: i=1; AJvYcCU3vWuoRRHGf8vnqP9oa2Yo8HwK8VDHydIFD6qiI/wnz0VQjbWNVbvIfsE/zngmjPEa+WhvTRFCepq9PbxgwTpL@lists.infradead.org, AJvYcCV9jEj1iu5uVD5PIHhvXcHmnTLyWItfm6h/wHeWTwoEXX2VREJBU3Twe5llLL+lQ+uY8JxS3gilKuBsgU0sDoc=@lists.infradead.org
X-Gm-Message-State: AOJu0YwOwUVoV32Uh4kyQITjzZS5y/ehdLWVtZQHoduJFDxATY5Z64eM
	r0mc8QjeWUB8FtghguawSEaAUtqIjuFsdDHP3TN7Sed8ONIw0huE
X-Gm-Gg: ASbGncuYKFuUSngelJcCg0NRCMkBvBZRMDcaUdtjgK9akyfPnK/qXhKlvfKsbhGSzcf
	kTplFWQW6qxfdLTw6zVmFU3xj6N75wyiF3e2BHpbcQ55BAwPuqM631kFopKzQectnU6UlWYAMK+
	b45iqKSdlmiNB+j/Y/fWu8+uPaamYvVaeMnyYCy9ww2zG+JfXx7xv4JYXVV2T8Tap9g5OY4zVIe
	YCYZIBhZySSRElAObHYvo2WySAOLp8irKu+yKLYOYGLrx/kR4lr+OnmFslTL3p/j1kGYGfnn12X
	ZZTbFbLDk0XpKRV6h/rJkSldXrhR/L6NKWZFva3csHHGx4kKpbxkZu7OHA==
X-Google-Smtp-Source: AGHT+IFLYntsPuTOziMl5zbK7YW3u6WRQqcDsC52Yv/3/P2y2cWtuj2SxpqE0RPE7hoOsemVi3pcMQ==
X-Received: by 2002:a05:600c:450d:b0:439:9a43:dd62 with SMTP id 5b1f17b1804b1-439aebb2d6fmr101608685e9.24.1740470161102;
        Mon, 24 Feb 2025 23:56:01 -0800 (PST)
Received: from [10.42.0.1] (cst-prg-37-50.cust.vodafone.cz. [46.135.37.50])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-439b02f2475sm130299475e9.20.2025.02.24.23.55.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 24 Feb 2025 23:55:59 -0800 (PST)
From: Tomeu Vizoso <tomeu@tomeuvizoso.net>
Date: Tue, 25 Feb 2025 08:55:47 +0100
Subject: [PATCH v2 1/7] dt-bindings: npu: rockchip,rknn: Add bindings
MIME-Version: 1.0
Message-Id: <20250225-6-10-rocket-v2-1-d4dbcfafc141@tomeuvizoso.net>
References: <20250225-6-10-rocket-v2-0-d4dbcfafc141@tomeuvizoso.net>
In-Reply-To: <20250225-6-10-rocket-v2-0-d4dbcfafc141@tomeuvizoso.net>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 Oded Gabbay <ogabbay@kernel.org>, Jonathan Corbet <corbet@lwn.net>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Sumit Semwal <sumit.semwal@linaro.org>, 
 =?utf-8?q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, 
 Sebastian Reichel <sebastian.reichel@collabora.com>, 
 Jeffrey Hugo <quic_jhugo@quicinc.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 dri-devel@lists.freedesktop.org, linux-doc@vger.kernel.org, 
 linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, 
 Tomeu Vizoso <tomeu@tomeuvizoso.net>
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250224_235603_055975_81AFDF83 
X-CRM114-Status: GOOD (  12.13  )
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

v2:
- Adapt to new node structure (one node per core, each with its own
  IOMMU)
- Several misc. fixes from Sebastian Reichel

Signed-off-by: Tomeu Vizoso <tomeu@tomeuvizoso.net>
Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
 .../bindings/npu/rockchip,rknn-core.yaml           | 152 +++++++++++++++++++++
 1 file changed, 152 insertions(+)

diff --git a/Documentation/devicetree/bindings/npu/rockchip,rknn-core.yaml b/Documentation/devicetree/bindings/npu/rockchip,rknn-core.yaml
new file mode 100644
index 0000000000000000000000000000000000000000..e8d0afe4a7d1c4f166cf13a9f4aa7c1901362a3f
--- /dev/null
+++ b/Documentation/devicetree/bindings/npu/rockchip,rknn-core.yaml
@@ -0,0 +1,152 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/npu/rockchip,rknn-core.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Neural Processing Unit IP from Rockchip
+
+maintainers:
+  - Tomeu Vizoso <tomeu@tomeuvizoso.net>
+
+description:
+  Rockchip IP for accelerating inference of neural networks, based on NVIDIA's
+  open source NVDLA IP.
+
+properties:
+  $nodename:
+    pattern: '^npu-core@[a-f0-9]+$'
+
+  compatible:
+    oneOf:
+      - items:
+          - enum:
+              - rockchip,rk3588-rknn-core-top
+          - const: rockchip,rknn-core-top
+      - items:
+          - enum:
+              - rockchip,rk3588-rknn-core
+          - const: rockchip,rknn-core
+
+  reg:
+    maxItems: 1
+
+  clocks:
+    minItems: 2
+    maxItems: 4
+
+  clock-names:
+    items:
+      - const: aclk
+      - const: hclk
+      - const: npu
+      - const: pclk
+    minItems: 2
+
+  interrupts:
+    maxItems: 1
+
+  iommus:
+    maxItems: 1
+
+  npu-supply: true
+
+  power-domains:
+    maxItems: 1
+
+  resets:
+    maxItems: 2
+
+  reset-names:
+    items:
+      - const: srst_a
+      - const: srst_h
+
+  sram-supply: true
+
+required:
+  - compatible
+  - reg
+  - clocks
+  - clock-names
+  - interrupts
+  - iommus
+  - npu-supply
+  - power-domains
+  - resets
+  - reset-names
+  - sram-supply
+
+allOf:
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - rockchip,rknn-core-top
+    then:
+      properties:
+        clocks:
+          minItems: 4
+
+        clock-names:
+          minItems: 4
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - rockchip,rknn-core
+    then:
+      properties:
+        clocks:
+          maxItems: 2
+        clock-names:
+          maxItems: 2
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/rockchip,rk3588-cru.h>
+    #include <dt-bindings/interrupt-controller/irq.h>
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+    #include <dt-bindings/power/rk3588-power.h>
+    #include <dt-bindings/reset/rockchip,rk3588-cru.h>
+
+    bus {
+      #address-cells = <2>;
+      #size-cells = <2>;
+
+      rknn_core_top: npu-core@fdab0000 {
+        compatible = "rockchip,rk3588-rknn-core-top", "rockchip,rknn-core-top";
+        reg = <0x0 0xfdab0000 0x0 0x9000>;
+        assigned-clocks = <&scmi_clk SCMI_CLK_NPU>;
+        assigned-clock-rates = <200000000>;
+        clocks = <&cru ACLK_NPU0>, <&cru HCLK_NPU0>,
+                 <&scmi_clk SCMI_CLK_NPU>, <&cru PCLK_NPU_ROOT>;
+        clock-names = "aclk", "hclk", "npu", "pclk";
+        interrupts = <GIC_SPI 110 IRQ_TYPE_LEVEL_HIGH 0>;
+        iommus = <&rknn_mmu_top>;
+        npu-supply = <&vdd_npu_s0>;
+        power-domains = <&power RK3588_PD_NPUTOP>;
+        resets = <&cru SRST_A_RKNN0>, <&cru SRST_H_RKNN0>;
+        reset-names = "srst_a", "srst_h";
+        sram-supply = <&vdd_npu_mem_s0>;
+      };
+
+      rknn_core_1: npu-core@fdac0000 {
+        compatible = "rockchip,rk3588-rknn-core", "rockchip,rknn-core";
+        reg = <0x0 0xfdac0000 0x0 0x9000>;
+        clocks = <&cru ACLK_NPU1>, <&cru HCLK_NPU1>;
+        clock-names = "aclk", "hclk";
+        interrupts = <GIC_SPI 111 IRQ_TYPE_LEVEL_HIGH 0>;
+        iommus = <&rknn_mmu_1>;
+        npu-supply = <&vdd_npu_s0>;
+        power-domains = <&power RK3588_PD_NPU1>;
+        resets = <&cru SRST_A_RKNN1>, <&cru SRST_H_RKNN1>;
+        reset-names = "srst_a", "srst_h";
+        sram-supply = <&vdd_npu_mem_s0>;
+      };
+    };
+...

-- 
2.48.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
