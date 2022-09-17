Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C4EBEC6FA82
	for <linux-rockchip@archiver.kernel.org>; Sat, 17 Sep 2022 19:42:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:From:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=GPXqO48nJ6sPyyLZX6jzFXEFpVgrV+67q2NfJcvPFic=; b=kKVP79juMfd8A8
	9StgKFr530G1aYLtUXzIvqc2MQBXu3pHQCLvwBBsalQ360isU4a/xCh5BOuZTmPX3n+9Ap9Pgtk97
	Q7n5olqasPCjVeDDWKIZm8DvJ9l5TrrkiwsTqQzX7URI8Yo9SUNjDboSROgh8QlTlk4BYJc6DMBi0
	rF5B/XFNpqFxOkMtfydthJ/qLR7ZEcoHjZHcaDO2RV5odniVcefr9BIreD141kSzTJZqw70LJNkAO
	/PY+shCGb2250nJOx0B9yiDQfN2Tcm8rVwTjqa3ViahoNciQrB40qnKwyVqzrCyzrfBQkCsNRS0jM
	c3Y9dDZFRGrSHGHjI0ew==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oZdhm-008a1o-9r; Sat, 17 Sep 2022 19:42:22 +0000
Received: from mail-ej1-x635.google.com ([2a00:1450:4864:20::635])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oZdha-008Zw1-Ha; Sat, 17 Sep 2022 19:42:12 +0000
Received: by mail-ej1-x635.google.com with SMTP id lh5so14560345ejb.10;
        Sat, 17 Sep 2022 12:42:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:content-language:cc:to:subject:from
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date;
        bh=CLQ627bvA6g1Nc29K4V1qYeubKsKhvm7FZqgOaOV0JU=;
        b=fpqOgsgO1oi0uxKU6EE/HhfV+NMAj7IoS7T6XWJtR0i3wUgpqqQPjSRsv3L6wQh+Tc
         7VWQqzEqrnw4SoMDCJKIZjI032Q1xwUGgN5c3qD3ddFWLZID4QGFlqrRJiE1ax4Wb11J
         ZEbz61w6d+iVmWEl6sAwOziW5AySYMrfixuth6EMf33vzZdGuWli7IudHCJoYtZLxW9T
         +Zte/QIEThUoMzwUJMwuWnJM3N1xmBQT6cPyl6ZT7hS7zVVjt7eBV3g9RACGc2tBC+NX
         AfRru1Bo1pz6NieDJop4iuhyvZEyol3vFhxlpt4xRXBg4ErM0piuorRgS6XMwXgcAkPi
         QCkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:content-language:cc:to:subject:from
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date;
        bh=CLQ627bvA6g1Nc29K4V1qYeubKsKhvm7FZqgOaOV0JU=;
        b=CUBk/cSFDjH8Ivi/rRgvVcFkzE5IAeupkDfDAgpO303Npwz8Mle4PhVjhIhKIshcbS
         z7D+OTxfwoLvMKeIZq4DZgCLRJ4U/yiI550CM0sIXdrF2syXD+Es8jO9Wtizu+dbvutp
         xfANT0lkOtjXxULadayLKxUCOHiyxBifPOahknhG3OYLoqhjMnF0Yq+NLvXWO/sMbCXJ
         sYhnWoDE1wOta/5m26gWVlKaGGQckJI6KwcKYqF7bT6ld/wJ4c7nqKB24W7uW6HUjn95
         kl+J8xnheVv+r+02W2Q6hCHnEm7C2MlHOJa8Yi4aqQGL0lFaOyrGYUNd6ubKaZhEn2Pn
         5qbQ==
X-Gm-Message-State: ACrzQf06YLixIiVKKiU7Zm6SDiqDq6MXD0Eoihx8wu4Tlc0PCMmnLWUa
	B/txuCgtVqApUrtO9J2pC7I=
X-Google-Smtp-Source: AMsMyM7jLjrtYaOXMnxRLFhqP75wdZVPpFnUnEeOJGnJG/R+UWwRW2Ac4DoFjxqvQMVVIn8BzOEBjw==
X-Received: by 2002:a17:906:7c8f:b0:771:3912:3942 with SMTP id w15-20020a1709067c8f00b0077139123942mr7855927ejo.387.1663443727868;
        Sat, 17 Sep 2022 12:42:07 -0700 (PDT)
Received: from [192.168.2.1] (81-204-249-205.fixed.kpn.net. [81.204.249.205])
        by smtp.gmail.com with ESMTPSA id w22-20020a17090633d600b0073d7e58b1bcsm12401924eja.157.2022.09.17.12.42.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 17 Sep 2022 12:42:07 -0700 (PDT)
