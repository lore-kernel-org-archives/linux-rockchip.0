Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BD221C433F5
	for <linux-rockchip@archiver.kernel.org>; Thu, 16 Dec 2021 11:15:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kRfZl4a53jCT36c+wCpLoUOKeRUuprG+a28TCo8+XK4=; b=Zluq9FLgDQRAjX
	zIF8uE3Z/mpbGMdnLXnXnhpATtp8w/3A5Tni5Vy6EoaU6obFP2c+DP+petsgD8E2bXsr1x2yRTeGc
	Qr+Idqx9cIItjE4kSNgJV/KQEUh4ozjc//Fzgbz4jJv/dPa0bUkNV+XGjCStR0OTmCGDVthzqi4C3
	8gqrXEZn8z9UCYVQXL/XVLP5wx9++KrEcK0g6/P9a+y5w5V7kJf8fTBLFACloxeKDIeXl/NIieE2b
	4ZnVZn25d8ePqodHbBUNF4vEXVs8uK9G/ohLYktU2m6pCkUGza8Bjjd3KQ80mxDC3wLHK7JlsKZDJ
	LSJUquK3oYMxpMrRd8/g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mxojN-0055v6-Ac; Thu, 16 Dec 2021 11:15:25 +0000
Received: from mail-io1-xd35.google.com ([2607:f8b0:4864:20::d35])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mxohQ-0054pd-QZ; Thu, 16 Dec 2021 11:13:26 +0000
Received: by mail-io1-xd35.google.com with SMTP id x6so34407016iol.13;
 Thu, 16 Dec 2021 03:13:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=hIJ2BXRPTEtzu/ZO8rXZU4lpHiRp6LC7zg0PG2dAKgA=;
 b=j21orvp1x1uJGdqNmShqe1kyn9caZrVG9j25F7I5+iYeqvshwZ06bRf77n665sNSEr
 2ZwH8W8aIjIRIjCpPQ+JVnN43gpGA2GVXQSgTmU0MSsBfaQaKn/lln3BPiBdeppiT+XI
 cWhlyAwOcym+uEhYnzY89OUX/W3N9oO34zZxJL/aIq614k7ZReg4fLBbFxONMDIo0/tA
 BmIMwHWiI0nR8nudaKeefj0tQbT10E+NMZfurhivu08OuyG7fh3qT2VLnM0+3EZnptvp
 779dk2HV7p+a79INg1LArV4CUb8T+v5SURyCa4QojZCSKBESow/71Fz89UcOTt1mn4Tp
 XR9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=hIJ2BXRPTEtzu/ZO8rXZU4lpHiRp6LC7zg0PG2dAKgA=;
 b=KBqBGvwXoxF4gzrbSCoqywXmHU2F2ZTkleL0YDcSNJEGjRD8wote+6BfgSQ3TMRGrD
 O+J2Nv8B6MRtBPzOyR6d/MZc6W/cOT7L8H5JBPYY0K+AsmHhVEiOtiDlpyuFDYqw5icA
 jDBlCc2hkdIZz0uznSX8SFvsoobAjIyZeQ2rfR+h8OZoR9gk5V3dpLU2nTmPPsTGUDIB
 hAJuliSNUy5g1VDvjL2qa3fZgLemAmTGf3sEwdu/K4Vo/DgBQ45FfUAI96fDpKw+P+jE
 JPo4omlMIwfdYdcECuMFojUXfnJ5yT9UuImRcxk2ds3hBpdL3QVw51bx5ndzXxhgG0Oj
 gcKA==
X-Gm-Message-State: AOAM531twkyTKsEDKX8BVXENPu45nvg/wcq+lMzAon69eLPiucyEwHd+
 sJbgiycFb332wS36SsMmTA8=
X-Google-Smtp-Source: ABdhPJw4RmmjDj7+SbxpCTshhpxpOsQ5eYDEAGda/dzashZVSPmaKDpNrjhyVeIORPvbz7fpa9W/Bw==
X-Received: by 2002:a05:6602:42:: with SMTP id
 z2mr9035083ioz.208.1639653203369; 
 Thu, 16 Dec 2021 03:13:23 -0800 (PST)
Received: from aford-IdeaCentre-A730.lan
 ([2601:448:8400:9e8:fe22:1652:55f7:5197])
 by smtp.gmail.com with ESMTPSA id h1sm3090946iow.31.2021.12.16.03.13.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 16 Dec 2021 03:13:22 -0800 (PST)
From: Adam Ford <aford173@gmail.com>
To: linux-media@vger.kernel.org
Cc: abel.vesa@nxp.com, aford@beaconembedded.com,
 benjamin.gaignard@collabora.com, hverkuil-cisco@xs4all.nl,
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
Subject: [PATCH V2 04/10] dt-bindings: media: nxp,
 imx8mq-vpu: Split G1 and G2 nodes
Date: Thu, 16 Dec 2021 05:12:49 -0600
Message-Id: <20211216111256.2362683-5-aford173@gmail.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20211216111256.2362683-1-aford173@gmail.com>
References: <20211216111256.2362683-1-aford173@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211216_031324_921410_10ADEBEE 
X-CRM114-Status: GOOD (  10.41  )
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
decoders with vpu-blk-ctrl power-domain support.

Signed-off-by: Adam Ford <aford173@gmail.com>

diff --git a/Documentation/devicetree/bindings/media/nxp,imx8mq-vpu.yaml b/Documentation/devicetree/bindings/media/nxp,imx8mq-vpu.yaml
index 762be3f96ce9..c1e157251de7 100644
--- a/Documentation/devicetree/bindings/media/nxp,imx8mq-vpu.yaml
+++ b/Documentation/devicetree/bindings/media/nxp,imx8mq-vpu.yaml
@@ -15,33 +15,20 @@ description:
 
 properties:
   compatible:
-    const: nxp,imx8mq-vpu
+     oneOf:
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
