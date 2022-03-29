Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C3D8AC433EF
	for <linux-rockchip@archiver.kernel.org>; Tue, 29 Mar 2022 11:14:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=MUoSa0ENMZ+sNYk/ATghxns2W0O+ZZk6esX6fJA6PA8=; b=ww7dwBzhSPDx64
	m66RDTEWJsT3n1On5/lrJY8LfUmEAk9DehAPqvmBhV9sCRL3SyPZa7m9ch8tITLaPW/4QsAgYxfui
	eMGTQgzHaZpKaJES75/pC/W8h4NlbDU4t+Xkj4ohIR405JTDzpAcmuh65j/kFxS2JQEndGwm2Ct0v
	+030CIDYK1IhnGXDuflhYd7dfNQA6Z8W1cn2Co48aNSa/zzHqKxw8+VCZatHr3YFRDxKVyEE+xFSb
	PAdjD3op49j25D7NABTm+GDUDl5yl7TBk8n5XrQqgRq8tEYJtd1XfnPAJKt4LDl6/p4IH5G4VaqEu
	ZuIGPUYz0oSqRmvIfYEg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nZ9ny-00BwV8-Li; Tue, 29 Mar 2022 11:14:30 +0000
Received: from mail-ed1-x532.google.com ([2a00:1450:4864:20::532])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nZ9nd-00BwO8-18; Tue, 29 Mar 2022 11:14:10 +0000
Received: by mail-ed1-x532.google.com with SMTP id a17so20279781edm.9;
 Tue, 29 Mar 2022 04:14:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=PxcJiDdbE7d9vm0AfwIYwgNWepySifxgNOtcvatDr6o=;
 b=pHCskelTBY6sBuEICsuusFzahtE0A+kgs72vkDel2jLoFGc8gOYLwmR6bu5h6dHXB+
 lYremxjpS4ZQ+RAbZ5aqJCACBi7hzG9VDv/g0bo0+U0QdN/SVxo+FVR0SpW5kCDBqCUR
 63FZLWgGWUcskS9dqG0cBFP77A+jwZ7vbc4Y5JWJrPsu+PDnHi0PqdeUMr0IR1Sbg4gH
 7lS9whfYJzot9dXkqszLZWZjdE5nq9xtVRPFCUNHk/r9WbyJmt1EnbxsPX/YgrSWvCMt
 T93NBjhKnX5I5E6mrNXLRUiIP7wjgInG7UcYS64l5hKM5rNA4ayRlN2MsIm/8AJO9QtC
 kz5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=PxcJiDdbE7d9vm0AfwIYwgNWepySifxgNOtcvatDr6o=;
 b=Ki3hG4iGCTKwM/Hi3ErC7j0rYM+lbp3esM6OcOHhBnTUfjS8zwgiLdwq9FIpBuLrww
 CD1uRi72Ef70/Rc8DKqyWaP2ZfkaEx6mHTizgruHZ7T/uo0EfVKhsYHCpxHBWSGjay4z
 GPDY1HTG5uGhKpxfZ5RZ+jzmk+CgAE9wJtJk+OI2HI/15dsnTvsPVDofCm853UWz2eDS
 ekhpMEwaSRsxWL40688FgOUpgEORct0Pe+mgZcD+XVUC2rhDgWsGhQA7ag16gmDFYTOv
 +RauLeuHO+uNiLffo1YWPC5+GPDlzeJi+9+mZKBE8HoJ53Gu4ZM/Ltcs1vbZUqS08Df4
 O33Q==
X-Gm-Message-State: AOAM533kmjm31+g7vKIFovMv8/1W6hDPD8RtFf0UKZbwOtUM0xbGpdC3
 LHTd62x2WZMEBY+V0M/hfR0=
X-Google-Smtp-Source: ABdhPJzbC4KuVhUDoK/G3dsFDGpbcJKcclauxdnPk2s6gxM3jBbloUNgn5BlOGd0JqRIr4DAU7Ve7A==
X-Received: by 2002:a05:6402:34c9:b0:419:53d2:83d0 with SMTP id
 w9-20020a05640234c900b0041953d283d0mr3812324edc.308.1648552445629; 
 Tue, 29 Mar 2022 04:14:05 -0700 (PDT)
Received: from debian.home (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id
 u3-20020a17090657c300b006d01de78926sm7006844ejr.22.2022.03.29.04.14.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 29 Mar 2022 04:14:04 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de,
	zhangqing@rock-chips.com
Cc: robh+dt@kernel.org, krzk+dt@kernel.org, mturquette@baylibre.com,
 sboyd@kernel.org, linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v3 1/2] dt-bindings: clock: convert rockchip,
 rk3188-cru.txt to YAML
Date: Tue, 29 Mar 2022 13:13:22 +0200
Message-Id: <20220329111323.3569-1-jbx6244@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220329_041409_100174_1C37B1B5 
X-CRM114-Status: GOOD (  19.46  )
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

