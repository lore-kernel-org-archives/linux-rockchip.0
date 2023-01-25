Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9663FC27C76
	for <linux-rockchip@archiver.kernel.org>; Wed, 25 Jan 2023 16:11:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=o4Z6TKbeVufoaB7K4id7NejeX0gERDH/9ZSuoal9kTI=; b=k9sFQz2E7eWgi1
	75Xts5rrVhptRZe93hIVA9+lyMk0fKqagu0Xhif0WGVnvr+Hj2oODOl+hCDYjtwau5ZfM8uJcVttU
	ngdKwGUsfs4mZVV5+Xr/AhAQk4G9tk9R2RVeztzcLS6j5rvJ77WRadeUuggpkIRZOPpXgoryCxTo3
	1BEfTBS1pgKhAHqFhzPhZ9PWPwQr8E3tCfKujrDNQZA13Ne8s2pCy5jf++QYea0j6HVtP9wHc19bt
	kk+TthbIuAnhPwnhC54Q8UAKzITYxIPMo8TLWLcRszcfnqjRfYSQPbXbFABRYlleReXw8siy9S5dH
	qmeN3zl2QZplyUdBuH2w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pKiMG-007uuN-6t; Wed, 25 Jan 2023 16:10:44 +0000
Received: from mail-pj1-x1032.google.com ([2607:f8b0:4864:20::1032])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pKiM4-007urH-Qc
	for linux-rockchip@lists.infradead.org; Wed, 25 Jan 2023 16:10:35 +0000
Received: by mail-pj1-x1032.google.com with SMTP id b10so19041937pjo.1
        for <linux-rockchip@lists.infradead.org>; Wed, 25 Jan 2023 08:10:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=stSWpw8TUYjnXGpZEjiWEmn4szU9a8OizCIboNZhV04=;
        b=aTkxaiAsF5fkrYH8+9HyksKu877tIYcuOSBTrL3prk1kEQ1eZZMwvqsxZYt9f72Ro2
         KrTEPr7hvMXqckVEwAxAJivJOEI+63xrPx6KomJMGp3J1u5wmn51K06+TN+5ACX6eU9f
         jLPcpjy8PdK8FNmsfGFcUQwjmaZSF0q7n/qt8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=stSWpw8TUYjnXGpZEjiWEmn4szU9a8OizCIboNZhV04=;
        b=asU+bVgfVEwejIcoJMCu9qohgDHRQ6EPGUse3wQYhClz0iy7Ws6LmIgyL1UiA7VGsB
         L3TkQRUWmMJXOhK3kM0iWyK0sHmJrKP29u4WVbvJVTUKNREV74PrUvgfcVhSY4AKEt+C
         yf91NljAhx5e8DHqWLbI9l31XiJV/2MAackh/X9tvTk4qO3TcesnUfGpFa5lcAzRcQVX
         WY1dC7LIiiWUnisKBTh1YJJlDHOO3B00hG9iclaDZERlJUIETQoXGBcwCxyITGyAOY42
         PJnHSR2BWZHM1hNiSXlVGWpBo6WPHAxyEP72+GHn+TIcV9TMg+MQTUijxlqMrGAM0MR8
         w9bw==
X-Gm-Message-State: AFqh2kpD3yHNUgrpdb7m8Lw8i2Rowd0cbfqhkx1QCbC90Jh2GkkkAA62
	/A52QVHvUn3gTnL5GOBg0PX8QQ==
X-Google-Smtp-Source: AMrXdXvP/zwB7h3HdIwW3NhfX//yk279ulFteXpkPz7QTebWQ0/74xOm7OiR1WdhQNIuHJcuC5aXUg==
X-Received: by 2002:a05:6a20:cb41:b0:b5:951b:e339 with SMTP id hd1-20020a056a20cb4100b000b5951be339mr30213436pzb.21.1674663029881;
        Wed, 25 Jan 2023 08:10:29 -0800 (PST)
Received: from localhost.localdomain ([2405:201:c00a:a238:3cb1:2156:ef87:8af5])
        by smtp.gmail.com with ESMTPSA id n29-20020a638f1d000000b004dadeb4decasm14929pgd.53.2023.01.25.08.10.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Jan 2023 08:10:29 -0800 (PST)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	Manoj Sai <abbaraju.manojsai@amarulasolutions.com>
Subject: [PATCH 1/2] arm64: dts: rockchip: Enable Ethernet for Radxa CM3 IO
Date: Wed, 25 Jan 2023 21:40:22 +0530
Message-Id: <20230125161023.12115-1-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230125_081032_912428_E1D6B267 
X-CRM114-Status: GOOD (  10.85  )
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

From: Manoj Sai <abbaraju.manojsai@amarulasolutions.com>

Add ethernet nodes for enabling gmac1 on the Radxa CM3 IO board.

Signed-off-by: Manoj Sai <abbaraju.manojsai@amarulasolutions.com>
---
 .../boot/dts/rockchip/rk3566-radxa-cm3-io.dts | 93 +++++++++++++++++++
 1 file changed, 93 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3566-radxa-cm3-io.dts b/arch/arm64/boot/dts/rockchip/rk3566-radxa-cm3-io.dts
