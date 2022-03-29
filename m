Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DC768C433F5
	for <linux-rockchip@archiver.kernel.org>; Tue, 29 Mar 2022 16:30:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=i0FO64yxPzlK+OnViDmFQxBZRlVZtqXkTnDe8EiJScY=; b=yz73PkH6hKYDAf
	CH15Tk0O6e+G//t0HiJB66lCWuhtlVABYbYjQfEbL38qFuwLt8ArywDHoIi05TvThbQtxnqZ40vcM
	6RoPcsQ6k6n8r/aJW3mqvQE65niKmGVQUwiAcoB3M1JgOK27pdP26JJQ4+ts3tTy714zgNG2QTylV
	FR8NtX3XznuKF0xnkWIlcIV0G72GQO6oFDBmLEiKmqOgIUFy78O9nYuIBTx9qw1Ggi9Ld7CNbgjEa
	jB8p45BVtDp4CkIMA0IWIlpyqVtUrPcVyNlDkMe9ZqiasBSOuM/mKFRLc4XHriCV2hVLC3vD0tCKt
	5xqEqiyPOZ2hXIQxZ70Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nZEjw-00CtDF-SZ; Tue, 29 Mar 2022 16:30:40 +0000
Received: from mail-ed1-x530.google.com ([2a00:1450:4864:20::530])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nZEjk-00Ct9M-Nu; Tue, 29 Mar 2022 16:30:30 +0000
Received: by mail-ed1-x530.google.com with SMTP id h1so21345378edj.1;
 Tue, 29 Mar 2022 09:30:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=d1S/S8hgFbgrR0O65twBXNIv5pIOQ9OSLSPFpnPfz8s=;
 b=YWWSRnIauJSl8GV+h692nAqVdl2yPxmvRjetyo7oLsUsa04Zd1Tbm/AFTmx2QohXjJ
 mjBSZAmo9VRs/Yv18bacq5PdVBLRqSq9mGg661WqYU9yALjEpTe0vMBZPDTIYwt6bFgI
 X7Lm8LTy0w6Zj4GFsFUVBXvUhzx2LsYBjiQLqUpBWVqAzqa2u9pIxILaiq4W1HZZrrsa
 LfMkVQoCS4/m4IFpVcI+W0Ag5NYX2Vx4a9Y8zXDZeDm0h2Xow+UdUu2KkNgLIdkQPOXV
 lcXeFa41lws/n7gQwk2nouWO+uXQX3bTB70+DEl3t5LIJV70fdxtbaFenoQF1eYWZUKg
 h+iQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=d1S/S8hgFbgrR0O65twBXNIv5pIOQ9OSLSPFpnPfz8s=;
 b=mHzEVLLq8Xv0Y6OOcINZrsEC0w16oMoeOKiA4KDJiV6pgHngBOWJLEaWEdAQ5EtFu7
 QtUb2dRNvRku8CnKQGSQvQvZaBZwp6bZ+tIpOivj5/l+Jwy5eJ1vl/rgbFOXm8J25ZAs
 yI06I4P9ur8xxl0oI/QEwgIhQlp3oPH7w0vezkjRMg+mjXy4NEexrnGhsEWtktF8Jtv0
 FwARC/NBY90rbqr0X1A7MeDlVnvmHLH4YZSS0M2djr4IseAVZIuvDmMx8a03LhYLdKtZ
 bOSB9ViTAI31F6jqqBUvhO0I8GX33TXMocMvuL7Tcs+5Mc/0VHnGra1KlYMhlK4p6/pP
 Y7Tw==
X-Gm-Message-State: AOAM531en9QZcsIHN4TLX+IXKz0DjrBnmrkwcyEaARFhIEThCGOgnSD+
 lRRBs4Lvj0N7muCZF3HZuNY=
X-Google-Smtp-Source: ABdhPJyAmd7mdqFmqHLCmRFi1gR1ClGaGIb+efJ6Hu6voyCX6CW37zaNOeSUt0Y6IXtICaaQsIixTA==
X-Received: by 2002:a05:6402:d2:b0:413:2e50:d6fd with SMTP id
 i18-20020a05640200d200b004132e50d6fdmr5565813edu.171.1648571427125; 
 Tue, 29 Mar 2022 09:30:27 -0700 (PDT)
Received: from debian.home (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id
 k26-20020a056402049a00b004197b0867e0sm8601179edv.42.2022.03.29.09.30.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 29 Mar 2022 09:30:26 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de,
	zhangqing@rock-chips.com
Cc: robh+dt@kernel.org, krzk+dt@kernel.org, mturquette@baylibre.com,
 sboyd@kernel.org, linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v1 1/3] dt-bindings: clock: convert rockchip,
 rk3328-cru.txt to YAML
Date: Tue, 29 Mar 2022 18:30:14 +0200
Message-Id: <20220329163016.27458-1-jbx6244@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220329_093028_816800_DC6B4992 
X-CRM114-Status: GOOD (  18.81  )
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

Current dts files with RK3328 'cru' nodes are manually verified.
In order to automate this process rockchip,rk3328-cru.txt has to be
converted to YAML.

Changed:
  Add properties to fix notifications by clocks.yaml for example:
    clocks
    clock-names

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 .../bindings/clock/rockchip,rk3328-cru.txt    | 58 ---------------
 .../bindings/clock/rockchip,rk3328-cru.yaml   | 74 +++++++++++++++++++
 2 files changed, 74 insertions(+), 58 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/clock/rockchip,rk3328-cru.txt
 create mode 100644 Documentation/devicetree/bindings/clock/rockchip,rk3328-cru.yaml

