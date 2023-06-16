Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 44000EB64D7
	for <linux-rockchip@archiver.kernel.org>; Fri, 16 Jun 2023 17:01:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=El+xZRRsHFetIIorF3vpM3li9ICTqBln1Q9D+IZYW4c=; b=djyRg+zaDyaBAG
	OCDrNZgIIm4ah4aDA2EVe0DNAdmYF2iMxJynlHt2jGbm/FDJAFjrWt2d4ZoShwTAjPfDh6sKYfBqs
	x9zWEALlmyyUGVskmuqThM0Kwx7Uya0HZ1fLYoCZu9naIAhiSZuNIvgR4C3Vj9t3G2My+yOuTIdRu
	jvtyjekvudBYMVTBOC6nFGLs0WT7l4pYFj55lwiM1+A9SmdwmsmGLqaHPW+ca9lxXN6QUCQPFqcjD
	H8O3WhPbr+2K9dFXVQQ8GVxu07dTtGU0uryoWrDef3snp0t8mhSAgq8+ZLOrRRV1qFEDy7PXTCmdt
	tP9iblZ3sio6Unun5pZw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qACoy-001DWw-2M;
	Fri, 16 Jun 2023 17:01:12 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qACoX-001DHZ-0m;
	Fri, 16 Jun 2023 17:00:48 +0000
Received: from jupiter.universe (dyndsl-091-248-215-052.ewe-ip-backbone.de [91.248.215.52])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sre)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 7192F6606F87;
	Fri, 16 Jun 2023 18:00:41 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1686934841;
	bh=9mgF9GCwROw6ftx0dsG82gZvHnEiFDB9jVgcEpCCtLw=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=hkSnKHIN5N2V3Qf8XCSs8gZcfJmWlMdoLvOny4DOPwLr8TRtN56w7iQA+e0h6s6mk
	 L5/Z/7Wl/owHaFypzrKujD+hVA3SgesTG7D+DRBLuoRlIF0+n75XRThCMIf56x7OOM
	 3EWTP7AnY0iTRqA7gssyzXe/zoir/HB2KLzJNmcwTIHkM11Rwi+e1AvDJVgj52XMsl
	 ZTBRjFjfy2lauZGv5y2QqE5KOVd9ZUKYfxRiAej+I2UlRjH5Lm/HvqQwywwk6YXz81
	 TFE26xh0SbT8HhbOIQnhoEESSiPa3n7eac+HT4ieiWsIEOjNthQBGt8UiCfbiNHJXU
	 VJvlr0enVimJQ==
Received: by jupiter.universe (Postfix, from userid 1000)
	id 15BA548059A; Fri, 16 Jun 2023 19:00:39 +0200 (CEST)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: linux-pci@vger.kernel.org,
	linux-rockchip@lists.infradead.org
Cc: Jingoo Han <jingoohan1@gmail.com>,
	Gustavo Pimentel <gustavo.pimentel@synopsys.com>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	=?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	Simon Xue <xxm@rock-chips.com>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	kernel@collabora.com,
	Kever Yang <kever.yang@rock-chips.com>
Subject: [PATCH v1 4/4] arm64: dts: rockchip: rk3588: add PCIe2 support
Date: Fri, 16 Jun 2023 19:00:22 +0200
Message-Id: <20230616170022.76107-5-sebastian.reichel@collabora.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230616170022.76107-1-sebastian.reichel@collabora.com>
References: <20230616170022.76107-1-sebastian.reichel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230616_100045_543260_E78A45B0 
X-CRM114-Status: GOOD (  11.90  )
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

Add all three PCIe2 IP blocks to the RK3588 DT. Note, that RK3588
also has two PCIe3 IP blocks, that will be handled separately.

Co-developed-by: Kever Yang <kever.yang@rock-chips.com>
Signed-off-by: Kever Yang <kever.yang@rock-chips.com>
Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
 arch/arm64/boot/dts/rockchip/rk3588.dtsi  |  54 +++++++++++
 arch/arm64/boot/dts/rockchip/rk3588s.dtsi | 108 ++++++++++++++++++++++
 2 files changed, 162 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588.dtsi b/arch/arm64/boot/dts/rockchip/rk3588.dtsi
index b9508cea34f1..40fee1367b34 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588.dtsi
@@ -80,6 +80,60 @@ i2s10_8ch: i2s@fde00000 {
 		status = "disabled";
 	};
 