Current dts files with RK3188/RK3066 'cru' nodes are manually verified.
In order to automate this process rockchip,rk3188-cru.txt has to be
converted to YAML.

Changed:
  Add properties to fix notifications by clocks.yaml for example:
    clocks
    clock-names

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---

Changed V3:
  add Rockchip maintainer on her request
  fix yamllint line too long

Changed V2:
  change clocks maxItems
  add clock-names
  use clock-controller node name
  remove assigned-xxx
---
 .../bindings/clock/rockchip,rk3188-cru.txt    | 61 ---------------
 .../bindings/clock/rockchip,rk3188-cru.yaml   | 78 +++++++++++++++++++
 2 files changed, 78 insertions(+), 61 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/clock/rockchip,rk3188-cru.txt
 create mode 100644 Documentation/devicetree/bindings/clock/rockchip,rk3188-cru.yaml

diff --git a/Documentation/devicetree/bindings/clock/rockchip,rk3188-cru.txt b/Documentation/devicetree/bindings/clock/rockchip,rk3188-cru.txt
deleted file mode 100644
index 7f368530a..000000000
--- a/Documentation/devicetree/bindings/clock/rockchip,rk3188-cru.txt
+++ /dev/null
@@ -1,61 +0,0 @@
-* Rockchip RK3188/RK3066 Clock and Reset Unit
-
-The RK3188/RK3066 clock controller generates and supplies clock to various
-controllers within the SoC and also implements a reset controller for SoC
-peripherals.
-
-Required Properties:
-
-- compatible: should be "rockchip,rk3188-cru", "rockchip,rk3188a-cru" or
-			"rockchip,rk3066a-cru"
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
-preprocessor macros in the dt-bindings/clock/rk3188-cru.h and
-dt-bindings/clock/rk3066-cru.h headers and can be used in device tree sources.
-Similar macros exist for the reset sources in these files.
-
-External clocks:
-
-There are several clocks that are generated outside the SoC. It is expected
-that they are defined using standard clock bindings with following
-clock-output-names:
- - "xin24m" - crystal input - required,
- - "xin32k" - rtc clock - optional,
- - "xin27m" - 27mhz crystal input on rk3066 - optional,
- - "ext_hsadc" - external HSADC clock - optional,
- - "ext_cif0" - external camera clock - optional,
- - "ext_rmii" - external RMII clock - optional,
- - "ext_jtag" - externalJTAG clock - optional
-
-Example: Clock controller node:
-
-	cru: cru@20000000 {
-		compatible = "rockchip,rk3188-cru";
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
-	uart0: serial@10124000 {
-		compatible = "snps,dw-apb-uart";
-		reg = <0x10124000 0x400>;
-		interrupts = <GIC_SPI 34 IRQ_TYPE_LEVEL_HIGH>;
-		reg-shift = <2>;
-		reg-io-width = <1>;
-		clocks = <&cru SCLK_UART0>;
-	};
diff --git a/Documentation/devicetree/bindings/clock/rockchip,rk3188-cru.yaml b/Documentation/devicetree/bindings/clock/rockchip,rk3188-cru.yaml
new file mode 100644
index 000000000..ddd7e46af
--- /dev/null
+++ b/Documentation/devicetree/bindings/clock/rockchip,rk3188-cru.yaml
@@ -0,0 +1,78 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/clock/rockchip,rk3188-cru.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Rockchip RK3188/RK3066 Clock and Reset Unit (CRU)
+
+maintainers:
+  - Elaine Zhang <zhangqing@rock-chips.com>
+  - Heiko Stuebner <heiko@sntech.de>
+
+description: |
+  The RK3188/RK3066 clock controller generates and supplies clocks to various
+  controllers within the SoC and also implements a reset controller for SoC
+  peripherals.
+  Each clock is assigned an identifier and client nodes can use this identifier
+  to specify the clock which they consume. All available clocks are defined as
+  preprocessor macros in the dt-bindings/clock/rk3188-cru.h and
+  dt-bindings/clock/rk3066-cru.h headers and can be used in device tree sources.
+  Similar macros exist for the reset sources in these files.
+  There are several clocks that are generated outside the SoC. It is expected
+  that they are defined using standard clock bindings with following
+  clock-output-names:
+    - "xin24m"    - crystal input                 - required
+    - "xin32k"    - RTC clock                     - optional
+    - "xin27m"    - 27mhz crystal input on RK3066 - optional
+    - "ext_hsadc" - external HSADC clock          - optional
+    - "ext_cif0"  - external camera clock         - optional
+    - "ext_rmii"  - external RMII clock           - optional
+    - "ext_jtag"  - external JTAG clock           - optional
+
+properties:
+  compatible:
+    enum:
+      - rockchip,rk3066a-cru
+      - rockchip,rk3188-cru
+      - rockchip,rk3188a-cru
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
+      compatible = "rockchip,rk3188-cru";
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
