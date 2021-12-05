Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C03C7C433F5
	for <linux-rockchip@archiver.kernel.org>; Sun,  5 Dec 2021 18:17:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zVqmBqOE5b5M+fNlembkMNxfLAejHs5zb+rU3EdxtdQ=; b=SR3frSWx1MeiNn
	Sfq5rHIDD+sQoqnFM23oPhlonS67ald347RruW4DM28MynzM9SdEhG9rTQtpB+AGxY3UP+OwHFtem
	VRBlMcgt9e1kf7ofgZz5m1GDEYEoE0UGp0FzzNjeTeNl8m45HX2ZOA6R3+VvxrSxi55nJBb8niQv0
	rARKYUJ7aSX6EYWZtz1x47kYkM2kfHZq2Z3WWHWDM3ShmznbJFCa0SBMtcSxKasHYNEskkqgLpFOw
	1+UnMHl7bQU994GS1MJtXlYoHg+uJgzQr0GRiNDdpWXsFCSorO3Fb/Nkql/d/Gi594yodxqtehv/r
	JplDgEJqXOJuBfg9YHGw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mtw4e-001psA-8y; Sun, 05 Dec 2021 18:17:20 +0000
Received: from mail-io1-xd36.google.com ([2607:f8b0:4864:20::d36])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mtw40-001pZ1-Bc; Sun, 05 Dec 2021 18:16:42 +0000
Received: by mail-io1-xd36.google.com with SMTP id x6so10278342iol.13;
 Sun, 05 Dec 2021 10:16:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=tWudG/7p9Ihv/RchD2aqdeBvOMPxR3CBPXRYkrOCQIc=;
 b=Rta/hbYaQyn4KIRTC5NZcb5EmJDBuP6DlcpgmudYGUBaIaREtTQBqKrTNTn9EdCscp
 RfL3YWIiXlrjpuXAUBtJ8we2gJw3n++XYvGM5hTmZNX0svu1uFiz0aWSSOM/MdiYja4U
 nnMXsutHRNwAmklhoAjvPca1pY/f0crCHzG11+d8nVKy8yJFwczULj3qVVsmm143wxyb
 mIoXFuWvHVfVcXERBth0LxuPg+Skx0Oz2GIpNIBrHyaxIjK0LIvdRbvaeh+i7P1nzF0x
 xXRjG6mLrwk+nZUH3jVP8uwqCWDPSVDumz5a8LSdUQBPmZkvbfMwKQIBWOVzfKBuvfcB
 fIWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=tWudG/7p9Ihv/RchD2aqdeBvOMPxR3CBPXRYkrOCQIc=;
 b=28YKQOhEMKUVfOJkVf+lTtiX1pbQptBqtNP3eQb5F7V64n0vOVdjPSVE9KSDCg2WYp
 VWyANixYE/5nKltYKUW2p1KjvJf4BQ0YQhhFQmjINvloB6W9uTcOETOnNJCbjhpWgKYS
 I0OO/ug/NynkvyU0zMITOb/7+j+gsBm9EJ9qIbB/U2DPYweVINe8WyD6fvoAx3Nz3ZWx
 q2pNkFqbT0pYAF+wyObacX8h7R2rqj6KUE21Yw1l/gs1zxeMiTuHoGVA0ys+n5Uit/Dh
 h0sFYr9Vv1uh11d7AytT6ix9G/y5aw+FDx0pWKz0z7gM1Wuo8LfIiuuiy4K5jrmZB6WA
 XWJA==
X-Gm-Message-State: AOAM530R7Lz4uEJChMJMgwSGrmrRMYHJ6yb0AUY9+uSjhulE+XdaN/xu
 M6we9vxPbIF0M2ibmWkFqtI=
X-Google-Smtp-Source: ABdhPJz76yYAqHOJ31ePlq8l+eSKZz2b7PQOgx+R+/rE+pERvqgyrdRgmvhM0sqqeHT5SBKrzvSo3A==
X-Received: by 2002:a05:6638:2bb:: with SMTP id
 d27mr39777646jaq.66.1638728199307; 
 Sun, 05 Dec 2021 10:16:39 -0800 (PST)
