Return-Path: <SRS0=scLn=JI=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C14C2C433ED
	for <linux-rockchip@archiver.kernel.org>; Sun, 11 Apr 2021 13:10:44 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 67D1660FD8
	for <linux-rockchip@archiver.kernel.org>; Sun, 11 Apr 2021 13:10:44 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 67D1660FD8
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:MIME-Version:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-Id:Date:Subject:Cc:To:From:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=ox+5EbjWD+1pZgw30No9mE0NfzCQbwCqi7kXxasVFVQ=; b=IrMwsFEXg895kCUVrm++h5HN7g
	FWEggcHNCT3vOx9JKkjrMFCpeAXPJZGHdGomx7a4Ns9w50OkUrJRXdYucDAvMI20G+7MoigbiVSQN
	XitcWEMT80ozWt63C6Z+LxiyAK+nEKoPkoODAM1LxVb0LGIUxJSCv2i4s4LEhpj2e+M1jO1MbwBC3
	woTPLnPRDEogyMKfjzXl/Ft0Hdd9AJgqEp+sK5OmKyZNN04+x8fkGm6zlJcMAxK1LxJsrfCXzpHms
	UBGiVwDDozo9lrgtkE+8nTxiFTFl/H9v03h3mf3T+0IxKmMakIPvPv5umRfwSvFA/U1hyQblldOLh
	QMMkZtzg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lVZrL-004TPy-8o; Sun, 11 Apr 2021 13:10:39 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lVZr1-004TNn-8g; Sun, 11 Apr 2021 13:10:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Message-Id:Date:Subject:Cc:To:From:
 Sender:Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:In-Reply-To:References;
 bh=HSvdpIMLsn0RnpUE4sX7jib7kDhn37eZZS9bsKWgBwM=; b=GUJX+GyHbeiEe4cLBDbHME03MS
 83ApTwpSEJDHNz6QGeKUTqeKAB6gn6DFaEwBKPZLw0HyCnIGGwwY1tFebV0zHpGildguWdUkYinpw
 UixPB751taXBt2KD/EA3Bu/gmwqe0UFkuLh5q5SQW/IvEJbJfdP7rQG94IPDEuv6JLP2F25/V4+tU
 pHi2WoQx98WaEn0JXyiuIaeMPK8uo+hXGCg6HV4+Hh3LqjAJdbdiswitHfp9eFbaNvl1Rg3On+/4A
 LSZ6VTALP3XclygoSzgkNlVeFL7ahXXmPYVHiVlIZwKXSi8ccZT96CpxL+jia/HurnmNomb7o1H9z
 9OxULJqw==;
Received: from mail-ed1-x52c.google.com ([2a00:1450:4864:20::52c])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lVZqy-005WMA-68; Sun, 11 Apr 2021 13:10:17 +0000
Received: by mail-ed1-x52c.google.com with SMTP id r22so11769489edq.9;
 Sun, 11 Apr 2021 06:10:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=HSvdpIMLsn0RnpUE4sX7jib7kDhn37eZZS9bsKWgBwM=;
 b=FLLf+FINblf0xE6K84r49vHqlJhZXHkUC4gkjPIDXI8MGMaQBpF4cihrV6onpXTaBp
 vdkLL7dKxgW4JtI7yGkgR9edSUOif91Z7hayO9VyxeOIEYg0oDi5fHxj06ezRw1YS0GE
 /UEP0zK8DSvyaezvf7/sRSDjSFXp6C7Rqh1LEFCGDDkHE8wBeCd0bqfk2+VXr3e4YqyC
 CyW9iNuhrVHLL9W3AsMNlMdRbXpDERQxsFLgZzYSmwzosIxKuS3uU2zJHA7tETIwwZpf
 471zec6rzuUmtCXU3WJ+/ldE4Cli6MezB/xGtRtWjOMU8LWVLzB/feura8Nk20Y4vHXd
 gZJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=HSvdpIMLsn0RnpUE4sX7jib7kDhn37eZZS9bsKWgBwM=;
 b=GrVOK4aYeFz4bEXgchPqz4vpRON7zKgGKC4EDIFagDRGHEzlSyfjkVHdaaUYwiTXvW
 wUp8xgWezFMWwTPplxir9OXCcqG1DOb8nVaa/0IeqDZKl7IgvvzZsLEVSnIDKcqNAutz
 ES/Bfp/q21Zh41pHecG0LrafqK4cii1tPUil4w+yCm58Bhnjs8WuL+kA9gGPvuJdmI8P
 eQNhNsFHkWwAtc7j+tbadeSnEf+2dZjF1zw1hQUazCxKVeaK4I4biNXs5Eye0d/5b3eh
 jL7AQZtxaXwP5jFIrkITJtLRx5en4osGk4L3kfdtn6gAttgEms6+PpE+1VsEst5ea3xj
 7d3w==
X-Gm-Message-State: AOAM531iMKE1CjL7oDeTv3VX3mft2bB2Q2NoRu8IyIkz766/nldXhEM/
 vey4buxQXZ/z03PxpgLtKTI=
X-Google-Smtp-Source: ABdhPJx19OZpyYTMvsTHKcHcJM+xDYsx1U55kZsBqfMosXJyUMgV0g33n4IP6IFs7QV3sls4PaDo/Q==
X-Received: by 2002:a05:6402:5153:: with SMTP id
 n19mr11353148edd.173.1618146614237; 
 Sun, 11 Apr 2021 06:10:14 -0700 (PDT)
Received: from debian.home (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id w2sm3983520eju.71.2021.04.11.06.10.12
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 11 Apr 2021 06:10:13 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Cc: robh+dt@kernel.org, thierry.reding@gmail.com,
 u.kleine-koenig@pengutronix.de, lee.jones@linaro.org,
 linux-pwm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v2 1/6] dt-bindings: pwm: convert pwm-rockchip.txt to YAML
Date: Sun, 11 Apr 2021 15:10:02 +0200
Message-Id: <20210411131007.21757-1-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210411_061016_274885_AB28D55F 
X-CRM114-Status: GOOD (  18.23  )
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
Changed V2:
  changed schema for clocks and clock-names
---
 .../devicetree/bindings/pwm/pwm-rockchip.txt       | 27 -------
 .../devicetree/bindings/pwm/pwm-rockchip.yaml      | 91 ++++++++++++++++++++++
 2 files changed, 91 insertions(+), 27 deletions(-)
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
index 000000000..142ce85ce
--- /dev/null
+++ b/Documentation/devicetree/bindings/pwm/pwm-rockchip.yaml
@@ -0,0 +1,91 @@
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
+          - const: rockchip,rk3036-pwm
+          - const: rockchip,rk2928-pwm
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
