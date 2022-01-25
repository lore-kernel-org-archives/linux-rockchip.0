Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 572EEC433EF
	for <linux-rockchip@archiver.kernel.org>; Tue, 25 Jan 2022 17:19:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tXWetcvVtPJmL+kwv0Tr7UlrG/nTITkbVkGKUKKVpmc=; b=dnXrHB3mWt1Rzv
	K/XDKaJQ7eB4UFNE4nHgvuZbgBHgcVOcNZb0ZEYqc3y+FWGw2zC++UbZ7SpDbQkjSot5BsRGw/2IY
	HaoBSzooDUDWobb6whEVPCLrUZQwMy0qTH1QSyOiZIlPKCeg8I7gUFfIpamWyHFXWCy9vCPIf1WMb
	rz6wmjUToJRxN27QtC70v2NCMdFTtiEHf9FJzIFB/wUuDNk2CtxTBT/WiKJeIrE/yUKcTcXIT3qTq
	SUF7LSa9GHiad6srAZ8RdjWCXOCu2cOYe6zu2/nbF1+1RwsRjrDvJtIuVeCfriOZKg4ZsRAV9f9ea
	VoPKVTjMaBglquFWV36Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nCPTJ-008wOR-I7; Tue, 25 Jan 2022 17:19:09 +0000
Received: from mail-il1-x135.google.com ([2607:f8b0:4864:20::135])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nCPMy-008tLE-7I; Tue, 25 Jan 2022 17:12:38 +0000
Received: by mail-il1-x135.google.com with SMTP id z7so2542979ilb.6;
 Tue, 25 Jan 2022 09:12:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=VL1oLU+nTr4269UjGhYalkPJi4/LnnBSABpNJRBabCw=;
 b=l7oWtOC2lQsxWZwdPi/4kZhtW16WW+MYL52LOVnu74eC+oLmszWAuu5Z4ZWtc8mcE4
 D3MILqd0539d+Kjl4cxirXE0soN4zpDWIft/CvC6D2xKXBq5g288rGu42kVAPGt5TLMa
 IlOJPkzX3vJLUGDFH+AXploZjDxqTzS0d52op0UYBMq3SCnhksXlemBAPunDeDfeWGcA
 t2l3cxzd1GOrE/848+seR4NfiKSzzGML0sAgjWcK7LACOEpoXHjpBvFYMYaVglPDvuVJ
 rqWCiSboSi9wE+DizWq9T/615aQKclgSR//3VdtA6hL4J/ahElSDU+BtiU+XZQG0Vlxq
 gVJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=VL1oLU+nTr4269UjGhYalkPJi4/LnnBSABpNJRBabCw=;
 b=WGQESwxPvbWTlHU2ojdxVAVgOykOK4VIzvprs9jzqveTnyVjRKQ1bvqfiSfCA1Zu1M
 O/78MGE7pl2PXseILtZ6RJVdNBVsa8OrHgaYpi9XusgdZekdkqyuSx0mlxpa2ulMm3Il
 V2oYicJkaLgqlZ2R4M0ZXt6RCiGm7ldfD/s00W3fr6GsxF2olw07Z5SYdhvThGv9iVEN
 gl9vwssgx0UZ0CaKzA4XVVLR+WiQu2anTvzBXK8gG0Eqnm/Dhf3QPdNCbl55AMWNlKDW
 VbqnLTng+MqvhIPF7ieu+GI5ZYqOsa6DLlOGMswonfBoShdjCRCb5kqa4KFd19lqHRMY
 uMFA==
X-Gm-Message-State: AOAM532OsM7tduX5wSeMAX16ss6aH0YGenhBdGG4PYGI/Atd/qorToT8
 VtgrKAtMQfDLMjYDczL8ndU=
X-Google-Smtp-Source: ABdhPJwvKjLEZ3f3m020/quWIOzkOb5VdaNjmq4smclCObm5iKxqt7CFSc6MAD+iFzhuKSDCck+XXw==
X-Received: by 2002:a05:6e02:148d:: with SMTP id
 n13mr12269749ilk.16.1643130754734; 
 Tue, 25 Jan 2022 09:12:34 -0800 (PST)
Received: from aford-IdeaCentre-A730.lan
 ([2601:448:8400:9e8:6592:b6fe:71b1:9f4c])
 by smtp.gmail.com with ESMTPSA id m14sm8090291iov.0.2022.01.25.09.12.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 25 Jan 2022 09:12:34 -0800 (PST)
