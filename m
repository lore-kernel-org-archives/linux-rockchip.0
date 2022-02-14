Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D5BACC433FE
	for <linux-rockchip@archiver.kernel.org>; Mon, 14 Feb 2022 21:25:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ixjCDc3Zg58710yAu1rc4LIflwA7M9aMfa7oq09j0W4=; b=MCHf9NmwvaE85b
	J1kXn8luzU0JI+RO6YjAvcgsGjBRDqYn3MA8YWlcgqGCpjmTRPyXo3muLqqv2japfOh9AUgQlMrkK
	cHs/eSGED8uPuaDu98snJI81IeLeN708mOBPCw3UUAPaOI0YCgVe8UFBRGapPDMn//5O/sMTDW8mg
	cZD5tRTOjl8lyJjaOfZHiJ6P7E8LsxTSIkRwk/hYmzS8eE4VEu+01H34YqbP2cO4QQ3JIwOQD9vxl
	BUwlSUXHYVMWSCPJMTEoGvG5AhXbrJk7/G4yW+oB6ckZ1rIOPSGtG/jreopVcQZF7WWfRdHYlElMC
	HLCErqui+MkBkFtQcO8Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nJir3-00Gzyh-E9; Mon, 14 Feb 2022 21:25:53 +0000
Received: from smtp-relay-internal-1.canonical.com ([185.125.188.123])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nJinT-00GyDa-Dc
 for linux-rockchip@lists.infradead.org; Mon, 14 Feb 2022 21:22:14 +0000
Received: from mail-ed1-f72.google.com (mail-ed1-f72.google.com
 [209.85.208.72])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 2D82440341
 for <linux-rockchip@lists.infradead.org>; Mon, 14 Feb 2022 21:22:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
 s=20210705; t=1644873730;
 bh=fcG/L5ODzpr+LI/EAJmGBh5z8kctn/2OPAueI4k16fY=;
 h=From:To:Subject:Date:Message-Id:In-Reply-To:References:
 MIME-Version;
 b=ZmSRjHB2IkArs1+3lyCYWfB5SbGzhC/YasYmAVZALW2QioKqGWo9XOsJfQlVgNvtg
 o0UbWBXm9nEo9cyegCZ+RC/L9Y3Ombg1aDQDmDwCGvTbGAzOCRaPUcb8Ro38wyWNEH
 eGHRy/g959Rp3BEa1ZvqYWsxQLHHN/iN//XrDsg3JNkFQcFrtcK6x+VJJuSYU/5WbO
 VCi4mDEbtN8737/85Rto4M3Tww9PqO41yeiKirPLOl8oiUu41YhBxPDcurKJLpkks1
 K1ydY1eolW3+U/tO9LhHHgZxCL4ddlB/qep1y4MhESCk55IAea/wTwLdFJ0ohNCBlS
 7uNbloPPahbZg==
Received: by mail-ed1-f72.google.com with SMTP id
 cr7-20020a056402222700b0040f59dae606so11043923edb.11
 for <linux-rockchip@lists.infradead.org>; Mon, 14 Feb 2022 13:22:10 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=fcG/L5ODzpr+LI/EAJmGBh5z8kctn/2OPAueI4k16fY=;
 b=2m9RUhnH2c0otUTjkGYf+kAJWUhAAxoky71QFJJEMCFVlvlcnMWA4jTP0dSn11PJNR
 EW4QvIZ4lZMBHslgp3xxC+6yDFWr+hSFIg4LglkybovNpKL4nXTIQZ2O4IZFvwCjB1nQ
 cnyoCIUVEFAZJlREgmgAvfSPS4GlDouO2+sYrDHUViwGCfTfa8oMNXtJnP1ATLr3lp+b
 UBNabfYyTPsJ7usmQyXbbAgcL+Iy4UALLdc7t1TuoVdbiDr32tU6VQ31toTkOo/2jf7x
 yIupZfbXGEl9uMMl2lD+yz/5CTkWw52i6+dKZK1QRLVFQHUBR4peT//ZWo5/DdmL8Xuk
 svNg==
X-Gm-Message-State: AOAM530y5gKMh5xi4OWlC/C1FjYV0acZqvC6Egm8CW7n+GTFSdoRpsPV
 r3xT2o8AedL+1M9bhPx2BEUbOGBI56z0zRh6V1K/dySX2KAA4o0hXjD2s+HaNQidP90wsPHksU2
 Foa3Uue0GCtA1jAKgANbbsRafQp0HdRq4GuW+4g4iLDWZRMChZQ==
X-Received: by 2002:a17:907:1b24:: with SMTP id
 mp36mr543865ejc.519.1644873729724; 
 Mon, 14 Feb 2022 13:22:09 -0800 (PST)
