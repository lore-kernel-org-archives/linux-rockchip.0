Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 96223C3ABBE
	for <linux-rockchip@archiver.kernel.org>; Thu,  8 May 2025 23:55:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uB1XoL7Lz6ng/WWoucAJGKl/njH74VnVnKljw/YkPrQ=; b=bcoixM0rAZW0bJ
	3iK6vl0tVDGpTFwAl6LcH21gBzOLzouletcg63BtMxg7mDWoY1zxo72QLQVtqSI9tARzP796XAy2g
	RMTawxG+hQXpT61SfI3nHsa44DV8ayy45Kg3+0XVGZzzMg8w0Mb+0PPqKIoJoAi/Z6DDOfdSMJM8r
	AzCt5uiGFHU8BNN3GMMmiBRbevsXSVi8uxTlv/nhgkwibWj8mQJOgp8CuHySszBpAO5WYSgQy2XdI
	jPVFunXSYpeBWinnzzt7LYiwQCEi1imI7KRrXL7Jn6ey0FKXRbV5pdW9RFggwplEEEK0e6XWX8B9g
	ZuOJBtyUdy6v582yk5Ug==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uDB5d-000000022oP-2Zsu;
	Thu, 08 May 2025 23:55:45 +0000
Received: from layka.disroot.org ([178.21.23.139])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uDAzv-000000021w4-3RLP;
	Thu, 08 May 2025 23:49:53 +0000
Received: from mail01.disroot.lan (localhost [127.0.0.1])
	by disroot.org (Postfix) with ESMTP id 33436260B4;
	Fri,  9 May 2025 01:49:50 +0200 (CEST)
X-Virus-Scanned: SPAM Filter at disroot.org
Received: from layka.disroot.org ([127.0.0.1])
 by localhost (disroot.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id VPESXp933hLo; Fri,  9 May 2025 01:49:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=disroot.org; s=mail;
	t=1746748189; bh=kijDMJqlKD9yOwTzumhm7hP9dmi1d/mq0EYroDcjheQ=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References;
	b=f1c0b3M7TFg29F5QhsevI49hCuPo4IrRvwmi8ks6DNd5Z/g60gSAXZ4rugDMUihhF
	 PzsKj+ojPPyp5hq/zLgn5WKV8GgJSItjZVs2oe+ghP54ne6GU0Xqaaq81bMqHGVi+o
	 PjA1vSGT6uvbfCIqDC8m4KkoAhRUAHHzAMZQMrUyES+bn7QomuB5ac16dAmBIMgxXV
	 YJw8se8qNqodYfORFxtgSB8rBxN5+Nn0ck04iuAWtykgHlgLFMZ3HaBubBb9jVPiQF
	 MEr3xEU9+9Q44CWW7MvAEfxSvQoQnwygerzELOC01ldEwSNOCal9i2ua7SNSfn7DD9
	 Qph50B6duksmQ==
From: Yao Zi <ziyao@disroot.org>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Jonas Karlman <jonas@kwiboo.se>,
	Yao Zi <ziyao@disroot.org>,
	Chukun Pan <amadeus@jmu.edu.cn>
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v6 2/2] arm64: dts: rockchip: Enable SD-card interface on Radxa E20C
Date: Thu,  8 May 2025 23:48:30 +0000
Message-ID: <20250508234829.27111-4-ziyao@disroot.org>
In-Reply-To: <20250508234829.27111-2-ziyao@disroot.org>
References: <20250508234829.27111-2-ziyao@disroot.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250508_164951_987963_D157A413 
X-CRM114-Status: UNSURE (   8.25  )
X-CRM114-Notice: Please train this message.
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

SD-card is available on Radxa E20C board.

Signed-off-by: Yao Zi <ziyao@disroot.org>
---
 .../boot/dts/rockchip/rk3528-radxa-e20c.dts   | 30 +++++++++++++++++++
 1 file changed, 30 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3528-radxa-e20c.dts b/arch/arm64/boot/dts/rockchip/rk3528-radxa-e20c.dts
index 0942baba6b8f..d45b6594b2de 100644
--- a/arch/arm64/boot/dts/rockchip/rk3528-radxa-e20c.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3528-radxa-e20c.dts
@@ -18,6 +18,7 @@ / {
 
 	aliases {
 		mmc0 = &sdhci;
+		mmc1 = &sdmmc;
 	};
 
 	chosen {
@@ -130,6 +131,18 @@ vcc5v0_sys: regulator-5v0-vcc-sys {
 		regulator-max-microvolt = <5000000>;
 	};
 
+	vccio_sd: regulator-vccio-sd {
+		compatible = "regulator-gpio";
+		gpios = <&gpio4 RK_PB6 GPIO_ACTIVE_HIGH>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&sdmmc_vol_ctrl_h>;
+		regulator-name = "vccio_sd";
+		regulator-min-microvolt = <1800000>;
+		regulator-max-microvolt = <3300000>;
+		states = <1800000 0x0>, <3300000 0x1>;
+		vin-supply = <&vcc5v0_sys>;
+	};
+
 	vdd_arm: regulator-vdd-arm {
 		compatible = "pwm-regulator";
 		pwms = <&pwm1 0 5000 PWM_POLARITY_INVERTED>;
@@ -205,6 +218,12 @@ wan_led_g: wan-led-g {
 			rockchip,pins = <4 RK_PC0 RK_FUNC_GPIO &pcfg_pull_none>;
 		};
 	};
+
+	sdmmc {
+		sdmmc_vol_ctrl_h: sdmmc-vol-ctrl-h {
+			rockchip,pins = <4 RK_PB6 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
 };
 
 &pwm1 {
@@ -235,6 +254,17 @@ &sdhci {
 	status = "okay";
 };
 
+&sdmmc {
+	bus-width = <4>;
+	cap-mmc-highspeed;
+	cap-sd-highspeed;
+	disable-wp;
+	sd-uhs-sdr104;
+	vmmc-supply = <&vcc_3v3>;
+	vqmmc-supply = <&vccio_sd>;
+	status = "okay";
+};
+
 &uart0 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&uart0m0_xfer>;
-- 
2.49.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
