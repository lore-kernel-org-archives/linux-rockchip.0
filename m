Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 44EE5C433F5
	for <linux-rockchip@archiver.kernel.org>; Tue,  7 Dec 2021 01:56:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ndwRKiMGBGWfmV9P5D5JmfT4CpxXqNO0nooUVguzR/w=; b=vYIUXYAw6jPknk
	/1eW+/8JJXaql5VXyJrDfMsH9MDtaxl4tlsFc8qT+Dncdlh/6aZEK/4i+SoFBZUFc0CUJpiYRsxgw
	nNuWV3gDeoVNwO0atyZv2p31ZCBww2sVY/JQnQFU3IYHM8pOvQF5uV3xOtOhx3Pw9mkmrEVn1L94f
	pKsB7U1Iv9I9pIOHE/G63EHrEw98Qj/xQuIYzwl8ppW/Ovilakg+HJfpH67DeLKBNixK5MnUkYFL4
	1dywXN+6UJBgmDfQXbBy7ERZDC9T1Bv+xmAeG/swvH6YUK2PrbatQSywALhacELLWx6TfICSU7KRQ
	hYKc7Opp+qKi0mH4ULGg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1muPi9-006ew8-SC; Tue, 07 Dec 2021 01:56:05 +0000
Received: from mail-io1-xd29.google.com ([2607:f8b0:4864:20::d29])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1muPhA-006eFr-LF; Tue, 07 Dec 2021 01:55:07 +0000
Received: by mail-io1-xd29.google.com with SMTP id 14so15191008ioe.2;
 Mon, 06 Dec 2021 17:55:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=OBZjeCPmHnZFjVhdtwcLx3XOD2NbI/pF57Ruee40Yio=;
 b=KLQ5aMmOC+9unBsOBKjjCzsUNrpplZqFcgJUvm18x87kewfp00c8AgqzDKMkzrt49D
 0V1M90b1iNqn+zWrMlxJemyvDGbPRTm909quzmWz4Hu8dx0uF9HaKIp2TVxtAdj1bbKW
 j/RMW7zBrpuxwsEg79xOm38ty8Sq84tPV/ZjqcEoh54KXN/17PlbLbVrr1ly1zaVxxFg
 9dd6A3dby4Z3Nc6I4rY7sJxUZ6Jjy/DK2GGA+NG2BuF4+nH5aZsKyTYNjWLlSpNzteug
 nqI6+yeV+2elvO7RlEdcp8bixcrjQaPGyTzpjg/bhqeMrtNt2HiDOpAWP0s8WTUG/7cm
 mwZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=OBZjeCPmHnZFjVhdtwcLx3XOD2NbI/pF57Ruee40Yio=;
 b=P/Y80ONlcIQvnC/cYM5zAmjN7+WHOLx5HuZDjxdzLWwg05Ogb9Gx6eNOXfgd3fYrmQ
 ua/3+iWRhKHylkzCnrKRHN5C8dbb4wUENTx4UgIqnQKQfzpyKPSvZJj3+gGpYpjbH+mo
 IgueS8HUreBEiy5AJGRhMMDMd7l+oddL1I0PXJRmN+rTzdjYf2f907GS3NSDgNsNdIcz
 mS/zV2uuo3KMj+LqHTnelpXOFFLbiXSTRBNAQoM5TsT9ILX5ByR2Cw4VEU3ahm0+CR/e
 mgOMr3UzomQc3Sk8gQ41KXrSkLCDaebeZmdzwRk7hG3X71V/BJDNcx4J7dq8+JDclUkC
 +fkA==
X-Gm-Message-State: AOAM533/T33e3vkkEMRffSb0lwoy6X+TxPmPcORiM8bf9TQAREuaN+9x
 BqhzJ3wss3wDv7z4aRJR+HI=
X-Google-Smtp-Source: ABdhPJz94A+DkmEaZKf1jTIXk5p+7S34tRMHbkRy5CAfMQZcvauDQP51/GSAL/IJ6SRq4IIH6mt6Vg==
X-Received: by 2002:a05:6602:2d8c:: with SMTP id
 k12mr37987393iow.49.1638842103118; 
 Mon, 06 Dec 2021 17:55:03 -0800 (PST)
Received: from aford-IdeaCentre-A730.lan
 ([2601:448:8400:9e8:6db8:c9e4:6f6d:f38e])
 by smtp.gmail.com with ESMTPSA id j21sm8623639ila.6.2021.12.06.17.55.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 06 Dec 2021 17:55:02 -0800 (PST)
From: Adam Ford <aford173@gmail.com>
To: linux-media@vger.kernel.org
Cc: cphealy@gmail.com, benjamin.gaignard@collabora.com, hverkuil@xs4all.nl,
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
Subject: [RFC V2 2/6] dt-bindings: soc: add binding for i.MX8MQ VPU blk-ctrl
Date: Mon,  6 Dec 2021 19:54:41 -0600
Message-Id: <20211207015446.1250854-3-aford173@gmail.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20211207015446.1250854-1-aford173@gmail.com>
References: <20211207015446.1250854-1-aford173@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211206_175504_793056_460237BB 
X-CRM114-Status: GOOD (  11.55  )
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
