Return-Path: <SRS0=yzvA=K3=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E7E3C47080
	for <linux-rockchip@archiver.kernel.org>; Tue,  1 Jun 2021 16:48:33 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 2611461263
	for <linux-rockchip@archiver.kernel.org>; Tue,  1 Jun 2021 16:48:33 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 2611461263
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6mPLZqUfBHp64WicaVxLoOge5EgFxRL+pW50lHywtWs=; b=FK6C+tCxp9rrTl
	AJQ7lEZfrsliqZzO75RGfaTNQlFhG5WINolsEAG+e81FlqcTnTGKr6xhRsDllIsIYkVbvjwxg77LI
	YifHF9ri/OLQGfAyQ2prnHsH54MYjKQ6yGU8zldSxHfnxfszrhCUNCIQ72d2Q9sl5KJdMxA4aU4po
	kjFcAzIbg9Qp6XYJZ/VDSPK5I5cnfmqFjQI73/k+aT5OJ7nrAkg9/GXWPuhaoRrLtRPgSYGWLHo2c
	CxFgssDCPTNpiTQaH6ffQ1+E+oJcg9FrZeQuqRBJIjXrU0bz/b3e4zVGxYWg8rl5o/nq/gFj5bvoz
	sqR2w9iuuREbPK4vzivA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lo7Z6-00HXaj-Np; Tue, 01 Jun 2021 16:48:28 +0000
Received: from mail-ej1-x631.google.com ([2a00:1450:4864:20::631])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lo7Yq-00HXRl-4b; Tue, 01 Jun 2021 16:48:13 +0000
Received: by mail-ej1-x631.google.com with SMTP id e18so7033482eje.5;
 Tue, 01 Jun 2021 09:48:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=WOOpFeGlUeHFuUxXH9E07hzApnK74f31cpwmZjz5Zko=;
 b=TCYsPhZlkTdt56Sc8WOANos3NIJBG6aRMu3P1GjmG3ZProqmOWonYw4stDOm46sZu6
 Wr7tajYEhyCk/rDNuxzMwZZsse/CP8O+aH+IKMU9if9G2oAlyU5NIgaxfqgHTBi6XuxO
 JyMBr/bxmAJUdorqLZOiG6yTLQmzwa0HSzZn5G+zrYcnozftLdL7ViFi0K2RYRn9bAhA
 ixCytL4YEGNwRsYXUkAe+F7y1M9ozTVim8H0O5ahdmThC+bq0sQVAgt3mqmEPX54zdbx
 rfnRMKvs2TpUJ1Hd3S3LO0gR2vts4cmF9ENeBmllKOgIYrE9PJuwa8Zfl7E48iY6cEr9
 bpmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=WOOpFeGlUeHFuUxXH9E07hzApnK74f31cpwmZjz5Zko=;
 b=pU9oQ1itqf+dfHHBOTkwZ+V3LQKUx8wJby4FbHzwQQGJJfoYcpr7bnTtLSvlUbrttD
 hNgJmZHhBFDu0ix95u2XFnER5U5Er8gE++NOWEOwe4s727WsofBxLZJ6SnYJjGPZ5zuM
 Ygu2Vkh1pYSGKxEacyIWEF6j/TffqVD49BarTBiBkZAKwbVoiHwC1av24IB8UvhCB0Q1
 zOuxJ65kV7i/6vsb99aN9v0SjPiJ/Z7Cqb2co3WJUrq5th47Ee6ihwJthxkt1XwExqLU
 4GmcWJM04t/21c5iWGHPocDWJ4dFoLv/ORm0i3tGo/ahsOcOi4+w6EzLImGH+kjQe8oU
 36Ag==
X-Gm-Message-State: AOAM532vZSIBjQGbaVzJONz4Of7T/7LvBHmi8O28iO5R6iCEY06lCXKd
 kaZkof/XkHBHsJjFeJfghzM=
X-Google-Smtp-Source: ABdhPJyzoB1A9RmPJMtKMwSU6+NKgfxr94jq881eNtKLMY8sLgS/qWtnESQyqvyJ7POkRqj8V9mC2Q==
X-Received: by 2002:a17:906:ccde:: with SMTP id
 ot30mr30987501ejb.353.1622566091026; 
 Tue, 01 Jun 2021 09:48:11 -0700 (PDT)
Received: from debian.home (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id q18sm8327750edd.3.2021.06.01.09.48.09
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 01 Jun 2021 09:48:10 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Cc: robh+dt@kernel.org, kishon@ti.com, vkoul@kernel.org, t.schramm@manjaro.org,
 linux-phy@lists.infradead.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v7 1/5] dt-bindings: phy: rename phy nodename in
 phy-rockchip-inno-usb2.yaml
