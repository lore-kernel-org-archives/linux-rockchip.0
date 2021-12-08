Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 029CEC433F5
	for <linux-rockchip@archiver.kernel.org>; Wed,  8 Dec 2021 22:51:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UXkVSgpT5qk+Mhl4n1+t5vbTyFgWLWb6h1vveIzn2wY=; b=v5f2utfcc5gZzI
	6PZ/wt2fhb63V4UDR+qpyatxHQxRbb4p95Kz34sd4+RSWEVfIBN4kCJcJK7SEbW0Vvidn5BDR01lQ
	F5rwYS7YVb7Qzgx6sdUO5MT9gZV2bP1Lky1Qn0yLDDKll75n1Rc9kyZL+o1vXfIJYuOBO9TucfhmV
	KPQZ1YkHDEMOdif5LykHYpQFC5L59Z6nVJF5D3H1HJ0Y+hwNz107dELAzKNSovWW9E062QMZ/3rMI
	urv9rmG48tgEgrjZiuGchSNQKDGhGe6iMWeyfaPtyUAZNTDVufQMfVBAbNWsdP/jz+yux5arzsZHj
	j2ODTacu9X3vR/I+QP5A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mv5mJ-00ERjh-I6; Wed, 08 Dec 2021 22:51:11 +0000
Received: from mail-io1-xd2b.google.com ([2607:f8b0:4864:20::d2b])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mv5lr-00ERPP-B9; Wed, 08 Dec 2021 22:50:44 +0000
Received: by mail-io1-xd2b.google.com with SMTP id p65so4609658iof.3;
 Wed, 08 Dec 2021 14:50:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=KH5Jne9WcYen8VLv63slDNPB/A+EenVaY1NFcEd7AL0=;
 b=L/0F/biiGi3tDtP9CI9j6864dUmuoHZqb5Q/X+GvYmx3Mm4HEg/p+c1Czc7Da9LgCJ
 UdWNefGwzk2WM3YfKmKSx6UqxjG7dDFvD9B9OTTcsRJZhQOnncisacdL8YqrNSg47xgD
 rQu2I+AaqWvqmWpKxrnpSn19UHABu0IYr4OEyxgaqWZEfbmhsu8TTIGd6UavLZfh6gmd
 +Xy69KNHKLECsBts3AJOTyR6p1u4SZEFJtKw13Nzcd2BVcUJU8mTMHx7t9KLoKT5E0KX
 +a5UArm9mpUYNwbK8NUrrre05LuU9GHXmYgFgcND4O9A9/pKvuYXyppMP0TLqs6d2IwD
 xncA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=KH5Jne9WcYen8VLv63slDNPB/A+EenVaY1NFcEd7AL0=;
 b=fVH+FOXh5rzyALztilMIhfLLoL1kuJ1LZHvhv51w+WLMMpVu04wv6zajwYuTI6ZTRw
 sJ/fREsvsXubjqJWDUwRYZGZRKqjfEkkpIrq5ki1IXMUi4nX/JVy7hwheN5Aevnl0Iyt
 Q9gOz+skBIRvtlrJT3Do3Pzd2uinklewc6rJZV9KFcAyZkqZs1nCsjfdHxF0pm4Mil88
 RzF8Vx5829DejucG32syYmFhezlfBWMu4BnENcQi/a05DHWoK0VrF2a1+VF+cqt6P1cG
 V2dwOMrkPnHJXW/kDHDrS+cNa8To0Hit2/OXcIHO/39PPeSg0/X4mpkn9hTHVpztnguk
 2bSA==
X-Gm-Message-State: AOAM530+F5X6C3LV/7dYS2VbUBg/F15MvwsbNpaB4dHEAdspvvzDaPgm
 Osvcd7eh1LPb8AP0gSz5XQI=
X-Google-Smtp-Source: ABdhPJycuHd5Hezj4qLt3M/C9skFUUVnANcKtzFop7/ugQMyK2ceqeFxYBtgBpPkudeWLp6OnqmLcg==
X-Received: by 2002:a05:6638:140c:: with SMTP id
 k12mr3463194jad.89.1639003842466; 
 Wed, 08 Dec 2021 14:50:42 -0800 (PST)
Received: from aford-IdeaCentre-A730.lan
 ([2601:448:8400:9e8:269a:1aa2:f1d9:8dbb])
 by smtp.gmail.com with ESMTPSA id t6sm2378751ioi.51.2021.12.08.14.50.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 08 Dec 2021 14:50:42 -0800 (PST)
From: Adam Ford <aford173@gmail.com>
To: linux-media@vger.kernel.org
Cc: benjamin.gaignard@collabora.com, cphealy@gmail.com,
 aford@beaconembedded.com, nicolas@ndufresne.ca,
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
Subject: [PATCH 02/10] dt-bindings: soc: add binding for i.MX8MQ VPU blk-ctrl
Date: Wed,  8 Dec 2021 16:50:21 -0600
Message-Id: <20211208225030.2018923-3-aford173@gmail.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20211208225030.2018923-1-aford173@gmail.com>
References: <20211208225030.2018923-1-aford173@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211208_145043_436276_618AB9B8 
X-CRM114-Status: GOOD (  14.44  )
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
