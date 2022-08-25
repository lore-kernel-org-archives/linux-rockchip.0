Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9D60BECAA27
	for <linux-rockchip@archiver.kernel.org>; Thu, 25 Aug 2022 19:40:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kxASUbwsNYC54gy/4+OEBTMFWEsn3MwQcFDXg9IXWyo=; b=Wn8bcqTil/MLP/
	7/65Qw388puG+aL0vvUV2sTZm5DmR5pSg59lL0jjZnsuAhBCjWKrV4U/Yl/qOV3WgX52mJ4B3wJq0
	iXgjvtXOJ0qu1ea2NCTpWhDZlYv0w1MD43M0xtaAh4Jdb1jvzhmNLY++g4BIQsn1qPhRv//+ZiEzw
	pYVj1kPAA8pdywFtaaxYoHbCEcn/d6ERiq198K11XF49IiwwVg8frMbZXxEGoxR+3cjqRJj8jwqt2
	EoHUZz9PdRcO9gnZaJ+jXMRW3B17/N9K3LuZsH3W3zDGxhdwIb/FOU+hQW/8zDnW1dp2Ec4/BtFvm
	SFx+6hBPGfj6JUKII3Fw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oRIiS-002nAK-7j; Thu, 25 Aug 2022 19:40:36 +0000
Received: from mxout1.routing.net ([2a03:2900:1:a::a])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oRIgx-002mGf-64; Thu, 25 Aug 2022 19:39:06 +0000
Received: from mxbox1.masterlogin.de (unknown [192.168.10.88])
	by mxout1.routing.net (Postfix) with ESMTP id ED46F4075D;
	Thu, 25 Aug 2022 19:38:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mailerdienst.de;
	s=20200217; t=1661456340;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=h6FvBDGJ4ENDKARTuI+hxFdo2LgCLW63BKWghaHNeAk=;
	b=er+amFnVmjd0hO2EeMBCdjlpjRCDvdrJgmWED0HVitcNtxyWVE7ADsX/W5+HLjinYHVOR/
	cL4g2cvuVZfGZ+269zI7Xk58Z64okwxNeMm8cjr4bncGpuLgS+ND6iefgfvN4vQcbnNjUF
	GioUaPq2AkKACuMY3SjaYgCSjUPlPX4=
Received: from frank-G5.. (fttx-pool-80.245.75.185.bambit.de [80.245.75.185])
	by mxbox1.masterlogin.de (Postfix) with ESMTPSA id 0ED46403A9;
	Thu, 25 Aug 2022 19:38:59 +0000 (UTC)
From: Frank Wunderlich <linux@fw-web.de>
To: linux-rockchip@lists.infradead.org
Cc: Frank Wunderlich <frank-w@public-files.de>,
	Kishon Vijay Abraham I <kishon@ti.com>,
	Vinod Koul <vkoul@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Yifeng Zhao <yifeng.zhao@rock-chips.com>,
	Johan Jonker <jbx6244@gmail.com>,
	Peter Geis <pgwipeout@gmail.com>,
	Simon Xue <xxm@rock-chips.com>,
	Liang Chen <cl@rock-chips.com>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v5 4/5] arm64: dts: rockchip: rk3568: Add PCIe v3 nodes
Date: Thu, 25 Aug 2022 21:38:35 +0200
Message-Id: <20220825193836.54262-5-linux@fw-web.de>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220825193836.54262-1-linux@fw-web.de>
References: <20220825193836.54262-1-linux@fw-web.de>
MIME-Version: 1.0
X-Mail-ID: 6f5cf5b8-cdf1-4e4c-989f-806817eb6869
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220825_123903_693492_480F58B1 
X-CRM114-Status: GOOD (  10.12  )
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

From: Frank Wunderlich <frank-w@public-files.de>

Add nodes to rk356x devicetree to support PCIe v3.

Signed-off-by: Peter Geis <pgwipeout@gmail.com>
Signed-off-by: Frank Wunderlich <frank-w@public-files.de>
---
v4:
- update pcie3 reg/ranges

