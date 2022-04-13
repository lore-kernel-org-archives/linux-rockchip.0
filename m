Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4DAB0C433F5
	for <linux-rockchip@archiver.kernel.org>; Wed, 13 Apr 2022 19:24:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pdasNDXMrCfyfIR0i+37YyPZOAmBYGuhN3oKSE8Oc5w=; b=LKe7+ODo4Wnpqe
	iCaMa6kHyMBqyuOgLDuJk2KF2lQKBTNaqekjRgtTnkzENbP+H8sFqbCMXGwaxFGU5FZKa0czKvnXo
	6BjQPnLD96SXXpJiFa955Pq+RQ8PW8GHGpUu4GUg3DUDTg+TCkS+2btbHtIF3Dr7LoeOt/epvw0Zl
	xEYxsE2fJNAe8+nYr4O82LDKvK32NXvFiAjV0jRuZWiTIF2tUTU5yf5QdBsqBTYHD4qwcoeg1WD8s
	06vbY8eeKBAwgcqS1CAZUMH3nShihGwP1cVttt+ENjenEYjehijva5nB78rozpsgCEShWppnAw9Ya
	vjJNacIetDGcTkQ9BiKQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1neib6-002Pdk-NU; Wed, 13 Apr 2022 19:24:12 +0000
Received: from mail-wr1-x42c.google.com ([2a00:1450:4864:20::42c])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1neiLE-002IFL-Ui
 for linux-rockchip@lists.infradead.org; Wed, 13 Apr 2022 19:07:51 +0000
Received: by mail-wr1-x42c.google.com with SMTP id c7so4045639wrd.0
 for <linux-rockchip@lists.infradead.org>; Wed, 13 Apr 2022 12:07:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=7vI7RROwI7xo5mL2BvS6OkIwLXT1/HRd+BPTtZP9sXU=;
 b=OaWHv/NXyUm+/cwpqYuDB/9MTsYe7jZWyUjS5CgwmwNAbL/ncdbakOhkXkqlV89mvB
 9TVDRFgzvTEmIVeKRp5KzRk2wm+PYPdkiIG7fH+TMgRbDNw2MRlw2rIGzIODF8uK0BHc
 4CiXK6w6BLVXu7Rov6HPE7+mdPGI6ONzoTK7NaWB6ny5fH0vdFmzylFqxE9uFTJed7U5
 FNVXp+G80cKPcVeTD0gRN2Ss9JCeXXnNwtnSFqYXtUQ1CgFsjmJaSFBbpINLQ7pNMmUo
 2kQ2hMw5thX4n6k+iEiHfhJ/ceyjp/Whsa1ZmjKjfXpE5GbbaxXKIwYM4Dl+m0ODlkNT
 0OxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=7vI7RROwI7xo5mL2BvS6OkIwLXT1/HRd+BPTtZP9sXU=;
 b=dxTeVtWo+nlbq4AFrn0d7n+0q8v3RfO6aJWsO5PTpW3f3tVEpnwSHSt7XTR9SBC/5n
 TKG4WHz6FdG3fVmKf/o1dcLMgGRNemELon1zlj6Hk4I+5X1e3KjS8wS+d0YCzyyui4I7
 wH19hUjETq3wlv8wRL/9e0kfzyLtBKSKy0aeNDkmVPEuKItOpJ8NUdN2cNtXTFCot+/Q
 XKD+PbGALydJpdcA5eaFv32VseNRR62M1coB2tiVO33JyYWr+oLuMhdJG8aumSC2CaoG
 2TnTjn3X/AyOnzpxi6uO/8aTjzR1UnmYVNRh2zfUWPtqG5oOhhDtSuljqmfPvR9lcAAF
 fOaA==
X-Gm-Message-State: AOAM530Ij5wYBATw8VlT5QsBKep1RDnrQxhK9LAzyV1FuIc6nEn6V0ye
 5B8j0sDz6k0wdtJaA3ztuXZddA==
X-Google-Smtp-Source: ABdhPJzvnagHn8g1Peu3j6RE8tctMSMOd0u8FzmpEzyFaVtLUytmgSH+2Je+PL0pyzLE8N3M0RvUnQ==
X-Received: by 2002:a5d:6a47:0:b0:207:ab24:b1f6 with SMTP id
 t7-20020a5d6a47000000b00207ab24b1f6mr244110wrw.488.1649876867735; 
 Wed, 13 Apr 2022 12:07:47 -0700 (PDT)
Received: from localhost.localdomain
 (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.googlemail.com with ESMTPSA id
 o29-20020a05600c511d00b0038e3532b23csm3551852wms.15.2022.04.13.12.07.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 13 Apr 2022 12:07:47 -0700 (PDT)
From: Corentin Labbe <clabbe@baylibre.com>
To: heiko@sntech.de, herbert@gondor.apana.org.au,
 krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org
Cc: linux-arm-kernel@lists.infradead.org, linux-crypto@vger.kernel.org,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Corentin Labbe <clabbe@baylibre.com>
Subject: [PATCH v5 24/33] dt-bindings: crypto: convert rockchip-crypto to YAML
Date: Wed, 13 Apr 2022 19:07:04 +0000
Message-Id: <20220413190713.1427956-25-clabbe@baylibre.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220413190713.1427956-1-clabbe@baylibre.com>
References: <20220413190713.1427956-1-clabbe@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220413_120749_035231_F97A7D7D 
X-CRM114-Status: GOOD (  14.54  )
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

Convert rockchip-crypto to YAML.

Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
---
 .../crypto/rockchip,rk3288-crypto.yaml        | 66 +++++++++++++++++++
 .../bindings/crypto/rockchip-crypto.txt       | 28 --------
 2 files changed, 66 insertions(+), 28 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/crypto/rockchip,rk3288-crypto.yaml
 delete mode 100644 Documentation/devicetree/bindings/crypto/rockchip-crypto.txt

diff --git a/Documentation/devicetree/bindings/crypto/rockchip,rk3288-crypto.yaml b/Documentation/devicetree/bindings/crypto/rockchip,rk3288-crypto.yaml
new file mode 100644
index 000000000000..b4e87e9894f8
--- /dev/null
+++ b/Documentation/devicetree/bindings/crypto/rockchip,rk3288-crypto.yaml
@@ -0,0 +1,66 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/crypto/rockchip,rk3288-crypto.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Rockchip Electronics Security Accelerator
+
+maintainers:
+  - Heiko Stuebner <heiko@sntech.de>
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
+    items:
+      const: aclk
+      const: hclk
+      const: sclk
+      const: apb_pclk
+
+  resets:
+    maxItems: 1
+
+  reset-names:
+    maxItems: 1
+    items:
+      const: crypto-rst
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
