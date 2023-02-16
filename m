Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DDC17C61DA4
	for <linux-rockchip@archiver.kernel.org>; Thu, 16 Feb 2023 10:43:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PduXvMj4bZD8u4upVLyaY6NLC0GmnaNQo6BDxrebO40=; b=JztXo+mwaGxcOq
	2ReZfaJPyLC0F9nyEbsIu+bAEIjVOm3CVdVawb0qUPd4v3snvjel+gNfT6rM43z22nldNZYz99WYt
	6KMvnwnb8GHWiB92uYmOtAm1Pu76dTfupHOD+fmswl9M7YIrmBKBT5Ec09i8vC/DZAd7bLHZBhuUl
	H+9q3rtxX9Oj4e/w20BfTqCgOOVRqT9PCpNmkdOgLKisP/Z5cWVQVPjJQzDeQgc2Lj5nyAl2CXFjU
	nvptHGCFlKXgi9hxZRjhZfXISrOMr8UjOyn/BzNT7UcG582awQ6Dv4FVbqmlp4nQYWOk11VFcvkwB
	XpKEaCmHfAgqUhxmGYgQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pSbjJ-009f69-6N; Thu, 16 Feb 2023 10:43:09 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pSbdQ-009bHA-19
	for linux-rockchip@bombadil.infradead.org; Thu, 16 Feb 2023 10:37:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=X2+03qApJ631CithW4Disr8aFYAetqwh+Lmhb2KaFdQ=; b=Afc+S9sWJj7MikCInkZwaRqWS4
	2mH3FAfZ2BIQ1tseSmm3p+2aPuQIAgjzvg+zP4TCtwAdq+Dr+8L47KMEqWUW4Q7rbTgQzYsxUYNg+
	AChsRnO2nG7EO2BOZUyKv2P5CQkKv82kAqCSJw9ZJor49dMDu+i32moq2foJ7f1hzQgZDOjbu6U0V
	D1ERsiJIywA7/BdQg3PBWHt2bVCwV+YI42LbL3odnkMo/oMsS63NO1szQ2x/qJ0QC9FHui8zK2lOx
	8DLrh8xo1hbw+iaLTpqSds1sz78gG8prgODX/EfXiKyRek7ZsEtqx6AFtkdfS9J5Zl8KWCevSiCt3
	50rtyexg==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pSbcL-00AEzy-0m
	for linux-rockchip@lists.infradead.org;
	Thu, 16 Feb 2023 10:36:59 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pSbcs-0003ec-Jo; Thu, 16 Feb 2023 11:36:30 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pSbcq-005KnX-L9; Thu, 16 Feb 2023 11:36:29 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pSbco-002Wiq-7Q; Thu, 16 Feb 2023 11:36:26 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: linux-pm@vger.kernel.org
Cc: linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Kyungmin Park <kyungmin.park@samsung.com>,
	MyungJoo Ham <myungjoo.ham@samsung.com>,
	Will Deacon <will@kernel.org>,
	Mark Rutland <mark.rutland@arm.com>,
	kernel@pengutronix.de,
	Michael Riesch <michael.riesch@wolfvision.net>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Rob Herring <robh@kernel.org>
