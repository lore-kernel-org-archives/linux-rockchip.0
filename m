Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 13279C38147
	for <linux-rockchip@archiver.kernel.org>; Wed, 18 Jan 2023 23:32:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4GG17SqRXXRrDHSkjlVLXtfpi8proW4ELECDJod9g4M=; b=zuBEdgEIeOSsc7
	KMx083zj+T5OwOrr1764QKbDiqUcpZRHHyMglXG97VAvS83U7O6rYktfwhJ56pwKxOly3SxHgt952
	W10Wmc3FzU4ey/b3jUNPavgMvuIQOq2bAGC1T9gP0WDpr6d1u0Us1Fo+jwKnVT/KVPpMR5i2hlq/Z
	hhCXf0G6xxsz1ee3iKdkFwTFXZcv0arNYRwl+8zsKTwFFJdN2rNyu2XquzZrrJez41G8vHo2Fnjcq
	DdYmnEVzsmkmxKQRD8YL1fCkbJdBgH0ZTcS55PMm+TQBDtrlBFZ3S/4aEVwR2nvO1iAGhO7WWhamI
	VrfD48bhdtrD8XZ+l0HA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pIHuJ-002xWz-74; Wed, 18 Jan 2023 23:31:51 +0000
Received: from mail-oi1-x234.google.com ([2607:f8b0:4864:20::234])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pIHuF-002xUm-IL
	for linux-rockchip@lists.infradead.org; Wed, 18 Jan 2023 23:31:49 +0000
Received: by mail-oi1-x234.google.com with SMTP id v17so362645oie.5
        for <linux-rockchip@lists.infradead.org>; Wed, 18 Jan 2023 15:31:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=dgMx+QidzWwZB9d8EFxiQBvCTRSPbMX2JTxiBtWNFyk=;
        b=X6JBlJU/7tvkFPCMBD9PeXuiqWarnqBo/0icQo82UJM0vocSX4rHcq6S1QJHgYpV4S
         DVcispan4eaNtC1tRGvtn8crCZhQ7SwzEhGbPWRBdnrEr43QdN9UjicqydKQA9zSyA/q
         Hlerj6Lkfzop3hnRXzXuoYxHji7DzOWMskhB2WaZGyJUYl+7Weio2JOIfTxL+whBGsd6
         UgcZuOSisdXwJ3oYg3HnRqBT4Tfn5lMTqhCg7e1pzSQZ+ea5XGDeyWYGndH7X0B2UoJj
         hizTQEVsvZ+JrQQfZ2KtGqQWHQxFSmEAxHEtjOETkUxs4WZHZx3QQLHI0lUrEvWPQlra
         eI2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=dgMx+QidzWwZB9d8EFxiQBvCTRSPbMX2JTxiBtWNFyk=;
        b=zPA6jWSyff6pl9eAbAcxOV2KsNmjwzrtI6zKVbbYmyg6LWov82RZljhzpLKt2z6Sn1
         uiOCqu+n6EueI3+wuuKamXtt/XCvg55HzIazsWFryV4VYp5mAeellY71DWRkz01+rlwZ
         JaBvYC52VVdGQZeKAVueh69z0ScR8v0ppiz2+mq4TkLKa0QpumsvBBIEfpLQiMj51E0c
         1M3QGN46AskAF5fA+i8+j2kSzT89sfipZiR0cxz5Y/zUCd0ve0gGX4p4CYJjDh+GENeW
         DuhNgPWTKeVnj4mFPsSv1kG5Mi8bnFTKQzZony54mKq1lWFmwmUQQOlzkpLOCRQFYeFQ
         Isgg==
X-Gm-Message-State: AFqh2koqUBodFogBHURIowhw5/PABewkTYYF6cF/tdSQAXOBPvfeUkDx
	UxlAubzrx3xPj4NkyMJ/QImfLYg0Ay0=
