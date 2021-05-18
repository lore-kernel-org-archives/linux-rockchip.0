Return-Path: <SRS0=76ry=KN=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACE9AC433B4
	for <linux-rockchip@archiver.kernel.org>; Tue, 18 May 2021 16:57:36 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 37822611BD
	for <linux-rockchip@archiver.kernel.org>; Tue, 18 May 2021 16:57:36 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 37822611BD
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:MIME-Version:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:References:In-Reply-To:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=kK9SO5c3blMuvSnziAcc6ma8YaDBsyg0/b9VfbUXrYU=; b=Ql9cHAKCE/+m0NWNG64Ah5OaB2
	MY7Uxr7GEVaEP2HJCZ58IoWbvUirgZadQxnCTPvzkYDjSZd0rklGldlgsyiozTiRc1xMCEOqd7fPZ
	ItvEYYYkmShJAXgG4NdYKqNPAcbXgRibOf3HuQMadAP1K9Q5nQ7piAb85vtddIXvkjECeH0dVhUlU
	XFtrSqTiGU46g1RzlARZ4QdqwJaaBDbQ8PrfL8XLhG+eD+li3i9KHLYZF3sYS2PTyNU1kSam58+T3
	l1RN070jg30xMDBkHK0PtbIhqoDmiE+RnyRHavAPCM2WWoKU4xhlZuq5UgkcUZn1y75c7yL0sVpus
	2yGmA1BQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lj32B-001P8A-OR; Tue, 18 May 2021 16:57:31 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lj31t-001P2o-1L; Tue, 18 May 2021 16:57:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=9oPRfPgvlocsiFSFvUCwi7MVnKk8KLH2Kuos4BaavcY=; b=eJ8W3ULwtFquLtckNiTevScoeh
 0fASwhzXD2wO8vPh2CT9UkFP1RaWSswqFoNMXaim6xZjizigBvHPDzYOYfbuBmdnlISeUiLzW1PO1
 QhvrHCsjGlQPAFSMVzlcgTt/l0R+lthfIL7glEZdtCVi2/7a03H9GDnWHyonwdS+J8LteAh697oVv
 6d4wczTtKmF0A006tAWdHrUrO7vsrtIKyv39zBcYOF6bIRx06jVPWK9zmQ/Uq+qzsqqSL8kWasBqG
 QOxKwmirE9ixI+V7haDljEHgD3gJuEBvjJpWptR7gTKGa3HtqbBAOJKq6tXe2Nmj9CwzQlXDTRxdq
 3V/qKj+A==;
Received: from mail-ej1-x634.google.com ([2a00:1450:4864:20::634])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lj31q-00Ep1E-69; Tue, 18 May 2021 16:57:11 +0000
Received: by mail-ej1-x634.google.com with SMTP id z12so14215560ejw.0;
 Tue, 18 May 2021 09:57:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=9oPRfPgvlocsiFSFvUCwi7MVnKk8KLH2Kuos4BaavcY=;
 b=cghBxpZFSevRzbEgKl7VhA9nz/fSgraSrimImam6yAKQKBSkBGsPWjwI5QuM0VBmsE
 qQQbQb592yxCuFGGkSLA7ty20d1ziFzo1aAxUz03mz163b+1HfCiWLwjcQHqelYgsh+N
 8PtRQzblyIRPM3JLXtJhlTVuKKg7ncK36677r1cFjLK2hc+ZCSmQ/AZIFwAXTA6Zihok
 YmXM02vTutIvJImNqvx5yDo8c+c9Q7FKAydTTFM6PloiwtDY00lw9KI0y2JBsZLGBpRy
 QVSJl/LIOSpLcnayblLzW8UdIRpcbmVj6L2i4L5eV1/Vu5FuRqay/7EYUQcrqUiJpVuT
 Fw+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=9oPRfPgvlocsiFSFvUCwi7MVnKk8KLH2Kuos4BaavcY=;
 b=Ih4xUMsDjiBa7d1FZ9aLN+fC71huF7VCEVFl2Esp8dtM2ueeLu1ctO8+4zftkUH+D8
 OHXoTHHuP77qlc5TP7L8l0qfq0zd4ED1qiQUBsI6kQyZJgfjvi9eDRjhayCmB3SVHAAY
 XaBrJoMQqIY5m8wKv1aUhys4rQxdXYuHztbR3Da4FcTeO6yyiOJjhhIfkeqC95AitVxv
 R4K2ucLsMGbZYIAsklrjlehFTfGjltBA1w+70Qf+HoYWms14p2kZ+hmN3tUgkBcacibD
 J8iV7h/msMgeHKzl6Y1ENCRQphxgAY02H4+ykiz+zHh1MDvCC/end7bWws28e0bxeODy
 jG+Q==
X-Gm-Message-State: AOAM530ZNXhNbrotvQk8t7vFzRV7KMyhaJF0A/AoK51U/BZq+w5X08lE
 pNxo1tdBUvCwoaK6ISHYMGY=
X-Google-Smtp-Source: ABdhPJyCiaDiRFlxOOXYERxZFxdFggZiuFqEaCfF6xubgjYHPNusrJLBmpzhmi+IDAWRg3VzSMoy3Q==
X-Received: by 2002:a17:906:b0d:: with SMTP id
 u13mr6749791ejg.159.1621357028351; 
 Tue, 18 May 2021 09:57:08 -0700 (PDT)
