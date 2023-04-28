Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6662CC77B7C
	for <linux-rockchip@archiver.kernel.org>; Fri, 28 Apr 2023 01:38:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2aO130w5TRe90rVNoNAMjvzHJFzMNFYPnpeqMoQUhvY=; b=y7ZgSPJfC8WoeV
	DCTiI8RGIrrcrW8nyTFiEJTIKXaoWjB8cFFhKBPef8E20gkQWqHY6oFDPHFaD70Dhc4M66ksm5rH7
	bpf2F1X9empijrschYaSYbnyoOv3aTsNo+w9YsPvpo5c/OpiCTv5S7YAMYRGgUgcX53/oD1+2mG50
	KaKXn9yB5deSTUhPHFV3aWsOaYUr+ANmIactbMln/H5JYdD6VQhJ+CkwRa+ljvyFJtgJSJnNm7uaX
	W7k+kViVfTsep5MbzUjcUoNsk3XTczQU6qfOjAZfKCMRkASQi/5M7F++JWC/gYb6S9ZzA8sCINOK4
	qKhGDh7M0O448RW7HcqA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1psD3c-007x9O-1b;
	Fri, 28 Apr 2023 01:37:56 +0000
Received: from mail-io1-xd33.google.com ([2607:f8b0:4864:20::d33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1psD3Q-007x5c-2A;
	Fri, 28 Apr 2023 01:37:46 +0000
Received: by mail-io1-xd33.google.com with SMTP id ca18e2360f4ac-763c3429a8cso136697539f.2;
        Thu, 27 Apr 2023 18:37:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1682645863; x=1685237863;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=IBlsfYRcfNCvWQm+tNlM6wnN1+cUZoVI21i6dB14UUE=;
        b=MotL70hKr90ykbBg8oHodTHXoM4EJ2G6IMYXZWjGJB1lAqFQ4aa/K0A961vMyzVh2I
         eb5dDQI9Gad47W/L91rsPEfgRS8nTX0/YhvLyDK/BSOMq8oL81AUzegjq022WxLdN47i
         WWen+4wISTrVo/slIO6JbmdvRaeNxRM7Xv206xJylkyuDHi+hQgBFTsxkWgPpyK2zY/j
         chjhckUUJxJzeTsy19tuqoijD39+gfRZVFdtSwiMZIJkiJK4gW5fLa4pZQwYMLt9l6AE
         usRluVJ883ZUxgLob4RXSNPeUUNLH/OyVFHuXsWXEg/6nlW3M7CG45Q5ImI7yMgy1DM9
         uZtA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682645863; x=1685237863;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=IBlsfYRcfNCvWQm+tNlM6wnN1+cUZoVI21i6dB14UUE=;
        b=ZVIUfN+IHsoMHRNifBDnY9Asaaf9xCLSgJcgnk1p4t2jQHgLZ5qFxtLegUiMbDt1Q9
         pnfD0875BoMhXT7Eg/EWa9glCuoYmXW1XTaEr/En6QuKP/DqUW8JC7UcZaORpwxuFf6V
         Up/EtU044HojZ3pm87AoV2UtXFNvmXxb8g3qjFXUBXChumuLqQb5E9/I1w9FHYFCRjxj
         4Ykvk9ga4qEaSx30hvpLhmkCR2dUW2sLtRi2MLmn8nXJ47NLOBT6z87LewKLfG3YiC63
         Lh1OJYUrANcpFsgtGNXqYroFkcQr7VzOyf4YZMhFjczhpfp4qk/lDOawTkZBl++VLMYL
         JGjw==
X-Gm-Message-State: AC+VfDxnxJynWvNmS2b8qBfXj2p/5tbYmut8DZwj10gP4vcG4iNWSTB1
	W4PEm7fiav2vtYvI7sZYAZA=
X-Google-Smtp-Source: ACHHUZ5u7VlPx/XZmTgZQbmfDHVl7L+ewhW4oh7ro3S2whHoS7DrPFlvIQ1cS79h18FTkvFG6KIqKA==
X-Received: by 2002:a5d:9a11:0:b0:764:1ed4:8889 with SMTP id s17-20020a5d9a11000000b007641ed48889mr2531981iol.11.1682645863308;
        Thu, 27 Apr 2023 18:37:43 -0700 (PDT)
Received: from localhost.localdomain (tunnel785484-pt.tunnel.tserv9.chi1.ipv6.he.net. [2001:470:1f10:aed::2])
        by smtp.googlemail.com with ESMTPSA id u11-20020a02230b000000b00411a1373aa5sm4985431jau.155.2023.04.27.18.37.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 27 Apr 2023 18:37:42 -0700 (PDT)
From: Tianling Shen <cnsztl@gmail.com>
To: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Jagan Teki <jagan@amarulasolutions.com>,
	Tianling Shen <cnsztl@gmail.com>,
	Peter Geis <pgwipeout@gmail.com>,
	Andy Yan <andyshrk@163.com>,
	Chris Morgan <macromorgan@hotmail.com>,
	Brian Norris <briannorris@chromium.org>,
	Andrew Lunn <andrew@lunn.ch>,
	Shawn Guo <shawnguo@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	Maya Matuszczyk <maccraft123mc@gmail.com>,
	Michael Riesch <michael.riesch@wolfvision.net>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Vasily Khoruzhick <anarsoul@gmail.com>
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 3/3] arm64: dts: rockchip: Add Lunzn Fastrhino R68S
Date: Fri, 28 Apr 2023 09:37:38 +0800
Message-Id: <20230428013738.30735-3-cnsztl@gmail.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230428013738.30735-1-cnsztl@gmail.com>
References: <20230428013738.30735-1-cnsztl@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230427_183744_719758_DAB482F2 
X-CRM114-Status: GOOD (  15.36  )
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

It's similar to Fastrhino R66S with the following changes:
+ 2/4GB LPDDR4 RAM
+ 2x 1000 Base-T (native, RTL8211f)
+ ADC button
+ 16GB eMMC on-board
- No SD card slot

Signed-off-by: Tianling Shen <cnsztl@gmail.com>
---
 arch/arm64/boot/dts/rockchip/Makefile         |   1 +
 .../dts/rockchip/rk3568-fastrhino-r68s.dts    | 112 ++++++++++++++++++
 2 files changed, 113 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3568-fastrhino-r68s.dts

diff --git a/arch/arm64/boot/dts/rockchip/Makefile b/arch/arm64/boot/dts/rockchip/Makefile
index 15089a78555a..1cf105d7407f 100644
--- a/arch/arm64/boot/dts/rockchip/Makefile
+++ b/arch/arm64/boot/dts/rockchip/Makefile
@@ -86,6 +86,7 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-lubancat-1.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3568-bpi-r2-pro.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3568-evb1-v10.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3568-fastrhino-r66s.dtb
+dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3568-fastrhino-r68s.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3568-lubancat-2.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3568-nanopi-r5c.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3568-nanopi-r5s.dtb
diff --git a/arch/arm64/boot/dts/rockchip/rk3568-fastrhino-r68s.dts b/arch/arm64/boot/dts/rockchip/rk3568-fastrhino-r68s.dts
new file mode 100644
index 000000000000..6e972796f691
--- /dev/null
+++ b/arch/arm64/boot/dts/rockchip/rk3568-fastrhino-r68s.dts
@@ -0,0 +1,112 @@
+// SPDX-License-Identifier: GPL-2.0-or-later OR MIT
+
+#include "rk3568-fastrhino-r66s.dtsi"
+
+/ {
+	model = "Lunzn FastRhino R68S";
+	compatible = "lunzn,fastrhino-r68s", "rockchip,rk3568";
+
+	aliases {
+		ethernet0 = &gmac0;
+		ethernet1 = &gmac1;
+		mmc0 = &sdhci;
+	};
+
+	adc-keys {
+		compatible = "adc-keys";
+		io-channels = <&saradc 0>;
+		io-channel-names = "buttons";
+		keyup-threshold-microvolt = <1800000>;
+
+		button-recovery {
+			label = "Recovery";
+			linux,code = <KEY_VENDOR>;
+			press-threshold-microvolt = <1750>;
+		};
+	};
+};
+
+&gmac0 {
+	assigned-clocks = <&cru SCLK_GMAC0_RX_TX>, <&cru SCLK_GMAC0>;
+	assigned-clock-parents = <&cru SCLK_GMAC0_RGMII_SPEED>;
+	assigned-clock-rates = <0>, <125000000>;
+	clock_in_out = "output";
+	phy-handle = <&rgmii_phy0>;
+	phy-mode = "rgmii-id";
+	pinctrl-names = "default";
+	pinctrl-0 = <&gmac0_miim
+		     &gmac0_tx_bus2
+		     &gmac0_rx_bus2
+		     &gmac0_rgmii_clk
+		     &gmac0_rgmii_bus>;
+	snps,reset-gpio = <&gpio0 RK_PB0 GPIO_ACTIVE_LOW>;
+	snps,reset-active-low;
+	/* Reset time is 15ms, 50ms for rtl8211f */
+	snps,reset-delays-us = <0 15000 50000>;
+	tx_delay = <0x3c>;
+	rx_delay = <0x2f>;
+	status = "okay";
+};
+
+&gmac1 {
+	assigned-clocks = <&cru SCLK_GMAC1_RX_TX>, <&cru SCLK_GMAC1>;
+	assigned-clock-parents = <&cru SCLK_GMAC1_RGMII_SPEED>;
+	assigned-clock-rates = <0>, <125000000>;
+	clock_in_out = "output";
+	phy-handle = <&rgmii_phy1>;
+	phy-mode = "rgmii-id";
+	pinctrl-names = "default";
+	pinctrl-0 = <&gmac1m1_miim
+		     &gmac1m1_tx_bus2
+		     &gmac1m1_rx_bus2
+		     &gmac1m1_rgmii_clk
+		     &gmac1m1_rgmii_bus>;
+	snps,reset-gpio = <&gpio0 RK_PB1 GPIO_ACTIVE_LOW>;
+	snps,reset-active-low;
+	/* Reset time is 15ms, 50ms for rtl8211f */
+	snps,reset-delays-us = <0 15000 50000>;
+	tx_delay = <0x4f>;
+	rx_delay = <0x26>;
+	status = "okay";
+};
+
+&mdio0 {
+	rgmii_phy0: ethernet-phy@0 {
+		compatible = "ethernet-phy-ieee802.3-c22";
+		reg = <0>;
+		pinctrl-0 = <&eth_phy0_reset_pin>;
+		pinctrl-names = "default";
+	};
+};
+
+&mdio1 {
+	rgmii_phy1: ethernet-phy@0 {
+		compatible = "ethernet-phy-ieee802.3-c22";
+		reg = <0>;
+		pinctrl-0 = <&eth_phy1_reset_pin>;
+		pinctrl-names = "default";
+	};
+};
+
+&pinctrl {
+	gmac0 {
+		eth_phy0_reset_pin: eth-phy0-reset-pin {
+			rockchip,pins = <1 RK_PB0 RK_FUNC_GPIO &pcfg_pull_down>;
+		};
+	};
+
+	gmac1 {
+		eth_phy1_reset_pin: eth-phy1-reset-pin {
+			rockchip,pins = <1 RK_PB1 RK_FUNC_GPIO &pcfg_pull_down>;
+		};
+	};
+};
+
+&sdhci {
+	bus-width = <8>;
+	max-frequency = <200000000>;
+	non-removable;
+	pinctrl-names = "default";
+	pinctrl-0 = <&emmc_bus8 &emmc_clk &emmc_cmd &emmc_datastrobe>;
+	status = "okay";
+};
-- 
2.40.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