X-Google-Smtp-Source: AMrXdXuj78srkvIFpMzKbCHNr28A9yO08G7rFmLRL2jCPRXug5HUzDh20lc/mwGJf5WtomBjD0LFuQ==
X-Received: by 2002:a05:6808:3082:b0:364:46ae:5aa5 with SMTP id bl2-20020a056808308200b0036446ae5aa5mr5985054oib.0.1674084705776;
        Wed, 18 Jan 2023 15:31:45 -0800 (PST)
Received: from localhost.localdomain ([76.244.6.13])
        by smtp.gmail.com with ESMTPSA id q10-20020acad90a000000b00354932bae03sm16966933oig.10.2023.01.18.15.31.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Jan 2023 15:31:45 -0800 (PST)
From: Chris Morgan <macroalpha82@gmail.com>
To: dri-devel@lists.freedesktop.org
Cc: linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	tzimmermann@suse.de,
	mripard@kernel.org,
	maarten.lankhorst@linux.intel.com,
	heiko@sntech.de,
	krzysztof.kozlowski+dt@linaro.org,
	robh+dt@kernel.org,
	daniel@ffwll.ch,
	airlied@gmail.com,
	sam@ravnborg.org,
	thierry.reding@gmail.com,
	linus.walleij@linaro.org,
	Chris Morgan <macromorgan@hotmail.com>,
	Maya Matuszczyk <maccraft123mc@gmail.com>,
	Rob Herring <robh@kernel.org>
Subject: [PATCH V11 2/4] dt-bindings: display: panel: Add Samsung AMS495QA01
Date: Wed, 18 Jan 2023 17:31:33 -0600
Message-Id: <20230118233135.1174859-3-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230118233135.1174859-1-macroalpha82@gmail.com>
References: <20230118233135.1174859-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230118_153147_625767_63453485 
X-CRM114-Status: GOOD (  12.06  )
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

From: Chris Morgan <macromorgan@hotmail.com>

Add documentation for Samsung AMS495QA01 panel (with Magnachip
D53E6EA8966 controller IC).

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
Signed-off-by: Maya Matuszczyk <maccraft123mc@gmail.com>
Reviewed-by: Rob Herring <robh@kernel.org>
---
 .../display/panel/samsung,ams495qa01.yaml     | 57 +++++++++++++++++++
 1 file changed, 57 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/display/panel/samsung,ams495qa01.yaml

diff --git a/Documentation/devicetree/bindings/display/panel/samsung,ams495qa01.yaml b/Documentation/devicetree/bindings/display/panel/samsung,ams495qa01.yaml
new file mode 100644
index 000000000000..58fa073ce258
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/panel/samsung,ams495qa01.yaml
@@ -0,0 +1,57 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/display/panel/samsung,ams495qa01.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Samsung AMS495QA01 panel with Magnachip D53E6EA8966 controller
+
+maintainers:
+  - Chris Morgan <macromorgan@hotmail.com>
+
+allOf:
+  - $ref: panel-common.yaml#
+
+properties:
+  compatible:
+    const: samsung,ams495qa01
+
+  reg: true
+  reset-gpios:
+    description: reset gpio, must be GPIO_ACTIVE_LOW
+  elvdd-supply:
+    description: regulator that supplies voltage to the panel display
+  enable-gpios: true
+  port: true
+  vdd-supply:
+    description: regulator that supplies voltage to panel logic
+
+required:
+  - compatible
+  - reg
+  - reset-gpios
+  - vdd-supply
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/gpio/gpio.h>
+    spi {
+        #address-cells = <1>;
+        #size-cells = <0>;
+        panel@0 {
+            compatible = "samsung,ams495qa01";
+            reg = <0>;
+            reset-gpios = <&gpio4 0 GPIO_ACTIVE_LOW>;
+            vdd-supply = <&vcc_3v3>;
+
+            port {
+                mipi_in_panel: endpoint {
+                  remote-endpoint = <&mipi_out_panel>;
+                };
+            };
+        };
+    };
+
+...
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
