Return-Path: <SRS0=xWqI=CN=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 171B0C2BC11
	for <linux-rockchip@archiver.kernel.org>; Fri,  4 Sep 2020 19:19:18 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 9E5142073B
	for <linux-rockchip@archiver.kernel.org>; Fri,  4 Sep 2020 19:19:17 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="XwgsVg+U";
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="Ub8eFJOc"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 9E5142073B
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=YysT//eY2MCKxXpZ2tJGQkZymovsrE1VAWFrYFs1ZIs=; b=XwgsVg+UIOJRv8vEggFyC71QR
	f4sxbQ+bmext3/4THxn6LNrMTSIuKQj59YlUnVZqt1J+FB6iBaigd18HJdjGrcmSaI5s/Fo1z7Sb+
	HAcUwC6hCO3DEKbk4I6FRKNcTp+hPP0yjsxPpvepYMO7/u6xy7Qwt2yIJuAUuqxyGrNan0mm6wuSS
	iEaYYx70IszT8I/qdggdD72Ukrh+gDVHdCkSLLaYM/dshbesdMt6f9UbcZdgyrs4lG3gOkWrajrMt
	WkeB8bGccseQ03MNUlxONRXth4MHbwkz6piCrlFRO8nQaF/n1OTqlYKxPGdwtJMCH5CasAHsm4uCm
	XS9VmO40w==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kEHEv-00058C-4x; Fri, 04 Sep 2020 19:19:13 +0000
Received: from mail-pg1-x533.google.com ([2607:f8b0:4864:20::533])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kEHEd-00051C-4F
 for linux-rockchip@lists.infradead.org; Fri, 04 Sep 2020 19:18:57 +0000
Received: by mail-pg1-x533.google.com with SMTP id d19so4798846pgl.10
 for <linux-rockchip@lists.infradead.org>; Fri, 04 Sep 2020 12:18:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=+o1kTnhnkf8evW6DjpPlTqc5IbDQ2l+8IQNKfObPRcg=;
 b=Ub8eFJOcHhnkBjBNAVs7WoqcLH2R/3NwLdwwS0gTm/e8FHPJTcm9PdMr4xtQq687OW
 1kMyPGFLWm3aht89kYBy3SpWUepnRBWyzL84ZpVd2XD3P6ypNmxOLfHd32/Fz8mI2q18
 sFram9TXrekM5y0v7M3eFwJtFfjsjd6QIYsVU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=+o1kTnhnkf8evW6DjpPlTqc5IbDQ2l+8IQNKfObPRcg=;
 b=s0rohjUY91Yw2jHxwyarcBLqsja3ds5WOysx1ifoQLwSeWKeV+lCecVFAjFrrQS6c2
 0wqFYiSZ/BQWudJGPnKK+5YiV9LbcbcgYDiJv41wzrTiyEd2qWZL4QJVHEikdKsCBmOq
 oeSQRSGVm9XpWzqC6YwmpCpBKdy6eaDpdsuw9TY/6jN+qka9a3d3mYGCIeN58O8NR5rY
 gSlp1soQbYy9yYqrUpn0UfXik8zWhJPP5NnxdxC8FLSMczqgvL7Mn76Ga19oJrDyi89h
 y4RQEg0jFBSt2wwjbYcQKpKUcLNzPBRm6frKaxM4X8SNkP91jLihPo6rxlC226BHPuze
 wFhA==
X-Gm-Message-State: AOAM533eneT443T5Y+53Wvs1OrGmfBTeDZ7PwtGfQTRhrYsb18h/Bzxw
 crlHvNoc9wji7B57N1Gjttytpw==
