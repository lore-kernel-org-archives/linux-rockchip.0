Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CA838C67868
	for <linux-rockchip@archiver.kernel.org>; Wed, 31 Aug 2022 21:55:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Zwp0iIszRGPFlS1Y2ao5dLSpb6TQ6sF26h9lHWQoF2E=; b=n4b1zovv16IHiP
	pwlqEB8pJilRoJBZ03ql938eWTf2tt5R73enOxtZlcTbjoZkEyIx2NxwwpmCaamowXGvNQ1bOQSBk
	HO7/xwCyshFIip1+rVz4vf0GCB8vYwSrSLTbHCmGHuTY8L4KaSSOoCEuQyk6uY1pBV30aneEzNJQR
	hfD969RR1BFE6WCzyAqIsUmR4RLc00jeRkl3zSfR4R9NYpqcg+LEu1tT1Tc2cBT1KVqfZuAYUzEqj
	F8051r/w3kFfAkXWsjL+z1PHvD7Kgf0MsOGQ0eVK7vfaonox1ehUoKeR2zUBhfu9FWX3h0hHJ/iXz
	brBDnmHodS0TIZqJknZA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oTVfv-008M4X-Lg; Wed, 31 Aug 2022 21:55:07 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oTVfl-008LxU-P4
	for linux-rockchip@lists.infradead.org; Wed, 31 Aug 2022 21:55:01 +0000
Received: from jupiter.universe (dyndsl-091-096-057-024.ewe-ip-backbone.de [91.96.57.24])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: sre)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 566556601E4A;
	Wed, 31 Aug 2022 22:54:47 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1661982887;
	bh=vDX2n5zeKGDmvDnzWE4Z87rxSRSbQy9jHgwhZ2SK0X8=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=N3OuNqb6qbrS+S1SRz1/nsfSVN+5G9pHy9MplXTz8KTbAGZGL/7y8/sKViXy8UzLA
	 fY9A7HLF5/sP6nr0KHIAtFr6HGzA0hr96vGRnh+xdHu2IUMimwoCzgipof6xRIGXay
	 IonFLHP6Csy+pswL7kBGbKr7p0dc3JCKc70JSh8vFwg2XSlsuBQ+YDPA42rsUdLH/e
	 xCWl+In02H7k6LuEwEtvY3KwsNY/FixRhE2ED29ElEcQaBphkDY8zUqu4tqFMFuj3p
	 ZAGVhlsQ1kO1EiCNJR5XIVV2En5OE7lF8rFqKfton7W1TP/Nuhj/PKtrbVHP7xGpIT
	 m5jqBxP7uuItg==
Received: by jupiter.universe (Postfix, from userid 1000)
	id 3FB23481222; Wed, 31 Aug 2022 23:54:43 +0200 (CEST)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Lee Jones <lee@kernel.org>
Cc: Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Linus Walleij <linus.walleij@linaro.org>,
	Mark Brown <broonie@kernel.org>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Alexandre Belloni <alexandre.belloni@bootlin.com>,
	Alessandro Zummo <a.zummo@towertech.it>,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	kernel@collabora.com
Subject: [PATCH 08/13] dt-bindings: mfd: add rk806 binding
Date: Wed, 31 Aug 2022 23:54:32 +0200
Message-Id: <20220831215437.117880-9-sebastian.reichel@collabora.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220831215437.117880-1-sebastian.reichel@collabora.com>
References: <20220831215437.117880-1-sebastian.reichel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220831_145458_149323_7EDFFD8E 
X-CRM114-Status: GOOD (  14.03  )
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

Add DT binding document for Rockchip's RK806 PMIC.

Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
 .../bindings/mfd/rockchip,rk806.yaml          | 388 ++++++++++++++++++
 1 file changed, 388 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/mfd/rockchip,rk806.yaml

