Return-Path: <SRS0=ojj+=P4=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E48D3C433F5
	for <linux-rockchip@archiver.kernel.org>; Tue,  9 Nov 2021 22:22:41 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id B87E7619E8
	for <linux-rockchip@archiver.kernel.org>; Tue,  9 Nov 2021 22:22:41 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org B87E7619E8
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WKQ4GoXwDRqpVJXx6PUIlO7iC1LQcYYuJaD4MueXm+g=; b=RocBYdoVWBdZ/h
	ZQz8veJH7l3Tu5Bryb/BATBOhPfHodIc+lI4RSaO++PmXYcQIfJZdu7HNB/vsDl6u9kxADCf1vmhi
	etOZ/f7mW1KG/SG56FR8SyH0U1sf+0uZ4MFnub7cX/PRpUCS+TDIRPi/WTPFXvog0ZtDiHOquvQGZ
	3ogHaO+epQeyJkJx+oO1FXf/QeHebz2fnfz366cH/T706inZMF9ecxsKdzBtYOEAUFa/fF7Bds2Wc
	rxbpWm1/BbI+m4Zs1rX2iuRHRXqpwAvdOXb45pCvl7mEkM39OlESpJDvbFDISg0QJBM53MasbX2ew
	EoyVZ5+qC5oR8VQBpjlw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mkZVm-003OXR-HV; Tue, 09 Nov 2021 22:22:38 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mkZQg-003LOc-O7; Tue, 09 Nov 2021 22:17:24 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id B2A0E611BF;
 Tue,  9 Nov 2021 22:17:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1636496242;
 bh=ZkBvY0/FGy1zslJ/8p6SQONClTFCw+k1PjFEb3t7NMY=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=C5UvqCwlkEmDixq0KUCLbnrLTgl5z7U2HOPBCavCmgvn8VMcjP4qDmnAIP3P5eqsy
 bE5sULcyWnJK9j7C5GdN1+/D7wz+6UwmU7K45EoZYLJLtUXO57HIsk1MgxAodeDry9
 Ia9vBv26JksEs/OChNSUQjUPYIurnb0/KLktceIhI94Bhw8gaU0Mkufg6k5yA8Ti0W
 +xKgcjJsOXqrL/z0rWLH3cga8RN5S8LrED8QJLamysjgSn4toJvUsN2SqpSeDG3GPl
 NmLj6RLLIJuUgtMS9tgLvdoUWFVSnMwou0OLEjnLd7OqsHa5TjCjRDM92o5Lpw7o/l
 XPcVviKILNO6w==
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Brian Norris <briannorris@chromium.org>, Leo Yan <leo.yan@linaro.org>,
 Chen-Yu Tsai <wenst@chromium.org>,
 Douglas Anderson <dianders@chromium.org>, Heiko Stuebner <heiko@sntech.de>,
 Sasha Levin <sashal@kernel.org>, robh+dt@kernel.org, pawel.moll@arm.com,
 mark.rutland@arm.com, ijc+devicetree@hellion.org.uk, galak@codeaurora.org,
 catalin.marinas@arm.com, will.deacon@arm.com, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
Subject: [PATCH AUTOSEL 5.15 17/82] arm64: dts: rockchip: add Coresight debug
 range for RK3399
Date: Tue,  9 Nov 2021 17:15:35 -0500
Message-Id: <20211109221641.1233217-17-sashal@kernel.org>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20211109221641.1233217-1-sashal@kernel.org>
References: <20211109221641.1233217-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211109_141722_854276_40747CC9 
X-CRM114-Status: UNSURE (   9.72  )
X-CRM114-Notice: Please train this message.
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

From: Brian Norris <briannorris@chromium.org>

[ Upstream commit 75dccea503b8e176ad044175e891d7bb291b6ba0 ]

Per Documentation/devicetree/bindings/arm/coresight-cpu-debug.txt.

This IP block can be used for sampling the PC of any given CPU, which is
useful in certain panic scenarios where you can't get the CPU to stop
cleanly (e.g., hard lockup).

Reviewed-by: Leo Yan <leo.yan@linaro.org>
Reviewed-by: Chen-Yu Tsai <wenst@chromium.org>
Reviewed-by: Douglas Anderson <dianders@chromium.org>
Signed-off-by: Brian Norris <briannorris@chromium.org>
Link: https://lore.kernel.org/r/20210908111337.v2.3.Ibc87b4785709543c998cc852c1edaeb7a08edf5c@changeid
Signed-off-by: Heiko Stuebner <heiko@sntech.de>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 arch/arm64/boot/dts/rockchip/rk3399.dtsi | 48 ++++++++++++++++++++++++
 1 file changed, 48 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399.dtsi b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
index 3871c7fd83b00..c5fe2d4401149 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
@@ -361,6 +361,54 @@
 		status = "disabled";
 	};
 
+	debug@fe430000 {
+		compatible = "arm,coresight-cpu-debug", "arm,primecell";
+		reg = <0 0xfe430000 0 0x1000>;
+		clocks = <&cru PCLK_COREDBG_L>;
+		clock-names = "apb_pclk";
+		cpu = <&cpu_l0>;
+	};
+
+	debug@fe432000 {
+		compatible = "arm,coresight-cpu-debug", "arm,primecell";
+		reg = <0 0xfe432000 0 0x1000>;
+		clocks = <&cru PCLK_COREDBG_L>;
+		clock-names = "apb_pclk";
+		cpu = <&cpu_l1>;
+	};
+
+	debug@fe434000 {
+		compatible = "arm,coresight-cpu-debug", "arm,primecell";
+		reg = <0 0xfe434000 0 0x1000>;
+		clocks = <&cru PCLK_COREDBG_L>;
+		clock-names = "apb_pclk";
+		cpu = <&cpu_l2>;
+	};
+
+	debug@fe436000 {
+		compatible = "arm,coresight-cpu-debug", "arm,primecell";
+		reg = <0 0xfe436000 0 0x1000>;
+		clocks = <&cru PCLK_COREDBG_L>;
+		clock-names = "apb_pclk";
+		cpu = <&cpu_l3>;
+	};
+
+	debug@fe610000 {
+		compatible = "arm,coresight-cpu-debug", "arm,primecell";
+		reg = <0 0xfe610000 0 0x1000>;
+		clocks = <&cru PCLK_COREDBG_B>;
+		clock-names = "apb_pclk";
+		cpu = <&cpu_b0>;
+	};
+
+	debug@fe710000 {
+		compatible = "arm,coresight-cpu-debug", "arm,primecell";
+		reg = <0 0xfe710000 0 0x1000>;
+		clocks = <&cru PCLK_COREDBG_B>;
+		clock-names = "apb_pclk";
+		cpu = <&cpu_b1>;
+	};
+
 	usbdrd3_0: usb@fe800000 {
 		compatible = "rockchip,rk3399-dwc3";
 		#address-cells = <2>;
-- 
2.33.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
