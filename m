Return-Path: <SRS0=HYuE=JE=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-16.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,UNPARSEABLE_RELAY,
	URIBL_BLOCKED,USER_AGENT_GIT autolearn=unavailable autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 34EA2C433ED
	for <linux-rockchip@archiver.kernel.org>; Wed,  7 Apr 2021 07:37:30 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id BE6E86139B
	for <linux-rockchip@archiver.kernel.org>; Wed,  7 Apr 2021 07:37:29 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org BE6E86139B
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=nNd7p+Dn7SC7a2uaut/64GAX9aHnJp0lWwcLjAVRR8o=; b=KatfaUECfnomG3C8Az60rb2yi
	qm9jjpmgB96iGTCXtxXuiuiDMTFu5w2y0EfaerFOJvn5I6JlXpWXtRGb1iPNPSO/3QOeg9TSyjOkA
	zfk5QekqDqi4TyZ5oPPJU7hdhi+fjd+fGr289pxKOrTy5+eQr2NjRxwqE00MQnU5+IgKzUuo0ofYO
	+MdAwqwdBR8KkF4jHP0y5BgnpNS4YVUbxhCwmeoK0nnVK4oJi+KAorjxP5bRExsvcoGMkLQPNSUhy
	Y/R+7RNlffvf++WbRfqHrvZNqUtw/mvwoFE78tMhK1Vv+YKceL2qCJ3/QX4W21bbSgTdgATeOTxLw
	PWPzUBi8g==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lU2kO-004O5Q-Vs; Wed, 07 Apr 2021 07:37:17 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lU2j7-004Nhn-Fz; Wed, 07 Apr 2021 07:35:53 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: benjamin.gaignard)
 with ESMTPSA id 1A3111F44F88
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
To: ezequiel@collabora.com, p.zabel@pengutronix.de, mchehab@kernel.org,
 robh+dt@kernel.org, shawnguo@kernel.org, s.hauer@pengutronix.de,
 festevam@gmail.com, lee.jones@linaro.org, gregkh@linuxfoundation.org,
 mripard@kernel.org, paul.kocialkowski@bootlin.com, wens@csie.org,
 jernej.skrabec@siol.net, hverkuil-cisco@xs4all.nl, emil.l.velikov@gmail.com
Cc: kernel@pengutronix.de, linux-imx@nxp.com, linux-media@vger.kernel.org,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 devel@driverdev.osuosl.org, kernel@collabora.com, cphealy@gmail.com,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Rob Herring <robh@kernel.org>
Subject: [PATCH v9 02/13] dt-bindings: media: nxp,
 imx8mq-vpu: Update the bindings for G2 support
Date: Wed,  7 Apr 2021 09:35:23 +0200
Message-Id: <20210407073534.376722-3-benjamin.gaignard@collabora.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210407073534.376722-1-benjamin.gaignard@collabora.com>
References: <20210407073534.376722-1-benjamin.gaignard@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210407_083549_742505_5641BFC6 
X-CRM114-Status: GOOD (  12.48  )
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

Introducing the G2 hevc video decoder requires modifications of the bindings to allow
one node per VPU.

VPUs share one hardware control block which is provided as a phandle on
a syscon.
Each node has now one reg and one interrupt.
Add a compatible for G2 hardware block: nxp,imx8mq-vpu-g2.

To be compatible with older DT the driver is still capable to use the 'ctrl'
reg-name even if it is deprecated now.

Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
Reviewed-by: Rob Herring <robh@kernel.org>
Reviewed-by: Philipp Zabel <p.zabel@pengutronix.de>
---
version 9:
 - Corrections in commit message

version 7:
 - Add Rob and Philipp reviewed-by tag
 - Change syscon phandle name to nxp,imx8m-vpu-ctrl (remove 'q' to be
   usable for iMX8MM too)

version 5:
- This version doesn't break the backward compatibilty between kernel
  and DT.

 .../bindings/media/nxp,imx8mq-vpu.yaml        | 53 ++++++++++++-------
 1 file changed, 34 insertions(+), 19 deletions(-)

diff --git a/Documentation/devicetree/bindings/media/nxp,imx8mq-vpu.yaml b/Documentation/devicetree/bindings/media/nxp,imx8mq-vpu.yaml
index 762be3f96ce9..18e7d40a5f24 100644
--- a/Documentation/devicetree/bindings/media/nxp,imx8mq-vpu.yaml
+++ b/Documentation/devicetree/bindings/media/nxp,imx8mq-vpu.yaml
@@ -15,22 +15,18 @@ description:
 
 properties:
   compatible:
-    const: nxp,imx8mq-vpu
+    oneOf:
+      - const: nxp,imx8mq-vpu
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
+    maxItems: 1
 
   interrupt-names:
-    items:
+    oneOf:
       - const: g1
       - const: g2
 
@@ -46,14 +42,18 @@ properties:
   power-domains:
     maxItems: 1
 
+  nxp,imx8m-vpu-ctrl:
+    description: Specifies a phandle to syscon VPU hardware control block
+    $ref: "/schemas/types.yaml#/definitions/phandle"
+
 required:
   - compatible
   - reg
-  - reg-names
   - interrupts
   - interrupt-names
   - clocks
   - clock-names
+  - nxp,imx8m-vpu-ctrl
 
 additionalProperties: false
 
@@ -62,18 +62,33 @@ examples:
         #include <dt-bindings/clock/imx8mq-clock.h>
         #include <dt-bindings/interrupt-controller/arm-gic.h>
 
-        vpu: video-codec@38300000 {
+        vpu_ctrl: syscon@38320000 {
+                 compatible = "nxp,imx8mq-vpu-ctrl", "syscon";
+                 reg = <0x38320000 0x10000>;
+        };
+
+        vpu_g1: video-codec@38300000 {
                 compatible = "nxp,imx8mq-vpu";
-                reg = <0x38300000 0x10000>,
-                      <0x38310000 0x10000>,
-                      <0x38320000 0x10000>;
-                reg-names = "g1", "g2", "ctrl";
-                interrupts = <GIC_SPI 7 IRQ_TYPE_LEVEL_HIGH>,
-                             <GIC_SPI 8 IRQ_TYPE_LEVEL_HIGH>;
-                interrupt-names = "g1", "g2";
+                reg = <0x38300000 0x10000>;
+                interrupts = <GIC_SPI 7 IRQ_TYPE_LEVEL_HIGH>;
+                interrupt-names = "g1";
+                clocks = <&clk IMX8MQ_CLK_VPU_G1_ROOT>,
+                         <&clk IMX8MQ_CLK_VPU_G2_ROOT>,
+                         <&clk IMX8MQ_CLK_VPU_DEC_ROOT>;
+                clock-names = "g1", "g2", "bus";
+                power-domains = <&pgc_vpu>;
+                nxp,imx8m-vpu-ctrl = <&vpu_ctrl>;
+        };
+
+        vpu_g2: video-codec@38310000 {
+                compatible = "nxp,imx8mq-vpu-g2";
+                reg = <0x38300000 0x10000>;
+                interrupts = <GIC_SPI 8 IRQ_TYPE_LEVEL_HIGH>;
+                interrupt-names = "g2";
                 clocks = <&clk IMX8MQ_CLK_VPU_G1_ROOT>,
                          <&clk IMX8MQ_CLK_VPU_G2_ROOT>,
                          <&clk IMX8MQ_CLK_VPU_DEC_ROOT>;
                 clock-names = "g1", "g2", "bus";
                 power-domains = <&pgc_vpu>;
+                nxp,imx8m-vpu-ctrl = <&vpu_ctrl>;
         };
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
