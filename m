Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 933E7C433FE
	for <linux-rockchip@archiver.kernel.org>; Thu, 10 Feb 2022 16:14:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=NCdhrA5TuIh5R3G4QMF5QEPRnOTXVzMAJG/AAReEbKA=; b=MRnG4CDEkz1ts2
	6JklZsWjExmPN3L1yaG4D610KHYUbVRVjsrD2y91W/zoP8BUtbUuJaKlB2+T9aeqHE3/GhbQktmMd
	uSE1+6I6JoY+Lk41jdQ2gk9RcFvxDZXhAolCCJ3QEl1U+eZfKSxzteHD+6cvAhXerm96Bc+4n0+MG
	DCtDroJ27glXozH6FQu8Y3wLOjLHJQOKprWtIBtoKRnJ4riTbzprRRi410l2AD0dcKK4oezaD3wsc
	k/BoiF0nyw/vKtoLwtSBUObF/BYQJKm4fSArJnsEee33hW6OFyb4Ywu6BbSLvrbU1ZHbiGbI6vRaN
	2ZFU/0aE2JpT8qfSdvzQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nIC5G-004KwJ-FI; Thu, 10 Feb 2022 16:14:14 +0000
Received: from mail-wr1-x436.google.com ([2a00:1450:4864:20::436])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nIC5D-004Kve-TQ
 for linux-rockchip@lists.infradead.org; Thu, 10 Feb 2022 16:14:13 +0000
Received: by mail-wr1-x436.google.com with SMTP id s18so10470692wrv.7
 for <linux-rockchip@lists.infradead.org>; Thu, 10 Feb 2022 08:14:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=LPIeJwlMRoaFTb6x9y6uY9bjxgeWFd/hUz/un3WMnt8=;
 b=gqwIkL0ffuvTTfQv7jCOcVX6pKks03HwuOPtAL1P5jX7NNxfBKGgvTvZ0/xRTtS5ol
 caXbL8A0KNI/sET96stGgIQN0DqvcTmc+vbn5wkT4t85r+2Dtg1c+4jwZoHi0oee5r6n
 zFDEO7O9j8eH04R8QyTcqz8yZH/wsaIihQTxvVSGSGYPiIBeUMvTILZra7hoZMwqUdNs
 lgAVHz1VDFu1bvnvUrhixD/wQM00fYsEQd+NcugZKbfmfuuJo5cEYHj7WZpp0QkpL1ZH
 axhda/4ymIDDlZRA6pZ81H1qDw+tCX3rDBAP6d04G0KbuL/+ueHUh5xvPKtDfhs6ebQS
 lG/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=LPIeJwlMRoaFTb6x9y6uY9bjxgeWFd/hUz/un3WMnt8=;
 b=7K4bqA80BmOFZ9/vg5WNZGY2fCkHE0rHZpqlB9Tztc2mQWgifWh7Giqrx60p+qvfoc
 UlOQAFVk1uULrxAfJ7AjPSIG0oFkp5qUunegmCYdVlIKZ0t/K5I9Q1vTo2ZMzKl1w+4j
 tmpteTnj2mBytf5LWBUuPwwT7FxFr/OKLpUHzn/kwmxIhefUkfXuvX7yMzra8GUR5TRT
 0WyTWYr/331Bwi/qNdEk0EEVn9AL8Anblp3tAOcZ8sNWxKKCTUhPfVjIW1OITi9GyP7O
 ixKrDF2BfiQFOS41vR/mJkYCG+Vc2ZLA6qhqGJFYB+sY8EObXpevy9Kpvw8NK7+VNRYt
 8vRg==
X-Gm-Message-State: AOAM530T6UOhB6iw5xUoJ/Y9RVYLmr6r4fpoczasIQmlo3Nv/2CW0j+Q
 vmF5JbEBYu6/FQV/uOjk6bEgQA==
X-Google-Smtp-Source: ABdhPJyiUzM3gKv/ARPyVBIDz/r78rcok0Pn/FL7DVHv9o7EZbNbxzYFxwKS9f1FNQHLmMhjiiVIsQ==
X-Received: by 2002:a5d:6850:: with SMTP id o16mr6846336wrw.344.1644509649210; 
 Thu, 10 Feb 2022 08:14:09 -0800 (PST)
Received: from localhost.localdomain
 (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.googlemail.com with ESMTPSA id e8sm4529430wru.37.2022.02.10.08.14.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 10 Feb 2022 08:14:08 -0800 (PST)
From: Corentin Labbe <clabbe@baylibre.com>
To: davem@davemloft.net, heiko@sntech.de, herbert@gondor.apana.org.au,
 krzysztof.kozlowski@canonical.com, robh+dt@kernel.org
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-crypto@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Corentin Labbe <clabbe@baylibre.com>
Subject: [PATCH v2] dt-bindings: crypto: convert rockchip-crypto to yaml
Date: Thu, 10 Feb 2022 16:14:03 +0000
Message-Id: <20220210161403.2966196-1-clabbe@baylibre.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220210_081411_957952_BFAE298D 
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

Convert rockchip-crypto to yaml

Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
---
Change since v1:
- fixed example
- renamed to a new name
- fixed some maxItems

 .../crypto/rockchip,rk3288-crypto.yaml        | 66 +++++++++++++++++++
 .../bindings/crypto/rockchip-crypto.txt       | 28 --------
 2 files changed, 66 insertions(+), 28 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/crypto/rockchip,rk3288-crypto.yaml
 delete mode 100644 Documentation/devicetree/bindings/crypto/rockchip-crypto.txt

diff --git a/Documentation/devicetree/bindings/crypto/rockchip,rk3288-crypto.yaml b/Documentation/devicetree/bindings/crypto/rockchip,rk3288-crypto.yaml
new file mode 100644
index 000000000000..44f415597e32
--- /dev/null
+++ b/Documentation/devicetree/bindings/crypto/rockchip,rk3288-crypto.yaml
@@ -0,0 +1,66 @@
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
+    const: rockchip,rk3288-crypto
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+  clocks:
+    items:
+      - description: clock data
+      - description: clock data
+      - description: clock crypto accelerator
+      - description: clock dma
+
+  clock-names:
+    items:
+      - const: aclk
+      - const: hclk
+      - const: sclk
+      - const: apb_pclk
+
+  resets:
+    maxItems: 1
+
+  reset-names:
+    const: crypto-rst
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
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
