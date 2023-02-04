Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 12392C61DA4
	for <linux-rockchip@archiver.kernel.org>; Sat,  4 Feb 2023 08:49:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lQwR3qm0SywDGY+I+fggetYzhRjJGqJ0d1vi06RFHik=; b=jwcJaCY57QJsCT
	zgPZHETtwOx2+8Bn8RI7/UDwHKois4NUiIWxAdOcj6TwJMuhKfBJabIHTIOzDh2V3O5wvYHj0YgCA
	XNy7RRiRerh/LRHkGRmVLa7mhMkv2/OxvE7Pq1yohqoG6DWZv4hXi0JL8/uzUtThh9euZzO5RgVGt
	sxqgBeThfQrpDiJklxEpMyuqH7v/cO7zMayt5XXGDQ9HP7CXRTxKSE95ZSuUjcp34PXGzNKVfN+py
	o8FozaJT1jCMeAT/5PHQf5S0XYuZj4JNtZ0+nLGvbDx4Nv1MWUS9/zpNPhARAq+tDsQskcjIk1l3X
	ExRuRFj6fLwN9BcQNBvg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pOEES-004kXr-KP; Sat, 04 Feb 2023 08:49:12 +0000
Received: from smtp-out1.suse.de ([195.135.220.28])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pOEDl-004kHp-NM; Sat, 04 Feb 2023 08:48:31 +0000
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
	(No client certificate requested)
	by smtp-out1.suse.de (Postfix) with ESMTPS id BE6BD38288;
	Sat,  4 Feb 2023 08:48:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.com; s=susede1;
	t=1675500507; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=HWO66ufv+5b4i35dkcrzDpCfgBQgEkUbxJLcbiZMd7I=;
	b=lQ2ti8IM3Ku9Wh0u7z9SIICadQ8WM8rPBonUpBjRZickyyR+m6+s7WEDn4b79Qxrrhe9h9
	GZR0NIK896oJk+dYyFJs88nZz9dYagj9F3cHnPSL9m6HohlecSMG9MQVWGFZBzjhg5eFvx
	gWlSM3RtO2HNpO3fPqzNgbgFkN2IQR4=
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
	(No client certificate requested)
	by imap2.suse-dmz.suse.de (Postfix) with ESMTPS id 7AEEB133F5;
	Sat,  4 Feb 2023 08:48:26 +0000 (UTC)
Received: from dovecot-director2.suse.de ([192.168.254.65])
	by imap2.suse-dmz.suse.de with ESMTPSA
	id iMNBE9ob3mMKLAAAMHmgww
	(envelope-from <wqu@suse.com>); Sat, 04 Feb 2023 08:48:26 +0000
From: Qu Wenruo <wqu@suse.com>
To: linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org
Cc: sebastian.reichel@collabora.com,
	heiko@sntech.de
Subject: [PATCH RFC 4/5] arm64: dts: rockchip: add PCIE3 controller and phy for RK3588
Date: Sat,  4 Feb 2023 16:48:01 +0800
Message-Id: <e80a5a9df824cecdb66e0f13e060d522399465ef.1675498628.git.wqu@suse.com>
X-Mailer: git-send-email 2.39.1
In-Reply-To: <cover.1675498628.git.wqu@suse.com>
References: <cover.1675498628.git.wqu@suse.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230204_004829_996664_FA681DD7 
X-CRM114-Status: GOOD (  12.62  )
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

RK3588 has one PCIE3 x4 lanes, with one dedicated PCIE phy.

This introduces the following needed nodes:

- its0 and its1 sub-nodes of gic

- pcie30_phy_grf node
  With the existing rk3588-pcie3-phy-grf compatible string.

- pcie3x4 and pcie3x2 nodes
  The main nodes for the pcie controller.
  They share the same phy, thus only one of them can be enabled.

- pcie30phy node
  It's the dedicated PCIE phy.

The differences between upstream and downstream dts are:

- The interrupt cells
  Upstream has two ppi partitions, thus requires #interrupt-cells = <4>
  to specify which partition is preferred.

- The configuration space
  The downstream goes with an invalid range window, and modifies
  DesignWare driver to use that invalid range as configure space.

  Change the cursed method to use the proper "config" reg.

- Reg names
  The downstream always has unnecessary "pcie-" prefix, while upstream
  DesignWare driver never checks such prefix.

Signed-off-by: Qu Wenruo <wqu@suse.com>
---
 arch/arm64/boot/dts/rockchip/rk3588.dtsi  | 128 ++++++++++++++++++++++
 arch/arm64/boot/dts/rockchip/rk3588s.dtsi |  16 +++
 2 files changed, 144 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588.dtsi b/arch/arm64/boot/dts/rockchip/rk3588.dtsi
