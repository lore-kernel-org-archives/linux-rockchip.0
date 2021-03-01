Return-Path: <SRS0=+1u9=H7=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-16.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 626B2C433E0
	for <linux-rockchip@archiver.kernel.org>; Mon,  1 Mar 2021 15:18:29 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 0A53E600CC
	for <linux-rockchip@archiver.kernel.org>; Mon,  1 Mar 2021 15:18:29 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 0A53E600CC
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=RNCfaZaJDEHP5ZYRjDaOODhW62pifTu2ChISO10ddOM=; b=hJjCmVWKqrh+7GFDR1xhWQ2B7
	hUjJ2pzfD837haj1tTKQ+f7Yix/qxxGSiZz5laWPEyzoXcxwwBW1eDve7CmdszMg461lVJaSaM+Ge
	MdjXJjI2x8+ZPt7Fh5lsCuomKWzx0RwXoZwnTewY7bCjRXdz+ZrKyymd0GY+6vmTJsdDIsNc/Yq7U
	ex2gKXwSkqNrfcWwCzNUwjzQ2id1jMArXQphKYFuUCISHNAoqAmNlOAJjCbeqbWojEtByRlvaN9uR
	OG2b0oxdts/LxRoNnD/WsHaKZ4X5qbJeUWCNg4KVhRRdbIJqfPdG8ezXeW7doUq3vg1pOEfPMpYw8
	wfYfdJuPg==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1lGkJS-0001aO-6d; Mon, 01 Mar 2021 15:18:22 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1lGkJF-0001Tx-Am; Mon, 01 Mar 2021 15:18:10 +0000
Received: from localhost.localdomain (unknown
 [IPv6:2a01:e0a:4cb:a870:39a1:f0e7:a696:18c8])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 (Authenticated sender: benjamin.gaignard)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id C5B831F44E6E;
 Mon,  1 Mar 2021 15:18:06 +0000 (GMT)
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
To: p.zabel@pengutronix.de, robh+dt@kernel.org, shawnguo@kernel.org,
 s.hauer@pengutronix.de, festevam@gmail.com, ezequiel@collabora.com,
 mchehab@kernel.org, gregkh@linuxfoundation.org
Subject: [PATCH v3 1/5] dt-bindings: reset: IMX8MQ VPU reset
Date: Mon,  1 Mar 2021 16:17:50 +0100
Message-Id: <20210301151754.104749-2-benjamin.gaignard@collabora.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210301151754.104749-1-benjamin.gaignard@collabora.com>
References: <20210301151754.104749-1-benjamin.gaignard@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210301_101809_600365_3D0E9700 
X-CRM114-Status: GOOD (  15.74  )
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

Document bindings for IMX8MQ VPU reset hardware block

Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
---
 .../bindings/reset/fsl,imx8mq-vpu-reset.yaml  | 54 +++++++++++++++++++
 include/dt-bindings/reset/imx8mq-vpu-reset.h  | 16 ++++++
 2 files changed, 70 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/reset/fsl,imx8mq-vpu-reset.yaml
 create mode 100644 include/dt-bindings/reset/imx8mq-vpu-reset.h

diff --git a/Documentation/devicetree/bindings/reset/fsl,imx8mq-vpu-reset.yaml b/Documentation/devicetree/bindings/reset/fsl,imx8mq-vpu-reset.yaml
new file mode 100644
index 000000000000..00020421c0e3
--- /dev/null
+++ b/Documentation/devicetree/bindings/reset/fsl,imx8mq-vpu-reset.yaml
@@ -0,0 +1,54 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/reset/fsl,imx8mq-vpu-reset.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Freescale i.MX8MQ VPU Reset Controller
+
+maintainers:
+  - Benjamin Gaignard <benjamin.gaignard@collabora.com>
+
+description: |
+  The VPU reset controller is used to reset the video processor
+  unit peripherals. Device nodes that need access to reset lines should
+  specify them as a reset phandle in their corresponding node as
+  specified in reset.txt.
+
+  For list of all valid reset indices see
+    <dt-bindings/reset/imx8mq-vpu-reset.h> for i.MX8MQ.
+
+properties:
+  compatible:
+    items:
+      - const: fsl,imx8mq-vpu-reset
+      - const: syscon
+
+  reg:
+    maxItems: 1
+
+  clocks:
+    minItems: 1
+    maxItems: 3
+
+  '#reset-cells':
+    const: 1
+
+required:
+  - compatible
+  - reg
+  - clocks
+  - '#reset-cells'
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/imx8mq-clock.h>
+
+    vpu-reset@38320000 {
+        compatible = "fsl,imx8mq-vpu-reset", "syscon";
+        reg = <0x38320000 0x10000>;
+        clocks = <&clk IMX8MQ_CLK_VPU_DEC_ROOT>;
+        #reset-cells = <1>;
+    };
diff --git a/include/dt-bindings/reset/imx8mq-vpu-reset.h b/include/dt-bindings/reset/imx8mq-vpu-reset.h
new file mode 100644
index 000000000000..efcbe18177fe
--- /dev/null
+++ b/include/dt-bindings/reset/imx8mq-vpu-reset.h
@@ -0,0 +1,16 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/*
+ * Copyright (c) 2021, Collabora
+ *
+ * i.MX7 System Reset Controller (SRC) driver
+ *
+ * Author: Benjamin Gaignard <benjamin.gaignard@collabora.com>
+ */
+
+#ifndef DT_BINDINGS_VPU_RESET_IMX8MQ
+#define DT_BINDINGS_VPU_RESET_IMX8MQ
+
+#define IMX8MQ_RESET_VPU_RESET_G1	0
+#define IMX8MQ_RESET_VPU_RESET_G2	1
+
+#endif
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
