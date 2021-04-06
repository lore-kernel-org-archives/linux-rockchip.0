Return-Path: <SRS0=2XDZ=JD=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD6F0C433ED
	for <linux-rockchip@archiver.kernel.org>; Tue,  6 Apr 2021 15:51:26 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 5D4C9613B8
	for <linux-rockchip@archiver.kernel.org>; Tue,  6 Apr 2021 15:51:26 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 5D4C9613B8
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:MIME-Version:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-Id:Date:Subject:Cc:To:From:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=pKfFrQdLnqDuAudBpE/mMPB1gag7AZRPFVulg+9NN/M=; b=h78bmA6c4tQLsYDPlpthXeCeAh
	IjZIZUguPewEmrhq6pAcHLVN4BtYQfzU6JLE1Nw+520rhWOpmjPNyEd8Cljm0rBdd4p7Dpa2i6fvl
	YE9SX/I7sp91gERkFVkELRVxvYDYM93sbA7e6mmG8I/kRy64yOlaWvol7b8/KesYqX/pvj3cxHmsb
	HMGeblUqkdAmr751bEYMfdXWxbABecziwZ23VtzgXA3dr3NpUpGwxycXhsYkqS1mLAFmcbgOksBsY
	6Rw2jfFnLm65+wQBnmu48bVRCyh1tQoM6CuWtBW/laQYBcY2vzqkodOlOqxAiWM6anusAa0EUotH7
	tYau4yxQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lTnz7-002xWC-Tx; Tue, 06 Apr 2021 15:51:22 +0000
Received: from mail-ej1-x635.google.com ([2a00:1450:4864:20::635])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lTnyp-002xUU-1W; Tue, 06 Apr 2021 15:51:05 +0000
Received: by mail-ej1-x635.google.com with SMTP id e14so22708696ejz.11;
 Tue, 06 Apr 2021 08:51:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=MwBs5r1ZJNOmTqYBpKTtnKYCyLFiaA9WgWxe+ttx57g=;
 b=YpfgJoVR99TLjEIAiCUf0MhS+8vlpnI8XDlBtP8pBpMnVl0rJoCsv2VrTntaygKrVi
 oYU39msAOlzwehwCWXX45pzV/nUMhAHb2Z3rvEKHNeKHuk0seJ71SA6Clu1YwnRXi2Zm
 bM/UuIHPx6eqJAd/1ZoZWPpNppiSjkugnTo9hFRKLfxY6fTMeEUfQCJ/L6ZwD8GKBLb5
 LG1rjqVfgw0TiQ6gsZAMsDJjExhL0IID0Jn4yj5BNw59xhBz5ZfWLX9zhwUj3zovMFvP
 RIp18iRTt7qlyUtO8P7bvOVLcv2k0pvF34zV/OlxRYQwvhmTmB9ZSw6GvhZf3q9C/7We
 Ui2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=MwBs5r1ZJNOmTqYBpKTtnKYCyLFiaA9WgWxe+ttx57g=;
 b=QlRe3r6X+qxV3Wf3m65CVaF6nrzN5gRkA8KqgVF/r8yha/eiXdgSEYen5OcxFVNTef
 u0Uic8nE2Sgu3yUWrum6qTu8WVWXvAcQHbOsxmBSBMmc5kISkqSxfmFKyWawx5hSaFpx
 +Q3yeX+RZn8OUh8kAXSS0LWr79WJ4qNub9GPb3kzOwiVeIzNsFi3AszjiVo9F1qwizj+
 KlcLMuYPHvGx/bHL6A/7G8x8gLqJ2jatunsSqxTKD7mU++EO2MeEWffcID9QY3mUFWSu
 mzG5V9QhhSnFQciupU3Id193ASQu2VDDt1mSSnguodQ9dmvHrQcCsjsyBCb1hEisZOZ7
 HJIw==
X-Gm-Message-State: AOAM531JiyjhNQtm6V0r/TusR7IzvjJYhHAp7X5gC9oQ8hQ3lYFRxlW2
 M+wUWpI8XlCw1STfOMEiCiZh9GJ6t018tQ==
X-Google-Smtp-Source: ABdhPJwB8DLj57BRL/dataeb6kvhb3ZsPmD6W8ROBoUSxQljHmy0I8hpKKuNGdvCPz5jzF8sJ9z0LQ==
X-Received: by 2002:a17:906:1ba9:: with SMTP id
 r9mr2482740ejg.395.1617724261927; 
 Tue, 06 Apr 2021 08:51:01 -0700 (PDT)
Received: from debian.home (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id h8sm13894327ede.25.2021.04.06.08.51.00
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 06 Apr 2021 08:51:01 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Cc: robh+dt@kernel.org, thierry.reding@gmail.com,
 u.kleine-koenig@pengutronix.de, lee.jones@linaro.org,
 linux-pwm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v1 1/2] dt-bindings: pwm: convert pwm-rockchip.txt to YAML
Date: Tue,  6 Apr 2021 17:50:52 +0200
Message-Id: <20210406155053.29101-1-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210406_165103_165936_15EDD322 
X-CRM114-Status: GOOD (  19.20  )
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
 .../devicetree/bindings/pwm/pwm-rockchip.txt       | 27 ---------
 .../devicetree/bindings/pwm/pwm-rockchip.yaml      | 66 ++++++++++++++++++++++
 2 files changed, 66 insertions(+), 27 deletions(-)
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
index 000000000..cfd637d3e
--- /dev/null
+++ b/Documentation/devicetree/bindings/pwm/pwm-rockchip.yaml
@@ -0,0 +1,66 @@
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
+    description:
+      For older hardware (rk2928, rk3066, rk3188, rk3228, rk3288, rk3399)
+        There is one clock that is used both to derive the functional clock
+        for the device and as the bus clock.
+      For newer hardware (rk3328 and future SoCs) that is also specified
+      with clock names.
+        "pwm" is used to derive the functional clock for the device.
+        "pclk" is used as the APB bus clock.
+
+  clock-names:
+    minItems: 1
+    items:
+      - const: pwm
+      - const: pclk
+
+  "#pwm-cells":
+    enum: [2, 3]
+    description:
+      Must be 2 (rk2928) or 3 (rk3288).
+      See pwm.yaml for a description of the cell format.
+
+additionalProperties: false
+
+required:
+  - compatible
+  - reg
+  - clocks
+  - "#pwm-cells"
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
