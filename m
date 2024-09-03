Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F1345CD13CF
	for <linux-rockchip@archiver.kernel.org>; Tue,  3 Sep 2024 10:57:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2wBf2iIYV4OPSHJHR1G+t9j4vBSjgi/3EHjMYti79VY=; b=VSS4tB6keug0ZC
	H2PIOeF8KnIzfZTw1c+63BFEtN7P3nIPQvCKmQteqMmMy84mYj/ZdcH+XDt5ZQg1BTiIc9vGPVZbE
	B0ynWzZ3KXFJCp9XZbcYiEP3syBRktX7BesBlKWVuxBNdYVTzGlrGctjsE6sCzXP8NIh6I9LDrjbW
	NaHHCEjS9+d/o6AZKo73hMaFOVZt1yoPwas/rHbxKukobILMHXJT9rx572WyMSEMCaDt5/8EXE/Uq
	ChEp97mJSLG3/Mgk9FsagXdeP9LTWbFZ0JfJkVIAl4XtIKuRR2sSNCt0m+wwla7f7YaQbEMUcjbo+
	ZpDS0mi3CL9I4K5TBwyA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1slRED-0000000HRVk-40Zl;
	Tue, 03 Sep 2024 10:57:41 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1slRBa-0000000HQfh-1hal
	for linux-rockchip@bombadil.infradead.org;
	Tue, 03 Sep 2024 10:54:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=BB7BCR3IrZVjn5A7a28pahM3Ou0lCzEKg+FXu9n6lXo=; b=pselUI4e50BFso+sQK0rsYUEPp
	Devvy4sUPFAPKKXOoi4sQ5XKvXm66RChufUc8ABaNnD7M/Eri6HuTUFRw53N9cl1PdfWVSJ1PdT5W
	DiLfqYT6kg/EznvcDE7uLCvMnTLZPnQKyEeGtQf++E2FnqkK0FxC103K8i65QRtDbUK7OQvIG+BCo
	YlGH++u0hw6pv2RNZC6oRHPL7ES4QT0EaXBA7Bv0orpEHpHZrhfFSEjMS/2bD3z03S+n1o+oS3qRL
	W41aFT72515D8JwRl5s3aHN+mqaxcrirdUMZuUoKZ0TAQUurSfkf1ke8FSElXKOD1OOrs1kne8B8i
	8RaoGOXQ==;
Received: from omta036.useast.a.cloudfilter.net ([44.202.169.35])
	by desiato.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1slRBW-0000000CJlY-0Guo
	for linux-rockchip@lists.infradead.org;
	Tue, 03 Sep 2024 10:54:57 +0000
Received: from eig-obgw-6007a.ext.cloudfilter.net ([10.0.30.247])
	by cmsmtp with ESMTPS
	id l34DsFgbyiA19lR9msHlHy; Tue, 03 Sep 2024 10:53:06 +0000
Received: from md-in-79.webhostbox.net ([43.225.55.182])
	by cmsmtp with ESMTPS
	id lR9jsqxJ9flfQlR9lsnrTC; Tue, 03 Sep 2024 10:53:05 +0000
