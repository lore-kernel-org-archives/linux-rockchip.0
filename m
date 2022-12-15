Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 73D31C4332F
	for <linux-rockchip@archiver.kernel.org>; Thu, 15 Dec 2022 18:52:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wlEeHObhnr8djHMQv+Gh/TwAX6JmHvVlVdzzrZ252iw=; b=a8lIEBaet4Xhmj
	4YVGIJQAYOWrl/iy5iocNcyk2N8xzeqYIWZfbL+XzWXGv0f1e3AlychrvSj0rGx+Em0+h1mVW8mgE
	QSUOUNg4c8nSHdRsRk/5vGyxF3ws+xPm4z65EUJz3den51QW5OR7MDWqg0/78Yaa5UBlW1rIbY4Ef
	ImMRvjLhfh2YBJtqumaT2WDVj/81tnoE1nUHzlu40ACLyL7uR9zDGdFMzNDkAia5jNg3e0OOeG0md
	SDy/CV7PT+skFXZXsTzXWeN1nfi3DX/nWy8y99ATQ8ePpBMR4X2xULWlBxGQ/BAemMfEloNLLp3x2
	26C9qjf360HAHZDW8bfA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p5tLG-00Au0B-0l; Thu, 15 Dec 2022 18:52:26 +0000
Received: from mail-oa1-x2b.google.com ([2001:4860:4864:20::2b])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p5tLB-00Atx8-V1
	for linux-rockchip@lists.infradead.org; Thu, 15 Dec 2022 18:52:23 +0000
Received: by mail-oa1-x2b.google.com with SMTP id 586e51a60fabf-14449b7814bso447049fac.3
        for <linux-rockchip@lists.infradead.org>; Thu, 15 Dec 2022 10:52:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5MuYdw/TKmmfACRBxYwGpprkKtsguH2MTUAVNosMrsw=;
        b=EsXC1CFRIu5XE3KansyZwbZb7jE1sCuVK85dRB5EUL/tBP5HPxbRWXZSKC1Ch6b4H7
         AKfuIu7VNsaEX+ipmv5asB2xobhntEe/QpPaoEHiOW5byJqg6tb9d6eJE++SmuT7+lHH
         qSLNUX92iDTRWoexVLVCDimOKGDQFNhYlXb79X9gs+m6NRfxJIHvBz0oV1z66vOvrHJq
         A+aadhNsjfGHhWA3DgC3bA38GrnK5REZzvr6ObeU8nB85scdaNEANb2pHrnkcubTs1dj
         9sblbJcqdMF57hQ6UrKC05VfCzjb+G6hBE6me/HGVVEu/0tfxdWst4YA37gVN92M1T3P
         bCKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=5MuYdw/TKmmfACRBxYwGpprkKtsguH2MTUAVNosMrsw=;
        b=Nt6bC3eKTeTMrQu1BsFC4emCwUrPakEDJy37Mg2jYj98z7t90WXhwjtMjA8EvaGgSu
         gg7dMQvueTQy0ShagJhOfUNUu59lhqcsoocKb2UjT1P33CUYTinyUA5Mg7uOSsthq9b0
         NOMqfgUltVLUQDx4199WnnLogd78IZcVYezDyeNOkw8k3q3bg41X+mo0t3gVvMsQd8Vk
         6T21gAoI0PZByuC3XE1fznoZgA5WSOCR13oVS93bfR0R9wP+Sk6EpjrJuvmjWhwL5R2X
         IZkMnTViWcFvmclL49h0tI3jqtSXahDYpYY4omT0SpJzB3uA8vGbCnKOqXiesO40uJl9
         i7eA==
X-Gm-Message-State: ANoB5plkE2Udo1BhZTuyjf9eNLJFQrZ3fcKC98FeMoS1tYYPAA+oBC72
	dwsLim02UfdkuHTExcdumRo=
X-Google-Smtp-Source: AA0mqf4wcE/8fIZDMVCDOkQEMIihhUoRExOpVnSoMrmfKqR9LU03LgjASXuXaTwuSizCrfnVMpeUyQ==
X-Received: by 2002:a05:6870:f229:b0:141:e1f5:7194 with SMTP id t41-20020a056870f22900b00141e1f57194mr16740332oao.53.1671130339785;
        Thu, 15 Dec 2022 10:52:19 -0800 (PST)
Received: from localhost.localdomain ([76.244.6.13])
        by smtp.gmail.com with ESMTPSA id g11-20020a4ad84b000000b004a09df5a1dbsm72264oov.8.2022.12.15.10.52.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 15 Dec 2022 10:52:19 -0800 (PST)
From: Chris Morgan <macroalpha82@gmail.com>
To: dri-devel@lists.freedesktop.org
Cc: devicetree@vger.kernel.org,
	maccraft123mc@gmail.com,
	tzimmermann@suse.de,
	mripard@kernel.org,
	maarten.lankhorst@linux.intel.com,
	heiko@sntech.de,
	linux-rockchip@lists.infradead.org,
	krzysztof.kozlowski+dt@linaro.org,
	robh+dt@kernel.org,
	daniel@ffwll.ch,
	airlied@gmail.com,
	sam@ravnborg.org,
	thierry.reding@gmail.com,
	linus.walleij@linaro.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH V6 2/4] dt-bindings: display: panel: Add Samsung AMS495QA01
Date: Thu, 15 Dec 2022 12:52:09 -0600
Message-Id: <20221215185211.1560736-3-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20221215185211.1560736-1-macroalpha82@gmail.com>
References: <20221215185211.1560736-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221215_105222_023395_61BAC002 
X-CRM114-Status: GOOD (  11.98  )
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