index d085e57fbc4c..371d7330a498 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588.dtsi
@@ -7,6 +7,121 @@
 #include "rk3588-pinctrl.dtsi"
 
 / {
+	pcie30_phy_grf: syscon@fd5b8000 {
+		compatible = "rockchip,rk3588-pcie3-phy-grf", "syscon";
+		reg = <0x0 0xfd5b8000 0x0 0x10000>;
+	};
+
+	pcie3x4: pcie@fe150000 {
+		compatible = "rockchip,rk3588-pcie";
+		#address-cells = <3>;
+		#size-cells = <2>;
+		bus-range = <0x00 0x0f>;
+		clocks = <&cru ACLK_PCIE_4L_MSTR>, <&cru ACLK_PCIE_4L_SLV>,
+			 <&cru ACLK_PCIE_4L_DBI>, <&cru PCLK_PCIE_4L>,
+			 <&cru CLK_PCIE_AUX0>, <&cru CLK_PCIE4L_PIPE>;
+		clock-names = "aclk_mst", "aclk_slv",
+			      "aclk_dbi", "pclk",
+			      "aux", "pipe";
+		device_type = "pci";
+		interrupts = <GIC_SPI 263 IRQ_TYPE_LEVEL_HIGH 0>,
+			     <GIC_SPI 262 IRQ_TYPE_LEVEL_HIGH 0>,
+			     <GIC_SPI 261 IRQ_TYPE_LEVEL_HIGH 0>,
+			     <GIC_SPI 260 IRQ_TYPE_LEVEL_HIGH 0>,
+			     <GIC_SPI 259 IRQ_TYPE_LEVEL_HIGH 0>;
+		interrupt-names = "sys", "pmc", "msg", "legacy", "err";
+		#interrupt-cells = <1>;
+		interrupt-map-mask = <0 0 0 7>;
+		interrupt-map = <0 0 0 1 &pcie3x4_intc 0>,
+				<0 0 0 2 &pcie3x4_intc 1>,
+				<0 0 0 3 &pcie3x4_intc 2>,
+				<0 0 0 4 &pcie3x4_intc 3>;
+		linux,pci-domain = <0>;
+		num-ib-windows = <16>;
+		num-ob-windows = <16>;
+		num-viewport = <8>;
+		max-link-speed = <3>;
+		msi-map = <0x0000 &its1 0x0000 0x1000>;
+		num-lanes = <4>;
+		phys = <&pcie30phy>;
+		phy-names = "pcie-phy";
+		power-domains = <&power RK3588_PD_PCIE>;
+		ranges = <0x81000000 0x0 0xf0100000 0x0 0xf0100000 0x0 0x100000
+			  0x82000000 0x0 0xf0200000 0x0 0xf0200000 0x0 0xe00000
+			  0xc3000000 0x9 0x00000000 0x9 0x00000000 0x0 0x40000000>;
+		reg = <0x0 0xfe150000 0x0 0x10000>,
+		      <0xa 0x40000000 0x0 0x400000>,
+		      <0x0 0xf0000000 0x0 0x100000>;
+		reg-names = "apb", "dbi", "config";
+		resets = <&cru SRST_PCIE0_POWER_UP>, <&cru SRST_P_PCIE0>;
+		reset-names = "pcie", "periph";
+		rockchip,pipe-grf = <&php_grf>;
+		status = "disabled";
+
+		pcie3x4_intc: legacy-interrupt-controller {
+			interrupt-controller;
+			#address-cells = <0>;
+			#interrupt-cells = <1>;
+			interrupt-parent = <&gic>;
+			interrupts = <GIC_SPI 260 IRQ_TYPE_EDGE_RISING 0>;
+		};
+	};
+
+	pcie3x2: pcie@fe160000 {
+		compatible = "rockchip,rk3588-pcie", "snps,dw-pcie";
+		#address-cells = <3>;
+		#size-cells = <2>;
+		bus-range = <0x10 0x1f>;
+		clocks = <&cru ACLK_PCIE_2L_MSTR>, <&cru ACLK_PCIE_2L_SLV>,
+			 <&cru ACLK_PCIE_2L_DBI>, <&cru PCLK_PCIE_2L>,
+			 <&cru CLK_PCIE_AUX1>, <&cru CLK_PCIE2L_PIPE>;
+		clock-names = "aclk_mst", "aclk_slv",
+			      "aclk_dbi", "pclk",
+			      "aux", "pipe";
+		device_type = "pci";
+		interrupts = <GIC_SPI 258 IRQ_TYPE_LEVEL_HIGH 0>,
+			     <GIC_SPI 257 IRQ_TYPE_LEVEL_HIGH 0>,
+			     <GIC_SPI 256 IRQ_TYPE_LEVEL_HIGH 0>,
+			     <GIC_SPI 255 IRQ_TYPE_LEVEL_HIGH 0>,
+			     <GIC_SPI 254 IRQ_TYPE_LEVEL_HIGH 0>;
+		interrupt-names = "sys", "pmc", "msg", "legacy", "err";
+		#interrupt-cells = <1>;
+		interrupt-map-mask = <0 0 0 7>;
+		interrupt-map = <0 0 0 1 &pcie3x2_intc 0>,
+				<0 0 0 2 &pcie3x2_intc 1>,
+				<0 0 0 3 &pcie3x2_intc 2>,
+				<0 0 0 4 &pcie3x2_intc 3>;
+		linux,pci-domain = <1>;
+		num-ib-windows = <16>;
+		num-ob-windows = <16>;
+		num-viewport = <8>;
+		max-link-speed = <3>;
+		msi-map = <0x1000 &its1 0x1000 0x1000>;
+		num-lanes = <2>;
+		phys = <&pcie30phy>;
+		phy-names = "pcie-phy";
+		power-domains = <&power RK3588_PD_PCIE>;
+		ranges = <0x81000000 0x0 0xf1100000 0x0 0xf1100000 0x0 0x100000
+			  0x82000000 0x0 0xf1200000 0x0 0xf1200000 0x0 0xe00000
+			  0xc3000000 0x9 0x40000000 0x9 0x40000000 0x0 0x40000000>;
+		reg = <0x0 0xfe160000 0x0 0x10000>,
+		      <0xa 0x40400000 0x0 0x400000>,
+		      <0x0 0xf1000000 0x0 0x100000>;
+		reg-names = "apb", "dbi", "config";
+		resets = <&cru SRST_PCIE1_POWER_UP>, <&cru SRST_P_PCIE1>;
+		reset-names = "pcie", "periph";
+		rockchip,pipe-grf = <&php_grf>;
+		status = "disabled";
+
+		pcie3x2_intc: legacy-interrupt-controller {
+			interrupt-controller;
+			#address-cells = <0>;
+			#interrupt-cells = <1>;
+			interrupt-parent = <&gic>;
+			interrupts = <GIC_SPI 255 IRQ_TYPE_EDGE_RISING 0>;
+		};
+	};
+
 	gmac0: ethernet@fe1b0000 {
 		compatible = "rockchip,rk3588-gmac", "snps,dwmac-4.20a";
 		reg = <0x0 0xfe1b0000 0x0 0x10000>;
@@ -55,4 +170,17 @@ gmac0_mtl_tx_setup: tx-queues-config {
 			queue1 {};
 		};
 	};
+
+	pcie30phy: phy@fee80000 {
+		compatible = "rockchip,rk3588-pcie3-phy";
+		reg = <0x0 0xfee80000 0x0 0x20000>;
+		#phy-cells = <0>;
+		clocks = <&cru PCLK_PCIE_COMBO_PIPE_PHY>;
+		clock-names = "pclk";
+		resets = <&cru SRST_PCIE30_PHY>;
+		reset-names = "phy";
+		rockchip,pipe-grf = <&php_grf>;
+		rockchip,phy-grf = <&pcie30_phy_grf>;
+		status = "disabled";
+	};
 };
diff --git a/arch/arm64/boot/dts/rockchip/rk3588s.dtsi b/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
index 24919cb5c153..3af31e12d04c 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
@@ -1594,6 +1594,22 @@ gic: interrupt-controller@fe600000 {
 		mbi-ranges = <424 56>;
 		msi-controller;
 		#interrupt-cells = <4>;
+		#address-cells = <2>;
+		#size-cells = <2>;
+
+		its0: interrupt-controller@fe640000 {
+			compatible = "arm,gic-v3-its";
+			msi-controller;
+			#msi-cells = <1>;
+			reg = <0x0 0xfe640000 0x0 0x20000>;
+		};
+
+		its1: interrupt-controller@fe660000 {
+			compatible = "arm,gic-v3-its";
+			msi-controller;
+			#msi-cells = <1>;
+			reg = <0x0 0xfe660000 0x0 0x20000>;
+		};
 
 		ppi-partitions {
 			ppi_partition0: interrupt-partition-0 {
-- 
2.39.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
