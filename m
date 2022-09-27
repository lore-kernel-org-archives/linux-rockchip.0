Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3FE5FC6FA83
	for <linux-rockchip@archiver.kernel.org>; Tue, 27 Sep 2022 08:07:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Q+rpQaWzxXOp93QoIPAGM8ylDgKkzFCwfd4MAcNbrnA=; b=f3LMqGHM5TcrRb
	UkNH0JXUrhSs5t2cTGZI8XJY/hdr3oGJnqwz9JqMrr4zY9P05MFQkE0FukiNehdEw+4d7Khm6iYp1
	yv8y0yWFiqLf1fLPLi4b+nCZPRHOpgh1H5A5txI4+ADRBl/9T3gIfXlPtu5EaDnAYv8CixQF5jshx
	byxHrnYlrYvhqFDH5PW5Y+grY0VhCu2p8hjBq6Q4qpPCfKIFX2KXwSe/+TbIrV3XCPn6Ldl/0e5CV
	xZulH+bKlr4rotb3s+HQ6OBibUSXUldwvgXHMZ2uIDbddQCP6nHKozWlDX+DAVQz3wRV+jwmB3vke
	ASfZwe6VIitsDRf9GLSQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1od5d0-0090ld-1s; Tue, 27 Sep 2022 08:07:42 +0000
Received: from mail-wr1-x42b.google.com ([2a00:1450:4864:20::42b])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1od5Wg-008xrq-Fx
	for linux-rockchip@lists.infradead.org; Tue, 27 Sep 2022 08:01:14 +0000
Received: by mail-wr1-x42b.google.com with SMTP id cc5so13709761wrb.6
        for <linux-rockchip@lists.infradead.org>; Tue, 27 Sep 2022 01:01:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
        bh=5mdo6NGLlB92HNx1YdBVXQY1nz6YTKAI7LSgWV6iJpg=;
        b=TSMUqXpBGA6O740Vbe76KnkTC6Rzlba5NxIu8AhZkfGCcFSJjaFFBtesClkcZA+GXr
         d86YrtgrRC7mOqx+CXyq29Bl5ZNd13wRycLSj+hmLJLqApJpA86x0NZ46MZGXkETE13V
         GRTEp4Z3u1MKMPRXmjoo9rcz7lC1fMCTe2cnLgEjjuQCFqQTB3UPygH+Fpd8f/rvrP8E
         T8gQeE6GHf7rfXIiNZUX+ZFYjAACzbEqsamzVviFOrVBJrmBKPz8KvXpPSth3xZeB0VB
         QJH3xwSiGZt9nG3yXTqpIFwEeZQ1kz1c/GkNTFSheME1zrNrbJN1IxKCCqIVnqo2HuVW
         8Dfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=5mdo6NGLlB92HNx1YdBVXQY1nz6YTKAI7LSgWV6iJpg=;
        b=kHyoNTVf3vuHnaHhobCA62GAYR6DekmTVylXp94i7EzoYpZ21GJIkIaomu0RRZAAJ8
         42H2KJAE+dVFiD7ZmV/JQdETuoEQcfu4cFlFiWqaXxWVYY91eplcexPeH3TOQJx+KYAf
         6+0a1tXAaBlv9gRLTwQ63IetNuSqKRENzSdOqqdB0oaMznpfzXfIbuZUXO0Dr5CfQB9/
         g6cEzGS+REpIxI2mEMv9qowJQxBv5/TE4FvxGVcOYQ5UVG+6BnUE/kSei2Jqw+Ca9R6c
         8760Ez6os2qTjwDjhjONZtA+G8SpGemnYE5R5+3ccTliDb7c9jH74sUGHwd0FgD1maFj
         /saw==
X-Gm-Message-State: ACrzQf0JtemqoAci+CtI97KtHNxt3i6nTbhRYI56EYHF92Srl+czrtKz
	3k/tZQxvPGmDnpj4R8Hh9JTi7Q==
