Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 08931C433EF
	for <linux-rockchip@archiver.kernel.org>; Fri,  1 Apr 2022 20:49:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=y315b3mi3GpZWliu9s+t2FCwKnQ6/DKrIMEq9IPEr18=; b=kmvNN7MT8qKQEY
	Mv3rpFNQqwmLaQ/9XdGyritVNqOShtmbWC4WWegDWKy+fNOFaDJumaRNJM9uOniWsjG6dt/WnhJd5
	MuPzAyaSddh3ANF0IWVm0K/O+2yx6O358sp0Kj96JOeOORQgO+F/r1t0cWeU15eXworz57HZpl5av
	U/myBMLEHrnjs+wjRfWcYSp7ffEXn0AXwFw0hmVd5kCXTC5P5PCjEhU1rk7NhEcQE9oNqVXSazO+J
	rAQ+6pA7dUqHqZYCuDxJiGE4O6TxbYld8wWOKYCrD6zz8sSw4cMYLYu0DN3eX3kPvqeze+8w57xKR
	pkSEBtESfcPIy05FX/qA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1naODD-007JKY-H6; Fri, 01 Apr 2022 20:49:39 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1naODB-007IwW-6o
 for linux-rockchip@bombadil.infradead.org; Fri, 01 Apr 2022 20:49:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
 :References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description;
 bh=jSaXpwg4yxYz/Q7mVQ0NA0v6E4Uikl0M5IdyYjRawGo=; b=HolexkI0iIbMD/6fWFX3mWbQtV
 IaD/yAcKG+3wv2WtBbi72XwkZx9ogCAdIxoYLQnhGSKYkaZS9qUj5fDepn5IBAwCpsMMbGi4H5zYt
 BtQYd1R9oYM0Yb+peY5sKNYoZfUPXf2+Y4wG+60mAFuiMmz/zvudJOtQOBwHShySY48xox8cjQiT1
 9wJbwh6kJECSvWYxX/m1/Zx7wiG1SxDV1xXYWTaNspuoEVlMvOnRhOqPxDmavWykzW0Vw6MXbO5QM
 idF/p8woepbGd2cRmfXm/ciITWv5mLDGUJCTyctShVtglfK0yiu803kjgCL7BQBe5BjcWpVRu6iVr
 YcZHY1tw==;
Received: from mail-wr1-x42e.google.com ([2a00:1450:4864:20::42e])
 by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1naNj6-000fAL-9N
 for linux-rockchip@lists.infradead.org; Fri, 01 Apr 2022 20:18:36 +0000
Received: by mail-wr1-x42e.google.com with SMTP id u3so5810942wrg.3
 for <linux-rockchip@lists.infradead.org>; Fri, 01 Apr 2022 13:18:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=jSaXpwg4yxYz/Q7mVQ0NA0v6E4Uikl0M5IdyYjRawGo=;
 b=UXTfpw+heakkIuGf86Z+CUHX9ukFMQhevQEx2s5nS+3TNzkgst3TM/A5Jgxj7V5aHu
 q3wnQfJHFBlgvlaykSa7YMR5H9BpVjt1nO4CqvDZSkW2A1oco0pOZx3V+1KqoK9lUh92
 MjjffD5VzPBVqESI9lFwxq3dBmm4APqLTik2pOMwfwHq2LiD7UdfjClGs3tyI8y+8vna
 UuJuAkc/UWEPXC48KWa4kapD8Xg0yaSBmxP4rO4jKX8VJLBkSJ0jQMj0ypQ75+89LKKK
 q6mJyEbTzc4XV69lX01pBDDVCnjUJ4rrQB1XUBq0/ci8VbxOCJxHgVCRUOChtHCjENpG
 QRjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=jSaXpwg4yxYz/Q7mVQ0NA0v6E4Uikl0M5IdyYjRawGo=;
 b=VYc6L797zl5BjWLPS50cudBzehC3VaPu1N5zfffPepJSawtZ9QIyrxU99c9Egr1JqT
 pPvsrc6p+QyF5wXrA11/CV3OfvFIqwg73oPEzY5pa/qUqYjj9sDNm6/o+93hprDR1Wmi
 jAJ4CvFUF4HilJQiOecJ+0P8CZNqg8Wm1xnr7bTmXpxuxcxyMXvGcJMEMgwo1hQvnYk3
 lWH4gF9j/8fDgl1PVrDP7EzgPOE6MDFVeUYjHrjzsUBpwSJ1HwYjOBexqRrNc+8oHl6O
 n1bqh0WZLZo3vdbPX56Qfk0xYri2wa4clCTGpjCwjkVcn4brpjLhoNBc/vo2Kq9Bk4IJ
 v0HA==
X-Gm-Message-State: AOAM532O6x2eW3f+jPiozOrji7IxEtYhw9FSwLYY4l/f+yT28pqpNyai
 9tmxO1Nqs/e2ZqVpkjWXteIVeQ==
