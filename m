Return-Path: <SRS0=xf8t=JN=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6CD36C433B4
	for <linux-rockchip@archiver.kernel.org>; Fri, 16 Apr 2021 08:44:02 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id C25B76117A
	for <linux-rockchip@archiver.kernel.org>; Fri, 16 Apr 2021 08:44:01 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org C25B76117A
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:MIME-Version:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:References:In-Reply-To:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Lop0PW2bncr9FYFCjxRz6pzUKPNQPCCnmRFzMH0q7mg=; b=Ff9PHq0sN5pPDivhkWTtyHv77j
	wKJ5EdDVrAcIBzg+UU4WyzRjznksld3San5+lUtRXSzDfLKzXuBVL09BXdcctHPWO+HjHxExvf8Wo
	lKwX93JA9tfjqRvm3zqitb/zeKfUZC2HO8OTRGg19hPqLIl64l6vZrVSbbm/5opkY3k7HQgpxFbzk
	jb1wH+qQRhXjgVXquSiuj9Z7FRq78iHXszYzr2oJnVyMcZF1y22ftqrbdCZbTZ/ygvtzeZhDnVHT3
	s6rC0/hyYSQY0IoyjzC/z0R4P1CsgARwdii8qBseIvM+m6QGK6fUtWwAe6t7CMto7Xo+prsmQfBVM
	Vw0rIZEw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lXK4y-001Pho-3d; Fri, 16 Apr 2021 08:43:56 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lXJWd-001Hhp-Pi; Fri, 16 Apr 2021 08:08:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=D49LFH/UPrNvRKg8ZlGsBAKa6kjJVgk9sLYM0yrq/TE=; b=W+4G33PyateTNIm7lak8/yxh0E
 oMEIBz+edEfHwEW7Xtm9OjAmepGtQgAiGtkh1HQIEL8XhMYi0wGCxSwsWZvkzK9OzvywJXZ6TK2KC
 zCkkNG15EwM1tsF5izkLBJI4tzh5WQ90ysKn5Lkg6D4kDmWveejkQUTXNCMmbRnBM5ugKfPF5lxpB
 nbnFJrt7q0mTrLTqDg3tUut5Ccr/noj32vzU+GZqTdgX7CvlsEdPBAloIyVRc13Lk7I8aJGyy2htA
 TE3VuCBXfqoGKLeJQZk6cqM5GICA9krig3CZkR4kTJlEVoJ+oWJwCGO8e3Qns66YIcKDahASNDK4w
 QGZDaJTw==;
Received: from mail-ed1-x534.google.com ([2a00:1450:4864:20::534])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lXJWa-009B2W-8J; Fri, 16 Apr 2021 08:08:26 +0000
Received: by mail-ed1-x534.google.com with SMTP id e7so31109422edu.10;
 Fri, 16 Apr 2021 01:08:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=D49LFH/UPrNvRKg8ZlGsBAKa6kjJVgk9sLYM0yrq/TE=;
 b=cBbkJIjHuvueBRnRvyCEeZSLgzjiqE8ZUMQLdl5GGELKL71cPPt6mNTJAyyt9JKg9k
 mms7KZx04ZYMd4OsX+XIKw/mLT6KpSl5F1sp67y/XpE7mKkFb0ZOxNWCy4HLc+GRRYOx
 d4B1akX8Q+Hq0zgL9oxMPqIuTuFQn+ZArpCdZuWM8D9ix2XATYnqrzcAPLyA/D16rs2z
 ySuVb3ZNF7Xisj9MuanbxGZxI7gu6WwFDYGbWyk0eFi5T/8a7/NxoNRHwd6JnIaPgd2y
 Gf1E7HhTTiW745fDstQtsSPqjU2rWEjEJlHD6L0MRSkRt0ltc522k/nZoiCAdihMPbM+
 82Mg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=D49LFH/UPrNvRKg8ZlGsBAKa6kjJVgk9sLYM0yrq/TE=;
 b=luS9CtlD0u9yuHpvCi6y+2ceo1xis0dNGltdDvztH/Cf0gJzt7VEUetWbm55l0gXq6
 aIazhL3YoGN/xyYvHcIM89UdKaurj22w2lms8KIpMu5bls2H4lVBNr6IZ4JIMM3a/sD5
 D3kc5pH/vF/GZttiTcE4Y+E/L2GaLwoRigd6DvTo7oyMnGmDjgzte7kLCSIVwNNhiGo1
 8+xVGcwx7xIxqm5ctiTmRrE6DQNd9MchSvUxXSFFPeWZ6Yr3gME375xK4TaaGN2Oecxh
 NMetg6js/+Yxov1aGO1JM1aPd+t4ZUnjDCn/A3J2pmF+dEBL9KOFXUjcqM4lAc6904aS
 5LKQ==
