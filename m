Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5C5A3CEB2C9
	for <linux-rockchip@archiver.kernel.org>; Mon, 30 Sep 2024 21:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dUoCaHAKU9Im4kOqoWJiB1sv8Rlw+mC91sxjwiodFF0=; b=N6ovcMEYLJXMzi
	qJCEAKlkqKVlOeDGbRw+CO89PLNB8qRWLG9fMprPajYw91UsqcTmnbrxp300zgWpdx6HDRNoupY+c
	Wv+0Hg4KklBZ5Z5XoVTGhOfYfN3VD+pAMNufsOANBdfKWFiDGzcrHgKh37mam5A8ykk7vIKfwB7Wz
	1rAsG7NNEBhhe2NjVN3zZNpnX2wiGjBXrWii8QM0PPaiQtbDkD6XvdiDMKpxFHZCCcIgAG9s7f4xL
	iBn0rst+cPPs1aciAc19eO88eUVFJWsgjfxgCTGjt50QEp80fmqWXiHsyKpEJQz1XMjxlz64VSIKB
	iVgjIxc39l0FwLLzZO7g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1svOId-00000000x9u-1yhp;
	Mon, 30 Sep 2024 21:51:23 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1svOHN-00000000wuh-3W8s;
	Mon, 30 Sep 2024 21:50:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:MIME-Version:References:
	In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=IV3S3N6JchgjR+3Hvyobg+DmDYydj+06VEKK0P502y4=; b=nN98jtTCPJq+9YSJ9wIQl+1Psg
	Zs3kXZK+HBffSlmvbjCNQc8GAyukgTreU46MPbrs1QKUb5UKTXt0v3mc8pexG3G40tU4oHMo3NVk9
	pJfjfATWEDRICMrmxd7enhRZtR1SR3FyUC5LpA23BMeFZBJWus1kzcOYOjPK90ZXkSDAWHUW6zaYW
	2kH9TFMLa6qqdaRr12LQQEwBmrBFcC25RfrZHjcIVW8Q9vlD1rlJuqMSxmV16eM54aUt/llKbsaIz
	tdJT6njEYL184II7KJpFwry0PCB5LQk5wRC6AQyM0ZDdkp7aDqDqZ5CGaq88CjOUw55YxlQ5UL8dz
	JsIG8A6g==;
Received: from i5e861925.versanet.de ([94.134.25.37] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1svOHL-0008So-Io; Mon, 30 Sep 2024 23:50:03 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: heiko@sntech.de
Cc: mturquette@baylibre.com,
	sboyd@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	jbx6244@gmail.com,
	linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v2 1/3] dt-bindings: clock: convert rockchip,rk3328-cru.txt to YAML
Date: Mon, 30 Sep 2024 23:49:59 +0200
Message-ID: <20240930215001.1999212-2-heiko@sntech.de>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240930215001.1999212-1-heiko@sntech.de>
References: <20240930215001.1999212-1-heiko@sntech.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240930_145005_909464_F4C18152 
X-CRM114-Status: GOOD (  20.68  )
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

From: Johan Jonker <jbx6244@gmail.com>

Convert RK3328 clock controller bindings to DT schema

Changes against original bindings:
 - Add clocks and clock-names as the device has at least one input clock.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
