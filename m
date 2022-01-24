Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6F6DAC433EF
	for <linux-rockchip@archiver.kernel.org>; Mon, 24 Jan 2022 02:32:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KJ2LBvJEbOpsMwVtcprm6UYH6FHFXhVlohowSC11r5E=; b=cf0puit7jhU4mx
	UaLLlOMHgH7bejhsmRmUG+6CqJvyCrmCKvO+AtlCDI9R3zhUWa7F/K10+uP3b33UhLDqtrMxrQ5bh
	QsXaoLKW7vwftRvu/2vEisSFpfhvzWVdO48mN/0Bru7DWo7kTNV2O08bAkZDt8yeB2n5wDmxojSmW
	vj8r6u+PlxyYxh9DHbWR+a79KIvMFDGSkcYCe43FX00QLXfNg5V/4tAkoGyo7cxkJA6sBjcrBdnbz
	sqePlHSfJ5/R1EUg8ZM12xYtjkniYaeC1fkDleHGCi3JFdJenDGNk4PTfxUrDf4RKbaKY3kDSbYHt
	C8Rzdf2uGybDRtikpN9w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nBp9j-002259-PH; Mon, 24 Jan 2022 02:32:31 +0000
Received: from mail-il1-x12e.google.com ([2607:f8b0:4864:20::12e])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nBp8r-0021Zf-7E; Mon, 24 Jan 2022 02:31:38 +0000
Received: by mail-il1-x12e.google.com with SMTP id r16so12614664ile.8;
 Sun, 23 Jan 2022 18:31:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=kTohMKJe6b+aS5nC8tVrcxj3aKt5LtNCUkDL666J3iI=;
 b=DWdz2Gmn/OxlLt+ZL3Oi79/aoh+vlkt8+Jy/lctVQYoiWxNUZVZgRQ1MzfGAwHR01d
 1vTFgTpTD5R0T5DwAZCKE1mqsqt75iKULaU8zzqEkFHVWLtebsS7aen2+BnIb17JAe98
 4Nn2m8HAs5Wwe4YoxBbl7XRkR4tPeMVziMTFjrU34ltHkEWbtxG3jtRki+FV/K/b+q1A
 v5RhWOHB3HWHQHl25g/+C8kjNeE8500H8facI6VdLXbhz1KK1qkKZrVCDm/BHGjnWgsq
 /Hb0+f7xh5L06bhlsUdxSGlxmHRnVlEN9PSgz5Xo8IsbxEwa7bsguC9O9rfGhgxrBo6W
 xhWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=kTohMKJe6b+aS5nC8tVrcxj3aKt5LtNCUkDL666J3iI=;
 b=6tMVBenHLmMCtEvdL19g4NpUGdH6Aq4OzczzFZWHdm59KWTAPesa83Ill4NQHd9ndw
 JnOCiAUfH6e3oVOBJRlrKTecYlXCo1pSkv7LRTaB1jfLprmYnJ5mQT5Uw4VbPZiyzac1
 bAXFjAd3ZjjGplrw9zXraO4D+CLTafsFEEv3mCoJt3MfXFW8fEJrQUOFMLXal/Sh9vEM
 v60PWN848DXvtz9fXYZwqvTFjCtU0l+Z1GxlnTBg2foPS6uJbJt3DknVv7AlaxqqOR17
 0uIZUhTN6TA5IxF7Y4BjluXC/P0d5tI9h/JkRO5u88PIbk8QtKmgSFPZxsCiijiQxuSz
 y5TQ==
X-Gm-Message-State: AOAM532EBHW605oq3a1K6extGS1skd+w7WQ/KRIyQ4faXXLFTBCPXvPh
 OFeQv8aMyzyXrchCSh7ybXo=
X-Google-Smtp-Source: ABdhPJzPT49xUHz+xvWATznYNwatDlpwDx1OQe+zH/Ir71zoyVxxIeEn1SMa80s7DZKRrXLs4pI2Qg==
X-Received: by 2002:a92:cda7:: with SMTP id g7mr7475640ild.53.1642991495924;
 Sun, 23 Jan 2022 18:31:35 -0800 (PST)
Received: from aford-IdeaCentre-A730.lan
 ([2601:448:8400:9e8:582d:ad0e:e5a6:94b6])
 by smtp.gmail.com with ESMTPSA id w4sm6625633ilq.56.2022.01.23.18.31.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 23 Jan 2022 18:31:35 -0800 (PST)
From: Adam Ford <aford173@gmail.com>
To: linux-media@vger.kernel.org
Cc: linux-arm-kernel@lists.infradead.org, shawnguo@kernel.org,
 aford@beaconembedded.com, Lucas Stach <l.stach@pengutronix.de>,
 Adam Ford <aford173@gmail.com>, Rob Herring <robh@kernel.org>,
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-staging@lists.linux.dev
Subject: [PATCH V3 02/10] dt-bindings: soc: add binding for i.MX8MQ VPU
 blk-ctrl
Date: Sun, 23 Jan 2022 20:31:16 -0600
Message-Id: <20220124023125.414794-3-aford173@gmail.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220124023125.414794-1-aford173@gmail.com>
References: <20220124023125.414794-1-aford173@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220123_183137_310651_DE2FD254 
X-CRM114-Status: GOOD (  12.35  )
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
Reviewed-by: Rob Herring <robh@kernel.org>

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