X-Gm-Message-State: AOAM530T+v6I7O0qA7VR3a+L8n/SaJqjYNTCn7kbTQmSmsgv3yxGsxWw
 QSwvhtvnNRXw77HBqTx/qhw=
X-Google-Smtp-Source: ABdhPJyBn+8AwCpJL9qDKB7figxMEve39qD5Df5T94Uk/U+6H/u1ygxQEhwl5IgcJNu1IwDFKd+iwg==
X-Received: by 2002:a05:6402:1588:: with SMTP id
 c8mr7380552edv.37.1618560502704; 
 Fri, 16 Apr 2021 01:08:22 -0700 (PDT)
Received: from debian.home (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id q16sm4672303edv.61.2021.04.16.01.07.57
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 16 Apr 2021 01:08:22 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Cc: robh+dt@kernel.org, zhangqing@rock-chips.com, enric.balletbo@collabora.com,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH v8 13/15] dt-bindings: power: rockchip: Convert to json-schema
Date: Fri, 16 Apr 2021 10:03:40 +0200
Message-Id: <20210416080342.18614-14-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20210416080342.18614-1-jbx6244@gmail.com>
References: <20210416080342.18614-1-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210416_010824_342670_F86229F3 
X-CRM114-Status: GOOD (  23.19  )
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

From: Enric Balletbo i Serra <enric.balletbo@collabora.com>

Convert the soc/rockchip/power_domain.txt binding document to
json-schema and move to the power bindings directory.

Signed-off-by: Enric Balletbo i Serra <enric.balletbo@collabora.com>
Signed-off-by: Elaine Zhang <zhangqing@rock-chips.com>
Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
Note for rob+dt:
A tag was not added on purpose, because:
  Add "rockchip," prefix to the qos compatible name
  in example.
  Changed maintainers.
  Size reg description is reduced.
  Little style changes '' to ""
Please have a look at it again.

For some SoC nodes this patch serie generates notifications
for undocumented "assigned-clocks" and "assigned-clock-parents"
properties till there is consensus of what to do with it.
---
Changed V8:
  Add pd-node ref schema
Changed V7:
  Fix commit message and author format
  Changed SPDX-License-Identifier back to GPL-2.0
  Remove "clocks", "assigned-clocks" and "assigned-clock-parents"
  Fix indent example
Changed V6:
  Changed author
Changed V5:
  Change SPDX-License-Identifier to  GPL-2.0-only OR BSD-2-Clause
  Remove a maintainer
  Changed patternProperties to power-domain
  Add "clocks", "assigned-clocks" and "assigned-clock-parents"
Changed V4:
  Remove new compatible string
  Style changes '' to ""
Changed V3:
  Use Enric's conversion with rk3399 example
Changed V2:
  Convert power_domain.txt to YAML with rk3568 example
---
 .../bindings/power/rockchip,power-controller.yaml  | 257 +++++++++++++++++++++
 .../bindings/soc/rockchip/power_domain.txt         | 136 -----------
 2 files changed, 257 insertions(+), 136 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/power/rockchip,power-controller.yaml
 delete mode 100644 Documentation/devicetree/bindings/soc/rockchip/power_domain.txt

