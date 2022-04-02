Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0F9D3C433F5
	for <linux-rockchip@archiver.kernel.org>; Sat,  2 Apr 2022 14:39:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/7QF8nYIJJK6J6jT7De8/gxob1qeovP5KSGgdOPDKYQ=; b=iVzlxamBT5gNqw
	6UYlevKONJu3Eca320MzV/rabS7Ath8h2g74mkW15ou6XGSfgjM2gdd75PIPH7hJuATtB1V32NR7z
	4jw8yz9BJlZS+8MrWlLNMtNuo9L6X12NNzVdmRiqIQ6Q9Gyhot8pM13mIpLJ7qm5Ej+bZwBaaeXxR
	XaoXpgvCDSWK+7/fKuPsMjBafJVXey2O+zEfBo/K8jrIQyK+rTkaARcUduY6mbxtbKm+IE4IdXdt6
	yFx+OxVifigGgN8hal5iJf/zGIIXXQgGoe1IaJ/Gi53iuQpM/BTSCzuWiu9RTqmRortQSKrsRGxl9
	pnc3qIxE4fT5bVQN6xZQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1naeuY-009Kso-VN; Sat, 02 Apr 2022 14:39:31 +0000
Received: from mail-ej1-x629.google.com ([2a00:1450:4864:20::629])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1naes0-009JHB-8m; Sat, 02 Apr 2022 14:36:54 +0000
Received: by mail-ej1-x629.google.com with SMTP id dr20so11364907ejc.6;
 Sat, 02 Apr 2022 07:36:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=2aGoR+jxGDzn8cgNTtv9/Wz52MpH/aK9EVPCLp/ehIM=;
 b=ikSmNvyPeCmAtCK60FrPC5QI4QD8u3dzi7SFtTmYR496NfMiTk8b5Dl39Y0zvp/jC8
 IM8bYf2NPzpzlihE4OBUu2VqwXhXtgbYJr2i+nhcHEy58gdLz1yI7NiDrc6Py+4IWi/J
 qCb4hvKBYmsPqijBuW9cuTQ0VkVoRI2l4tf2VIGskizoiNP6VY+C/7I3sJJwf6Mt6LHh
 C2EbJ2ea5OgCwEdIe73JzUmuHA0/c15H6hLK53wccqG+MUcuctoa4z0YBb+nyw32M04B
 Tf8r8pkvmUh75AcQGMB9P3Jn5Gql6rEJxwuzwzplrPjPK53waSKt+VbnEH3R/S2JK8PF
 lvpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=2aGoR+jxGDzn8cgNTtv9/Wz52MpH/aK9EVPCLp/ehIM=;
 b=4Dw4pL+OsRDpVqjRHtAhObEe7NNZpGPoXv2r03b+TohmIIGo0CngHk+5rZpXX/5IEJ
 FlOsJ6EUl5EyitzdIGHCgtEq34Zgmi7TeQMpgJXBOxTPB/KgsQmrLznhJqHCAlxCN8Hq
 /+9lAEDRzwQ+YJyUND2NgRHWcdC1eje2ziG87uyKzU9Z/Fubr8R41FiSPvMucQp6xoSa
 /pMPdT3zPTEIFcDHti9jPXIoX/PpbKpL8ANtOAd1bx+sP/h7HCAt9bb2M1pmkm29AbO1
 lCuQF7bKjh9SkhXqoP+QCCkOsfVD5XjTpit0fxkFmih5pELwRGNmQthCyA3Psa9/pjYJ
 O8ig==
X-Gm-Message-State: AOAM530JjFJA7HfcJijnrQ/QMIUQPrFDrBm0ZtSZm0p+yQHIIJ3zvHc0
 +jAEB4YhJDlNtGFXFSQ45VQ=
X-Google-Smtp-Source: ABdhPJxi9Qq9lRX++GDHOv/U4QNe8vF8sPKa2MqR4wILfaeO88cZNIUGrkotlOQi22yA9u5y56mrBQ==
X-Received: by 2002:a17:906:a398:b0:6ce:71b:deff with SMTP id
 k24-20020a170906a39800b006ce071bdeffmr3974682ejz.204.1648910211054; 
 Sat, 02 Apr 2022 07:36:51 -0700 (PDT)
Received: from debian.home (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id
 bp8-20020a170907918800b006e0daaa63ddsm2169557ejb.60.2022.04.02.07.36.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 02 Apr 2022 07:36:50 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de,
	zhangqing@rock-chips.com
Cc: robh+dt@kernel.org, krzk+dt@kernel.org, mturquette@baylibre.com,
 sboyd@kernel.org, linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v4 08/16] dt-bindings: clock: convert rockchip,
 rk3368-cru.txt to YAML
