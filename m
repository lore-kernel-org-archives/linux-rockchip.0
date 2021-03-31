Return-Path: <SRS0=G7C5=I5=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4EC05C433ED
	for <linux-rockchip@archiver.kernel.org>; Wed, 31 Mar 2021 17:35:55 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id CFDD96100A
	for <linux-rockchip@archiver.kernel.org>; Wed, 31 Mar 2021 17:35:54 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org CFDD96100A
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=gzRo3TcyBTJnoHs1MEsc0/zzBhGnsWhl26Gx8aNxkbs=; b=P+SQffXWu1Ja+zAeK020bleHZ
	JviKDNKz1Iihy7a8PU1SYOaV5gNuyHmEThgUTCh8Cs/12u0Yyq4lEiPl5Qvjx8oKqA5yKPI85+WEN
	Yh74daUbwMsq4uXL8pq4BHUw0sAIgubCi6qtdm54WKKq8fEarpUE1ufNMOD41lLpo5cg8XcunNUKf
	SBKXmXYDgcSQpF4/DQkggdFdr1eow/p9HLtyRxZS5MJvS3d+Qu0XV77P49ylaq7eWNsEXcBCJBW2j
	8AiEvyo6DDHDiGukJfe1365i1iKsHHs2o5yykUcEJTdumOOiyN5aeGrBc9JP1Jj4ppAbiQ8zomBG7
	siqM1PhXw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lRekv-007Ccl-I3; Wed, 31 Mar 2021 17:35:49 +0000
Received: from mail-wm1-x329.google.com ([2a00:1450:4864:20::329])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lReki-007CWK-9n
 for linux-rockchip@lists.infradead.org; Wed, 31 Mar 2021 17:35:39 +0000
Received: by mail-wm1-x329.google.com with SMTP id
 b2-20020a7bc2420000b029010be1081172so1552774wmj.1
 for <linux-rockchip@lists.infradead.org>; Wed, 31 Mar 2021 10:35:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=c4cZd+M5f+AeDALoemgsfPAehWaYVnvxwh4uGy+wkOo=;
 b=JIWKVXAkmAJBnseSZM1anFOSAccWbD3fSw/O9Ev/2uz4uizLMQA/T9QkRU2EpG+9VX
 VXCRPZ5IPV+veUsbuCFKFCu1Uqblcr3OazXphTbg+DsI3iMQHBHefjsAEVKMXMQnI6+2
 2XI50ZSXqajmM66UU4xIScEzJE4zuszwko7Or+vzHcawTSEP6S9wt8vi6Q2lskD9hiHL
 +Xo+aaZpO9BFXJIkdHUj8zp3w23NpLBBDfpMLCCnfKfBPMG6LWKxgxtmRZ8VG8exC1oV
 7om1yCf15jeCBBY3l7htmS+dnEY3haan6BQkybkeCKNwdN6GyeK2qHooS60X84/G6kF3
 IsEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=c4cZd+M5f+AeDALoemgsfPAehWaYVnvxwh4uGy+wkOo=;
 b=msUTJ2P2O4n0+6S5k5DEmRiZAnsXIW3BorGXymHNggDbVf7zdlB9GQ0tZ84oL8LjTB
 KLTVOLe63YJ5Xx9FU3s7Amo5s0JABuHb1fxsdCsrvJjdS/geFfSv40eBLeNAYZBHznmH
 rOJ4Gqr5/uD6anaCeFDDa+s3bl9PFs8m9E46lNBQb+v5n11n4/F0h1vmLdFzHEEGUpE+
 1+engxknB636J7nHwGAMsjsfKdIIRmLB/k8vyg4kLF7itg0KG4cA6K2J86g5VlLRSMop
 a0yym2kZDtI4NOvaO1qZ7n9uA7JNF4vmfyjhK9nyl6x4cWUqCcTOz25vxE7K/RRwN8O3
 g0/A==
X-Gm-Message-State: AOAM532wup+Pum3IUSdlngDn/RqN3BSqIeK7l112vOcgvTihynguS5x6
 TAC9veP9ljImJQs643mmZU8=
