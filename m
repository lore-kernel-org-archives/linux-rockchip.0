Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4023FC433EF
	for <linux-rockchip@archiver.kernel.org>; Tue, 29 Mar 2022 18:44:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ucR4FAwn++0W4BMWWQgaQIIaAl+nst5KYGq33yVOdsU=; b=Lq2sLiUdLyD6DL
	tlZ4P4QPjMTFAuZsfcZvT+i79g1RSOq/s2hlRmBlO16HbTDq/6mzNHZj/XsO0r8/rC1yQODDmces5
	TXzEPC0tTGgUZ9K+LECsvOzSRuswzjhrd8ejF31vFRFcb45rVaAcsLzLOK6Kr/rATO09s8f6mft5k
	kfEv+endJsgXM8GcGitEKZ/JcKCbXCX3rWCNMStWhW24nC1UB6cOV9qBmkbQy2VuQvUGp695WOuRM
	j6DHUhNrviEdffE0xoxC5OcFxQSl/KkMnY0Yl+3agOpbhJ2LRAPRAfjHRlmrKAMzEznPuvh+mUsgp
	BZ/SKOPPdStQK/RLsNNw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nZGp1-00DG9Y-7e; Tue, 29 Mar 2022 18:44:03 +0000
Received: from mail-ej1-x62f.google.com ([2a00:1450:4864:20::62f])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nZGoo-00DG54-A4; Tue, 29 Mar 2022 18:43:52 +0000
Received: by mail-ej1-x62f.google.com with SMTP id j15so36905982eje.9;
 Tue, 29 Mar 2022 11:43:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=VMqff0AA4ues5gejWo82ERpXccxpeB9zCdHCRWcLylw=;
 b=Ro5n3KjVjRw3+k4L60gptenas6QL3UcFcMzVDbvIwdJAEDTRjaS4ve085vhJrtapzy
 XiZLKb8tjOI+LdDzMfUspzyAHb8rCGjb6CIecLT0UWJBGDzIt7mrso/cjDO95T1B0bgr
 UusxGBlf6jUUsScu8RuobfVNr2QiRR2hGtNHwdIg7vqIiCJvJId4/nIVhJfeC2729mZW
 T2GnOsdxqE+k3TVG8EJtzdpzQdVMEn7dhqXdzLXsmeueGeXFlxmNZmFY2S0Ub+peczDB
 d/QmHEeOGDJLvrL2Bq6Cw6vj60w01yKqwZnrtM3XdAwHVETOlaMicOo3xNTaaqqp8DXt
 jgsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=VMqff0AA4ues5gejWo82ERpXccxpeB9zCdHCRWcLylw=;
 b=uRmjpsFsfRzDxx2m1z2+68T9/RyINHK0UQUfuqW4bMcgx9S4jq/5JqoMIcahJe0wIk
 ONHxvkfj7kTNKs3C0EQo/g1oy486FWpl0kS3ks2oMALsn/y9fPOn13rZo8au/dMT/NTh
 Hm/cc7A6ve+XYJ8K4acbFum5z6lSzvB+GkS17XiicfIdSzsY43T0Nt772J5q0APTUBiq
 pLjVaR6qoM+Lyx6lTq30m05pnXKxKZ/zQLEG13+QXKR7YIKrZl8e2JXl+hA8sEYiWBq+
 HFMfC1ICx/J/n6naPyE8z3r7BQoZ66Zs0IDvFxFt3gsUlckOO69jMUq1e05WA663T6qR
 +WyA==
X-Gm-Message-State: AOAM531+t4u2uEKUaHfWw9kgHCg1WzZDyk6N+J5caGLSmC95DRVUzRlO
 Sb0F2uZm1iwjf8PPWE/tSPA=
X-Google-Smtp-Source: ABdhPJwEs5t8gHV99e7n5X+AeeylUWh58oZWTzleCryNYu9GZNqAFcGZtF6/9Onh5jQb/4YUIguDYg==
X-Received: by 2002:a17:906:c1d6:b0:6d6:e0a3:bbc7 with SMTP id
 bw22-20020a170906c1d600b006d6e0a3bbc7mr36833053ejb.484.1648579427760; 
 Tue, 29 Mar 2022 11:43:47 -0700 (PDT)
Received: from debian.home (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id
 z12-20020a17090674cc00b006df9afdda91sm7138714ejl.185.2022.03.29.11.43.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 29 Mar 2022 11:43:47 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de,
	zhangqing@rock-chips.com
Cc: robh+dt@kernel.org, krzk+dt@kernel.org, mturquette@baylibre.com,
 sboyd@kernel.org, linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v1 1/2] dt-bindings: clock: convert rockchip,
 rk3308-cru.txt to YAML
Date: Tue, 29 Mar 2022 20:43:38 +0200
Message-Id: <20220329184339.1134-1-jbx6244@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220329_114350_393031_81254DC0 
X-CRM114-Status: GOOD (  19.20  )
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
 - Add clocks and clock-names because the device has to have
   at least one input clock.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 .../bindings/clock/rockchip,rk3308-cru.txt    | 60 ---------------
 .../bindings/clock/rockchip,rk3308-cru.yaml   | 76 +++++++++++++++++++
 2 files changed, 76 insertions(+), 60 deletions(-)
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
index 000000000..523ee578a
--- /dev/null
+++ b/Documentation/devicetree/bindings/clock/rockchip,rk3308-cru.yaml
@@ -0,0 +1,76 @@
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
+  that they are defined using standard clock bindings with following
+  clock-output-names:
+    - "xin24m"                               - crystal input      - required
+    - "xin32k"                               - rtc clock          - optional
+    - "mclk_i2s0_8ch_in", "mclk_i2s1_8ch_in",
+      "mclk_i2s2_8ch_in", "mclk_i2s3_8ch_in",
+      "mclk_i2s0_2ch_in", "mclk_i2s1_2ch_in" - external I2S or
+                                               SPDIF clock        - optional
+    - "mac_clkin"                            - external MAC clock - optional
+
+properties:
+  compatible:
+    enum:
+      - rockchip,rk3308-cru
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
+    cru: clock-controller@ff500000 {
+      compatible = "rockchip,rk3308-cru";
+      reg = <0xff500000 0x1000>;
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
