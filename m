Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B72D5C433EF
	for <linux-rockchip@archiver.kernel.org>; Sat,  2 Apr 2022 14:38:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=n+w/2byKMGoP2ix5Zq0XDe63cXEGAIHsyHWZvp15mwo=; b=u4QovtpjVOE/NZ
	th7bwW/QuDqJB1h41Vf2ko+WKjJFiygtjKVUglz5WjxBp7Qx5ODl50ymzTnqeAM0eeD9lf0j9sWfr
	k2snotD9PnIVSJCDJBQWTTomSP1CpOsUuOgl2xn2TPrX9h4AJAKFSeO1IWlrUBvrWLwi+SvHa1jab
	l7NEQVDeQv7fiY0M2tq9fIrs52sXUYTwwErDp7tJkCJWyc6ZFkmOcc4e23A8SXdnU97c/1pgI/pBe
	/J6XHIqVGweWLm+fF3mQByESq7XBALZXtu2Uk229Y0JL7aCOlgTsFYztO49p9zKFm+h2d2ciM0Edi
	dDgUM06AWp3Vv41exUDQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1naetd-009KNj-DH; Sat, 02 Apr 2022 14:38:33 +0000
Received: from mail-ej1-x62f.google.com ([2a00:1450:4864:20::62f])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1naery-009JFj-Cr; Sat, 02 Apr 2022 14:36:53 +0000
Received: by mail-ej1-x62f.google.com with SMTP id yy13so11446388ejb.2;
 Sat, 02 Apr 2022 07:36:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=4sJAGR00sQPyOa2NU6Kbyt+hZau/MXPRKhM5pgnXKBk=;
 b=nSX9fb1plzvZ8Fzbh6lDWAeF2413rghTIuHHV7jUMZEmWpfKljublWpjDg9xSVwPmU
 5maN3DQhb1xh1LGSQRKfXUOvwnun1NLQTqIf86MH5vUqvKSV0XCzfFjdTJD3Gculn+qt
 kfR7+8cWZ7HpXAMeEjPfjJnuGjKXrNRDqnGRUEsiHgXqoRqOlEFKWSeh5Co+Ehw/sW9d
 akAsexFf5b2vD4OwgfrTTWgj9n3ScWe4MMvASNWVO3SpocPl8uky5WZMFqlEmjYo/Xlv
 49igTm1MeW0W7oRKPrUX0t62lYwLPbuFDsPETsWqcAk446julRqLLIqxQmWpnATKlzqs
 3BXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=4sJAGR00sQPyOa2NU6Kbyt+hZau/MXPRKhM5pgnXKBk=;
 b=Duamh1T7DNsn7r90Vxf3G88htgiSr8UYwzNjmgCaUQNjj3WqmGubO+LWGPHr+OrIBh
 FZyEql5/ptserH6vMY+LTpbpe6QTsbTdcqoFgaJpsCFHn1SvaL4M5o3p3KesSe53gvxV
 mv3I5JmGmwq7rDmOfAI399NHto+pHpLQrO/LxVbsX0Uxygi3E7OJGWQm0oJlHfPKa2k4
 V5f8b5VEXwiror8R+JMrxB/RYEAu+QUjatX+Z1q+3TlT5x4n7tu0/eHZpsSo2hxlqmap
 DpuhQkzrN7WSYwB7lotVNF+vzbFhBOTY8FQsi+VEVHnI+yydKLyr6je8zsCVt6fIilSH
 8+Pw==
X-Gm-Message-State: AOAM532WLxH5VI9E29dRw2238eoqxe+BvxUElqVFcXO67zem7D2XqBR3
 95EasVc8Q8Uiq66ArAGhk/s=
X-Google-Smtp-Source: ABdhPJwUDASQKnl3UVkOThXossDxGeZHDcmYNFHcd6uJ8J+iXty3WoVJI3QJE2Ya1Uh+nRCJNTJKEg==
X-Received: by 2002:a17:907:7295:b0:6e6:d8c7:5b4b with SMTP id
 dt21-20020a170907729500b006e6d8c75b4bmr1651189ejc.606.1648910208241; 
 Sat, 02 Apr 2022 07:36:48 -0700 (PDT)
Received: from debian.home (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id
 bp8-20020a170907918800b006e0daaa63ddsm2169557ejb.60.2022.04.02.07.36.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 02 Apr 2022 07:36:47 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de,
	zhangqing@rock-chips.com
Cc: robh+dt@kernel.org, krzk+dt@kernel.org, mturquette@baylibre.com,
 sboyd@kernel.org, linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v4 05/16] dt-bindings: clock: convert rockchip,
 rk3288-cru.txt to YAML
