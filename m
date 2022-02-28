Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3A06FC4332F
	for <linux-rockchip@archiver.kernel.org>; Mon, 28 Feb 2022 14:03:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=l+lmO6yGnACk/H/P4g9fp5Wt350m/+aZDrLNN192Nog=; b=ajh3rID9iuheSy
	n1UibsczOvHmKvfvldvUeZm96isJHLrSUPnFFt7iqFGeFLFoRJI0zua2/JIrxH6vmxxIJ4XyJqayq
	lTfdptHsTGKgESJqFddUnlz+masyNeux5XE+pS/xvhERGZ/Mu5txpT0h4NpkzsrhegXjqZeO6llpX
	K3yhJ8ctsWrZlP2i1GrbBaV23jhiWzoHKHDEiO/eZTqOmM2iSXB1c7s5BgF/oY8UGVS9437ZcIgVt
	nvmx+GumfbomakV/QguKFYBHL5hHSRgw1uX5s/yL68x/GPOYNNnXwGzHUXQ7aOqFYnW/nme/2GKAt
	DIeiyC900rU1ruKBqzXw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nOgck-00CknP-Pu; Mon, 28 Feb 2022 14:03:38 +0000
Received: from mail-qk1-x734.google.com ([2607:f8b0:4864:20::734])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nOgWY-00Cijs-SS; Mon, 28 Feb 2022 13:57:17 +0000
Received: by mail-qk1-x734.google.com with SMTP id d84so10305328qke.8;
 Mon, 28 Feb 2022 05:57:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=AsODl7JvaXRh2+ut0mxSGhJunK1lBm2DvnylI8wtuII=;
 b=nwMzOMDPX1uSqS4uzoY1wLkCNhKuCXOb6L0j6ZeNgGlLtL8AKAjnQIHbsSNExBKYJT
 4ilHiuGq8rP/uRaNL+h8aoW82w68U529sfqtbKDRaskSEqeqRHPTBP2p95xa2lVlPt9g
 1Y0lrS6mm5j08kN+wQB4nUj4igOOpU9jfnwLMa28OfA/7kPYgPY9LaaYcUZ6iSKK1/An
 xasdcoylogS3Y/gfLnn8n99U6fB0LMsavmoDQsnf5jaypwkAmxitJ+86AkRPmNatPb2q
 WtrNu/dgWjNLeqDJdunySRQ6v5sbZlEMI78b+LEG+wvF75ybpyg/TqMaBU+ah/RS2bOV
 XIFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=AsODl7JvaXRh2+ut0mxSGhJunK1lBm2DvnylI8wtuII=;
 b=uaak4W6NSP5OqBAMT+BFpL/x6diGx3oQFqEeJo+NptfnCD2spB8tKu9XsMe11AZ5LF
 4jSB9o6HQ6Lu1tTy/TbOD1j6U+rLVuuXcSiEzo5/BylADGKpwJZ4Ti8G7yopuB0h70ZS
 tsx9BGs62mwOR2hxRcnkeM+9blIeCXj7SmIcAilcdNlpvCmof8+pQ0qGezsGegGxVTdR
 3a6R8jrWGkjMeEE6TisKKi1ilOTjFUmuLU/ulMOzLb2KpbR79wJj4OBFwhEigY9n8jzU
 UC3KuCnff7L04qFDf6oe617eRNySbBAEr+x+vEWCufhnnhk4CFmMiQyQ+7fhISbbFKDZ
 2n2g==
X-Gm-Message-State: AOAM532ox41ZP8oI/3JlC1jIJNuNjoLXQKJYU31qY7ex9q0Yhg4Jnw3U
 yAC3xEf+0mLUeRHBEwZOYMtqUvVp56MpWA==
X-Google-Smtp-Source: ABdhPJzPrFKZiEYpe9kQCnsOEbJsrl3nbbO6rhnysx54i1jEd/BwaKumcIqB1GeU5ck3q+/1iFEtwg==
X-Received: by 2002:a05:620a:165b:b0:648:e786:a251 with SMTP id
 c27-20020a05620a165b00b00648e786a251mr10955896qko.461.1646056633516; 
 Mon, 28 Feb 2022 05:57:13 -0800 (PST)
Received: from master-x64.sparksnet ([2601:153:980:85b1::10])
 by smtp.gmail.com with ESMTPSA id
 b8-20020a05620a088800b00648bfd00a41sm4932244qka.80.2022.02.28.05.57.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 28 Feb 2022 05:57:13 -0800 (PST)
