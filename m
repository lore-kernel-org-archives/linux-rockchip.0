Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 43D10C433F5
	for <linux-rockchip@archiver.kernel.org>; Wed, 30 Mar 2022 12:03:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Tf06Jq4h7jAVHRkYOboCL3F+B+OK3M5YINqMXm2LWgg=; b=18wwj0ijHLqRy/
	EG3Lk7Z3KUoYUrQCLCyu/0Y1FGvKAxXTpDko5FllvR4l3aJNuOhCtumROmV2X7fCT10YMTgAxoLoH
	sXZobZSP6l4GgFAew0RUyJdIp3y24qaqskCEkmop45PBhEF4adKOM8zq1qD10EE74NVsTtWRHgZ3q
	W9qb9OTtTXDt3HqXsODbXanLjuTen920gFtWOspxnxj/11PUEwSmHQggZT0bh/Lt5oojiUVLg06Ap
	zsP09++uwfvfIdXtr1m+0xv4rG4HkvBNnwM4Y2pHxE8hy+Dx5nk/Um0IBQFbBvZPg8jV7ai5i8sgr
	izQcyICK+b6wNJeZnQ0Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nZX2P-00FWia-Mx; Wed, 30 Mar 2022 12:02:57 +0000
Received: from mail-ej1-x636.google.com ([2a00:1450:4864:20::636])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nZWoq-00FPmK-Au; Wed, 30 Mar 2022 11:48:59 +0000
Received: by mail-ej1-x636.google.com with SMTP id yy13so40985258ejb.2;
 Wed, 30 Mar 2022 04:48:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=QnygP4l4hTZOc+NFDXu9YYi5sXjYreslpEJf/CgWJFU=;
 b=L4D9vUp++dIar8oRx2cyilIRQpIbE8aTyXC7bD8/IQy5GxKarN9FPrJKt8vtzjtYK8
 MWTYlILu33ArTJ8ShiNwg1pOMYcgFwQvMJxcreeKPzN0tspJ0HK9Yvu3oyTPvtYsKJXY
 IrJRaZzbDlhgURR2UzliOGVkpCwaS/l/3LhQN91N195HK0ckoaGVLdgtxcOB+ZXdYCmO
 KpMOKWoRLB501a9wQuKcFWp4n0UldaFxeDVLCR3ANYXQd1VaIBpvr2dr5wwOAEQKtRzy
 79Awx4y8ntCN3kwn5zGGwY7kDivYHem6swodfHzXGGOC7J6lAfxvHZom9ftcccvbj5Vp
 ROTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=QnygP4l4hTZOc+NFDXu9YYi5sXjYreslpEJf/CgWJFU=;
 b=dRUdgzCFiqVJGl3bM8zamfS4tgzYPj1QtjrTw86x3IPIuXuLkqRbUrWIcMttUc/JR2
 zDMZyZQSmbdTv8NPtEa531uyA2XE6UVtpkHmr2KhhCAEV4eX++SmQlQzWaB6dMsWZrsV
 K4eWK9ngj8QMFxEbgwTPLEJ0L6U7O5GWBuFLKVMaNI7tDT9RqUtqoCcAKTnr/bqfuRE5
 Jev97LUQI8OiWzyauZMV9BXuMIxAUxy5CN4y3Fg42/phziPgGGpbtTfISfGFITZx3o7l
 miTlT4NaoVYEpo2RauFaK6XnAY5W/44kJq04TpEJc3skUPBPnxpuwf8YRIRAqVRopyUe
 uecA==
X-Gm-Message-State: AOAM5300xRFC7JibWo2IbCCFR57HBEg+uflQQLC+pGPy4thijsGxp3+v
 utaZ+TA0NLW/ZL1FzSFly1I=
X-Google-Smtp-Source: ABdhPJw4fExfdVyAn2ssY8SyPCua0EfDQ35g+WWMCOkxPzNpgIv/ZzrQ/OVM2E3Kzv+Bw3J5rAnauQ==
X-Received: by 2002:a17:907:94c6:b0:6da:9561:ce0 with SMTP id
 dn6-20020a17090794c600b006da95610ce0mr38918680ejc.342.1648640933738; 
 Wed, 30 Mar 2022 04:48:53 -0700 (PDT)
Received: from debian.home (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id
 g9-20020aa7c849000000b00412fc6bf26dsm9934442edt.80.2022.03.30.04.48.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 30 Mar 2022 04:48:53 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de,
	zhangqing@rock-chips.com
Cc: robh+dt@kernel.org, krzk+dt@kernel.org, mturquette@baylibre.com,
 sboyd@kernel.org, linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v1 1/3] dt-bindings: clock: convert rockchip,
 rk3036-cru.txt to YAML
Date: Wed, 30 Mar 2022 13:48:45 +0200
Message-Id: <20220330114847.18633-1-jbx6244@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220330_044856_477755_14044859 
X-CRM114-Status: GOOD (  18.66  )
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
 .../bindings/clock/rockchip,rk3036-cru.txt    | 56 ---------------
 .../bindings/clock/rockchip,rk3036-cru.yaml   | 72 +++++++++++++++++++
 2 files changed, 72 insertions(+), 56 deletions(-)
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
index 000000000..1376230fe
--- /dev/null
+++ b/Documentation/devicetree/bindings/clock/rockchip,rk3036-cru.yaml
@@ -0,0 +1,72 @@
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
+  that they are defined using standard clock bindings with following
+  clock-output-names:
+    - "xin24m"     - crystal input       - required
+    - "ext_i2s"    - external I2S clock  - optional
+    - "rmii_clkin" - external EMAC clock - optional
+
+properties:
+  compatible:
+    enum:
+      - rockchip,rk3036-cru
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
+    cru: clock-controller@20000000 {
+      compatible = "rockchip,rk3036-cru";
+      reg = <0x20000000 0x1000>;
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
