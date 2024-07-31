Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C0431C3DA64
	for <linux-rockchip@archiver.kernel.org>; Wed, 31 Jul 2024 11:07:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DJS9Sx9HTGWGB8oyF5vvlLFG6MLChCwAbEAihis6L3k=; b=U3UkxUtS0VBVBF
	t84Gidg6Hg4ANSnNKZqDXU0eJWocJKOfWuYzE1qlEGp+4nl270reNje6QYokNnKijNfs21lNYh2De
	wIWkEKNYL+iF5hoLngqpG+92V1vxfxQN82Azb0AFgC5i8E6DpO7Nr7KdKSMUu5dC7sUPH6qG4KDuR
	x1bLo7BQI4gL5ZQz4ElxVD02wTi1gFTMb30ktd4WcJ5QwmSt74S5PlAqS5H3eptbNPs55+rwf9QYg
	E0oGxjJQGttEZHazV8Gd8dqz41pR2mCJ/u09MO9/WoZeIq4wFARj8+atZh6JkWHzGfdnpbrF3Xwg2
	7Cd4pe0EAZebDXNR8ljg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZ7Av-00000000q5T-3WDt;
	Wed, 31 Jul 2024 11:07:21 +0000
Received: from smtp-8fac.mail.infomaniak.ch ([2001:1600:4:17::8fac])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZ7A5-00000000pf3-02XY
	for linux-rockchip@lists.infradead.org;
	Wed, 31 Jul 2024 11:06:32 +0000
Received: from smtp-3-0000.mail.infomaniak.ch (smtp-3-0000.mail.infomaniak.ch [10.4.36.107])
	by smtp-3-3000.mail.infomaniak.ch (Postfix) with ESMTPS id 4WYq686GwNzVx2;
	Wed, 31 Jul 2024 13:06:24 +0200 (CEST)
Received: from unknown by smtp-3-0000.mail.infomaniak.ch (Postfix) with ESMTPA id 4WYq680w8hzTBq;
	Wed, 31 Jul 2024 13:06:24 +0200 (CEST)
From: Quentin Schulz <foss+kernel@0leil.net>
Date: Wed, 31 Jul 2024 13:05:29 +0200
Subject: [PATCH 2/2] arm64: dts: rockchip: override BIOS_DISABLE signal via
 GPIO hog on RK3399 Puma
MIME-Version: 1.0
Message-Id: <20240731-puma-emmc-6-v1-2-4e28eadf32d0@cherry.de>
References: <20240731-puma-emmc-6-v1-0-4e28eadf32d0@cherry.de>
In-Reply-To: <20240731-puma-emmc-6-v1-0-4e28eadf32d0@cherry.de>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 Judy Hsiao <judyhsiao@chromium.org>, 
 Brian Norris <briannorris@chromium.org>
Cc: stable@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 linux-kernel@vger.kernel.org, Quentin Schulz <quentin.schulz@cherry.de>, 
 foss+kernel@0leil.net
X-Mailer: b4 0.14.0
X-Infomaniak-Routing: alpha
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240731_040629_405068_99F762FC 
X-CRM114-Status: GOOD (  13.39  )
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

From: Quentin Schulz <quentin.schulz@cherry.de>

The Qseven BIOS_DISABLE signal on the RK3399-Q7 keeps the on-module eMMC
and SPI flash powered-down initially (in fact it keeps the reset signal
asserted). BIOS_DISABLE_OVERRIDE pin allows to override that signal so
that eMMC and SPI can be used regardless of the state of the signal.

Let's make this GPIO a hog so that it's reserved and locked in the
proper state.

At the same time, make sure the pin is reserved for the hog and cannot
be requested by another node.

Cc: stable@vger.kernel.org
Signed-off-by: Quentin Schulz <quentin.schulz@cherry.de>
---
 arch/arm64/boot/dts/rockchip/rk3399-puma.dtsi | 23 ++++++++++++++++++++++-
 1 file changed, 22 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-puma.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-puma.dtsi
index a782e614d9bba..d24444cdf54af 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-puma.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-puma.dtsi
@@ -154,6 +154,22 @@ bios-disable-hog {
 	};
 };
 
+&gpio3 {
+	/*
+	 * The Qseven BIOS_DISABLE signal on the RK3399-Q7 keeps the on-module
+	 * eMMC and SPI flash powered-down initially (in fact it keeps the
+	 * reset signal asserted). BIOS_DISABLE_OVERRIDE pin allows to override
+	 * that signal so that eMMC and SPI can be used regardless of the state
+	 * of the signal.
+	 */
+	bios-disable-override-hog {
+		gpios = <RK_PD5 GPIO_ACTIVE_LOW>;
+		gpio-hog;
+		line-name = "bios_disable_override";
+		output-high;
+	};
+};
+
 &gmac {
 	assigned-clocks = <&cru SCLK_RMII_SRC>;
 	assigned-clock-parents = <&clkin_gmac>;
@@ -458,9 +474,14 @@ &pcie_clkreqn_cpm {
 
 &pinctrl {
 	pinctrl-names = "default";
-	pinctrl-0 = <&q7_thermal_pin>;
+	pinctrl-0 = <&q7_thermal_pin &bios_disable_override_hog_pin>;
 
 	gpios {
+		bios_disable_override_hog_pin: bios-disable-override-hog-pin {
+			rockchip,pins =
+				<3 RK_PD5 RK_FUNC_GPIO &pcfg_pull_down>;
+		};
+
 		q7_thermal_pin: q7-thermal-pin {
 			rockchip,pins =
 				<0 RK_PA3 RK_FUNC_GPIO &pcfg_pull_up>;

-- 
2.45.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