v3:
- fix from Peter: change bus-range and msi-map, msi-map needs
  to start from 0x0

v2:
- change to compatible with soc-part
- change rockchip,bifurcation to vendor unspecific bifurcation
---
 arch/arm64/boot/dts/rockchip/rk3568.dtsi | 122 +++++++++++++++++++++++
 1 file changed, 122 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3568.dtsi b/arch/arm64/boot/dts/rockchip/rk3568.dtsi
index 2bdf8c7e9765..ba67b58f05b7 100644
--- a/arch/arm64/boot/dts/rockchip/rk3568.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3568.dtsi
@@ -42,6 +42,128 @@ qos_sata0: qos@fe190200 {
 		reg = <0x0 0xfe190200 0x0 0x20>;
 	};
 
+	pcie30_phy_grf: syscon@fdcb8000 {
+		compatible = "rockchip,rk3568-pcie3-phy-grf", "syscon";
+		reg = <0x0 0xfdcb8000 0x0 0x10000>;
+	};
+
+	pcie30phy: phy@fe8c0000 {
+		compatible = "rockchip,rk3568-pcie3-phy";
+		reg = <0x0 0xfe8c0000 0x0 0x20000>;
+		#phy-cells = <0>;
+		clocks = <&pmucru CLK_PCIE30PHY_REF_M>, <&pmucru CLK_PCIE30PHY_REF_N>,
+			 <&cru PCLK_PCIE30PHY>;
+		clock-names = "refclk_m", "refclk_n", "pclk";
+		resets = <&cru SRST_PCIE30PHY>;
+		reset-names = "phy";
+		rockchip,phy-grf = <&pcie30_phy_grf>;
+		status = "disabled";
+	};
+
+	pcie3x1: pcie@fe270000 {
+		compatible = "rockchip,rk3568-pcie";
+		#address-cells = <3>;
+		#size-cells = <2>;
+		bus-range = <0x0 0xf>;
+		clocks = <&cru ACLK_PCIE30X1_MST>, <&cru ACLK_PCIE30X1_SLV>,
+			 <&cru ACLK_PCIE30X1_DBI>, <&cru PCLK_PCIE30X1>,
+			 <&cru CLK_PCIE30X1_AUX_NDFT>;
+		clock-names = "aclk_mst", "aclk_slv",
+			      "aclk_dbi", "pclk", "aux";
+		device_type = "pci";
+		interrupts = <GIC_SPI 160 IRQ_TYPE_LEVEL_HIGH>,
+			     <GIC_SPI 159 IRQ_TYPE_LEVEL_HIGH>,
+			     <GIC_SPI 158 IRQ_TYPE_LEVEL_HIGH>,
+			     <GIC_SPI 157 IRQ_TYPE_LEVEL_HIGH>,
+			     <GIC_SPI 156 IRQ_TYPE_LEVEL_HIGH>;
+		interrupt-names = "sys", "pmc", "msg", "legacy", "err";
+		#interrupt-cells = <1>;
+		interrupt-map-mask = <0 0 0 7>;
+		interrupt-map = <0 0 0 1 &pcie3x1_intc 0>,
+				<0 0 0 2 &pcie3x1_intc 1>,
+				<0 0 0 3 &pcie3x1_intc 2>,
+				<0 0 0 4 &pcie3x1_intc 3>;
+		linux,pci-domain = <1>;
+		num-ib-windows = <6>;
+		num-ob-windows = <2>;
+		max-link-speed = <3>;
+		msi-map = <0x0 &gic 0x1000 0x1000>;
+		num-lanes = <1>;
+		phys = <&pcie30phy>;
+		phy-names = "pcie-phy";
+		power-domains = <&power RK3568_PD_PIPE>;
+		reg = <0x3 0xc0400000 0x0 0x00400000>,
+		      <0x0 0xfe270000 0x0 0x00010000>,
+		      <0x3 0x7f000000 0x0 0x01000000>;
+		ranges = <0x01000000 0x0 0x3ef00000 0x3 0x7ef00000 0x0 0x00100000>,
+			 <0x02000000 0x0 0x00000000 0x3 0x40000000 0x0 0x3ef00000>;
+		reg-names = "dbi", "apb", "config";
+		resets = <&cru SRST_PCIE30X1_POWERUP>;
+		reset-names = "pipe";
+		/* bifurcation; lane1 when using 1+1 */
+		status = "disabled";
+
+		pcie3x1_intc: legacy-interrupt-controller {
+			interrupt-controller;
+			#address-cells = <0>;
+			#interrupt-cells = <1>;
+			interrupt-parent = <&gic>;
+			interrupts = <GIC_SPI 157 IRQ_TYPE_EDGE_RISING>;
+		};
+	};
+
+	pcie3x2: pcie@fe280000 {
+		compatible = "rockchip,rk3568-pcie";
+		#address-cells = <3>;
+		#size-cells = <2>;
+		bus-range = <0x0 0xf>;
+		clocks = <&cru ACLK_PCIE30X2_MST>, <&cru ACLK_PCIE30X2_SLV>,
+			 <&cru ACLK_PCIE30X2_DBI>, <&cru PCLK_PCIE30X2>,
+			 <&cru CLK_PCIE30X2_AUX_NDFT>;
+		clock-names = "aclk_mst", "aclk_slv",
+			      "aclk_dbi", "pclk", "aux";
+		device_type = "pci";
+		interrupts = <GIC_SPI 165 IRQ_TYPE_LEVEL_HIGH>,
+			     <GIC_SPI 164 IRQ_TYPE_LEVEL_HIGH>,
+			     <GIC_SPI 163 IRQ_TYPE_LEVEL_HIGH>,
+			     <GIC_SPI 162 IRQ_TYPE_LEVEL_HIGH>,
+			     <GIC_SPI 161 IRQ_TYPE_LEVEL_HIGH>;
+		interrupt-names = "sys", "pmc", "msg", "legacy", "err";
+		#interrupt-cells = <1>;
+		interrupt-map-mask = <0 0 0 7>;
+		interrupt-map = <0 0 0 1 &pcie3x2_intc 0>,
+				<0 0 0 2 &pcie3x2_intc 1>,
+				<0 0 0 3 &pcie3x2_intc 2>,
+				<0 0 0 4 &pcie3x2_intc 3>;
+		linux,pci-domain = <2>;
+		num-ib-windows = <6>;
+		num-ob-windows = <2>;
+		max-link-speed = <3>;
+		msi-map = <0x0 &gic 0x2000 0x1000>;
+		num-lanes = <2>;
+		phys = <&pcie30phy>;
+		phy-names = "pcie-phy";
+		power-domains = <&power RK3568_PD_PIPE>;
+		reg = <0x3 0xc0800000 0x0 0x00400000>,
+		      <0x0 0xfe280000 0x0 0x00010000>,
+		      <0x3 0xbf000000 0x0 0x01000000>;
+		ranges = <0x01000000 0x0 0x3ef00000 0x3 0xbef00000 0x0 0x00100000>,
+			 <0x02000000 0x0 0x00000000 0x3 0x80000000 0x0 0x3ef00000>;
+		reg-names = "dbi", "apb", "config";
+		resets = <&cru SRST_PCIE30X2_POWERUP>;
+		reset-names = "pipe";
+		/* bifurcation; lane0 when using 1+1 */
+		status = "disabled";
+
+		pcie3x2_intc: legacy-interrupt-controller {
+			interrupt-controller;
+			#address-cells = <0>;
+			#interrupt-cells = <1>;
+			interrupt-parent = <&gic>;
+			interrupts = <GIC_SPI 162 IRQ_TYPE_EDGE_RISING>;
+		};
+	};
+
 	gmac0: ethernet@fe2a0000 {
 		compatible = "rockchip,rk3568-gmac", "snps,dwmac-4.20a";
 		reg = <0x0 0xfe2a0000 0x0 0x10000>;
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