Message-ID: <614ccc3b-eb65-450e-d015-9c615a09a701@gmail.com>
Date: Sat, 17 Sep 2022 21:42:06 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
From: Johan Jonker <jbx6244@gmail.com>
Subject: [PATCH v2] dt-bindings: clock: convert rockchip,rk3128-cru.txt to
 YAML
To: heiko@sntech.de, zhangqing@rock-chips.com
Cc: robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, sboyd@kernel.org,
 mturquette@baylibre.com, linux-clk@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220917_124210_636265_EF3621C3 
X-CRM114-Status: GOOD (  18.47  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
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

Convert rockchip,rk3128-cru.txt to YAML.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---

Changed V2:
  Use SPDX-License-Identifier: (GPL-2.0+ OR MIT)
  Add more clocks

---

Rockchip recently replied on other clock-patches to dual-license the
binding.

https://lore.kernel.org/all/510d1180-bc8e-7820-c772-ed7f35447087@rock-chips.com/
From Finley with an  @rock-chips.com address, so this should be ok.

Document history:

git log Documentation/devicetree/bindings/clock/*rk312*.txt

Author: Elaine Zhang <zhangqing@rock-chips.com>
    dt-bindings: add documentation for rk3126 clock
Author: Elaine Zhang <zhangqing@rock-chips.com>
    dt-bindings: add bindings for rk3128 clock controller
---
 .../bindings/clock/rockchip,rk3128-cru.txt    | 58 ---------------
 .../bindings/clock/rockchip,rk3128-cru.yaml   | 74 +++++++++++++++++++
 2 files changed, 74 insertions(+), 58 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/clock/rockchip,rk3128-cru.txt
 create mode 100644 Documentation/devicetree/bindings/clock/rockchip,rk3128-cru.yaml

diff --git a/Documentation/devicetree/bindings/clock/rockchip,rk3128-cru.txt b/Documentation/devicetree/bindings/clock/rockchip,rk3128-cru.txt
deleted file mode 100644
index 6f8744fd301b..000000000000
--- a/Documentation/devicetree/bindings/clock/rockchip,rk3128-cru.txt
+++ /dev/null
@@ -1,58 +0,0 @@
-* Rockchip RK3126/RK3128 Clock and Reset Unit
-
-The RK3126/RK3128 clock controller generates and supplies clock to various
-controllers within the SoC and also implements a reset controller for SoC
-peripherals.
-
-Required Properties:
-
-- compatible: should be "rockchip,rk3126-cru" or "rockchip,rk3128-cru"
-  "rockchip,rk3126-cru" - controller compatible with RK3126 SoC.
-  "rockchip,rk3128-cru" - controller compatible with RK3128 SoC.
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
-preprocessor macros in the dt-bindings/clock/rk3128-cru.h headers and can be
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
- - "gmac_clkin" - external GMAC clock - optional
-
-Example: Clock controller node:
-
-	cru: cru@20000000 {
-		compatible = "rockchip,rk3128-cru";
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
-	uart2: serial@20068000 {
-		compatible = "rockchip,serial";
-		reg = <0x20068000 0x100>;
-		interrupts = <GIC_SPI 22 IRQ_TYPE_LEVEL_HIGH>;
-		clock-frequency = <24000000>;
-		clocks = <&cru SCLK_UART2>, <&cru PCLK_UART2>;
-		clock-names = "sclk_uart", "pclk_uart";
-	};
diff --git a/Documentation/devicetree/bindings/clock/rockchip,rk3128-cru.yaml b/Documentation/devicetree/bindings/clock/rockchip,rk3128-cru.yaml
new file mode 100644
index 000000000000..b77aec3a6f8d
--- /dev/null
+++ b/Documentation/devicetree/bindings/clock/rockchip,rk3128-cru.yaml
@@ -0,0 +1,74 @@
+# SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/clock/rockchip,rk3128-cru.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Rockchip RK3126/RK3128 Clock and Reset Unit (CRU)
+
+maintainers:
+  - Elaine Zhang <zhangqing@rock-chips.com>
+  - Heiko Stuebner <heiko@sntech.de>
+
+description: |
+  The RK3126/RK3128 clock controller generates and supplies clock to various
+  controllers within the SoC and also implements a reset controller for SoC
+  peripherals.
+  Each clock is assigned an identifier and client nodes can use this identifier
+  to specify the clock which they consume. All available clocks are defined as
+  preprocessor macros in the dt-bindings/clock/rk3128-cru.h headers and can be
+  used in device tree sources. Similar macros exist for the reset sources in
+  these files.
+
+properties:
+  compatible:
+    enum:
+      - rockchip,rk3126-cru
+      - rockchip,rk3128-cru
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
+        - gmac_clkin
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
+      compatible = "rockchip,rk3128-cru";
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
