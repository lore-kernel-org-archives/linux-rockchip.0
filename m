Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2A925C433EF
	for <linux-rockchip@archiver.kernel.org>; Wed,  4 May 2022 21:42:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=C7qkTBEDEybREjanJ2ImMexKRuLgZRnZzDptBR2OQps=; b=QWOb/atkAAITEG
	ROcPxEGcGI+tE5z4v/rwO+QQr7PeQOURzZHUCpUMdd465dm1ijMWpEiKfkgpFYu4wv2KRwXdf+4xP
	bac9N534h3SJVIyHwCWnRsYxntG69KsONAmuaRWQPmdAulWufuzB+KnE16ACctUFJQsgnKBBsQ1ZU
	Gfwd76X85ERnlrZXuBk4O1X2ftAl1AtuMHCrf6oJlbV+6Uw+B1GQk0MDzNfzwKrDjXmFUzgiPwW58
	uNHL1tI0fblfGRDavaYgYGMT3cLkrV7JLlygMBOnuYKGrJa4MuzrQOMyOuHmjAsf3VzRpwyrTO4Ww
	C2jYhBIucBOGOnN6Zyhg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nmMlV-00CuBH-W9; Wed, 04 May 2022 21:42:34 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nmMcZ-00Cp0q-R6; Wed, 04 May 2022 21:33:28 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1]) (Authenticated sender: sre)
 with ESMTPSA id D8CCD1F44D34
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
 s=mail; t=1651699981;
 bh=SKP5bPSoiDLZ/Tq8dAyc/MwLOEPGo7uNr4lhpDc4xjE=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=aCi87fdTHVgJoru23PUmt9PYls3EgMIkLf9GG9Rt9x4/QiJ6dPAfw89pQSs2PRcyK
 9lrWyz3m5d+NqYHKklufIaDAKW2klxvRiR/hSdikOVyYlVU04ser1h7CkUUR3mvn/+
 05F00kF+K/AdoieoPqDvkuw0kmlI5Tq5+yDRjzEgR7S1MAw9C7Q27yntgEEJSznxtl
 KtjT2Im/YbdCtbfuKrvuoVbNUMHL5I7q50nSG03zX6gvxLJzliZrstILxbcxGl36lj
 sJrhntN504TWTosmQ+dmmcVWI8Lh/4Q3Os8mnUc0/u7HAVpPoPerx/7J5UyKhAzNUG
 /oVFydGAplf0A==
Received: by jupiter.universe (Postfix, from userid 1000)
 id 62C884819DA; Wed,  4 May 2022 23:32:53 +0200 (CEST)
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
 kernel@collabora.com, Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 Sebastian Reichel <sebastian.reichel@collabora.com>
Subject: [PATCHv2 21/21] arm64: dts: rockchip: Add rk3588-evb1 board
Date: Wed,  4 May 2022 23:32:51 +0200
Message-Id: <20220504213251.264819-22-sebastian.reichel@collabora.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220504213251.264819-1-sebastian.reichel@collabora.com>
References: <20220504213251.264819-1-sebastian.reichel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220504_143320_086801_44C86F98 
X-CRM114-Status: GOOD (  16.21  )
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
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
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
index 000000000000..0bf2e4780b95
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
+	status = "okay";
+};
+
+&uart2 {
+	pinctrl-0 = <&uart2m0_xfer>;
+	status = "okay";
+};
-- 
2.35.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
