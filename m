Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 66A59C433F5
	for <linux-rockchip@archiver.kernel.org>; Fri, 22 Apr 2022 17:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FA2R9KmYk5CfsJXqCCL2hofgiXYMs4BSyAnFhiLB9XU=; b=k3IMnQc4pgBl3o
	6XRpqLkVVLd4KptHg2QrrvjywAuYaak0nZ1yK2KNzLZOXvX9GuWbh5oYk+PbhkTsOCrDsa6C3e7KW
	luK73bjLjBo/uwh9IVEfFVmHd1a9OvZd/VrLwl9WLj20HsfDi2jUAC401fPIQcPmZPPnzTAPOYrdU
	68L0VF4lS7f53sM4rKi7Eug0eNVSzx1tQeQT+BatsYn5M6qsolvc4d5NmvMmZ284j/SVwl2UGLvVZ
	DB80KKVTehPq98e8IDZYXe2m1B5/K3hiHwfmMX6PaT71Yz+WQ1MkrvyZV9WJ8slc2UiJIxU0Be0fs
	iYemrHsxu+Ha8JgW7BFA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nhwvN-001hhv-Ru; Fri, 22 Apr 2022 17:18:29 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nhwmv-001dWa-G7; Fri, 22 Apr 2022 17:09:51 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1]) (Authenticated sender: sre)
 with ESMTPSA id 7DC721F468EE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
 s=mail; t=1650647379;
 bh=vR2NR5xALH20cg36OBtgf5+3FjEQDnqSK+qke+aCek0=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=cg4/kJpuVnPg/x/05XfG40IpRpuRt816+xgpdNCrXz8lbZ+qeCK63ybaB0dLE/ION
 UlAw8s02smGbHDwb6oo5xoEJtbXEBhH/Ug9peoNsDXaEmxWFQCZhvQCH6vOJ1l+fXM
 eeJa8uXRbSnm8bnulTsnnEuOr/X/FTCMilzjaegFDVBJRb1o00xSBjtVqaGMHP59JI
 6ru5U0E4u79G2rENmP5pOt79iFEcOQbKyB+HGACzEhhRVaY5cd/CwA7zFWw/ezpig5
 0e1ZrArJ7YrbNBEHhJaolbwZTtezX6JckzG+JsrLqfjW+v5KNJzEZnhYnVm4HEEnpd
 u8Q30CaN9JaDQ==
Received: by jupiter.universe (Postfix, from userid 1000)
 id EFE17480C32; Fri, 22 Apr 2022 19:09:32 +0200 (CEST)
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
 kernel@lists.collabora.co.uk, Kever Yang <kever.yang@rock-chips.com>,
 kernel@collabora.com, Sebastian Reichel <sebastian.reichel@collabora.com>
Subject: [PATCHv1 19/19] arm64: dts: rockchip: Add rk3588-evb1 board
Date: Fri, 22 Apr 2022 19:09:20 +0200
Message-Id: <20220422170920.401914-20-sebastian.reichel@collabora.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220422170920.401914-1-sebastian.reichel@collabora.com>
References: <20220422170920.401914-1-sebastian.reichel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220422_100945_783367_A5148A5B 
X-CRM114-Status: GOOD (  15.78  )
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

From: Kever Yang <kever.yang@rock-chips.com>

Add board file for the RK3588 evaluation board. While the hardware
offers plenty of peripherals and connectivity this basic implementation
just handles things required to successfully boot Linux from eMMC
and connect via UART.

Signed-off-by: Kever Yang <kever.yang@rock-chips.com>
[rebase, update commit message, use EVB1 for SoC bringup]
Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
 .../devicetree/bindings/arm/rockchip.yaml     |  5 +++
 arch/arm64/boot/dts/rockchip/Makefile         |  1 +
 .../boot/dts/rockchip/rk3588-evb1-v10.dts     | 34 +++++++++++++++++++
 3 files changed, 40 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3588-evb1-v10.dts

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index eece92f83a2d..b14d0c84c69b 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -664,6 +664,11 @@ properties:
           - const: rockchip,rk3568-bpi-r2pro
           - const: rockchip,rk3568
 
+      - description: Rockchip RK3588 Evaluation board
+        items:
+          - const: rockchip,rk3588-evb1-v10
+          - const: rockchip,rk3588
+
 additionalProperties: true
 
 ...
diff --git a/arch/arm64/boot/dts/rockchip/Makefile b/arch/arm64/boot/dts/rockchip/Makefile
index 4ae9f35434b8..8a53ab6d37a1 100644
--- a/arch/arm64/boot/dts/rockchip/Makefile
+++ b/arch/arm64/boot/dts/rockchip/Makefile
@@ -61,3 +61,4 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-pinenote-v1.2.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-quartz64-a.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3568-evb1-v10.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3568-bpi-r2-pro.dtb
+dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-evb1-v10.dtb
diff --git a/arch/arm64/boot/dts/rockchip/rk3588-evb1-v10.dts b/arch/arm64/boot/dts/rockchip/rk3588-evb1-v10.dts
new file mode 100644
index 000000000000..68b19acb1550
--- /dev/null
+++ b/arch/arm64/boot/dts/rockchip/rk3588-evb1-v10.dts
@@ -0,0 +1,34 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Copyright (c) 2021 Rockchip Electronics Co., Ltd.
+ *
+ */
+
+/dts-v1/;
+
+#include "rk3588.dtsi"
+
+/ {
+	model = "Rockchip RK3588 EVB1 V10 Board";
+	compatible = "rockchip,rk3588-evb1-v10", "rockchip,rk3588";
+
+	chosen {
+		stdout-path = "serial2:1500000n8";
+	};
+};
+
+&sdhci {
+	bus-width = <8>;
+	no-sdio;
+	no-sd;
+	non-removable;
+	max-frequency = <200000000>;
+	mmc-hs400-1_8v;
+	mmc-hs400-enhanced-strobe;
+	status = "ok";
+};
+
+&uart2 {
+	status = "ok";
+	pinctrl-0 = <&uart2m0_xfer>;
+};
-- 
2.35.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
