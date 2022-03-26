Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 06C09C433EF
	for <linux-rockchip@archiver.kernel.org>; Sat, 26 Mar 2022 12:10:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=wrvnMpR3PehGf/OjrajOeUZK23JtuzM3hYs+SQbb7T4=; b=pmYYhj2M8agkqO
	0UTpgxBttDQeQqqgfyu4AZPeJRte+w4yHjjL5DeyShhyoNfQXkIJSNukAAtBUlV2tePc5fw6wIfg7
	j3zQSoIhY0dxRMKRUnX8ZG7W6eqPxTAUk70iO3x+DhQkIYxPXUkkd93JqAlE3N+Ntrp6HbKlm6rDY
	uwVlV07Tre+QUCinZzWmACn/OoREN6gHU8rgVoXkBgVkWHtcc6OqHpb+l/GLD+Oaer3sASt/4ZyKL
	4H0i1k1MbRyga6MDPt1lY3idaU3SXDH7gqYGwIp6kRX+6wIltbjZCg9j081FSFHlYoisPdyOPaGNE
	PYxXiVaE0a+PnGrLQMIw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nY5FF-004FLH-Sg; Sat, 26 Mar 2022 12:10:13 +0000
Received: from mail-ed1-x529.google.com ([2a00:1450:4864:20::529])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nY5Es-004FH1-Up; Sat, 26 Mar 2022 12:09:52 +0000
Received: by mail-ed1-x529.google.com with SMTP id g22so807912edz.2;
 Sat, 26 Mar 2022 05:09:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=rkpQ2CvLx5/YOytL3DUt1U7LW03Ve0SSyCtKDL1HKQY=;
 b=cv/OXQ3kn0vZd+oalJeNtX7VyFKKTOQdKzR0MzowDFH69xIOlKBGmPW2QBt1H/awLB
 EfkUgZd/oiK1dD+SvmSCVlRvuPGdppO/QDzvov6XSX5FJ+IRDdS1qUXWRhD6T8XZjdKk
 6nk4WYC5TIux739Y2eK1mrP8sdzSJm6UsaVasewRQ5EXUxCUUP0o1Bcwe+BVluvUhOq6
 8BlGcxm0jF0GfC6wDwuxntMb+hdGR0EXizhlJqgmbL2oFcTJSpoDl1kEczjrzfmIuqi8
 gSeWetQE8MRzsSit53Ow9rQ4PKfzDQIJJQL/8iSJemCBUX1XYnabzSKBDEJdDULFjKHS
 nkAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=rkpQ2CvLx5/YOytL3DUt1U7LW03Ve0SSyCtKDL1HKQY=;
 b=QcOp1wX2a5sEe6uRQgNyCcXiNgW9pyKg8QHFAbmxAnT4IfdTjBr94idyGblXKWL5uf
 ocdFyiDQ1yqm20kTyE+nMussw4ESXyyf9B9fxBMRvRATOlOsPjaJ/RY4lcd6oY4HyKUt
 8NTx9eZUzKt62KdnPqLoKwznk4mCdtmt26b6pl1ZMrZoIi6h4rn3iv+zTfuJKHoynsfR
 gl09brMkk2GmtUnwGKjDmPXipP5TLJZC/5v9o1uySLxRytPicvrz2fbGnKdYLncE1OrC
 AmV3SfSHAH0p2TvEBbuA+UbnPtbkrtz2/V7ui/6JymSIKgC0jGlb/mje1mU7Mjrrsue8
 HgBA==
X-Gm-Message-State: AOAM5321KkMytF3gMWorb61QMfitywDZnLUQsQrkR1ROVUu/sLpGnGOS
 mpGEENYXpbJhWu7IMfrgVd8=
X-Google-Smtp-Source: ABdhPJzTrzjvLOcgoh8sDDfmO2EFpSX8kVF9ThptSc0DTR0uV/5q6FdEiwo6Fc8Q/a0EnUykuXUzPQ==
X-Received: by 2002:aa7:c056:0:b0:418:e8d7:52a3 with SMTP id
 k22-20020aa7c056000000b00418e8d752a3mr3983658edo.301.1648296589084; 
 Sat, 26 Mar 2022 05:09:49 -0700 (PDT)
Received: from debian.home (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id
 cr19-20020a170906d55300b006df6b316e29sm3559920ejc.208.2022.03.26.05.09.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 26 Mar 2022 05:09:48 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Cc: robh+dt@kernel.org, krzk+dt@kernel.org, mturquette@baylibre.com,
 sboyd@kernel.org, linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v1 1/2] dt-bindings: clock: convert rockchip,
 rk3288-cru.txt to YAML
Date: Sat, 26 Mar 2022 13:09:41 +0100
Message-Id: <20220326120942.24008-1-jbx6244@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220326_050951_059324_0C2DDDD6 
X-CRM114-Status: GOOD (  19.95  )
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

Current dts files with RK3288 'cru' nodes are manually verified.
In order to automate this process rockchip,rk3288-cru.txt has to be
converted to YAML.

Changed:
  Add properties to fix notifications by clocks.yaml for example:
    clocks
    clock-names

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 .../bindings/clock/rockchip,rk3288-cru.txt    | 67 ---------------
 .../bindings/clock/rockchip,rk3288-cru.yaml   | 83 +++++++++++++++++++
 2 files changed, 83 insertions(+), 67 deletions(-)
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
index 000000000..e5f89a78e
--- /dev/null
+++ b/Documentation/devicetree/bindings/clock/rockchip,rk3288-cru.yaml
@@ -0,0 +1,83 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/clock/rockchip,rk3288-cru.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Rockchip RK3288 Clock and Reset Unit (CRU)
+
+maintainers:
+  - Heiko Stuebner <heiko@sntech.de>
+
+description: |
+  The RK3288 clock controller generates and supplies clock to various
+  controllers within the SoC and also implements a reset controller for SoC
+  peripherals.
+
+  A revision of this SoC is available: rk3288w. The clock tree is a bit
+  different so another dt-compatible is available. Noticed that it is only
+  setting the difference but there is no automatic revision detection. This
+  should be performed by bootloaders.
+
+  Each clock is assigned an identifier and client nodes can use this identifier
+  to specify the clock which they consume. All available clocks are defined as
+  preprocessor macros in the dt-bindings/clock/rk3288-cru.h headers and can be
+  used in device tree sources. Similar macros exist for the reset sources in
+  these files.
+
+  There are several clocks that are generated outside the SoC. It is expected
+  that they are defined using standard clock bindings with following
+  clock-output-names:
+    - "xin24m"      - crystal input               - required,
+    - "xin32k"      - rtc clock                   - optional,
+    - "ext_i2s"     - external I2S clock          - optional,
+    - "ext_hsadc"   - external HSADC clock        - optional,
+    - "ext_edp_24m" - external display port clock - optional,
+    - "ext_vip"     - external VIP clock          - optional,
+    - "ext_isp"     - external ISP clock          - optional,
+    - "ext_jtag"    - external JTAG clock         - optional
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
+      Phandle to the syscon managing the "general register files",
+      if missing pll rates are not changeable, due to the missing pll lock status.
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
+    cru: clock-controller@ff760000 {
+      compatible = "rockchip,rk3288-cru";
+      reg = <0xff760000 0x1000>;
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
