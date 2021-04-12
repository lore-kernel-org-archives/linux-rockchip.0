Return-Path: <SRS0=kcRh=JJ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 08A01C433B4
	for <linux-rockchip@archiver.kernel.org>; Mon, 12 Apr 2021 20:02:30 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 8748B61222
	for <linux-rockchip@archiver.kernel.org>; Mon, 12 Apr 2021 20:02:29 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 8748B61222
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:MIME-Version:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-Id:Date:Subject:Cc:To:From:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=v+z1HKqHZgm4cPWniY7mO+GVQGySCf4BlSwuJbIBKqE=; b=HPriJ8EdmjEldvaHhIBEn7ImjV
	r98hWFvKwMaIatPR6v5tIIRUhaillqrXAZ08zQAMbvBM+LBygyw0PAgkLgrbTxnvguAWHybO45w8q
	4KanFJpp9WoE0p7F7JjHOx0w8iJvyFMTI0x3cprmKllBd380v3QkpKUQpNDiaHWyJSwZsVE5+wPBx
	Ax4emDHFYmv4DT6Ty6tNaZFBYsHp9m2yhirllwCTZR0euICrjjOh2HZmG7yI0ZJpQqwOuGF6i4voJ
	piHWCAQ6rr2zBUGr55z9SY3/NbqMbBlPQoAcezh3iaA+2weEA31J8SxfpQ/fly4Pt+NWPCl2NW7mM
	OFkXBz8w==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lW2lJ-007ZrT-Om; Mon, 12 Apr 2021 20:02:21 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lW2l7-007Zpb-JS; Mon, 12 Apr 2021 20:02:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Message-Id:Date:Subject:Cc:To:From:
 Sender:Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:In-Reply-To:References;
 bh=Q72c5txIW6Vzq4nbjDcQAJgkWiRNUCrhHe9INPM0VEE=; b=Gv/Z/NmQpeHQP4bvGRZHOD4bHr
 u1d3R+Oo3wNtIvJ8rhabJxzvUI4IKz3q055yRezGRqU/2Q4ScRmvk0yU7K82A2H7qpNjcMmYEyzzs
 qMjr4FI6wIxRxLYBf4mmdFDrZR5Xq3T87qfC6JmHX6hDfRfO8TVFACP8zagY2Ruqa94Ecmir3b4ZY
 WzIxzv5ACjTDkJMGeOP5TdtyVBzToVAq+E3gGxkXcUFgycmc27GmXl3bV/8E3IjLlT2TWc9vYWdnf
 +zUyhtjCFNi9MAlXXbzVkObeyrucR5nio1QAVnmjycQK+cYtMvB0OL/k07iXoBd3HACubl4FHKCZi
 MsvN3UWg==;
Received: from mail-ed1-x52a.google.com ([2a00:1450:4864:20::52a])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lW2l4-006WbM-Lg; Mon, 12 Apr 2021 20:02:08 +0000
Received: by mail-ed1-x52a.google.com with SMTP id r22so16527050edq.9;
 Mon, 12 Apr 2021 13:02:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=Q72c5txIW6Vzq4nbjDcQAJgkWiRNUCrhHe9INPM0VEE=;
 b=tJQVV9XhgxzxoQ8aoestUB4a5ty8ZCg8+hVbq/t0xyx4KixPfGrjrBbefe2rqU760m
 OdnuJI3JT/kJyKUzwxd9z0bdW1Wa60EHiJxgPV/UU/fQmumNdZTch1E+K5a0zAovY1Ub
 DBpjEGBziq50g+VktPieA1x9CGF4ufX3DB1xddtJVw70m1i6IJFH4ay/p5qOq8Nb7Z8w
 XIZHl1mjWUQCmJvHFHyy/AjY7OGU3DF0461XmhGFC2kyXGypsEffQF9GemeISG3ZTqRC
 pFvTBIjMn0nDY1DfEf1azZsXpzDZq/LfkeCbEiHWjHymXne+9uIJrBjGPLTnup5BClZl
 RmEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=Q72c5txIW6Vzq4nbjDcQAJgkWiRNUCrhHe9INPM0VEE=;
 b=NDmS6/zJIq/LQMupRffYeq8e67Gr1VPou+e3obU+k9ARzJlFkHo+xdRORixD2UKVyj
 WvRt9JVuH6mACl8v3st7CdXPBRCp63XQQZCBkwfDhgKBAT5CVoLz9C7O74ndQLwF6T6z
 3QR4+CdcdIVBpwNScsifF0ctJ5gBvuv1y4Q3easPimdPP74sT+Z7uXviFtkeDOVfD+JV
 OoNrWVuSNkfHOWI79EfBQ4FeSEMiNaWAjI5gZl8KZrU7XDN++buMLVtrnC04Y2OLXkgN
 bU3tC9Coi9prpOXBKpwKoMCNIoNtam1rCIaEDC1cniUV6sNYr7vf3K8XcyoWrTt/4S05
 brqw==
X-Gm-Message-State: AOAM530VQf58rMMUq6UDE51kxuRrThqxpximJCntfBuCzfzLviX4fQYH
 nA3pUogrKlSXEa9pU3JmtiM=
X-Google-Smtp-Source: ABdhPJyAntVAlRtzzphLGXMMBOsByDYF48e8RN8y5cNhnaHRnIui0sb3HqLsZmBef1XmYwmiFGRWAw==
X-Received: by 2002:a05:6402:4245:: with SMTP id
 g5mr31166337edb.306.1618257725240; 
 Mon, 12 Apr 2021 13:02:05 -0700 (PDT)
