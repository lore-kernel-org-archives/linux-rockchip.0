Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B40DCC433F5
	for <linux-rockchip@archiver.kernel.org>; Wed,  4 May 2022 21:33:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Osxep69eJCMIUZoFQBE9qMeGwKcKeUJtrf7VjAJc9Fw=; b=2S4sELPnmHR9cL
	xtT3G0FwJ8XayLVr7GghQTsZzi0ouF53kHssdPWJSC9QD0+GPH93SPA7ZPbuoJsGF1S+ai55FkbJI
	WUrxqILbSja3eg05KEfYEL4Dx2jeXPN+Xx3mML/muRXQ3FPQBZYEjAA0YzozX95yNA3lg5bKpTQSN
	8DCW8J+j2x1591HQpe9vSu2gFXP/GFmIiEEo3YvfkmIrhsVaxS4u+ahfE9AuYqnv+EWyIcBCHs2T2
	z9FWby7XtbmTzEaoh6tWdV5YtAvgC+qNw30b16VmJWoshR2d0glTLJNTshqJsEya+oV6Uxulodd4A
	9Sq3qJA4HAupSx+x0q2w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nmMd1-00CpDA-PC; Wed, 04 May 2022 21:33:47 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nmMcK-00CooR-0D; Wed, 04 May 2022 21:33:06 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1]) (Authenticated sender: sre)
 with ESMTPSA id 07CE61F44A87
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
 s=mail; t=1651699976;
 bh=l0V4udZjAuiOeK5vyxVOpBZjaG3ONdg+DU9YAvFIO7A=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=nJtXbKeArbJodxYDgd7WQSRp2+oaWVHi1plpFtoQSFVxXRZdeST2JEJ9VtxFJu4/H
 XTFptfhJsUCi+ZkUasVXK+dG/m4iLPSea5fAwjgRpgmcaxlawbD82yr5o925MYR5A1
 QKMCDaHt5ILJ1G7V5UNRALhlkkHKi5c/t/J2d1Iq51gFYP0uzbZqyqAdPDMuKo0Su9
 8qgACxjj+cXK6xdhcTaJXN1xIIuv/J9MUKOXXdrZL14qJZKPloIvHJFKI7lV9VbgTM
 cKdeDhUvg3uO7gXZ2ZXtnb4G+280nfd5AwmwOs36FBw4pZl2v45t+Ls1jg3NJeNj9n
 SJbOSw6xSceuw==
Received: by jupiter.universe (Postfix, from userid 1000)
 id 33FBB48146E; Wed,  4 May 2022 23:32:53 +0200 (CEST)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Linus Walleij <linus.walleij@linaro.org>,
 Bartosz Golaszewski <brgl@bgdev.pl>,
 Adrian Hunter <adrian.hunter@intel.com>,
 Ulf Hansson <ulf.hansson@linaro.org>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Michael Turquette <mturquette@baylibre.com>,
 Stephen Boyd <sboyd@kernel.org>, linux-clk@vger.kernel.org,
 linux-mmc@vger.kernel.org, linux-gpio@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 kernel@lists.collabora.co.uk, Elaine Zhang <zhangqing@rock-chips.com>,
 kernel@collabora.com, Sebastian Reichel <sebastian.reichel@collabora.com>
Subject: [PATCHv2 03/21] dt-binding: clock: Document rockchip,
 rk3588-cru bindings
Date: Wed,  4 May 2022 23:32:33 +0200
Message-Id: <20220504213251.264819-4-sebastian.reichel@collabora.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220504213251.264819-1-sebastian.reichel@collabora.com>
References: <20220504213251.264819-1-sebastian.reichel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220504_143304_215678_B74E75C9 
X-CRM114-Status: GOOD (  15.81  )
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

From: Elaine Zhang <zhangqing@rock-chips.com>

Document the device tree bindings of the rockchip Rk3588 SoC
clock driver.

Signed-off-by: Elaine Zhang <zhangqing@rock-chips.com>
Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
 .../bindings/clock/rockchip,rk3588-cru.yaml   | 63 +++++++++++++++++++
 1 file changed, 63 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/clock/rockchip,rk3588-cru.yaml

diff --git a/Documentation/devicetree/bindings/clock/rockchip,rk3588-cru.yaml b/Documentation/devicetree/bindings/clock/rockchip,rk3588-cru.yaml
new file mode 100644
index 000000000000..6e65ee7b0092
--- /dev/null
+++ b/Documentation/devicetree/bindings/clock/rockchip,rk3588-cru.yaml
@@ -0,0 +1,63 @@
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/clock/rockchip,rk3588-cru.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Rockchip rk3588 Family Clock Control Module
+
+maintainers:
+  - Elaine Zhang <zhangqing@rock-chips.com>
+  - Heiko Stuebner <heiko@sntech.de>
+
+description: |
+  The RK3588 clock controller generates the clock and also implements a
+  reset controller for SoC peripherals.
+  (examples: provide SCLK_UART2\PCLK_UART2 and SRST_P_UART2\SRST_S_UART2 for UART module)
+  Each clock is assigned an identifier and client nodes can use this identifier
+  to specify the clock which they consume. All available clocks are defined as
+  preprocessor macros in the dt-bindings/clock/rk3588-cru.h headers and can be
+  used in device tree sources.
+
+properties:
+  compatible:
+    enum:
+      - rockchip,rk3588-cru
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
+  rockchip,grf:
+    $ref: /schemas/types.yaml#/definitions/phandle
+    description: >
+      phandle to the syscon managing the "general register files". It is used
+      for GRF muxes, if missing any muxes present in the GRF will not be
+      available.
+
+  clocks: true
+  assigned-clocks: true
+  assigned-clock-rates: true
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
+  # Clock Control Module node:
+  - |
+    cru: clock-controller@fd7c0000 {
+      compatible = "rockchip,rk3588-cru";
+      reg = <0xfd7c0000 0x5c000>;
+      #clock-cells = <1>;
+      #reset-cells = <1>;
+    };
-- 
2.35.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
