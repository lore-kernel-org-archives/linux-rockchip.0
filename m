Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 05FADC43334
	for <linux-rockchip@archiver.kernel.org>; Sun, 19 Jun 2022 08:27:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3+Fca/JvFch1agPXopGDt/PShyyu2wN5b/1KLAgDbHI=; b=BzPOa3//vFZNSr
	PrqcSb8RkiZRhjEAvYGhmMGpz/KzCKIRuSCkryhldJa4Zb0ujYB6tT+o9b9tZSnxT93pUJz8tXN6H
	H/TTWR2J8IPZQO76kQEexy9+EALsfeH7V6xlVpwSdv2osfw+E4DCtLYiAbw3C5qIW5EoFek4oJ1gz
	Vt4PCVjdZPECbf286WLTR2eGsObC4u4rg4RRv5P70WIX/KlCbTohtNvpG0d78esWEZLe/xksIROCA
	hyTkO8pcetigUUSbZqIweMLvxZISnXd4yNqoKf06TQNx7V+sMk4OIDOTYXt4Y3Hz3l9yJq1UuQ3J/
	3ZaVE6DFK/ztMQiUCXDw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o2qH0-00Daf6-22; Sun, 19 Jun 2022 08:27:10 +0000
Received: from mxout3.routing.net ([2a03:2900:1:a::8])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o2qGK-00DaMn-SQ; Sun, 19 Jun 2022 08:26:31 +0000
Received: from mxbox2.masterlogin.de (unknown [192.168.10.89])
	by mxout3.routing.net (Postfix) with ESMTP id 07C4B6005D;
	Sun, 19 Jun 2022 08:26:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mailerdienst.de;
	s=20200217; t=1655627180;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=MObysxFrMSSxxojyXx/k2lns89uVHtCedLLQwnNeQzw=;
	b=dSslP97cX409h15pUItAk2gtWxJ3HIRkXdJiK+TQr6q0JcWJRcJmdlHMHl9MIM6OM7qkxu
	aveu86sTFIjpBESzt3UsN6sM9tyvY9odwpFjF7OKcyZgr2E8zebpF1yC5KyRw38FCAcof5
	w1ek7rxDMIG+OMr2WE47XGOAJUrs3Y4=
Received: from frank-G5.. (fttx-pool-157.180.227.195.bambit.de [157.180.227.195])
	by mxbox2.masterlogin.de (Postfix) with ESMTPSA id 0D09C10054D;
	Sun, 19 Jun 2022 08:26:18 +0000 (UTC)
From: Frank Wunderlich <linux@fw-web.de>
To: linux-rockchip@lists.infradead.org
Cc: Frank Wunderlich <frank-w@public-files.de>,
	Kishon Vijay Abraham I <kishon@ti.com>,
	Vinod Koul <vkoul@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Johan Jonker <jbx6244@gmail.com>,
	Yifeng Zhao <yifeng.zhao@rock-chips.com>,
	Peter Geis <pgwipeout@gmail.com>,
	Michael Riesch <michael.riesch@wolfvision.net>,
	Liang Chen <cl@rock-chips.com>,
	Simon Xue <xxm@rock-chips.com>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v4 4/5] arm64: dts: rockchip: rk3568: Add PCIe v3 nodes
Date: Sun, 19 Jun 2022 10:26:04 +0200
Message-Id: <20220619082605.7935-5-linux@fw-web.de>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220619082605.7935-1-linux@fw-web.de>
References: <20220619082605.7935-1-linux@fw-web.de>
MIME-Version: 1.0
X-Mail-ID: 9bc0433d-bfc7-47ef-8d70-fe93204cb928
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220619_012629_267117_25F32301 
X-CRM114-Status: UNSURE (   9.62  )
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

From: Frank Wunderlich <frank-w@public-files.de>

Add nodes to rk356x devicetree to support PCIe v3.

Co-developed-by: Peter Geis <pgwipeout@gmail.com>
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
index 5eafddf62edc..3f568f6747f6 100644
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
