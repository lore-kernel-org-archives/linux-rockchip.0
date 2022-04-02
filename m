Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 53D6AC433F5
	for <linux-rockchip@archiver.kernel.org>; Sat,  2 Apr 2022 14:39:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=q+cMU27ZHAXc4zTRwT3Y5MfIQ5Uq6H6JQYVFnWzsFpE=; b=cMwnuJKlAH69oN
	uDQ+64N89wH+bFzeZN1jRaA6TsrohMNHVN25rzu2ugHPrqToPlY0C7bQ7TD8Z6eNNpp3U98AbO6cV
	13B2U1WkM+rtTsSPCUp8/z4R/sK8+tsDLzJkz0Od/do08JNrERt6cBJJGHyiu9gyREPmszrn7sm/q
	me4UBV0+LEy7BMO+QXrW75SMy69B/zDurZdow+lyxA5D/8hjRDTDJfV+AM9LhT30aAaU8AlSXzg+I
	Rt6k9kDGC0a+blh2zilFMDTbQ6Jk7FHoMqyj5q17fDHMDC51ZcyNS8yDJWYhrxWz2J2qWvCWkI+4g
	8zZWedwIPZQI6hk/2Zjg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1naeu1-009Kcw-Tn; Sat, 02 Apr 2022 14:38:57 +0000
Received: from mail-ej1-x62b.google.com ([2a00:1450:4864:20::62b])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1naerz-009JG3-Dp; Sat, 02 Apr 2022 14:36:53 +0000
Received: by mail-ej1-x62b.google.com with SMTP id a6so460684ejk.0;
 Sat, 02 Apr 2022 07:36:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=McFpQ5/hW4Zbu4Ht8+BLpCgdUXBbUIZ2u7Nful4GDGM=;
 b=CnkrWwg6ioIxsLmOZcg3Ae61uiEygQtLuvT17CHCUiEYmLqsKPLFhHKsNC5XJcLkC9
 z9DBA+3MQg/zDKo9j3fAn6s7rPu06EZk0o9P8VH9UeBrABB5cGvmEb2JOtcBGUZixHGI
 y2URA+odVgsW/AB9CoqA3Z1dz5yo31ykqaP0Bav13LX+1IMC5z9Q03L2MU1I5e1qDxXL
 sD0e6ZLKUcWPlUwu0u7yXj+GQGDwfi4ukto2UZd6KOo/atEJAQO1GL/M1a9lIB8dAv7L
 hBqs7DnY/22R6Tdkmrmr5zbRpoTaYGaEGJNO4y8vCpMsfx5wkTBp9FBcOLJkom1Vi22j
 oQeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=McFpQ5/hW4Zbu4Ht8+BLpCgdUXBbUIZ2u7Nful4GDGM=;
 b=CqSncBEcdUhJdpkvQi/Pm7nzBCoi2Pbxs2yCMN/QO7EklLbfWXmAC63KNIvO53swMG
 Q9lniU7I6iaSzIrIPxQPqIPS2Ivapj/i9rIsjybRMk+NEzN/c0W2cO8YwEx3SXewprRK
 cJgBkO8yug7Tg+LtyqUtSulZQrMUJUU4NvvAVyyJPZ1emQmEmfURrYk7WmtlfrWdOVZx
 HbvL+Bmp4XtEMX4TEakF5MxHLxZEJA9WNrk7RWgldYku2yZwXUvN1NUjzZZSHjObCL2P
 24YxYC3U8IBCZMh7N7acoJ/SiyF4RVV/lAn73bckiuVCdmIbrpj3CW9TElxZcIfNqNwq
 lSuw==
X-Gm-Message-State: AOAM532Ni+biOCvW6/TCRY3a8o9WbHv4zcVip1TvOvG5f69GWSJQhRdb
 qjE3LmsYCX9IC/lMeJNQlfA=
X-Google-Smtp-Source: ABdhPJzpTeP7eaTWHqyR4NNPQDqgajKijKBnn1fgmM99LPS0+oVSq68qsxMPcdcn+EUwY81sEQ1ufw==
X-Received: by 2002:a17:907:2d8d:b0:6df:a06c:7c55 with SMTP id
 gt13-20020a1709072d8d00b006dfa06c7c55mr4054714ejc.325.1648910209152; 
 Sat, 02 Apr 2022 07:36:49 -0700 (PDT)
Received: from debian.home (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id
 bp8-20020a170907918800b006e0daaa63ddsm2169557ejb.60.2022.04.02.07.36.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 02 Apr 2022 07:36:48 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de,
	zhangqing@rock-chips.com
Cc: robh+dt@kernel.org, krzk+dt@kernel.org, mturquette@baylibre.com,
 sboyd@kernel.org, linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v4 06/16] dt-bindings: clock: convert rockchip,
 rk3308-cru.txt to YAML
Date: Sat,  2 Apr 2022 16:36:26 +0200
Message-Id: <20220402143636.15222-7-jbx6244@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20220402143636.15222-1-jbx6244@gmail.com>
References: <20220402143636.15222-1-jbx6244@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220402_073651_539250_D33BB512 
X-CRM114-Status: GOOD (  19.96  )
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

Convert rockchip,rk3308-cru.txt to YAML.

