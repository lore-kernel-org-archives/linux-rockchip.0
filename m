Return-Path: <SRS0=+1u9=H7=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-16.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EDEF5C433DB
	for <linux-rockchip@archiver.kernel.org>; Mon,  1 Mar 2021 15:18:31 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id B32B4600CC
	for <linux-rockchip@archiver.kernel.org>; Mon,  1 Mar 2021 15:18:31 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org B32B4600CC
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=cUCB8mlI67KTxLIX/+evIT8DQ2Ealt9OF/uyCP+JOGc=; b=KUaHDlzVPZL1SzVKYEpGhPIOg
	7SFLcwjuLuVH1JaaGs93bv0oET6O59zY45x2dJYMZMTEUxmvXmcsIrcJl7ZNlhgOwzVXH+p0M6U4W
	rwD4ZN7cc6As420dVksBYfMnnmgD3NR3pq2TPP/JLGoWT+DcTthU0G+PfhhM6qd3SkejeumPkOe/h
	L9MFghXyzAXg0S+wrsqFBbpfPM/usyJaXdraZm4fLg4bVNnTpMWnKWoHmGoxUSRpRRUEPAj4nu3ZI
	O10sHBl0cezW6hx7ehen6EYOTq7n07qAmWSMkMli3wT1JAsmllWu1SLzRgCs9hHZ+7rdZcG5USIqC
	zijCmZDvg==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1lGkJX-0001ck-J3; Mon, 01 Mar 2021 15:18:27 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1lGkJG-0001U5-5C; Mon, 01 Mar 2021 15:18:13 +0000
Received: from localhost.localdomain (unknown
 [IPv6:2a01:e0a:4cb:a870:39a1:f0e7:a696:18c8])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 (Authenticated sender: benjamin.gaignard)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id B26DD1F44E72;
 Mon,  1 Mar 2021 15:18:07 +0000 (GMT)
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
To: p.zabel@pengutronix.de, robh+dt@kernel.org, shawnguo@kernel.org,
 s.hauer@pengutronix.de, festevam@gmail.com, ezequiel@collabora.com,
 mchehab@kernel.org, gregkh@linuxfoundation.org
Subject: [PATCH v3 2/5] dt-bindings: media: IMX8MQ VPU: document reset usage
Date: Mon,  1 Mar 2021 16:17:51 +0100
Message-Id: <20210301151754.104749-3-benjamin.gaignard@collabora.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210301151754.104749-1-benjamin.gaignard@collabora.com>
References: <20210301151754.104749-1-benjamin.gaignard@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210301_101810_335985_C084C8F0 
X-CRM114-Status: GOOD (  13.48  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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
Cc: devel@driverdev.osuosl.org, devicetree@vger.kernel.org,
 benjamin.gaignard@collabora.com, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-imx@nxp.com, kernel@pengutronix.de,
 kernel@collabora.com, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Document IMX8MQ VPU bindings to add the phandle to the reset driver.

Provide an independent reset driver allow to the both VPUs to share
their control/reset hardware block. The reset driver replace what
was previously done be using the 'ctrl' registers inside the driver.

This breaks the compatibility between DTB and kernel but the driver
is still in staging directory and limited to IMX8MQ SoC.

Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
---
version 3:
- Fix error in VPU example node

 .../devicetree/bindings/media/nxp,imx8mq-vpu.yaml  | 14 +++++++++-----
 1 file changed, 9 insertions(+), 5 deletions(-)

diff --git a/Documentation/devicetree/bindings/media/nxp,imx8mq-vpu.yaml b/Documentation/devicetree/bindings/media/nxp,imx8mq-vpu.yaml
index 762be3f96ce9..fd53a4e43572 100644
--- a/Documentation/devicetree/bindings/media/nxp,imx8mq-vpu.yaml
+++ b/Documentation/devicetree/bindings/media/nxp,imx8mq-vpu.yaml
@@ -18,13 +18,12 @@ properties:
     const: nxp,imx8mq-vpu
 
   reg:
-    maxItems: 3
+    maxItems: 2
 
   reg-names:
     items:
       - const: g1
       - const: g2
-      - const: ctrl
 
   interrupts:
     maxItems: 2
@@ -46,6 +45,9 @@ properties:
   power-domains:
     maxItems: 1
 
+  resets:
+    maxItems: 1
+
 required:
   - compatible
   - reg
@@ -54,6 +56,7 @@ required:
   - interrupt-names
   - clocks
   - clock-names
+  - resets
 
 additionalProperties: false
 
@@ -61,13 +64,13 @@ examples:
   - |
         #include <dt-bindings/clock/imx8mq-clock.h>
         #include <dt-bindings/interrupt-controller/arm-gic.h>
+        #include <dt-bindings/reset/imx8mq-vpu-reset.h>
 
         vpu: video-codec@38300000 {
                 compatible = "nxp,imx8mq-vpu";
                 reg = <0x38300000 0x10000>,
-                      <0x38310000 0x10000>,
-                      <0x38320000 0x10000>;
-                reg-names = "g1", "g2", "ctrl";
+                      <0x38310000 0x10000>;
+                reg-names = "g1", "g2";
                 interrupts = <GIC_SPI 7 IRQ_TYPE_LEVEL_HIGH>,
                              <GIC_SPI 8 IRQ_TYPE_LEVEL_HIGH>;
                 interrupt-names = "g1", "g2";
@@ -76,4 +79,5 @@ examples:
                          <&clk IMX8MQ_CLK_VPU_DEC_ROOT>;
                 clock-names = "g1", "g2", "bus";
                 power-domains = <&pgc_vpu>;
+                resets = <&vpu_reset IMX8MQ_RESET_VPU_RESET_G1>;
         };
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