X-Authority-Analysis: v=2.4 cv=ZrnrKc7G c=1 sm=1 tr=0 ts=66d6ea91
 a=LfuyaZh/8e9VOkaVZk0aRw==:117 a=kofhyyBXuK/oEhdxNjf66Q==:17
 a=EaEq8P2WXUwA:10 a=-pn6D5nKLtMA:10 a=vU9dKmh3AAAA:8 a=3KY-2xoZkWm1R9MF42IA:9
 a=rsP06fVo5MYu2ilr0aT5:22 a=ZCPYImcxYIQFgLOT52_G:22
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=linumiz.com
	; s=default; h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
	List-Post:List-Owner:List-Archive;
	bh=BB7BCR3IrZVjn5A7a28pahM3Ou0lCzEKg+FXu9n6lXo=; b=EAkRSFQe8p1cZevQko3KUfpKRs
	oluuzlUXUx7GuXbrDOarfc2rFCAZKLTp/ujyQ8YUL3HmhJLOt/YK524RKQOdBoafo3yfojYenn59F
	fB8ihYrJ7Y2opaw5sU1eGc+YqyZhLHb45Nz15kSzcAAi0J6zyj+W7utybz3MubbPc1FiE+wN0qyOk
	FAq1sbHlDE3VIrMozx2n0ZFKD8dQG7Ig6NSXrtWXh965e7bnmtUgL9t6sjEjUa+tF1tKaW7mSnz5w
	R78kyNfI9kJNjMe0DyjPX4Tw7rNssUYH08tOEgImjlI0AiavCr5d4tMoWgFsGNrYr+/00FE+JXvuk
	06dXCVgA==;
Received: from [122.165.245.213] (port=41440 helo=localhost.localdomain)
	by md-in-79.webhostbox.net with esmtpsa  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96.2)
	(envelope-from <karthikeyan@linumiz.com>)
	id 1slR9h-000Elu-24;
	Tue, 03 Sep 2024 16:23:01 +0530
From: Karthikeyan Krishnasamy <karthikeyan@linumiz.com>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	heiko@sntech.de,
	alexandre.belloni@bootlin.com
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-rtc@vger.kernel.org,
	Karthikeyan Krishnasamy <karthikeyan@linumiz.com>
Subject: [PATCH v2 3/8] ARM: dts: rockchip: Add pwm node for RV1126
Date: Tue,  3 Sep 2024 16:22:40 +0530
Message-Id: <20240903105245.715899-4-karthikeyan@linumiz.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240903105245.715899-1-karthikeyan@linumiz.com>
References: <20240903105245.715899-1-karthikeyan@linumiz.com>
MIME-Version: 1.0
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - md-in-79.webhostbox.net
X-AntiAbuse: Original Domain - lists.infradead.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - linumiz.com
X-BWhitelist: no
X-Source-IP: 122.165.245.213
X-Source-L: No
X-Exim-ID: 1slR9h-000Elu-24
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: (localhost.localdomain) [122.165.245.213]:41440
X-Source-Auth: karthikeyan@linumiz.com
X-Email-Count: 34
X-Org: HG=dishared_whb_net_legacy;ORG=directi;
X-Source-Cap: bGludW1jbWM7aG9zdGdhdG9yO21kLWluLTc5LndlYmhvc3Rib3gubmV0
X-Local-Domain: yes
X-CMAE-Envelope: MS4xfJRExlREjbAFu7e4zih6vdv0zjIjXqHqFmTFD0tICEPoY4GXGkQJDblwAiTyabEA4qC7E9RrnQnP+tCZU6/9TXW5js0z6AyXXA/s3x5I749ERKXOd3DM
 jeEwsJxjtW9SnakFdwv3x5dnIlxzgb0bhyDgwcyWTKiOv6Hmfc+JlPnbpSx7mbyFxh0nOk5WuNsuIaI5XYZcE2zZJ07gqbJrv/Mcyjydrkp6sGn0wAc6Ao99
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240903_115454_946706_C531FE48 
X-CRM114-Status: UNSURE (   7.01  )
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

Add missing pwm node and possible pinctrl for Rockchip RV1126

Signed-off-by: Karthikeyan Krishnasamy <karthikeyan@linumiz.com>
---

Notes:
    v2:
    - No change

 .../arm/boot/dts/rockchip/rv1126-pinctrl.dtsi | 128 ++++++++++++++++++
 arch/arm/boot/dts/rockchip/rv1126.dtsi        | 110 +++++++++++++++
 2 files changed, 238 insertions(+)