X-Google-Smtp-Source: ABdhPJxYoWD58r/igYEN0Jrd0MhzMiw4wIwiTk3CAQbIobPAkZQlgG/9klpTSWowgkhdlnIrgaIjJg==
X-Received: by 2002:a05:600c:2945:: with SMTP id
 n5mr4179454wmd.78.1617212135727; 
 Wed, 31 Mar 2021 10:35:35 -0700 (PDT)
Received: from arch-x1c3.. ([2a00:5f00:102:0:6e1d:cfb9:fb12:552d])
 by smtp.gmail.com with ESMTPSA id 12sm4714200wmw.43.2021.03.31.10.35.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 31 Mar 2021 10:35:35 -0700 (PDT)
From: Emil Velikov <emil.l.velikov@gmail.com>
To: kernel@collabora.com, Ezequiel Garcia <ezequiel@collabora.com>,
 Philipp Zabel <p.zabel@pengutronix.de>, Rob Herring <robh+dt@kernel.org>,
 devicetree@vger.kernel.org, linux-media@vger.kernel.org,
 linux-rockchip@lists.infradead.org
Cc: emil.l.velikov@gmail.com,
	Frank Rowand <frowand.list@gmail.com>
Subject: [PATCH v3 7/9] media: dt-bindings: Document SAMA5D4 VDEC bindings
Date: Wed, 31 Mar 2021 18:35:18 +0100
Message-Id: <20210331173520.184191-8-emil.l.velikov@gmail.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210331173520.184191-1-emil.l.velikov@gmail.com>
References: <20210331173520.184191-1-emil.l.velikov@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210331_183536_441023_9D0CFB09 
X-CRM114-Status: GOOD (  12.15  )
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

From: Emil Velikov <emil.velikov@collabora.com>

Add devicetree binding documentation for the Hantro G1/G2 VDEC on
the Microchip SAMAS5D4 SoC.

Cc: Rob Herring <robh+dt@kernel.org>
Cc: Frank Rowand <frowand.list@gmail.com>
Cc: devicetree@vger.kernel.org>
Acked-by: Nicolas Ferre <nicolas.ferre@microchip.com>
Signed-off-by: Emil Velikov <emil.velikov@collabora.com>
---
v2
 - Newly introduced
 - s/Atmel/Microchip/ (Nicolas)
 - Drop leading 0 in node name/address
---
 .../media/microchip,sama5d4-vdec.yaml         | 59 +++++++++++++++++++
 1 file changed, 59 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/media/microchip,sama5d4-vdec.yaml

diff --git a/Documentation/devicetree/bindings/media/microchip,sama5d4-vdec.yaml b/Documentation/devicetree/bindings/media/microchip,sama5d4-vdec.yaml
new file mode 100644
index 000000000000..9cb2c0295d54
--- /dev/null
+++ b/Documentation/devicetree/bindings/media/microchip,sama5d4-vdec.yaml
@@ -0,0 +1,59 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+
+%YAML 1.2
+---
+$id: "http://devicetree.org/schemas/media/microchip,sama5d4-vdec.yaml#"
+$schema: "http://devicetree.org/meta-schemas/core.yaml#"
+
+title: Hantro G1 VPU codec implemented on Microchip SAMA5D4 SoCs
+
+maintainers:
+  - Emil Velikov <emil.velikov@collabora.com>
+
+description:
+  Hantro G1 video decode accelerator present on Microchip SAMA5D4 SoCs.
+
+properties:
+  compatible:
+    const: microchip,sama5d4-vdec
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+  interrupt-names:
+    items:
+      - const: vdec
+
+  clocks:
+    maxItems: 1
+
+  clock-names:
+    items:
+      - const: vdec_clk
+
+required:
+  - compatible
+  - reg
+  - interrupts
+  - interrupt-names
+  - clocks
+  - clock-names
+
+additionalProperties: false
+
+examples:
+  - |
+        #include <dt-bindings/clock/at91.h>
+        #include <dt-bindings/interrupt-controller/irq.h>
+
+        vdec0: vdec@300000 {
+                compatible = "microchip,sama5d4-vdec";
+                reg = <0x00300000 0x100000>;
+                interrupts = <19 IRQ_TYPE_LEVEL_HIGH 4>;
+                interrupt-names = "vdec";
+                clocks = <&pmc PMC_TYPE_PERIPHERAL 19>;
+                clock-names = "vdec_clk";
+        };
-- 
2.31.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