diff --git a/Documentation/devicetree/bindings/power/rockchip,power-controller.yaml b/Documentation/devicetree/bindings/power/rockchip,power-controller.yaml
new file mode 100644
index 000000000..2b9950fd6
--- /dev/null
+++ b/Documentation/devicetree/bindings/power/rockchip,power-controller.yaml
@@ -0,0 +1,257 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/power/rockchip,power-controller.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Rockchip Power Domains
+
+maintainers:
+  - Elaine Zhang <zhangqing@rock-chips.com>
+  - Heiko Stuebner <heiko@sntech.de>
+
+description: |
+  Rockchip processors include support for multiple power domains
+  which can be powered up/down by software based on different
+  application scenarios to save power.
+
+  Power domains contained within power-controller node are
+  generic power domain providers documented in
+  Documentation/devicetree/bindings/power/power-domain.yaml.
+
+  IP cores belonging to a power domain should contain a
+  "power-domains" property that is a phandle for the
+  power domain node representing the domain.
+
+properties:
+  $nodename:
+    const: power-controller
+
+  compatible:
+    enum:
+      - rockchip,px30-power-controller
+      - rockchip,rk3036-power-controller
+      - rockchip,rk3066-power-controller
+      - rockchip,rk3128-power-controller
+      - rockchip,rk3188-power-controller
+      - rockchip,rk3228-power-controller
+      - rockchip,rk3288-power-controller
+      - rockchip,rk3328-power-controller
+      - rockchip,rk3366-power-controller
+      - rockchip,rk3368-power-controller
+      - rockchip,rk3399-power-controller
+
+  "#power-domain-cells":
+    const: 1
+
+  "#address-cells":
+    const: 1
+
+  "#size-cells":
+    const: 0
+
+patternProperties:
+  "^power-domain@[0-9a-f]+$":
+    properties:
+
+      "#power-domain-cells":
+        enum: [0, 1]
+        description:
+          Must be 0 for nodes representing a single PM domain and 1 for nodes
+          providing multiple PM domains.
+
+      "#address-cells":
+        const: 1
+
+      "#size-cells":
+        const: 0
+
+    $ref: "#/definitions/pd-node"
+
+    patternProperties:
+      "^power-domain@[0-9a-f]+$":
+        properties:
+
+          "#power-domain-cells":
+            enum: [0, 1]
+
+          "#address-cells":
+            const: 1
+
+          "#size-cells":
+            const: 0
+
+        $ref: "#/definitions/pd-node"
+
+        patternProperties:
+          "^power-domain@[0-9a-f]+$":
+            properties:
+
+              "#power-domain-cells":
+                const: 0
+
+            $ref: "#/definitions/pd-node"
+
+            required:
+              - "#power-domain-cells"
+
+            unevaluatedProperties: false
+
+        required:
+          - "#power-domain-cells"
+
+        unevaluatedProperties: false
+
+    required:
+      - "#power-domain-cells"
+
+    unevaluatedProperties: false
+
+required:
+  - compatible
+  - "#power-domain-cells"
+
+additionalProperties: false
+
+definitions:
+  pd-node:
+    type: object
+    description: |
+      Represents the power domains within the power controller node.
+
+    properties:
+      reg:
+        maxItems: 1
+        description: |
+          Power domain index. Valid values are defined in
+          "include/dt-bindings/power/px30-power.h"
+          "include/dt-bindings/power/rk3036-power.h"
+          "include/dt-bindings/power/rk3066-power.h"
+          "include/dt-bindings/power/rk3128-power.h"
+          "include/dt-bindings/power/rk3188-power.h"
+          "include/dt-bindings/power/rk3228-power.h"
+          "include/dt-bindings/power/rk3288-power.h"
+          "include/dt-bindings/power/rk3328-power.h"
+          "include/dt-bindings/power/rk3366-power.h"
+          "include/dt-bindings/power/rk3368-power.h"
+          "include/dt-bindings/power/rk3399-power.h"
+
+      clocks:
+        minItems: 1
+        maxItems: 30
+        description: |
+          A number of phandles to clocks that need to be enabled
+          while power domain switches state.
+
+      pm_qos:
+        $ref: /schemas/types.yaml#/definitions/phandle-array
+        description: |
+          A number of phandles to qos blocks which need to be saved and restored
+          while power domain switches state.
+
+    required:
+      - reg
+
+examples:
+  - |
+    #include <dt-bindings/clock/rk3399-cru.h>
+    #include <dt-bindings/power/rk3399-power.h>
+
+    soc {
+        #address-cells = <2>;
+        #size-cells = <2>;
+
+        qos_hdcp: qos@ffa90000 {
+            compatible = "rockchip,rk3399-qos", "syscon";
+            reg = <0x0 0xffa90000 0x0 0x20>;
+        };
+
+        qos_iep: qos@ffa98000 {
+            compatible = "rockchip,rk3399-qos", "syscon";
+            reg = <0x0 0xffa98000 0x0 0x20>;
+        };
+
+        qos_rga_r: qos@ffab0000 {
+            compatible = "rockchip,rk3399-qos", "syscon";
+            reg = <0x0 0xffab0000 0x0 0x20>;
+        };
+
+        qos_rga_w: qos@ffab0080 {
+            compatible = "rockchip,rk3399-qos", "syscon";
+            reg = <0x0 0xffab0080 0x0 0x20>;
+        };
+
+        qos_video_m0: qos@ffab8000 {
+            compatible = "rockchip,rk3399-qos", "syscon";
+            reg = <0x0 0xffab8000 0x0 0x20>;
+        };
+
+        qos_video_m1_r: qos@ffac0000 {
+            compatible = "rockchip,rk3399-qos", "syscon";
+            reg = <0x0 0xffac0000 0x0 0x20>;
+        };
+
+        qos_video_m1_w: qos@ffac0080 {
+            compatible = "rockchip,rk3399-qos", "syscon";
+            reg = <0x0 0xffac0080 0x0 0x20>;
+        };
+
+        power-management@ff310000 {
+            compatible = "rockchip,rk3399-pmu", "syscon", "simple-mfd";
+            reg = <0x0 0xff310000 0x0 0x1000>;
+
+            power-controller {
+                compatible = "rockchip,rk3399-power-controller";
+                #power-domain-cells = <1>;
+                #address-cells = <1>;
+                #size-cells = <0>;
+
+                /* These power domains are grouped by VD_CENTER */
+                power-domain@RK3399_PD_IEP {
+                    reg = <RK3399_PD_IEP>;
+                    clocks = <&cru ACLK_IEP>,
+                             <&cru HCLK_IEP>;
+                    pm_qos = <&qos_iep>;
+                    #power-domain-cells = <0>;
+                };
+                power-domain@RK3399_PD_RGA {
+                    reg = <RK3399_PD_RGA>;
+                    clocks = <&cru ACLK_RGA>,
+                             <&cru HCLK_RGA>;
+                    pm_qos = <&qos_rga_r>,
+                             <&qos_rga_w>;
+                    #power-domain-cells = <0>;
+                };
+                power-domain@RK3399_PD_VCODEC {
+                    reg = <RK3399_PD_VCODEC>;
+                    clocks = <&cru ACLK_VCODEC>,
+                             <&cru HCLK_VCODEC>;
+                    pm_qos = <&qos_video_m0>;
+                    #power-domain-cells = <0>;
+                };
+                power-domain@RK3399_PD_VDU {
+                    reg = <RK3399_PD_VDU>;
+                    clocks = <&cru ACLK_VDU>,
+                             <&cru HCLK_VDU>;
+                    pm_qos = <&qos_video_m1_r>,
+                             <&qos_video_m1_w>;
+                    #power-domain-cells = <0>;
+                };
+                power-domain@RK3399_PD_VIO {
+                    reg = <RK3399_PD_VIO>;
+                    #power-domain-cells = <1>;
+                    #address-cells = <1>;
+                    #size-cells = <0>;
+
+                    power-domain@RK3399_PD_HDCP {
+                        reg = <RK3399_PD_HDCP>;
+                        clocks = <&cru ACLK_HDCP>,
+                                 <&cru HCLK_HDCP>,
+                                 <&cru PCLK_HDCP>;
+                        pm_qos = <&qos_hdcp>;
+                        #power-domain-cells = <0>;
+                    };
+                };
+            };
+        };
+    };
diff --git a/Documentation/devicetree/bindings/soc/rockchip/power_domain.txt b/Documentation/devicetree/bindings/soc/rockchip/power_domain.txt
deleted file mode 100644
index 8304eceb6..000000000
--- a/Documentation/devicetree/bindings/soc/rockchip/power_domain.txt
+++ /dev/null
@@ -1,136 +0,0 @@
-* Rockchip Power Domains
-
-Rockchip processors include support for multiple power domains which can be
-powered up/down by software based on different application scenes to save power.
-
-Required properties for power domain controller:
-- compatible: Should be one of the following.
-	"rockchip,px30-power-controller" - for PX30 SoCs.
-	"rockchip,rk3036-power-controller" - for RK3036 SoCs.
-	"rockchip,rk3066-power-controller" - for RK3066 SoCs.
-	"rockchip,rk3128-power-controller" - for RK3128 SoCs.
-	"rockchip,rk3188-power-controller" - for RK3188 SoCs.
-	"rockchip,rk3228-power-controller" - for RK3228 SoCs.
-	"rockchip,rk3288-power-controller" - for RK3288 SoCs.
-	"rockchip,rk3328-power-controller" - for RK3328 SoCs.
-	"rockchip,rk3366-power-controller" - for RK3366 SoCs.
-	"rockchip,rk3368-power-controller" - for RK3368 SoCs.
-	"rockchip,rk3399-power-controller" - for RK3399 SoCs.
-- #power-domain-cells: Number of cells in a power-domain specifier.
-	Should be 1 for multiple PM domains.
-- #address-cells: Should be 1.
-- #size-cells: Should be 0.
-
-Required properties for power domain sub nodes:
-- reg: index of the power domain, should use macros in:
-	"include/dt-bindings/power/px30-power.h" - for PX30 type power domain.
-	"include/dt-bindings/power/rk3036-power.h" - for RK3036 type power domain.
-	"include/dt-bindings/power/rk3066-power.h" - for RK3066 type power domain.
-	"include/dt-bindings/power/rk3128-power.h" - for RK3128 type power domain.
-	"include/dt-bindings/power/rk3188-power.h" - for RK3188 type power domain.
-	"include/dt-bindings/power/rk3228-power.h" - for RK3228 type power domain.
-	"include/dt-bindings/power/rk3288-power.h" - for RK3288 type power domain.
-	"include/dt-bindings/power/rk3328-power.h" - for RK3328 type power domain.
-	"include/dt-bindings/power/rk3366-power.h" - for RK3366 type power domain.
-	"include/dt-bindings/power/rk3368-power.h" - for RK3368 type power domain.
-	"include/dt-bindings/power/rk3399-power.h" - for RK3399 type power domain.
-- clocks (optional): phandles to clocks which need to be enabled while power domain
-	switches state.
-- pm_qos (optional): phandles to qos blocks which need to be saved and restored
-	while power domain switches state.
-
-Qos Example:
-
-	qos_gpu: qos_gpu@ffaf0000 {
-		compatible ="syscon";
-		reg = <0x0 0xffaf0000 0x0 0x20>;
-	};
-
-Example:
-
-	power: power-controller {
-		compatible = "rockchip,rk3288-power-controller";
-		#power-domain-cells = <1>;
-		#address-cells = <1>;
-		#size-cells = <0>;
-
-		pd_gpu {
-			reg = <RK3288_PD_GPU>;
-			clocks = <&cru ACLK_GPU>;
-			pm_qos = <&qos_gpu>;
-		};
-	};
-
-	 power: power-controller {
-                compatible = "rockchip,rk3368-power-controller";
-                #power-domain-cells = <1>;
-                #address-cells = <1>;
-                #size-cells = <0>;
-
-                pd_gpu_1 {
-                        reg = <RK3368_PD_GPU_1>;
-                        clocks = <&cru ACLK_GPU_CFG>;
-                };
-        };
-
-Example 2:
-		power: power-controller {
-			compatible = "rockchip,rk3399-power-controller";
-			#power-domain-cells = <1>;
-			#address-cells = <1>;
-			#size-cells = <0>;
-
-			pd_vio {
-				#address-cells = <1>;
-				#size-cells = <0>;
-				reg = <RK3399_PD_VIO>;
-
-				pd_vo {
-					#address-cells = <1>;
-					#size-cells = <0>;
-					reg = <RK3399_PD_VO>;
-
-					pd_vopb {
-						reg = <RK3399_PD_VOPB>;
-					};
-
-					pd_vopl {
-						reg = <RK3399_PD_VOPL>;
-					};
-				};
-			};
-		};
-
-Node of a device using power domains must have a power-domains property,
-containing a phandle to the power device node and an index specifying which
-power domain to use.
-The index should use macros in:
-	"include/dt-bindings/power/px30-power.h" - for px30 type power domain.
-	"include/dt-bindings/power/rk3036-power.h" - for rk3036 type power domain.
-	"include/dt-bindings/power/rk3128-power.h" - for rk3128 type power domain.
-	"include/dt-bindings/power/rk3128-power.h" - for rk3228 type power domain.
-	"include/dt-bindings/power/rk3288-power.h" - for rk3288 type power domain.
-	"include/dt-bindings/power/rk3328-power.h" - for rk3328 type power domain.
-	"include/dt-bindings/power/rk3366-power.h" - for rk3366 type power domain.
-	"include/dt-bindings/power/rk3368-power.h" - for rk3368 type power domain.
-	"include/dt-bindings/power/rk3399-power.h" - for rk3399 type power domain.
-
-Example of the node using power domain:
-
-	node {
-		/* ... */
-		power-domains = <&power RK3288_PD_GPU>;
-		/* ... */
-	};
-
-	node {
-                /* ... */
-                power-domains = <&power RK3368_PD_GPU_1>;
-                /* ... */
-        };
-
-	node {
-		/* ... */
-		power-domains = <&power RK3399_PD_VOPB>;
-		/* ... */
-	};
-- 
2.11.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
