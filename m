Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B68ABC433F5
	for <linux-rockchip@archiver.kernel.org>; Thu, 16 Dec 2021 11:14:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ndwRKiMGBGWfmV9P5D5JmfT4CpxXqNO0nooUVguzR/w=; b=q1OGEyKDLj+qLY
	6TqmtQcTJLMkdr7ebdgBRWaCfHyrxSyvWzuW0+bP6Imfx5nn5UZrPkDhssDE0NTsIwu11aBmMp5DN
	P7eQTacSWiGLL17BpFPiCgG4PChWM+NCrxhlt6JyKSSKtNqew0TKskYPZgRyAyCV+5t4wgxY8NWuA
	0QA0wSInWhfsmUojkCuQ9VwIAb2+ZGgmE6MRyWtg+0v+AX6HdKj5EeHW/+9kGxEC9DH085M2hN37s
	WLtJud2Vh5eOFUcUbZESZM2pDEM4OfeQgiqLMRgq80xL/SNhXjf6EQtI88YalSSmV3mM+k0MkwUMm
	HLIdC13Sa4BWPG6PhAiA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mxoiL-0055Qa-7n; Thu, 16 Dec 2021 11:14:21 +0000
Received: from mail-io1-xd34.google.com ([2607:f8b0:4864:20::d34])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mxohL-0054lZ-MZ; Thu, 16 Dec 2021 11:13:23 +0000
Received: by mail-io1-xd34.google.com with SMTP id b187so34622882iof.11;
 Thu, 16 Dec 2021 03:13:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=OBZjeCPmHnZFjVhdtwcLx3XOD2NbI/pF57Ruee40Yio=;
 b=jpubRIei533qi1bG5g2e+TA27Ch+HggU3c7HH8qd+qRcNjvc81BndoRRaTbKhzXs2H
 3IJu3D6x/bQ4pbY6NF3RSGC6V1mix9bqGMjZ8YHsvWFTDumDVWxc3lmpLJ6+DziiU498
 ZG8UgRikzS6df/qYaOhVx7YB+R+h58ECqO2Gj8EK+Rl42h+HeID+1jPfc9svStzBzmB2
 80e1tkNd8zNkEUzcVnOZ8sB7FWAIVraH2DM472FnMLiyzuz3IC+rqszktQSi5+9LXIVH
 lJKW5tVrC8VSBYiRq5GcMRiyk9GmPZfTonlpIp+/+HkPByww+xCIoN3UiiqkjEelppB0
 5oCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=OBZjeCPmHnZFjVhdtwcLx3XOD2NbI/pF57Ruee40Yio=;
 b=u6k6jzE0dGII5TPawkTx4ytND12rIMVUcFlhC5M8palWjQ9kTbXZ66gZfUnHX4Uhxb
 O5DNc7T/iy9AKOlmDl+Apx4Ui52JqP6JZMbxs9+1LyDwBnAeHcfNVNz+NPczi8KLm6Hk
 ZrnskZIKbF6z7hofAOKzhCni1ZysuY0T2fX+sSNfve2+OhQgCBszbBjbB9hvBGp6b7Uo
 VFBl4+4Ga6AKSP+xu00jnqWio+mdJVZNsBxZY8AmlZCgaOgOt3ITBgl2RCeIKMHiPK/H
 V13RT9Ts2wJ9hE3iQIt+9SJb+WdAIHvtDQYauriyXRDdS9ypbMXgGjzroB6e9t7mgIrO
 kNMg==
X-Gm-Message-State: AOAM531gXyz2kHw7K3fkRAq0HOsY6ArSw5JCup23aAfKGaQ5lNd0Djso
 20asZyhMoLHMaKdgzN0Cn3LYF1lNYhIL3P0/
X-Google-Smtp-Source: ABdhPJwG3RjzIgyAH51KSKIWg4qsgdyIxuRhaKeR9db6RyIEG/6N0qrxBROgwed2usJt5U7DhzTIqg==
X-Received: by 2002:a05:6638:2191:: with SMTP id
 s17mr8985470jaj.67.1639653198144; 
 Thu, 16 Dec 2021 03:13:18 -0800 (PST)
Received: from aford-IdeaCentre-A730.lan
 ([2601:448:8400:9e8:fe22:1652:55f7:5197])
 by smtp.gmail.com with ESMTPSA id h1sm3090946iow.31.2021.12.16.03.13.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 16 Dec 2021 03:13:17 -0800 (PST)
From: Adam Ford <aford173@gmail.com>
To: linux-media@vger.kernel.org
Cc: abel.vesa@nxp.com, aford@beaconembedded.com,
 benjamin.gaignard@collabora.com, hverkuil-cisco@xs4all.nl,
 Lucas Stach <l.stach@pengutronix.de>, Adam Ford <aford173@gmail.com>,
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-staging@lists.linux.dev
Subject: [PATCH V2 02/10] dt-bindings: soc: add binding for i.MX8MQ VPU
 blk-ctrl
Date: Thu, 16 Dec 2021 05:12:47 -0600
Message-Id: <20211216111256.2362683-3-aford173@gmail.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20211216111256.2362683-1-aford173@gmail.com>
References: <20211216111256.2362683-1-aford173@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211216_031319_803232_B3CD1647 
X-CRM114-Status: GOOD (  11.92  )
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

diff --git a/Documentation/devicetree/bindings/soc/imx/fsl,imx8mq-vpu-blk-ctrl.yaml b/Documentation/devicetree/bindings/soc/imx/fsl,imx8mq-vpu-blk-ctrl.yaml
new file mode 100644
index 000000000000..7263ebedf09f
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
+      compatible = "fsl,imx8mq-vpu-blk-ctrl";
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
