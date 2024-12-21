Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DB6ADE7718B
	for <linux-rockchip@archiver.kernel.org>; Sat, 21 Dec 2024 15:18:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=FjHP7SRv90sX15ZN8oDOx3poGghFw4pqS7R35vgtXbA=; b=4Ts2VGec0YHvsN
	a5WC6ySEoz8XOhi8805rbk/RdTOHnscowYbk3YCNmnkQbtEON4qPuEG+sja70Lgt4y1okkahxzjZ5
	2wmFh4WOoZMlhfpeaYBf7VL2TRgwEvIC8LumSjN44P8utewjL0sIMY4e7buiDMe+uBHYWslCtR3gE
	zk0awOHrDoebG7VOk6KtPNI7Na0pXuhd9zT4EBDjl1VA1BHSAva0zsONYyVdBsZJzJl0Yy+nwc1eb
	OieBMjkoU68q5GgKpSA7t+10IpX4fPkR/1DGdY7RCWiRI8vqHLWCr1XinqwSI+nFg4SvbkmSJWNEd
	d5yJ41aZNSm3CCNKC/mw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tP1F5-000000077Jr-1o8Z;
	Sat, 21 Dec 2024 15:18:11 +0000
Received: from mail-pf1-x431.google.com ([2607:f8b0:4864:20::431])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tP1F3-000000077JN-0m9J
	for linux-rockchip@lists.infradead.org;
	Sat, 21 Dec 2024 15:18:10 +0000
Received: by mail-pf1-x431.google.com with SMTP id d2e1a72fcca58-725ee6f56b4so2560262b3a.3
        for <linux-rockchip@lists.infradead.org>; Sat, 21 Dec 2024 07:18:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20230601.gappssmtp.com; s=20230601; t=1734794287; x=1735399087; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=bl4pEkJ+Bsnqat0NylNt98XfhDmcqD+zuY6vbF8ltmo=;
        b=iQUYSChbcA9vRYomlP4N4Sz+Z+IjSaQ2X4u1AE3x2ci5SnLdSiIp0IXvz05vbV9qgc
         7jquyDFk+axlz9soqzZwxZrl1PnmbAfFRXr7SbvPMceqxTbG3G3iUStM5V9rbZsX0X4e
         H0IP7WnGh5FG/uBWP362/C/83I7l64tpCVHM+U2YOmaIf3JoTkC1aCSp7YPi3nIeba9P
         v7FRGPwjjCnqbHyEtRkRaIEJWcl3NSYU/EzLzxOLDV/cNMyqrfo7psm5Da9YTcr9X2p+
         v9+TjsJnGe8lybJO0fMxoyR2lyrpV7VzmDKWSj10nbEH1Z5P+JiQ/i2BS223FErQIIpf
         lxKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734794287; x=1735399087;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=bl4pEkJ+Bsnqat0NylNt98XfhDmcqD+zuY6vbF8ltmo=;
        b=R2sdBVKGOTnvkuwPyGpth335yqoq+NhNwKHnctP0QwtvLNCqQ2fstuC/YUCcvRXCeq
         DpgMxnKdLzXMmZ8BTTeVMzFT9hsgOduKFGYDet+w8RHDs+iav6R3UOfGRM0O+YaxV9VP
         vSfqIIb8/cLlnHjqb4SEH15Dp5uTC5JMlvLjPjYni3TY/VzWyG0Oht3cqWn8luSDyZtL
         S/Nawe8TrwyucsTeBSXrhFhOhwim8iLMia5BYeO5wS6vcYlApQTjefyi1XmLA5DuvpR5
         EY31/nCfPBB6D8nA0mLmK2HUVOMgbT5A3k5injqXebnaisQuE7qtYgC7EqWSc6tK/EFN
         jVbg==
X-Forwarded-Encrypted: i=1; AJvYcCV/QR8Dd19hVQWs4HgoaFWxDgFpEvfKdMS9UQTD2YUAEOLAXzMBuxPVCM7jqDEHKWNBpf+Q0Pc8mxFtshwr3A==@lists.infradead.org
X-Gm-Message-State: AOJu0YxyaaHdW+k+ANKpkqdLkW8n1caJPzauU2SxmQqacmUry5C6NRjp
	u7obNoGitNdxYmx+ODjRXmFYeHUhxfSj2rETSFm+RmUUwwgVwEYrEcMdO6KD2Vs=