Subject: [PATCH v3 18/19] dt-bindings: devfreq: event: convert Rockchip DFI binding to yaml
Date: Thu, 16 Feb 2023 11:36:23 +0100
Message-Id: <20230216103624.591901-19-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230216103624.591901-1-s.hauer@pengutronix.de>
References: <20230216103624.591901-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: sha@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230216_103640_096021_F32CF665 
X-CRM114-Status: GOOD (  18.09  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
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

Convert the Rockchip DFI binding to yaml.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
Reviewed-by: Rob Herring <robh@kernel.org>
---
 .../bindings/devfreq/event/rockchip,dfi.yaml  | 61 +++++++++++++++++++
 .../bindings/devfreq/event/rockchip-dfi.txt   | 18 ------
 .../rockchip,rk3399-dmc.yaml                  |  2 +-
 3 files changed, 62 insertions(+), 19 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/devfreq/event/rockchip,dfi.yaml
 delete mode 100644 Documentation/devicetree/bindings/devfreq/event/rockchip-dfi.txt

diff --git a/Documentation/devicetree/bindings/devfreq/event/rockchip,dfi.yaml b/Documentation/devicetree/bindings/devfreq/event/rockchip,dfi.yaml
new file mode 100644
index 0000000000000..7a82f6ae0701e
--- /dev/null
+++ b/Documentation/devicetree/bindings/devfreq/event/rockchip,dfi.yaml
@@ -0,0 +1,61 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/devfreq/event/rockchip,dfi.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Rockchip DFI
+
+maintainers:
+  - Sascha Hauer <s.hauer@pengutronix.de>
+
+properties:
+  compatible:
+    enum:
+      - rockchip,rk3399-dfi
+
+  clocks:
+    maxItems: 1
+
+  clock-names:
+    items:
+      - const: pclk_ddr_mon
+
+  interrupts:
+    maxItems: 1
+
+  reg:
+    maxItems: 1
+
+  rockchip,pmu:
+    $ref: /schemas/types.yaml#/definitions/phandle
+    description:
+      Phandle to the syscon managing the "PMU general register files".
+
+required:
+  - compatible
+  - clocks
+  - clock-names
+  - interrupts
+  - reg
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+    #include <dt-bindings/clock/rk3308-cru.h>
+
+    bus {
+      #address-cells = <2>;
+      #size-cells = <2>;
+
+      dfi: dfi@ff630000 {
+        compatible = "rockchip,rk3399-dfi";
+        reg = <0x00 0xff630000 0x00 0x4000>;
+        interrupts = <GIC_SPI 131 IRQ_TYPE_LEVEL_HIGH 0>;
+        rockchip,pmu = <&pmugrf>;
+        clocks = <&cru PCLK_DDR_MON>;
+        clock-names = "pclk_ddr_mon";
+      };
+    };
diff --git a/Documentation/devicetree/bindings/devfreq/event/rockchip-dfi.txt b/Documentation/devicetree/bindings/devfreq/event/rockchip-dfi.txt
deleted file mode 100644
index 148191b0fc158..0000000000000
--- a/Documentation/devicetree/bindings/devfreq/event/rockchip-dfi.txt
+++ /dev/null
@@ -1,18 +0,0 @@
-
-* Rockchip rk3399 DFI device
-
-Required properties:
-- compatible: Must be "rockchip,rk3399-dfi".
-- reg: physical base address of each DFI and length of memory mapped region
-- rockchip,pmu: phandle to the syscon managing the "pmu general register files"
-- clocks: phandles for clock specified in "clock-names" property
-- clock-names : the name of clock used by the DFI, must be "pclk_ddr_mon";
-
-Example:
-	dfi: dfi@ff630000 {
-		compatible = "rockchip,rk3399-dfi";
-		reg = <0x00 0xff630000 0x00 0x4000>;
-		rockchip,pmu = <&pmugrf>;
-		clocks = <&cru PCLK_DDR_MON>;
-		clock-names = "pclk_ddr_mon";
-	};
diff --git a/Documentation/devicetree/bindings/memory-controllers/rockchip,rk3399-dmc.yaml b/Documentation/devicetree/bindings/memory-controllers/rockchip,rk3399-dmc.yaml
index fb4920397d08e..aba8649aaeb10 100644
--- a/Documentation/devicetree/bindings/memory-controllers/rockchip,rk3399-dmc.yaml
+++ b/Documentation/devicetree/bindings/memory-controllers/rockchip,rk3399-dmc.yaml
@@ -18,7 +18,7 @@ properties:
     $ref: /schemas/types.yaml#/definitions/phandle
     description:
       Node to get DDR loading. Refer to
-      Documentation/devicetree/bindings/devfreq/event/rockchip-dfi.txt.
+      Documentation/devicetree/bindings/devfreq/event/rockchip,dfi.yaml.
 
   clocks:
     maxItems: 1
-- 
2.30.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
