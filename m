Return-Path: <SRS0=TPHQ=NV=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DDAD9C432BE
	for <linux-rockchip@archiver.kernel.org>; Mon, 30 Aug 2021 18:09:42 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 9C53060FD9
	for <linux-rockchip@archiver.kernel.org>; Mon, 30 Aug 2021 18:09:42 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 9C53060FD9
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=A5QafziJjS+gZUmG4kau6rAEV5c7ffD1VDzoDK6icAo=; b=cagvA8doOhzZjK
	jDYufYyTDl0/zE65HuCfXPyHq8uIugSog20eyHFAv+H8cjG9f4HshgLF3FruMeTOqeAN6lB/qEg8H
	ZnLbB9Gt4JJyDGjQ1/Vk9zZrjT/IKLoQp85FpmbkecMK/xkayQvjnq7uRf2sM0Pu5TDClagcGFmbM
	H75SRaIXbelcFIX9cJkIR33JZ2cb6k5BKBe0dbFrowde8CKI9HvWfXT/coY2V+8pQKCg0dkjUsVuB
	nyPiRwLH2x4c1bF3RRtV0SnuhARI7BTWFrmhvdjwEXwo+XHNZRB2ej3nXqNBWQJURMXBVjm1eEXjK
	fjqEgHuZZzxkScKYJM1Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mKlj1-000Hsk-4p; Mon, 30 Aug 2021 18:09:39 +0000
Received: from mail-lj1-x231.google.com ([2a00:1450:4864:20::231])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mKlhn-000HOe-Iv; Mon, 30 Aug 2021 18:08:27 +0000
Received: by mail-lj1-x231.google.com with SMTP id f2so27451708ljn.1;
 Mon, 30 Aug 2021 11:08:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=hcseY+qtZ/IjcQloLwbPBGPptbdvikn0Z2Vb6xHjpXM=;
 b=Oq20zOGsyCYBDgFP6zD7gX08ZhhMJg4shGSTNPVd+klto7tShSkvOrWZXv1rLRGgp2
 odCHyScPnBCNe5c+hN9zjOvmLgreyOiwG4gxrANcVJfQKtpIyzQ3ugzDfAOiuZcmd00u
 q1DQI+y1WAozv8XlPsvvqW8Lbb+SsuyqMMtDZZ/7pZYJXCJw6tco/FdmAWiS5XPobwJT
 UTlvLdX761tVjtYZqeobEcsORFTsCWF8/uBKUeR1dxO2/7277FwFECAkpsCN8tzDMEpK
 xTuaqZiHR2xuZCxudjYAn9k5jb7oY6o9fV8RCjVclWqv1fgKw9cw6S5sDxZUfOYw9OJ4
 9gbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=hcseY+qtZ/IjcQloLwbPBGPptbdvikn0Z2Vb6xHjpXM=;
 b=uKXLUEcGCxw0ikIFwI/wF/kHaY3RupURaDkfllors4Uv4BvbC+cFGt9AdFG/S3uQe9
 oUqsIA2nhtMJmQfz3a2tXuKU/jHfUhCK/CplfWIy4VZmlrjFbQBPQbqpwNabXepaY2E1
 7Iee9OHP8ksSf3pHGbfs90nXlLvPaBHvMsl9xUihzRP6DnVBKxvObtnShsyAN8kyPDtX
 biJR5qzVs2PjHDgbbHSiKvbtZ4UEdu339g3cCIGyQQKbf5QCV/c4yZgOMZXpHkBrfujN
 z6DvxXLxV+ISkOHbJbEuCjdzSARNU16XFLfsmhlU7YRFCUBc2j3rM2R0VoFk7ATQfU1I
 wxuQ==
X-Gm-Message-State: AOAM533fmNVrET2RBrtF8u/KjSK6+t9InWbrxP6qZzn0VFQ9AuPEfPRj
 qMi7fvGtvSjrfO0LrbW5Jhu8AFMQzh04Aw==
X-Google-Smtp-Source: ABdhPJxphrh25Yv1GBTQg44hFGXBbULWXm9T/wKn3URGjgqT6xhOA4a0OBIPF3N3K4r2YReRITwA3g==
X-Received: by 2002:a2e:9852:: with SMTP id e18mr21208915ljj.173.1630346901454; 
 Mon, 30 Aug 2021 11:08:21 -0700 (PDT)
Received: from localhost (37-145-211-218.broadband.corbina.ru.
 [37.145.211.218])
 by smtp.gmail.com with ESMTPSA id r13sm1862328ljh.61.2021.08.30.11.08.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 30 Aug 2021 11:08:21 -0700 (PDT)
