Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3090EC433EF
	for <linux-rockchip@archiver.kernel.org>; Wed,  8 Dec 2021 22:51:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0c8pEKIBe4V02GbaIFsXBVATa6tD7i44hobIcgzmo1A=; b=pNpqqW4PLhlCKo
	dk63jnCxf4M1s4tVg4dQHqJCDc9/LJOHLFVp5orQdJ8+JjjkwihVoBDmBBsyPEh1Zb53Jv8z2MrjN
	YiRXQ2de96ZBjEh5+Z3nXmDGvIgBkLi5u3jTUkPypReumZzjEsJpY+/jzMCLyLL6dZqe4M4euqA+m
	J/TmPPfx3F8WCxDtrEMUeIhjAJ62Wd7+YXsS2PjpRIh5XoOw5WpGno5ypge0+gf3optwoEYZ4BTR9
	Rdm74aVzcZV3xBAgwx4k8RYMPYriA6AnlOAD2ZzG1Ia5vljZq7iuFjU1YDrqYkuiIuvR+GpN49eFA
	kciAxosGnWQAwpH7gwzw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mv5mo-00ERyu-84; Wed, 08 Dec 2021 22:51:42 +0000
Received: from mail-il1-x131.google.com ([2607:f8b0:4864:20::131])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mv5lw-00ERT0-7X; Wed, 08 Dec 2021 22:50:49 +0000
Received: by mail-il1-x131.google.com with SMTP id m5so3619343ilh.11;
 Wed, 08 Dec 2021 14:50:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=4RYsS2ws//9JixbB5269IuLK7Et+ZSSQi85S6tUP01M=;
 b=Vg1Sn9LkR4IoTFrQyG5LUpKQuQHI7KMW6eMepj+uU/cR4BJiiZww70Z7Mr9bQawo+K
 9/Cu/Zr+7WDfZNSZ1p529O1Xg2JfpuGoRPg0stPrKhKlYbnDqYD9sCCs1C9P+GmJVMYl
 wHkZ/uhXf8Wt2nwgazyyz8szAof4C9FxPM4xs2PQPLHRIsOyHR7ToHbCH8Q4TGwFz2Ml
 bMwhftbRusEYyIRQroiLejFMCFl0RGS/3icVvIGebdTxzsBkKboBtTNiqARJ406tTGAN
 Y8+PzREANBO4DY5MwdMLd8IgUG68A9eYu9bhCyZdCRkjWJoXCxYhzPbjAmjdzOhzEWXI
 9vJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=4RYsS2ws//9JixbB5269IuLK7Et+ZSSQi85S6tUP01M=;
 b=raIiN50URPlhzTL/iqShNUbzvmIf1gug150tjarjBoIR5RgfgNXFNxmLVv6DdXQUBo
 +aD1QW1M8idAiApPgLV4IXpPp+b220UaN4cJWUTQQ+dzpE4lycSjtjn7UginPuA3tWL7
 hZQGFMVN2kBQI2vaOZwIaxflkz7Qp8RR3ksUL1bXy6borzFzjgEBuKyhFjloMl7nURRN
 3/PQOlrA62KroUI6kWKY3NDzLZmOZb54cZ4pAhLakBXzPmzY5ECyGid8ITdT2DQd3PJQ
 yFOAH1SPFwdvNOaoKoFz+JL2wW3ldQpdWhQ7FGWoJFvzm4mDZeY2Wp4Yv1CDJEuHdw2m
 nXYA==
X-Gm-Message-State: AOAM533wqdZkJ9RbS5TqAt2m2jSsfEC047sSpSQx1NhvaBD0Nj04mQAE
 j7zWBpsBe6zdJQDOV2U5WcA=
X-Google-Smtp-Source: ABdhPJyNG222gEHjYDSsfxa6dwVVg8X2yniI6WpukjYpE2fAejJxnf4ebLM/m02jvkj8bqN3rk5zMw==
X-Received: by 2002:a05:6e02:1a88:: with SMTP id
 k8mr9816941ilv.127.1639003847161; 
 Wed, 08 Dec 2021 14:50:47 -0800 (PST)
Received: from aford-IdeaCentre-A730.lan
 ([2601:448:8400:9e8:269a:1aa2:f1d9:8dbb])
 by smtp.gmail.com with ESMTPSA id t6sm2378751ioi.51.2021.12.08.14.50.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 08 Dec 2021 14:50:46 -0800 (PST)
From: Adam Ford <aford173@gmail.com>
To: linux-media@vger.kernel.org
Cc: benjamin.gaignard@collabora.com, cphealy@gmail.com,
 aford@beaconembedded.com, nicolas@ndufresne.ca,
 Adam Ford <aford173@gmail.com>,
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Lucas Stach <l.stach@pengutronix.de>, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-staging@lists.linux.dev
Subject: [PATCH 04/10] dt-bindings: media: nxp,
 imx8mq-vpu: Support split G1 and G2 nodes with vpu-blk-ctrl
Date: Wed,  8 Dec 2021 16:50:23 -0600
Message-Id: <20211208225030.2018923-5-aford173@gmail.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20211208225030.2018923-1-aford173@gmail.com>
References: <20211208225030.2018923-1-aford173@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211208_145048_306231_C8DAF835 
X-CRM114-Status: GOOD (  12.91  )
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

The G1 and G2 are separate decoder blocks that are enabled by the
vpu-blk-ctrl power-domain controller, which now has a proper driver.
Update the bindings to support separate nodes for the G1 and G2
decoders using the proper driver or the older unified node with
the legacy controls.

