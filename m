Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A17FFC4332F
	for <linux-rockchip@archiver.kernel.org>; Fri, 22 Apr 2022 17:10:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EP9HAEbKjSCZDPcpN549u2wYVWSGpNDUN2DMpVK01zU=; b=P1hFuSyFp6SxHI
	q5TtRrEdIDG4IFmHpmHVRJNEy/lsYd212qvL8U2CkR5RqT9uwfMyLYlLhnHXiw7E8Acgth/JwqnCq
	j1lI6bbWktdpaKYdVf7jA77N8Gt6UlWquNEN6NE22/cappPMuPqJfH0xk+iPyLcem4EKBn6toQJ74
	6LayCmvJpjWOZipXe2fXC+A5z1hncqCboFXvhU5cXWglpLSxEeM9Djsjr6RBMWvf/+JktnuSIGTBH
	OgI6Pj6J3DzZKQtshIA/gqMNnclWa/utWrJJqXCuX8Tiv8DV3YRQ+clqpjqX2desQ1szjiVZc9CtY
	/BfMNCNK9ZLwEBFSjnxA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nhwnL-001deQ-Da; Fri, 22 Apr 2022 17:10:11 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nhwmp-001dS4-8M; Fri, 22 Apr 2022 17:09:41 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1]) (Authenticated sender: sre)
 with ESMTPSA id 063301F4684B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
 s=mail; t=1650647375;
 bh=TnIdNrpuxC9G+/dcTYgeKYN/nQW+pYpEjAihkygqdxs=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=cGw0GubNhgROE6TLDJPojVfCfb0ArWNA9nHL6ZyLFzE2GJqHKPjgRpUPiMWQQr6Ct
 dM9d3QjX7pT3XN+Jm57+qX+S1JlBBelOoySvtemfwRaQJiodFGMH17U7YOsmMKgAfN
 USRATS6jKb2BEBXSRHwJJwE6oxjzZYfG6mGvuHtD8GaB3CPAOveSAAnBNzCRae7Wx1
 z+6w6j1rk18S0c+M5ehTTakHa5ekMGxOg9W52lpKFMH7k6E7H+eeWVbHPkbztUmcWq
 l6TKcjUv6UoI9S8Ed03f+EutQxDxHfZ/zPmaf704yIiSFDLx0ijZkVBDCXm5Xr03zn
 Xj2jzh7C68zBg==
Received: by jupiter.universe (Postfix, from userid 1000)
 id C18D24807E0; Fri, 22 Apr 2022 19:09:32 +0200 (CEST)
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
Subject: [PATCHv1 01/19] dt-binding: clock: Document rockchip,
 rk3588-cru bindings
Date: Fri, 22 Apr 2022 19:09:02 +0200
Message-Id: <20220422170920.401914-2-sebastian.reichel@collabora.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220422170920.401914-1-sebastian.reichel@collabora.com>
References: <20220422170920.401914-1-sebastian.reichel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220422_100939_493210_9D5B5723 
X-CRM114-Status: GOOD (  14.22  )
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
index 000000000000..dec2ae8c7970
--- /dev/null
+++ b/Documentation/devicetree/bindings/clock/rockchip,rk3588-cru.yaml
@@ -0,0 +1,63 @@
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/clock/rockchip,rk3588-cru.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: ROCKCHIP rk3588 Family Clock Control Module Binding
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
+  clocks: true
+
+  assigned-clocks:
+    minItems: 1
+
+  assigned-clock-parents:
+    minItems: 1
+
+  assigned-clock-rates:
+    minItems: 1
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
