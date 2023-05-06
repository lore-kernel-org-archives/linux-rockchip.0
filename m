Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 96DE9C77B75
	for <linux-rockchip@archiver.kernel.org>; Sat,  6 May 2023 06:11:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=90xwCK7pv5c1YNckwbj/ScFLbr9mUvao8JD0l5pjyPY=; b=g0JJs+00OWGLQN
	d4Xd71B+yEUE359Iac/Enfibpl1BV9aTWmH84Rgu4R+yMOapsVngbLUV0QxV7O3OeG2G+KPs6cERm
	rZ5ooTyzeiHhgmg7dYQ1HGxshk5FMtArSm1GbKcbOtDxpfoglOfpdZTCwZ/bn5Vdh5sWIvASIPVaL
	HtWZZOoPhZ4jX1FzUFw/3o7APOX8Tq74qhNOUH7du12wKwlklK9Jz21QpGFVzFiXCIwTNl6orqnfC
	OEYKAJZ7zQKNUkhGftaEaIaNeMfht5LtiotFSb9bByYF26K1JmvWtH3UumvJMaDsefJ5RGYwvnNgu
	OeTv3hFMZEu73WNyqPZg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pvB8e-00Cdu3-2V;
	Sat, 06 May 2023 06:11:24 +0000
Received: from mail-il1-x12c.google.com ([2607:f8b0:4864:20::12c])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pvB8b-00CdqY-0J;
	Sat, 06 May 2023 06:11:22 +0000
Received: by mail-il1-x12c.google.com with SMTP id e9e14a558f8ab-3314ddef780so6435165ab.2;
        Fri, 05 May 2023 23:11:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1683353474; x=1685945474;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=FeOh/jbw7iDiPTNUt32wL663Pm37i/7RVXxftZBbGlQ=;
        b=MxfpDO0DEBvt9ZnisBSuQQHSrg6OgJiYroiATFpEeTjdjIjsy37kHKhjcA8YGsnQk0
         gV5xqrEf9AVyz5a/NhryQBrhP+FSEvtg7hHLI6bUSi8RSltdFRyniABrgYNN+4BcGHpd
         8Qpj8+9o4UdnKESUYjGTeFHH35tD0BGSRv/QEIh2GhqSkdHcCjHdPxPnDNNNizasotEP
         /h9hlD/fzcZg+/me2GOC/d2LxNMC4nr7FJBXG37/hwxX2P/zWoH0eiuNtZ4Z51jFg6Hr
         QMMB4Ocvw/loctmsD4mlXLFKxvCdx1f1nHAl3bhzox/FcEfVc1bwy9DZTx1swhvijR22
         Rgug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683353474; x=1685945474;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=FeOh/jbw7iDiPTNUt32wL663Pm37i/7RVXxftZBbGlQ=;
        b=I9TzpcaS/UA5sqZiH4ADq2tYgK4gZAruBL5tYwKBNUn8PnTOh78gfztflkQFF/JQny
         KaEy5qzPAX39BqaJ9US5iYBavocbl8S00Hih+0geDyfykr51yK6eckbO+QL/n+TZoP/z
         EJdncOIeR4kfoWRTC5zjESH4g2wiUdBSi9DRRQIPLYxWre99qOQtaX3pQcGMknEaG3fW
         UIs0HmHLcQ7xMUiHcdcf5QbaN1aybHXUfDsCKYM1tQ7pkPNIlfY4qfxTFLEzIScB9BJZ
         Hsl+RDIloFFWadr2kwryQ9/2FQwFSMYVkHMhzyrxOLmgJH7T6NNbCHMNuZQ7VOjjGttn
         uE4Q==
X-Gm-Message-State: AC+VfDw7IND9vyizyA4uXyrMJ/7aL7qQJ0yu3SWEgXbS4JUWLU72xHdL
	YaORoSXfQHAk6NY6QD/+Uos=
X-Google-Smtp-Source: ACHHUZ5Kt4gUCn4HovMuT78+lcZfuPQPI3cBXbSG3OUgEbXKAcvviV1euPj3XUcoGTrE0bSV4xPeMQ==
X-Received: by 2002:a92:d452:0:b0:32b:50d1:3403 with SMTP id r18-20020a92d452000000b0032b50d13403mr2447113ilm.7.1683353474371;
        Fri, 05 May 2023 23:11:14 -0700 (PDT)
Received: from localhost.localdomain (tunnel785484-pt.tunnel.tserv9.chi1.ipv6.he.net. [2001:470:1f10:aed::2])
        by smtp.googlemail.com with ESMTPSA id b16-20020a92c850000000b0032e28db67dcsm413047ilq.84.2023.05.05.23.11.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 05 May 2023 23:11:13 -0700 (PDT)
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
Subject: [PATCH v2 3/3] arm64: dts: rockchip: Add Lunzn Fastrhino R68S
Date: Sat,  6 May 2023 14:11:08 +0800
Message-Id: <20230506061108.17658-3-cnsztl@gmail.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230506061108.17658-1-cnsztl@gmail.com>
References: <20230506061108.17658-1-cnsztl@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230505_231121_140648_C4EC3402 
X-CRM114-Status: GOOD (  15.51  )
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

Changes in v2:
* Fixed gmac pull type: pcfg_pull_down -> pcfg_pull_up

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
index 000000000000..e1fe5e442689
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
+			rockchip,pins = <1 RK_PB0 RK_FUNC_GPIO &pcfg_pull_up>;
+		};
+	};
+
+	gmac1 {
+		eth_phy1_reset_pin: eth-phy1-reset-pin {
+			rockchip,pins = <1 RK_PB1 RK_FUNC_GPIO &pcfg_pull_up>;
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
