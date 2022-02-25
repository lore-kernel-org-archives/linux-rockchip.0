Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A03E3C433F5
	for <linux-rockchip@archiver.kernel.org>; Fri, 25 Feb 2022 14:56:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GG4ZOjmJYiWBi8k+wSqR4qeNSP0hUynDEszFdtnxolg=; b=2ivTffAk9cZ3hO
	FcoLKfdriEyTIDf3CLauHG+HrbxPxuipKCLUygbpyscKirw26i3zpBGDVobYmmMQtvOaDk3rY59PD
	8al11hHoHRtkgCzIRwRvC9iWPMKsWWIzoj2S5ed946RSiGkzE0F1UrX+pYdGaeZ0MINOOfUPwrdvI
	tTfRAJysobq6Gs2IpyfftdToXHm7SDKsFM1VJMMH7Cddfvbmv7b7k7OQcOkhjjKrZY2ZQE13vwg+d
	cDbFngjEIdaLlWkGRc0GyXbedH5bwWp9FPKT/2G4lTm1dxorP/zej+FG3qAtVqKyLYoOEqUjwlq3h
	sbmTnjX6YNYr3f36jYFg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nNc1L-005Udz-AM; Fri, 25 Feb 2022 14:56:35 +0000
Received: from mail-qk1-x72f.google.com ([2607:f8b0:4864:20::72f])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nNbzX-005TjK-Ug; Fri, 25 Feb 2022 14:54:46 +0000
Received: by mail-qk1-x72f.google.com with SMTP id g24so4671100qkl.3;
 Fri, 25 Feb 2022 06:54:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=FDPZIGzI4cmIbStBPaiMVgNNivHkF1oB77ycCAz44T0=;
 b=lHos+wKMhO2GGZXv06casobH1M6tdgEvgpIa/W+kMaLXIKX1Lj9+QztiSN5AE99d6l
 kvHgRongm05kW61U1RUls1pHopKDP5+fPbUhQynkxyiAyrmkLz9MBTvM+fCUNp5DRxiO
 0yxPn3dZGhI8Px+Cn0DUTPvakP0gvVrXg1KKPb1MYKuBrQ/iMX8zuo/MjCzErJGVLnWM
 k6T4dX4F1LmYL51991172KG8nJgiBE0mCBgNeVyzk4Lkf79fPWWAh34J4MpAmVTn2WG1
 WZY4WmY6bd8MJEmIsYzqRb3E6UUgfSqQjzhW2U6L2exM/pNFhOhW99pWr4aKtmrUtVwI
 kO1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=FDPZIGzI4cmIbStBPaiMVgNNivHkF1oB77ycCAz44T0=;
 b=aiZVOa+02yEGX+bVhtfm+clQ11ATA3kpCabA7YMSxdu2/f/mpUV8+5zoJ7oN3rhdVH
 qx25erCYOBeeIIO+ieR2QGYWoeWpzQib2BZsGjLJPH3+OahZRWwkWP1X8dsPh2OC8qog
 ReK4UoSqZztyY3SYTBoU9STFBXhI+ZNICt8G3F22XaWH6JhYWfi4Cg9pDDHeiU51tSUi
 N4wUrQbprUiRhvDp8GAtdCgbQ20hqey7wtkpNu+4y82JuzuWPNpW3sEImXPxSItGgzK6
 i1yupUG5a2xXcAiPgRQtSgYCPiyA+AGuHR7tDLeS9jgKLVSCiO1Pu83Fc/EIF3TrtTT0
 w2Ow==
X-Gm-Message-State: AOAM532t6O80yukPq2uQkBX0w0RxGrgTxfhlZXIdIrWvJWjum1GvjmH7
 MdYE/A2fc0dcPhw1uUnZHHA=
X-Google-Smtp-Source: ABdhPJzujfBHDw9T2hERwmvAmrgqi200Z/2YpnW3e39OAIW8u87BGP/Y0zpsyzoYH5ex1+hgeZD7oQ==
X-Received: by 2002:a05:620a:35c:b0:648:e0da:8a64 with SMTP id
 t28-20020a05620a035c00b00648e0da8a64mr4893427qkm.73.1645800882815; 
 Fri, 25 Feb 2022 06:54:42 -0800 (PST)
Received: from master-x64.sparksnet ([2601:153:980:85b1::10])
 by smtp.gmail.com with ESMTPSA id
 d202-20020a3768d3000000b005f18706845dsm1318292qkc.73.2022.02.25.06.54.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 25 Feb 2022 06:54:42 -0800 (PST)
From: Peter Geis <pgwipeout@gmail.com>
To: Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
 Heiko Stuebner <heiko@sntech.de>
Cc: Peter Geis <pgwipeout@gmail.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v1 7/8] arm64: dts: rockchip: add rk356x dwc3 usb3 nodes
Date: Fri, 25 Feb 2022 09:54:30 -0500
Message-Id: <20220225145432.422130-8-pgwipeout@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220225145432.422130-1-pgwipeout@gmail.com>
References: <20220225145432.422130-1-pgwipeout@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220225_065444_033707_5CA9F125 
X-CRM114-Status: GOOD (  12.66  )
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

Add the dwc3 device nodes to the rk356x device trees.
The rk3566 has one usb2 capable dwc3 otg controller and one usb3 capable
dwc3 host controller.
The rk3568 has one usb3 capable dwc3 otg controller and one usb3 capable
dwc3 host controller.

