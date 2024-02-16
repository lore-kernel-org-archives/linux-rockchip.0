Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5D612C48260
	for <linux-rockchip@archiver.kernel.org>; Fri, 16 Feb 2024 09:52:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=v76cYC9vp45eu22EuRhZznE5yxpjS6/eLyX01jiB/BU=; b=mhhoS91YiX+u7I
	vq3pvQ0/PTw/V4QqINB6QIrIxvwp50XLArk2vyMWKkdlzBkGkZptl+x3X2wnALQw92DefwhYnbYx3
	CU1hXJzwfcq2rLrzs/EV3KG/pS122GrwvrRV7LiGv7XPisVO7K7MrQ/Lm7yoF46S3u+3nvxpONyI7
	iKDoh2qVSl8+L2+iBsBy+vzF0cuAy/tM4zIt+VblSWelGDi7huNBC5O7EndyAKZsx+9Ey1dzl8LvJ
	0XdWTOwsDrdsmDw+Nlu4512KWKqlU0BUY5tHDNb9Y7XFChy70PFRStasQrCWQIXXmemdbzC38kx6U
	Y5FvkhPx3/+EQ+DyDngQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rautY-00000001p70-0L73;
	Fri, 16 Feb 2024 09:52:36 +0000
Received: from madrid.collaboradmins.com ([2a00:1098:ed:100::25])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1raut5-00000001omY-1zi6;
	Fri, 16 Feb 2024 09:52:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1708077126;
	bh=SAX9jxoxsbA2+wx0hIo9Zs7UGKEgB10+fdWYL3Zgv9E=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=bxwEB/N9xrAUdQw1c/wvjcxrsOHvFwDmkRITJSn4Lu/OoPrJlbXnQjz0jcZhWPS75
	 6U94fMl2fDv4Vut3F+9zFHLU6tQ82D53jqVpzLS4tDDdgihpzT16OfdHn9gUpDznN6
	 qkS5ugmJDyXWpqRjEMokCZR+DHN0E3Lb3Ryp6mMPkXz+o8CvbZbjbP/9NmvUY8RRfv
	 EzVlQRjzSReUI52chz5gN1iphX1EfY5ZlDOMp/a2YlAtIlLYIGM9yAh08751z8ZFoH
	 JyJ1lg25k4TVaI1mYMsFl+UAEe5eVWA8/Cm2uooJXVDHKCADJs7Oed7Po9pQotZNCT
	 NinsYSceCldeA==
Received: from shreeya.shreeya (ec2-34-240-57-77.eu-west-1.compute.amazonaws.com [34.240.57.77])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: shreeya)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id D5D8937820B6;
	Fri, 16 Feb 2024 09:52:01 +0000 (UTC)
From: Shreeya Patel <shreeya.patel@collabora.com>
To: heiko@sntech.de,
	mchehab@kernel.org,
	robh@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	mturquette@baylibre.com,
	sboyd@kernel.org,
	p.zabel@pengutronix.de,
	jose.abreu@synopsys.com,
	nelson.costa@synopsys.com,
	dmitry.osipenko@collabora.com,
	sebastian.reichel@collabora.com,
	shawn.wen@rock-chips.com
Cc: kernel@collabora.com,
	linux-kernel@vger.kernel.org,
	linux-media@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-clk@vger.kernel.org,
	linux-dt@vger.kernel.org,
	linux-arm@lists.infradead.org,
	Shreeya Patel <shreeya.patel@collabora.com>
Subject: [PATCH 3/4] arm64: dts: rockchip: Add device tree support for HDMI RX Controller
Date: Fri, 16 Feb 2024 15:19:21 +0530
Message-Id: <20240216094922.257674-4-shreeya.patel@collabora.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240216094922.257674-1-shreeya.patel@collabora.com>
References: <20240216094922.257674-1-shreeya.patel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240216_015207_786713_72464859 
X-CRM114-Status: GOOD (  10.52  )
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

Add device tree support for Synopsys DesignWare HDMI RX
Controller.

Signed-off-by: Dingxian Wen <shawn.wen@rock-chips.com>
Co-developed-by: Shreeya Patel <shreeya.patel@collabora.com>
Reviewed-by: Dmitry Osipenko <dmitry.osipenko@collabora.com>
Tested-by: Dmitry Osipenko <dmitry.osipenko@collabora.com>
Signed-off-by: Shreeya Patel <shreeya.patel@collabora.com>
---
 .../boot/dts/rockchip/rk3588-pinctrl.dtsi     | 41 +++++++++++++++
 arch/arm64/boot/dts/rockchip/rk3588.dtsi      | 50 +++++++++++++++++++
 2 files changed, 91 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-pinctrl.dtsi b/arch/arm64/boot/dts/rockchip/rk3588-pinctrl.dtsi
