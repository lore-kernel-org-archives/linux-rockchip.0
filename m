Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9BB77C531DC
	for <linux-rockchip@archiver.kernel.org>; Fri, 23 Aug 2024 15:40:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6dQUhKsL+eHJWat4oREO8XwY/DhYiQUmioq1Y2v+UD8=; b=nOUiabQfvaYRWo
	rOjbp0BmSuBLe2s9YKIRO8p06lVKcSZ4TylhXFrb/++K3/tQjlhf6JAVj30EURUz+SrgE6lQfCwKD
	vgXc8K5KYfFY87fT4s8vESms8dRGTs2RNvbCg8f2SNNWvqJaMkX/05NYtQejOCKyn1TKG2CLa5NfA
	bt0HEyQAu/z6SjWabcvCNISnH4oIFD3+PlhOB4uhJuvNLYWzz5UhZzQx8SnNGdRTSov5U5MyCd12W
	k+sFBc6XRA3Oei3L9nnpLHT6H4xGV91ChiUkHRJOxrnYzx2LuZB5h3FRs5I3dE3sYU73cdKiNMkkv
	4Z+5a3KSCx3Hj0FTjX4Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1shWP7-0000000HLTi-0FRY;
	Fri, 23 Aug 2024 15:40:45 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1shWMI-0000000HKlG-3qj8
	for linux-rockchip@bombadil.infradead.org;
	Fri, 23 Aug 2024 15:37:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=uRtZIGRZyqIiR/BHXAKQNb5VgHHpJTUQWreXubF99ak=; b=Skmc9sEpD0X3PAqWk5dPwuRyxQ
	Z4WW1pyrE2WEW/bIqp669c7mxi60AOUbO9JD2qDJLG4pGxGHNWCxarUL4C3oaoE/zobRHT2ENeU3P
	RC6G++jwfFd1BA1ZzhEuKy0JFBpNQoO4QO6rIIJSjdB1rhywH2UXNQC/tyaiUYD5yTc7UqtiElqT2
	kQZrWT2m93mIKWmbHh9Lb43QgmAKc1jiPIZ/f+HO2/uwxKQ7ifN0IcJWD/+MJP3gxn609G8R9GiFL
	7HwSUlh3XJjyQtrV87zWk5T+D0OXbml4g0nUSe96wIqs+av/vcCd+xnBGkU8zfPZwN2WrWEdtZihE
	h67lC8/g==;
Received: from omta36.uswest2.a.cloudfilter.net ([35.89.44.35])
	by desiato.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1shWME-0000000AAOd-2GT5
	for linux-rockchip@lists.infradead.org;
	Fri, 23 Aug 2024 15:37:49 +0000
Received: from eig-obgw-5010a.ext.cloudfilter.net ([10.0.29.199])
	by cmsmtp with ESMTPS
	id hUphsGSaUqvuohWKSs6cN2; Fri, 23 Aug 2024 15:35:56 +0000
Received: from md-in-79.webhostbox.net ([43.225.55.182])
	by cmsmtp with ESMTPS
	id hWKOsMZLPcTtdhWKQs37zL; Fri, 23 Aug 2024 15:35:54 +0000