diff --git a/Documentation/devicetree/bindings/clock/rockchip,rk3328-cru.txt b/Documentation/devicetree/bindings/clock/rockchip,rk3328-cru.txt
deleted file mode 100644
index 904ae682e..000000000
--- a/Documentation/devicetree/bindings/clock/rockchip,rk3328-cru.txt
+++ /dev/null
@@ -1,58 +0,0 @@
-* Rockchip RK3328 Clock and Reset Unit
-
-The RK3328 clock controller generates and supplies clock to various
-controllers within the SoC and also implements a reset controller for SoC
-peripherals.
-
-Required Properties:
-
-- compatible: should be "rockchip,rk3328-cru"
-- reg: physical base address of the controller and length of memory mapped
-  region.
-- #clock-cells: should be 1.
-- #reset-cells: should be 1.
-
-Optional Properties:
-
-- rockchip,grf: phandle to the syscon managing the "general register files"
-  If missing pll rates are not changeable, due to the missing pll lock status.
-
-Each clock is assigned an identifier and client nodes can use this identifier
-to specify the clock which they consume. All available clocks are defined as
-preprocessor macros in the dt-bindings/clock/rk3328-cru.h headers and can be
-used in device tree sources. Similar macros exist for the reset sources in
-these files.
-
-External clocks:
-
-There are several clocks that are generated outside the SoC. It is expected
-that they are defined using standard clock bindings with following
-clock-output-names:
- - "xin24m" - crystal input - required,
- - "clkin_i2s" - external I2S clock - optional,
- - "gmac_clkin" - external GMAC clock - optional
- - "phy_50m_out" - output clock of the pll in the mac phy
- - "hdmi_phy" - output clock of the hdmi phy pll - optional
-
-Example: Clock controller node:
-
-	cru: clock-controller@ff440000 {
-		compatible = "rockchip,rk3328-cru";
-		reg = <0x0 0xff440000 0x0 0x1000>;
-		rockchip,grf = <&grf>;
-
-		#clock-cells = <1>;
-		#reset-cells = <1>;
-	};
-
-Example: UART controller node that consumes the clock generated by the clock
-  controller:
-
-	uart0: serial@ff120000 {
-		compatible = "snps,dw-apb-uart";
-		reg = <0xff120000 0x100>;
-		interrupts = <GIC_SPI 56 IRQ_TYPE_LEVEL_HIGH>;
-		reg-shift = <2>;
-		reg-io-width = <4>;
-		clocks = <&cru SCLK_UART0>;
-	};
diff --git a/Documentation/devicetree/bindings/clock/rockchip,rk3328-cru.yaml b/Documentation/devicetree/bindings/clock/rockchip,rk3328-cru.yaml
new file mode 100644
index 000000000..f079c7a25
--- /dev/null
+++ b/Documentation/devicetree/bindings/clock/rockchip,rk3328-cru.yaml
@@ -0,0 +1,74 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/clock/rockchip,rk3328-cru.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Rockchip RK3328 Clock and Reset Unit (CRU)
+
+maintainers:
+  - Elaine Zhang <zhangqing@rock-chips.com>
+  - Heiko Stuebner <heiko@sntech.de>
+
+description: |
+  The RK3328 clock controller generates and supplies clocks to various
+  controllers within the SoC and also implements a reset controller for SoC
+  peripherals.
+  Each clock is assigned an identifier and client nodes can use this identifier
+  to specify the clock which they consume. All available clocks are defined as
+  preprocessor macros in the dt-bindings/clock/rk3328-cru.h headers and can be
+  used in device tree sources. Similar macros exist for the reset sources in
+  these files.
+  There are several clocks that are generated outside the SoC. It is expected
+  that they are defined using standard clock bindings with following
+  clock-output-names:
+    - "xin24m"      - crystal input                          - required,
+    - "clkin_i2s"   - external I2S clock                     - optional,
+    - "gmac_clkin"  - external GMAC clock                    - optional
+    - "phy_50m_out" - output clock of the pll in the mac phy
+    - "hdmi_phy"    - output clock of the hdmi phy pll       - optional
+
+properties:
+  compatible:
+    enum:
+      - rockchip,rk3328-cru
+
+  reg:
+    maxItems: 1
+
+  "#clock-cells":
+    const: 1
+
+  "#reset-cells":
+    const: 1
+
+  clocks:
+    maxItems: 1
+
+  clock-names:
+    const: xin24m
+
+  rockchip,grf:
+    $ref: /schemas/types.yaml#/definitions/phandle
+    description:
+      Phandle to the syscon managing the "general register files" (GRF),
+      if missing pll rates are not changeable, due to the missing pll
+      lock status.
+
+required:
+  - compatible
+  - reg
+  - "#clock-cells"
+  - "#reset-cells"
+
+additionalProperties: false
+
+examples:
+  - |
+    cru: clock-controller@ff440000 {
+      compatible = "rockchip,rk3328-cru";
+      reg = <0xff440000 0x1000>;
+      rockchip,grf = <&grf>;
+      #clock-cells = <1>;
+      #reset-cells = <1>;
+    };
-- 
2.20.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
