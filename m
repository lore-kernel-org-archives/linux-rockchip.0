Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 44CE8C54E4A
	for <linux-rockchip@archiver.kernel.org>; Fri,  8 Mar 2024 15:46:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=s/9MBbE8+cUQiEy6p+ZhRWa45llCeRIiIXO2BFlObls=; b=B9Clrt/92fybgz
	xCTQODS+i6ldgfrMaTmaZEf1O8bw4Ibnz3de/B2tOMh2b7O7t690VMwTvI9v+XKIwlS4DyvpXwfqN
	glCHgo4Z4NzFd+jutCxezTJ84AxMKKWSmpfE8zRcpyCp9U5b2N861Xl7+a83uPo+Agd7D1QtbBVc6
	8B20554V1xkcKuf1At7wVlq6cgvKEE1NLJiXD8MoXW6M70cTWh4LeHO2FVEiYMG8/tCjhGl3QPMiY
	D4rrxbR+IwuTghk3tJZqNr+mJ4W80h2jofAEf97AJwM1DMNXHbcEkAUwNvn0VwJDKo/j6J6v7S6ZO
	k80FcpoOopK1i8PUSnpg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ricQf-00000009xq3-0t3b;
	Fri, 08 Mar 2024 15:46:37 +0000
Received: from smtp-190f.mail.infomaniak.ch ([185.125.25.15])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ricQX-00000009xk4-1LXX
	for linux-rockchip@lists.infradead.org;
	Fri, 08 Mar 2024 15:46:31 +0000
Received: from smtp-3-0000.mail.infomaniak.ch (smtp-3-0000.mail.infomaniak.ch [10.4.36.107])
	by smtp-4-3000.mail.infomaniak.ch (Postfix) with ESMTPS id 4TrrBB2DqHz14Qt;
	Fri,  8 Mar 2024 16:46:26 +0100 (CET)
Received: from unknown by smtp-3-0000.mail.infomaniak.ch (Postfix) with ESMTPA id 4TrrB9553Rzr7;
	Fri,  8 Mar 2024 16:46:25 +0100 (CET)
From: Quentin Schulz <foss+kernel@0leil.net>
Date: Fri, 08 Mar 2024 16:46:09 +0100
Subject: [PATCH v2 3/3] arm64: dts: rockchip: add regulators for PCIe on
 RK3399 Puma Haikou
MIME-Version: 1.0
Message-Id: <20240308-puma-diode-pu-v2-3-309f83da110a@theobroma-systems.com>
References: <20240308-puma-diode-pu-v2-0-309f83da110a@theobroma-systems.com>
In-Reply-To: <20240308-puma-diode-pu-v2-0-309f83da110a@theobroma-systems.com>
To: Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: Klaus Goger <klaus.goger@theobroma-systems.com>, 
 Quentin Schulz <foss+kernel@0leil.net>, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 linux-kernel@vger.kernel.org, 
 Quentin Schulz <quentin.schulz@theobroma-systems.com>, 
 Dragan Simic <dsimic@manjaro.org>
X-Mailer: b4 0.13.0
X-Infomaniak-Routing: alpha
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240308_074629_524438_8FAFEEF7 
X-CRM114-Status: UNSURE (   9.48  )
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

From: Quentin Schulz <quentin.schulz@theobroma-systems.com>

The PCIe PHY requires two regulators and are present on the SoM
directly, while the PCIe connector also exposes 3V3 and 12V power rails
which are available on the baseboard.

Considering that 3/4 regulators are always-on on HW level and that the
last one depends on a regulator from the PMIC that is specified as
always on, this commit should be purely cosmetic and no change in
behavior is expected.

Let's add all regulators for PCIe on RK3399 Puma Haikou.

Reviewed-by: Dragan Simic <dsimic@manjaro.org>
Signed-off-by: Quentin Schulz <quentin.schulz@theobroma-systems.com>
---
 .../arm64/boot/dts/rockchip/rk3399-puma-haikou.dts |  2 ++
 arch/arm64/boot/dts/rockchip/rk3399-puma.dtsi      | 26 ++++++++++++++++++++++
 2 files changed, 28 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-puma-haikou.dts b/arch/arm64/boot/dts/rockchip/rk3399-puma-haikou.dts
index 18a98c4648eae..66ebb148bbc9a 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-puma-haikou.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-puma-haikou.dts
@@ -194,6 +194,8 @@ &pcie0 {
 	num-lanes = <4>;
 	pinctrl-names = "default";
 	pinctrl-0 = <&pcie_clkreqn_cpm>;
+	vpcie3v3-supply = <&vcc3v3_baseboard>;
+	vpcie12v-supply = <&dc_12v>;
 	status = "okay";
 };
 
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-puma.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-puma.dtsi
index 2484ad2bd86fc..ccbe3a7a1d2c2 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-puma.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-puma.dtsi
@@ -79,6 +79,26 @@ vcc5v0_sys: vcc5v0-sys {
 		regulator-max-microvolt = <5000000>;
 	};
 
+	vcca_0v9: vcca-0v9-regulator {
+		compatible = "regulator-fixed";
+		regulator-name = "vcca_0v9";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <900000>;
+		regulator-max-microvolt = <900000>;
+		vin-supply = <&vcc_1v8>;
+	};
+
+	vcca_1v8: vcca-1v8-regulator {
+		compatible = "regulator-fixed";
+		regulator-name = "vcca_1v8";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <1800000>;
+		regulator-max-microvolt = <1800000>;
+		vin-supply = <&vcc3v3_sys>;
+	};
+
 	vdd_log: vdd-log {
 		compatible = "pwm-regulator";
 		pwms = <&pwm2 0 25000 1>;
@@ -416,6 +436,12 @@ &io_domains {
 	gpio1830-supply = <&vcc_1v8>;
 };
 
+&pcie0 {
+	/* PCIe PHY supplies */
+	vpcie0v9-supply = <&vcca_0v9>;
+	vpcie1v8-supply = <&vcca_1v8>;
+};
+
 &pcie_clkreqn_cpm {
 	rockchip,pins =
 		<2 RK_PD2 RK_FUNC_GPIO &pcfg_pull_up>;

-- 
2.44.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
