Return-Path: <SRS0=+Xhu=LQ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 33457C2B9F4
	for <linux-rockchip@archiver.kernel.org>; Tue, 22 Jun 2021 10:29:42 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id DDAC7613B2
	for <linux-rockchip@archiver.kernel.org>; Tue, 22 Jun 2021 10:29:41 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org DDAC7613B2
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=JGO/BO+vDawfIkcWLPMoS4VBIH3XJtfP9Qj0kLimeB8=; b=Q7ygOKLWOQjUAW
	ZqogoKvF+K5fNcTqHBxbqIJd1T4we8Io9wEZqY8U07EscbFCPs6Z9BOWma144tP3OZijaivrGVmB4
	poSm6hyERn9VWm9OpYTU+CGaqrkCUAUx+ajUXGLWNf6/GRPOT7Ffg64bkB3/9H/CQHerN8R+aYbhL
	wqNfnfSeZSEkhG4rrYpUTdHU2AcECH/eDzYqr1iQ65SvJP0JK7uagTQ6zh8jpo1+1zPVFplR48N/e
	YadpNafeSgOdK/M9qihbCGb4d5+FPhp0NOVh3cdVZoEwqwKSPY0Mj+xYzavAH7/+Z0nTfSI5W035P
	cEhLlJsbg6n31+eKUHrA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lvdf0-006egi-Sf; Tue, 22 Jun 2021 10:29:38 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lvdeY-006eXe-UZ; Tue, 22 Jun 2021 10:29:12 +0000
Received: from ip5f5aa64a.dynamic.kabel-deutschland.de ([95.90.166.74]
 helo=phil.lan)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1lvdeX-00031Z-Nt; Tue, 22 Jun 2021 12:29:09 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: cl@rock-chips.com