Received: from debian.home (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id n2sm13525676edi.32.2021.05.18.09.57.06
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 18 May 2021 09:57:08 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Cc: robh+dt@kernel.org, kishon@ti.com, vkoul@kernel.org,
 linux-phy@lists.infradead.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v6 1/4] dt-bindings: phy: convert rockchip-usb-phy.txt to YAML
Date: Tue, 18 May 2021 18:56:55 +0200
Message-Id: <20210518165658.12764-2-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20210518165658.12764-1-jbx6244@gmail.com>
References: <20210518165658.12764-1-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210518_095710_248177_EE9F6447 
X-CRM114-Status: GOOD (  17.99  )
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

Current dts files with Rockchip 'usbphy' nodes are manually verified.
In order to automate this process rockchip-usb-phy.txt has to be
converted to YAML.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---

Changed V6
  remove some #phy-cells
---
 .../devicetree/bindings/phy/rockchip-usb-phy.txt   | 52 --------------
 .../devicetree/bindings/phy/rockchip-usb-phy.yaml  | 81 ++++++++++++++++++++++
 2 files changed, 81 insertions(+), 52 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/phy/rockchip-usb-phy.txt
 create mode 100644 Documentation/devicetree/bindings/phy/rockchip-usb-phy.yaml

diff --git a/Documentation/devicetree/bindings/phy/rockchip-usb-phy.txt b/Documentation/devicetree/bindings/phy/rockchip-usb-phy.txt
deleted file mode 100644
index 4ed569046..000000000
--- a/Documentation/devicetree/bindings/phy/rockchip-usb-phy.txt
+++ /dev/null
@@ -1,52 +0,0 @@
-ROCKCHIP USB2 PHY
-
-Required properties:
- - compatible: matching the soc type, one of
-     "rockchip,rk3066a-usb-phy"
-     "rockchip,rk3188-usb-phy"
-     "rockchip,rk3288-usb-phy"
- - #address-cells: should be 1
- - #size-cells: should be 0
-
-Deprecated properties:
- - rockchip,grf : phandle to the syscon managing the "general
-   register files" - phy should be a child of the GRF instead
-
-Sub-nodes:
-Each PHY should be represented as a sub-node.
-
-Sub-nodes
-required properties:
-- #phy-cells: should be 0
-- reg: PHY configure reg address offset in GRF
-		"0x320" - for PHY attach to OTG controller
-		"0x334" - for PHY attach to HOST0 controller
-		"0x348" - for PHY attach to HOST1 controller
-
-Optional Properties:
-- clocks : phandle + clock specifier for the phy clocks
-- clock-names: string, clock name, must be "phyclk"
-- #clock-cells: for users of the phy-pll, should be 0
-- reset-names: Only allow the following entries:
- - phy-reset
-- resets: Must contain an entry for each entry in reset-names.
-- vbus-supply: power-supply phandle for vbus power source
-
-Example:
-
-grf: syscon@ff770000 {
-	compatible = "rockchip,rk3288-grf", "syscon", "simple-mfd";
-
-...
-
-	usbphy: phy {
-		compatible = "rockchip,rk3288-usb-phy";
-		#address-cells = <1>;
-		#size-cells = <0>;
-
-		usbphy0: usb-phy0 {
-			#phy-cells = <0>;
-			reg = <0x320>;
-		};
-	};
-};
diff --git a/Documentation/devicetree/bindings/phy/rockchip-usb-phy.yaml b/Documentation/devicetree/bindings/phy/rockchip-usb-phy.yaml
new file mode 100644
index 000000000..f0fc8275d
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/rockchip-usb-phy.yaml
@@ -0,0 +1,81 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/phy/rockchip-usb-phy.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Rockchip USB2.0 phy
+
+maintainers:
+  - Heiko Stuebner <heiko@sntech.de>
+
+properties:
+  compatible:
+    oneOf:
+      - const: rockchip,rk3288-usb-phy
+      - items:
+          - enum:
+              - rockchip,rk3066a-usb-phy
+              - rockchip,rk3188-usb-phy
+          - const: rockchip,rk3288-usb-phy
+
+  "#address-cells":
+    const: 1
+
+  "#size-cells":
+    const: 0
+
+required:
+  - compatible
+  - "#address-cells"
+  - "#size-cells"
+
+additionalProperties: false
+
+patternProperties:
+  "usb-phy@[0-9a-f]+$":
+    type: object
+
+    properties:
+      reg:
+        maxItems: 1
+
+      "#phy-cells":
+        const: 0
+
+      clocks:
+        maxItems: 1
+
+      clock-names:
+        const: phyclk
+
+      "#clock-cells":
+        const: 0
+
+      resets:
+        maxItems: 1
+
+      reset-names:
+        const: phy-reset
+
+      vbus-supply:
+        description: phandle for vbus power source
+
+    required:
+      - reg
+      - "#phy-cells"
+
+    additionalProperties: false
+
+examples:
+  - |
+    usbphy: usbphy {
+      compatible = "rockchip,rk3288-usb-phy";
+      #address-cells = <1>;
+      #size-cells = <0>;
+
+      usbphy0: usb-phy@320 {
+        reg = <0x320>;
+        #phy-cells = <0>;
+      };
+    };
-- 
2.11.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
