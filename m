Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2BD13C88CB4
	for <linux-rockchip@archiver.kernel.org>; Mon, 12 Jun 2023 17:14:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5mQe+pKOKOCAUAr1+hiYNoPRIQn7eAg5/oeKBJlBvGc=; b=rC4JGpAkkY8ScE
	P5Pp+eW/cT4JJ5Bh0wLZs7oupU6jtog4Ebj7n2WL5IYu3lGY1S2evQPS4FbM+n8cRaH26H7mkA97F
	V5KFnwzWMmyXFV5xnvncOrAfkwBo9oZfbyEZ4nJ4Uetk7C8O1V9MgeqTp7Bgc1j3RerfjFBNYkQ6x
	pkaRObDFEZBAtM1i1e+i0n/ZWVK+fkKYxbl/ABpMyUxuysRtOc1cyLsOJlD774chlbHn4f9XnH1I+
	6RfSKvFZg0c4E/0ut/CPoPcii/MsGcIZietRyLCqiYr1QecgjdUT9r8GAwbAJH6ByW01LeSCFebrq
	OeRnwzAwdT5s6ChUQgNw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q8l70-004idH-1U;
	Mon, 12 Jun 2023 17:13:50 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q8l6w-004iZF-1D;
	Mon, 12 Jun 2023 17:13:47 +0000
Received: from jupiter.universe (dyndsl-091-248-210-131.ewe-ip-backbone.de [91.248.210.131])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: sre)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 379786606ED8;
	Mon, 12 Jun 2023 18:13:41 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1686590021;
	bh=51auYTRk2rmb/OCj/B4amurTw9Zrd8rSx4SmfWqBalc=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=RjCobkr+wtR194yCZS3lTknhUGX17QeL9U0W7leeJXxrFaVTU2EgECRQ7bpBawg9e
	 TUm5vmMYyXqqPgReqU5agL05JI55d2CU+qy6YuNvUP7bFpmKmCjJQNCIlPZpk8QAp/
	 M9kDQJUQ34YVbJYGvdlioCsV/HsDiMiDfSTu5bhcpzrVcrLc59fDNLtsvL0jVDL7k5
	 bV9nxY2EQEffj0dxbQx9T0mKzfm6M9R7t2TZuS0cnfYwUCZTjVPDSWHmktraxMVmDc
	 2lD/yAD+uxZuEC5Nirr5CnnBHUXMfuALsm4mGH44IqeJYeWU4rpjhBUHjhcIUkohY8
	 5TcVJUiD4R1Kw==
Received: by jupiter.universe (Postfix, from userid 1000)
	id A997C4807EF; Mon, 12 Jun 2023 19:13:38 +0200 (CEST)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Damien Le Moal <damien.lemoal@opensource.wdc.com>,
	Serge Semin <fancer.lancer@gmail.com>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	linux-ide@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	kernel@collabora.com
Subject: [PATCH v4 4/5] arm64: dts: rockchip: rk3588: add combo PHYs
Date: Mon, 12 Jun 2023 19:13:36 +0200
Message-Id: <20230612171337.74576-5-sebastian.reichel@collabora.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230612171337.74576-1-sebastian.reichel@collabora.com>
References: <20230612171337.74576-1-sebastian.reichel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230612_101346_593186_F2A05717 
X-CRM114-Status: UNSURE (   9.71  )
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

Add all 3 combo PHYs that can be found in RK3588.
They are used for SATA, PCIe or USB3.

Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
 arch/arm64/boot/dts/rockchip/rk3588.dtsi  | 21 ++++++++++++
 arch/arm64/boot/dts/rockchip/rk3588s.dtsi | 42 +++++++++++++++++++++++
 2 files changed, 63 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588.dtsi b/arch/arm64/boot/dts/rockchip/rk3588.dtsi