X-Google-Smtp-Source: AMsMyM57EG7r/INW+QuGEjqPJWyO6T++k36fW0Iawm5RTeCdV8Ph+Z3zSVihCgeH5lWgEy/GWHK8gQ==
X-Received: by 2002:adf:9dd0:0:b0:22c:3fe0:42ef with SMTP id q16-20020adf9dd0000000b0022c3fe042efmr12390756wre.348.1664265668642;
        Tue, 27 Sep 2022 01:01:08 -0700 (PDT)
Received: from localhost.localdomain (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.googlemail.com with ESMTPSA id p4-20020a1c5444000000b003a5c7a942edsm13357199wmi.28.2022.09.27.01.01.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Sep 2022 01:01:08 -0700 (PDT)
From: Corentin Labbe <clabbe@baylibre.com>
To: heiko@sntech.de,
	davem@davemloft.net,
	herbert@gondor.apana.org.au,
	krzysztof.kozlowski+dt@linaro.org,
	robh+dt@kernel.org
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-crypto@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	Corentin Labbe <clabbe@baylibre.com>
Subject: [PATCH RFT 2/5] dt-bindings: crypto: add support for rockchip,crypto-rk3588
Date: Tue, 27 Sep 2022 08:00:45 +0000
Message-Id: <20220927080048.3151911-3-clabbe@baylibre.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220927080048.3151911-1-clabbe@baylibre.com>
References: <20220927080048.3151911-1-clabbe@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220927_010110_649394_6A0CE5EC 
X-CRM114-Status: GOOD (  12.31  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
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

Add device tree binding documentation for the Rockchip cryptographic
offloader V2.

Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
---
 .../crypto/rockchip,rk3588-crypto.yaml        | 71 +++++++++++++++++++
 1 file changed, 71 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/crypto/rockchip,rk3588-crypto.yaml

diff --git a/Documentation/devicetree/bindings/crypto/rockchip,rk3588-crypto.yaml b/Documentation/devicetree/bindings/crypto/rockchip,rk3588-crypto.yaml
new file mode 100644
index 000000000000..aa01c3c681f4
--- /dev/null
+++ b/Documentation/devicetree/bindings/crypto/rockchip,rk3588-crypto.yaml
@@ -0,0 +1,71 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/crypto/rockchip,rk3588-crypto.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Rockchip cryptographic offloader V2
+
+maintainers:
+  - Corentin Labbe <clabbe@baylibre.com>
+
+properties:
+  compatible:
+    enum:
+      - rockchip,rk3568-crypto
+      - rockchip,rk3588-crypto
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+  clocks:
+    minItems: 4
+
+  clock-names:
+    items:
+      - const: aclk
+      - const: hclk
+      - const: sclk
+      - const: pka
+
+  resets:
+    minItems: 5
+
+  reset-names:
+    items:
+      - const: core
+      - const: a
+      - const: h
+      - const: rng
+      - const: pka
+
+required:
+  - compatible
+  - reg
+  - interrupts
+  - clocks
+  - clock-names
+  - resets
+  - reset-names
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+    #include <dt-bindings/clock/rk3568-cru.h>
+    crypto@fe380000 {
+      compatible = "rockchip,rk3588-crypto";
+      reg = <0xfe380000 0x4000>;
+      interrupts = <GIC_SPI 4 IRQ_TYPE_LEVEL_HIGH>;
+      clocks = <&cru ACLK_CRYPTO_NS>, <&cru HCLK_CRYPTO_NS>,
+               <&cru CLK_CRYPTO_NS_CORE>, <&cru CLK_CRYPTO_NS_PKA>;
+      clock-names = "aclk", "hclk", "sclk", "pka";
+      resets = <&cru SRST_CRYPTO_NS_CORE>, <&cru SRST_A_CRYPTO_NS>,
+               <&cru SRST_H_CRYPTO_NS>, <&cru SRST_CRYPTO_NS_RNG>,
+               <&cru SRST_CRYPTO_NS_PKA>;
+      reset-names = "core", "a", "h", "rng", "pka";
+    };
-- 
2.35.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
