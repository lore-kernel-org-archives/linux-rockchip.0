Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F0B3CC021B2
	for <linux-rockchip@archiver.kernel.org>; Tue, 25 Feb 2025 13:22:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:Message-Id:
	MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=j7nJeA+j95qpWWu+osTi+BtzTnUoOTGtKnnM0b9AAEY=; b=i5yMwK4/+M1msA
	pGph1ajLQKoFQPrSm2iFAUVF+X/0A0WMr7931R8b/gcAZw/g39dfWEfmxiJe6zESYnQRuxNm60rjc
	4Ig9Hs3C0ouVNK02vz8yRwY++Ob/lBTdN6SWliXrcouokqsdR/qYLJEKT0eZOxZwvU8UO2cWqsYxc
	abO/6SEyYwCTGK8qaam9Vt/PWM53uKaRgBGJ7uw+SRl073Y5pZ8h1mYz0+YLjXxQk2Z6lRICoJNAS
	lzk2GIFgUpXXmtJCUH9Tp/4sHcsK0q8sjnAGFtBa/17bdaXB4lfi5Kwm2cp/UWZ1ipxRMTsvUXWzt
	wJKTbbx96o3zQpEGKCVw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tmutW-0000000HMNR-3gYi;
	Tue, 25 Feb 2025 13:22:42 +0000
Received: from sender4-op-o14.zoho.com ([136.143.188.14])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tmuVU-0000000HHNs-2NGj;
	Tue, 25 Feb 2025 12:57:53 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1740488262; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=b76d1za7PGuMmTiBSOOcQuKGH0L4l0xPBLPyzFWNJ/HDODeaxW2Pbl8OYyWYl5kfOZxFyVqkKpogH+VLeKkOgZSsSnntSv91d6QTYqj+/jlNHkLj59HihMw3np05SouOCZiD1dD+ArrU7RhhPYDexYv/9ho5Utkpwz0BuQjW+2I=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1740488262; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=x9lTs8zXN5HalN7kcYVDsFMxl6BV5hMT6pLsKxt4ZeQ=; 
	b=i5MQ/jG0WbjeSlx1+elh82vdKUO6vh4a7/nPWuA6XvR4dJ5Ejt+FHr5caa37D+By5BrRFGt88m8SJWQ2Uplhewvrb5hsfyrqtwODuACQqG7h3/RCkTgrfS8VGc/vxiBebb3fXFUr9NnzvRhwhBD0OTVgkGFY+65VMaxfLa5zoyI=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=nicolas.frattaroli@collabora.com;
	dmarc=pass header.from=<nicolas.frattaroli@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1740488262;
	s=zohomail; d=collabora.com; i=nicolas.frattaroli@collabora.com;
	h=From:From:Date:Date:Subject:Subject:MIME-Version:Content-Type:Content-Transfer-Encoding:Message-Id:Message-Id:References:In-Reply-To:To:To:Cc:Cc:Reply-To;
	bh=x9lTs8zXN5HalN7kcYVDsFMxl6BV5hMT6pLsKxt4ZeQ=;
	b=LDDLBueTingfhbtiiCg7jZavcUthN75wUA6IGG24cjKURtDnz33+LeCmBS1PAKS1
	f3cR/YHskcmad/8CdvvLrOhaKyO6/6QB9kKHmruCIo/wGiY3BvtPQzJmyiATLgnXKIw
	Hs9ONg7CAT/WvWVUwkNrVroUNv3WMBZkDEQvyZE4=
Received: by mx.zohomail.com with SMTPS id 1740488260869522.3234869504469;
	Tue, 25 Feb 2025 04:57:40 -0800 (PST)
From: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
Date: Tue, 25 Feb 2025 13:56:47 +0100
Subject: [PATCH v2 4/6] dt-bindings: thermal: rockchip: document otp
 thermal trim
