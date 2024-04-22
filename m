Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0BEC5C4345F
	for <linux-rockchip@archiver.kernel.org>; Mon, 22 Apr 2024 13:35:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=5edeRBWRxjnkmLJ1tQ0CwT7pXwtzo+Iqt0sqrqcuKg4=; b=XMrXlvOCe2syVT
	yX7ibQVF0PmmCygCRLppgBvrzT9yBV147uvnU0BZNEZ0V+2ExeIZ0yilwTOtX+v+gq0hZg52TtyXX
	YMSGL8mlD9eOKyOFqj+F020exD+d++Ix1Bnyau/17zjKgzASVohdLIkT1GHN2FfIdXNotGeQlTVUX
	We/iPw81m5Yz79nW7Wlb4ygkj2Yf+EIEqjMVxtlQUIo5Mv3N7jJtU3f9QjkG/7aIziIB6oZW2Zja5
	luqeBWWl1bcUOZPcHd7NBCU24rBTmDhIGxPq9fp0ZMxRKigwOUjJIBdACqfU/nSJLb4ZUKHvH4vrs
	v8FIhqfdgb9kK+Gz4OxA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rytpB-0000000DlNF-3Xkn;
	Mon, 22 Apr 2024 13:35:13 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rytp7-0000000DlKW-3vpF;
	Mon, 22 Apr 2024 13:35:11 +0000
Received: from i5e861d85.versanet.de ([94.134.29.133] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1rytp3-0003PX-SH; Mon, 22 Apr 2024 15:35:05 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: heiko@sntech.de
Cc: quentin.schulz@theobroma-systems.com,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Heiko Stuebner <heiko.stuebner@cherry.de>
Subject: [PATCH v3] arm64: dts: rockchip: add PCIe3 support on rk3588-jaguar
Date: Mon, 22 Apr 2024 15:35:02 +0200
Message-Id: <20240422133502.2592975-1-heiko@sntech.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240422_063510_003626_FA2BECB7 
X-CRM114-Status: GOOD (  14.07  )
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

From: Heiko Stuebner <heiko.stuebner@cherry.de>

The Jaguar SBC provides an M.2 slot connected to the pcie3 controller.
In contrast to a number of other boards the pcie-refclk is gpio-controlled,
so the necessary clock and is added to the list of pcie3 clocks.

Signed-off-by: Heiko Stuebner <heiko.stuebner@cherry.de>
Reviewed-by: Quentin Schulz <quentin.schulz@theobroma-systems.com>
---
changes in v3:
- drop unnecessary pinctrl comment (Quentin)
- add Quentin's review

changes in v2:
- "an" M.2 slot (Dragan)
- pinctrl for refclk-en and reset pin (Quentin)
- don't repurpose the pcie30x4_pins pinctrl entry for only wake (Quentin)

 .../arm64/boot/dts/rockchip/rk3588-jaguar.dts | 59 +++++++++++++++++++
 1 file changed, 59 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-jaguar.dts b/arch/arm64/boot/dts/rockchip/rk3588-jaguar.dts
index 4076c92668ba..0ad53d7768a3 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-jaguar.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-jaguar.dts
@@ -72,6 +72,27 @@ led-1 {
 		};
 	};
 
+	/*
+	 * 100MHz reference clock for PCIe peripherals from PI6C557-05BLE
+	 * clock generator.
+	 * The clock output is gated via the OE pin on the clock generator.
+	 * This is modeled as a fixed-clock plus a gpio-gate-clock.
+	 */
+	pcie_refclk_gen: pcie-refclk-gen-clock {
+		compatible = "fixed-clock";
+		#clock-cells = <0>;
+		clock-frequency = <1000000000>;
+	};
+
+	pcie_refclk: pcie-refclk-clock {
+		compatible = "gpio-gate-clock";
+		clocks = <&pcie_refclk_gen>;
+		#clock-cells = <0>;
+		enable-gpios = <&gpio0 RK_PC6 GPIO_ACTIVE_LOW>; /* PCIE30X4_CLKREQN_M0 */
+		pinctrl-names = "default";
+		pinctrl-0 = <&pcie30x4_clkreqn_m0>;
+	};
+
 	pps {
 		compatible = "pps-gpio";
 		gpios = <&gpio0 RK_PD5 GPIO_ACTIVE_HIGH>;
@@ -358,6 +379,30 @@ &pcie2x1l0 {
 	status = "okay";
 };
 
+&pcie30phy {
+	status = "okay";
+};
+
+&pcie3x4 {
+	/*
+	 * The board has a gpio-controlled "pcie_refclk" generator,
+	 * so add it to the list of clocks.
+	 */
+	clocks = <&cru ACLK_PCIE_4L_MSTR>, <&cru ACLK_PCIE_4L_SLV>,
+		 <&cru ACLK_PCIE_4L_DBI>, <&cru PCLK_PCIE_4L>,
+		 <&cru CLK_PCIE_AUX0>, <&cru CLK_PCIE4L_PIPE>,
+		 <&pcie_refclk>;
+	clock-names = "aclk_mst", "aclk_slv",
+		      "aclk_dbi", "pclk",
+		      "aux", "pipe",
+		      "ref";
+	pinctrl-names = "default";
+	pinctrl-0 = <&pcie30x4_waken_m0 &pcie30x4_perstn_m0>;
+	reset-gpios = <&gpio0 RK_PD0 GPIO_ACTIVE_HIGH>; /* PCIE30X4_PERSTN_M0 */
+	vpcie3v3-supply = <&vcc3v3_mdot2>;
+	status = "okay";
+};
+
 &pinctrl {
 	emmc {
 		emmc_reset: emmc-reset {
@@ -376,6 +421,20 @@ led1_pin: led1-pin {
 			rockchip,pins = <1 RK_PD4 RK_FUNC_GPIO &pcfg_pull_none>;
 		};
 	};
+
+	pcie30x4 {
+		pcie30x4_clkreqn_m0: pcie30x4-clkreqn-m0 {
+			rockchip,pins = <0 RK_PC6 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+
+		pcie30x4_perstn_m0: pcie30x4-perstn-m0 {
+			rockchip,pins = <0 RK_PD0 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+
+		pcie30x4_waken_m0: pcie30x4-waken-m0 {
+			rockchip,pins = <0 RK_PC7 12 &pcfg_pull_none>;
+		};
+	};
 };
 
 &saradc {
-- 
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
