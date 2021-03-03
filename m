Return-Path: <SRS0=qEJD=IB=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-16.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 345BDC433DB
	for <linux-rockchip@archiver.kernel.org>; Wed,  3 Mar 2021 19:19:44 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 4187F64ED7
	for <linux-rockchip@archiver.kernel.org>; Wed,  3 Mar 2021 19:19:43 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 4187F64ED7
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=mz9jFW0rrOy+7waH9kYgSGDJDAqCdxTZcm4a4P+po34=; b=D2bJWbjRatlkocLZv3gY67SAl
	GS3Z5vcB/xUHAPGmVTotARqPTsGIiIDZdiQJ8hXBJNIgGpkulqlWOiMmAvBmToVWr2wAm5+HaIlvj
	f1dl6s+8vfobWi5Vi4cXXEZ1M48SXL54fOqMzZTDpQ/6YDMbrDjpNEv4XufPT5xxK2PAYgvyjnCh2
	ELtnr/fPHB4NBz4jsx3w1zH4N/dQmy/nBCk6tRDltjdCdsBK4iHn/fp1eA9Eg7x+N9pScVmHPEsDk
	c805cuTfO8excmR13tYK5ffeZPNm+CK/tNggS2fAregkottWBQ+gY4hXvZCk7O+9Tv2rqoTk98Q5b
	aPuggq48A==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lHTyE-005W5Q-3t; Wed, 03 Mar 2021 16:03:30 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lHSoC-005DWd-8C; Wed, 03 Mar 2021 14:49:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description;
 bh=Kf8S4UmIQFa/ELtVpCeCLs4sRb5gVvQ4CKHYQtDJPjQ=; b=AkFe57uByn8mn1GDNSEc221Z9G
 7X+9DJihdnAa4Ubg3ZmuXiwM9dhyZEGoq+F+NDnvFyg3eRysBuwm0VfJgqieKCjOdxo83YM+BMCgZ
 2j5+UE8GHjnBt+Y24DU5FVsCU7VuTlk91MH8qGepz0srD5QrarvD+RXaCC9Cj3yngYuH6rlRM18UU
 qhbVXy9aaC9S0kcb+RnAEpNKqyiMNmB1xUMAzKdvz2d1af5SU5FIkS2gRs9Bz0D8NSd+wbFQVsLIj
 BMIFKhpEmw2ehMta5dULlVABOUYT7qPRjhi/KIE+M0X3pFsm/xPoqX4nVf6V9KwFLeS+i8Hh1P0ZL
 NIy7KC8A==;
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by casper.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lHPrk-002O4G-MS; Wed, 03 Mar 2021 11:40:34 +0000
Received: from localhost.localdomain (unknown
 [IPv6:2a01:e0a:4cb:a870:2035:1dcd:21c7:b3af])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 (Authenticated sender: benjamin.gaignard)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 404B71F45C2C;
 Wed,  3 Mar 2021 11:40:28 +0000 (GMT)
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
To: ezequiel@collabora.com, p.zabel@pengutronix.de, mchehab@kernel.org,
 robh+dt@kernel.org, shawnguo@kernel.org, s.hauer@pengutronix.de,
 kernel@pengutronix.de, festevam@gmail.com, linux-imx@nxp.com,
 gregkh@linuxfoundation.org, mripard@kernel.org,
 paul.kocialkowski@bootlin.com, wens@csie.org, jernej.skrabec@siol.net,
 peng.fan@nxp.com, hverkuil-cisco@xs4all.nl, dan.carpenter@oracle.com
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, kernel@collabora.com,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>
Subject: [PATCH v4 10/11] dt-bindings: media: nxp,imx8mq-vpu: Update bindings
Date: Wed,  3 Mar 2021 12:39:51 +0100
Message-Id: <20210303113952.178519-11-benjamin.gaignard@collabora.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210303113952.178519-1-benjamin.gaignard@collabora.com>
References: <20210303113952.178519-1-benjamin.gaignard@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210303_114034_108428_DBBE0889 
X-CRM114-Status: GOOD (  12.17  )
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

