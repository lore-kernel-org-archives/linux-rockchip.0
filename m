Return-Path: <SRS0=NLp6=JV=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-16.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,UNPARSEABLE_RELAY,
	USER_AGENT_GIT autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 40A67C433B4
	for <linux-rockchip@archiver.kernel.org>; Sat, 24 Apr 2021 19:20:12 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id B52C561261
	for <linux-rockchip@archiver.kernel.org>; Sat, 24 Apr 2021 19:20:11 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org B52C561261
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=UWhEj08jZCosWmxl0d306FpykLefaHaUOQyTat39F+E=; b=Gu+gn9yPvbunQ0y2LidvO3IvF
	3mN6Pzqrq5VsOo9VLiSVf5SoK4kgpsRyk06ZokyldEf6EJ9JkxwJOvbO6ypMZNr8gSSvc05h6cfcv
	joMXEm4IprUI5Ympfd1WnFoZmH7X8KRSBxk37oniIlKd6jiFmnCukCvSlxxSa34wXEeL/6l4givNQ
	gxWNDTgvpzvOxpD8nwkjzGRbHmYXXY2WOPwYzs0Z8j3aam0G4qPR9nF+WqywgWt+3t/uNGCkFHxyk
	jlACwxaPGGQfpapVb1DzyGnH79lQLJ6T7WXaX3t6EkDu57nSaFjVCoHc8AMqMPUXFcrAdKoCECN6W
	Dq37eoCFw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1laNp0-004Ity-1Y; Sat, 24 Apr 2021 19:20:06 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1laNox-004Itd-Fa
 for linux-rockchip@desiato.infradead.org; Sat, 24 Apr 2021 19:20:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-Type:Content-ID:Content-Description;
 bh=snYDtHM6y53OyvtvF3WSkT3U74vmaWlP4pby578r5UU=; b=A0hzyJD6aRJScrBOTBuojnZiHu
 Xuc6EWgqS5OWGOkwgNnqBygjpHSPbC/A4TWYP5Jkyew0mEpv7dmNS7OzeODFPMthLpSVr3p1k4avb
 QtZsifo4fDczqrHxqN01byhBOSFSimQKuTsgC5TvvSZL6ul2NI1NzY7+hrJUXNagppcc/jDRfPYnJ
 D56mDjSaLIbwCHeTyCT4ESLh+mElkWJXHJ1v4WgrZp3gY5FPLfH8Hd5CvPiLG1+hlq+Bh/FpfAbn/
 9lIlgZRG39IFqjxbqLdCtqq8i/J5SpVYSWBIJLdWJ97oGn01qFptUYn6Hu1KPrYLd+4P/m8U447Nv
 8iX4AaRQ==;
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1laNou-00F87E-MV
 for linux-rockchip@lists.infradead.org; Sat, 24 Apr 2021 19:20:02 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: ezequiel) with ESMTPSA id E06141F4316D
From: Ezequiel Garcia <ezequiel@collabora.com>
To: linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org
Cc: Heiko Stuebner <heiko@sntech.de>, Kever Yang <kever.yang@rock-chips.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Rob Herring <robh+dt@kernel.org>, Ezequiel Garcia <ezequiel@collabora.com>,
 kernel@collabora.com
