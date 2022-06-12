Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A2ECCC43334
	for <linux-rockchip@archiver.kernel.org>; Sun, 12 Jun 2022 15:54:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4WPjD47tX5lC181Yan0fKNBfTqzPt3uKnA3Huq2QG7Q=; b=CRzaxT+GXkM3Fj
	S0zN3FQdVWjEmpOh7pbmVEjs4F6+tjLag0/Zg36rrzCdO25BzPZhxGfzyBwqF3y4TVPHW9BWWLxP+
	74nzUEbu+bvPhUTLPj/qJOTpPbpTGpQxkxXVEsygBqAuJTR1/43oMARUoMI6MXTuLA7lH1iTYxdKu
	A50bKnIFaVig2ltQCCUp4gadgyEGVRHZRpXvvVR7r4dGMxnzgctjI3m3bliOpI2fJVtIlXcwMwz+N
	9vAzawl0C4RX0Y1jBBDP7luiIvUJUpLq1A2xpo92EyAcMvj75r8bTHkFX8ZcksvVXx4ji41ikULJN
	OBnim1sZzBvZjnSRCXGQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o0PvI-00H0Q2-A6; Sun, 12 Jun 2022 15:54:44 +0000
Received: from mail-ej1-x62c.google.com ([2a00:1450:4864:20::62c])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o0PvF-00H0Ng-4m; Sun, 12 Jun 2022 15:54:42 +0000
Received: by mail-ej1-x62c.google.com with SMTP id kq6so6729368ejb.11;
        Sun, 12 Jun 2022 08:54:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=6jiov0cp9XiR8PJWluZ7P2g3Bm+PYn3UYngHD1B3GHU=;
        b=F+Zuv+Xf8RMuWZIqH5SBLCiorcQoAkm1d0LR/h3extqrC/SD8jH9HZQEC/bX9gyEoM
         +6i13u+N88V3YOi1CXiv/nxVRbfsso0bAgjThbjKIDwFA+7dnf4AvpvwAgIBlET8au7J
         89Hbbe/b8mtkKl/hXhqPuMNvQgoDNkKI3RVr+u7iDKHpyQgzDgFd/FaDMHvhNav1QZaa
         eUJpKS3O5Q/nwC7Gz6U9s5acD9uVVfUETvvgciF7p+7WIfJD4/WJodRvlR4W03b4KeaC
         BBn2Xgz4XSoJHD7sL0cHQyhzKYJQJNaiIO5LUwzRu++swmLMj4snmag3ap5VkGn/qOtx
         tHTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=6jiov0cp9XiR8PJWluZ7P2g3Bm+PYn3UYngHD1B3GHU=;
        b=deLiY1itpUCit6nyEUP1EMWWNH/Va37hn7mUkgf/khVdGJKvLV5mAVm5hdrOK+Jf7P
         XlXxATN3RMqZW7pEdp7nYwszozEUlBdQlfX9LVJxfcnoJHz3Pe/GiGEvgC2OCHPrVEfY
         /+zguSXhGCItfFjBI6qSR2X52Apfc1LFGdg+5CbVMRzTdIfOXc5R/0qs+bRmiQIUid9u
         P5tqNT11jZv8mF0qVqlopk1k7f7vpW4lJblCWCeysNd2usAtNWkSdfBX3mwNMJmlljEJ
         jOxiT/4DgQWTIFhd0zPygp4qRRk/Spi2U0u51nB1mj2ZgrUj1N5+PUCEeY5/aiTmSFCC
         91vw==
X-Gm-Message-State: AOAM531e1HEkz3g3RUM0M55w5XGI4YlwZff4AH5QdSInxTNmXTW08SSn
	wJ1yqUlTm+2C/hUx1KelCHBdVk1C/rY=
X-Google-Smtp-Source: ABdhPJxIHsE5l0pCjs4ORf4l4BLENX/SfilIz/ULsPt0czoTY5TwP+fgNqEWjAX2P29z/bLe5nUopQ==
X-Received: by 2002:a17:906:3bd9:b0:6ff:4b5:4a8f with SMTP id v25-20020a1709063bd900b006ff04b54a8fmr43122262ejf.139.1655049277602;
        Sun, 12 Jun 2022 08:54:37 -0700 (PDT)
