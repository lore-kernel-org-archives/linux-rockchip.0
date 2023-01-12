Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 36E8DC61DB3
	for <linux-rockchip@archiver.kernel.org>; Thu, 12 Jan 2023 17:54:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4GG17SqRXXRrDHSkjlVLXtfpi8proW4ELECDJod9g4M=; b=rnUgX3rHa1qKBL
	v2ov+cDqWwL5GCnSiXhJ3FZIEwwgRdAl8XDwVOHttlC9ylMAuJtGWmJ6CGOYnae16gXQ1kOcWKxLK
	nljufjRpfHaCUNCm7f8Jsi3vwK9EEeeYCoYlAMwmMHaOlPgtE5bBPwuTciDiWe+9FGO8DGU0Uobtj
	K70mI0CoSEejW56z7kmbDHmQvkTemt9pExsTku2RJKtqeCZD4wltzFw/JjAlS0aMNJBOcq/Mf3U4D
	4b9mDnxPTgmmjy7Zh/uhlR7QX2MboQe4P3GDd2v/yTXnAXv31El4CAk0WvB5+FiQ+5iRLYXfiQBQ0
	d8tBmLuGHY9HIHfbNooA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pG1mQ-00G8ED-5L; Thu, 12 Jan 2023 17:54:22 +0000
Received: from mail-oa1-x2d.google.com ([2001:4860:4864:20::2d])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pG1mA-00G84B-Gl
	for linux-rockchip@lists.infradead.org; Thu, 12 Jan 2023 17:54:10 +0000
Received: by mail-oa1-x2d.google.com with SMTP id 586e51a60fabf-142b72a728fso19671253fac.9
        for <linux-rockchip@lists.infradead.org>; Thu, 12 Jan 2023 09:54:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=dgMx+QidzWwZB9d8EFxiQBvCTRSPbMX2JTxiBtWNFyk=;
        b=jvSE9f+Bm4PM6i8gp+gG4lmnpImnH3/NoZWA86JpoIpZsIyfAv3iy/IcwO742mXB3u
         /zwAgiKkKw69OmqnlJQwdbOzQXySY40V3rlIB/jwkae/+gsxQSqZCTJQx/gZauR3s428
         EDAxO/BBILo+PDAjVT+iilsVBqYbiQuAmWLcb7/qcuz1ksyDL6fveCJf54EUvW7PcbYx
         +URrq4S29msEGO3LZ0hAgBNFAFIvRYoBY7ycyujotelk4tS86PVtpY0IJhX4TXuRu8f0
         5eBQzT9bl59CeqxMTtCfVOaiMf50aMfIbuFjq7ug/tTKiChesrZSAbda3CKBjt5uKMHo
         icGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=dgMx+QidzWwZB9d8EFxiQBvCTRSPbMX2JTxiBtWNFyk=;
        b=PZEvTmXYE9QsGzcya8ACr6BiHH79UabWhmfBBJk55EAKOiOFOF4gYQPUvZaKHtium6
         lU0qd8uoU6jBR1ZNyfWMbc9ti4QizdQtIF6O6C0svBUjdTlSa7bYdh5TRvGIMC66i8fj
         qFyC76NywyGHPNL+l/0lFBed+Nz5LtAJeppQKEy1i4NYfVmWUZ08gMCbrV9ERyKnPPu0
         TZZRFz3pg+JQWXgh+t+kW0rzVf5nTv2f9RbKvkOPrallvb94La+JcaYgbK1nlOkP9D4U
         057qkgUGe4D5nqykplaN5/tO7fvRZ1gABo3kx28JkesC55v/RwUAG2AlYEP65EMTad5l
         VvJg==
X-Gm-Message-State: AFqh2kovFgUlq86Xa/XP3ZDuKmJCYuHV6cHbu7wAbevs178RKQcz6RzA
	ZYGIWENgD1YfapAz3UiAze4=
X-Google-Smtp-Source: AMrXdXsEeZ++yki3Zow70/z39R4DHq5FMuMU/XBn8Ia0aX+tI4LICosOB8DxRU6z5e6gylKLEcSwzQ==
X-Received: by 2002:a05:6870:3e0e:b0:150:878c:d4c with SMTP id lk14-20020a0568703e0e00b00150878c0d4cmr22371019oab.3.1673546045296;
        Thu, 12 Jan 2023 09:54:05 -0800 (PST)
Received: from localhost.localdomain (76-244-6-13.lightspeed.rcsntx.sbcglobal.net. [76.244.6.13])
        by smtp.gmail.com with ESMTPSA id v17-20020a05687105d100b0014866eb34cesm9317049oan.48.2023.01.12.09.54.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Jan 2023 09:54:05 -0800 (PST)
From: Chris Morgan <macroalpha82@gmail.com>
To: dri-devel@lists.freedesktop.org
Cc: linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linus.walleij@linaro.org,
	maccraft123mc@gmail.com,
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
	Chris Morgan <macromorgan@hotmail.com>,
	Rob Herring <robh@kernel.org>
Subject: [PATCH V10 2/4] dt-bindings: display: panel: Add Samsung AMS495QA01
Date: Thu, 12 Jan 2023 11:53:56 -0600
Message-Id: <20230112175358.421975-3-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230112175358.421975-1-macroalpha82@gmail.com>
References: <20230112175358.421975-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230112_095406_616608_F8B0CC7A 
X-CRM114-Status: GOOD (  12.20  )
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