X-Google-Smtp-Source: ABdhPJxeupP/Y8O6Ovq4KCzOQMOefBkJ1+gUf8zE0vGCTLY0jHVuKQCOd0weoS9P60yGUbzIS2mn/w==
X-Received: by 2002:a62:406:: with SMTP id 6mr10016207pfe.193.1599247132975;
 Fri, 04 Sep 2020 12:18:52 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c809:c7d5:b9ea:24bf:6b2b:1eee])
 by smtp.gmail.com with ESMTPSA id t4sm5986001pje.56.2020.09.04.12.18.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 04 Sep 2020 12:18:52 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: MyungJoo Ham <myungjoo.ham@samsung.com>,
 Chanwoo Choi <cw00.choi@samsung.com>, Rob Herring <robh+dt@kernel.org>,
 Heiko Stuebner <heiko@sntech.de>
Subject: [PATCH 1/3] dt-bindings: extcon: Document Type-C Virtual PD driver
Date: Sat,  5 Sep 2020 00:48:28 +0530
Message-Id: <20200904191830.387296-2-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200904191830.387296-1-jagan@amarulasolutions.com>
References: <20200904191830.387296-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200904_151855_205870_FA64880F 
X-CRM114-Status: GOOD (  15.11  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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
Cc: devicetree@vger.kernel.org, Tom Cubie <tom@radxa.com>,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Jagan Teki <jagan@amarulasolutions.com>, linux-amarula@amarulasolutions.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

USB Type-C protocol supports various modes of operations
includes PD, USB3, and Altmode. If the platform design
supports a Type-C connector then configuring these modes
can be done via enumeration.

However, there are some platforms that design these modes
of operations as separate protocol connectors like design
Display Port from on-chip USB3 controller. So accessing
Type-C Altmode Display Port via onboard Display Port
connector instead of a Type-C connector.

These kinds of platforms require an explicit extcon driver
in order to handle Power Delivery and Port Detection.

Document dt-bindings for it.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 .../extcon/extcon-usbc-virtual-pd.yaml        | 66 +++++++++++++++++++
 1 file changed, 66 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/extcon/extcon-usbc-virtual-pd.yaml

diff --git a/Documentation/devicetree/bindings/extcon/extcon-usbc-virtual-pd.yaml b/Documentation/devicetree/bindings/extcon/extcon-usbc-virtual-pd.yaml
new file mode 100644
index 000000000000..8110fbe2ddc2
--- /dev/null
+++ b/Documentation/devicetree/bindings/extcon/extcon-usbc-virtual-pd.yaml
@@ -0,0 +1,66 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/extcon/extcon-usbc-virtual-pd.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Type-C Virtual PD extcon
+
+maintainers:
+  - Jagan Teki <jagan@amarulasolutions.com>
+
+description: |
+  USB Type-C protocol supports various modes of operations includes PD,
+  USB3, and Altmode. If the platform design supports a Type-C connector
+  then configuring these modes can be done via enumeration.
+
+  However, there are some platforms that design these modes as separate
+  protocol connectors like design Display Port from on-chip USB3 controller.
+  So we can access Type-C Altmode Display Port via onboard Display Port
+  connector instead of a Type-C connector. These kinds of platforms require
+  an explicit extcon driver in order to handle Power Delivery and
+  Port Detection.
+
+properties:
+  compatible:
+    const: linux,extcon-usbc-virtual-pd
+
+  det-gpios:
+    description: Detect GPIO pin. Pin can be Display Port Detect or USB ID.
+    maxItems: 1
+
+  vpd-polarity:
+    description: USB Type-C Polarity. false for Normal and true for Flip.
+    type: boolean
+
+  vpd-super-speed:
+    description: USB Super Speed. false for USB2 and true for USB3.
+    type: boolean
+
+  vpd-data-role:
+    description: USB Data roles for Virtual Type-C.
+    $ref: /schemas/types.yaml#definitions/string
+
+    enum:
+      - host
+      - device
+      - display-port
+
+required:
+  - compatible
+  - det-gpios
+  - vpd-data-role
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/gpio/gpio.h>
+    #include <dt-bindings/pinctrl/rockchip.h>
+
+    virtual_pd: virtual-pd {
+        compatible = "linux,extcon-usbc-virtual-pd";
+        det-gpios = <&gpio4 RK_PD1 GPIO_ACTIVE_LOW>;
+        vpd-data-role = "display-port";
+        vpd-super-speed;
+    };
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
