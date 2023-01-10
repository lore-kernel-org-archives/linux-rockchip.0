Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6AA11C61DB3
	for <linux-rockchip@archiver.kernel.org>; Tue, 10 Jan 2023 20:03:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4GG17SqRXXRrDHSkjlVLXtfpi8proW4ELECDJod9g4M=; b=o/JBR+Ko4ap13C
	601EI5mxuJW4Lu+aPfuRZh9ZHCimzGlfAvI9537gqZmvcjh7367vq1n4jlrdwE04AIpnYz6LNJW6B
	ERGS1FF3S4YPzi8dCXw0W7gY7yZYTYhHfVFOUAFQIeEWniWsYB+egYOQqRF+7spNy4iKC7PhajSYP
	opZ2XeN4Ma82WOj48eTNKDCfTe0Cuvsdb8qaZhwbeUuYt9o/NRPZCpNoA3yhAr4Lfng64ZjUNF+Fa
	+wEKVF2sVusRUPso3zLOn8S0xsaGqmy/5diXYh9xh21TwE9BLoULC2xp/ETCgdJMk3cNAzDFvwAy3
	eEEa+6IoWtdpVgY5e/vg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFKq0-008QVz-7r; Tue, 10 Jan 2023 20:03:12 +0000
Received: from mail-oo1-xc31.google.com ([2607:f8b0:4864:20::c31])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFKpv-008QSv-HS
	for linux-rockchip@lists.infradead.org; Tue, 10 Jan 2023 20:03:09 +0000
Received: by mail-oo1-xc31.google.com with SMTP id h3-20020a4aa283000000b004ead187bd6eso3502573ool.5
        for <linux-rockchip@lists.infradead.org>; Tue, 10 Jan 2023 12:03:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=dgMx+QidzWwZB9d8EFxiQBvCTRSPbMX2JTxiBtWNFyk=;
        b=lyuDrX+JUiUXvd41LuqumERhjN0RSpIxWin21vu+wf1V0YRZkVgID+091W5ug1Vi/q
         Qa7TPma391EC7LZEDf/LYaocyRLjZayXOMlI+VuuhPk+8ovZ56ZsXrSjA6F8KWmJavxp
         y5gcfNraHjo9bUcEZuhWviC6v2LmKNa9dEBeBnHDeLuAj25e7k0oJYsmjiJtrgB7YPc2
         xvKS52Io0b0TlbXjf+wXmPTzVCY4CDIWejtsn1ZcVNynKRVJKChsyLKOA/mzJ1E/cl/5
         +SyNmOs5yS5gAbtEzq6SUE4Dq+hTOdpZ/TytODXlaIwoob1ItgiQq8FL5nROvdHeQx5U
         tufw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=dgMx+QidzWwZB9d8EFxiQBvCTRSPbMX2JTxiBtWNFyk=;
        b=nffihiA8fBwqy7uAgVQmVfHnhRwt1ErHHflNgp7xXUInRQaLVWsS7ODxBClLXCwbxe
         E1epF35CVxHCHs1FSmre6JbrYqw2oiGTlUdLz0dGSQVER0u5BKaVC9DCD4LniD/vigm7
         HZtLDioDwhvElPoEeMygrCTJ2dCUgOKsrXoUpNqU+GSyr6WItlYLvuTqnUxgPjYjJIkw
         nYbtACsTAOceABXXDas29eBFAGDzZQDK+u9scVG3k2TxjChEa/K35/xQvYDWwc8elb2K
         GbWK0rpXR1kFSMnSHmjAzTfqgliNnfUn+32s7oml/tnr9D8ltQjVyy1EZ4MXjP93fdOl
         rjQQ==
X-Gm-Message-State: AFqh2kol5pTwBTCfxCEe+zabl3wDoApTMop/CO9d2+kAsnGkZ5Y0Oot6
	MD4lcTX8qOVlCg4rYiYDZWo=
X-Google-Smtp-Source: AMrXdXttj8wh0ymNl53Hrx8x6W1dqMYoQv3OPum00In+oTXiJ/NIMK/j/iDobxR7iiXYnxWjf+3yDQ==
X-Received: by 2002:a4a:97b1:0:b0:49f:dba7:5e65 with SMTP id w46-20020a4a97b1000000b0049fdba75e65mr28394714ooi.3.1673380985493;
        Tue, 10 Jan 2023 12:03:05 -0800 (PST)
Received: from localhost.localdomain (76-244-6-13.lightspeed.rcsntx.sbcglobal.net. [76.244.6.13])
        by smtp.gmail.com with ESMTPSA id r4-20020a4aad04000000b004a394578e14sm6089779oon.32.2023.01.10.12.03.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Jan 2023 12:03:05 -0800 (PST)
From: Chris Morgan <macroalpha82@gmail.com>
To: dri-devel@lists.freedesktop.org
Cc: linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
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
	linus.walleij@linaro.org,
	Chris Morgan <macromorgan@hotmail.com>,
	Rob Herring <robh@kernel.org>
Subject: [PATCH v8 2/4] dt-bindings: display: panel: Add Samsung AMS495QA01
Date: Tue, 10 Jan 2023 14:02:53 -0600
Message-Id: <20230110200255.1218738-3-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230110200255.1218738-1-macroalpha82@gmail.com>
References: <20230110200255.1218738-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230110_120307_600104_C87F3646 
X-CRM114-Status: GOOD (  12.69  )
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
