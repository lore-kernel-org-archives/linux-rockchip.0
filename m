Return-Path: <SRS0=fCHL=I6=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA213C433ED
	for <linux-rockchip@archiver.kernel.org>; Thu,  1 Apr 2021 14:44:10 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 3988A6135C
	for <linux-rockchip@archiver.kernel.org>; Thu,  1 Apr 2021 14:44:10 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 3988A6135C
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=A/oAuTcDEExsZLLwoaPsmatGHcjdasZfGCCoxDEFAUs=; b=ltcpQu5dONWEjrcd+hqjX55Ya
	gHIUpvWPdP5Y1kqgpTICHwthxDd6kSLVnV/EqC+xe74FvXSGST00SLG6ixx+RmeEuTg8aifhoWaGa
	cGDO1Ji10ICgIR28klyG8YMX+xlkwaxg5QclLecb6vqeMty/xerrZeH2FQj4Q/cO9oSXqJD1BMSLC
	XM+kTu7uR8NOlGp/rk/wvSk5mhA0BdF3aeYZF7ZbBpLyoJqIVKtElrqyZUlD8+p8oV5ch9LIT3Duw
	ta03z9/mhh47+nhuX9Z2uZ7WpWOW788id1mXKIfFnS1v6a0x8/fbBlHYKkLFEth1eQFgpqwty4M0o
	hbKajA1/A==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lRyYG-009sk2-7C; Thu, 01 Apr 2021 14:44:04 +0000
Received: from mail-ed1-x529.google.com ([2a00:1450:4864:20::529])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lRyY5-009sbW-9G
 for linux-rockchip@lists.infradead.org; Thu, 01 Apr 2021 14:43:55 +0000
Received: by mail-ed1-x529.google.com with SMTP id b16so2246074eds.7
 for <linux-rockchip@lists.infradead.org>; Thu, 01 Apr 2021 07:43:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=zwsGjPkGaotb7ZsEBdVviG/LoubldrQow2Hx2iAHbwE=;
 b=YK9lS4PpBN7LGEGrmVF8+znEyHLBPKMqx2R/SKS/iwLgZ5fXdYKxWw6+C5sTRtIcDn
 3zXqJdCda3Lu9rx5y9nvU9/uV3eNxIayG5kPoh6NnMCf/BR/ayCBbvZ/y3Apm0Mbi+nL
 cN9/DhcY6TjrCgSutBEjpzMGFYDXOUAdgJOJ2IefDsRlpFFkp4HjIMBljIa5NJ3L+zpY
 Y342/+xjQ0Rn/LsQqvL5jkEOC4bUGlAZFaDBv5VmUkCEdVfy6OqlfhPnJLVh4//WGfxT
 NF9WGSLJ+UNUjB1UTx4sCD1AEx6z3SO/Zw7FP6SxcB4iaI6uExqR8Lcb1yFGLjC3v3MU
 3iJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=zwsGjPkGaotb7ZsEBdVviG/LoubldrQow2Hx2iAHbwE=;
 b=gT7twUm2AYUTlw+NLVxGTOfxbwN5Jbd+RkaR5KjRNjSjWc9oRbL+jM92GjuCEWcjQ9
 Rj782sO3k1jjEeLvS8wqJZvLzaoNnSJ8XuGOoJOGtLpKUlVZ1qswg4ulcsD6tuU0gpjD
 2fvmBRCZL3rBkfphlEyBpWhZMjWlnA/fPyG0td81QPkroQeNBPPDL2FE0RxAizlsLco/
 lkUsayJ4TQkgU+Vfl2jZ5kiZ0w3DLANqxtpreZXwcD0vnizX0L9So9heSeDwB85odlA7
 NGkgsaD2rmozG74e8zSn25yTsCYfU0Swa9HjG6f382+3vcIrhds7GJfn1KRcxsOPRoFe
 O3BA==
X-Gm-Message-State: AOAM533q3MaEdBV+EvM5c2pYjOqPMlmcmhNJ7n+9px6ByZEpxxayUIG+
 4BrK6rcm7pY6cykpIxg7ur8=
X-Google-Smtp-Source: ABdhPJwBbLjtIbBVsJtEeHpWiTusAcMdb8YSew0NSa1mi5jvshz5skGyCYGE4G/achcpGOpDVB6+HQ==
X-Received: by 2002:a05:6402:31e9:: with SMTP id
 dy9mr10423951edb.186.1617288232742; 
 Thu, 01 Apr 2021 07:43:52 -0700 (PDT)
Received: from arch-x1c3.. (cpc92308-cmbg19-2-0-cust99.5-4.cable.virginm.net.
 [82.24.248.100])
 by smtp.gmail.com with ESMTPSA id nd36sm2854950ejc.21.2021.04.01.07.43.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 01 Apr 2021 07:43:52 -0700 (PDT)
From: Emil Velikov <emil.l.velikov@gmail.com>
To: kernel@collabora.com, Ezequiel Garcia <ezequiel@collabora.com>,
 Philipp Zabel <p.zabel@pengutronix.de>, Rob Herring <robh+dt@kernel.org>,
 devicetree@vger.kernel.org, linux-media@vger.kernel.org,
 linux-rockchip@lists.infradead.org
Cc: emil.l.velikov@gmail.com,
	Frank Rowand <frowand.list@gmail.com>
Subject: [PATCH v4 7/9] media: dt-bindings: Document SAMA5D4 VDEC bindings
Date: Thu,  1 Apr 2021 15:43:34 +0100
Message-Id: <20210401144336.2495479-8-emil.l.velikov@gmail.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210401144336.2495479-1-emil.l.velikov@gmail.com>
References: <20210401144336.2495479-1-emil.l.velikov@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210401_154353_448078_81A4F611 
X-CRM114-Status: GOOD (  12.07  )
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