Date: Sat,  2 Apr 2022 16:36:28 +0200
Message-Id: <20220402143636.15222-9-jbx6244@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20220402143636.15222-1-jbx6244@gmail.com>
References: <20220402143636.15222-1-jbx6244@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220402_073652_425848_C8915F92 
X-CRM114-Status: GOOD (  20.07  )
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

Convert rockchip,rk3368-cru.txt to YAML.

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
 .../bindings/clock/rockchip,rk3368-cru.txt    | 61 -------------
 .../bindings/clock/rockchip,rk3368-cru.yaml   | 86 +++++++++++++++++++
 2 files changed, 86 insertions(+), 61 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/clock/rockchip,rk3368-cru.txt
 create mode 100644 Documentation/devicetree/bindings/clock/rockchip,rk3368-cru.yaml

diff --git a/Documentation/devicetree/bindings/clock/rockchip,rk3368-cru.txt b/Documentation/devicetree/bindings/clock/rockchip,rk3368-cru.txt
deleted file mode 100644
index 7c8bbcfed..000000000
--- a/Documentation/devicetree/bindings/clock/rockchip,rk3368-cru.txt
+++ /dev/null
@@ -1,61 +0,0 @@
-* Rockchip RK3368 Clock and Reset Unit
-
-The RK3368 clock controller generates and supplies clock to various
-controllers within the SoC and also implements a reset controller for SoC
-peripherals.
-
-Required Properties:
-
-- compatible: should be "rockchip,rk3368-cru"
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
-preprocessor macros in the dt-bindings/clock/rk3368-cru.h headers and can be
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
- - "ext_i2s" - external I2S clock - optional,
- - "ext_gmac" - external GMAC clock - optional
- - "ext_hsadc" - external HSADC clock - optional,
- - "ext_isp" - external ISP clock - optional,
- - "ext_jtag" - external JTAG clock - optional
- - "ext_vip" - external VIP clock - optional,
- - "usbotg_out" - output clock of the pll in the otg phy
-
-Example: Clock controller node:
-
-	cru: clock-controller@ff760000 {
-		compatible = "rockchip,rk3368-cru";
-		reg = <0x0 0xff760000 0x0 0x1000>;
-		rockchip,grf = <&grf>;
-		#clock-cells = <1>;
-		#reset-cells = <1>;
-	};
-
-Example: UART controller node that consumes the clock generated by the clock
-  controller:
-
-	uart0: serial@10124000 {
-		compatible = "snps,dw-apb-uart";
-		reg = <0x10124000 0x400>;
-		interrupts = <GIC_SPI 34 IRQ_TYPE_LEVEL_HIGH>;
-		reg-shift = <2>;
-		reg-io-width = <1>;
-		clocks = <&cru SCLK_UART0>;
-	};
diff --git a/Documentation/devicetree/bindings/clock/rockchip,rk3368-cru.yaml b/Documentation/devicetree/bindings/clock/rockchip,rk3368-cru.yaml
new file mode 100644
index 000000000..b09d169c7
--- /dev/null
+++ b/Documentation/devicetree/bindings/clock/rockchip,rk3368-cru.yaml
@@ -0,0 +1,86 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/clock/rockchip,rk3368-cru.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Rockchip RK3368 Clock and Reset Unit (CRU)
+
+maintainers:
+  - Elaine Zhang <zhangqing@rock-chips.com>
+  - Heiko Stuebner <heiko@sntech.de>
+
+description: |
+  The RK3368 clock controller generates and supplies clocks to various
+  controllers within the SoC and also implements a reset controller for SoC
+  peripherals.
+  Each clock is assigned an identifier and client nodes can use this identifier
+  to specify the clock which they consume. All available clocks are defined as
+  preprocessor macros in the dt-bindings/clock/rk3368-cru.h headers and can be
+  used in device tree sources. Similar macros exist for the reset sources in
+  these files.
+  There are several clocks that are generated outside the SoC. It is expected
+  that they are defined using standard clock bindings with the
+  clock-output-names defined in this schema.
+
+properties:
+  compatible:
+    enum:
+      - rockchip,rk3368-cru
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
+        - ext_i2s
+        - ext_gmac
+        - ext_hsadc
+        - ext_isp
+        - ext_jtag
+        - ext_vip
+        - usbotg_out
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
+    cru: clock-controller@ff760000 {
+      compatible = "rockchip,rk3368-cru";
+      reg = <0xff760000 0x1000>;
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