From: Peter Geis <pgwipeout@gmail.com>
To: Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
 Heiko Stuebner <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org, michael.riesch@wolfvision.net,
 jbx6244@gmail.com, Peter Geis <pgwipeout@gmail.com>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v4 6/8] arm64: dts: rockchip: add rk356x dwc3 usb3 nodes
Date: Mon, 28 Feb 2022 08:56:57 -0500
Message-Id: <20220228135700.1089526-7-pgwipeout@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220228135700.1089526-1-pgwipeout@gmail.com>
References: <20220228135700.1089526-1-pgwipeout@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220228_055714_962173_39C6F9B4 
X-CRM114-Status: GOOD (  12.07  )
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
 arch/arm64/boot/dts/rockchip/rk3566.dtsi | 11 ++++++++
 arch/arm64/boot/dts/rockchip/rk3568.dtsi |  9 ++++++
 arch/arm64/boot/dts/rockchip/rk356x.dtsi | 35 +++++++++++++++++++++++-
 3 files changed, 54 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3566.dtsi b/arch/arm64/boot/dts/rockchip/rk3566.dtsi
index 3839eef5e4f7..0b957068ff89 100644
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
@@ -18,3 +22,10 @@ power-domain@RK3568_PD_PIPE {
 		#power-domain-cells = <0>;
 	};
 };
+
+&usb_host0_xhci {
+	phys = <&usb2phy0_otg>;
+	phy-names = "usb2-phy";
+	extcon = <&usb2phy0>;
+	maximum-speed = "high-speed";
+};
diff --git a/arch/arm64/boot/dts/rockchip/rk3568.dtsi b/arch/arm64/boot/dts/rockchip/rk3568.dtsi
index 5b0f528d6818..8ba9334f9753 100644
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
+&usb_host0_xhci {
+	phys = <&usb2phy0_otg>, <&combphy0 PHY_TYPE_USB3>;
+	phy-names = "usb2-phy", "usb3-phy";
+};
diff --git a/arch/arm64/boot/dts/rockchip/rk356x.dtsi b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
index 7cdef800cb3c..ca20d7b91fe5 100644
--- a/arch/arm64/boot/dts/rockchip/rk356x.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
@@ -230,6 +230,40 @@ scmi_shmem: sram@0 {
 		};
 	};
 
+	usb_host0_xhci: usb@fcc00000 {
+		compatible = "rockchip,rk3568-dwc3", "snps,dwc3";
+		reg = <0x0 0xfcc00000 0x0 0x400000>;
+		interrupts = <GIC_SPI 169 IRQ_TYPE_LEVEL_HIGH>;
+		clocks = <&cru CLK_USB3OTG0_REF>, <&cru CLK_USB3OTG0_SUSPEND>,
+			 <&cru ACLK_USB3OTG0>;
+		clock-names = "ref_clk", "suspend_clk",
+			      "bus_clk";
+		dr_mode = "host";
+		phy_type = "utmi_wide";
+		power-domains = <&power RK3568_PD_PIPE>;
+		resets = <&cru SRST_USB3OTG0>;
+		snps,dis_u2_susphy_quirk;
+		status = "disabled";
+	};
+
+	usb_host1_xhci: usb@fd000000 {
+		compatible = "rockchip,rk3568-dwc3", "snps,dwc3";
+		reg = <0x0 0xfd000000 0x0 0x400000>;
+		interrupts = <GIC_SPI 170 IRQ_TYPE_LEVEL_HIGH>;
+		clocks = <&cru CLK_USB3OTG1_REF>, <&cru CLK_USB3OTG1_SUSPEND>,
+			 <&cru ACLK_USB3OTG1>;
+		clock-names = "ref_clk", "suspend_clk",
+			      "bus_clk";
+		dr_mode = "host";
+		phys = <&usb2phy0_host>, <&combphy1 PHY_TYPE_USB3>;
+		phy-names = "usb2-phy", "usb3-phy";
+		phy_type = "utmi_wide";
+		power-domains = <&power RK3568_PD_PIPE>;
+		resets = <&cru SRST_USB3OTG1>;
+		snps,dis_u2_susphy_quirk;
+		status = "disabled";
+	};
+
 	gic: interrupt-controller@fd400000 {
 		compatible = "arm,gic-v3";
 		reg = <0x0 0xfd400000 0 0x10000>, /* GICD */
@@ -297,7 +331,6 @@ pmu_io_domains: io-domains {
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
