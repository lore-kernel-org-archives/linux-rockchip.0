Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7E83AC433EF
	for <linux-rockchip@archiver.kernel.org>; Wed, 30 Mar 2022 12:54:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=JGNC1Q+XXinF9WoUh3F0cUweF5OVLh3bo6ofhtsLGXo=; b=w1lnyjEP69VXcd
	LY/+yHCXnbWC65ya4BWjhbcP+++R1M/rZHdFyVtGp//u0pLD8paHXcZBl4sViy7PRaEFKGLdZwX4C
	XyI9rzgsNMFkEAFx+AJ1AxmkqxttsXECDn0gy9QMSx/So54LJ95gRx6VzS6RV/7DjA2Gc+wpqYEfB
	bMRos+Iczcm7mMZS2BO3bVDZT5GWlEgI/gTWIs4E+bttymG40tqNo9KC5mjf+hdYCtL74Z5HkaKvN
	XqlXrBjPGH5HUnquzyqdHcw8YzsOCEu7txJ2mCqpMGCm4GgU7mb048zhdPbDw0WJCcpwPP8pp4J33
	Vy0FxOGjGWfk5CBCgNxA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nZXqa-00Ftuy-MV; Wed, 30 Mar 2022 12:54:48 +0000
Received: from mail-ej1-x636.google.com ([2a00:1450:4864:20::636])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nZXIR-00Fe5Y-R8; Wed, 30 Mar 2022 12:19:34 +0000
Received: by mail-ej1-x636.google.com with SMTP id c10so22726523ejs.13;
 Wed, 30 Mar 2022 05:19:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=6mDVuQKSlm5xd/4ZBvFr9HbdN100hZFnLWXptWqyI1A=;
 b=NzYSE1GEzipFpPz8yWywZroIiRaGERgfkU3aIyjLjxNUSwJWByqS4s7w2gLXrcPWsr
 FXnBnEmgHiZCdegVNlSItW7xe8cYNr2zS731eieslkLPbchLmvGbVLXvPi3daC4WXP1D
 jR2mI4P924VK1NdwBE9sEjWX+o1FBNan9jfnywMHo2EpVrGqh1y+9pbxPrclcT1hlzle
 4aG8jTF4YzhtV8703b5m2Cu7hYiTEMAMYkLspml9RpxpheEgjGo7ocrPmT1ZwfJWaOw2
 E0wL3xG79SySsFPNVmukNC263UcsnQWpfwIQv8chg3k5EZl5KmIgMmQd8VxvosQGWOop
 w0GA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=6mDVuQKSlm5xd/4ZBvFr9HbdN100hZFnLWXptWqyI1A=;
 b=U07MezqqDCmt95DSUAfCmFA/ftbwMW0APO+FXWoyIB3ZMaurmeke1VCZZoRYHRD7qM
 JWye3dZZJSHI5TtqUIJzAUK4zwLSxjYRbQUgP89fHxi+35Cv5PDSaW2BSqwFPmGPVK9g
 Cikbe7iMD6WU9cgpqneXJxMgDSEXrJ/QxPVCiQZ2aOWG0dG7QF+0h74UOpGsFRnd3khe
 1I6y78Pz+b2++Owp+GI/fdTCBXt4vhImQBP47+Oh64uH634/lettEVPCujw8qNUgQxlT
 IFq2Bl0ak2Fr8clG8FyEAmLTvN8qhm9m35o4kq+RVIQ8WdU2ZSE3Z2aTcFiOdPs/P9hr
 RbTQ==
X-Gm-Message-State: AOAM533qc8FEtYgTmJq0VXZxaRPOI9GELk7yHNKhL4S/6mVIdLgOI2na
 dckOCCx03vcm8FG0ztgIAtU=
X-Google-Smtp-Source: ABdhPJwLYPlD8kBE+uO+I0ODS6hr6ze+DT6BQDe9nG2ycmHkRWfgazFMNyK+vXnGmPdAB7CyarDmvw==
X-Received: by 2002:a17:907:3e14:b0:6e0:1ef7:6319 with SMTP id
 hp20-20020a1709073e1400b006e01ef76319mr39537633ejc.321.1648642770379; 
 Wed, 30 Mar 2022 05:19:30 -0700 (PDT)
Received: from debian.home (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id
 j21-20020a170906255500b006e08c4862ccsm7288778ejb.96.2022.03.30.05.19.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 30 Mar 2022 05:19:29 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de,
	zhangqing@rock-chips.com
Cc: robh+dt@kernel.org, krzk+dt@kernel.org, mturquette@baylibre.com,
 sboyd@kernel.org, linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v1 1/3] dt-bindings: clock: convert rockchip,
 rk3228-cru.txt to YAML
Date: Wed, 30 Mar 2022 14:19:21 +0200
Message-Id: <20220330121923.24240-1-jbx6244@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220330_051931_950515_60D8B84C 
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

Convert rockchip,rk3228-cru.txt to YAML.

Changes against original bindings:
  Add clocks and clock-names because the device has to have
  at least one input clock.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 .../bindings/clock/rockchip,rk3228-cru.txt    | 58 ---------------
 .../bindings/clock/rockchip,rk3228-cru.yaml   | 74 +++++++++++++++++++
 2 files changed, 74 insertions(+), 58 deletions(-)
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
index 000000000..cf7dc01d9
--- /dev/null
+++ b/Documentation/devicetree/bindings/clock/rockchip,rk3228-cru.yaml
@@ -0,0 +1,74 @@
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
+  that they are defined using standard clock bindings with following
+  clock-output-names:
+    - "xin24m"      - crystal input                          - required
+    - "ext_i2s"     - external I2S clock                     - optional
+    - "ext_gmac"    - external GMAC clock                    - optional
+    - "ext_hsadc"   - external HSADC clock                   - optional
+    - "phy_50m_out" - output clock of the pll in the mac phy
+
+properties:
+  compatible:
+    enum:
+      - rockchip,rk3228-cru
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
+      compatible = "rockchip,rk3228-cru";
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
