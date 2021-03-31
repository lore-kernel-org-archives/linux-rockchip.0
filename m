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
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CEC2C433B4
	for <linux-rockchip@archiver.kernel.org>; Wed, 31 Mar 2021 18:49:09 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 4C66661007
	for <linux-rockchip@archiver.kernel.org>; Wed, 31 Mar 2021 18:49:09 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 4C66661007
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=A/oAuTcDEExsZLLwoaPsmatGHcjdasZfGCCoxDEFAUs=; b=EMeYchTSD1QigWqZ7X7mA+BP4
	fyE3AAj/f1S2R5alqUV0+WyenQOf7ontgmfnxiGXP6b7mrl58Lf7fZS5cItxuOPu+ryjBDsehBH9J
	DJrXFitolX8s0UinrBkffwAndr2TzcodGEajJROp4SIagQHJC9atmSIWbLjj83DDZEaOiOvQrIQZ5
	IsR5NcVMulHoLMoLJujLTk3gZqhUbObZiEqRyif4/k5N4rxBQUOZfOcQ6cxh3DaNH/qQZd/78Cp5l
	vwk1Pmqjw9mHsRkYRvexNSjvtGeaDhyJwiMC0MD4wxXMsB4K5zm+u4sr1FyBZRe/Ry3u99c/AsJ4B
	nCmqrSejw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lRftn-007JPY-Ul; Wed, 31 Mar 2021 18:49:04 +0000
Received: from mail-ed1-x52e.google.com ([2a00:1450:4864:20::52e])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lRfti-007JOv-N6
 for linux-rockchip@lists.infradead.org; Wed, 31 Mar 2021 18:49:00 +0000
Received: by mail-ed1-x52e.google.com with SMTP id x21so23488568eds.4
 for <linux-rockchip@lists.infradead.org>; Wed, 31 Mar 2021 11:48:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=zwsGjPkGaotb7ZsEBdVviG/LoubldrQow2Hx2iAHbwE=;
 b=nuTbQS44SiZ/ilMyK5E0QEy0/xYjy6Da3aA/jYRJHeXns1MWjmbuP3G3kFwtcS6kk+
 ngPimMGslCPgY4NLRQodpsGLmuNXL4Iu9gEtdgUQex7qUqp1dZfMJQnG+goX/6UK3V/S
 1amUfL7JKD4F399c9A/yylBSo0JcG08QPkP6bFBF6xqsOQZJm7gKmizUuD8jIm4k83C0
 EkSnn5GXFih+SET1BRwEsiD4Qw0RuWoV0raBIA5H91uo6rpLHQ/+IdMTZrSKFRoZ3LDc
 todXtoP+K8s4HhiPJw/vE6RGgocGhfwRZtGuM2sUurjksuW1yM+GTce/pGGFHoxONxIw
 VIxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=zwsGjPkGaotb7ZsEBdVviG/LoubldrQow2Hx2iAHbwE=;
 b=VQDI0VFi+hTae0cj4XSCgFi8CQHeLJHXeOD+vkpQX/7w+V/dge1tyUa4/nKHOC5igI
 NEh5oe/ENLZVz1b0J9cLC1Z1bSOg3HmPoJyXVYyKEa3VWYirCUxPROSCxdpYErwFsn50
 04XlyLUEcc9dH2g+Dc2jiCL3LR9KA+8cdBy6k2mdPMBp7GXDfomogQwqbIYS7z6FCKMu
 rB//jGeWaa1cKidvEYJ3/5lHhexOR4r9habRHnCLBhuUM4BbD8oeqjE7kb+0uDhAc+kS
 I9JWf06ahZ6Deqod92nVEEOpRJCYWAFVtK0hphLxhekz83xARRB1EqZ1DS1ToXwXbOsR
 Wc9g==
X-Gm-Message-State: AOAM531lhznVdaSlVTYm0sxb/QAmSVGfy/bZ1Fi3yXgmC3O2HjUWIaY4
 ma7WBsF1yzKnccifbMeZxYM/X0xbrQDImw==
X-Google-Smtp-Source: ABdhPJz5KvDr5IRskZlPAuATXnfkYJmXkZUFqq6t10+M/p+OV7P8pq9GVYOng7HEEYikFFGxE7jOdQ==
X-Received: by 2002:a05:6402:31e9:: with SMTP id
 dy9mr5625057edb.186.1617216538172; 
 Wed, 31 Mar 2021 11:48:58 -0700 (PDT)
Received: from arch-x1c3.. (cpc92308-cmbg19-2-0-cust99.5-4.cable.virginm.net.
 [82.24.248.100])
 by smtp.gmail.com with ESMTPSA id r19sm1604127ejr.55.2021.03.31.11.48.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 31 Mar 2021 11:48:57 -0700 (PDT)
From: Emil Velikov <emil.l.velikov@gmail.com>
To: kernel@collabora.com, Ezequiel Garcia <ezequiel@collabora.com>,
 Philipp Zabel <p.zabel@pengutronix.de>, Rob Herring <robh+dt@kernel.org>,
 devicetree@vger.kernel.org, linux-media@vger.kernel.org,
 linux-rockchip@lists.infradead.org
Cc: emil.l.velikov@gmail.com,
	Frank Rowand <frowand.list@gmail.com>
Subject: [PATCH v3.5 7/9] media: dt-bindings: Document SAMA5D4 VDEC bindings
Date: Wed, 31 Mar 2021 19:48:49 +0100
Message-Id: <20210331184849.231221-1-emil.l.velikov@gmail.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210331173520.184191-8-emil.l.velikov@gmail.com>
References: <20210331173520.184191-8-emil.l.velikov@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210331_194858_920355_4D000CBA 
X-CRM114-Status: GOOD (  11.71  )
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

v3.5
 - Drop interrupt/clock names (RobH)
---
 .../media/microchip,sama5d4-vdec.yaml         | 47 +++++++++++++++++++
 1 file changed, 47 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/media/microchip,sama5d4-vdec.yaml

diff --git a/Documentation/devicetree/bindings/media/microchip,sama5d4-vdec.yaml b/Documentation/devicetree/bindings/media/microchip,sama5d4-vdec.yaml
new file mode 100644
index 000000000000..4b77103ca913
--- /dev/null
+++ b/Documentation/devicetree/bindings/media/microchip,sama5d4-vdec.yaml
@@ -0,0 +1,47 @@
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
+  clocks:
+    maxItems: 1
+
+required:
+  - compatible
+  - reg
+  - interrupts
+  - clocks
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
+                clocks = <&pmc PMC_TYPE_PERIPHERAL 19>;
+        };
-- 
2.31.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