MIME-Version: 1.0
Message-Id: <20250225-rk3576-tsadc-upstream-v2-4-6eb7b00de89c@collabora.com>
References: <20250225-rk3576-tsadc-upstream-v2-0-6eb7b00de89c@collabora.com>
In-Reply-To: <20250225-rk3576-tsadc-upstream-v2-0-6eb7b00de89c@collabora.com>
To: "Rafael J. Wysocki" <rafael@kernel.org>, 
 Daniel Lezcano <daniel.lezcano@linaro.org>, Zhang Rui <rui.zhang@intel.com>, 
 Lukasz Luba <lukasz.luba@arm.com>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250225_045752_640423_86A77B72 
X-CRM114-Status: GOOD (  10.09  )
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
Cc: devicetree@vger.kernel.org, linux-pm@vger.kernel.org, Sebastian Reichel <sebastian.reichel@collabora.com>, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, kernel@collabora.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Several Rockchip SoCs, such as the RK3576, can store calibration trim
data for thermal sensors in OTP cells. This capability should be
documented.

Such a rockchip thermal sensor may reference cell handles that store
both a chip-wide trim for all the sensors, as well as cell handles
for each individual sensor channel pointing to that specific sensor's
trim value.

Additionally, the thermal sensor may optionally reference cells which
store the base in terms of degrees celsius and decicelsius that the trim
is relative to.

Each SoC that implements this appears to have a slightly different
combination of chip-wide trim, base, base fractional part and
per-channel trim, so which ones do which is documented in the bindings.

Signed-off-by: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
---
 .../bindings/thermal/rockchip-thermal.yaml         | 64 ++++++++++++++++++++++
 1 file changed, 64 insertions(+)

diff --git a/Documentation/devicetree/bindings/thermal/rockchip-thermal.yaml b/Documentation/devicetree/bindings/thermal/rockchip-thermal.yaml
index 49ceed68c92ce5a32ed8d4f39bd88fd052de0e80..eef8d2620b675fe2f871a03aebdaed13278e0884 100644
--- a/Documentation/devicetree/bindings/thermal/rockchip-thermal.yaml
+++ b/Documentation/devicetree/bindings/thermal/rockchip-thermal.yaml
@@ -11,6 +11,23 @@ maintainers:
 
 $ref: thermal-sensor.yaml#
 
+definitions:
+  channel:
+    type: object
+    properties:
+      reg:
+        maxItems: 1
+        description: sensor ID, a.k.a. channel number
+      nvmem-cells:
+        items:
+          - description: handle of cell containing the calibration data
+      nvmem-cell-names:
+        items:
+          - const: trim
+    required:
+      - reg
+    unevaluatedProperties: false
+
 properties:
   compatible:
     enum:
@@ -51,6 +68,12 @@ properties:
       - const: tsadc
       - const: tsadc-phy
 
+  "#address-cells":
+    const: 1
+
+  "#size-cells":
+    const: 0
+
   "#thermal-sensor-cells":
     const: 1
 
@@ -80,6 +103,47 @@ required:
   - clock-names
   - resets
 
+allOf:
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: rockchip,rk3568-tsadc
+    then:
+      properties:
+        nvmem-cells:
+          items:
+            - description: cell handle to where the trim's base temperature is stored
+            - description:
+                cell handle to where the trim's tenths of Celsius base value is stored
+        nvmem-cell-names:
+          items:
+            - const: trim_base
+            - const: trim_base_frac
+        cpu@0:
+          $ref: "#/definitions/channel"
+        gpu@1:
+          $ref: "#/definitions/channel"
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: rockchip,rk3576-tsadc
+    then:
+      properties:
+        soc@0:
+          $ref: "#/definitions/channel"
+        bigcores@1:
+          $ref: "#/definitions/channel"
+        littlecores@2:
+          $ref: "#/definitions/channel"
+        ddr@3:
+          $ref: "#/definitions/channel"
+        npu@4:
+          $ref: "#/definitions/channel"
+        gpu@5:
+          $ref: "#/definitions/channel"
+
 unevaluatedProperties: false
 
 examples:

-- 
2.48.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
