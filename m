Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AFF5AC433F5
	for <linux-rockchip@archiver.kernel.org>; Mon, 24 Jan 2022 02:33:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7izbWonf1ESGaq/huVw/Uau4HedZN5hc4aWae2kFOMI=; b=m3C/QvNXbXy8Id
	BaYEkV0tIgjf3JTCdbWPawr/hwUmnFBU0usRRvaAuDAj8Vvlx88uHCLDUzpwPm++fdOjxl2JZ/7z6
	MqBbbIPFfhjRjTKkasmhq0BIEmoDAoVHv1OI5KVsLZ8z8eKeDkKzCdniVVdYrun9Nl4V27AKW0moM
	1RxBF2KK6qv6Uo5mOOHepwGkkOgc6Y2bi1yui6Udd74ObFti2O7NBjMW6VyLEGC+IztGyTt4U3Ugr
	tjBl0ILR48MpL7hPFTsfWldRObSmvWIJv7P5gr8Xy+N6yuyH7LKTbU2uKryTZYJdeFcc/VsoWZMFO
	t1LBxARjaPzd10WfZR7Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nBpAO-0022Qt-QQ; Mon, 24 Jan 2022 02:33:12 +0000
Received: from mail-io1-xd29.google.com ([2607:f8b0:4864:20::d29])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nBp8w-0021cq-4D; Mon, 24 Jan 2022 02:31:43 +0000
Received: by mail-io1-xd29.google.com with SMTP id o9so17814202iob.3;
 Sun, 23 Jan 2022 18:31:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=y0qZ67tpkeFBSJ9t9tgLEVEiGlxTQ2nB9WsG2l3ZlOQ=;
 b=iPkHd1C+doSlRjE1qZo0dWd1BGCsSIHtFUaBZIBi7SqZq7NqZGzwBjHvdVfg8vxnIn
 eAjMINqwCOZ7m8Ch0qlMjNZgeYNY/7o1OSASx7/9KM5DOEWZnd2fT5pXNknOJeykpzp+
 eiu6N+ZvJw72629YDAIxO6MxbVgg7XrYMHucYz0LIOQGA3qb8tNo8RZn0MYm/FfRtbMz
 VYlk/0KG+akLKMQ1DqK36AQLdGmariBzaAJdc9xBsetmr5ZWIBLYGZeHBhIytBcvDUw6
 BWCeJoQZHffkw8xDiz3tIRG2ZoSnwPt/aYZ1zZSkN5ICmeqInnckYT7dMBWLXWinENdh
 RMHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=y0qZ67tpkeFBSJ9t9tgLEVEiGlxTQ2nB9WsG2l3ZlOQ=;
 b=puMJGbj8dm9euN1uEk4nk3LWCpRdpED+xNlqkNKSXv88P84nE7Oq9ghBfE1N2pwgKH
 gpxTAwOkjXR//ysnfFRu9nWQfipyyE3Fgf4RpCD2EezJP9gqO79+RwftQzq+5IqHmUlY
 kZSc6h4t5H1GDSWCxLMqY+yMx4d2fc4mQXb4hCwkivrb4g5Lj1QLWmFGuJKkG3+J4gY9
 6Q0Ue4w/chMFrGP+v9ZdQP6NFcSwYMk3bw70lNcmPs361YqCQVKQFlelwe0DB2ai/wyb
 Q2oXbm5TN9CftvV6Fq4yJZ2QZoN1r2KtHdPH0yDpEnSoU6pLVgT38Eyw71v1MPgegkAr
 zaQg==
X-Gm-Message-State: AOAM531k2RQcPtNkQSFPngumZF7U72PRqVUJNaYC83jnuJLC7nbPI/Mh
 OX2ux4kAjxpwXuT7E7EVYpkIV8A98No=
X-Google-Smtp-Source: ABdhPJwTWD0sqVlemPzHrR/znGRysXOUccdjrkZ5rHuwWsFHTrINqiYX6kZ0bp26wW9rT6w8CY4f1g==
X-Received: by 2002:a6b:f104:: with SMTP id e4mr799402iog.49.1642991500812;
 Sun, 23 Jan 2022 18:31:40 -0800 (PST)
Received: from aford-IdeaCentre-A730.lan
 ([2601:448:8400:9e8:582d:ad0e:e5a6:94b6])
 by smtp.gmail.com with ESMTPSA id w4sm6625633ilq.56.2022.01.23.18.31.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 23 Jan 2022 18:31:40 -0800 (PST)
