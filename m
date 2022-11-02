Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 780A1C433FE
	for <linux-rockchip@archiver.kernel.org>; Wed,  2 Nov 2022 18:49:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=wmXy4PtKwrfPQQVJgJyxDcDPRbV39snIxenSXyx2tuE=; b=Yl5LyouxuFUnCH
	wG8rMrA0I4F2NHzN1LLPleb3Q+xtgDI7nAw2qVWk9NwSfn5sbQZQAQrD9Jx5I+IEHbS9LJEWnPnNm
	tJD/h8PGSccvZXOD4HUvXw9b3By7a6deh/Qp2JEXtMJCO9wtjsIo7Cg4D/8BRdgTT0xciYoktQhtV
	FnKfB3OGgjUDqOGagYrmgfpBLXLAJBrQdg7LG/ms7NudhGCyeoCwG7cvcDa8E6WvD5xmH8XMe6ZES
	XZsCIxJSf12q6y5zXXsyr+BNSIWXaLNQWfg1pm+oZHJdG008j1PpCJDe2makXpPYzHDqUbB7SZzQv
	EHrqNR9HrNNl1pZYU3sw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oqIne-00DGx3-6T; Wed, 02 Nov 2022 18:49:18 +0000
Received: from mail-qk1-x733.google.com ([2607:f8b0:4864:20::733])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oqIja-00DE6T-Ph
	for linux-rockchip@lists.infradead.org; Wed, 02 Nov 2022 18:45:08 +0000
Received: by mail-qk1-x733.google.com with SMTP id k2so6804337qkk.7
        for <linux-rockchip@lists.infradead.org>; Wed, 02 Nov 2022 11:45:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=qwMjg0saElDDpZvRFhfvApzBKYcp7fB4XgxFqTJpFWI=;
        b=iGaADkhPbx01tqF1+AYct8FpWGDExhUT2ThVozEDuaLinordiXkfGKDZpED19wmdIp
         gXoCt6vU+OA79pnmBQTyTQ4nfrFkGI4DNHP7o9BhEAnjd+u8NRo8BW7r3Q0mdz539oLN
         tVWVrYO8X1atqcXLlOd1aKpzCxaKFmbFfwObPNU+OSowx4qHLKMXDh746xPhIZ6pX62S
         A/bUZ4W3kYHaExw5AgcH8cks2eKcfFscaYfeWwvwDC7AeXwdAZtiXw+qpTsY/gE7rgpE
         /I8/DTlg/hLmd9HOumtV4uncWgUKqgTz2i8gJQnlmEU+2zBkvs+rs3l7gDxl907ltBtC
         j/uw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=qwMjg0saElDDpZvRFhfvApzBKYcp7fB4XgxFqTJpFWI=;
        b=dDRba8zJ0gvytKfoLRZY9fuGoV4ukvOegxdCd/BbJa/VJZ5VikXphGKbpb/QZnt+uk
         ej8SAEXV2nLUADXQn6ydi3kyK482UZo6ur6Yqlg0WP7DM3gKCV9Q4pfw/LYj3X6her+C
         rVjX7Oc/X9aARDq6yJ/P4DtdR9nce7PI/H8q1NXy2lvEdRlI9mGlh6pTMbQDrrH8lwEf
         mjoxa8KAGLfUnrzmseN7juLKy6vKFWypD0yMnHs+uEsE4YRumzgYFuaWuaFIf8z2wcyu
         h0BvvlERWcq6DPNOAEza+SFIkBi/40/O4yA3knXMajYfAzx7pQTyyUIbUzvfTZxTKXhG
         Zn3g==
X-Gm-Message-State: ACrzQf2Zd8b6z5EBSS9JKjZ4YRlSYvY0ORlBWWZHXh5JRI6ScGMa3TRz
	8lJVwScPiWh4F1RjMs3+NDqc5Q==
X-Google-Smtp-Source: AMsMyM7qMH4VE42ylFBZd3s7+XZqRDReXC3eIHhr14XAC1ZQJeiWIRtuqGId4UaNsQI7xBD3vRaSbQ==
X-Received: by 2002:a05:620a:13fa:b0:6fa:15e3:a277 with SMTP id h26-20020a05620a13fa00b006fa15e3a277mr17133309qkl.479.1667414705461;
        Wed, 02 Nov 2022 11:45:05 -0700 (PDT)