Date: Sat,  2 Apr 2022 16:36:25 +0200
Message-Id: <20220402143636.15222-6-jbx6244@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20220402143636.15222-1-jbx6244@gmail.com>
References: <20220402143636.15222-1-jbx6244@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220402_073650_541771_FFADFC1F 
X-CRM114-Status: GOOD (  22.09  )
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

Convert rockchip,rk3288-cru.txt to YAML.

Changes against original bindings:
  Add clocks and clock-names because the device has to have
  at least one input clock.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---

Changed V4:
  add more clocks
  add clocks to example
  add clocks requirement

Changed V2:
  add Rockchip maintainer on her request
  fix yamllint line too long
  restyle
---
 .../bindings/clock/rockchip,rk3288-cru.txt    | 67 -------------
 .../bindings/clock/rockchip,rk3288-cru.yaml   | 93 +++++++++++++++++++
 2 files changed, 93 insertions(+), 67 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/clock/rockchip,rk3288-cru.txt
 create mode 100644 Documentation/devicetree/bindings/clock/rockchip,rk3288-cru.yaml

diff --git a/Documentation/devicetree/bindings/clock/rockchip,rk3288-cru.txt b/Documentation/devicetree/bindings/clock/rockchip,rk3288-cru.txt
deleted file mode 100644
index bf3a9ec19..000000000
--- a/Documentation/devicetree/bindings/clock/rockchip,rk3288-cru.txt
+++ /dev/null
@@ -1,67 +0,0 @@
-* Rockchip RK3288 Clock and Reset Unit
-
-The RK3288 clock controller generates and supplies clock to various
-controllers within the SoC and also implements a reset controller for SoC
-peripherals.
-
-A revision of this SoC is available: rk3288w. The clock tree is a bit
-different so another dt-compatible is available. Noticed that it is only
-setting the difference but there is no automatic revision detection. This
-should be performed by bootloaders.
-
-Required Properties:
-
-- compatible: should be "rockchip,rk3288-cru" or "rockchip,rk3288w-cru" in
-  case of this revision of Rockchip rk3288.
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
-preprocessor macros in the dt-bindings/clock/rk3288-cru.h headers and can be
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
- - "ext_hsadc" - external HSADC clock - optional,
- - "ext_edp_24m" - external display port clock - optional,
- - "ext_vip" - external VIP clock - optional,
- - "ext_isp" - external ISP clock - optional,
- - "ext_jtag" - external JTAG clock - optional
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
diff --git a/Documentation/devicetree/bindings/clock/rockchip,rk3288-cru.yaml b/Documentation/devicetree/bindings/clock/rockchip,rk3288-cru.yaml
new file mode 100644
index 000000000..558e5a094
--- /dev/null
+++ b/Documentation/devicetree/bindings/clock/rockchip,rk3288-cru.yaml
@@ -0,0 +1,93 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/clock/rockchip,rk3288-cru.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Rockchip RK3288 Clock and Reset Unit (CRU)
+
+maintainers:
+  - Elaine Zhang <zhangqing@rock-chips.com>
+  - Heiko Stuebner <heiko@sntech.de>
+
+description: |
+  The RK3288 clock controller generates and supplies clocks to various
+  controllers within the SoC and also implements a reset controller for SoC
+  peripherals.
+
+  A revision of this SoC is available: rk3288w. The clock tree is a bit
+  different so another dt-compatible is available. Noticed that it is only
+  setting the difference but there is no automatic revision detection. This
+  should be performed by boot loaders.
+
+  Each clock is assigned an identifier and client nodes can use this identifier
+  to specify the clock which they consume. All available clocks are defined as
+  preprocessor macros in the dt-bindings/clock/rk3288-cru.h headers and can be
+  used in device tree sources. Similar macros exist for the reset sources in
+  these files.
+
+  There are several clocks that are generated outside the SoC. It is expected
+  that they are defined using standard clock bindings with the
+  clock-output-names defined in this schema.
+
+properties:
+  compatible:
+    enum:
+      - rockchip,rk3288-cru
+      - rockchip,rk3288w-cru
+
+  reg:
+    maxItems: 1
+
+  clocks:
+    minItems: 1
+    maxItems: 8
+
+  clock-names:
+    minItems: 1
+    maxItems: 8
+    items:
+      enum:
+        - xin24m
+        - xin32k
+        - ext_i2s
+        - ext_hsadc
+        - ext_edp_24m
+        - ext_vip
+        - ext_isp
+        - ext_jtag
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
+      compatible = "rockchip,rk3288-cru";
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
