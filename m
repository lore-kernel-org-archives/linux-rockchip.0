Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3E407C54E41
	for <linux-rockchip@archiver.kernel.org>; Fri,  8 Mar 2024 12:52:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fsyemcjm3u8n5xGAKKCc/hGWMARQVPhmgZR61VV5b0M=; b=QUgsvWFuSJZJf/
	UdjsQoDkDk1eRGbEcORFRhOLZkRoIUUR3LTRLmEjADYzzs+AK253HMBls4/cJWDxs7YZxq0j7VgDq
	pHy2rjpjfawjQepdNjKM6qAUai/5cSH/RI5O1cArMk8aM0unaE/ZpH0HkPiGFmYxSpyUfVDWpsV88
	yJir1mBCsEOvf8pQ8X4D8SoGmnIcSq1fnS6RBoyIZYZ7MxWh6xYGxP3xntca1+nqZiQrKukzEC694
	tu9A7UBpKXkPy5jyXasYnX6KX3JB5pboVJNlztrpM1/zfvqvUr2YBgd9WlXt2dJ2OAvxAAc4WKw5v
	iFFYFwB/oWfJE/U4nS9A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1riZiC-00000009BcG-0c4E;
	Fri, 08 Mar 2024 12:52:32 +0000
Received: from smtp-42af.mail.infomaniak.ch ([2001:1600:7:10::42af])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1riZi1-00000009BXA-2VCj
	for linux-rockchip@lists.infradead.org;
	Fri, 08 Mar 2024 12:52:24 +0000
Received: from smtp-3-0001.mail.infomaniak.ch (smtp-3-0001.mail.infomaniak.ch [10.4.36.108])
	by smtp-4-3000.mail.infomaniak.ch (Postfix) with ESMTPS id 4TrmKF3HfCztpY;
	Fri,  8 Mar 2024 13:52:17 +0100 (CET)
Received: from unknown by smtp-3-0001.mail.infomaniak.ch (Postfix) with ESMTPA id 4TrmKD63f6zMppDY;
	Fri,  8 Mar 2024 13:52:16 +0100 (CET)
From: Quentin Schulz <foss+kernel@0leil.net>
Date: Fri, 08 Mar 2024 13:52:10 +0100
Subject: [PATCH 3/3] arm64: dts: rockchip: add regulators for PCIe on
 RK3399 Puma Haikou
MIME-Version: 1.0
Message-Id: <20240308-puma-diode-pu-v1-3-2b38457bcdc0@theobroma-systems.com>
References: <20240308-puma-diode-pu-v1-0-2b38457bcdc0@theobroma-systems.com>
In-Reply-To: <20240308-puma-diode-pu-v1-0-2b38457bcdc0@theobroma-systems.com>
To: Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: Klaus Goger <klaus.goger@theobroma-systems.com>, 
 Quentin Schulz <foss+kernel@0leil.net>, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 linux-kernel@vger.kernel.org, 
 Quentin Schulz <quentin.schulz@theobroma-systems.com>
X-Mailer: b4 0.13.0
X-Infomaniak-Routing: alpha
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240308_045221_938277_A902F2A0 
X-CRM114-Status: UNSURE (   9.45  )
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
index 2484ad2bd86fc..1113f57b09313 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-puma.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-puma.dtsi
@@ -79,6 +79,26 @@ vcc5v0_sys: vcc5v0-sys {
 		regulator-max-microvolt = <5000000>;
 	};
 
+	vcca0v9: vcca0v9-regulator {
+		compatible = "regulator-fixed";
+		regulator-name = "vcca0v9";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <900000>;
+		regulator-max-microvolt = <900000>;
+		vin-supply = <&vcc_1v8>;
+	};
+
+	vcca1v8: vcca1v8-regulator {
+		compatible = "regulator-fixed";
+		regulator-name = "vcca1v8";
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
+	vpcie0v9-supply = <&vcca0v9>;
+	vpcie1v8-supply = <&vcca1v8>;
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