Received: from krzk-bin.. ([2601:586:5000:570:28d9:4790:bc16:cc93])
        by smtp.gmail.com with ESMTPSA id w16-20020a05620a425000b006e54251993esm9090413qko.97.2022.11.02.11.45.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 02 Nov 2022 11:45:04 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Lee Jones <lee@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Sebastian Reichel <sre@kernel.org>,
	Hans de Goede <hdegoede@redhat.com>,
	Marek Szyprowski <m.szyprowski@samsung.com>,
	Sebastian Krzyszkowiak <sebastian.krzyszkowiak@puri.sm>,
	Purism Kernel Team <kernel@puri.sm>,
	Orson Zhai <orsonzhai@gmail.com>,
	Baolin Wang <baolin.wang@linux.alibaba.com>,
	Chunyan Zhang <zhang.lyra@gmail.com>,
	Dmitry Osipenko <digetx@gmail.com>,
	Chris Zhong <zyw@rock-chips.com>,
	Zhang Qing <zhangqing@rock-chips.com>,
	=?UTF-8?q?Pali=20Roh=C3=A1r?= <pali@kernel.org>,
	"Andrew F. Davis" <afd@ti.com>,
	Artur Rojek <contact@artur-rojek.eu>,
	Matti Vaittinen <matti.vaittinen@fi.rohmeurope.com>,
	Markus Laine <markus.laine@fi.rohmeurope.com>,
	Mikko Mutanen <mikko.mutanen@fi.rohmeurope.com>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-pm@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v2 1/3] dt-bindings: power: supply: define monitored-battery in common place
Date: Wed,  2 Nov 2022 14:44:59 -0400
Message-Id: <20221102184501.109148-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221102_114506_865666_2338D3CC 
X-CRM114-Status: GOOD (  14.88  )
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

Define the type of monitored-battery in power-supply.yaml common schema.
Reference the schema where applicable to enforce the above in bindings
which have monitored-battery property.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

---

Changes since v1:
1. Re-work the patch - define the type in power-supply.yaml.
---
 Documentation/devicetree/bindings/mfd/ene-kb930.yaml        | 6 +++---
 Documentation/devicetree/bindings/mfd/rockchip,rk817.yaml   | 2 ++
 Documentation/devicetree/bindings/power/supply/bq27xxx.yaml | 2 --
 .../devicetree/bindings/power/supply/ingenic,battery.yaml   | 4 ++--
 .../devicetree/bindings/power/supply/power-supply.yaml      | 6 ++++++
 .../devicetree/bindings/power/supply/rohm,bd99954.yaml      | 1 +
 .../devicetree/bindings/power/supply/sc2731-charger.yaml    | 1 -
 7 files changed, 14 insertions(+), 8 deletions(-)

diff --git a/Documentation/devicetree/bindings/mfd/ene-kb930.yaml b/Documentation/devicetree/bindings/mfd/ene-kb930.yaml
index 06ed9ec8f4bb..7c0a42390f18 100644
--- a/Documentation/devicetree/bindings/mfd/ene-kb930.yaml
+++ b/Documentation/devicetree/bindings/mfd/ene-kb930.yaml
@@ -13,6 +13,8 @@ description: |
 maintainers:
   - Dmitry Osipenko <digetx@gmail.com>
 
+$ref: /schemas/power/supply/power-supply.yaml
+
 properties:
   compatible:
     items:
@@ -22,15 +24,13 @@ properties:
   reg:
     maxItems: 1
 
-  monitored-battery: true
-  power-supplies: true
   system-power-controller: true
 
 required:
   - compatible
   - reg
 
-additionalProperties: false
+unevaluatedProperties: false
 
 examples:
   - |
diff --git a/Documentation/devicetree/bindings/mfd/rockchip,rk817.yaml b/Documentation/devicetree/bindings/mfd/rockchip,rk817.yaml
index 935e17099213..269fb85b2027 100644
--- a/Documentation/devicetree/bindings/mfd/rockchip,rk817.yaml
+++ b/Documentation/devicetree/bindings/mfd/rockchip,rk817.yaml
@@ -124,6 +124,8 @@ properties:
       The child node for the charger to hold additional properties. If a
       battery is not in use, this node can be omitted.
     type: object