Changes against original bindings:
  Add clocks and clock-names because the device has to have
  at least one input clock.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---

Changed V4:
  add more clocks
  add clocks to example
  add clocks requirement
---
 .../bindings/clock/rockchip,rk3308-cru.txt    | 60 -------------
 .../bindings/clock/rockchip,rk3308-cru.yaml   | 86 +++++++++++++++++++
 2 files changed, 86 insertions(+), 60 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/clock/rockchip,rk3308-cru.txt
 create mode 100644 Documentation/devicetree/bindings/clock/rockchip,rk3308-cru.yaml

diff --git a/Documentation/devicetree/bindings/clock/rockchip,rk3308-cru.txt b/Documentation/devicetree/bindings/clock/rockchip,rk3308-cru.txt
deleted file mode 100644
index 9b151c5b0..000000000
--- a/Documentation/devicetree/bindings/clock/rockchip,rk3308-cru.txt
+++ /dev/null
@@ -1,60 +0,0 @@
-* Rockchip RK3308 Clock and Reset Unit
-
-The RK3308 clock controller generates and supplies clock to various
-controllers within the SoC and also implements a reset controller for SoC
-peripherals.
-
-Required Properties:
-
-- compatible: CRU should be "rockchip,rk3308-cru"
-- reg: physical base address of the controller and length of memory mapped
-  region.
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
-preprocessor macros in the dt-bindings/clock/rk3308-cru.h headers and can be
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
- - "mclk_i2s0_8ch_in", "mclk_i2s1_8ch_in", "mclk_i2s2_8ch_in",
-   "mclk_i2s3_8ch_in", "mclk_i2s0_2ch_in",
-   "mclk_i2s1_2ch_in" - external I2S or SPDIF clock - optional,
- - "mac_clkin" - external MAC clock - optional
-
-Example: Clock controller node:
-
-	cru: clock-controller@ff500000 {
-		compatible = "rockchip,rk3308-cru";
-		reg = <0x0 0xff500000 0x0 0x1000>;
-		rockchip,grf = <&grf>;
-		#clock-cells = <1>;
-		#reset-cells = <1>;
-	};
-
-Example: UART controller node that consumes the clock generated by the clock
-  controller:
-
-	uart0: serial@ff0a0000 {
-		compatible = "rockchip,rk3308-uart", "snps,dw-apb-uart";
-		reg = <0x0 0xff0a0000 0x0 0x100>;
-		interrupts = <GIC_SPI 18 IRQ_TYPE_LEVEL_HIGH>;
-		clocks = <&cru SCLK_UART0>, <&cru PCLK_UART0>;
-		clock-names = "baudclk", "apb_pclk";
-		reg-shift = <2>;
-		reg-io-width = <4>;
-		status = "disabled";
-	};
diff --git a/Documentation/devicetree/bindings/clock/rockchip,rk3308-cru.yaml b/Documentation/devicetree/bindings/clock/rockchip,rk3308-cru.yaml
new file mode 100644
index 000000000..01f2d1690
--- /dev/null
+++ b/Documentation/devicetree/bindings/clock/rockchip,rk3308-cru.yaml
@@ -0,0 +1,86 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/clock/rockchip,rk3308-cru.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Rockchip RK3308 Clock and Reset Unit (CRU)
+
+maintainers:
+  - Elaine Zhang <zhangqing@rock-chips.com>
+  - Heiko Stuebner <heiko@sntech.de>
+
+description: |
+  The RK3308 clock controller generates and supplies clocks to various
+  controllers within the SoC and also implements a reset controller for SoC
+  peripherals.
+  Each clock is assigned an identifier and client nodes can use this identifier
+  to specify the clock which they consume. All available clocks are defined as
+  preprocessor macros in the dt-bindings/clock/rk3308-cru.h headers and can be
+  used in device tree sources. Similar macros exist for the reset sources in
+  these files.
+  There are several clocks that are generated outside the SoC. It is expected
+  that they are defined using standard clock bindings with the
+  clock-output-names defined in this schema.
+
+properties:
+  compatible:
+    enum:
+      - rockchip,rk3308-cru
+
+  reg:
+    maxItems: 1
+
+  clocks:
+    minItems: 1
+    maxItems: 9
+
+  clock-names:
+    minItems: 1
+    maxItems: 9
+    items:
+      enum:
+        - xin24m
+        - xin32k
+        - mac_clkin
+        - mclk_i2s0_2ch_in
+        - mclk_i2s1_2ch_in
+        - mclk_i2s0_8ch_in
+        - mclk_i2s1_8ch_in
+        - mclk_i2s2_8ch_in
+        - mclk_i2s3_8ch_in
+
+  rockchip,grf:
+    $ref: /schemas/types.yaml#/definitions/phandle
+    description:
+      Phandle to the syscon managing the "general register files" (GRF),
+      if missing pll rates are not changeable, due to the missing pll
+      lock status.
+
+  "#clock-cells":
+    const: 1
+
+  "#reset-cells":
+    const: 1
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
+    cru: clock-controller@ff500000 {
+      compatible = "rockchip,rk3308-cru";
+      reg = <0xff500000 0x1000>;
+      clocks = <&xin24m>;
+      clock-names = "xin24m";
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
