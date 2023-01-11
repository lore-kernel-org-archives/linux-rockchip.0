Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D42ABC5479D
	for <linux-rockchip@archiver.kernel.org>; Wed, 11 Jan 2023 16:30:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4GG17SqRXXRrDHSkjlVLXtfpi8proW4ELECDJod9g4M=; b=FzBqeRrtlbFDuR
	xufFjMThPhji1zpnY/uIMnaWgjplKsIfq6edevII1CvJrRqUr9uoIaonFID/pcLplghZ+ugROMLY7
	wibw+C/ddRb8QXdZWNtkijIjtbSRmJCDXXnOLkmy5nZgpcaG/JxV+L97fzcic3+c1PdbwGuzxSeTJ
	FnyCv/jMoDfO99l7xjaJxusSCtq+ly1Vt9Xkgy3eJfxy+mnB5Eh+RZT3tudk//xicysSfdOtgXq5S
	0Tq9PAmNIY6i5qHnQA/w9OeEjUq/aZDSmE0RP93whZktel5XnSZJ6aUlL9WcziJR9t84B7cDUkBRy
	isrxVWkvHUUE0APCdVzg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFdzj-00CAiR-M6; Wed, 11 Jan 2023 16:30:31 +0000
Received: from mail-oa1-x2b.google.com ([2001:4860:4864:20::2b])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFdzd-00CAeN-Fl
	for linux-rockchip@lists.infradead.org; Wed, 11 Jan 2023 16:30:28 +0000
Received: by mail-oa1-x2b.google.com with SMTP id 586e51a60fabf-14455716674so16084092fac.7
        for <linux-rockchip@lists.infradead.org>; Wed, 11 Jan 2023 08:30:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=dgMx+QidzWwZB9d8EFxiQBvCTRSPbMX2JTxiBtWNFyk=;
        b=WT0lrls/1NRvzGaMWgki+Kf06c74litRYkqgkhusilCgueQRjinCNzh+VaMj0tlaSl
         nLNp24cq5/pqSwub4Lwy5Mnth0Tuy9fGHZQeUGGgSHs2ac9p9+hPTF1iQWAMgC7Z6tJc
         8CkjUDNQHT5dO5FYBKUD3p5GovXwRJGOfYwhNRGLdq7cdrgyAKawkZ0iT33u07fvLEhP
         UFVeFTtkjf70xZKeki0jpFAYDvuhWCxGioGCEINVZz7yyKqjj30dUuMs87/d6CqnFD+1
         QbGjwcnNdbUbn1rt3uxO2HNebrLLThPAxbSfGf6LPeb3+rYMvmWh0MHxOdroDVDKc3qh
         f12w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=dgMx+QidzWwZB9d8EFxiQBvCTRSPbMX2JTxiBtWNFyk=;
        b=kmuyCYKkx3MXrp/JHUv/s4QntdiPurzKYwqteVU5abPVNe7uHYbUw4KL/iDqmMV+pW
         ELA3oGY0BP71CSzQZxzSQiYkjGgD2Jm7O8s+ws98AWD17K/ErtCaiyfnw2E1JwWzs7nc
         d2Si3nYGhJBMrjXpCgmt5agQD67b1K1mLDuatjKOkGU1Ie/rkRtG3TdglKW+TTc4GZ9Y
         fLERlaWjB5j/WaaKEkwuGOqBBKk8In19DRAinguxz01dm7AO97NhU11ZHQqVvEZZJK2+
         eHHBQyhyn2sFI3DYVlUm2tTxcDZzTJ26//+PvDq3fsQLli156083ioqk+91KRqUcTIpl
         nBsg==
X-Gm-Message-State: AFqh2kospGJ6NK4Ui8IO5DV483KE5k/TLIJnKkeVguiv/KJj83PF+jg8
	AvlkLM8cfeMrVNAFcMXL9DY=
X-Google-Smtp-Source: AMrXdXvi7ggD51qa2JEi1p6UAGFPT4BlIR6rfPAnoDpSqqMNavNojmnZTQG9Z8I+WChJtPs68HdNDQ==
X-Received: by 2002:a05:6871:4e93:b0:144:c5e3:643a with SMTP id uk19-20020a0568714e9300b00144c5e3643amr1594353oab.4.1673454623056;
        Wed, 11 Jan 2023 08:30:23 -0800 (PST)
Received: from localhost.localdomain (76-244-6-13.lightspeed.rcsntx.sbcglobal.net. [76.244.6.13])
        by smtp.gmail.com with ESMTPSA id z13-20020a056870738d00b0013ae39d0575sm7629003oam.15.2023.01.11.08.30.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Jan 2023 08:30:22 -0800 (PST)
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
Subject: [PATCH v9 2/4] dt-bindings: display: panel: Add Samsung AMS495QA01
Date: Wed, 11 Jan 2023 10:30:10 -0600
Message-Id: <20230111163012.310945-3-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230111163012.310945-1-macroalpha82@gmail.com>
References: <20230111163012.310945-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230111_083025_565522_BEF3DF1D 
X-CRM114-Status: GOOD (  12.05  )
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