Date: Tue,  1 Jun 2021 18:47:56 +0200
Message-Id: <20210601164800.7670-2-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20210601164800.7670-1-jbx6244@gmail.com>
References: <20210601164800.7670-1-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210601_094812_199935_016CF062 
X-CRM114-Status: GOOD (  12.92  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

The pattern: "^(|usb-|usb2-|usb3-|pci-|pcie-|sata-)phy(@[0-9a-f,]+)*$"
in phy-provider.yaml has required "#phy-cells" for phy nodes.
The "phy-cells" in rockchip-inno-usb2 nodes are located in subnodes.
Rename the nodename to pattern "usb2phy@[0-9a-f]+$" to prevent
notifications. Remove unneeded "#phy-cells" from parent node.
Also sort example.

make ARCH=arm dtbs_check
DT_SCHEMA_FILES=~/.local/lib/python3.5/site-packages/dtschema/schemas/
phy/phy-provider.yaml

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
Acked-by: Rob Herring <robh@kernel.org>
---
 .../devicetree/bindings/phy/phy-rockchip-inno-usb2.yaml       | 11 +++--------
 Documentation/devicetree/bindings/soc/rockchip/grf.yaml       |  4 ++--
 2 files changed, 5 insertions(+), 10 deletions(-)

diff --git a/Documentation/devicetree/bindings/phy/phy-rockchip-inno-usb2.yaml b/Documentation/devicetree/bindings/phy/phy-rockchip-inno-usb2.yaml
index a5b027a6e..5bebd86bf 100644
--- a/Documentation/devicetree/bindings/phy/phy-rockchip-inno-usb2.yaml
+++ b/Documentation/devicetree/bindings/phy/phy-rockchip-inno-usb2.yaml
@@ -30,9 +30,6 @@ properties:
   "#clock-cells":
     const: 0
 
-  "#phy-cells":
-    const: 0
-
   clocks:
     maxItems: 1
 
@@ -120,7 +117,6 @@ required:
   - reg
   - clock-output-names
   - "#clock-cells"
-  - "#phy-cells"
   - host-port
   - otg-port
 
@@ -131,26 +127,25 @@ examples:
     #include <dt-bindings/clock/rk3399-cru.h>
     #include <dt-bindings/interrupt-controller/arm-gic.h>
     #include <dt-bindings/interrupt-controller/irq.h>
-    u2phy0: usb2-phy@e450 {
+    u2phy0: usb2phy@e450 {
       compatible = "rockchip,rk3399-usb2phy";
       reg = <0xe450 0x10>;
       clocks = <&cru SCLK_USB2PHY0_REF>;
       clock-names = "phyclk";
       clock-output-names = "clk_usbphy0_480m";
       #clock-cells = <0>;
-      #phy-cells = <0>;
 
       u2phy0_host: host-port {
-        #phy-cells = <0>;
         interrupts = <GIC_SPI 27 IRQ_TYPE_LEVEL_HIGH 0>;
         interrupt-names = "linestate";
+        #phy-cells = <0>;
       };
 
       u2phy0_otg: otg-port {
-        #phy-cells = <0>;
         interrupts = <GIC_SPI 103 IRQ_TYPE_LEVEL_HIGH 0>,
                      <GIC_SPI 104 IRQ_TYPE_LEVEL_HIGH 0>,
                      <GIC_SPI 106 IRQ_TYPE_LEVEL_HIGH 0>;
         interrupt-names = "otg-bvalid", "otg-id", "linestate";
+        #phy-cells = <0>;
       };
     };
diff --git a/Documentation/devicetree/bindings/soc/rockchip/grf.yaml b/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
index 84bdaf88d..43c288708 100644
--- a/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
+++ b/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
@@ -184,7 +184,7 @@ allOf:
         - "#size-cells"
 
       patternProperties:
-        "usb2-phy@[0-9a-f]+$":
+        "usb2phy@[0-9a-f]+$":
           type: object
 
           $ref: "/schemas/phy/phy-rockchip-inno-usb2.yaml#"
@@ -233,7 +233,7 @@ examples:
         #phy-cells = <0>;
       };
 
-      u2phy0: usb2-phy@e450 {
+      u2phy0: usb2phy@e450 {
         compatible = "rockchip,rk3399-usb2phy";
         reg = <0xe450 0x10>;
         clocks = <&cru SCLK_USB2PHY0_REF>;
-- 
2.11.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