Received: from debian.home (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id x9sm7514531edv.22.2021.04.12.13.02.03
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 12 Apr 2021 13:02:04 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Cc: robh+dt@kernel.org, thierry.reding@gmail.com,
 u.kleine-koenig@pengutronix.de, lee.jones@linaro.org,
 linux-pwm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v3 1/4] dt-bindings: pwm: convert pwm-rockchip.txt to YAML
Date: Mon, 12 Apr 2021 22:01:52 +0200
Message-Id: <20210412200155.5316-1-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210412_130206_728829_4FEE4618 
X-CRM114-Status: GOOD (  20.41  )
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

Current dts files with 'pwm' nodes are manually verified.
In order to automate this process pwm-rockchip.txt
has to be converted to yaml.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
For some SoC nodes this patch serie generates notifications
for undocumented "interrupts" properties shared between
PWM channels till there is consensus of what to do with it or
someone makes a solution for the whole PWM block.

Changed V3:
  fix mistake with compatibles introduced in V2
Changed V2:
  changed schema for clocks and clock-names
---
 .../devicetree/bindings/pwm/pwm-rockchip.txt       | 27 -------
 .../devicetree/bindings/pwm/pwm-rockchip.yaml      | 88 ++++++++++++++++++++++
 2 files changed, 88 insertions(+), 27 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/pwm/pwm-rockchip.txt
 create mode 100644 Documentation/devicetree/bindings/pwm/pwm-rockchip.yaml

diff --git a/Documentation/devicetree/bindings/pwm/pwm-rockchip.txt b/Documentation/devicetree/bindings/pwm/pwm-rockchip.txt
deleted file mode 100644
index f70956dea..000000000
--- a/Documentation/devicetree/bindings/pwm/pwm-rockchip.txt
+++ /dev/null
@@ -1,27 +0,0 @@
-Rockchip PWM controller
-
-Required properties:
- - compatible: should be "rockchip,<name>-pwm"
-   "rockchip,rk2928-pwm": found on RK29XX,RK3066 and RK3188 SoCs
-   "rockchip,rk3288-pwm": found on RK3288 SOC
-   "rockchip,rv1108-pwm", "rockchip,rk3288-pwm": found on RV1108 SoC
-   "rockchip,vop-pwm": found integrated in VOP on RK3288 SoC
- - reg: physical base address and length of the controller's registers
- - clocks: See ../clock/clock-bindings.txt
-   - For older hardware (rk2928, rk3066, rk3188, rk3228, rk3288, rk3399):
-     - There is one clock that's used both to derive the functional clock
-       for the device and as the bus clock.
-   - For newer hardware (rk3328 and future socs): specified by name
-     - "pwm": This is used to derive the functional clock.
-     - "pclk": This is the APB bus clock.
- - #pwm-cells: must be 2 (rk2928) or 3 (rk3288). See pwm.yaml in this directory
-   for a description of the cell format.
-
-Example:
-
-	pwm0: pwm@20030000 {
-		compatible = "rockchip,rk2928-pwm";
-		reg = <0x20030000 0x10>;
-		clocks = <&cru PCLK_PWM01>;
-		#pwm-cells = <2>;
-	};
diff --git a/Documentation/devicetree/bindings/pwm/pwm-rockchip.yaml b/Documentation/devicetree/bindings/pwm/pwm-rockchip.yaml
new file mode 100644
index 000000000..19b42d31d
--- /dev/null
+++ b/Documentation/devicetree/bindings/pwm/pwm-rockchip.yaml
@@ -0,0 +1,88 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/pwm/pwm-rockchip.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Rockchip PWM controller
+
+maintainers:
+  - Heiko Stuebner <heiko@sntech.de>
+
+properties:
+  compatible:
+    oneOf:
+      - const: rockchip,rk2928-pwm
+      - const: rockchip,rk3288-pwm
+      - const: rockchip,vop-pwm
+      - items:
+          - enum:
+              - rockchip,rv1108-pwm
+          - const: rockchip,rk3288-pwm
+
+  reg:
+    maxItems: 1
+
+  clocks:
+    minItems: 1
+    maxItems: 2
+
+  clock-names:
+    maxItems: 2
+
+  "#pwm-cells":
+    enum: [2, 3]
+    description:
+      Must be 2 (rk2928) or 3 (rk3288 and later).
+      See pwm.yaml for a description of the cell format.
+
+required:
+  - compatible
+  - reg
+  - "#pwm-cells"
+
+if:
+  properties:
+    compatible:
+      contains:
+        enum:
+          - rockchip,rv1108-pwm
+
+then:
+  properties:
+    clocks:
+      items:
+        - description: Used to derive the functional clock for the device.
+        - description: Used as the APB bus clock.
+
+    clock-names:
+      items:
+        - const: pwm
+        - const: pclk
+
+  required:
+    - clocks
+    - clock-names
+
+else:
+  properties:
+    clocks:
+      maxItems: 1
+      description:
+        Used both to derive the functional clock
+        for the device and as the bus clock.
+
+  required:
+    - clocks
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/rk3188-cru-common.h>
+    pwm0: pwm@20030000 {
+      compatible = "rockchip,rk2928-pwm";
+      reg = <0x20030000 0x10>;
+      clocks = <&cru PCLK_PWM01>;
+      #pwm-cells = <2>;
+    };
-- 
2.11.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
