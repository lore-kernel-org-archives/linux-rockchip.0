Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C25F0C54E58
	for <linux-rockchip@archiver.kernel.org>; Mon, 25 Mar 2024 04:17:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fajhgCqemFkU+swRjeI2AOovUfuUOOY/WkOv+93Qn1k=; b=kU3lknHMWALS7s
	t42k4LfBv2R5R9dcaSJRrYvM5hBeAyb5JDD6nRjgUT4IX/hDsSBmw2RUDUlNLcF+rpHn8wQAAVRpq
	dA/51y+xGOxBuKF64Rpj/62o9/nei3m0ctoYVwee+c+hTmq0Srqjmr4kJPKZujjB/3IeiItfm4CyX
	YCo0ITQObGRUhPEgLltiICOHnoDfUm0GhOfjv2QWSkfqycDP16TMEu7o5UcmAqeW8fowvVsvrH/9t
	egOhlLOe0ZSQkFdMeQpJtVxuujrN8nUY4DiisptEyX3iz01W6frHWdtT5ExZ+lu8aw1ctAWTK1LYj
	jYc9v5ShFDDhGnW9m/xg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1roblv-0000000F8Dv-0peW;
	Mon, 25 Mar 2024 04:17:19 +0000
Received: from mail-m25490.xmail.ntesmail.com ([103.129.254.90])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1roblr-0000000F8Af-04pd;
	Mon, 25 Mar 2024 04:17:17 +0000
DKIM-Signature: a=rsa-sha256;
	b=G8hd7UzZoAdbA1wHmMGafPZkMMNd476Dw1t4XSX3Yv3G1NYOQryEFaXBLj4d+eXjS7R4Y3ypOxtTyS0vv2PkMV/FKUodn5Gyy66Ah8kSlgQzdC6Az/nU0yaiHbUxNy+jrjGEe7ZRze86al36eDaqhwZGUJofvHmhj3AAe2mhd2g=;
	c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=qNWQ0E2o06XH4CPhJnC+MNCo7SgW7ENaUR/eOaQ2c7o=;
	h=date:mime-version:subject:message-id:from;
Received: from localhost.localdomain (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTPA id 119807C0194;
	Mon, 25 Mar 2024 12:16:57 +0800 (CST)
From: Sugar Zhang <sugar.zhang@rock-chips.com>
To: heiko@sntech.de
Cc: linux-rockchip@lists.infradead.org,
	Sugar Zhang <sugar.zhang@rock-chips.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Michael Turquette <mturquette@baylibre.com>,
	Rob Herring <robh@kernel.org>,
	Stephen Boyd <sboyd@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-clk@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v1 2/2] dt-bindings: clock: rockchip: Add support for clk input / output switch
Date: Mon, 25 Mar 2024 12:16:30 +0800
Message-Id: <1711340191-69588-2-git-send-email-sugar.zhang@rock-chips.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1711340191-69588-1-git-send-email-sugar.zhang@rock-chips.com>
References: <1711340191-69588-1-git-send-email-sugar.zhang@rock-chips.com>
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGkJNT1ZJGklCS05ITR9DHR5VEwETFh
	oSFyQUDg9ZV1kYEgtZQVlOQ1VJSVVMVUpKT1lXWRYaDxIVHRRZQVlPS0hVSk5DTUtIVUpLS1VKQl
	kG