diff --git a/arch/arm/boot/dts/rockchip/rv1126-pinctrl.dtsi b/arch/arm/boot/dts/rockchip/rv1126-pinctrl.dtsi
index a3714ab0af32..9db93b495448 100644
--- a/arch/arm/boot/dts/rockchip/rv1126-pinctrl.dtsi
+++ b/arch/arm/boot/dts/rockchip/rv1126-pinctrl.dtsi
@@ -225,6 +225,28 @@ i2s0m1_sdo3_sdi1: i2s0m1-sdo3-sdi1 {
 			<3 RK_PB5 3 &pcfg_pull_none>;
 		};
 	};
+	pwm0 {
+		/omit-if-no-ref/
+		pwm0m0_pins: pwm0m0-pins {
+			rockchip,pins =
+				/* pwm0_pin_m0 */
+				<0 RK_PB6 3 &pcfg_pull_none>;
+		};
+		/omit-if-no-ref/
+		pwm0m1_pins: pwm0m1-pins {
+			rockchip,pins =
+				/* pwm0_pin_m1 */
+				<2 RK_PB3 5 &pcfg_pull_none>;
+		};
+	};
+	pwm1 {
+		/omit-if-no-ref/
+		pwm1m0_pins: pwm1m0-pins {
+			rockchip,pins =
+				/* pwm1_pin_m0 */
+				<0 RK_PB7 3 &pcfg_pull_none>;
+		};
+	};
 	pwm2 {
 		/omit-if-no-ref/
 		pwm2m0_pins: pwm2m0-pins {
@@ -232,6 +254,106 @@ pwm2m0_pins: pwm2m0-pins {
 				/* pwm2_pin_m0 */
 				<0 RK_PC0 3 &pcfg_pull_none>;
 		};
+		/omit-if-no-ref/
+		pwm2m1_pins: pwm2m1-pins {
+			rockchip,pins =
+				/* pwm2_pin_m1 */
+				<2 RK_PB1 5 &pcfg_pull_none>;
+		};
+	};
+	pwm3 {
+		/omit-if-no-ref/
+		pwm3m0_pins: pwm3m0-pins {
+			rockchip,pins =
+				/* pwm3_pin_m0 */
+				<0 RK_PC1 3 &pcfg_pull_none>;
+		};
+	};
+	pwm4 {
+		/omit-if-no-ref/
+		pwm4m0_pins: pwm4m0-pins {
+			rockchip,pins =
+				/* pwm4_pin_m0 */
+				<0 RK_PC2 3 &pcfg_pull_none>;
+		};
+	};
+	pwm5 {
+		/omit-if-no-ref/
+		pwm5m0_pins: pwm5m0-pins {
+			rockchip,pins =
+				/* pwm5_pin_m0 */
+				<0 RK_PC3 3 &pcfg_pull_none>;
+		};
+	};
+	pwm6 {
+		/omit-if-no-ref/
+		pwm6m0_pins: pwm6m0-pins {
+			rockchip,pins =
+				/* pwm6_pin_m0 */
+				<0 RK_PB2 3 &pcfg_pull_none>;
+		};
+		/omit-if-no-ref/
+		pwm6m1_pins: pwm6m1-pins {
+			rockchip,pins =
+				/* pwm6_pin_m1 */
+				<2 RK_PD4 5 &pcfg_pull_none>;
+		};
+	};
+	pwm7 {
+		/omit-if-no-ref/
+		pwm7m0_pins: pwm7m0-pins {
+			rockchip,pins =
+				/* pwm7_pin_m0 */
+				<0 RK_PB1 3 &pcfg_pull_none>;
+		};
+		/omit-if-no-ref/
+		pwm7m1_pins: pwm7m1-pins {
+			rockchip,pins =
+				/* pwm7_pin_m1 */
+				<3 RK_PA0 5 &pcfg_pull_none>;
+		};
+	};
+	pwm8 {
+		/omit-if-no-ref/
+		pwm8m0_pins: pwm8m0-pins {
+			rockchip,pins =
+				/* pwm8_pin_m0 */
+				<3 RK_PA4 6 &pcfg_pull_none>;
+		};
+		/omit-if-no-ref/
+		pwm8m1_pins: pwm8m1-pins {
+			rockchip,pins =
+				/* pwm8_pin_m1 */
+				<2 RK_PD7 5 &pcfg_pull_none>;
+		};
+	};
+	pwm9 {
+		/omit-if-no-ref/
+		pwm9m0_pins: pwm9m0-pins {
+			rockchip,pins =
+				/* pwm9_pin_m0 */
+				<3 RK_PA5 6 &pcfg_pull_none>;
+		};
+		/omit-if-no-ref/
+		pwm9m1_pins: pwm9m1-pins {
+			rockchip,pins =
+				/* pwm9_pin_m1 */
+				<2 RK_PD6 5 &pcfg_pull_none>;
+		};
+	};
+	pwm10 {
+		/omit-if-no-ref/
+		pwm10m0_pins: pwm10m0-pins {
+			rockchip,pins =
+				/* pwm10_pin_m0 */
+				<3 RK_PA6 6 &pcfg_pull_none>;
+		};
+		/omit-if-no-ref/
+		pwm10m1_pins: pwm10m1-pins {
+			rockchip,pins =
+				/* pwm10_pin_m1 */
+				<2 RK_PD5 5 &pcfg_pull_none>;
+		};
 	};
 	pwm11 {
 		/omit-if-no-ref/
@@ -240,6 +362,12 @@ pwm11m0_pins: pwm11m0-pins {
 				/* pwm11_pin_m0 */
 				<3 RK_PA7 6 &pcfg_pull_none>;
 		};
+		/omit-if-no-ref/
+		pwm11m1_pins: pwm11m1-pins {
+			rockchip,pins =
+				/* pwm11_pin_m1 */
+				<3 RK_PA1 5 &pcfg_pull_none>;
+		};
 	};
 	rgmii {
 		/omit-if-no-ref/
diff --git a/arch/arm/boot/dts/rockchip/rv1126.dtsi b/arch/arm/boot/dts/rockchip/rv1126.dtsi
index 09ecde58c553..abf442804d27 100644
--- a/arch/arm/boot/dts/rockchip/rv1126.dtsi
+++ b/arch/arm/boot/dts/rockchip/rv1126.dtsi
@@ -269,6 +269,28 @@ uart1: serial@ff410000 {
 		status = "disabled";
 	};
 
+	pwm0: pwm@ff430000 {
+		compatible = "rockchip,rv1126-pwm", "rockchip,rk3328-pwm";
+		reg = <0xff430000 0x10>;
+		clock-names = "pwm", "pclk";
+		clocks = <&pmucru CLK_PWM0>, <&pmucru PCLK_PWM0>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&pwm0m0_pins>;
+		#pwm-cells = <3>;
+		status = "disabled";
+	};
+
+	pwm1: pwm@ff430010 {
+		compatible = "rockchip,rv1126-pwm", "rockchip,rk3328-pwm";
+		reg = <0xff430010 0x10>;
+		clock-names = "pwm", "pclk";
+		clocks = <&pmucru CLK_PWM0>, <&pmucru PCLK_PWM0>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&pwm1m0_pins>;
+		#pwm-cells = <3>;
+		status = "disabled";
+	};
+
 	pwm2: pwm@ff430020 {
 		compatible = "rockchip,rv1126-pwm", "rockchip,rk3328-pwm";
 		reg = <0xff430020 0x10>;
@@ -280,6 +302,61 @@ pwm2: pwm@ff430020 {
 		status = "disabled";
 	};
 
+	pwm3: pwm@ff430030 {
+		compatible = "rockchip,rv1126-pwm", "rockchip,rk3328-pwm";
+		reg = <0xff430030 0x10>;
+		clock-names = "pwm", "pclk";
+		clocks = <&pmucru CLK_PWM0>, <&pmucru PCLK_PWM0>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&pwm3m0_pins>;
+		#pwm-cells = <3>;
+		status = "disabled";
+	};
+
+	pwm4: pwm@ff440000 {
+		compatible = "rockchip,rv1126-pwm", "rockchip,rk3328-pwm";
+		reg = <0xff440000 0x10>;
+		clock-names = "pwm", "pclk";
+		clocks = <&pmucru CLK_PWM1>, <&pmucru PCLK_PWM1>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&pwm4m0_pins>;
+		#pwm-cells = <3>;
+		status = "disabled";
+	};
+
+	pwm5: pwm@ff440010 {
+		compatible = "rockchip,rv1126-pwm", "rockchip,rk3328-pwm";
+		reg = <0xff440010 0x10>;
+		clock-names = "pwm", "pclk";
+		clocks = <&pmucru CLK_PWM1>, <&pmucru PCLK_PWM1>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&pwm5m0_pins>;
+		#pwm-cells = <3>;
+		status = "disabled";
+	};
+
+	pwm6: pwm@ff440020 {
+		compatible = "rockchip,rv1126-pwm", "rockchip,rk3328-pwm";
+		reg = <0xff440020 0x10>;
+		clock-names = "pwm", "pclk";
+		clocks = <&pmucru CLK_PWM1>, <&pmucru PCLK_PWM1>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&pwm6m0_pins>;
+		#pwm-cells = <3>;
+		status = "disabled";
+	};
+
+	pwm7: pwm@ff440030 {
+		compatible = "rockchip,rv1126-pwm", "rockchip,rk3328-pwm";
+		reg = <0xff440030 0x10>;
+		clock-names = "pwm", "pclk";
+		clocks = <&pmucru CLK_PWM1>, <&pmucru PCLK_PWM1>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&pwm7m0_pins>;
+		#pwm-cells = <3>;
+		status = "disabled";
+	};
+
 	pmucru: clock-controller@ff480000 {
 		compatible = "rockchip,rv1126-pmucru";
 		reg = <0xff480000 0x1000>;
@@ -323,6 +400,39 @@ i2c3: i2c@ff520000 {
 		rockchip,grf = <&pmugrf>;
 	};
 
+	pwm8: pwm@ff550000 {
+		compatible = "rockchip,rv1126-pwm", "rockchip,rk3328-pwm";
+		reg = <0xff550000 0x10>;
+		clock-names = "pwm", "pclk";
+		clocks = <&cru CLK_PWM2>, <&cru PCLK_PWM2>;
+		pinctrl-0 = <&pwm8m0_pins>;
+		pinctrl-names = "default";
+		#pwm-cells = <3>;
+		status = "disabled";
+	};
+
+	pwm9: pwm@ff550010 {
+		compatible = "rockchip,rv1126-pwm", "rockchip,rk3328-pwm";
+		reg = <0xff550010 0x10>;
+		clock-names = "pwm", "pclk";
+		clocks = <&cru CLK_PWM2>, <&cru PCLK_PWM2>;
+		pinctrl-0 = <&pwm9m0_pins>;
+		pinctrl-names = "default";
+		#pwm-cells = <3>;
+		status = "disabled";
+	};
+
+	pwm10: pwm@ff550020 {
+		compatible = "rockchip,rv1126-pwm", "rockchip,rk3328-pwm";
+		reg = <0xff550020 0x10>;
+		clock-names = "pwm", "pclk";
+		clocks = <&cru CLK_PWM2>, <&cru PCLK_PWM2>;
+		pinctrl-0 = <&pwm10m0_pins>;
+		pinctrl-names = "default";
+		#pwm-cells = <3>;
+		status = "disabled";
+	};
+
 	pwm11: pwm@ff550030 {
 		compatible = "rockchip,rv1126-pwm", "rockchip,rk3328-pwm";
 		reg = <0xff550030 0x10>;
-- 
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