X-Google-Smtp-Source: ABdhPJzIbAnh+K9uXjo4NrKlh5T7YmMOBC0WA8+ngziLUgUgJaH/lSQ/u9AALlxtJqzf7JrobyCVvA==
X-Received: by 2002:adf:f747:0:b0:203:ded4:dbd with SMTP id
 z7-20020adff747000000b00203ded40dbdmr8952156wrp.343.1648844310692; 
 Fri, 01 Apr 2022 13:18:30 -0700 (PDT)
Received: from localhost.localdomain
 (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.googlemail.com with ESMTPSA id
 j16-20020a05600c191000b0038ca3500494sm17823838wmq.27.2022.04.01.13.18.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 01 Apr 2022 13:18:30 -0700 (PDT)
From: Corentin Labbe <clabbe@baylibre.com>
To: heiko@sntech.de, herbert@gondor.apana.org.au, krzk+dt@kernel.org,
 robh+dt@kernel.org
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-crypto@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Corentin Labbe <clabbe@baylibre.com>
Subject: [PATCH v4 27/33] dt-bindings: crypto: convert rockchip-crypto to yaml
Date: Fri,  1 Apr 2022 20:17:58 +0000
Message-Id: <20220401201804.2867154-28-clabbe@baylibre.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220401201804.2867154-1-clabbe@baylibre.com>
References: <20220401201804.2867154-1-clabbe@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220401_211832_466725_C74FC2B9 
X-CRM114-Status: GOOD (  14.36  )
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

Convert rockchip-crypto to yaml

Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
---
 .../crypto/rockchip,rk3288-crypto.yaml        | 59 +++++++++++++++++++
 .../bindings/crypto/rockchip-crypto.txt       | 28 ---------
 2 files changed, 59 insertions(+), 28 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/crypto/rockchip,rk3288-crypto.yaml
 delete mode 100644 Documentation/devicetree/bindings/crypto/rockchip-crypto.txt

diff --git a/Documentation/devicetree/bindings/crypto/rockchip,rk3288-crypto.yaml b/Documentation/devicetree/bindings/crypto/rockchip,rk3288-crypto.yaml
new file mode 100644
index 000000000000..66db671118c3
--- /dev/null
+++ b/Documentation/devicetree/bindings/crypto/rockchip,rk3288-crypto.yaml
@@ -0,0 +1,59 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/crypto/rockchip,rk3288-crypto.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Rockchip Electronics And Security Accelerator
+
+maintainers:
+  - Corentin Labbe <clabbe@baylibre.com>
+
+properties:
+  compatible:
+    enum:
+      - rockchip,rk3288-crypto
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+  clocks:
+    maxItems: 4
+
+  clock-names:
+    maxItems: 4
+
+  resets:
+    maxItems: 1
+
+  reset-names:
+    maxItems: 1
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
+    #include <dt-bindings/clock/rk3288-cru.h>
+    crypto@ff8a0000 {
+      compatible = "rockchip,rk3288-crypto";
+      reg = <0xff8a0000 0x4000>;
+      interrupts = <GIC_SPI 48 IRQ_TYPE_LEVEL_HIGH>;
+      clocks = <&cru ACLK_CRYPTO>, <&cru HCLK_CRYPTO>,
+               <&cru SCLK_CRYPTO>, <&cru ACLK_DMAC1>;
+      clock-names = "aclk", "hclk", "sclk", "apb_pclk";
+      resets = <&cru SRST_CRYPTO>;
+      reset-names = "crypto-rst";
+    };
diff --git a/Documentation/devicetree/bindings/crypto/rockchip-crypto.txt b/Documentation/devicetree/bindings/crypto/rockchip-crypto.txt
deleted file mode 100644
index 5e2ba385b8c9..000000000000
--- a/Documentation/devicetree/bindings/crypto/rockchip-crypto.txt
+++ /dev/null
@@ -1,28 +0,0 @@
-Rockchip Electronics And Security Accelerator
-
-Required properties:
-- compatible: Should be "rockchip,rk3288-crypto"
-- reg: Base physical address of the engine and length of memory mapped
-       region
-- interrupts: Interrupt number
-- clocks: Reference to the clocks about crypto
-- clock-names: "aclk" used to clock data
-	       "hclk" used to clock data
-	       "sclk" used to clock crypto accelerator
-	       "apb_pclk" used to clock dma
-- resets: Must contain an entry for each entry in reset-names.
-	  See ../reset/reset.txt for details.
-- reset-names: Must include the name "crypto-rst".
-
-Examples:
-
-	crypto: cypto-controller@ff8a0000 {
-		compatible = "rockchip,rk3288-crypto";
-		reg = <0xff8a0000 0x4000>;
-		interrupts = <GIC_SPI 48 IRQ_TYPE_LEVEL_HIGH>;
-		clocks = <&cru ACLK_CRYPTO>, <&cru HCLK_CRYPTO>,
-			 <&cru SCLK_CRYPTO>, <&cru ACLK_DMAC1>;
-		clock-names = "aclk", "hclk", "sclk", "apb_pclk";
-		resets = <&cru SRST_CRYPTO>;
-		reset-names = "crypto-rst";
-	};
-- 
2.35.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