Signed-off-by: Peter Geis <pgwipeout@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3566.dtsi | 12 +++++++
 arch/arm64/boot/dts/rockchip/rk3568.dtsi |  9 +++++
 arch/arm64/boot/dts/rockchip/rk356x.dtsi | 45 +++++++++++++++++++++++-
 3 files changed, 65 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3566.dtsi b/arch/arm64/boot/dts/rockchip/rk3566.dtsi
index 3839eef5e4f7..8e8b52f58f44 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3566.dtsi
@@ -6,6 +6,10 @@ / {
 	compatible = "rockchip,rk3566";
 };
 
+&pipegrf {
+	compatible = "rockchip,rk3566-pipe-grf", "syscon";
+};
+
 &power {
 	power-domain@RK3568_PD_PIPE {
 		reg = <RK3568_PD_PIPE>;
@@ -18,3 +22,11 @@ power-domain@RK3568_PD_PIPE {
 		#power-domain-cells = <0>;
 	};
 };
+
+&usbdrd30 {
+	phys = <&usb2phy0_otg>;
+	phy-names = "usb2-phy";
+	extcon = <&usb2phy0>;
+	maximum-speed = "high-speed";
+	snps,dis_u2_susphy_quirk;
+};
diff --git a/arch/arm64/boot/dts/rockchip/rk3568.dtsi b/arch/arm64/boot/dts/rockchip/rk3568.dtsi
index 5b0f528d6818..77c044cbaaad 100644
--- a/arch/arm64/boot/dts/rockchip/rk3568.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3568.dtsi
@@ -99,6 +99,10 @@ opp-1992000000 {
 	};
 };
 
+&pipegrf {
+	compatible = "rockchip,rk3568-pipe-grf", "syscon";
+};
+
 &power {
 	power-domain@RK3568_PD_PIPE {
 		reg = <RK3568_PD_PIPE>;
@@ -114,3 +118,8 @@ power-domain@RK3568_PD_PIPE {
 		#power-domain-cells = <0>;
 	};
 };
+
+&usbdrd30 {
+	phys = <&usb2phy0_otg>, <&combphy0 PHY_TYPE_USB3>;
+	phy-names = "usb2-phy", "usb3-phy";
+};
diff --git a/arch/arm64/boot/dts/rockchip/rk356x.dtsi b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
index 84d5d607e693..4fae5b3b326e 100644
--- a/arch/arm64/boot/dts/rockchip/rk356x.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
@@ -230,6 +230,50 @@ scmi_shmem: sram@0 {
 		};
 	};
 
+	usbdrd30: usbdrd@fcc00000 {
+		compatible = "rockchip,rk3568-dwc3", "snps,dwc3";
+		reg = <0x0 0xfcc00000 0x0 0x400000>;
+		interrupts = <GIC_SPI 169 IRQ_TYPE_LEVEL_HIGH>;
+		clocks = <&cru CLK_USB3OTG0_REF>, <&cru CLK_USB3OTG0_SUSPEND>,
+			 <&cru ACLK_USB3OTG0>, <&cru PCLK_PIPE>;
+		clock-names = "ref_clk", "suspend_clk",
+			      "bus_clk", "grf_clk";
+		dr_mode = "host";
+		phy_type = "utmi_wide";
+		power-domains = <&power RK3568_PD_PIPE>;
+		resets = <&cru SRST_USB3OTG0>;
+		reset-names = "usb3-otg";
+		snps,dis_enblslpm_quirk;
+		snps,dis-u2-freeclk-exists-quirk;
+		snps,dis-del-phy-power-chg-quirk;
+		snps,dis-tx-ipgap-linecheck-quirk;
+		snps,xhci-trb-ent-quirk;
+		status = "disabled";
+	};
+
+	usbhost30: usbhost@fd000000 {
+		compatible = "rockchip,rk3568-dwc3", "snps,dwc3";
+		reg = <0x0 0xfd000000 0x0 0x400000>;
+		interrupts = <GIC_SPI 170 IRQ_TYPE_LEVEL_HIGH>;
+		clocks = <&cru CLK_USB3OTG1_REF>, <&cru CLK_USB3OTG1_SUSPEND>,
+			 <&cru ACLK_USB3OTG1>, <&cru PCLK_PIPE>;
+		clock-names = "ref_clk", "suspend_clk",
+			      "bus_clk", "grf_clk";
+		dr_mode = "host";
+		phys = <&usb2phy0_host>, <&combphy1 PHY_TYPE_USB3>;
+		phy-names = "usb2-phy", "usb3-phy";
+		phy_type = "utmi_wide";
+		power-domains = <&power RK3568_PD_PIPE>;
+		resets = <&cru SRST_USB3OTG1>;
+		reset-names = "usb3-host";
+		snps,dis_enblslpm_quirk;
+		snps,dis-u2-freeclk-exists-quirk;
+		snps,dis_u2_susphy_quirk;
+		snps,dis-del-phy-power-chg-quirk;
+		snps,dis-tx-ipgap-linecheck-quirk;
+		status = "disabled";
+	};
+
 	gic: interrupt-controller@fd400000 {
 		compatible = "arm,gic-v3";
 		reg = <0x0 0xfd400000 0 0x10000>, /* GICD */
@@ -297,7 +341,6 @@ pmu_io_domains: io-domains {
 	};
 
 	pipegrf: syscon@fdc50000 {
-		compatible = "rockchip,rk3568-pipe-grf", "syscon";
 		reg = <0x0 0xfdc50000 0x0 0x1000>;
 	};
 
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
