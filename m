Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9A5D1C433EF
	for <linux-rockchip@archiver.kernel.org>; Sat,  2 Apr 2022 14:37:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kjK4BgXoPe5KiQKxoRDv04RIyayu5I4F/O7cxS2uFrQ=; b=UPyObDnCBLlkPA
	Z5pVu7ewv1xsgv/oE9/JXOfb7l1uIll/YhfCuP30pXRjPrtzY6dqPC4CdtuCXoYUdrGKu3F1P66CG
	LuUqJ+U8J9Y/tN1SRlZ0wfoWJhQJdneBabwigwmRJhTrgpXE3z9wfJ/OpH5/dUqONHaPjK+UeX71K
	gh5GsEi+zfdyjZSIdPWhbulSx2UINjcZF/FLx0fMU/oA6PX93CLx9Sg1oQhZaph63uPjcReyApQIa
	03MMdIcQX0vLLl8pmbw9qp0qZdzKQas0BN49o3A+iwvrrXcq1vSg2NaqCEeEQDg6og9xzCkcrKTxw
	QTROqyVSeChee3nHHWDQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1naesf-009JeQ-98; Sat, 02 Apr 2022 14:37:33 +0000
Received: from mail-ej1-x629.google.com ([2a00:1450:4864:20::629])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1naerw-009JF3-Gz; Sat, 02 Apr 2022 14:36:51 +0000
Received: by mail-ej1-x629.google.com with SMTP id ot30so1483541ejb.12;
 Sat, 02 Apr 2022 07:36:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=5wuju+GcmYHRq1+g1VvLGc9DiGyJBre0gIrOt9rqobw=;
 b=avp5su2L7EX/jwg6lriJohP1j8I/Nq4bQNRYW5UFYMAwJX0cDeilOfV2oIgUGU5wd1
 XafhySaun27VOslvjeenI95S+mBKD5O49ta0aUMMyf/G8j2P1zBtEE58K6Gz+YorWDeX
 QWeZ3FZnadj0RlUXzfkWNmycQWXpCkJtpKcSi42mc9yUwz8CgekkVJTGGf946pH3/xBF
 lI74l/c6KZUTxRq/FZGJZ4i22GCwb3geJBFfOetGH9o1vEWYJW4gBoyzyFt9Je5DkXuW
 gGpBhhvkI0Og4VqgPI3FQsYR9N9CM61TyE8MgmEr1mbSm1aK3f6GjiJty92QFXUreUf9
 JkKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=5wuju+GcmYHRq1+g1VvLGc9DiGyJBre0gIrOt9rqobw=;
 b=dinuBpxySNT6TnhhiClt0zqb+L+mC8S/8xNyQG0LJ5jx9bq0LBAROtByCm0GOUs1p7
 Pbxha40iRFgUL4KP0Fxvc4GP7l/G2pfNSFeMX0vYCv1JsE2IktZWaZwmPVMeV70b9n20
 YqV68hI7pYdXzMEnPK4hF+WrPBQT6uGn1B0ky/dHfbv6QuDAYox/07c6fXmASGfnyF5M
 CsjYowUGgPngN0wru2N/nx6ZmtIlN4hPPpZTUaLAbbB8pnHvvkHZ4YeDrQaZA1tO37l8
 kIKbFhLeM+pF6tTGq7GsTEOhtGtNWltgYOf7MU2p++Qh2gs+maLRN0+ujATz/KIpgx6h
 5Sbg==
X-Gm-Message-State: AOAM5321PYQAY/11cgf60ZibLsHPMdxxOH/uWmNTIHFjp90F8fClBGdR
 0B6fW3OrLvvfD7zhcRz7K0c=
X-Google-Smtp-Source: ABdhPJy+WWzYHb7E1VcYub3CXzv5wWc1U+pq1/5Ev2buxP2+8x9LYC16fYRchAXleRmqyNxCKqTvJw==
X-Received: by 2002:a17:907:7704:b0:6cf:48ac:b4a8 with SMTP id
 kw4-20020a170907770400b006cf48acb4a8mr3914724ejc.305.1648910207334; 
 Sat, 02 Apr 2022 07:36:47 -0700 (PDT)