diff --git a/Documentation/devicetree/bindings/mfd/rockchip,rk806.yaml b/Documentation/devicetree/bindings/mfd/rockchip,rk806.yaml
new file mode 100644
index 000000000000..c775ef60db8b
--- /dev/null
+++ b/Documentation/devicetree/bindings/mfd/rockchip,rk806.yaml
@@ -0,0 +1,388 @@
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/mfd/rockchip,rk806.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: RK806 Power Management Integrated Circuit
+
+maintainers:
+  - Sebastian Reichel <sebastian.reichel@collabora.com>
+
+description: |
+  Rockchip RK806 series PMIC. This device consists of an spi or
+  i2c controlled MFD that includes multiple switchable regulators.
+
+properties:
+  compatible:
+    enum:
+      - rockchip,rk806
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+  gpio-controller: true
+
+  '#gpio-cells':
+    const: 2
+
+  vcc1-supply:
+    description:
+      The input supply for DCDC_REG1.
+
+  vcc2-supply:
+    description:
+      The input supply for DCDC_REG2.
+
+  vcc3-supply:
+    description:
+      The input supply for DCDC_REG3.
+
+  vcc4-supply:
+    description:
+      The input supply for DCDC_REG4.
+
+  vcc5-supply:
+    description:
+      The input supply for DCDC_REG5.
+
+  vcc6-supply:
+    description:
+      The input supply for DCDC_REG6.
+
+  vcc7-supply:
+    description:
+      The input supply for DCDC_REG7.
+
+  vcc8-supply:
+    description:
+      The input supply for DCDC_REG8.
+
+  vcc9-supply:
+    description:
+      The input supply for DCDC_REG9.
+
+  vcc10-supply:
+    description:
+      The input supply for DCDC_REG10.
+
+  vcc11-supply:
+    description:
+      The input supply for PLDO_REG1, PLDO_REG2 and PLDO_REG3.
+
+  vcc12-supply:
+    description:
+      The input supply for PLDO_REG4 and PLDO_REG5.
+
+  vcc13-supply:
+    description:
+      The input supply for NLDO_REG1, NLDO_REG2 and NLDO_REG3.
+
+  vcc14-supply:
+    description:
+      The input supply for NLDO_REG4 and NLDO_REG5.
+
+  vcca-supply:
+    description:
+      The input supply for PLDO_REG6.
+
+  regulators:
+    type: object
+    patternProperties:
+      "^(DCDC_REG[1-9]0?|[PN]LDO_REG[1-6])$":
+        type: object
+        $ref: ../regulator/regulator.yaml#
+    unevaluatedProperties: false
+
+required:
+  - compatible
+  - reg
+  - interrupts
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/pinctrl/rockchip.h>
+    #include <dt-bindings/interrupt-controller/irq.h>
+    #include <dt-bindings/gpio/gpio.h>
+    spi {
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        pmic@0 {
+            compatible = "rockchip,rk806";
+            reg = <0x0>;
+
+            interrupts = <7 IRQ_TYPE_LEVEL_LOW>;
+
+            vcc1-supply = <&vcc5v0_sys>;
+            vcc2-supply = <&vcc5v0_sys>;
+            vcc3-supply = <&vcc5v0_sys>;
+            vcc4-supply = <&vcc5v0_sys>;
+            vcc5-supply = <&vcc5v0_sys>;
+            vcc6-supply = <&vcc5v0_sys>;
+            vcc7-supply = <&vcc5v0_sys>;
+            vcc8-supply = <&vcc5v0_sys>;
+            vcc9-supply = <&vcc5v0_sys>;
+            vcc10-supply = <&vcc5v0_sys>;
+            vcc11-supply = <&vcc_2v0_pldo_s3>;
+            vcc12-supply = <&vcc5v0_sys>;
+            vcc13-supply = <&vcc5v0_sys>;
+            vcc14-supply = <&vcc_1v1_nldo_s3>;
+            vcca-supply = <&vcc5v0_sys>;
+
+            regulators {
+                vdd_gpu_s0: DCDC_REG1 {
+                        regulator-always-on;
+                        regulator-boot-on;
+                        regulator-min-microvolt = <550000>;
+                        regulator-max-microvolt = <950000>;
+                        regulator-ramp-delay = <12500>;
+                        regulator-name = "vdd_gpu_s0";
+                        regulator-state-mem {
+                                regulator-off-in-suspend;
+                        };
+                };
+
+                vdd_npu_s0: DCDC_REG2 {
+                        regulator-always-on;
+                        regulator-boot-on;
+                        regulator-min-microvolt = <550000>;
+                        regulator-max-microvolt = <950000>;
+                        regulator-ramp-delay = <12500>;
+                        regulator-name = "vdd_npu_s0";
+                        regulator-state-mem {
+                                regulator-off-in-suspend;
+                        };
+                };
+
+                vdd_log_s0: DCDC_REG3 {
+                        regulator-always-on;
+                        regulator-boot-on;
+                        regulator-min-microvolt = <750000>;
+                        regulator-max-microvolt = <750000>;
+                        regulator-ramp-delay = <12500>;
+                        regulator-name = "vdd_log_s0";
+                        regulator-state-mem {
+                                regulator-on-in-suspend;
+                                regulator-suspend-microvolt = <750000>;
+                        };
+                };
+
+                vdd_vdenc_s0: DCDC_REG4 {
+                        regulator-always-on;
+                        regulator-boot-on;
+                        regulator-min-microvolt = <550000>;
+                        regulator-max-microvolt = <950000>;
+                        regulator-ramp-delay = <12500>;
+                        regulator-name = "vdd_vdenc_s0";
+                        regulator-state-mem {
+                                regulator-off-in-suspend;
+                        };
+                };
+
+                vdd_gpu_mem_s0: DCDC_REG5 {
+                        regulator-always-on;
+                        regulator-boot-on;
+                        regulator-min-microvolt = <675000>;
+                        regulator-max-microvolt = <950000>;
+                        regulator-ramp-delay = <12500>;
+                        regulator-name = "vdd_gpu_mem_s0";
+                        regulator-state-mem {
+                                regulator-off-in-suspend;
+                        };
+                };
+
+                vdd_npu_mem_s0: DCDC_REG6 {
+                        regulator-always-on;
+                        regulator-boot-on;
+                        regulator-min-microvolt = <675000>;
+                        regulator-max-microvolt = <950000>;
+                        regulator-ramp-delay = <12500>;
+                        regulator-name = "vdd_npu_mem_s0";
+                        regulator-state-mem {
+                                regulator-off-in-suspend;
+                        };
+                };
+
+                vcc_2v0_pldo_s3: DCDC_REG7 {
+                        regulator-always-on;
+                        regulator-boot-on;
+                        regulator-min-microvolt = <2000000>;
+                        regulator-max-microvolt = <2000000>;
+                        regulator-ramp-delay = <12500>;
+                        regulator-name = "vdd_2v0_pldo_s3";
+                        regulator-state-mem {
+                                regulator-on-in-suspend;
+                                regulator-suspend-microvolt = <2000000>;
+                        };
+                };
+
+                vdd_vdenc_mem_s0: DCDC_REG8 {
+                        regulator-always-on;
+                        regulator-boot-on;
+                        regulator-min-microvolt = <675000>;
+                        regulator-max-microvolt = <950000>;
+                        regulator-ramp-delay = <12500>;
+                        regulator-name = "vdd_vdenc_mem_s0";
+                        regulator-state-mem {
+                                regulator-off-in-suspend;
+                        };
+                };
+
+                vdd2_ddr_s3: DCDC_REG9 {
+                        regulator-always-on;
+                        regulator-boot-on;
+                        regulator-name = "vdd2_ddr_s3";
+                        regulator-state-mem {
+                                regulator-on-in-suspend;
+                        };
+                };
+
+                vcc_1v1_nldo_s3: DCDC_REG10 {
+                        regulator-always-on;
+                        regulator-boot-on;
+                        regulator-min-microvolt = <1100000>;
+                        regulator-max-microvolt = <1100000>;
+                        regulator-ramp-delay = <12500>;
+                        regulator-name = "vcc_1v1_nldo_s3";
+                        regulator-state-mem {
+                                regulator-on-in-suspend;
+                                regulator-suspend-microvolt = <1100000>;
+                        };
+                };
+
+                avcc_1v8_s0: PLDO_REG1 {
+                        regulator-always-on;
+                        regulator-boot-on;
+                        regulator-min-microvolt = <1800000>;
+                        regulator-max-microvolt = <1800000>;
+                        regulator-ramp-delay = <12500>;
+                        regulator-name = "avcc_1v8_s0";
+                        regulator-state-mem {
+                                regulator-off-in-suspend;
+                        };
+                };
+
+                vdd1_1v8_ddr_s3: PLDO_REG2 {
+                        regulator-always-on;
+                        regulator-boot-on;
+                        regulator-min-microvolt = <1800000>;
+                        regulator-max-microvolt = <1800000>;
+                        regulator-ramp-delay = <12500>;
+                        regulator-name = "vdd1_1v8_ddr_s3";
+                        regulator-state-mem {
+                                regulator-on-in-suspend;
+                                regulator-suspend-microvolt = <1800000>;
+                        };
+                };
+
+                vcc_1v8_s3: PLDO_REG3 {
+                        regulator-always-on;
+                        regulator-boot-on;
+                        regulator-min-microvolt = <1800000>;
+                        regulator-max-microvolt = <1800000>;
+                        regulator-ramp-delay = <12500>;
+                        regulator-name = "vcc_1v8_s3";
+                        regulator-state-mem {
+                                regulator-on-in-suspend;
+                                regulator-suspend-microvolt = <1800000>;
+                        };
+                };
+
+                vcc_3v3_s0: PLDO_REG4 {
+                        regulator-always-on;
+                        regulator-boot-on;
+                        regulator-min-microvolt = <3300000>;
+                        regulator-max-microvolt = <3300000>;
+                        regulator-ramp-delay = <12500>;
+                        regulator-name = "vcc_3v3_s0";
+                        regulator-state-mem {
+                                regulator-off-in-suspend;
+                        };
+                };
+
+                vccio_sd_s0: PLDO_REG5 {
+                        regulator-always-on;
+                        regulator-boot-on;
+                        regulator-min-microvolt = <1800000>;
+                        regulator-max-microvolt = <3300000>;
+                        regulator-ramp-delay = <12500>;
+                        regulator-name = "vccio_sd_s0";
+                        regulator-state-mem {
+                                regulator-off-in-suspend;
+                        };
+                };
+
+                master_pldo6_s3: PLDO_REG6 {
+                        regulator-always-on;
+                        regulator-boot-on;
+                        regulator-min-microvolt = <1800000>;
+                        regulator-max-microvolt = <1800000>;
+                        regulator-name = "master_pldo6_s3";
+                        regulator-state-mem {
+                                regulator-on-in-suspend;
+                                regulator-suspend-microvolt = <1800000>;
+                        };
+                };
+
+                vdd_0v75_s3: NLDO_REG1 {
+                        regulator-always-on;
+                        regulator-boot-on;
+                        regulator-min-microvolt = <750000>;
+                        regulator-max-microvolt = <750000>;
+                        regulator-ramp-delay = <12500>;
+                        regulator-name = "vdd_0v75_s3";
+                        regulator-state-mem {
+                                regulator-on-in-suspend;
+                                regulator-suspend-microvolt = <750000>;
+                        };
+                };
+
+                vdd2l_0v9_ddr_s3: NLDO_REG2 {
+                        regulator-always-on;
+                        regulator-boot-on;
+                        regulator-min-microvolt = <900000>;
+                        regulator-max-microvolt = <900000>;
+                        regulator-name = "vdd2l_0v9_ddr_s3";
+                        regulator-state-mem {
+                                regulator-on-in-suspend;
+                                regulator-suspend-microvolt = <900000>;
+                        };
+                };
+
+                master_nldo3: NLDO_REG3 {
+                        regulator-name = "master_nldo3";
+                        regulator-state-mem {
+                                regulator-off-in-suspend;
+                        };
+                };
+
+                avdd_0v75_s0: NLDO_REG4 {
+                        regulator-always-on;
+                        regulator-boot-on;
+                        regulator-min-microvolt = <750000>;
+                        regulator-max-microvolt = <750000>;
+                        regulator-name = "avdd_0v75_s0";
+                        regulator-state-mem {
+                                regulator-off-in-suspend;
+                        };
+                };
+
+                vdd_0v85_s0: NLDO_REG5 {
+                        regulator-always-on;
+                        regulator-boot-on;
+                        regulator-min-microvolt = <850000>;
+                        regulator-max-microvolt = <850000>;
+                        regulator-name = "vdd_0v85_s0";
+                        regulator-state-mem {
+                                regulator-off-in-suspend;
+                        };
+                };
+            };
+        };
+    };
-- 
2.35.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