The current bindings seem to make the assumption that the
two VPUs hardware blocks (G1 and G2) are only one set of
registers.
After implementing the VPU reset driver and G2 decoder driver
it shows that all the VPUs are independent and don't need to
know about the registers of the other blocks.
Remove from the bindings the need to set all blocks register
but keep reg-names property because removing it from the driver
may affect other variants.

Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
---
version 4:
- rebase the change on top of VPU reset patches:
  https://www.spinics.net/lists/arm-kernel/msg878440.html

version 2:
- be more verbose about why I change the bindings
Keep in mind that series comes after: https://www.spinics.net/lists/arm-kernel/msg875766.html
without that review and ack it won't work

 .../bindings/media/nxp,imx8mq-vpu.yaml        | 46 ++++++++++++-------
 1 file changed, 30 insertions(+), 16 deletions(-)

diff --git a/Documentation/devicetree/bindings/media/nxp,imx8mq-vpu.yaml b/Documentation/devicetree/bindings/media/nxp,imx8mq-vpu.yaml
index fd53a4e43572..468435c70eef 100644
--- a/Documentation/devicetree/bindings/media/nxp,imx8mq-vpu.yaml
+++ b/Documentation/devicetree/bindings/media/nxp,imx8mq-vpu.yaml
@@ -15,23 +15,25 @@ description:
 
 properties:
   compatible:
-    const: nxp,imx8mq-vpu
+    enum:
+      - nxp,imx8mq-vpu
+      - nxp,imx8mq-vpu-g2
 
   reg:
-    maxItems: 2
+    maxItems: 1
 
   reg-names:
-    items:
-      - const: g1
-      - const: g2
+    enum:
+      - g1
+      - g2
 
   interrupts:
-    maxItems: 2
+    maxItems: 1
 
   interrupt-names:
-    items:
-      - const: g1
-      - const: g2
+    enum:
+      - g1
+      - g2
 
   clocks:
     maxItems: 3
@@ -66,14 +68,12 @@ examples:
         #include <dt-bindings/interrupt-controller/arm-gic.h>
         #include <dt-bindings/reset/imx8mq-vpu-reset.h>
 
-        vpu: video-codec@38300000 {
+        vpu_g1: video-codec@38300000 {
                 compatible = "nxp,imx8mq-vpu";
-                reg = <0x38300000 0x10000>,
-                      <0x38310000 0x10000>;
-                reg-names = "g1", "g2";
-                interrupts = <GIC_SPI 7 IRQ_TYPE_LEVEL_HIGH>,
-                             <GIC_SPI 8 IRQ_TYPE_LEVEL_HIGH>;
-                interrupt-names = "g1", "g2";
+                reg = <0x38300000 0x10000>;
+                reg-names = "g1";
+                interrupts = <GIC_SPI 7 IRQ_TYPE_LEVEL_HIGH>;
+                interrupt-names = "g1";
                 clocks = <&clk IMX8MQ_CLK_VPU_G1_ROOT>,
                          <&clk IMX8MQ_CLK_VPU_G2_ROOT>,
                          <&clk IMX8MQ_CLK_VPU_DEC_ROOT>;
@@ -81,3 +81,17 @@ examples:
                 power-domains = <&pgc_vpu>;
                 resets = <&vpu_reset IMX8MQ_RESET_VPU_RESET_G1>;
         };
+
+        vpu_g2: video-codec@38310000 {
+                compatible = "nxp,imx8mq-vpu-g2";
+                reg = <0x38310000 0x10000>;
+                reg-names = "g2";
+                interrupts = <GIC_SPI 8 IRQ_TYPE_LEVEL_HIGH>;
+                interrupt-names = "g2";
+                clocks = <&clk IMX8MQ_CLK_VPU_G1_ROOT>,
+                         <&clk IMX8MQ_CLK_VPU_G2_ROOT>,
+                         <&clk IMX8MQ_CLK_VPU_DEC_ROOT>;
+                clock-names = "g1", "g2", "bus";
+                power-domains = <&pgc_vpu>;
+                resets = <&vpu_reset IMX8MQ_RESET_VPU_RESET_G2>;
+        };
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