To be compatible with older DT the driver, mark certain items as
deprecated and retain the backwards compatible example.

Signed-off-by: Adam Ford <aford173@gmail.com>
---
 .../bindings/media/nxp,imx8mq-vpu.yaml        | 83 ++++++++++++++-----
 1 file changed, 64 insertions(+), 19 deletions(-)

diff --git a/Documentation/devicetree/bindings/media/nxp,imx8mq-vpu.yaml b/Documentation/devicetree/bindings/media/nxp,imx8mq-vpu.yaml
index 762be3f96ce9..eeb7bd6281f9 100644
--- a/Documentation/devicetree/bindings/media/nxp,imx8mq-vpu.yaml
+++ b/Documentation/devicetree/bindings/media/nxp,imx8mq-vpu.yaml
@@ -15,29 +15,39 @@ description:
 
 properties:
   compatible:
-    const: nxp,imx8mq-vpu
+    oneOf:
+      - const: nxp,imx8mq-vpu
+        deprecated: true
+      - const: nxp,imx8mq-vpu-g1
+      - const: nxp,imx8mq-vpu-g2
 
   reg:
+    minItems: 1
     maxItems: 3
 
   reg-names:
+    minItems: 1
     items:
       - const: g1
       - const: g2
       - const: ctrl
 
   interrupts:
+    minItems: 1
     maxItems: 2
 
   interrupt-names:
+    minItems: 1
     items:
       - const: g1
       - const: g2
 
   clocks:
+    minItems: 1
     maxItems: 3
 
   clock-names:
+    minItems: 1
     items:
       - const: g1
       - const: g2
@@ -58,22 +68,57 @@ required:
 additionalProperties: false
 
 examples:
+  # Device node example backwards compatibility
   - |
-        #include <dt-bindings/clock/imx8mq-clock.h>
-        #include <dt-bindings/interrupt-controller/arm-gic.h>
-
-        vpu: video-codec@38300000 {
-                compatible = "nxp,imx8mq-vpu";
-                reg = <0x38300000 0x10000>,
-                      <0x38310000 0x10000>,
-                      <0x38320000 0x10000>;
-                reg-names = "g1", "g2", "ctrl";
-                interrupts = <GIC_SPI 7 IRQ_TYPE_LEVEL_HIGH>,
-                             <GIC_SPI 8 IRQ_TYPE_LEVEL_HIGH>;
-                interrupt-names = "g1", "g2";
-                clocks = <&clk IMX8MQ_CLK_VPU_G1_ROOT>,
-                         <&clk IMX8MQ_CLK_VPU_G2_ROOT>,
-                         <&clk IMX8MQ_CLK_VPU_DEC_ROOT>;
-                clock-names = "g1", "g2", "bus";
-                power-domains = <&pgc_vpu>;
-        };
+    #include <dt-bindings/clock/imx8mq-clock.h>
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+
+    vpu: video-codec@38300000 {
+        compatible = "nxp,imx8mq-vpu";
+        reg = <0x38300000 0x10000>,
+              <0x38310000 0x10000>,
+              <0x38320000 0x10000>;
+        reg-names = "g1", "g2", "ctrl";
+        interrupts = <GIC_SPI 7 IRQ_TYPE_LEVEL_HIGH>,
+                     <GIC_SPI 8 IRQ_TYPE_LEVEL_HIGH>;
+        interrupt-names = "g1", "g2";
+        clocks = <&clk IMX8MQ_CLK_VPU_G1_ROOT>,
+                 <&clk IMX8MQ_CLK_VPU_G2_ROOT>,
+                 <&clk IMX8MQ_CLK_VPU_DEC_ROOT>;
+        clock-names = "g1", "g2", "bus";
+        power-domains = <&pgc_vpu>;
+    };
+
+  # VPU G1 with vpu-blk-ctrl
+  - |
+    #include <dt-bindings/clock/imx8mq-clock.h>
+    #include <dt-bindings/power/imx8mq-power.h>
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+
+    vpu_g1: video-codec@38300000 {
+        compatible = "nxp,imx8mq-vpu-g1";
+        reg = <0x38300000 0x10000>;
+        reg-names "g1";
+        interrupts = <GIC_SPI 7 IRQ_TYPE_LEVEL_HIGH>;
+        interrupt-names = "g1";
+        clocks = <&clk IMX8MQ_CLK_VPU_G1_ROOT>;
+        clock-names = "g1";
+        power-domains = <&vpu_blk_ctrl IMX8MQ_VPUBLK_PD_G1>;
+    };
+
+  # VPU G2 with vpu-blk-ctrl
+  - |
+    #include <dt-bindings/clock/imx8mq-clock.h>
+    #include <dt-bindings/power/imx8mq-power.h>
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+
+    vpu_g2: video-codec@38310000 {
+        compatible = "nxp,imx8mq-vpu-g2";
+        reg = <0x38310000 0x10000>;
+        reg-names "g2";
+        interrupts = <GIC_SPI 8 IRQ_TYPE_LEVEL_HIGH>;
+        interrupt-names = "g2";
+        clocks = <&clk IMX8MQ_CLK_VPU_G2_ROOT>;
+        clock-names = "g2";
+        power-domains = <&vpu_blk_ctrl IMX8MQ_VPUBLK_PD_G2>;
+    };
-- 
2.32.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