From: Adam Ford <aford173@gmail.com>
To: linux-media@vger.kernel.org
Cc: aford@beaconembedded.com, cphealy@gmail.com,
 Adam Ford <aford173@gmail.com>, Rob Herring <robh@kernel.org>,
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Lucas Stach <l.stach@pengutronix.de>, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-staging@lists.linux.dev
Subject: [PATCH V4 05/11] dt-bindings: media: nxp,
 imx8mq-vpu: Split G1 and G2 nodes
Date: Tue, 25 Jan 2022 11:11:22 -0600
Message-Id: <20220125171129.472775-6-aford173@gmail.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220125171129.472775-1-aford173@gmail.com>
References: <20220125171129.472775-1-aford173@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220125_091236_335714_836845C0 
X-CRM114-Status: GOOD (  11.01  )
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

The G1 and G2 are independent and separate decoder blocks
that are enabled by the vpu-blk-ctrl power-domain controller,
which now has a proper driver.

Because these blocks only share the power-domain, and can be
independently fused out, update the bindings to support separate
nodes for the G1 and G2 decoders with vpu-blk-ctrl power-domain
support.

The new DT + old kernel isn't a supported configuration.

Signed-off-by: Adam Ford <aford173@gmail.com>
Reviewed-by: Rob Herring <robh@kernel.org>
Reviewed-by: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>

diff --git a/Documentation/devicetree/bindings/media/nxp,imx8mq-vpu.yaml b/Documentation/devicetree/bindings/media/nxp,imx8mq-vpu.yaml
index 762be3f96ce9..9c28d562112b 100644
--- a/Documentation/devicetree/bindings/media/nxp,imx8mq-vpu.yaml
+++ b/Documentation/devicetree/bindings/media/nxp,imx8mq-vpu.yaml
@@ -15,33 +15,20 @@ description:
 
 properties:
   compatible:
-    const: nxp,imx8mq-vpu
+    oneOf:
+      - const: nxp,imx8mq-vpu
+        deprecated: true
+      - const: nxp,imx8mq-vpu-g1
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
-
-  interrupt-names:
-    items:
-      - const: g1
-      - const: g2
+    maxItems: 1
 
   clocks:
-    maxItems: 3
-
-  clock-names:
-    items:
-      - const: g1
-      - const: g2
-      - const: bus
+    maxItems: 1
 
   power-domains:
     maxItems: 1
@@ -49,31 +36,33 @@ properties:
 required:
   - compatible
   - reg
-  - reg-names
   - interrupts
-  - interrupt-names
   - clocks
-  - clock-names
 
 additionalProperties: false
 
 examples:
   - |
         #include <dt-bindings/clock/imx8mq-clock.h>
+        #include <dt-bindings/power/imx8mq-power.h>
+        #include <dt-bindings/interrupt-controller/arm-gic.h>
+
+        vpu_g1: video-codec@38300000 {
+                compatible = "nxp,imx8mq-vpu-g1";
+                reg = <0x38300000 0x10000>;
+                interrupts = <GIC_SPI 7 IRQ_TYPE_LEVEL_HIGH>;
+                clocks = <&clk IMX8MQ_CLK_VPU_G1_ROOT>;
+                power-domains = <&vpu_blk_ctrl IMX8MQ_VPUBLK_PD_G1>;
+        };
+  - |
+        #include <dt-bindings/clock/imx8mq-clock.h>
+        #include <dt-bindings/power/imx8mq-power.h>
         #include <dt-bindings/interrupt-controller/arm-gic.h>
 
-        vpu: video-codec@38300000 {
-                compatible = "nxp,imx8mq-vpu";
-                reg = <0x38300000 0x10000>,
-                      <0x38310000 0x10000>,
-                      <0x38320000 0x10000>;
-                reg-names = "g1", "g2", "ctrl";
-                interrupts = <GIC_SPI 7 IRQ_TYPE_LEVEL_HIGH>,
-                             <GIC_SPI 8 IRQ_TYPE_LEVEL_HIGH>;
-                interrupt-names = "g1", "g2";
-                clocks = <&clk IMX8MQ_CLK_VPU_G1_ROOT>,
-                         <&clk IMX8MQ_CLK_VPU_G2_ROOT>,
-                         <&clk IMX8MQ_CLK_VPU_DEC_ROOT>;
-                clock-names = "g1", "g2", "bus";
-                power-domains = <&pgc_vpu>;
+        vpu_g2: video-codec@38300000 {
+                compatible = "nxp,imx8mq-vpu-g2";
+                reg = <0x38310000 0x10000>;
+                interrupts = <GIC_SPI 8 IRQ_TYPE_LEVEL_HIGH>;
+                clocks = <&clk IMX8MQ_CLK_VPU_G2_ROOT>;
+                power-domains = <&vpu_blk_ctrl IMX8MQ_VPUBLK_PD_G2>;
         };
-- 
2.32.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