X-Gm-Gg: ASbGncuKkICeT21VdtvOFTN2hrP/QHn4vS9oKF0ifs68bzbrBgl2eSItsLykhimE77Q
	A2pFtd9UJ34lV7u1c4pJGDpxwt/SZBZxOZ7YDLrQr3JDEnEDwMZ7+wHarGL4W4ffAvJeKI+Kh2p
	0vxayDv9DOyHA9mmw6h3jOnij7mTBmAz2zK8Inb8hEYd4sx7MOoSWDa+sHOZj69wAh5ncZPXWnM
	8M6V14aL/HaWcGrJaKsR5BjRPBqKat7wwbihejFS9oGB8Zk4uPut67YK0B4dQ6rW6qN
X-Google-Smtp-Source: AGHT+IHaN8Ws7cNJxi+W+zqLPd3EnDfDJJBxBjqb4+tAZwpMW1/iij7gkAWdz4uBBQP31s/KRu8lVg==
X-Received: by 2002:a05:6a00:1411:b0:725:f376:f4f4 with SMTP id d2e1a72fcca58-72abde01aa8mr9248366b3a.13.1734794287425;
        Sat, 21 Dec 2024 07:18:07 -0800 (PST)
Received: from tops-ThinkPad-E14-Gen-5.. ([183.82.41.52])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-72aad90b949sm4877522b3a.176.2024.12.21.07.18.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 21 Dec 2024 07:18:07 -0800 (PST)
From: Jagan Teki <jagan@edgeble.ai>
To: Heiko Stuebner <heiko@sntech.de>,
	linux-rockchip@lists.infradead.org
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	Jagan Teki <jagan@edgeble.ai>,
	Mitchell Ma <machuang@radxa.com>
Subject: [PATCH] arm64: dts: rockchip: Fix PCIe3 handling for Edgeble-6TOPS Modules
Date: Sat, 21 Dec 2024 20:47:58 +0530
Message-Id: <20241221151758.345257-1-jagan@edgeble.ai>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241221_071809_443205_379C7EE4 
X-CRM114-Status: GOOD (  13.38  )
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

The Edgeble 6TOPS modules has configured the PCIe3.0 with
- 2 lanes on Port1 of pcie3x2 controller for M.2 M-Key
- 2 lanes on Port0 of pcie3x4 controller for B and E-Key

The, current DT uses opposite controller nodes that indeed uses
incorrect reset, regulator nodes.

The configuration also uses refclk oscillator that need to enable
explicitly in DT to avoid the probe hang on while reading DBI.

So, this patch fixes all these essential issues and make this PCIe work
properly.

Issues fixed are,
- Fix the associate controller nodes for M and B, E-Key
- Fix the reset gpio handlings
- Fix the regulator handlings and naming convensions
- Support pcie_refclk oscillator

