Return-Path: <SRS0=3OfA=KB=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,UNPARSEABLE_RELAY,
	URIBL_BLOCKED,USER_AGENT_GIT autolearn=unavailable autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96C5AC433B4
	for <linux-rockchip@archiver.kernel.org>; Thu,  6 May 2021 11:12:20 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id C6B7D61164
	for <linux-rockchip@archiver.kernel.org>; Thu,  6 May 2021 11:12:19 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org C6B7D61164
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=DiNuzEIcc169URlTc46YmyLBjD3ZsOnHuYIHQbvJFuE=; b=eqCUF4jdofdMnv0a1zixXTbil
	O9YccSTp/ig/4S/21/uwFe/l3XHB25uI8Xqtch9Xkzd9Wt2bMyXRHXtWjQDw/Ca6AHTp9iAVVqPAQ
	aTTVjiIrAaqOgHHrSD/d8+n/DTSB+1cJantgJxYEZLVhxcPMU8QM+TTKtPec5gEx9M8Oe5zmn+a+R
	oifhMU7ohxRbmWeTSWxcWPk7wh2mz3zSbwJ8S7830mJM2IfDUAmj3DnrcBPAh0sq8Rpn+OU+ExzPY
	CUcAiUlB8ukGDPldKOMZtkGGLkdlXx3fr7tkwfSoZcAdruMCtz4mHzDu6UDDASQ3zrVz0yG9xSzX4
	HG8vYr9Og==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lebvQ-0045lx-0C; Thu, 06 May 2021 11:12:12 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lebvJ-0045kW-Lc
 for linux-rockchip@desiato.infradead.org; Thu, 06 May 2021 11:12:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-Type:Content-ID:Content-Description;
 bh=4ztz8Fi0XX4KrRUJXaCwtG/a/0O8HrEEpzkNvlv6Qx4=; b=XPa9c6XE0NWbelDcEMLNol/Ecf
 LS1k814DZdsX+tSW96Fp4ghqYCPfkxz1sYHyNhEyWKF5exvXbZt1p5exz7zUSHpYhnsjVUaR99ZL/
 xG3qfNtC0MJhfCUC3gHqEJYX9b76GmYOBOisZFtewwjorkEVNbX2JVIurXn5gcJEf3uDaJsUaLFDW
 MWDIKFE1gjLHZ6vQ5iJhh7eF+Pzf+fj2kVLMuUP+0V6HNe9jxOwqju7sl8D0zyk4Gt1RUAHKBHX+3
 qx50aaoO7SyUn9u1/Vce6al5dmBowldS8pPDi2OXLHhd3BvX0exojdXOAVHWOsh5hWHob8m+LKzJB
 PF/md5Sg==;
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lebvG-005ybi-QT
 for linux-rockchip@lists.infradead.org; Thu, 06 May 2021 11:12:04 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: ezequiel) with ESMTPSA id 714B91F430DE
From: Ezequiel Garcia <ezequiel@collabora.com>
To: linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org
Cc: Heiko Stuebner <heiko@sntech.de>, Kever Yang <kever.yang@rock-chips.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Rob Herring <robh+dt@kernel.org>, Ezequiel Garcia <ezequiel@collabora.com>,
 kernel@collabora.com
Subject: [PATCH v2 3/3] dt-bindings: timer: convert rockchip,
 rk-timer.txt to YAML
Date: Thu,  6 May 2021 08:11:36 -0300
Message-Id: <20210506111136.3941-4-ezequiel@collabora.com>
X-Mailer: git-send-email 2.30.0
In-Reply-To: <20210506111136.3941-1-ezequiel@collabora.com>
References: <20210506111136.3941-1-ezequiel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210506_041203_007329_BC98D92B 
X-CRM114-Status: GOOD (  13.27  )
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
 .../bindings/timer/rockchip,rk-timer.yaml     | 64 +++++++++++++++++++
 2 files changed, 64 insertions(+), 27 deletions(-)
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
index 000000000000..e26ecb5893ae
--- /dev/null
+++ b/Documentation/devicetree/bindings/timer/rockchip,rk-timer.yaml
@@ -0,0 +1,64 @@
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
+              - rockchip,rv1108-timer
+              - rockchip,rk3036-timer
+              - rockchip,rk3066-timer
+              - rockchip,rk3188-timer
+              - rockchip,rk3228-timer
+              - rockchip,rk3229-timer
+              - rockchip,rk3288-timer
+              - rockchip,rk3368-timer
+              - rockchip,px30-timer
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
+      - const: pclk
+      - const: timer
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
+        clocks = <&cru PCLK_TIMER>, <&xin24m>;
+        clock-names = "pclk", "timer";
+    };
-- 
2.30.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
