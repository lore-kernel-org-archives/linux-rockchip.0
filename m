Return-Path: <SRS0=NEY9=IW=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 41820C433C1
	for <linux-rockchip@archiver.kernel.org>; Wed, 24 Mar 2021 07:17:09 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 7A937619F5
	for <linux-rockchip@archiver.kernel.org>; Wed, 24 Mar 2021 07:17:08 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 7A937619F5
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=rock-chips.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:MIME-Version:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:References:In-Reply-To:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Y8YOwz0eY7QkKUPXubKpG22j+9BiLMSXna1zbV+Ppl0=; b=gQbS1eo+z73LH2tISSxZPgpRSs
	rccX+YLXFcX2WqHuTZDU7v8e0vzeMy5Y7rcbYGIsGCVQEI/Mu68aZjPNljzgOfM+/A8VNsbzQt0Xh
	Yvy+ORKY3xAg01kqpoAhV2ABcOMGX1Cpo8gy1XLZzZLvMdqxWNlOikhaZvD1M3XfFzYzYRpvIV72R
	DXASnHW+tiEh5g1ndPRNunR2D8rAzld7Zdj77npV2AncPxziBm9pbp15nKRiivb0oP6uC+YDjTyew
	Gwf2U6dMFazvEUhSVEoxIyQmV6E2qUGvMn3s3sNNEjP8Zh1h+goXKhtEos3GhFpVLLQy3YwSZFOK/
	Cn+Ix6tA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lOxlJ-00GTPD-47; Wed, 24 Mar 2021 07:17:05 +0000
