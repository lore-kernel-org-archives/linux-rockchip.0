Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D7DABC63703
	for <linux-rockchip@archiver.kernel.org>; Mon,  5 Dec 2022 17:24:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KElea3T/Hd6M5sx6+og2t4XJy2zIuBv/aVaY1QZCMQY=; b=RSmEPuG1c8cTT5
	nJiih85iNUW6Fsxi+KrfC0wjzWDnvg+WGmjtdqBcrTegWCLKvqflTryj8oUyszkUlSy5Ba6HwfIph
	zrZnKkuMV5UwXLCVDpOjO/mgBX9tGuc6WMfyLIanpa/u0WQP5RWrqWgokQ9SIwhYFbekSrBzBwXSk
	cdQXp5NoXuw/kXE2WK7Tb72EviG7kpAus96HE8n5HWtDqHVfGkVdSJfopeQJ+wkf3Obnx2W1CXLE7
	sD6NAqsZy2cJ4DRAx9WQ9RY+x0STXNhnatfOYrOBLf71voT+X1elLi8wGkChy6ZH/s6RgyA2QVyto
	PSLQV2AKNXCl4MhRfBbw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p2FCI-007NTI-0K; Mon, 05 Dec 2022 17:24:06 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p2FCE-007NOR-Vo
	for linux-rockchip@lists.infradead.org; Mon, 05 Dec 2022 17:24:04 +0000
Received: from jupiter.universe (dyndsl-091-096-035-193.ewe-ip-backbone.de [91.96.35.193])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: sre)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 90E366602BB1;
	Mon,  5 Dec 2022 17:23:57 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1670261037;
	bh=+GuZjlBKzrkBLuJavPgoFq0bQ8UXiVQqs/RNZG6hqhk=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=bQvOHYCwxixap/lQhjw/XCE1nwKue3EDWkmZvaPonTn2Mc70ED8ouzcGtBGMu8LoE
	 ZaCJmW7+FeZdl+6rn3b5uADvsvMBjxZSmHIZ4QAzjm7XSUwOr9irY24w4jipkqr7Rg
	 QyQ+aX+oVewCXhiem+u0k17scoaRcc3V3Sq4sU4P1bFA5B9m4Z+1jVMA0y/kKxkiKi
	 kZebEK7K6hZYvpCcPyUWKhxJ+GphkmbhzayjBIknn7u6CtDlsxseGipcyE8BJCWSaC
	 YetSQpZhXj+Um4VG+FHgAErkSsZnE8d5ER8vRdjJ9SlSTcpR+1G+NIp5Tp6exQxSA0
	 L+I9RO51sjipw==
Received: by jupiter.universe (Postfix, from userid 1000)
	id 7AE4248011E; Mon,  5 Dec 2022 18:23:52 +0100 (CET)
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
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	kernel@collabora.com,
	Michael Riesch <michael.riesch@wolfvision.net>
Subject: [PATCHv5 6/7] arm64: dts: rockchip: Add rock-5a board
Date: Mon,  5 Dec 2022 18:23:49 +0100
Message-Id: <20221205172350.75234-7-sebastian.reichel@collabora.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20221205172350.75234-1-sebastian.reichel@collabora.com>
References: <20221205172350.75234-1-sebastian.reichel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221205_092403_176683_0E5D401A 
X-CRM114-Status: GOOD (  13.59  )
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

Add board file for the RK3588s Rock 5A board. While the hardware
offers plenty of peripherals and connectivity this basic implementation
just handles things required to access eMMC, UART and Ethernet (i.e.
enough to successfully boot Linux).

Reviewed-by: Michael Riesch <michael.riesch@wolfvision.net>
Tested-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
 arch/arm64/boot/dts/rockchip/Makefile         |  1 +
 .../boot/dts/rockchip/rk3588s-rock-5a.dts     | 73 +++++++++++++++++++
 2 files changed, 74 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts

diff --git a/arch/arm64/boot/dts/rockchip/Makefile b/arch/arm64/boot/dts/rockchip/Makefile
index 12ed53de11eb..31fa55750a0f 100644
--- a/arch/arm64/boot/dts/rockchip/Makefile
+++ b/arch/arm64/boot/dts/rockchip/Makefile
@@ -73,3 +73,4 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3568-bpi-r2-pro.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3568-evb1-v10.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3568-rock-3a.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-evb1-v10.dtb
+dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588s-rock-5a.dtb
diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
new file mode 100644
index 000000000000..70db09230ec6
--- /dev/null
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
@@ -0,0 +1,73 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+
+/dts-v1/;
+
+#include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/pinctrl/rockchip.h>
+#include "rk3588s.dtsi"
+
+/ {
+	model = "Radxa Rock 5A Board";
+	compatible = "radxa,rock-5a", "rockchip,rk3588s";
+
+	aliases {
+		mmc1 = &sdhci;
+		serial2 = &uart2;
+	};
+
+	chosen {
+		stdout-path = "serial2:1500000n8";
+	};
+};
+
+&gmac1 {
+	clock_in_out = "output";
+	phy-handle = <&rgmii_phy1>;
+	phy-mode = "rgmii-rxid";
+	pinctrl-0 = <&gmac1_miim
+		     &gmac1_tx_bus2
+		     &gmac1_rx_bus2
+		     &gmac1_rgmii_clk
+		     &gmac1_rgmii_bus>;
+	pinctrl-names = "default";
+	tx_delay = <0x3a>;
+	status = "okay";
+};
+
+&mdio1 {
+	rgmii_phy1: ethernet-phy@1 {
+		/* RTL8211F */
+		compatible = "ethernet-phy-id001c.c916";
+		reg = <0x1>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&rtl8211f_rst>;
+		reset-assert-us = <20000>;
+		reset-deassert-us = <100000>;
+		reset-gpios = <&gpio3 RK_PB7 GPIO_ACTIVE_LOW>;
+	};
+};
+
+&pinctrl {
+	rtl8211f {
+		rtl8211f_rst: rtl8211f-rst {
+			rockchip,pins = <3 RK_PB7 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+
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
