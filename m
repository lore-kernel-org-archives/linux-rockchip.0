Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 12323CE7AEC
	for <linux-rockchip@archiver.kernel.org>; Fri,  6 Sep 2024 08:41:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Z3raL81p1BzXYR5KtAwSLLersydEwQG98/c33ASROrU=; b=mighzJkRmnf0EQ
	w4KMeNoi66zZN2l0ZXllCsfKu+q3WJiVY9fH/IeGc9ZwMnNInE1E1cpjn3DNaoSp6tvsh3SY8cXGo
	pGne9xo7jf+jga9ORgoTICWW3OQkw30gW3vve0bERzrwnWRh+mTcbmHWjmOiGorVQkaQab1/LJqo+
	Y/Bi6HsIhppccCQi17E2l1Vtc3WixHpWb8gCJm5865BhlDfGdC+WMipSABQgshjPMIZRP5x4C8Th4
	eSu1msGsx3p5gbrxzmUfBRwCjhmayiI+VITEzffql5p+8kCDBMQLt77KtFsyUgkV590PYwxhQBYD+
	mnBL2DM35yRocBBPJEEw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1smUWr-0000000BNUf-41Ei;
	Fri, 06 Sep 2024 08:41:17 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1smUHW-0000000BItn-1vd2;
	Fri, 06 Sep 2024 08:25:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:MIME-Version:References:
	In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=PlRpVtIBwwyT7sJiOXWleLS+M54tw81jUNBu+u7QyPQ=; b=wvqISOnI+nXg6/aKRBUjPYc4nU
	aIekJMWtWF6lxphXBqUVLhwQbuMXXaII85xBabpcp8mX478IUzbRfYDhAGiSOICoIxsS3wQ0MyeU1
	LOZClveyH+Tf3u8FIFWxR2QyM3Nx0g5xy3AZOLLrmgH/EpZSWKvORpIK2iqTAUJq57vHpykGH9Fz/
	ULaxmJyv/Pa3lPQKPv2yx8OASCG9XMqzh1BK0Yxi1EMhg9q3eSMBfHOSzeRB66iglssy3/IfsgL4J
	3YHDCHhxxqvs4lOEEwO3TQb/6QiJsoFRM9lnFTKILrDhbJfgKq2iCOwglx1E+vUeXyGpFuPb4cO+K
	6EITMaCw==;
Received: from i5e860d0f.versanet.de ([94.134.13.15] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1smUHQ-0000jF-RE; Fri, 06 Sep 2024 10:25:20 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: mturquette@baylibre.com,
	sboyd@kernel.org
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	linux-clk@vger.kernel.org,
	heiko@sntech.de,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: [PATCH v4 5/5] arm64: dts: rockchip: fix the pcie refclock oscillator on Rock 5 ITX
Date: Fri,  6 Sep 2024 10:25:11 +0200
Message-ID: <20240906082511.2963890-6-heiko@sntech.de>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240906082511.2963890-1-heiko@sntech.de>
References: <20240906082511.2963890-1-heiko@sntech.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240906_012526_525256_B0D09247 
X-CRM114-Status: GOOD (  16.77  )
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

The Rock 5 ITX uses two PCIe controllers to drive both a M.2 slot and its
SATA controller with 2 lanes each. The supply for the refclk oscillator is
the same that supplies the M.2 slot, but the SATA controller port is
supplied by a different rail.

This leads to the effect that if the PCIe30x4 controller for the M.2
probes first, everything works normally. But if the PCIe30x2 controller
that is connected to the SATA controller probes first, it will hang on
the first DBI read as nothing will have enabled the refclock before.

Fix this by describing the clock generator with its supplies so that
both controllers can reference it as needed.

Signed-off-by: Heiko Stuebner <heiko@sntech.de>
---
 .../boot/dts/rockchip/rk3588-rock-5-itx.dts   | 38 ++++++++++++++++++-
 1 file changed, 36 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-rock-5-itx.dts b/arch/arm64/boot/dts/rockchip/rk3588-rock-5-itx.dts
index d0b922b8d67e..2d0bcf90bf0f 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-rock-5-itx.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-rock-5-itx.dts
@@ -72,6 +72,15 @@ hdd-led2 {
 		};
 	};
 