From: Mikhail Rudenko <mike.rudenko@gmail.com>
To: linux-phy@lists.infradead.org
Cc: linux-media@vger.kernel.org, Mikhail Rudenko <mike.rudenko@gmail.com>,
 Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Helen Koike <helen.koike@collabora.com>,
 Ezequiel Garcia <ezequiel@collabora.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v1 4/5] dt-bindings: phy: phy-rockchip-dphy-rx0: add support
 for tx1rx1 phy
Date: Mon, 30 Aug 2021 21:07:53 +0300
Message-Id: <20210830180758.251390-5-mike.rudenko@gmail.com>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20210830180758.251390-1-mike.rudenko@gmail.com>
References: <20210830180758.251390-1-mike.rudenko@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210830_110823_694161_B63DADEA 
X-CRM114-Status: GOOD (  11.65  )
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

RK3399 TX1RX1 D-PHY is not a child of GRF and uses reg, thus add
corresponding properties conditionally. It also requires DSI clock to
operate, so check for it. Since we now support both rx0 and tx1rx1,
rename the schema to rockchip-mipi-dphy-rx.yaml.

Signed-off-by: Mikhail Rudenko <mike.rudenko@gmail.com>
---
 ...hy-rx0.yaml => rockchip-mipi-dphy-rx.yaml} | 39 +++++++++++++++++--
 1 file changed, 35 insertions(+), 4 deletions(-)
 rename Documentation/devicetree/bindings/phy/{rockchip-mipi-dphy-rx0.yaml => rockchip-mipi-dphy-rx.yaml} (65%)

diff --git a/Documentation/devicetree/bindings/phy/rockchip-mipi-dphy-rx0.yaml b/Documentation/devicetree/bindings/phy/rockchip-mipi-dphy-rx.yaml
similarity index 65%
rename from Documentation/devicetree/bindings/phy/rockchip-mipi-dphy-rx0.yaml
rename to Documentation/devicetree/bindings/phy/rockchip-mipi-dphy-rx.yaml
index 7d888d358823..f42319448fc9 100644
--- a/Documentation/devicetree/bindings/phy/rockchip-mipi-dphy-rx0.yaml
+++ b/Documentation/devicetree/bindings/phy/rockchip-mipi-dphy-rx.yaml
@@ -1,10 +1,10 @@
 # SPDX-License-Identifier: (GPL-2.0+ OR MIT)
 %YAML 1.2
 ---
-$id: http://devicetree.org/schemas/phy/rockchip-mipi-dphy-rx0.yaml#
+$id: http://devicetree.org/schemas/phy/rockchip-mipi-dphy-rx.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Rockchip SoC MIPI RX0 D-PHY Device Tree Bindings
+title: Rockchip SoC MIPI RX0/TX1RX1 D-PHY Device Tree Bindings
 
 maintainers:
   - Helen Koike <helen.koike@collabora.com>
@@ -16,19 +16,28 @@ description: |
 
 properties:
   compatible:
-    const: rockchip,rk3399-mipi-dphy-rx0
+    enum:
+      - rockchip,rk3399-mipi-dphy-rx0
+      - rockchip,rk3399-mipi-dphy-tx1rx1
+
+  reg:
+    maxItems: 1
 
   clocks:
+    minItems: 3
     items:
       - description: MIPI D-PHY ref clock
-      - description: MIPI D-PHY RX0 cfg clock
+      - description: MIPI D-PHY RX0/TX1RX1 cfg clock
       - description: Video in/out general register file clock
+      - description: MIPI D-PHY DSI clock
 
   clock-names:
+    minItems: 3
     items:
       - const: dphy-ref
       - const: dphy-cfg
       - const: grf
+      - const: dsi
 
   '#phy-cells':
     const: 0
@@ -37,6 +46,12 @@ properties:
     description: Video in/out power domain.
     maxItems: 1
 
+  rockchip,grf:
+    $ref: /schemas/types.yaml#/definitions/phandle
+    description:
+      The phandle of the syscon node for the general register file
+      (GRF), required for TX1RX1 MIPI D-PHY on RK3399.
+
 required:
   - compatible
   - clocks
@@ -44,6 +59,22 @@ required:
   - '#phy-cells'
   - power-domains
 
+if:
+  properties:
+    compatible:
+      contains:
+          const: rockchip,rk3399-mipi-dphy-tx1rx1
+then:
+  required:
+    - reg
+    - rockchip,grf
+
+  properties:
+    clocks:
+      minItems: 4
+    clock-names:
+      minItems: 4
+
 additionalProperties: false
 
 examples:
-- 
2.33.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