[add Krzysztof's review from v1, shorten commit description]
Signed-off-by: Heiko Stuebner <heiko@sntech.de>
---
 .../bindings/clock/rockchip,rk3328-cru.txt    | 58 ---------------
 .../bindings/clock/rockchip,rk3328-cru.yaml   | 74 +++++++++++++++++++
 2 files changed, 74 insertions(+), 58 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/clock/rockchip,rk3328-cru.txt
 create mode 100644 Documentation/devicetree/bindings/clock/rockchip,rk3328-cru.yaml

diff --git a/Documentation/devicetree/bindings/clock/rockchip,rk3328-cru.txt b/Documentation/devicetree/bindings/clock/rockchip,rk3328-cru.txt
deleted file mode 100644
index 904ae682ea90..000000000000
--- a/Documentation/devicetree/bindings/clock/rockchip,rk3328-cru.txt
+++ /dev/null
@@ -1,58 +0,0 @@
-* Rockchip RK3328 Clock and Reset Unit
-
-The RK3328 clock controller generates and supplies clock to various
-controllers within the SoC and also implements a reset controller for SoC
-peripherals.
-
-Required Properties:
-
-- compatible: should be "rockchip,rk3328-cru"
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
-preprocessor macros in the dt-bindings/clock/rk3328-cru.h headers and can be
-used in device tree sources. Similar macros exist for the reset sources in
-these files.
-
-External clocks:
-
-There are several clocks that are generated outside the SoC. It is expected
-that they are defined using standard clock bindings with following
-clock-output-names:
- - "xin24m" - crystal input - required,
- - "clkin_i2s" - external I2S clock - optional,
- - "gmac_clkin" - external GMAC clock - optional
- - "phy_50m_out" - output clock of the pll in the mac phy
- - "hdmi_phy" - output clock of the hdmi phy pll - optional
-
-Example: Clock controller node:
-
-	cru: clock-controller@ff440000 {
-		compatible = "rockchip,rk3328-cru";
-		reg = <0x0 0xff440000 0x0 0x1000>;
-		rockchip,grf = <&grf>;
-
-		#clock-cells = <1>;
-		#reset-cells = <1>;
-	};
-
-Example: UART controller node that consumes the clock generated by the clock
-  controller:
-
-	uart0: serial@ff120000 {
-		compatible = "snps,dw-apb-uart";
-		reg = <0xff120000 0x100>;
-		interrupts = <GIC_SPI 56 IRQ_TYPE_LEVEL_HIGH>;
-		reg-shift = <2>;
-		reg-io-width = <4>;
-		clocks = <&cru SCLK_UART0>;
-	};
diff --git a/Documentation/devicetree/bindings/clock/rockchip,rk3328-cru.yaml b/Documentation/devicetree/bindings/clock/rockchip,rk3328-cru.yaml
new file mode 100644
index 000000000000..f079c7a2559b
--- /dev/null
+++ b/Documentation/devicetree/bindings/clock/rockchip,rk3328-cru.yaml
@@ -0,0 +1,74 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/clock/rockchip,rk3328-cru.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Rockchip RK3328 Clock and Reset Unit (CRU)
+
+maintainers:
+  - Elaine Zhang <zhangqing@rock-chips.com>
+  - Heiko Stuebner <heiko@sntech.de>
+
+description: |
+  The RK3328 clock controller generates and supplies clocks to various
+  controllers within the SoC and also implements a reset controller for SoC
+  peripherals.
+  Each clock is assigned an identifier and client nodes can use this identifier
+  to specify the clock which they consume. All available clocks are defined as
+  preprocessor macros in the dt-bindings/clock/rk3328-cru.h headers and can be
+  used in device tree sources. Similar macros exist for the reset sources in
+  these files.
+  There are several clocks that are generated outside the SoC. It is expected
+  that they are defined using standard clock bindings with following
+  clock-output-names:
+    - "xin24m"      - crystal input                          - required,
+    - "clkin_i2s"   - external I2S clock                     - optional,
+    - "gmac_clkin"  - external GMAC clock                    - optional
+    - "phy_50m_out" - output clock of the pll in the mac phy
+    - "hdmi_phy"    - output clock of the hdmi phy pll       - optional
+
+properties:
+  compatible:
+    enum:
+      - rockchip,rk3328-cru
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
+    cru: clock-controller@ff440000 {
+      compatible = "rockchip,rk3328-cru";
+      reg = <0xff440000 0x1000>;
+      rockchip,grf = <&grf>;
+      #clock-cells = <1>;
+      #reset-cells = <1>;
+    };
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