Cc: heiko@sntech.de, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 kever.yang@rock-chips.com
Subject: [PATCH 09/10] arm64: dts: rockchip: add pwm nodes for rk3568
Date: Tue, 22 Jun 2021 12:29:06 +0200
Message-Id: <20210622102907.99242-1-heiko@sntech.de>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210622_032911_049410_13E1E443 
X-CRM114-Status: GOOD (  10.59  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

From: Liang Chen <cl@rock-chips.com>

Add the pwm controller nodes to the core rk3568 dtsi.

Signed-off-by: Liang Chen <cl@rock-chips.com>
Signed-off-by: Heiko Stuebner <heiko@sntech.de>
---
 arch/arm64/boot/dts/rockchip/rk3568.dtsi | 176 +++++++++++++++++++++++
 1 file changed, 176 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3568.dtsi b/arch/arm64/boot/dts/rockchip/rk3568.dtsi
index d225e6a45d5c..33db226b46cb 100644
--- a/arch/arm64/boot/dts/rockchip/rk3568.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3568.dtsi
@@ -257,6 +257,50 @@ uart0: serial@fdd50000 {
 		status = "disabled";
 	};
 
+	pwm0: pwm@fdd70000 {
+		compatible = "rockchip,rk3568-pwm", "rockchip,rk3328-pwm";
+		reg = <0x0 0xfdd70000 0x0 0x10>;
+		clocks = <&pmucru CLK_PWM0>, <&pmucru PCLK_PWM0>;
+		clock-names = "pwm", "pclk";
+		pinctrl-0 = <&pwm0m0_pins>;
+		pinctrl-names = "active";
+		#pwm-cells = <3>;
+		status = "disabled";
+	};
+
+	pwm1: pwm@fdd70010 {
+		compatible = "rockchip,rk3568-pwm", "rockchip,rk3328-pwm";
+		reg = <0x0 0xfdd70010 0x0 0x10>;
+		clocks = <&pmucru CLK_PWM0>, <&pmucru PCLK_PWM0>;
+		clock-names = "pwm", "pclk";
+		pinctrl-0 = <&pwm1m0_pins>;
+		pinctrl-names = "active";
+		#pwm-cells = <3>;
+		status = "disabled";
+	};
+
+	pwm2: pwm@fdd70020 {
+		compatible = "rockchip,rk3568-pwm", "rockchip,rk3328-pwm";
+		reg = <0x0 0xfdd70020 0x0 0x10>;
+		clocks = <&pmucru CLK_PWM0>, <&pmucru PCLK_PWM0>;
+		clock-names = "pwm", "pclk";
+		pinctrl-0 = <&pwm2m0_pins>;
+		pinctrl-names = "active";
+		#pwm-cells = <3>;
+		status = "disabled";
+	};
+
+	pwm3: pwm@fdd70030 {
+		compatible = "rockchip,rk3568-pwm", "rockchip,rk3328-pwm";
+		reg = <0x0 0xfdd70030 0x0 0x10>;
+		clocks = <&pmucru CLK_PWM0>, <&pmucru PCLK_PWM0>;
+		clock-names = "pwm", "pclk";
+		pinctrl-0 = <&pwm3_pins>;
+		pinctrl-names = "active";
+		#pwm-cells = <3>;
+		status = "disabled";
+	};
+
 	sdmmc2: mmc@fe000000 {
 		compatible = "rockchip,rk3568-dw-mshc", "rockchip,rk3288-dw-mshc";
 		reg = <0x0 0xfe000000 0x0 0x4000>;
@@ -525,6 +569,138 @@ uart9: serial@fe6d0000 {
 		status = "disabled";
 	};
 
+	pwm4: pwm@fe6e0000 {
+		compatible = "rockchip,rk3568-pwm", "rockchip,rk3328-pwm";
+		reg = <0x0 0xfe6e0000 0x0 0x10>;
+		clocks = <&cru CLK_PWM1>, <&cru PCLK_PWM1>;
+		clock-names = "pwm", "pclk";
+		pinctrl-0 = <&pwm4_pins>;
+		pinctrl-names = "active";
+		#pwm-cells = <3>;
+		status = "disabled";
+	};
+
+	pwm5: pwm@fe6e0010 {
+		compatible = "rockchip,rk3568-pwm", "rockchip,rk3328-pwm";
+		reg = <0x0 0xfe6e0010 0x0 0x10>;
+		clocks = <&cru CLK_PWM1>, <&cru PCLK_PWM1>;
+		clock-names = "pwm", "pclk";
+		pinctrl-0 = <&pwm5_pins>;
+		pinctrl-names = "active";
+		#pwm-cells = <3>;
+		status = "disabled";
+	};
+
+	pwm6: pwm@fe6e0020 {
+		compatible = "rockchip,rk3568-pwm", "rockchip,rk3328-pwm";
+		reg = <0x0 0xfe6e0020 0x0 0x10>;
+		clocks = <&cru CLK_PWM1>, <&cru PCLK_PWM1>;
+		clock-names = "pwm", "pclk";
+		pinctrl-0 = <&pwm6_pins>;
+		pinctrl-names = "active";
+		#pwm-cells = <3>;
+		status = "disabled";
+	};
+
+	pwm7: pwm@fe6e0030 {
+		compatible = "rockchip,rk3568-pwm", "rockchip,rk3328-pwm";
+		reg = <0x0 0xfe6e0030 0x0 0x10>;
+		clocks = <&cru CLK_PWM1>, <&cru PCLK_PWM1>;
+		clock-names = "pwm", "pclk";
+		pinctrl-0 = <&pwm7_pins>;
+		pinctrl-names = "active";
+		#pwm-cells = <3>;
+		status = "disabled";
+	};
+
+	pwm8: pwm@fe6f0000 {
+		compatible = "rockchip,rk3568-pwm", "rockchip,rk3328-pwm";
+		reg = <0x0 0xfe6f0000 0x0 0x10>;
+		clocks = <&cru CLK_PWM2>, <&cru PCLK_PWM2>;
+		clock-names = "pwm", "pclk";
+		pinctrl-0 = <&pwm8m0_pins>;
+		pinctrl-names = "active";
+		#pwm-cells = <3>;
+		status = "disabled";
+	};
+
+	pwm9: pwm@fe6f0010 {
+		compatible = "rockchip,rk3568-pwm", "rockchip,rk3328-pwm";
+		reg = <0x0 0xfe6f0010 0x0 0x10>;
+		clocks = <&cru CLK_PWM2>, <&cru PCLK_PWM2>;
+		clock-names = "pwm", "pclk";
+		pinctrl-0 = <&pwm9m0_pins>;
+		pinctrl-names = "active";
+		#pwm-cells = <3>;
+		status = "disabled";
+	};
+
+	pwm10: pwm@fe6f0020 {
+		compatible = "rockchip,rk3568-pwm", "rockchip,rk3328-pwm";
+		reg = <0x0 0xfe6f0020 0x0 0x10>;
+		clocks = <&cru CLK_PWM2>, <&cru PCLK_PWM2>;
+		clock-names = "pwm", "pclk";
+		pinctrl-0 = <&pwm10m0_pins>;
+		pinctrl-names = "active";
+		#pwm-cells = <3>;
+		status = "disabled";
+	};
+
+	pwm11: pwm@fe6f0030 {
+		compatible = "rockchip,rk3568-pwm", "rockchip,rk3328-pwm";
+		reg = <0x0 0xfe6f0030 0x0 0x10>;
+		clocks = <&cru CLK_PWM2>, <&cru PCLK_PWM2>;
+		clock-names = "pwm", "pclk";
+		pinctrl-0 = <&pwm11m0_pins>;
+		pinctrl-names = "active";
+		#pwm-cells = <3>;
+		status = "disabled";
+	};
+
+	pwm12: pwm@fe700000 {
+		compatible = "rockchip,rk3568-pwm", "rockchip,rk3328-pwm";
+		reg = <0x0 0xfe700000 0x0 0x10>;
+		clocks = <&cru CLK_PWM3>, <&cru PCLK_PWM3>;
+		clock-names = "pwm", "pclk";
+		pinctrl-0 = <&pwm12m0_pins>;
+		pinctrl-names = "active";
+		#pwm-cells = <3>;
+		status = "disabled";
+	};
+
+	pwm13: pwm@fe700010 {
+		compatible = "rockchip,rk3568-pwm", "rockchip,rk3328-pwm";
+		reg = <0x0 0xfe700010 0x0 0x10>;
+		clocks = <&cru CLK_PWM3>, <&cru PCLK_PWM3>;
+		clock-names = "pwm", "pclk";
+		pinctrl-0 = <&pwm13m0_pins>;
+		pinctrl-names = "active";
+		#pwm-cells = <3>;
+		status = "disabled";
+	};
+
+	pwm14: pwm@fe700020 {
+		compatible = "rockchip,rk3568-pwm", "rockchip,rk3328-pwm";
+		reg = <0x0 0xfe700020 0x0 0x10>;
+		clocks = <&cru CLK_PWM3>, <&cru PCLK_PWM3>;
+		clock-names = "pwm", "pclk";
+		pinctrl-0 = <&pwm14m0_pins>;
+		pinctrl-names = "active";
+		#pwm-cells = <3>;
+		status = "disabled";
+	};
+
+	pwm15: pwm@fe700030 {
+		compatible = "rockchip,rk3568-pwm", "rockchip,rk3328-pwm";
+		reg = <0x0 0xfe700030 0x0 0x10>;
+		clocks = <&cru CLK_PWM3>, <&cru PCLK_PWM3>;
+		clock-names = "pwm", "pclk";
+		pinctrl-0 = <&pwm15m0_pins>;
+		pinctrl-names = "active";
+		#pwm-cells = <3>;
+		status = "disabled";
+	};
+
 	pinctrl: pinctrl {
 		compatible = "rockchip,rk3568-pinctrl";
 		rockchip,grf = <&grf>;
-- 
2.29.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