Received: from aford-IdeaCentre-A730.lan
 ([2601:448:8400:9e8:9ea0:bb99:b16a:6159])
 by smtp.gmail.com with ESMTPSA id z12sm5808164ilu.27.2021.12.05.10.16.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 05 Dec 2021 10:16:38 -0800 (PST)
From: Adam Ford <aford173@gmail.com>
To: linux-media@vger.kernel.org
Cc: benjamin.gaignard@collabora.com, cphealy@gmail.com, nicolas@ndufresne.ca,
 Lucas Stach <l.stach@pengutronix.de>, Adam Ford <aford173@gmail.com>,
 Rob Herring <robh+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>,
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-staging@lists.linux.dev
Subject: [RFC 2/5] dt-bindings: soc: add binding for i.MX8MQ VPU blk-ctrl
Date: Sun,  5 Dec 2021 12:16:15 -0600
Message-Id: <20211205181618.1041699-3-aford173@gmail.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20211205181618.1041699-1-aford173@gmail.com>
References: <20211205181618.1041699-1-aford173@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211205_101640_476569_DF194A8D 
X-CRM114-Status: GOOD (  13.72  )
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

From: Lucas Stach <l.stach@pengutronix.de>

This adds the DT binding for the i.MX8MQ VPU blk-ctrl.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
Signed-off-by: Adam Ford <aford173@gmail.com>
---
 .../soc/imx/fsl,imx8mq-vpu-blk-ctrl.yaml      | 71 +++++++++++++++++++
 1 file changed, 71 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/soc/imx/fsl,imx8mq-vpu-blk-ctrl.yaml

diff --git a/Documentation/devicetree/bindings/soc/imx/fsl,imx8mq-vpu-blk-ctrl.yaml b/Documentation/devicetree/bindings/soc/imx/fsl,imx8mq-vpu-blk-ctrl.yaml
new file mode 100644
index 000000000000..b8cfad0d7a1e
--- /dev/null
+++ b/Documentation/devicetree/bindings/soc/imx/fsl,imx8mq-vpu-blk-ctrl.yaml
@@ -0,0 +1,71 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/soc/imx/fsl,imx8mq-vpu-blk-ctrl.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: NXP i.MX8MQ VPU blk-ctrl
+
+maintainers:
+  - Lucas Stach <l.stach@pengutronix.de>
+
+description:
+  The i.MX8MQ VPU blk-ctrl is a top-level peripheral providing access to
+  the NoC and ensuring proper power sequencing of the VPU peripherals
+  located in the VPU domain of the SoC.
+
+properties:
+  compatible:
+    items:
+      - const: fsl,imx8mq-vpu-blk-ctrl
+
+  reg:
+    maxItems: 1
+
+  '#power-domain-cells':
+    const: 1
+
+  power-domains:
+    minItems: 3
+    maxItems: 3
+
+  power-domain-names:
+    items:
+      - const: bus
+      - const: g1
+      - const: g2
+
+  clocks:
+    minItems: 2
+    maxItems: 2
+
+  clock-names:
+    items:
+      - const: g1
+      - const: g2
+
+required:
+  - compatible
+  - reg
+  - power-domains
+  - power-domain-names
+  - clocks
+  - clock-names
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/imx8mq-clock.h>
+    #include <dt-bindings/power/imx8mq-power.h>
+
+    vpu_blk_ctrl: blk-ctrl@38320000 {
+      compatible = "fsl,imx8mq-vpu-blk-ctrl", "syscon";
+      reg = <0x38320000 0x100>;
+      power-domains = <&pgc_vpu>, <&pgc_vpu>, <&pgc_vpu>;
+      power-domain-names = "bus", "g1", "g2";
+      clocks = <&clk IMX8MQ_CLK_VPU_G1_ROOT>,
+               <&clk IMX8MQ_CLK_VPU_G2_ROOT>;
+      clock-names = "g1", "g2";
+      #power-domain-cells = <1>;
+    };
-- 
2.32.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