index 244c66faa161..4fbe194d96b1 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-pinctrl.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588-pinctrl.dtsi
@@ -169,6 +169,47 @@ hdmim0_tx1_sda: hdmim0-tx1-sda {
 				/* hdmim0_tx1_sda */
 				<2 RK_PB4 4 &pcfg_pull_none>;
 		};
+
+		/omit-if-no-ref/
+		hdmim1_rx: hdmim1-rx {
+			rockchip,pins =
+				/* hdmim1_rx_cec */
+				<3 RK_PD1 5 &pcfg_pull_none>,
+				/* hdmim1_rx_scl */
+				<3 RK_PD2 5 &pcfg_pull_none_smt>,
+				/* hdmim1_rx_sda */
+				<3 RK_PD3 5 &pcfg_pull_none_smt>,
+				/* hdmim1_rx_hpdin */
+				<3 RK_PD4 5 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		hdmim1_rx_cec: hdmim1-rx-cec {
+			rockchip,pins =
+				/* hdmim1_rx_cec */
+				<3 RK_PD1 5 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		hdmim1_rx_hpdin: hdmim1-rx-hpdin {
+			rockchip,pins =
+				/* hdmim1_rx_hpdin */
+				<3 RK_PD4 5 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		hdmim1_rx_scl: hdmim1-rx-scl {
+			rockchip,pins =
+				/* hdmim1_rx_scl */
+				<3 RK_PD2 5 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		hdmim1_rx_sda: hdmim1-rx-sda {
+			rockchip,pins =
+				/* hdmim1_rx_sda */
+				<3 RK_PD3 5 &pcfg_pull_none>;
+		};
 	};
 
 	i2c0 {
diff --git a/arch/arm64/boot/dts/rockchip/rk3588.dtsi b/arch/arm64/boot/dts/rockchip/rk3588.dtsi
index 5519c1430cb7..8138b6ee388f 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588.dtsi
@@ -7,6 +7,24 @@
 #include "rk3588-pinctrl.dtsi"
 
 / {
+	reserved-memory {
+		#address-cells = <2>;
+		#size-cells = <2>;
+		ranges;
+		/*
+		 * The 4k HDMI capture controller works only with 32bit
+		 * phys addresses and doesn't support IOMMU. HDMI RX CMA
+		 * must be reserved below 4GB.
+		 */
+		hdmirx_cma: hdmirx_cma {
+			compatible = "shared-dma-pool";
+			alloc-ranges = <0x0 0x0 0x0 0xffffffff>;
+			size = <0x0 (160 * 0x100000)>; /* 160MiB */
+			no-map;
+			status = "disabled";
+		};
+	};
+
 	pcie30_phy_grf: syscon@fd5b8000 {
 		compatible = "rockchip,rk3588-pcie3-phy-grf", "syscon";
 		reg = <0x0 0xfd5b8000 0x0 0x10000>;
@@ -85,6 +103,38 @@ i2s10_8ch: i2s@fde00000 {
 		status = "disabled";
 	};
 
+	hdmirx_ctrler: hdmirx-controller@fdee0000 {
+		compatible = "rockchip,rk3588-hdmirx-ctrler", "snps,dw-hdmi-rx";
+		reg = <0x0 0xfdee0000 0x0 0x6000>;
+		power-domains = <&power RK3588_PD_VO1>;
+		rockchip,grf = <&sys_grf>;
+		rockchip,vo1_grf = <&vo1_grf>;
+		interrupts = <GIC_SPI 177 IRQ_TYPE_LEVEL_HIGH 0>,
+			     <GIC_SPI 436 IRQ_TYPE_LEVEL_HIGH 0>,
+			     <GIC_SPI 179 IRQ_TYPE_LEVEL_HIGH 0>;
+		interrupt-names = "cec", "hdmi", "dma";
+		clocks = <&cru ACLK_HDMIRX>,
+			 <&cru CLK_HDMIRX_AUD>,
+			 <&cru CLK_CR_PARA>,
+			 <&cru PCLK_HDMIRX>,
+			 <&cru CLK_HDMIRX_REF>,
+			 <&cru PCLK_S_HDMIRX>,
+			 <&cru HCLK_VO1>;
+		clock-names = "aclk",
+			      "audio",
+			      "cr_para",
+			      "pclk",
+			      "ref",
+			      "hclk_s_hdmirx",
+			      "hclk_vo1";
+		resets = <&cru SRST_A_HDMIRX>, <&cru SRST_P_HDMIRX>,
+			 <&cru SRST_HDMIRX_REF>, <&cru SRST_A_HDMIRX_BIU>;
+		reset-names = "rst_a", "rst_p", "rst_ref", "rst_biu";
+		pinctrl-0 = <&hdmim1_rx>;
+		pinctrl-names = "default";
+		status = "disabled";
+	};
+
 	pcie3x4: pcie@fe150000 {
 		compatible = "rockchip,rk3588-pcie", "rockchip,rk3568-pcie";
 		#address-cells = <3>;
-- 
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