X-Google-Smtp-Source: ABdhPJzl9EVISrmS6C69YAe5K0Xxu1OTn1NN475W1VUcNCLsva3N5oY9yHZqeVlKnpSoM0+sjZgNNQ==
X-Received: by 2002:a17:907:1b24:: with SMTP id
 mp36mr543835ejc.519.1644873729549; 
 Mon, 14 Feb 2022 13:22:09 -0800 (PST)
Received: from localhost.localdomain (xdsl-188-155-168-84.adslplus.ch.
 [188.155.168.84])
 by smtp.gmail.com with ESMTPSA id v24sm2327203ejf.7.2022.02.14.13.22.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 14 Feb 2022 13:22:09 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To: Thierry Reding <thierry.reding@gmail.com>,
 =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 Lee Jones <lee.jones@linaro.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Jernej Skrabec <jernej.skrabec@gmail.com>,
 Florian Fainelli <f.fainelli@gmail.com>,
 bcm-kernel-feedback-list@broadcom.com, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>,
 Heiko Stuebner <heiko@sntech.de>, Palmer Dabbelt <palmer@dabbelt.com>,
 Paul Walmsley <paul.walmsley@sifive.com>,
 Nobuhiro Iwamatsu <nobuhiro1.iwamatsu@toshiba.co.jp>,
 Philipp Zabel <p.zabel@pengutronix.de>, Anson Huang <anson.huang@nxp.com>,
 Vijayakannan Ayyathurai <vijayakannan.ayyathurai@intel.com>,
 Rahul Tanwar <rtanwar@maxlinear.com>, Jeff LaBundy <jeff@labundy.com>,
 Yash Shah <yash.shah@sifive.com>, Sagar Kadam <sagar.kadam@sifive.com>,
 Vignesh R <vigneshr@ti.com>,
 Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
 Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>,
 linux-pwm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-riscv@lists.infradead.org
Subject: [PATCH v2 06/15] dt-bindings: pwm: rockchip: Include generic pwm
 schema
Date: Mon, 14 Feb 2022 22:21:45 +0100
Message-Id: <20220214212154.8853-7-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220214212154.8853-1-krzysztof.kozlowski@canonical.com>
References: <20220214212154.8853-1-krzysztof.kozlowski@canonical.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220214_132211_683890_E27DFAED 
X-CRM114-Status: GOOD (  13.17  )
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

Include generic pwm.yaml schema, which enforces PWM node naming and
brings pwm-cells requirement.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Reviewed-by: Heiko Stuebner <heiko@sntech.de>
---
 .../devicetree/bindings/pwm/pwm-rockchip.yaml | 74 ++++++++++---------
 1 file changed, 38 insertions(+), 36 deletions(-)

diff --git a/Documentation/devicetree/bindings/pwm/pwm-rockchip.yaml b/Documentation/devicetree/bindings/pwm/pwm-rockchip.yaml
index 81a54a4e8e3e..a336ff9364a9 100644
--- a/Documentation/devicetree/bindings/pwm/pwm-rockchip.yaml
+++ b/Documentation/devicetree/bindings/pwm/pwm-rockchip.yaml
@@ -51,42 +51,44 @@ properties:
 required:
   - compatible
   - reg
-  - "#pwm-cells"
-
-if:
-  properties:
-    compatible:
-      contains:
-        enum:
-          - rockchip,rk3328-pwm
-          - rockchip,rv1108-pwm
-
-then:
-  properties:
-    clocks:
-      items:
-        - description: Used to derive the functional clock for the device.
-        - description: Used as the APB bus clock.
-
-    clock-names:
-      items:
-        - const: pwm
-        - const: pclk
-
-  required:
-    - clocks
-    - clock-names
-
-else:
-  properties:
-    clocks:
-      maxItems: 1
-      description:
-        Used both to derive the functional clock
-        for the device and as the bus clock.
-
-  required:
-    - clocks
+
+allOf:
+  - $ref: pwm.yaml#
+
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - rockchip,rk3328-pwm
+              - rockchip,rv1108-pwm
+
+    then:
+      properties:
+        clocks:
+          items:
+            - description: Used to derive the functional clock for the device.
+            - description: Used as the APB bus clock.
+
+        clock-names:
+          items:
+            - const: pwm
+            - const: pclk
+
+      required:
+        - clocks
+        - clock-names
+
+    else:
+      properties:
+        clocks:
+          maxItems: 1
+          description:
+            Used both to derive the functional clock
+            for the device and as the bus clock.
+
+      required:
+        - clocks
 
 additionalProperties: false
 
-- 
2.32.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
