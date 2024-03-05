Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4B0ADC54E41
	for <linux-rockchip@archiver.kernel.org>; Tue,  5 Mar 2024 12:38:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3F+iWveNmHP6PXk5/sT4S4KFblE9ItK55Jj6ThCwh1U=; b=hcvLSWoWfL38Gh
	DX12/Q6X35+ULfdVWNBMODFb8ILZjkT/x1uZXDV8r2DVM9TRNp10Hu/CpDJT3zkJNScfO3IuHX67q
	yYJE9lUgdNuLXXIDDQSpGAByDFVduOG+ELw9hH9ZPM5oZcp1AF05zEF3zIAuj2gmhRqXCdo/kqf/l
	+sEX8ULQohuAYC9/FlgOFvbMGUrulWeHm6tCvJoEh41nPHM0qm24E/9NYzGqJw9ofqwi9UEz2Dnru
	Yrl5r4kF/vzReY2aXVOEAa5lqyMi6nsPiTND0Q6RYGUP6U5JpQ+0xK+LfDxem4h26UUhrYabkSOGE
	OTAi5SNC7JYC2NEUbvxw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhU44-0000000Dbas-0djQ;
	Tue, 05 Mar 2024 12:38:36 +0000
Received: from madrid.collaboradmins.com ([2a00:1098:ed:100::25])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhU3z-0000000DbWn-0ZL3;
	Tue, 05 Mar 2024 12:38:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1709642309;
	bh=nObtFg8naNRmV3MprbT9+jFP4Cfa0klz+xgufazj/DA=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=JGcHcdqS580MoUlesY3bQbhKysgcSHV7F82LglGj5ZOegPunlosxe4c4riQP/7q9c
	 z8YXO+6s8e5/mmwnBAYFhNl48CNST55gG9uCKdM3AWJMn1ZIO6zrKS2/cLSLM94CFY
	 UjAAl+yA1l+mzha5xANcQbbaaG3JAg4pw4Ymprcm+N9SLGcrgnbHY6fnqPD5HpQ7Cx
	 J4Rw4+jUS0pOMHT2UvJ8/lGchgtRJgFuy38vz8SGupbEnluqV5SPLRFmWr5kxmss/q
	 +f5Kiy0FFwqDSAETT9BgsfPoB8POfKFyJmhWRYhJWC5zNSi41l105wVHkL+Zcoi401
	 if4v+MbI8spsA==
Received: from shreeya.shreeya (ec2-34-240-57-77.eu-west-1.compute.amazonaws.com [34.240.57.77])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: shreeya)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id 056A437820EF;
	Tue,  5 Mar 2024 12:38:20 +0000 (UTC)
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
	shawn.wen@rock-chips.com,
	nicolas.dufresne@collabora.com,
	hverkuil@xs4all.nl,
	hverkuil-cisco@xs4all.nl
Cc: kernel@collabora.com,
	linux-kernel@vger.kernel.org,
	linux-media@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-clk@vger.kernel.org,
	linux-arm@lists.infradead.org,
	Shreeya Patel <shreeya.patel@collabora.com>
Subject: [PATCH v2 4/6] arm64: dts: rockchip: Add device tree support for HDMI RX Controller
Date: Tue,  5 Mar 2024 18:06:46 +0530
Message-Id: <20240305123648.8847-5-shreeya.patel@collabora.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240305123648.8847-1-shreeya.patel@collabora.com>
References: <20240305123648.8847-1-shreeya.patel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240305_043831_457272_CEFE09DF 
X-CRM114-Status: GOOD (  11.31  )
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

Reviewed-by: Dmitry Osipenko <dmitry.osipenko@collabora.com>
Tested-by: Dmitry Osipenko <dmitry.osipenko@collabora.com>
Co-developed-by: Dingxian Wen <shawn.wen@rock-chips.com>
Signed-off-by: Dingxian Wen <shawn.wen@rock-chips.com>
Signed-off-by: Shreeya Patel <shreeya.patel@collabora.com>
---
Changes in v2 :-
  - Fix some of the checkpatch errors and warnings
  - Rename resets, vo1-grf and HPD
  - Move hdmirx_cma node to the rk3588.dtsi file

 .../boot/dts/rockchip/rk3588-pinctrl.dtsi     | 41 ++++++++++++++
 arch/arm64/boot/dts/rockchip/rk3588.dtsi      | 55 +++++++++++++++++++
 2 files changed, 96 insertions(+)

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
index 5519c1430cb7..8adb98b99701 100644
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
 
+	hdmi_receiver: hdmi-receiver@fdee0000 {
+		compatible = "rockchip,rk3588-hdmirx-ctrler", "snps,dw-hdmi-rx";
+		reg = <0x0 0xfdee0000 0x0 0x6000>;
+		power-domains = <&power RK3588_PD_VO1>;
+		rockchip,grf = <&sys_grf>;
+		rockchip,vo1-grf = <&vo1_grf>;
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
+		reset-names = "axi", "apb", "ref", "biu";
+		pinctrl-0 = <&hdmim1_rx>;
+		pinctrl-names = "default";
+		status = "disabled";
+	};
+
 	pcie3x4: pcie@fe150000 {
 		compatible = "rockchip,rk3588-pcie", "rockchip,rk3568-pcie";
 		#address-cells = <3>;
@@ -339,3 +389,8 @@ pcie30phy: phy@fee80000 {
 		status = "disabled";
 	};
 };
+
+&hdmirx_cma {
+	status = "okay";
+};
+
-- 
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