+	pcie2x1l0: pcie@fe170000 {
+		compatible = "rockchip,rk3588-pcie", "rockchip,rk3568-pcie";
+		#address-cells = <3>;
+		#size-cells = <2>;
+		bus-range = <0x20 0x2f>;
+		clocks = <&cru ACLK_PCIE_1L0_MSTR>, <&cru ACLK_PCIE_1L0_SLV>,
+			 <&cru ACLK_PCIE_1L0_DBI>, <&cru PCLK_PCIE_1L0>,
+			 <&cru CLK_PCIE_AUX2>, <&cru CLK_PCIE1L0_PIPE>;
+		clock-names = "aclk_mst", "aclk_slv",
+			      "aclk_dbi", "pclk",
+			      "aux", "pipe";
+		device_type = "pci";
+		interrupts = <GIC_SPI 243 IRQ_TYPE_LEVEL_HIGH 0>,
+			     <GIC_SPI 242 IRQ_TYPE_LEVEL_HIGH 0>,
+			     <GIC_SPI 241 IRQ_TYPE_LEVEL_HIGH 0>,
+			     <GIC_SPI 240 IRQ_TYPE_LEVEL_HIGH 0>,
+			     <GIC_SPI 239 IRQ_TYPE_LEVEL_HIGH 0>;
+		interrupt-names = "sys", "pmc", "msg", "legacy", "err";
+		#interrupt-cells = <1>;
+		interrupt-map-mask = <0 0 0 7>;
+		interrupt-map = <0 0 0 1 &pcie2x1l0_intc 0>,
+				<0 0 0 2 &pcie2x1l0_intc 1>,
+				<0 0 0 3 &pcie2x1l0_intc 2>,
+				<0 0 0 4 &pcie2x1l0_intc 3>;
+		linux,pci-domain = <2>;
+		num-ib-windows = <8>;
+		num-ob-windows = <8>;
+		num-viewport = <4>;
+		max-link-speed = <2>;
+		msi-map = <0x2000 &its0 0x2000 0x1000>;
+		num-lanes = <1>;
+		phys = <&combphy1_ps PHY_TYPE_PCIE>;
+		phy-names = "pcie-phy";
+		power-domains = <&power RK3588_PD_PCIE>;
+		ranges = <0x01000000 0x0 0xf2100000 0x0 0xf2100000 0x0 0x00100000>,
+			 <0x02000000 0x0 0xf2200000 0x0 0xf2200000 0x0 0x00e00000>,
+			 <0x03000000 0x9 0x80000000 0x9 0x80000000 0x0 0x40000000>;
+		reg = <0xa 0x40800000 0x0 0x00400000>,
+		      <0x0 0xfe170000 0x0 0x00010000>,
+		      <0x0 0xf2000000 0x0 0x00100000>;
+		reg-names = "dbi", "apb", "config";
+		resets = <&cru SRST_PCIE2_POWER_UP>, <&cru SRST_P_PCIE2>;
+		reset-names = "pwr", "pipe";
+		status = "disabled";
+
+		pcie2x1l0_intc: legacy-interrupt-controller {
+			interrupt-controller;
+			#address-cells = <0>;
+			#interrupt-cells = <1>;
+			interrupt-parent = <&gic>;
+			interrupts = <GIC_SPI 240 IRQ_TYPE_EDGE_RISING 0>;
+		};
+	};
+
 	gmac0: ethernet@fe1b0000 {
 		compatible = "rockchip,rk3588-gmac", "snps,dwmac-4.20a";
 		reg = <0x0 0xfe1b0000 0x0 0x10000>;
diff --git a/arch/arm64/boot/dts/rockchip/rk3588s.dtsi b/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
index a73b17f597af..b5fdc046d8f7 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
@@ -1670,6 +1670,114 @@ qos_vop_m1: qos@fdf82200 {
 		reg = <0x0 0xfdf82200 0x0 0x20>;
 	};
 
+	pcie2x1l1: pcie@fe180000 {
+		compatible = "rockchip,rk3588-pcie", "rockchip,rk3568-pcie";
+		#address-cells = <3>;
+		#size-cells = <2>;
+		bus-range = <0x30 0x3f>;
+		clocks = <&cru ACLK_PCIE_1L1_MSTR>, <&cru ACLK_PCIE_1L1_SLV>,
+			 <&cru ACLK_PCIE_1L1_DBI>, <&cru PCLK_PCIE_1L1>,
+			 <&cru CLK_PCIE_AUX3>, <&cru CLK_PCIE1L1_PIPE>;
+		clock-names = "aclk_mst", "aclk_slv",
+			      "aclk_dbi", "pclk",
+			      "aux", "pipe";
+		device_type = "pci";
+		interrupts = <GIC_SPI 248 IRQ_TYPE_LEVEL_HIGH 0>,
+			     <GIC_SPI 247 IRQ_TYPE_LEVEL_HIGH 0>,
+			     <GIC_SPI 246 IRQ_TYPE_LEVEL_HIGH 0>,
+			     <GIC_SPI 245 IRQ_TYPE_LEVEL_HIGH 0>,
+			     <GIC_SPI 244 IRQ_TYPE_LEVEL_HIGH 0>;
+		interrupt-names = "sys", "pmc", "msg", "legacy", "err";
+		#interrupt-cells = <1>;
+		interrupt-map-mask = <0 0 0 7>;
+		interrupt-map = <0 0 0 1 &pcie2x1l1_intc 0>,
+				<0 0 0 2 &pcie2x1l1_intc 1>,
+				<0 0 0 3 &pcie2x1l1_intc 2>,
+				<0 0 0 4 &pcie2x1l1_intc 3>;
+		linux,pci-domain = <3>;
+		num-ib-windows = <8>;
+		num-ob-windows = <8>;
+		num-viewport = <4>;
+		max-link-speed = <2>;
+		msi-map = <0x3000 &its0 0x3000 0x1000>;
+		num-lanes = <1>;
+		phys = <&combphy2_psu PHY_TYPE_PCIE>;
+		phy-names = "pcie-phy";
+		power-domains = <&power RK3588_PD_PCIE>;
+		ranges = <0x01000000 0x0 0xf3100000 0x0 0xf3100000 0x0 0x00100000>,
+			 <0x02000000 0x0 0xf3200000 0x0 0xf3200000 0x0 0x00e00000>,
+			 <0x03000000 0x9 0xc0000000 0x9 0xc0000000 0x0 0x40000000>;
+		reg = <0xa 0x40c00000 0x0 0x00400000>,
+		      <0x0 0xfe180000 0x0 0x00010000>,
+		      <0x0 0xf3000000 0x0 0x00100000>;
+		reg-names = "dbi", "apb", "config";
+		resets = <&cru SRST_PCIE3_POWER_UP>, <&cru SRST_P_PCIE3>;
+		reset-names = "pwr", "pipe";
+		status = "disabled";
+
+		pcie2x1l1_intc: legacy-interrupt-controller {
+			interrupt-controller;
+			#address-cells = <0>;
+			#interrupt-cells = <1>;
+			interrupt-parent = <&gic>;
+			interrupts = <GIC_SPI 245 IRQ_TYPE_EDGE_RISING 0>;
+		};
+	};
+
+	pcie2x1l2: pcie@fe190000 {
+		compatible = "rockchip,rk3588-pcie", "rockchip,rk3568-pcie";
+		#address-cells = <3>;
+		#size-cells = <2>;
+		bus-range = <0x40 0x4f>;
+		clocks = <&cru ACLK_PCIE_1L2_MSTR>, <&cru ACLK_PCIE_1L2_SLV>,
+			 <&cru ACLK_PCIE_1L2_DBI>, <&cru PCLK_PCIE_1L2>,
+			 <&cru CLK_PCIE_AUX4>, <&cru CLK_PCIE1L2_PIPE>;
+		clock-names = "aclk_mst", "aclk_slv",
+			      "aclk_dbi", "pclk",
+			      "aux", "pipe";
+		device_type = "pci";
+		interrupts = <GIC_SPI 253 IRQ_TYPE_LEVEL_HIGH 0>,
+			     <GIC_SPI 252 IRQ_TYPE_LEVEL_HIGH 0>,
+			     <GIC_SPI 251 IRQ_TYPE_LEVEL_HIGH 0>,
+			     <GIC_SPI 250 IRQ_TYPE_LEVEL_HIGH 0>,
+			     <GIC_SPI 249 IRQ_TYPE_LEVEL_HIGH 0>;
+		interrupt-names = "sys", "pmc", "msg", "legacy", "err";
+		#interrupt-cells = <1>;
+		interrupt-map-mask = <0 0 0 7>;
+		interrupt-map = <0 0 0 1 &pcie2x1l2_intc 0>,
+				<0 0 0 2 &pcie2x1l2_intc 1>,
+				<0 0 0 3 &pcie2x1l2_intc 2>,
+				<0 0 0 4 &pcie2x1l2_intc 3>;
+		linux,pci-domain = <4>;
+		num-ib-windows = <8>;
+		num-ob-windows = <8>;
+		num-viewport = <4>;
+		max-link-speed = <2>;
+		msi-map = <0x4000 &its0 0x4000 0x1000>;
+		num-lanes = <1>;
+		phys = <&combphy0_ps PHY_TYPE_PCIE>;
+		phy-names = "pcie-phy";
+		power-domains = <&power RK3588_PD_PCIE>;
+		ranges = <0x01000000 0x0 0xf4100000 0x0 0xf4100000 0x0 0x00100000>,
+			 <0x02000000 0x0 0xf4200000 0x0 0xf4200000 0x0 0x00e00000>,
+			 <0x03000000 0xa 0x00000000 0xa 0x00000000 0x0 0x40000000>;
+		reg = <0xa 0x41000000 0x0 0x00400000>,
+		      <0x0 0xfe190000 0x0 0x00010000>,
+		      <0x0 0xf4000000 0x0 0x00100000>;
+		reg-names = "dbi", "apb", "config";
+		resets = <&cru SRST_PCIE4_POWER_UP>, <&cru SRST_P_PCIE4>;
+		reset-names = "pwr", "pipe";
+		status = "disabled";
+
+		pcie2x1l2_intc: legacy-interrupt-controller {
+			interrupt-controller;
+			#address-cells = <0>;
+			#interrupt-cells = <1>;
+			interrupt-parent = <&gic>;
+			interrupts = <GIC_SPI 250 IRQ_TYPE_EDGE_RISING 0>;
+		};
+	};
+
 	gmac1: ethernet@fe1c0000 {
 		compatible = "rockchip,rk3588-gmac", "snps,dwmac-4.20a";
 		reg = <0x0 0xfe1c0000 0x0 0x10000>;
-- 
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
