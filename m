Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A871BC46CD7
	for <linux-rockchip@archiver.kernel.org>; Sat, 16 Dec 2023 16:27:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=C63bsxL1Y6qbMoCZW8T2wPKmGvs7zIZwqYlRph7IwX8=; b=HJasuY11MIkDdj
	VJZoPbluBGneAbxt7jCFl/MNCd11YGcdWJTTxxWQjFzTXPZEbkwD6DZYT4/OSyrbqxNMr0z8NlA37
	Pbg42ObfeAeB/YuG3zDtbV8Hfxz7TRpo1P2UbjU1eP04FzK2FUKZIw7rvJSRPCS3GJeRFAD5ivu3s
	ArDKkdw2A4lzEexLsdqbQdtqJ2Kg8WPoEjM7Kjm0byLZf9vrZ6PMbUdxDyqF6WbSGNSpvqFHTmxKs
	ebHSaLch4RpViZTXlTpvbJABlGeeNYt8cwkJLrUgipzEj8/6VXZZcN9giz8vzsgKQIv3nXyIqz4dp
	9hpRXa1Gg3mUJcKyKYEQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rEXVe-006K4U-36;
	Sat, 16 Dec 2023 16:27:26 +0000
Received: from mail-wm1-x336.google.com ([2a00:1450:4864:20::336])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rEXVP-006Jmz-1b;
	Sat, 16 Dec 2023 16:27:13 +0000
Received: by mail-wm1-x336.google.com with SMTP id 5b1f17b1804b1-40c6ea99429so12370495e9.3;
        Sat, 16 Dec 2023 08:27:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1702744026; x=1703348826; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=obq8YELyZEbke3rZFXNs+HxX85EVdqoEFqpud8UWY9A=;
        b=FhZydKrg3Q3p0YUgtcI55ejuucLXXNTBxJD9AsARqkKIf1vTM+/Ryx+6X5d3WdWeV1
         Ts7AXP/wR8e5SD2/YjY8CJvgSMjGfWkG99cttEJt1gS/pl1Sk44aY8yT7XRJMh22B2hF
         V7Ehs0y0/DtFsl5TWnteYHa1WHnExMct/3goT2NaVyUHJ8lhTJLCKtMfdn3ejqFaDSZJ
         GaK00fdSLUWb4x1gNBVlZpFX5qOPmkHrP19mtAzEBt4if44n1h4HQvkq6DKn3TzY/ofD
         9adOosp49Awf91wL1Uh0ogqmGHPsWz9Tp1y8RStfHd/dr3sWHxWI8KniE0qvkAdcjliz
         Zenw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702744026; x=1703348826;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=obq8YELyZEbke3rZFXNs+HxX85EVdqoEFqpud8UWY9A=;
        b=IX9rlB47bhSYndNdWF8t/xgDW9aW/2yPowp+G3VR9Iw5DcT+fdhGD+dwcFhK1PkzVC
         YQv4GIwX1fn9tHAcNwr8uTpzwFeusmI8nz6S+PRWjxz30NmpQPdpQxx4EBKwtH3Hm3ko
         kcV5pXno57qd0+VCehV/fnL+kgy9DKSWKaOFX7zSNaqz4zTbHsFS30WX/j7XWz9mSX5E
         lLQA8uL2PSqvzvxRIKFKovJMPPkHRVwKosFfE2ZAjBwU1Nm0cy91YB9JYGX94PsLUeA9
         9SVk311GX+m7VO4N6Bl7hAwreZvKsM0vkKWIK/GsfNU8A7/UachzM3ZgellAK5i+xSIN
         3eGw==
X-Gm-Message-State: AOJu0YwMZSoUXhWeUKB3CNS/m2Er17yINKGjTJm2n93XuC9ETsB7gN5x
	m/dkLt0VPQQcWLVVD+UdQg==
X-Google-Smtp-Source: AGHT+IGnNQencjmVxcsF2n4BTXIbiDj3zIdsmRa4iZ0r/ILDY0raJeyfz2VYhdxmAd1idrgHfog51w==
X-Received: by 2002:a7b:c4c7:0:b0:40c:6567:1d85 with SMTP id g7-20020a7bc4c7000000b0040c65671d85mr1569882wmk.232.1702744026333;
        Sat, 16 Dec 2023 08:27:06 -0800 (PST)
Received: from U4.lan ([2a02:810b:f40:4300:e807:d345:6f47:1db9])
        by smtp.gmail.com with ESMTPSA id st10-20020a170907c08a00b00a1cd0794696sm11990362ejc.53.2023.12.16.08.27.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 16 Dec 2023 08:27:06 -0800 (PST)
From: Alex Bee <knaerzche@gmail.com>
To: Sandy Huang <hjc@rock-chips.com>,
	=?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
	Andy Yan <andyshrk@163.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>
Cc: David Airlie <airlied@gmail.com>,
	Daniel Vetter <daniel@ffwll.ch>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Alex Bee <knaerzche@gmail.com>
Subject: [PATCH v2 01/27] dt-bindings: display: rockchip,inno-hdmi: Document RK3128 compatible
Date: Sat, 16 Dec 2023 17:26:12 +0100
Message-ID: <20231216162639.125215-2-knaerzche@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20231216162639.125215-1-knaerzche@gmail.com>
References: <20231216162639.125215-1-knaerzche@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231216_082711_535872_0FE5D095 
X-CRM114-Status: GOOD (  10.91  )
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

The integration for this SoC is different from the currently existing: It
needs it's PHY's reference clock rate to calculate the DDC bus frequency
correctly. The controller is also part of a powerdomain, so this gets added
as an mandatory property for this variant.

Signed-off-by: Alex Bee <knaerzche@gmail.com>
---
changes in v2:
 - clarify that the controller itself is part of the powerdomain
 - simplify clock-names
 - made power-domains property only allowed (and required) for new variant
 
 .../display/rockchip/rockchip,inno-hdmi.yaml  | 40 ++++++++++++++++++-
 1 file changed, 38 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/display/rockchip/rockchip,inno-hdmi.yaml b/Documentation/devicetree/bindings/display/rockchip/rockchip,inno-hdmi.yaml
index 96889c86849a..be78dcfa1c76 100644
--- a/Documentation/devicetree/bindings/display/rockchip/rockchip,inno-hdmi.yaml
+++ b/Documentation/devicetree/bindings/display/rockchip/rockchip,inno-hdmi.yaml
@@ -14,6 +14,7 @@ properties:
   compatible:
     enum:
       - rockchip,rk3036-inno-hdmi
+      - rockchip,rk3128-inno-hdmi
 
   reg:
     maxItems: 1
@@ -22,10 +23,19 @@ properties:
     maxItems: 1
 
   clocks:
-    maxItems: 1
+    minItems: 1
+    items:
+      - description: The HDMI controller main clock
+      - description: The HDMI PHY reference clock
 
   clock-names:
-    const: pclk
+    minItems: 1
+    items:
+      - const: pclk
+      - const: ref
+
+  power-domains:
+    maxItems: 1
 
   ports:
     $ref: /schemas/graph.yaml#/properties/ports
@@ -55,6 +65,32 @@ required:
   - pinctrl-names
   - ports
 
+allOf:
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: rockchip,rk3036-inno-hdmi
+
+    then:
+      properties:
+        power-domains: false
+
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: rockchip,rk3128-inno-hdmi
+
+    then:
+      properties:
+        clocks:
+          minItems: 2
+        clock-names:
+          minItems: 2
+      required:
+        - power-domains
+
 additionalProperties: false
 
 examples:
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
