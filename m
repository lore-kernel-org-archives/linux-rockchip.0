Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 51CF9C433EF
	for <linux-rockchip@archiver.kernel.org>; Tue, 29 Mar 2022 19:51:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=N81AI3NCG6wKLNsuiUnJTTpx+g3kt2rMhVua+deAZxE=; b=ScuuDbrxDB9YWt
	yb/sfpR7Ga16JTeQohYDDo11KWjrUnxVIwbAKJA6/5DukaGMBcT3+PvkhONuXJUVWW1M5wePx6rxO
	KKpZh8/wLfxo2Z5at0QYyXcnVVpNv3Jo29CIObWjg0yh4YLWy7s/S+gd1Xnw1N2cPh+Cdg/QTeF4N
	e5trTQ5vbT9x9yaN/tSa1GBAjro/G9raNs5mBnJlXPBdng3ZoV3VH06ghbVon85l0IOIOOBeEW0r6
	t0A2LPZxTS3Zy/UcXV9KMHfnpsZ76XoypKt8gzSZn/z2MPLU0es5UZoOhWXaJioI5UAtSvFw3Rlgq
	dqGRabHN1c3UzQwsUG0w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nZHs7-00DNtc-Ul; Tue, 29 Mar 2022 19:51:19 +0000
Received: from mail-ej1-x634.google.com ([2a00:1450:4864:20::634])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nZHrs-00DNqh-Ua; Tue, 29 Mar 2022 19:51:06 +0000
Received: by mail-ej1-x634.google.com with SMTP id dr20so37239158ejc.6;
 Tue, 29 Mar 2022 12:51:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=l+XhA8TgVWNCg73BbGOG2hhIxLPG+B7tircTLTVq07s=;
 b=qSQKf469VMGOEcouWjg6eL1N7sLjZ6aziqkMKqa75RXLidLD5mIGh40AcfK05FOuyP
 ivYNGtSvUPN32R3aa40f/2iEyfGUsaXWl/dws/5Eg5grO9bwqK5hOPM7IfrDXgYhFMfJ
 J0/bfxMJiLmdjad5pF3Tj0wK09bYnbkm2jJVPVxsFQCHu973Pkme+AoBF3ZsWAsUGMv2
 ubcf+y1UD0maPYglC5rEo0UgxMcpJVMxq5Fa37qigHq0ZBrigwGfzM9bl6zqhRwskHgK
 jLpDjrBsJjsiS5PzbsakNxGC6iijTmG+XNh9I+t+CYQ6rEyrBmRxOANcqmU2A97Tv/sa
 ymGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=l+XhA8TgVWNCg73BbGOG2hhIxLPG+B7tircTLTVq07s=;
 b=bI4IDMKPI7gl0ozmux0p2Rm65qV5EJMoXgdvLvAI2+o8T70GIS0Ze5xXZA9HZJSCHu
 E8lGgdhyyI+ViAoqB/cc/wsymkjqS8f5upaWljaZDUhMYasFyB8ebtYPeKt7VnLlo25O
 HEBc6pHxMsAhAK5RtJwkTe+mDhrZGzayqNk5Epxt85KaNIfIIuyuLb04thuoYGEG6fnr
 ezDPM9705ZpnOStSLkjG7HRJtwnrJAsycfbvXAqwWaEQzeSRertTPelqKaCN2F3qe5y0
 DlkhhQBAbSVDN4uECxIhKAfEuvt0ncz6lewYTqRMvytrtMYS85NHFvFYp9YMUxOeq/nE
 h7rg==
X-Gm-Message-State: AOAM531NQLlw8hi6N/8BFyeUNYtkRVx5Oh5ipCyHG6YIbBI4bjFY+LLf
 4p9pPZSikMM4SCTI3sLP+FbtLVuP61k=
X-Google-Smtp-Source: ABdhPJzemaLV/PAuTjVl1105qt6YXlT40w60HAOGOEbmRL3gCpb0Bs4J3g18kYsjrGj7mfY43h0bnw==
X-Received: by 2002:a17:907:72c5:b0:6d6:e749:da41 with SMTP id
 du5-20020a17090772c500b006d6e749da41mr37598321ejc.591.1648583463507; 
 Tue, 29 Mar 2022 12:51:03 -0700 (PDT)
Received: from debian.home (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id
 n27-20020a1709062bdb00b006da975173bfsm7546041ejg.170.2022.03.29.12.51.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 29 Mar 2022 12:51:03 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de,
	zhangqing@rock-chips.com
Cc: robh+dt@kernel.org, krzk+dt@kernel.org, mturquette@baylibre.com,
 sboyd@kernel.org, linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v1] dt-bindings: clock: convert rockchip,px30-cru.txt to YAML
Date: Tue, 29 Mar 2022 21:50:57 +0200
Message-Id: <20220329195057.15571-1-jbx6244@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220329_125105_028075_84932E3F 
X-CRM114-Status: GOOD (  19.78  )
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

Convert rockchip,px30-cru.txt to YAML.

Changes against original bindings:
  Use compatible string: "rockchip,px30-pmucru"

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 .../bindings/clock/rockchip,px30-cru.txt      | 70 --------------
 .../bindings/clock/rockchip,px30-cru.yaml     | 96 +++++++++++++++++++
 2 files changed, 96 insertions(+), 70 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/clock/rockchip,px30-cru.txt
 create mode 100644 Documentation/devicetree/bindings/clock/rockchip,px30-cru.yaml