Subject: [PATCH 2/2] dt-bindings: timer: convert rockchip, rk-timer.txt to YAML
Date: Sat, 24 Apr 2021 16:19:46 -0300
Message-Id: <20210424191946.69978-2-ezequiel@collabora.com>
X-Mailer: git-send-email 2.30.0
In-Reply-To: <20210424191946.69978-1-ezequiel@collabora.com>
References: <20210424191946.69978-1-ezequiel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210424_122000_885227_F6E96031 
X-CRM114-Status: GOOD (  12.80  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Convert Rockchip Timer dt-bindings to YAML.

Signed-off-by: Ezequiel Garcia <ezequiel@collabora.com>
---
 .../bindings/timer/rockchip,rk-timer.txt      | 27 --------
 .../bindings/timer/rockchip,rk-timer.yaml     | 67 +++++++++++++++++++
 2 files changed, 67 insertions(+), 27 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/timer/rockchip,rk-timer.txt
 create mode 100644 Documentation/devicetree/bindings/timer/rockchip,rk-timer.yaml

diff --git a/Documentation/devicetree/bindings/timer/rockchip,rk-timer.txt b/Documentation/devicetree/bindings/timer/rockchip,rk-timer.txt
deleted file mode 100644
index d65fdce7c7f0..000000000000
--- a/Documentation/devicetree/bindings/timer/rockchip,rk-timer.txt
+++ /dev/null
@@ -1,27 +0,0 @@
-Rockchip rk timer
-
-Required properties:
-- compatible: should be:
-  "rockchip,rv1108-timer", "rockchip,rk3288-timer": for Rockchip RV1108
-  "rockchip,rk3036-timer", "rockchip,rk3288-timer": for Rockchip RK3036
-  "rockchip,rk3066-timer", "rockchip,rk3288-timer": for Rockchip RK3066
-  "rockchip,rk3188-timer", "rockchip,rk3288-timer": for Rockchip RK3188
-  "rockchip,rk3228-timer", "rockchip,rk3288-timer": for Rockchip RK3228
-  "rockchip,rk3229-timer", "rockchip,rk3288-timer": for Rockchip RK3229
-  "rockchip,rk3288-timer": for Rockchip RK3288
-  "rockchip,rk3368-timer", "rockchip,rk3288-timer": for Rockchip RK3368
-  "rockchip,rk3399-timer": for Rockchip RK3399
-- reg: base address of the timer register starting with TIMERS CONTROL register
-- interrupts: should contain the interrupts for Timer0
-- clocks : must contain an entry for each entry in clock-names
-- clock-names : must include the following entries:
-  "timer", "pclk"
-
-Example:
-	timer: timer@ff810000 {
-		compatible = "rockchip,rk3288-timer";
-		reg = <0xff810000 0x20>;
-		interrupts = <GIC_SPI 72 IRQ_TYPE_LEVEL_HIGH>;
-		clocks = <&xin24m>, <&cru PCLK_TIMER>;
-		clock-names = "timer", "pclk";
-	};
diff --git a/Documentation/devicetree/bindings/timer/rockchip,rk-timer.yaml b/Documentation/devicetree/bindings/timer/rockchip,rk-timer.yaml
new file mode 100644
index 000000000000..f1bc3ac7abc8
--- /dev/null
+++ b/Documentation/devicetree/bindings/timer/rockchip,rk-timer.yaml
@@ -0,0 +1,67 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/timer/rockchip,rk-timer.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Rockchip Timer Device Tree Bindings
+
+maintainers:
+  - Daniel Lezcano <daniel.lezcano@linaro.org>
+
+properties:
+  compatible:
+    oneOf:
+      - const: rockchip,rk3288-timer
+      - const: rockchip,rk3399-timer
+      - items:
+          - enum:
+            - rockchip,rv1108-timer
+            - rockchip,rk3036-timer
+            - rockchip,rk3066-timer
+            - rockchip,rk3188-timer
+            - rockchip,rk3228-timer
+            - rockchip,rk3229-timer
+            - rockchip,rk3288-timer
+            - rockchip,rk3368-timer
+            - rockchip,px30-timer
+          - const: rockchip,rk3288-timer
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+  clocks:
+    minItems: 2
+    maxItems: 2
+
+  clock-names:
+    items:
+      enum:
+        - timer
+        - pclk
+    minItems: 2
+    maxItems: 2
+
+required:
+  - compatible
+  - reg
+  - interrupts
+  - clocks
+  - clock-names
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+    #include <dt-bindings/clock/rk3288-cru.h>
+
+    timer: timer@ff810000 {
+        compatible = "rockchip,rk3288-timer";
+        reg = <0xff810000 0x20>;
+        interrupts = <GIC_SPI 72 IRQ_TYPE_LEVEL_HIGH>;
+        clocks = <&xin24m>, <&cru PCLK_TIMER>;
+        clock-names = "timer", "pclk";
+    };
-- 
2.30.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