Received: from localhost.localdomain (84-72-105-84.dclient.hispeed.ch. [84.72.105.84])
        by smtp.gmail.com with ESMTPSA id o1-20020a1709064f8100b006f3ef214de7sm2609459eju.77.2022.06.12.08.54.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 12 Jun 2022 08:54:37 -0700 (PDT)
From: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
To: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
Cc: linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v5 1/3] media: dt-binding: media: Add rk3568-vepu binding
Date: Sun, 12 Jun 2022 17:53:44 +0200
Message-Id: <20220612155346.16288-2-frattaroli.nicolas@gmail.com>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <20220612155346.16288-1-frattaroli.nicolas@gmail.com>
References: <20220612155346.16288-1-frattaroli.nicolas@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220612_085441_224083_85AB3864 
X-CRM114-Status: GOOD (  17.67  )
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

The RK3568 and RK3566 have a Hantro VPU node solely dedicated to
encoding. This patch adds a new binding to describe it, as it
does not really fit the rockchip-vpu binding, since there is no
decoder.

Signed-off-by: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
---
 .../bindings/media/rockchip,rk3568-vepu.yaml  | 69 +++++++++++++++++++
 MAINTAINERS                                   |  1 +
 2 files changed, 70 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/media/rockchip,rk3568-vepu.yaml

diff --git a/Documentation/devicetree/bindings/media/rockchip,rk3568-vepu.yaml b/Documentation/devicetree/bindings/media/rockchip,rk3568-vepu.yaml
new file mode 100644
index 000000000000..81b26eb4cd35
--- /dev/null
+++ b/Documentation/devicetree/bindings/media/rockchip,rk3568-vepu.yaml
@@ -0,0 +1,69 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+
+%YAML 1.2
+---
+$id: "http://devicetree.org/schemas/media/rockchip,rk3568-vepu.yaml#"
+$schema: "http://devicetree.org/meta-schemas/core.yaml#"
+
+title: Hantro G1 VPU encoders implemented on Rockchip SoCs
+
+maintainers:
+  - Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
+
+description:
+  Hantro G1 video encode-only accelerators present on Rockchip SoCs.
+
+properties:
+  compatible:
+    enum:
+      - rockchip,rk3568-vepu
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+  clocks:
+    maxItems: 2
+
+  clock-names:
+    items:
+      - const: aclk
+      - const: hclk
+
+  power-domains:
+    maxItems: 1
+
+  iommus:
+    maxItems: 1
+
+required:
+  - compatible
+  - reg
+  - interrupts
+  - clocks
+  - clock-names
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/rk3568-cru.h>
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+    #include <dt-bindings/power/rk3568-power.h>
+
+    bus {
+        #address-cells = <2>;
+        #size-cells = <2>;
+
+        vepu: video-codec@fdee0000 {
+            compatible = "rockchip,rk3568-vepu";
+            reg = <0x0 0xfdee0000 0x0 0x800>;
+            interrupts = <GIC_SPI 64 IRQ_TYPE_LEVEL_HIGH>;
+            clocks = <&cru ACLK_JENC>, <&cru HCLK_JENC>;
+            clock-names = "aclk", "hclk";
+            iommus = <&vepu_mmu>;
+            power-domains = <&power RK3568_PD_RGA>;
+        };
+    };
diff --git a/MAINTAINERS b/MAINTAINERS
index 475e28365385..03c5db88908c 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -8703,6 +8703,7 @@ L:	linux-media@vger.kernel.org
 L:	linux-rockchip@lists.infradead.org
 S:	Maintained
 F:	Documentation/devicetree/bindings/media/nxp,imx8mq-vpu.yaml
+F:	Documentation/devicetree/bindings/media/rockchip,rk3568-vepu.yaml
 F:	Documentation/devicetree/bindings/media/rockchip-vpu.yaml
 F:	drivers/staging/media/hantro/
 
-- 
2.36.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