From: Adam Ford <aford173@gmail.com>
To: linux-media@vger.kernel.org
Cc: linux-arm-kernel@lists.infradead.org, shawnguo@kernel.org,
 aford@beaconembedded.com, Adam Ford <aford173@gmail.com>,
 Rob Herring <robh@kernel.org>,
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Lucas Stach <l.stach@pengutronix.de>, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-staging@lists.linux.dev
Subject: [PATCH V3 04/10] dt-bindings: media: nxp,
 imx8mq-vpu: Split G1 and G2 nodes
Date: Sun, 23 Jan 2022 20:31:18 -0600
Message-Id: <20220124023125.414794-5-aford173@gmail.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220124023125.414794-1-aford173@gmail.com>
References: <20220124023125.414794-1-aford173@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220123_183142_204835_631FAF85 
X-CRM114-Status: GOOD (  10.88  )
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

The G1 and G2 are independent and separate decoder blocks
that are enabled by the vpu-blk-ctrl power-domain controller,
which now has a proper driver.

Because these blocks only share the power-domain, and can be
independently fused out, update the bindings to support separate
nodes for the G1 and G2 decoders with vpu-blk-ctrl power-domain
support.

The new DT + old kernel isn't a supported configuration.

Signed-off-by: Adam Ford <aford173@gmail.com>
Reviewed-by: Rob Herring <robh@kernel.org>

diff --git a/Documentation/devicetree/bindings/media/nxp,imx8mq-vpu.yaml b/Documentation/devicetree/bindings/media/nxp,imx8mq-vpu.yaml
index 762be3f96ce9..9c28d562112b 100644
--- a/Documentation/devicetree/bindings/media/nxp,imx8mq-vpu.yaml
+++ b/Documentation/devicetree/bindings/media/nxp,imx8mq-vpu.yaml
@@ -15,33 +15,20 @@ description:
 
 properties:
   compatible:
-    const: nxp,imx8mq-vpu
+    oneOf:
+      - const: nxp,imx8mq-vpu
+        deprecated: true
+      - const: nxp,imx8mq-vpu-g1
+      - const: nxp,imx8mq-vpu-g2
 
   reg:
-    maxItems: 3
-
-  reg-names:
-    items:
-      - const: g1
-      - const: g2
-      - const: ctrl
+    maxItems: 1
 
   interrupts:
-    maxItems: 2
-
-  interrupt-names:
-    items:
-      - const: g1
-      - const: g2
+    maxItems: 1
 
   clocks:
-    maxItems: 3
-
-  clock-names:
-    items:
-      - const: g1
-      - const: g2
-      - const: bus
+    maxItems: 1
 
   power-domains:
     maxItems: 1
@@ -49,31 +36,33 @@ properties:
 required:
   - compatible
   - reg
-  - reg-names
   - interrupts
-  - interrupt-names
   - clocks
-  - clock-names
 
 additionalProperties: false
 
 examples:
   - |
         #include <dt-bindings/clock/imx8mq-clock.h>
+        #include <dt-bindings/power/imx8mq-power.h>
+        #include <dt-bindings/interrupt-controller/arm-gic.h>
+
+        vpu_g1: video-codec@38300000 {
+                compatible = "nxp,imx8mq-vpu-g1";
+                reg = <0x38300000 0x10000>;
+                interrupts = <GIC_SPI 7 IRQ_TYPE_LEVEL_HIGH>;
+                clocks = <&clk IMX8MQ_CLK_VPU_G1_ROOT>;
+                power-domains = <&vpu_blk_ctrl IMX8MQ_VPUBLK_PD_G1>;
+        };
+  - |
+        #include <dt-bindings/clock/imx8mq-clock.h>
+        #include <dt-bindings/power/imx8mq-power.h>
         #include <dt-bindings/interrupt-controller/arm-gic.h>
 
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
+        vpu_g2: video-codec@38300000 {
+                compatible = "nxp,imx8mq-vpu-g2";
+                reg = <0x38310000 0x10000>;
+                interrupts = <GIC_SPI 8 IRQ_TYPE_LEVEL_HIGH>;
+                clocks = <&clk IMX8MQ_CLK_VPU_G2_ROOT>;
+                power-domains = <&vpu_blk_ctrl IMX8MQ_VPUBLK_PD_G2>;
         };
-- 
2.32.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