X-HM-Tid: 0a8e73d3653b09d2kunm119807c0194
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6NxA6Gjo5FDMIFg02FQg2NEki
	IwpPCVFVSlVKTEpKSE9LSUpDSU9CVTMWGhIXVQgOHBoJVQETGhUcOwkUGBBWGBMSCwhVGBQWRVlX
	WRILWUFZTkNVSUlVTFVKSk9ZV1kIAVlBQk9MSzcG
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240324_211715_396891_2A6B6E9E 
X-CRM114-Status: GOOD (  16.65  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

This patch add support switch for clk-bidirection which located
at GRF, such as SAIx_MCLK_{IN OUT} which share the same pin.
and these config maybe located in many pieces of GRF,
which hard to addressed in one single clk driver. so, we add
this simple helper driver to address this situation.

In order to simplify implement and usage, and also for safety
clk usage (avoid high freq glitch), we set all clk out as disabled
(which means Input default for clk-bidrection) in the pre-stage,
such boot-loader or init by HW default. And then set a safety freq
before enable clk-out, such as "assign-clock-rates" or clk_set_rate
in drivers.

e.g.

1. mclk{out,in}_sai0 define:

  mclkin_sai0: mclkin-sai0 {
      compatible = "fixed-clock";
      #clock-cells = <0>;
      clock-frequency = <12288000>;
      clock-output-names = "mclk_sai0_from_io";
  };

  mclkout_sai0: mclkout-sai0@ff040070 {
      compatible = "rockchip,clk-out";
      reg = <0 0xff040070 0 0x4>;
      clocks = <&cru MCLK_SAI0_OUT2IO>;
      #clock-cells = <0>;
      clock-output-names = "mclk_sai0_to_io";
      rockchip,bit-shift = <4>;
      //example with PD if reg access needed
      power-domains = <&power RK3562_PD_VO>;
  };

Note:

clock-output-names of mclkin_sai0 should equal to strings in drivers. such as:

drivers/clk/rockchip/clk-rk3562.c:
PNAME(clk_sai0_p) = { "clk_sai0_src", "clk_sai0_frac", "xin_osc0_half", "mclk_sai0_from_io" };

2. mclkout_sai0 usage:

  &ext_codec {
      clocks = <&mclkout_sai0>;
      clock-names = "mclk";
      assigned-clocks = <&mclkout_sai0>;
      assigned-clock-rates = <12288000>;
      pinctrl-names = "default";
      pinctrl-0 = <&i2s0m0_mclk>;
  };

  clk_summary on sai0 work:

  cat /sys/kernel/debug/clk/clk_summary | egrep "pll|sai0"

  clk_sai0_src                1        1        0  1188000000          0     0  50000
    clk_sai0_frac             1        1        0    12288000          0     0  50000
      clk_sai0                1        1        0    12288000          0     0  50000
        mclk_sai0             1        1        0    12288000          0     0  50000
          mclk_sai0_out2io    1        1        0    12288000          0     0  50000
            mclk_sai0_to_io   1        1        0    12288000          0     0  50000

  example with PD if reg access needed:

  * PD status when mclk_sai0_to_io on:

  cat /sys/kernel/debug/pm_genpd/pm_genpd_summary

  domain                          status          children
    /device                                                runtime status
  ----------------------------------------------------------------------
  ...

  vo                              on
    /devices/platform/clocks/ff040070.mclkout-sai0         active
  ...

  * PD status when mclk_sai0_to_io off:

  cat /sys/kernel/debug/pm_genpd/pm_genpd_summary

  domain                          status          children
    /device                                                runtime status
  ----------------------------------------------------------------------
  ...

  vo                              off-0
    /devices/platform/clocks/ff040070.mclkout-sai0         suspended
  ...

3. mclkin_sai0 usage:

  please override freq of mclkin as the real external clkin, such as:

  &mclkin_sai0 {
      clock-frequency = <24576000>;
  }

  &ext_codec {
      clocks = <&mclkin_sai0>;
      clock-names = "mclk";
      assigned-clocks = <&cru CLK_SAI0>;
      assigned-clock-parents = <&mclkin_sai0>;
      pinctrl-names = "default";
      pinctrl-0 = <&i2s0m0_mclk>;
  };

  clk_summary on sai0 work:

  cat /sys/kernel/debug/clk/clk_summary | egrep "pll|sai0"

  mclk_sai0_from_io          1        1        0    12288000          0     0  50000
    clk_sai0                 1        1        0    12288000          0     0  50000
      mclk_sai0              1        1        0    12288000          0     0  50000
        mclk_sai0_out2io     0        0        0    12288000          0     0  50000
          mclk_sai0_to_io    0        0        0    12288000          0     0  50000

Signed-off-by: Sugar Zhang <sugar.zhang@rock-chips.com>
---

 .../bindings/clock/rockchip,clk-out.yaml           | 107 +++++++++++++++++++++
 1 file changed, 107 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/clock/rockchip,clk-out.yaml

diff --git a/Documentation/devicetree/bindings/clock/rockchip,clk-out.yaml b/Documentation/devicetree/bindings/clock/rockchip,clk-out.yaml
new file mode 100644
index 0000000..6582605
--- /dev/null
+++ b/Documentation/devicetree/bindings/clock/rockchip,clk-out.yaml
@@ -0,0 +1,107 @@
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/clock/rockchip,clk-out.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Rockchip Clock Out Control Module Binding
+
+maintainers:
+  - Sugar Zhang <sugar.zhang@rock-chips.com>
+
+description: |
+  This add support switch for clk-bidirection which located
+  at GRF, such as SAIx_MCLK_{IN OUT} which share the same pin.
+  and these config maybe located in many pieces of GRF,
+  which hard to addressed in one single clk driver. so, we add
+  this simple helper driver to address this situation.
+
+  In order to simplify implement and usage, and also for safety
+  clk usage (avoid high freq glitch), we set all clk out as disabled
+  (which means Input default for clk-bidrection) in the pre-stage,
+  such boot-loader or init by HW default. And then set a safety freq
+  before enable clk-out, such as "assign-clock-rates" or clk_set_rate
+  in drivers.
+
+properties:
+  compatible:
+    enum:
+      - rockchip,clk-out
+
+  reg:
+    maxItems: 1
+
+  "#clock-cells":
+    const: 1
+
+  clocks:
+    maxItems: 1
+    description: parent clocks.
+
+  power-domains:
+    maxItems: 1
+
+  clock-output-names:
+    maxItems: 1
+
+  rockchip,bit-shift:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    description: Defines the bit shift of clk out enable.
+
+  rockchip,bit-set-to-disable:
+    type: boolean
+    description: |
+      By default this clock sets the bit at bit-shift to enable the clock.
+      Setting this property does the opposite: setting the bit disable
+      the clock and clearing it enables the clock.
+
+required:
+  - compatible
+  - reg
+  - clocks
+  - "#clock-cells"
+  - clock-output-names
+  - rockchip,bit-shift
+
+additionalProperties: false
+
+examples:
+  # Clock Provider node:
+  - |
+    mclkin_sai0: mclkin-sai0 {
+        compatible = "fixed-clock";
+        #clock-cells = <0>;
+        clock-frequency = <12288000>;
+        clock-output-names = "mclk_sai0_from_io";
+    };
+
+    mclkout_sai0: mclkout-sai0@ff040070 {
+        compatible = "rockchip,clk-out";
+        reg = <0 0xff040070 0 0x4>;
+        clocks = <&cru MCLK_SAI0_OUT2IO>;
+        #clock-cells = <0>;
+        clock-output-names = "mclk_sai0_to_io";
+        rockchip,bit-shift = <4>;
+    };
+
+  # Clock mclkout Consumer node:
+  - |
+    ext_codec {
+        clocks = <&mclkout_sai0>;
+        clock-names = "mclk";
+        assigned-clocks = <&mclkout_sai0>;
+        assigned-clock-rates = <12288000>;
+        pinctrl-names = "default";
+        pinctrl-0 = <&i2s0m0_mclk>;
+    };
+
+  # Clock mclkin Consumer node:
+  - |
+    ext_codec {
+        clocks = <&mclkin_sai0>;
+        clock-names = "mclk";
+        assigned-clocks = <&cru CLK_SAI0>;
+        assigned-clock-parents = <&mclkin_sai0>;
+        pinctrl-names = "default";
+        pinctrl-0 = <&i2s0m0_mclk>;
+    };
-- 
2.7.4


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
