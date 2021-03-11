Return-Path: <SRS0=iGaN=IJ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E80AC433E0
	for <linux-rockchip@archiver.kernel.org>; Thu, 11 Mar 2021 15:41:25 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 1DF2164FB8
	for <linux-rockchip@archiver.kernel.org>; Thu, 11 Mar 2021 15:41:25 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 1DF2164FB8
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=lMXHRniGwq4a92jFaFWzFaGi+27hdD+/vysNNzENhlk=; b=LXS9knpHGon5J+Eq40zbdvLAL
	1FPPduoKfMHgCiuKp34P5LiVxijpsXCwpb1DIeZTSdGFTF5q8up1h3hJJ/06cYvsi95HsEVGjiXlp
	nw86jyScIU4ZsqGR5z9nO8zdmmd+bUuRgMjKtxCOaXj1ShAD2eTbQfHZygWBbU90VbWhsCZKa5Fbx
	clXZ1rXR3jqrWpE800+rtTmaXuug2ov8g1pmWCaWPOW+ZWMq7xvcIy9hlAAWS8XrVQEl1v2rUUSgk
	VEJZQ5Bjhy1M2MnQJn/z1/NdG733jJ0XpJZWpeBGY2B0WD3b/RSqgmuhJu73Fv1ua9gyA1+/882E0
	fv9cuWr3A==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lKNR9-009UHt-6D; Thu, 11 Mar 2021 15:41:19 +0000
Received: from mail-wm1-x32b.google.com ([2a00:1450:4864:20::32b])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lKNQz-009UDT-M9
 for linux-rockchip@lists.infradead.org; Thu, 11 Mar 2021 15:41:13 +0000
Received: by mail-wm1-x32b.google.com with SMTP id
 r10-20020a05600c35cab029010c946c95easo13054107wmq.4
 for <linux-rockchip@lists.infradead.org>; Thu, 11 Mar 2021 07:41:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=JAdbjBxh26QNVrsqvgxFW6fvmPfYqMNJOexCayrJvA0=;
 b=uuybCdyj+rOshkXU3o4qNqYMwBcqtV3lj/6PDOQyuRHZ48YZTr9k5oCCOqjBU/c6Z1
 5xgWkzqgYAfI0mJmUDkpKlv/8V4Kc9VsJ1woX20xOOT7hjIs1booPCi8Ub1ksYQm7QB3
 kZft9+79hFe7g0xMDEUKgek+9VHc4l8x26FL0di3BcAbsWrHFL/KdwCj1LgtFrtr5O4e
 0uf7pLSUfedXmF/eifRJB4qEp2aibPOLJ/RMf/KVP2vicuUcny04om5qBWOqitXPbLJ+
 VoIK8gg1NdeLdN7QlvXAiczLFqkNbx75NNwDszOJdOfBXYm3IOW6EfdDJm/n4tDVjMOG
 tu2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=JAdbjBxh26QNVrsqvgxFW6fvmPfYqMNJOexCayrJvA0=;
 b=ppOEQElmmIoq/QzDOBw9SqZpvrTzWQatHmREEiUtwyxXoeiF4LF9/+/uF/KFfKsbs4
 QlbHUelXGE1x5UNy5Rlzv1wGLaHumEt4ALZnbDzWhNXzKQIv6T0/3YX9ltkHaWppssce
 xzrs1Jv3CbTYSUVDngJ8HN48SaSotokKQ0uRG9xuiXTLyWO/L8Nhiw4hspenofzLeGZ5
 AsaQDiLTp1UWYzSn1K44naIEY1uLa+5Ks3iJbX4W1YwbFxi0crLB6/aI0sWjM5pwGVUg
 yAoOgUTutKqW1MfusVazqxyGOwzGYEN14NjWg+whS6F/iHLTMHZHCSTYfuIbdUcYHRi0
 8bZg==
X-Gm-Message-State: AOAM533jakmHOgXZO0U6z8+Wm72+SpbZmCxW4IOZEFtENVEk6+dl6NeG
 Hnnfch8X5LoYtWK5XN1VxkM=
X-Google-Smtp-Source: ABdhPJx5nbz+p6EpPXuNactxgx8F8NdBvmhgFLIsXilxrXXL05ZdvxkShyrzRVGKm1nAUScJBhLF2Q==
X-Received: by 2002:a1c:6605:: with SMTP id a5mr9029615wmc.85.1615477269074;
 Thu, 11 Mar 2021 07:41:09 -0800 (PST)
Received: from arch-x1c3.. ([2a00:5f00:102:0:b16d:9752:8f38:7d6b])
 by smtp.gmail.com with ESMTPSA id a17sm4008547wmj.9.2021.03.11.07.41.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 11 Mar 2021 07:41:08 -0800 (PST)
From: Emil Velikov <emil.l.velikov@gmail.com>
To: Ezequiel Garcia <ezequiel@collabora.com>,
 Philipp Zabel <p.zabel@pengutronix.de>, linux-media@vger.kernel.org,
 linux-rockchip@lists.infradead.org,
 Nicolas Ferre <nicolas.ferre@microchip.com>
Cc: emil.l.velikov@gmail.com, Rob Herring <robh+dt@kernel.org>,
 Frank Rowand <frowand.list@gmail.com>, devicetree@vger.kernel.org
Subject: [PATCH v2 06/10] media: dt-bindings: Document SAMA5D4 VDEC bindings
Date: Thu, 11 Mar 2021 15:40:51 +0000
Message-Id: <20210311154055.3496076-7-emil.l.velikov@gmail.com>
X-Mailer: git-send-email 2.30.1
In-Reply-To: <20210311154055.3496076-1-emil.l.velikov@gmail.com>
References: <20210311154055.3496076-1-emil.l.velikov@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210311_154111_025544_79D438A9 
X-CRM114-Status: GOOD (  12.37  )
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
2.30.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