X-Authority-Analysis: v=2.4 cv=E9jLp7dl c=1 sm=1 tr=0 ts=66c8ac5a
 a=LfuyaZh/8e9VOkaVZk0aRw==:117 a=kofhyyBXuK/oEhdxNjf66Q==:17
 a=yoJbH4e0A30A:10 a=vU9dKmh3AAAA:8 a=3KY-2xoZkWm1R9MF42IA:9
 a=rsP06fVo5MYu2ilr0aT5:22 a=ZCPYImcxYIQFgLOT52_G:22
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=linumiz.com
	; s=default; h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
	List-Post:List-Owner:List-Archive;
	bh=uRtZIGRZyqIiR/BHXAKQNb5VgHHpJTUQWreXubF99ak=; b=FuC34qvYH8P2Ue8r+HQrsc7sgC
	K6zOwJWbSbEYW53rczYsSjeAsYy7MZlRZ7VGv4fi0bbEVI1Q75caYhFRfsnTybEktAvcZ5v50+Nd3
	kfLG3tIx1vbE8gUUgGOTid/Z4d9GSDSLLED+q8U5we3s4ixU2FX2ehWZX5K1XwAXHkN0o3aLI/0DR
	mXeABY+UiSnsU56vAKFSRdOFZTmxlinQNkfmRoo+VI4RzrTc+tS4B2tTOEaZFRS2xWDFrQa7IpDb/
	/plv7YZkcIzZGykcHYm6FYQrM98ikoQLOjHtTNkum1qmBQaVUGCPTWACQfPbIoWoJchrBkRI8WU3/
	js4/P/Aw==;
Received: from [122.165.245.213] (port=53684 helo=localhost.localdomain)
	by md-in-79.webhostbox.net with esmtpsa  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96.2)
	(envelope-from <karthikeyan@linumiz.com>)
	id 1shWKN-000GB4-1D;
	Fri, 23 Aug 2024 21:05:51 +0530
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
Subject: [PATCH 3/8] ARM: dts: rockchip: Add pwm node for RV1126
Date: Fri, 23 Aug 2024 21:05:23 +0530
Message-Id: <20240823153528.3863993-4-karthikeyan@linumiz.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240823153528.3863993-1-karthikeyan@linumiz.com>
References: <20240823153528.3863993-1-karthikeyan@linumiz.com>
MIME-Version: 1.0
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - md-in-79.webhostbox.net
X-AntiAbuse: Original Domain - lists.infradead.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - linumiz.com
X-BWhitelist: no
X-Source-IP: 122.165.245.213
X-Source-L: No
X-Exim-ID: 1shWKN-000GB4-1D
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: (localhost.localdomain) [122.165.245.213]:53684
X-Source-Auth: karthikeyan@linumiz.com
X-Email-Count: 33
X-Org: HG=dishared_whb_net_legacy;ORG=directi;
X-Source-Cap: bGludW1jbWM7aG9zdGdhdG9yO21kLWluLTc5LndlYmhvc3Rib3gubmV0
X-Local-Domain: yes
X-CMAE-Envelope: MS4xfFrrPC6kvc1AWj8IzeLJPz13IMneb4pBxheLe9lbSKhs/cUn4GV8FFH0OWhL1YuOJLY8WQ+G0zrD2bCDZo+azoU4LN3N7h+47/J4C/mlLQ7ZI9xb9AT3
 69enZ74UzbVy2eBG5lA4iZznA1pw3hraKh43eKYYXm2bovx2xvrLvBsIy5PHwSr0fxhrrZUkOUujYgVKxuLCb5JMqrOoojPxCeDhnvEK1qLepT2lmuqTXVUA
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240823_163747_074785_0462C108 
X-CRM114-Status: UNSURE (   6.25  )
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
 .../arm/boot/dts/rockchip/rv1126-pinctrl.dtsi | 128 ++++++++++++++++++
 arch/arm/boot/dts/rockchip/rv1126.dtsi        | 110 +++++++++++++++
 2 files changed, 238 insertions(+)

diff --git a/arch/arm/boot/dts/rockchip/rv1126-pinctrl.dtsi b/arch/arm/boot/dts/rockchip/rv1126-pinctrl.dtsi
index c83490dfe8f6..7d11bf685151 100644
--- a/arch/arm/boot/dts/rockchip/rv1126-pinctrl.dtsi
+++ b/arch/arm/boot/dts/rockchip/rv1126-pinctrl.dtsi
@@ -225,6 +225,28 @@ i2s0m1_sdo3_sdi1: i2s0m1-sdo3_sdi1 {
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