diff --git a/Documentation/devicetree/bindings/clock/rockchip,px30-cru.txt b/Documentation/devicetree/bindings/clock/rockchip,px30-cru.txt
deleted file mode 100644
index 55e78cdde..000000000
--- a/Documentation/devicetree/bindings/clock/rockchip,px30-cru.txt
+++ /dev/null
@@ -1,70 +0,0 @@
-* Rockchip PX30 Clock and Reset Unit
-
-The PX30 clock controller generates and supplies clock to various
-controllers within the SoC and also implements a reset controller for SoC
-peripherals.
-
-Required Properties:
-
-- compatible: PMU for CRU should be "rockchip,px30-pmu-cru"
-- compatible: CRU should be "rockchip,px30-cru"
-- reg: physical base address of the controller and length of memory mapped
-  region.
-- clocks: A list of phandle + clock-specifier pairs for the clocks listed
-          in clock-names
-- clock-names: Should contain the following:
-  - "xin24m" for both PMUCRU and CRU
-  - "gpll" for CRU (sourced from PMUCRU)
-- #clock-cells: should be 1.
-- #reset-cells: should be 1.
-
-Optional Properties:
-
-- rockchip,grf: phandle to the syscon managing the "general register files"
-  If missing, pll rates are not changeable, due to the missing pll lock status.
-
-Each clock is assigned an identifier and client nodes can use this identifier
-to specify the clock which they consume. All available clocks are defined as
-preprocessor macros in the dt-bindings/clock/px30-cru.h headers and can be
-used in device tree sources. Similar macros exist for the reset sources in
-these files.
-
-External clocks:
-
-There are several clocks that are generated outside the SoC. It is expected
-that they are defined using standard clock bindings with following
-clock-output-names:
- - "xin24m" - crystal input - required,
- - "xin32k" - rtc clock - optional,
- - "i2sx_clkin" - external I2S clock - optional,
- - "gmac_clkin" - external GMAC clock - optional
-
-Example: Clock controller node:
-
-	pmucru: clock-controller@ff2bc000 {
-		compatible = "rockchip,px30-pmucru";
-		reg = <0x0 0xff2bc000 0x0 0x1000>;
-		#clock-cells = <1>;
-		#reset-cells = <1>;
-	};
-
-	cru: clock-controller@ff2b0000 {
-		compatible = "rockchip,px30-cru";
-		reg = <0x0 0xff2b0000 0x0 0x1000>;
-		rockchip,grf = <&grf>;
-		#clock-cells = <1>;
-		#reset-cells = <1>;
-	};
-
-Example: UART controller node that consumes the clock generated by the clock
-  controller:
-
-	uart0: serial@ff030000 {
-		compatible = "rockchip,px30-uart", "snps,dw-apb-uart";
-		reg = <0x0 0xff030000 0x0 0x100>;
-		interrupts = <GIC_SPI 15 IRQ_TYPE_LEVEL_HIGH>;
-		clocks = <&pmucru SCLK_UART0_PMU>, <&pmucru PCLK_UART0_PMU>;
-		clock-names = "baudclk", "apb_pclk";
-		reg-shift = <2>;
-		reg-io-width = <4>;
-	};
diff --git a/Documentation/devicetree/bindings/clock/rockchip,px30-cru.yaml b/Documentation/devicetree/bindings/clock/rockchip,px30-cru.yaml
new file mode 100644
index 000000000..aa095f375
--- /dev/null
+++ b/Documentation/devicetree/bindings/clock/rockchip,px30-cru.yaml
@@ -0,0 +1,96 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/clock/rockchip,px30-cru.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Rockchip PX30 Clock and Reset Unit (CRU)
+
+maintainers:
+  - Elaine Zhang <zhangqing@rock-chips.com>
+  - Heiko Stuebner <heiko@sntech.de>
+
+description: |
+  The PX30 clock controller generates and supplies clocks to various
+  controllers within the SoC and also implements a reset controller for SoC
+  peripherals.
+  Each clock is assigned an identifier and client nodes can use this identifier
+  to specify the clock which they consume. All available clocks are defined as
+  preprocessor macros in the dt-bindings/clock/px30-cru.h headers and can be
+  used in device tree sources. Similar macros exist for the reset sources in
+  these files.
+  There are several clocks that are generated outside the SoC. It is expected
+  that they are defined using standard clock bindings with following
+  clock-output-names:
+    - "xin24m"     - crystal input       - required
+    - "xin32k"     - rtc clock           - optional
+    - "i2sx_clkin" - external I2S clock  - optional
+    - "gmac_clkin" - external GMAC clock - optional
+
+properties:
+  compatible:
+    enum:
+      - rockchip,px30-cru
+      - rockchip,px30-pmucru
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
+    minItems: 1
+    items:
+      - description: Clock for both PMUCRU and CRU
+      - description: Clock for CRU (sourced from PMUCRU)
+
+  clock-names:
+    minItems: 1
+    items:
+      - const: xin24m
+      - const: gpll
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
+  - clocks
+  - clock-names
+  - "#clock-cells"
+  - "#reset-cells"
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/px30-cru.h>
+
+    pmucru: clock-controller@ff2bc000 {
+      compatible = "rockchip,px30-pmucru";
+      reg = <0xff2bc000 0x1000>;
+      clocks = <&xin24m>;
+      clock-names = "xin24m";
+      rockchip,grf = <&grf>;
+      #clock-cells = <1>;
+      #reset-cells = <1>;
+    };
+
+    cru: clock-controller@ff2b0000 {
+      compatible = "rockchip,px30-cru";
+      reg = <0xff2b0000 0x1000>;
+      clocks = <&xin24m>, <&pmucru PLL_GPLL>;
+      clock-names = "xin24m", "gpll";
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