+	/* Unnamed gated oscillator: 100MHz,3.3V,3225 */
+	pcie30_port0_refclk: pcie30_port1_refclk: pcie-oscillator {
+		compatible = "gated-fixed-clock";
+		#clock-cells = <0>;
+		clock-frequency = <100000000>;
+		clock-output-names = "pcie30_refclk";
+		vdd-supply = <&vcc3v3_pi6c_05>;
+	};
+
 	fan0: pwm-fan {
 		compatible = "pwm-fan";
 		#cooling-cells = <2>;
@@ -146,13 +155,14 @@ vcc3v3_lan: vcc3v3_lan_phy2: regulator-vcc3v3-lan {
 		vin-supply = <&vcc_3v3_s3>;
 	};
 
-	vcc3v3_mkey: regulator-vcc3v3-mkey {
+	/* The PCIE30x4_PWREN_H controls two regulators */
+	vcc3v3_mkey: vcc3v3_pi6c_05: regulator-vcc3v3-pi6c-05 {
 		compatible = "regulator-fixed";
 		enable-active-high;
 		gpios = <&gpio1 RK_PA4 GPIO_ACTIVE_HIGH>;
 		pinctrl-names = "default";
 		pinctrl-0 = <&pcie30x4_pwren_h>;
-		regulator-name = "vcc3v3_mkey";
+		regulator-name = "vcc3v3_pi6c_05";
 		regulator-min-microvolt = <3300000>;
 		regulator-max-microvolt = <3300000>;
 		startup-delay-us = <5000>;
@@ -513,6 +523,18 @@ &pcie30phy {
 
 /* ASMedia ASM1164 Sata controller */
 &pcie3x2 {
+	/*
+	 * The board has a "pcie_refclk" oscillator that needs enabling,
+	 * so add it to the list of clocks.
+	 */
+	clocks = <&cru ACLK_PCIE_2L_MSTR>, <&cru ACLK_PCIE_2L_SLV>,
+		 <&cru ACLK_PCIE_2L_DBI>, <&cru PCLK_PCIE_2L>,
+		 <&cru CLK_PCIE_AUX1>, <&cru CLK_PCIE2L_PIPE>,
+		 <&pcie30_port1_refclk>;
+	clock-names = "aclk_mst", "aclk_slv",
+		      "aclk_dbi", "pclk",
+		      "aux", "pipe",
+		      "ref";
 	pinctrl-names = "default";
 	pinctrl-0 = <&pcie30x2_perstn_m1_l>;
 	reset-gpios = <&gpio4 RK_PB0 GPIO_ACTIVE_HIGH>;
@@ -522,6 +544,18 @@ &pcie3x2 {
 
 /* M.2 M.key */
 &pcie3x4 {
+	/*
+	 * The board has a "pcie_refclk" oscillator that needs enabling,
+	 * so add it to the list of clocks.
+	 */
+	clocks = <&cru ACLK_PCIE_4L_MSTR>, <&cru ACLK_PCIE_4L_SLV>,
+		 <&cru ACLK_PCIE_4L_DBI>, <&cru PCLK_PCIE_4L>,
+		 <&cru CLK_PCIE_AUX0>, <&cru CLK_PCIE4L_PIPE>,
+		 <&pcie30_port0_refclk>;
+	clock-names = "aclk_mst", "aclk_slv",
+		      "aclk_dbi", "pclk",
+		      "aux", "pipe",
+		      "ref";
 	num-lanes = <2>;
 	pinctrl-names = "default";
 	pinctrl-0 = <&pcie30x4_perstn_m1_l>;
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