+    $ref: /schemas/power/supply/power-supply.yaml
+
     properties:
       monitored-battery:
         description: |
diff --git a/Documentation/devicetree/bindings/power/supply/bq27xxx.yaml b/Documentation/devicetree/bindings/power/supply/bq27xxx.yaml
index 65fc6049efc1..347d4433adc5 100644
--- a/Documentation/devicetree/bindings/power/supply/bq27xxx.yaml
+++ b/Documentation/devicetree/bindings/power/supply/bq27xxx.yaml
@@ -60,13 +60,11 @@ properties:
 
   monitored-battery:
     description: |
-       phandle of battery characteristics node.
        The fuel gauge uses the following battery properties:
        - energy-full-design-microwatt-hours
        - charge-full-design-microamp-hours
        - voltage-min-design-microvolt
        Both or neither of the *-full-design-*-hours properties must be set.
-       See Documentation/devicetree/bindings/power/supply/battery.yaml
 
   power-supplies: true
 
diff --git a/Documentation/devicetree/bindings/power/supply/ingenic,battery.yaml b/Documentation/devicetree/bindings/power/supply/ingenic,battery.yaml
index 46527038bf22..42fcfc026972 100644
--- a/Documentation/devicetree/bindings/power/supply/ingenic,battery.yaml
+++ b/Documentation/devicetree/bindings/power/supply/ingenic,battery.yaml
@@ -10,6 +10,8 @@ title: Ingenic JZ47xx battery bindings
 maintainers:
   - Artur Rojek <contact@artur-rojek.eu>
 
+$ref: power-supply.yaml#
+
 properties:
   compatible:
     oneOf:
@@ -28,8 +30,6 @@ properties:
 
   monitored-battery:
     description: >
-      phandle to a "simple-battery" compatible node.
-
       This property must be a phandle to a node using the format described
       in battery.yaml, with the following properties being required:
       - voltage-min-design-microvolt: drained battery voltage,
diff --git a/Documentation/devicetree/bindings/power/supply/power-supply.yaml b/Documentation/devicetree/bindings/power/supply/power-supply.yaml
index 2f672e6e8d72..4e54c937973e 100644
--- a/Documentation/devicetree/bindings/power/supply/power-supply.yaml
+++ b/Documentation/devicetree/bindings/power/supply/power-supply.yaml
@@ -18,4 +18,10 @@ properties:
       This property is added to a supply in order to list the devices which
       supply it power, referenced by their phandles.
 
+  monitored-battery:
+    $ref: /schemas/types.yaml#/definitions/phandle
+    description:
+      The battery (with "simple-battery" compatible) being monitored by this
+      power supply.
+
 additionalProperties: true
diff --git a/Documentation/devicetree/bindings/power/supply/rohm,bd99954.yaml b/Documentation/devicetree/bindings/power/supply/rohm,bd99954.yaml
index 24b06957b4ca..14d9b42eda27 100644
--- a/Documentation/devicetree/bindings/power/supply/rohm,bd99954.yaml
+++ b/Documentation/devicetree/bindings/power/supply/rohm,bd99954.yaml
@@ -18,6 +18,7 @@ description: |
   provides a Dual-source Battery Charger, two port BC1.2 detection and a
   Battery Monitor.
 
+$ref: power-supply.yaml#
 
 properties:
   compatible:
diff --git a/Documentation/devicetree/bindings/power/supply/sc2731-charger.yaml b/Documentation/devicetree/bindings/power/supply/sc2731-charger.yaml
index eeb043f9bb4f..735f7d372ae1 100644
--- a/Documentation/devicetree/bindings/power/supply/sc2731-charger.yaml
+++ b/Documentation/devicetree/bindings/power/supply/sc2731-charger.yaml
@@ -28,7 +28,6 @@ properties:
       The charger uses the following battery properties
       - charge-term-current-microamp: current for charge termination phase.
       - constant-charge-voltage-max-microvolt: maximum constant input voltage.
-      See Documentation/devicetree/bindings/power/supply/battery.yaml
 
 additionalProperties: false
 
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
