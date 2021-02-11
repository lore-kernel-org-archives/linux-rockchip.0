Return-Path: <SRS0=2G0u=HN=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.3 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64A02C433E0
	for <linux-rockchip@archiver.kernel.org>; Thu, 11 Feb 2021 11:50:49 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 0FAEC64E87
	for <linux-rockchip@archiver.kernel.org>; Thu, 11 Feb 2021 11:50:49 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 0FAEC64E87
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=RNCfaZaJDEHP5ZYRjDaOODhW62pifTu2ChISO10ddOM=; b=DfLrouGKE88pEygsRKtpmpqum
	B6Bbzpd4xWbhSnJqVxrHDmv3+u04UX95tc4unfKTxkCjjZ/UoJvJhHNAETdVBF5ZEFpuaCs8FgRAh
	KNT0xPvYx2ptPnvHeRWWmK3QzSMQ/PO5qCg0pDbNMzh+PPeRC2FPb8Q0MeyMy+J5THZ7wO9zMpMyE
	8W4tHnK6J43VLgAtdOGb/joBIarIzznHjXsPHdmr7+sx8XKyYcLu01v8sBpDAHLIcs0HeYrIg3KaY
	6h07hsPj6hnel3iBDhPHlLXqT9hMx3b4esu9XGIjkAEoweOkssNhDA85mECEp7T0zcytf+nsRq6Om
	lfT0CkUfg==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1lAAUe-0001c1-0q; Thu, 11 Feb 2021 11:50:44 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1lAAUE-0001RF-EJ; Thu, 11 Feb 2021 11:50:20 +0000
Received: from localhost.localdomain (unknown
 [IPv6:2a01:e0a:4cb:a870:94f7:2542:9eb3:b5ba])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 (Authenticated sender: benjamin.gaignard)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id C44F11F45970;
 Thu, 11 Feb 2021 11:50:13 +0000 (GMT)
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
To: p.zabel@pengutronix.de, robh+dt@kernel.org, shawnguo@kernel.org,
 s.hauer@pengutronix.de, festevam@gmail.com, ezequiel@collabora.com,
 mchehab@kernel.org, gregkh@linuxfoundation.org
Subject: [PATCH 1/4] dt-bindings: reset: IMX8MQ VPU reset
Date: Thu, 11 Feb 2021 12:50:00 +0100
Message-Id: <20210211115003.249367-2-benjamin.gaignard@collabora.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210211115003.249367-1-benjamin.gaignard@collabora.com>
References: <20210211115003.249367-1-benjamin.gaignard@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210211_065018_615575_660CFCDA 
X-CRM114-Status: GOOD (  15.77  )
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