Received: from debian.home (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id
 bp8-20020a170907918800b006e0daaa63ddsm2169557ejb.60.2022.04.02.07.36.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 02 Apr 2022 07:36:47 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de,
	zhangqing@rock-chips.com
Cc: robh+dt@kernel.org, krzk+dt@kernel.org, mturquette@baylibre.com,
 sboyd@kernel.org, linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v4 04/16] dt-bindings: clock: convert rockchip,
 rk3228-cru.txt to YAML
Date: Sat,  2 Apr 2022 16:36:24 +0200
Message-Id: <20220402143636.15222-5-jbx6244@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20220402143636.15222-1-jbx6244@gmail.com>
References: <20220402143636.15222-1-jbx6244@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220402_073648_609622_346A13CE 
X-CRM114-Status: GOOD (  20.02  )
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

Convert rockchip,rk3228-cru.txt to YAML.

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
 .../bindings/clock/rockchip,rk3228-cru.txt    | 58 -------------
 .../bindings/clock/rockchip,rk3228-cru.yaml   | 82 +++++++++++++++++++
 2 files changed, 82 insertions(+), 58 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/clock/rockchip,rk3228-cru.txt
 create mode 100644 Documentation/devicetree/bindings/clock/rockchip,rk3228-cru.yaml

diff --git a/Documentation/devicetree/bindings/clock/rockchip,rk3228-cru.txt b/Documentation/devicetree/bindings/clock/rockchip,rk3228-cru.txt
deleted file mode 100644
index f32304812..000000000
--- a/Documentation/devicetree/bindings/clock/rockchip,rk3228-cru.txt
+++ /dev/null
@@ -1,58 +0,0 @@
-* Rockchip RK3228 Clock and Reset Unit
-
-The RK3228 clock controller generates and supplies clock to various
-controllers within the SoC and also implements a reset controller for SoC
-peripherals.
-
-Required Properties:
-
-- compatible: should be "rockchip,rk3228-cru"
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
-preprocessor macros in the dt-bindings/clock/rk3228-cru.h headers and can be
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
- - "ext_gmac" - external GMAC clock - optional
- - "ext_hsadc" - external HSADC clock - optional
- - "phy_50m_out" - output clock of the pll in the mac phy
-
-Example: Clock controller node:
-
-	cru: cru@20000000 {
-		compatible = "rockchip,rk3228-cru";
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
-	uart0: serial@10110000 {
-		compatible = "snps,dw-apb-uart";
-		reg = <0x10110000 0x100>;
-		interrupts = <GIC_SPI 55 IRQ_TYPE_LEVEL_HIGH>;
-		reg-shift = <2>;
-		reg-io-width = <4>;
-		clocks = <&cru SCLK_UART0>;
-	};
diff --git a/Documentation/devicetree/bindings/clock/rockchip,rk3228-cru.yaml b/Documentation/devicetree/bindings/clock/rockchip,rk3228-cru.yaml
new file mode 100644
index 000000000..0a91c5dc9
--- /dev/null
+++ b/Documentation/devicetree/bindings/clock/rockchip,rk3228-cru.yaml
@@ -0,0 +1,82 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/clock/rockchip,rk3228-cru.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Rockchip RK3228 Clock and Reset Unit (CRU)
+
+maintainers:
+  - Elaine Zhang <zhangqing@rock-chips.com>
+  - Heiko Stuebner <heiko@sntech.de>
+
+description: |
+  The RK3228 clock controller generates and supplies clocks to various
+  controllers within the SoC and also implements a reset controller for SoC
+  peripherals.
+  Each clock is assigned an identifier and client nodes can use this identifier
+  to specify the clock which they consume. All available clocks are defined as
+  preprocessor macros in the dt-bindings/clock/rk3228-cru.h headers and can be
+  used in device tree sources. Similar macros exist for the reset sources in
+  these files.
+  There are several clocks that are generated outside the SoC. It is expected
+  that they are defined using standard clock bindings with the
+  clock-output-names defined in this schema.
+
+properties:
+  compatible:
+    enum:
+      - rockchip,rk3228-cru
+
+  reg:
+    maxItems: 1
+
+  clocks:
+    minItems: 1
+    maxItems: 5
+
+  clock-names:
+    minItems: 1
+    maxItems: 5
+    items:
+      enum:
+        - xin24m
+        - ext_i2s
+        - ext_gmac
+        - ext_hsadc
+        - phy_50m_out
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
+      compatible = "rockchip,rk3228-cru";
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
