Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 94754C4332F
	for <linux-rockchip@archiver.kernel.org>; Mon,  5 Dec 2022 17:24:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ugl6rkxYDUkjbGCoymzntARFkcbVZgIc60sLpzgbp3w=; b=199ToJxeJ+DWWP
	4t9sRlfrqDhdrjHXz2nq/yGcLSMyYhgCzpG6LUXvOzunSHHXhPz1qfi+us99TCF8iPiqfmqzk3nQe
	o34p2c79I3BcOaLwBZmMJE3XTSkAna//q4j6Zuk2hGCSl3NkFjWq9d7hysFnV1fxL5HE67xlVwB9c
	E76hTiAInmMPZGvELcVoeUH1irKgcNpzZUQDqvoVkBVyw5Ub5hU+8t9fQnGLji2tme9nlBwzxjeZL
	ZUrYYe3NSqmaMGYsfgGscnctJnxdwkb3P0G8f5YhrRbXpFH8ChiutqVb9EhKEueDkwNv7aL36T4Dk
	oNbmIwKUN8lbZqNcMSgw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p2FCI-007NTU-DP; Mon, 05 Dec 2022 17:24:06 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p2FCF-007NOU-3b
	for linux-rockchip@lists.infradead.org; Mon, 05 Dec 2022 17:24:05 +0000
Received: from jupiter.universe (dyndsl-091-096-035-193.ewe-ip-backbone.de [91.96.35.193])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: sre)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 9685D6602BC8;
	Mon,  5 Dec 2022 17:23:57 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1670261037;
	bh=mkh8WBRP1m+u/63u1J3+/LjU8nIRgezDENO4/FpE+zA=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=N1MjL/DWtKulKzLu3zdRfAxm5cCMGgMLXC66UKiGQyjfT3GWDVG9eH0LUddzqxxzp
	 kheH5yvHbYwxmm48+fRj9+Mkn2u/mUU+WqIJwmhgNlrnvLbyyncLmsuvHqeOCCWrYp
	 FD5bY3Lm7JqdIX00mkvfPHz8lsgXnEUVlWUid1HncnNjxoM4oi8QxIRnhfQswq/xm3
	 fgZAboGCiJb/UwSAN+Sh86FK6UAbbcEuJFOUzTmVbDHgHxQz8JmyXloKO0/TRvpgSR
	 wNAGGI/mTHZBcwa5H2CgxTPWpSbJB/M32IO2TDBqrLQHl7mHioCZ9nxAhoRoc8Gc8n
	 kMfe7FNELaWHA==
Received: by jupiter.universe (Postfix, from userid 1000)
	id 7CEE1480121; Mon,  5 Dec 2022 18:23:52 +0100 (CET)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Linus Walleij <linus.walleij@linaro.org>,
	Christopher Obbard <chris.obbard@collabora.com>,
	Benjamin Gaignard <benjamin.gaignard@collabora.com>,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	kernel@collabora.com,
	Michael Riesch <michael.riesch@wolfvision.net>,
	Sebastian Reichel <sebastian.reichel@collabora.com>
Subject: [PATCHv5 7/7] arm64: dts: rockchip: Add rock-5b board
Date: Mon,  5 Dec 2022 18:23:50 +0100
Message-Id: <20221205172350.75234-8-sebastian.reichel@collabora.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20221205172350.75234-1-sebastian.reichel@collabora.com>
References: <20221205172350.75234-1-sebastian.reichel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221205_092403_336878_577AB84E 
X-CRM114-Status: GOOD (  14.17  )
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

From: Christopher Obbard <chris.obbard@collabora.com>

Add board file for the RK3588 Rock 5B board. This is a basic
implementation which just brings up the eMMC and UART which is
enough to successfully boot Linux.

The ethernet controller is connected via PCIe so support will
come in a follow-up patch.

Signed-off-by: Christopher Obbard <chris.obbard@collabora.com>
Reviewed-by: Michael Riesch <michael.riesch@wolfvision.net>
Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
 arch/arm64/boot/dts/rockchip/Makefile         |  1 +
 .../boot/dts/rockchip/rk3588-rock-5b.dts      | 44 +++++++++++++++++++
 2 files changed, 45 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts

diff --git a/arch/arm64/boot/dts/rockchip/Makefile b/arch/arm64/boot/dts/rockchip/Makefile
index 31fa55750a0f..b31aa1b0e9e3 100644
--- a/arch/arm64/boot/dts/rockchip/Makefile
+++ b/arch/arm64/boot/dts/rockchip/Makefile
@@ -73,4 +73,5 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3568-bpi-r2-pro.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3568-evb1-v10.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3568-rock-3a.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-evb1-v10.dtb
+dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-rock-5b.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588s-rock-5a.dtb
diff --git a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
new file mode 100644
index 000000000000..baf46bd30b38
--- /dev/null
+++ b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
@@ -0,0 +1,44 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+
+/dts-v1/;
+
+#include "rk3588.dtsi"
+
+/ {
+	model = "Radxa Rock 5B Board";
+	compatible = "radxa,rock-5b", "rockchip,rk3588";
+
+	aliases {
+		mmc1 = &sdhci;
+		serial2 = &uart2;
+	};
+
+	chosen {
+		stdout-path = "serial2:1500000n8";
+	};
+
+	vcc5v0_sys: vcc5v0-sys-regulator {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc5v0_sys";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
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
2.38.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
