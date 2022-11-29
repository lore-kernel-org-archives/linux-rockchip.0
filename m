Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0114DC433FE
	for <linux-rockchip@archiver.kernel.org>; Tue, 29 Nov 2022 17:29:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hIV7JOyRCtJeWSFBTfT64zvci08E9s9/ViYMf8U8KXM=; b=kzZr5GlOSLmWEH
	vmZKND6BsYCre9pevAA0rvjao2I9vhDmK/ayk4vG1rgHnQW8QaKkVsprGIVDyFsP8iINKsMLZw+ZS
	edX/GqTT3sedtjgKGVzdg38GLxnX4aftfRdUpkswixOmTAITRVzlCVhn2HY5mbRwnmv/WCkakL/bs
	6T8iEjNXodPC8OKITBUrzf6F9vHKeZMo9bhbG4pGotf2wEs77Qx6IyPJfU8duaHDUGghRU6WEFSJK
	TIuG6mdBaefEnyQ/YYTDMbRDCZbRPJ9OWY5Mmy8Bl0xdYmaSyQ5X37ekk36vLIbOM+RVZTZjY94Ht
	DAU3RVk9EGn55ha7tLgQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p04Q9-00AWNZ-Jn; Tue, 29 Nov 2022 17:29:25 +0000
Received: from mail-ot1-x32e.google.com ([2607:f8b0:4864:20::32e])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p04Q6-00AWLk-7f
	for linux-rockchip@lists.infradead.org; Tue, 29 Nov 2022 17:29:23 +0000
Received: by mail-ot1-x32e.google.com with SMTP id t19-20020a9d7753000000b0066d77a3d474so9549926otl.10
        for <linux-rockchip@lists.infradead.org>; Tue, 29 Nov 2022 09:29:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=udm6nw1ZDjvFU6fzxBUSlncrdZ0RFybOK/j61va2T24=;
        b=nvWL9pwomvK8xrnPXbJX8fRHcQXgI9500QQwdFVUnOfMvcRx9M6mqyJQkZIQNnvJrg
         j8dJx3g13FyIv/eUlzX9YSc7qOhQMGM9e4rGDBMjDrX6TeN6FXU+PeGjPZUfuSf/VEq7
         qF0JT95CMpYdbCw2+yH/WH6ijy7F7mLjzh6RPYmex3TKLGHs5iSjbOkORdelyoxO0ID/
         jYH0VwKk7XsrNkKqs9g36GHWn5syqepcEMHTJcccJskguR59A/GV9hyGjU+3eayiSg0r
         DyR1Ph/9cU6d1O32U4Khpgt9SHF4Y9qggvFEqzvheYxI1anrF6MCcZv270rkb6wyLr8P
         6e8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=udm6nw1ZDjvFU6fzxBUSlncrdZ0RFybOK/j61va2T24=;
        b=xjt9F8utPLes2F8IrqhWrBdCLWyA4yX+n/zv250BlbPseyH2mhSTWvGwHbXC+MNHPU
         x3ouxU/pKloigM9EcKSJReUylKfGs4QSdenEKvdsrggOAgm9wNymjgXd/Oi0S1ANr098
         nLpdBcKUQTe7LHwUUvdSBPf9WB7/ihQSue4KlgtlYv56tVET0rrm/K4UK4eqqu/YYgor
         54j4nciOcc2Jbzm9ppTSx0UvUXsi/dIcXSojRBFH7pqcIiizeeZJCY1QHwH28sjgajR9
         E+kaD6WtHRzu3JopEE945xRK6oGctJcDbLUpof8JZwsgf5HVPmkFNWQJpREjHhKlPkdR
         x1SA==
X-Gm-Message-State: ANoB5pkxRwSs7ppoLhY2OJzeq87Rh+qFLj1CJzdJShA4fp5mVQ55PDmy
	ZYhMN82bFczy0wK5bu5nGgwkOYHfZNs=
X-Google-Smtp-Source: AA0mqf7f5CKAnvu+qFZ6za7Y3ODRll+oNHf2qMqp45z8JYf7KKFwqWCfhpvN8iCCVN1l0vyyYi0+3w==
X-Received: by 2002:a9d:2961:0:b0:66c:4e7a:a316 with SMTP id d88-20020a9d2961000000b0066c4e7aa316mr29565998otb.329.1669742959943;
        Tue, 29 Nov 2022 09:29:19 -0800 (PST)
Received: from localhost.localdomain (76-244-6-13.lightspeed.rcsntx.sbcglobal.net. [76.244.6.13])
        by smtp.gmail.com with ESMTPSA id l26-20020a9d709a000000b00661b46cc26bsm6224546otj.9.2022.11.29.09.29.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 29 Nov 2022 09:29:19 -0800 (PST)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: devicetree@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	maccraft123mc@gmail.com,
	heiko@sntech.de,
	krzysztof.kozlowski+dt@linaro.org,
	robh+dt@kernel.org,
	daniel@ffwll.ch,
	airlied@gmail.com,
	sam@ravnborg.org,
	thierry.reding@gmail.com,
	linus.walleij@linaro.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH V4 1/3] dt-bindings: display: panel: Add Samsung AMS495QA01
Date: Tue, 29 Nov 2022 11:29:10 -0600
Message-Id: <20221129172912.9576-2-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221129172912.9576-1-macroalpha82@gmail.com>
References: <20221129172912.9576-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221129_092922_294051_D0F994E0 
X-CRM114-Status: GOOD (  12.57  )
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

Add documentation for the Samsung AMS495QA01 panel.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
Signed-off-by: Maya Matuszczyk <maccraft123mc@gmail.com>
---
 .../display/panel/samsung,ams495qa01.yaml     | 57 +++++++++++++++++++
 1 file changed, 57 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/display/panel/samsung,ams495qa01.yaml

diff --git a/Documentation/devicetree/bindings/display/panel/samsung,ams495qa01.yaml b/Documentation/devicetree/bindings/display/panel/samsung,ams495qa01.yaml
new file mode 100644
index 000000000000..dd4b9b626fb2
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/panel/samsung,ams495qa01.yaml
@@ -0,0 +1,57 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/display/panel/samsung,ams495qa01.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Samsung AMS495QA01 4.95in 960x544 DSI/SPI panel
+
+maintainers:
+  - Chris Morgan <macromorgan@hotmail.com>
+
+allOf:
+  - $ref: panel-common.yaml#
+  - $ref: /schemas/spi/spi-peripheral-props.yaml#
+
+properties:
+  compatible:
+    const: samsung,ams495qa01
+
+  reg: true
+  reset-gpios: true
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
+  - vdd-supply
+
+unevaluatedProperties: false
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
+            enable-gpios = <&gpio4 15 GPIO_ACTIVE_HIGH>;
+            reset-gpios = <&gpio4 0 GPIO_ACTIVE_LOW>;
+            vdd-supply = <&vcc3v3_lcd0_n>;
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
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