index 8be75556af8f..9d8539b5309b 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588.dtsi
@@ -7,6 +7,11 @@
 #include "rk3588-pinctrl.dtsi"
 
 / {
+	pipe_phy1_grf: syscon@fd5c0000 {
+		compatible = "rockchip,rk3588-pipe-phy-grf", "syscon";
+		reg = <0x0 0xfd5c0000 0x0 0x100>;
+	};
+
 	i2s8_8ch: i2s@fddc8000 {
 		compatible = "rockchip,rk3588-i2s-tdm";
 		reg = <0x0 0xfddc8000 0x0 0x1000>;
@@ -123,4 +128,20 @@ gmac0_mtl_tx_setup: tx-queues-config {
 			queue1 {};
 		};
 	};
+
+	combphy1_ps: phy@fee10000 {
+		compatible = "rockchip,rk3588-naneng-combphy";
+		reg = <0x0 0xfee10000 0x0 0x100>;
+		#phy-cells = <1>;
+		clocks = <&cru CLK_REF_PIPE_PHY1>, <&cru PCLK_PCIE_COMBO_PIPE_PHY1>,
+			 <&cru PCLK_PHP_ROOT>;
+		clock-names = "ref", "apb", "pipe";
+		assigned-clocks = <&cru CLK_REF_PIPE_PHY1>;
+		assigned-clock-rates = <100000000>;
+		resets = <&cru SRST_REF_PIPE_PHY1>, <&cru SRST_P_PCIE2_PHY1>;
+		reset-names = "phy", "apb";
+		rockchip,pipe-grf = <&php_grf>;
+		rockchip,pipe-phy-grf = <&pipe_phy1_grf>;
+		status = "disabled";
+	};
 };
diff --git a/arch/arm64/boot/dts/rockchip/rk3588s.dtsi b/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
index 01058fed8f96..45ae457a22a4 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
@@ -944,6 +944,16 @@ php_grf: syscon@fd5b0000 {
 		reg = <0x0 0xfd5b0000 0x0 0x1000>;
 	};
 
+	pipe_phy0_grf: syscon@fd5bc000 {
+		compatible = "rockchip,rk3588-pipe-phy-grf", "syscon";
+		reg = <0x0 0xfd5bc000 0x0 0x100>;
+	};
+
+	pipe_phy2_grf: syscon@fd5c4000 {
+		compatible = "rockchip,rk3588-pipe-phy-grf", "syscon";
+		reg = <0x0 0xfd5c4000 0x0 0x100>;
+	};
+
 	ioc: syscon@fd5f0000 {
 		compatible = "rockchip,rk3588-ioc", "syscon";
 		reg = <0x0 0xfd5f0000 0x0 0x10000>;
@@ -2371,6 +2381,38 @@ dmac2: dma-controller@fed10000 {
 		#dma-cells = <1>;
 	};
 
+	combphy0_ps: phy@fee00000 {
+		compatible = "rockchip,rk3588-naneng-combphy";
+		reg = <0x0 0xfee00000 0x0 0x100>;
+		#phy-cells = <1>;
+		clocks = <&cru CLK_REF_PIPE_PHY0>, <&cru PCLK_PCIE_COMBO_PIPE_PHY0>,
+			 <&cru PCLK_PHP_ROOT>;
+		clock-names = "ref", "apb", "pipe";
+		assigned-clocks = <&cru CLK_REF_PIPE_PHY0>;
+		assigned-clock-rates = <100000000>;
+		resets = <&cru SRST_REF_PIPE_PHY0>, <&cru SRST_P_PCIE2_PHY0>;
+		reset-names = "phy", "apb";
+		rockchip,pipe-grf = <&php_grf>;
+		rockchip,pipe-phy-grf = <&pipe_phy0_grf>;
+		status = "disabled";
+	};
+
+	combphy2_psu: phy@fee20000 {
+		compatible = "rockchip,rk3588-naneng-combphy";
+		reg = <0x0 0xfee20000 0x0 0x100>;
+		#phy-cells = <1>;
+		clocks = <&cru CLK_REF_PIPE_PHY2>, <&cru PCLK_PCIE_COMBO_PIPE_PHY2>,
+			 <&cru PCLK_PHP_ROOT>;
+		clock-names = "ref", "apb", "pipe";
+		assigned-clocks = <&cru CLK_REF_PIPE_PHY2>;
+		assigned-clock-rates = <100000000>;
+		resets = <&cru SRST_REF_PIPE_PHY2>, <&cru SRST_P_PCIE2_PHY2>;
+		reset-names = "phy", "apb";
+		rockchip,pipe-grf = <&php_grf>;
+		rockchip,pipe-phy-grf = <&pipe_phy2_grf>;
+		status = "disabled";
+	};
+
 	system_sram2: sram@ff001000 {
 		compatible = "mmio-sram";
 		reg = <0x0 0xff001000 0x0 0xef000>;
-- 
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