Received: from lucky1.263xmail.com ([211.157.147.133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lOxkX-00GTA2-A6; Wed, 24 Mar 2021 07:16:21 +0000
Received: from localhost (unknown [192.168.167.235])
 by lucky1.263xmail.com (Postfix) with ESMTP id F2CC0CCBBE;
 Wed, 24 Mar 2021 15:16:13 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-ANTISPAM-LEVEL: 2
X-ABS-CHECKED: 0
Received: from localhost.localdomain (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P24306T139683791099648S1616570170220819_; 
 Wed, 24 Mar 2021 15:16:13 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <919c1e11bf7ec7ae3b0a9e426f06bac7>
X-RL-SENDER: zhangqing@rock-chips.com
X-SENDER: zhangqing@rock-chips.com
X-LOGIN-NAME: zhangqing@rock-chips.com
X-FST-TO: robh+dt@kernel.org
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-System-Flag: 0
From: Elaine Zhang <zhangqing@rock-chips.com>
To: robh+dt@kernel.org,
	heiko@sntech.de
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 cl@rock-chips.com, huangtao@rock-chips.com, kever.yang@rock-chips.com,
 tony.xie@rock-chips.com, finley.xiao@rock-chips.com,
 Elaine Zhang <zhangqing@rock-chips.com>,
 Enric Balletbo i Serra <enric.balletbo@collabora.com>
Subject: [PATCH v4 2/4] dt-bindings: power: rockchip: Convert to json-schema
Date: Wed, 24 Mar 2021 15:16:07 +0800
Message-Id: <20210324071609.7531-3-zhangqing@rock-chips.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210324071609.7531-1-zhangqing@rock-chips.com>
References: <20210324071609.7531-1-zhangqing@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210324_071618_901038_CA329DEF 
X-CRM114-Status: GOOD (  20.58  )
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

Convert the soc/rockchip/power_domain.txt binding document to
json-schema and move to the power bindings directory.

Signed-off-by: Enric Balletbo i Serra <enric.balletbo@collabora.com>
Signed-off-by: Elaine Zhang <zhangqing@rock-chips.com>
---
 .../power/rockchip,power-controller.yaml      | 284 ++++++++++++++++++
 .../bindings/soc/rockchip/power_domain.txt    | 136 ---------
 2 files changed, 284 insertions(+), 136 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/power/rockchip,power-controller.yaml
 delete mode 100644 Documentation/devicetree/bindings/soc/rockchip/power_domain.txt

diff --git a/Documentation/devicetree/bindings/power/rockchip,power-controller.yaml b/Documentation/devicetree/bindings/power/rockchip,power-controller.yaml
new file mode 100644
index 000000000000..a220322c5139
--- /dev/null
+++ b/Documentation/devicetree/bindings/power/rockchip,power-controller.yaml
@@ -0,0 +1,284 @@
+# SPDX-License-Identifier: GPL-2.0-only
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/power/rockchip,power-controller.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Rockchip Power Domains
+
+maintainers:
+  - Elaine Zhang <zhangqing@rock-chips.com>
+  - Rob Herring <robh+dt@kernel.org>
+  - Heiko Stuebner <heiko@sntech.de>
+
+description: |
+  Rockchip processors include support for multiple power domains which can be
+  powered up/down by software based on different application scenarios to save power.
+
+  Power domains contained within power-controller node are generic power domain
+  providers documented in Documentation/devicetree/bindings/power/power-domain.yaml.
+
+  IP cores belonging to a power domain should contain a "power-domains"
+  property that is a phandle for the power domain node representing the domain.
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
+  "^pd_[0-9a-z_]{2,10}@[0-9a-f]+$":
+    type: object
+    description: |
+      Represents the power domains within the power controller node as documented
+      in Documentation/devicetree/bindings/power/power-domain.yaml.
+
+    properties:
+
+      "#power-domain-cells":
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
+        description: |
+          A number of phandles to clocks that need to be enabled while power domain
+          switches state.
+
+      pm_qos:
+        description: |
+          A number of phandles to qos blocks which need to be saved and restored
+          while power domain switches state.
+
+    patternProperties:
+      "^pd_[0-9a-z_]{2,10}@[0-9a-f]+$":
+        type: object
+        description: |
+          Represents a power domain child within a power domain parent node.
+
+        properties:
+
+          "#power-domain-cells":
+            description:
+              Must be 0 for nodes representing a single PM domain and 1 for nodes
+              providing multiple PM domains.
+
+          "#address-cells":
+            const: 1
+
+          "#size-cells":
+            const: 0
+
+          reg:
+            maxItems: 1
+
+          clocks:
+            description: |
+              A number of phandles to clocks that need to be enabled while power domain
+              switches state.
+
+          pm_qos:
+            description: |
+              A number of phandles to qos blocks which need to be saved and restored
+              while power domain switches state.
+
+        patternProperties:
+          "^pd_[0-9a-z_]{2,10}@[0-9a-f]+$":
+            type: object
+            description: |
+              Represents a power domain child within a power domain parent node.
+
+            properties:
+
+              "#power-domain-cells":
+                description:
+                  Must be 0 for nodes representing a single PM domain and 1 for nodes
+                  providing multiple PM domains.
+
+              "#address-cells":
+                const: 1
+
+              "#size-cells":
+                const: 0
+
+              reg:
+                maxItems: 1
+
+              clocks:
+                description: |
+                  A number of phandles to clocks that need to be enabled while power domain
+                  switches state.
+
+              pm_qos:
+                description: |
+                  A number of phandles to qos blocks which need to be saved and restored
+                  while power domain switches state.
+
+            required:
+              - reg
+
+            additionalProperties: false
+
+        required:
+          - reg
+
+        additionalProperties: false
+
+    required:
+      - reg
+
+    additionalProperties: false
+
+required:
+  - compatible
+  - "#power-domain-cells"
+
+additionalProperties: false
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
+                pd_iep@RK3399_PD_IEP {
+                    reg = <RK3399_PD_IEP>;
+                    clocks = <&cru ACLK_IEP>,
+                             <&cru HCLK_IEP>;
+                    pm_qos = <&qos_iep>;
+                    #power-domain-cells = <0>;
+                };
+                pd_rga@RK3399_PD_RGA {
+                    reg = <RK3399_PD_RGA>;
+                    clocks = <&cru ACLK_RGA>,
+                             <&cru HCLK_RGA>;
+                    pm_qos = <&qos_rga_r>,
+                             <&qos_rga_w>;
+                    #power-domain-cells = <0>;
+                };
+                pd_vcodec@RK3399_PD_VCODEC {
+                    reg = <RK3399_PD_VCODEC>;
+                    clocks = <&cru ACLK_VCODEC>,
+                             <&cru HCLK_VCODEC>;
+                    pm_qos = <&qos_video_m0>;
+                    #power-domain-cells = <0>;
+                };
+                pd_vdu@RK3399_PD_VDU {
+                    reg = <RK3399_PD_VDU>;
+                    clocks = <&cru ACLK_VDU>,
+                             <&cru HCLK_VDU>;
+                    pm_qos = <&qos_video_m1_r>,
+                             <&qos_video_m1_w>;
+                    #power-domain-cells = <0>;
+                };
+                pd_vio@RK3399_PD_VIO {
+                    reg = <RK3399_PD_VIO>;
+                    #power-domain-cells = <1>;
+                    #address-cells = <1>;
+                    #size-cells = <0>;
+
+                    pd_hdcp@RK3399_PD_HDCP {
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
index 8304eceb62e4..000000000000
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
2.17.1




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
