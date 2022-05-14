Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5561AC433F5
	for <linux-rockchip@archiver.kernel.org>; Sat, 14 May 2022 13:37:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Nrvukkeo5wBQ5iFUoSjXrdOMum0MksCRGMb9iuUG7Ys=; b=JgImZ2WR4dUYRY
	fJCnlRIvEFIecW6HaRdbSzP5wass3uA5zpR6Fz0++Xndg1PopnetcPhB9jSooyeTBrUwrY5Lb/+Eg
	Cfm3PL+EFuc7PYNDH9r9Aswbtyhjve7VZbaSkruVYqEEa3V2LqO1/e5LEczaE2V0Q3C+VpdH6c4TE
	9yvKnuuF8wldXHrYeehpMgp/FL38PmiesBroZKwqzud0BtMWgff3CjGwGldVSOA7rfGvpBFXO1QAA
	FKESE4hw0PFdf/Z1dqr5Q/dPKXstNK+v6z/ZSXimjub7n2QmZKaiTQ+sLWigVvFPfpydDF3+80LfG
	2xXOlBgw6klrofu3wHMA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nprwx-001VHr-OL; Sat, 14 May 2022 13:36:51 +0000
Received: from mail-ej1-x62b.google.com ([2a00:1450:4864:20::62b])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nprwu-001VGI-IF; Sat, 14 May 2022 13:36:50 +0000
Received: by mail-ej1-x62b.google.com with SMTP id z2so20976931ejj.3;
 Sat, 14 May 2022 06:36:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=7nM+O9rcnvWoPgEj551BXLaNSuGi3Sqb5ztVGD4qhv4=;
 b=masoxyItOVKrANFWKJdgypb3tEPp8p8acKsSxEyuYIDqy9bxP16M/Gzx+bBWBdLKXU
 OJ5LSRnTyx19ejGGLlLo3mot55qjl4/WU7mhVHx0YbeAVjRMg2Gj1nPAEvq/C9ohv5yF
 xleLGuQwdEwPrYAYsqv0YxR25XeMOpfVW0dWYB9GynEFVgglGSWORBlTwrHTtEyf7DoI
 PwFxB7/lnztlKc83IfrzPrixhoVEsgGe94MsAO7wItudyl1UCsAi7LraRjiL0B6VJCV+
 sugN+zy+Y1J1TbE7j5tczgDa4T4L1JwlSzPMrCV2Fuzc2vFlKGb9ZxPH4gbN/0UA0JVg
 sKLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=7nM+O9rcnvWoPgEj551BXLaNSuGi3Sqb5ztVGD4qhv4=;
 b=rcC0USo+H83GxSlCmLVUZ0stRgW45OvpCv53NgFN8wJX0T2Alr07GX32i19Qft/2Az
 H3NeG5+EG7uL5/E3zk6YZ6n+XoJiQeCBXTtkz3LWXeazbklp40vn0FQGDQLiz3xfv3+b
 fHrgJI1KvjEgxgUxvPGgY9lKZeEGEPETBiD7v75DGFs7n3xgvrI5guDco5wE73qOCuGv
 YBeRfYVULZPzTvyIO6DTIgBFXrUTgttqx7bUbHlYe0I/wgSbrn/GYYaI3eeOdotCH1lq
 jI3jVfOHwdqKExAG0mLU6JkE2oZRHw2i9+N4eJZWbqQXZnicdw0a9FbzalA85ITAkzfI
 UmOA==
X-Gm-Message-State: AOAM532hX3HuhKAiVG5A1Z+8QEy7m/DWwacc+atbC614RPfIZpKtsCzw
 jhBFnJ6bDHDgNuAoI4w4LnI=
X-Google-Smtp-Source: ABdhPJxgRlXeTS7HB6rRCXSHuxYkg45W2dCOnI6rKbQx0pIsQgZxuplwN6sk+hX6WRqruvKcw4xVqA==
X-Received: by 2002:a17:906:4944:b0:6e8:a48d:804e with SMTP id
 f4-20020a170906494400b006e8a48d804emr8250192ejt.164.1652535406688; 
 Sat, 14 May 2022 06:36:46 -0700 (PDT)
Received: from localhost.localdomain (84-72-105-84.dclient.hispeed.ch.
 [84.72.105.84]) by smtp.gmail.com with ESMTPSA id
 ci18-20020a170907267200b006f3ef214e49sm1736739ejc.175.2022.05.14.06.36.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 14 May 2022 06:36:46 -0700 (PDT)
From: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
To: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Heiko Stuebner <heiko@sntech.de>,
 Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v4 1/3] media: dt-binding: media: Add rockchip-vepu binding
Date: Sat, 14 May 2022 15:36:02 +0200
Message-Id: <20220514133604.174905-2-frattaroli.nicolas@gmail.com>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <20220514133604.174905-1-frattaroli.nicolas@gmail.com>
References: <20220514133604.174905-1-frattaroli.nicolas@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220514_063648_646724_2F6FB306 
X-CRM114-Status: GOOD (  17.63  )
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

The RK3568 and RK3566 have a Hantro VPU node solely dedicated to
encoding. This patch adds a new binding to describe it, as it
does not really fit the rockchip-vpu binding, since there is no
decoder.

Signed-off-by: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
---
 .../bindings/media/rockchip-vepu.yaml         | 64 +++++++++++++++++++
 MAINTAINERS                                   |  1 +
 2 files changed, 65 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/media/rockchip-vepu.yaml

diff --git a/Documentation/devicetree/bindings/media/rockchip-vepu.yaml b/Documentation/devicetree/bindings/media/rockchip-vepu.yaml
new file mode 100644
index 000000000000..b7ba5bf3517a
--- /dev/null
+++ b/Documentation/devicetree/bindings/media/rockchip-vepu.yaml
@@ -0,0 +1,64 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+
+%YAML 1.2
+---
+$id: "http://devicetree.org/schemas/media/rockchip-vepu.yaml#"
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
+        #include <dt-bindings/clock/rk3568-cru.h>
+        #include <dt-bindings/interrupt-controller/arm-gic.h>
+        #include <dt-bindings/power/rk3568-power.h>
+
+        vepu: video-codec@fdee0000 {
+                compatible = "rockchip,rk3568-vepu";
+                reg = <0x0 0xfdee0000 0x0 0x800>;
+                interrupts = <GIC_SPI 64 IRQ_TYPE_LEVEL_HIGH>;
+                clocks = <&cru ACLK_JENC>, <&cru HCLK_JENC>;
+                clock-names = "aclk", "hclk";
+                iommus = <&vepu_mmu>;
+                power-domains = <&power RK3568_PD_RGA>;
+        };
diff --git a/MAINTAINERS b/MAINTAINERS
index 9ce78f2275dc..f901a42e5d0f 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -8637,6 +8637,7 @@ L:	linux-media@vger.kernel.org
 L:	linux-rockchip@lists.infradead.org
 S:	Maintained
 F:	Documentation/devicetree/bindings/media/nxp,imx8mq-vpu.yaml
+F:	Documentation/devicetree/bindings/media/rockchip-vepu.yaml
 F:	Documentation/devicetree/bindings/media/rockchip-vpu.yaml
 F:	drivers/staging/media/hantro/
 
-- 
2.36.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
