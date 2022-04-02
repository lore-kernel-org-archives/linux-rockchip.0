Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 10EC9C433FE
	for <linux-rockchip@archiver.kernel.org>; Sat,  2 Apr 2022 14:37:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3wnmzZm62+rofYEUAQTK1CKzmlowus6PfHjw0GHUoqA=; b=kkRninVo9r93gN
	jKqKokBb6rz3Xw3Qbka1+4WL2FYj8bUSN3sqg/GkSy3XvvlMUDC5XcJOfegCft8I/cV/sArgbHzLL
	klOpQrdjS8BCMAoxGgmLn1W9OcXsi6pcUP7L3qKVCLb5CgdarnDNp9ZBEiG7XGLDDkN2UAA9Vt9wP
	ZLZOu7pbat6yITT4vSX1rVzHnChd9pxImrYsKpkwJM0hgv8hkuxyPTLkrokJwCbn+3SW/8JXz6HG8
	s1kQ8WQtK3m9juaIRo3eVIqp9WurPGsu/mrw1RroNo0pxWzFIa6bRQRA+wYVMlbnv4GH/WGtedtsw
	V9FDLOY/35/N0onhtAwA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1naesH-009JPr-PI; Sat, 02 Apr 2022 14:37:09 +0000
Received: from mail-ej1-x62a.google.com ([2a00:1450:4864:20::62a])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1naerw-009JEc-Db; Sat, 02 Apr 2022 14:36:50 +0000
Received: by mail-ej1-x62a.google.com with SMTP id i27so4263718ejd.9;
 Sat, 02 Apr 2022 07:36:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=ufsyFzWX+CGvBkTM6+OlUoN/PVXoz5psm+dkWM18YxY=;
 b=CsaViOiw1wtT2ca0hqNq2k4rPL0P4BrLEaUK1vr8ezWHE1usaWJ2+tB3i8Kv79/nvT
 TFILa3c3gvlnXjwMS0EIt1ggkKsWjo+veW6SYhiStX7rLApFks72dsviBFHLURZZJkpt
 sD2HtG+lUOW9vnqPX9LpNxuip2v6tw+wzE1xZCFpD8ymIF2EscZD79/UY7m7TzBmqnQI
 zudasWsdDTIKctuaezV3psE930pYYQ5KNo3YfR9P6bOpBp3pVGs7y7NNvxl+Z3Oi9NjM
 jRRbuBfLT8NX6gKucTpIG5drpaM8qJPkAdMsfsgUcALbYxzIMM05qCtwX2tESkJVa/yW
 9wqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ufsyFzWX+CGvBkTM6+OlUoN/PVXoz5psm+dkWM18YxY=;
 b=r5DomPVjR5nsg0xqsyZz134DQwLQP3C02BBVSUFg1mjEkcpWQem+fYV+VwUYdblQBe
 3UIHzAfvCT7llpi6alOGfO3Y+7gJa+oVh5Z4kosoUJMz/Mydtz0l2aQTMCp8sDRSA9HJ
 o91iPSiEi7A1dWhsfTvGoIiVd6Tut1b+O1uxzNu/NNxMM7n0V2/awIkr8c3CluCsIewN
 sljMLzxKvXsFKiCuRHFsUUAXfDrE9IXjqDb+0B7yad13v30bqaKBDtdDJPqHYu6RBBCL
 l1XwI1Tl/kfz3AXBnpbAfwzQ9jGV5wJTxek3vpwdM3zhYvvMPwOoJW6Ta6RnC0++t8Vh
 tprg==
X-Gm-Message-State: AOAM531RB/oN/twCgtX3Dz7Hsh/Npr8wS8ZeDLX0NeWaUtVCiUOfm2pP
 qfggGvYkQgA5l1KadQPbW6YbCbXE4X8=
X-Google-Smtp-Source: ABdhPJyKu2ptLDRlztPlfYTVwwF23IydRosnHQX9fwIkOdiZ72WUzQaJsA7kY6ipIsV6HPAerSZIFA==
X-Received: by 2002:a17:906:7943:b0:6df:e5b3:6553 with SMTP id
 l3-20020a170906794300b006dfe5b36553mr3994573ejo.398.1648910205452; 
 Sat, 02 Apr 2022 07:36:45 -0700 (PDT)
Received: from debian.home (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id
 bp8-20020a170907918800b006e0daaa63ddsm2169557ejb.60.2022.04.02.07.36.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 02 Apr 2022 07:36:45 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de,
	zhangqing@rock-chips.com
Cc: robh+dt@kernel.org, krzk+dt@kernel.org, mturquette@baylibre.com,
 sboyd@kernel.org, linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v4 02/16] dt-bindings: clock: convert rockchip,
 rk3036-cru.txt to YAML