index 3e6578f27ec0..170af01371ff 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-radxa-cm3-io.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3566-radxa-cm3-io.dts
@@ -21,6 +21,13 @@ chosen: chosen {
 		stdout-path = "serial2:1500000n8";
 	};
 
+	gmac1_clkin: external-gmac1-clock {
+		compatible = "fixed-clock";
+		clock-frequency = <125000000>;
+		clock-output-names = "gmac1_clkin";
+		#clock-cells = <0>;
+	};
+
 	hdmi-con {
 		compatible = "hdmi-connector";
 		type = "a";
@@ -83,6 +90,29 @@ &combphy1 {
 	status = "okay";
 };
 
+&gmac1 {
+	assigned-clocks = <&cru SCLK_GMAC1_RX_TX>, <&cru SCLK_GMAC1>;
+	assigned-clock-parents = <&cru SCLK_GMAC1_RGMII_SPEED>, <&gmac1_clkin>;
+	assigned-clock-rates = <0>, <125000000>;
+	clock_in_out = "input";
+	phy-handle = <&rgmii_phy1>;
+	phy-mode = "rgmii";
+	pinctrl-names = "default";
+	pinctrl-0 = <&gmac1m0_miim
+		     &gmac1m0_tx_bus2
+		     &gmac1m0_rx_bus2
+		     &gmac1m0_rgmii_clk
+		     &gmac1m0_rgmii_bus
+		     &gmac1m0_clkinout>;
+	snps,reset-gpio = <&gpio4 RK_PC2 GPIO_ACTIVE_LOW>;
+	snps,reset-active-low;
+	/* Reset time is 20ms, 100ms for rtl8211f */
+	snps,reset-delays-us = <0 20000 100000>;
+	tx_delay = <0x46>;
+	rx_delay = <0x2e>;
+	status = "okay";
+};
+
 &hdmi {
 	avdd-0v9-supply = <&vdda0v9_image>;
 	avdd-1v8-supply = <&vcca1v8_image>;
@@ -105,7 +135,70 @@ &hdmi_sound {
 	status = "okay";
 };
 
+&mdio1 {
+	rgmii_phy1: ethernet-phy@0 {
+		compatible="ethernet-phy-ieee802.3-c22";
+		reg= <0x0>;
+	};
+};
+
 &pinctrl {
+	gmac1 {
+		gmac1m0_miim: gmac1m0-miim {
+			rockchip,pins =
+				/* gmac1_mdcm0 */
+				<3 RK_PC4 3 &pcfg_pull_none_drv_level_15>,
+				/* gmac1_mdiom0 */
+				<3 RK_PC5 3 &pcfg_pull_none_drv_level_15>;
+		};
+
+		gmac1m0_rx_bus2: gmac1m0-rx-bus2 {
+			rockchip,pins =
+				/* gmac1_rxd0m0 */
+				<3 RK_PB1 3 &pcfg_pull_none_drv_level_15>,
+				/* gmac1_rxd1m0 */
+				<3 RK_PB2 3 &pcfg_pull_none_drv_level_15>,
+				/* gmac1_rxdvcrsm0 */
+				<3 RK_PB3 3 &pcfg_pull_none_drv_level_15>;
+		};
+
+		gmac1m0_tx_bus2: gmac1m0-tx-bus2 {
+			rockchip,pins =
+				/* gmac1_txd0m0 */
+				<3 RK_PB5 3 &pcfg_pull_none_drv_level_15>,
+				/* gmac1_txd1m0 */
+				<3 RK_PB6 3 &pcfg_pull_none_drv_level_15>,
+				/* gmac1_txenm0 */
+				<3 RK_PB7 3 &pcfg_pull_none_drv_level_15>;
+		};
+
+		gmac1m0_rgmii_clk: gmac1m0-rgmii-clk {
+			rockchip,pins =
+				/* gmac1_rxclkm0 */
+				<3 RK_PA7 3 &pcfg_pull_none_drv_level_15>,
+				/* gmac1_txclkm0 */
+				<3 RK_PA6 3 &pcfg_pull_none_drv_level_15>;
+		};
+
+		gmac1m0_rgmii_bus: gmac1m0-rgmii-bus {
+			rockchip,pins =
+				/* gmac1_rxd2m0 */
+				<3 RK_PA4 3 &pcfg_pull_none_drv_level_15>,
+				/* gmac1_rxd3m0 */
+				<3 RK_PA5 3 &pcfg_pull_none_drv_level_15>,
+				/* gmac1_txd2m0 */
+				<3 RK_PA2 3 &pcfg_pull_none_drv_level_15>,
+				/* gmac1_txd3m0 */
+				<3 RK_PA3 3 &pcfg_pull_none_drv_level_15>;
+		};
+
+		gmac1m0_clkinout: gmac1m0-clkinout {
+			rockchip,pins =
+				/* gmac1_mclkinoutm0 */
+				<3 RK_PC0 3 &pcfg_pull_none_drv_level_15>;
+		};
+	};
+
 	leds {
 		pi_nled_activity: pi-nled-activity {
 			rockchip,pins = <4 RK_PA4 RK_FUNC_GPIO &pcfg_pull_none>;
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