Fixes: 92eaee21abbd ("arm64: dts: rockchip: Add Edgeble NCM6A-IO M.2
B-Key, E-Key")
Fixes: 5d85d4c7e03b ("arm64: dts: rockchip: Add Edgeble NCM6A-IO M.2
M-Key")
Reported-by: Mitchell Ma <machuang@radxa.com>
Co-developed-by: Mitchell Ma <machuang@radxa.com>
Signed-off-by: Jagan Teki <jagan@edgeble.ai>
---
 .../dts/rockchip/rk3588-edgeble-neu6a-io.dtsi | 81 ++++++++++++++-----
 1 file changed, 59 insertions(+), 22 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6a-io.dtsi b/arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6a-io.dtsi
index 05ae9bdcfbbd..7125790bbed2 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6a-io.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6a-io.dtsi
@@ -10,6 +10,15 @@ chosen {
 		stdout-path = "serial2:1500000n8";
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
 	vcc3v3_pcie2x1l0: regulator-vcc3v3-pcie2x1l0 {
 		compatible = "regulator-fixed";
 		regulator-name = "vcc3v3_pcie2x1l0";
@@ -19,26 +28,26 @@ vcc3v3_pcie2x1l0: regulator-vcc3v3-pcie2x1l0 {
 		vin-supply = <&vcc_3v3_s3>;
 	};
 
-	vcc3v3_pcie3x2: regulator-vcc3v3-pcie3x2 {
+	vcc3v3_bkey: regulator-vcc3v3-bkey {
 		compatible = "regulator-fixed";
 		enable-active-high;
 		gpios = <&gpio2 RK_PC4 GPIO_ACTIVE_HIGH>; /* PCIE_4G_PWEN */
 		pinctrl-names = "default";
-		pinctrl-0 = <&pcie3x2_vcc3v3_en>;
-		regulator-name = "vcc3v3_pcie3x2";
+		pinctrl-0 = <&pcie_4g_pwen>;
+		regulator-name = "vcc3v3_bkey";
 		regulator-min-microvolt = <3300000>;
 		regulator-max-microvolt = <3300000>;
 		startup-delay-us = <5000>;
 		vin-supply = <&vcc5v0_sys>;
 	};
 
-	vcc3v3_pcie3x4: regulator-vcc3v3-pcie3x4 {
+	vcc3v3_pcie30: vcc3v3_pi6c_05: regulator-vcc3v3-pi6c-05 {
 		compatible = "regulator-fixed";
 		enable-active-high;
 		gpios = <&gpio2 RK_PC5 GPIO_ACTIVE_HIGH>; /* PCIE30x4_PWREN_H */
 		pinctrl-names = "default";
-		pinctrl-0 = <&pcie3x4_vcc3v3_en>;
-		regulator-name = "vcc3v3_pcie3x4";
+		pinctrl-0 = <&pcie30x4_pwren_h>;
+		regulator-name = "vcc3v3_pcie30";
 		regulator-min-microvolt = <3300000>;
 		regulator-max-microvolt = <3300000>;
 		startup-delay-us = <5000>;
@@ -98,24 +107,52 @@ &pcie2x1l0 {
 };
 
 &pcie30phy {
+	data-lanes = <1 1 2 2>;
+	/* separate clock lines from the clock generator to phy and devices */
+	rockchip,rx-common-refclk-mode = <0 0 0 0>;
 	status = "okay";
 };
 
-/* B-Key and E-Key */
+/* M-Key */
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
+	num-lanes = <2>;
 	pinctrl-names = "default";
-	pinctrl-0 = <&pcie3x2_rst>;
-	reset-gpios = <&gpio4 RK_PB6 GPIO_ACTIVE_HIGH>; /* PCIE30X4_PERSTn_M1_L */
-	vpcie3v3-supply = <&vcc3v3_pcie3x2>;
+	pinctrl-0 = <&pcie30x2_perstn_m1_l>;
+	reset-gpios = <&gpio4 RK_PB0 GPIO_ACTIVE_HIGH>; /* PCIE30X2_PERSTn_M1_L */
+	vpcie3v3-supply = <&vcc3v3_pcie30>;
 	status = "okay";
 };
 
-/* M-Key */
+/* B-Key and E-Key */
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
 	pinctrl-names = "default";
-	pinctrl-0 = <&pcie3x4_rst>;
-	reset-gpios = <&gpio4 RK_PB0 GPIO_ACTIVE_HIGH>; /* PCIE30X2_PERSTn_M1_L */
-	vpcie3v3-supply = <&vcc3v3_pcie3x4>;
+	pinctrl-0 = <&pcie30x4_perstn_m1_l>;
+	reset-gpios = <&gpio4 RK_PB6 GPIO_ACTIVE_HIGH>; /* PCIE30X4_PERSTn_M1_L */
+	vpcie3v3-supply = <&vcc3v3_bkey>;
 	status = "okay";
 };
 
@@ -127,20 +164,20 @@ pcie2_0_rst: pcie2-0-rst {
 	};
 
 	pcie3 {
-		pcie3x2_rst: pcie3x2-rst {
-			rockchip,pins = <4 RK_PB6 RK_FUNC_GPIO &pcfg_pull_none>;
+		pcie30x2_perstn_m1_l: pcie30x2-perstn-m1-l {
+			rockchip,pins = <4 RK_PB0 RK_FUNC_GPIO &pcfg_pull_none>;
 		};
 
-		pcie3x2_vcc3v3_en: pcie3x2-vcc3v3-en {
-			rockchip,pins = <2 RK_PC4 RK_FUNC_GPIO &pcfg_pull_none>;
+		pcie_4g_pwen: pcie-4g-pwen {
+			rockchip,pins = <2 RK_PC4 RK_FUNC_GPIO &pcfg_pull_down>;
 		};
 
-		pcie3x4_rst: pcie3x4-rst {
-			rockchip,pins = <4 RK_PB0 RK_FUNC_GPIO &pcfg_pull_none>;
+		pcie30x4_perstn_m1_l: pcie30x4-perstn-m1-l {
+			rockchip,pins = <4 RK_PB6 RK_FUNC_GPIO &pcfg_pull_none>;
 		};
 
-		pcie3x4_vcc3v3_en: pcie3x4-vcc3v3-en {
-			rockchip,pins = <2 RK_PC5 RK_FUNC_GPIO &pcfg_pull_none>;
+		pcie30x4_pwren_h: pcie30x4-pwren-h {
+			rockchip,pins = <2 RK_PC5 RK_FUNC_GPIO &pcfg_pull_down>;
 		};
 	};
 
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