Date: Sat,  2 Apr 2022 16:36:22 +0200
Message-Id: <20220402143636.15222-3-jbx6244@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20220402143636.15222-1-jbx6244@gmail.com>
References: <20220402143636.15222-1-jbx6244@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220402_073648_510907_E2EE4578 
X-CRM114-Status: GOOD (  20.09  )
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

Convert rockchip,rk3036-cru.txt to YAML.

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
 .../bindings/clock/rockchip,rk3036-cru.txt    | 56 -------------
 .../bindings/clock/rockchip,rk3036-cru.yaml   | 80 +++++++++++++++++++
 2 files changed, 80 insertions(+), 56 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/clock/rockchip,rk3036-cru.txt
 create mode 100644 Documentation/devicetree/bindings/clock/rockchip,rk3036-cru.yaml

diff --git a/Documentation/devicetree/bindings/clock/rockchip,rk3036-cru.txt b/Documentation/devicetree/bindings/clock/rockchip,rk3036-cru.txt
deleted file mode 100644
index 20df350b9..000000000
--- a/Documentation/devicetree/bindings/clock/rockchip,rk3036-cru.txt
+++ /dev/null
@@ -1,56 +0,0 @@
-* Rockchip RK3036 Clock and Reset Unit
-
-The RK3036 clock controller generates and supplies clock to various
-controllers within the SoC and also implements a reset controller for SoC
-peripherals.
-
-Required Properties:
-
-- compatible: should be "rockchip,rk3036-cru"
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
-preprocessor macros in the dt-bindings/clock/rk3036-cru.h headers and can be
-used in device tree sources. Similar macros exist for the reset sources in
-these files.
-
-External clocks:
-
-There are several clocks that are generated outside the SoC. It is expected
-that they are defined using standard clock bindings with following
-clock-output-names:
- - "xin24m" - crystal input - required,
- - "ext_i2s" - external I2S clock - optional,
- - "rmii_clkin" - external EMAC clock - optional
-
-Example: Clock controller node:
-
-	cru: cru@20000000 {
-		compatible = "rockchip,rk3036-cru";
-		reg = <0x20000000 0x1000>;
-		rockchip,grf = <&grf>;
-
-		#clock-cells = <1>;
-		#reset-cells = <1>;
-	};
-
-Example: UART controller node that consumes the clock generated by the clock
-  controller:
-
-	uart0: serial@20060000 {
-		compatible = "snps,dw-apb-uart";
-		reg = <0x20060000 0x100>;
-		interrupts = <GIC_SPI 20 IRQ_TYPE_LEVEL_HIGH>;
-		reg-shift = <2>;
-		reg-io-width = <4>;
-		clocks = <&cru SCLK_UART0>;
-	};
diff --git a/Documentation/devicetree/bindings/clock/rockchip,rk3036-cru.yaml b/Documentation/devicetree/bindings/clock/rockchip,rk3036-cru.yaml
new file mode 100644
index 000000000..121b298a6
--- /dev/null
+++ b/Documentation/devicetree/bindings/clock/rockchip,rk3036-cru.yaml
@@ -0,0 +1,80 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/clock/rockchip,rk3036-cru.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Rockchip RK3036 Clock and Reset Unit (CRU)
+
+maintainers:
+  - Elaine Zhang <zhangqing@rock-chips.com>
+  - Heiko Stuebner <heiko@sntech.de>
+
+description: |
+  The RK3036 clock controller generates and supplies clocks to various
+  controllers within the SoC and also implements a reset controller for SoC
+  peripherals.
+  Each clock is assigned an identifier and client nodes can use this identifier
+  to specify the clock which they consume. All available clocks are defined as
+  preprocessor macros in the dt-bindings/clock/rk3036-cru.h headers and can be
+  used in device tree sources. Similar macros exist for the reset sources in
+  these files.
+  There are several clocks that are generated outside the SoC. It is expected
+  that they are defined using standard clock bindings with the
+  clock-output-names defined in this schema.
+
+properties:
+  compatible:
+    enum:
+      - rockchip,rk3036-cru
+
+  reg:
+    maxItems: 1
+
+  clocks:
+    minItems: 1
+    maxItems: 3
+
+  clock-names:
+    minItems: 1
+    maxItems: 3
+    items:
+      enum:
+        - xin24m
+        - ext_i2s
+        - rmii_clkin
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
+    cru: clock-controller@20000000 {
+      compatible = "rockchip,rk3036-cru";
+      reg = <0x20000000 0x1000>;
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
