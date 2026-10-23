Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD8F4606A32C
	for <linux-rockchip@archiver.kernel.org>; Fri, 23 Oct 2026 05:36:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=v347PO4d;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20251104 header.b=BLDFD6WG
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=cek+K2fvZGJpAdh/P8XiDcczQA+mkRrnXNVTeBjDtvU=; b=v347PO4dJcmtck5X3XLcU/rlpH
	1hrtQri/oC51YfhJO1p8IaJEPMaU42wxuKiaegpW5Pj2XgLrsB4ew5eJZWzmGOFaIh0XBlK2tbnVH
	oJ52NRVZ6dvVzXn7tlCKLPnozT+DqZ0vQSCDlxOIc4YbGKfuuQs30IxCqBPgdmeob65tnYq0K7oKg
	11sshPgxK6RzM3u0hwmWtfJU/XaBVPUvEmETWdWL8ID3EEuV3CLO2ZvkUvAD+DeddtHwvrWTWzSLa
	FOvZTgDmo/Re0n43rut+REYh8/al0vTopnjp2tRNiIb54PU+TC5RI4CaSppF3ZfjMV6aznhqMOcLN
	+kYcFqZQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xK7wj-0000000FWj6-3aAR;
	Fri, 23 Oct 2026 05:36:05 +0000
Received: from mail-dy2-x0b.google.com ([2607:f8b0:4864:36::b])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xK7wg-0000000FWhu-3Utb
	for linux-rockchip@lists.infradead.org;
	Fri, 23 Oct 2026 05:36:04 +0000
Received: by mail-dy2-x0b.google.com with SMTP id 5a478bee46e88-3535a54c09bso422916eec.0
        for <linux-rockchip@lists.infradead.org>; Thu, 22 Oct 2026 22:36:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1792733762; x=1793338562; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=E+chekywn+zjR8qKfFmlr4rUPqe8P6DWzkjYSgfwJdo=;
        b=BLDFD6WGjSaqkqX/aGIom4wVzz2aNgWO+pwm8fazjDLFYmvpS9oxKM/96lKc6z9qq3
         Zahk8mJCRKd0Omt65mC101QDxcGXsrYHwW76PtxcNIjUP2CpN0HDpFMHuBHr+4zQVprb
         X9FBQ4ScOwuBu/SzFKh1O0yE+z5VTqtIB1+i6nyK7GV0yrAtnE8tPmMDcJdLW6Un2/+k
         BBWNLx/BeFE7uW/B9Svqco924Mvt6+F9dMpFqWGLZA62FNeqMz8la4p8aY2i8Ck0yw7C
         5sTSpBl+1OL4JsUaGStmd92PLasHt435leSnwTFRcQ2KboAAFIAzibczgibPOJYynSrQ
         M43w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792733762; x=1793338562;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=E+chekywn+zjR8qKfFmlr4rUPqe8P6DWzkjYSgfwJdo=;
        b=k8ttfR6u4p8Gkv+GVwDPr0yZewxTjoDoCNwIWp3TBIgE7hAoy0e1fCn2M4MhsDRIIz
         02+NVOAwPoFVBq7ar6gDg2WMHcWcoj81uIs9O6Ot2AxbGcUce6AmTf64KZ5fvQSuTi9X
         MVbM9pbEBvEUyRYZXP7S2eF+e/+exvh97ykawnVd5BieWKJ7srvKKlK10ruf5FiG3rRt
         D3j2lrEn56ckARmsxHW4Rr6CVxFojtuBwzDsZs1r141lOT99s8BcZdXMScngzoUVmyrz
         3NQnO5+X4UZ4xSgV930C1NF17bi6NOcHqm+/3ukGOUjAIT6twadUVC8pLFRTljsge371
         RHvQ==
X-Forwarded-Encrypted: i=1; AKwUvBx3qv2qmfzoP5Bnj1DyxqUGffX5mYvnCkQ5XUDwaqL2Flpqc4Sp9VgKRnq7fpxsdAcoowcqwoOhuEyGPyYweA==@lists.infradead.org
X-Gm-Message-State: AFq9FYIiMv/naJm7HZdn4Bm8YbJY5dyWhWa+utXNbWpzIquhLTLot7pz
	rkn1Kk/L5UAKeUVk3eyijYSAXjG5q6kgiHQCEyhufz1+JFGthkE0Skqk
X-Gm-Gg: AYBFou31/xxvF9xumyqdFetn/QJV4oc3Y/Jyvy4H+Z6yVHa8C5BlrUD74MT4hTy2MBp
	9gZPAUPeFzLjsSqhxwD/VCGnPWzdP2EVTC+png7eia9yrtzS3BmfpoEZr1Gvr+GnCM19pfkFa0f
	euGYRmp58YX2opjTVJ7Qi5c9Vfg13Dbg5YlFAGPdT+H5MqBphN3AVgEArBbonEn4eFMlRAJfgYs
	vP/+Qz/3wkb8e0QVFjF+5nbsvDcshsoqgSb4KMJuKGIUdjuDQU1zHdcJx8EC/GFPauvd6qIaUby
	RDL6tXB5v3LOx7h1cJgNdE1E4+pNpUMCsjk5/CQ3G2dWYSuj9mzV5ig5/Ic2Ggh91k2uQuuqQzY
	668A0nyo6lfNAsPKSvvF2OVd2/8zDS02Zrfk5X8oJ9UfTDKl5InWZ336cYlxIA8Td1ziVZuw4eL
	D/nLRIrIn2dFxwwakqQ1XWmZAwb1432ROX46cAUOLqsucjX8A/+pcYldZf1RytUbaWVnMu2vE8t
	JXzabD5gkRYvRamvxdKny8azememSiYy4l69GBFlcSGWWaY2mWaRw==
X-Received: by 2002:a05:7300:f784:b0:366:7b5c:820e with SMTP id 5a478bee46e88-369d8f4e26cmr1801190eec.0.1792733761680;
        Thu, 22 Oct 2026 22:36:01 -0700 (PDT)
Received: from server.lan ([168.138.199.194])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-369d9c15883sm3542480eec.3.2026.10.22.22.35.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 Oct 2026 22:36:01 -0700 (PDT)
From: Coia Prant <coiaprant@gmail.com>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	David Heidelberg <david@ixit.cz>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Coia Prant <coiaprant@gmail.com>
Subject: [PATCH v12 1/3] arm64: dts: rockchip: rk3568: add XPCS and fixed-clock nodes
Date: Fri, 23 Oct 2026 13:35:46 +0800
Message-ID: <20261023053548.1595033-2-coiaprant@gmail.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20261023053548.1595033-1-coiaprant@gmail.com>
References: <20261023053548.1595033-1-coiaprant@gmail.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261022_223603_286346_EA06EE40 
X-CRM114-Status: GOOD (  12.37  )
X-Spam-Score: -2.1 (--)
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-13.8 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,
	FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

The RK3568 SoC integrates a Synopsys DesignWare XPCS that provides
the Physical Coding Sublayer for 1000BASE-X, SGMII, and QSGMII
interfaces via its four MII ports.  Add the XPCS device node to the
SoC device tree.

The XPCS device is accessed via the APB3 bus at 0xfda00000 and
requires the CSR clock (PCLK_XPCS) for register access and the EEE
clock (CLK_XPCS_EEE) for Energy Efficient Ethernet operation.  The
PD_PIPE power domain must be enabled before any register access.

Also add two fixed-clock nodes (clock-xpcs-gmac0 and clock-xpcs-gmac1,
labelled clk_gmac0_xpcs_mii and clk_gmac1_xpcs_mii) providing the
125 MHz reference clock for the GMACs when operating with XPCS.  Their
clock-output-names match the CRU mux parent names in clk-rk3568.c, so
boards can reparent SCLK_GMAC0_RX_TX / SCLK_GMAC1_RX_TX through
assigned-clock-parents.

The XPCS node is disabled by default and must be enabled at the board
level when 1000BASE-X/SGMII/QSGMII is in use.  The fixed-clock nodes
are always present and do not have a status property, as they are
static clock sources.

The XPCS node requires a reference to the appropriate Naneng Combo PHY
via the phys property.  dtbs_check only validates required properties
for enabled nodes, so the SoC dtsi does not provide phys: boards that
enable the XPCS must supply it, since the SerDes link is a board-level
design choice (combphy1 on some boards, combphy2 on others).

Signed-off-by: Coia Prant <coiaprant@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3568.dtsi | 23 +++++++++++++++++++++++
 1 file changed, 23 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3568.dtsi b/arch/arm64/boot/dts/rockchip/rk3568.dtsi
index 3bc653f027f1f..20a72785adbc2 100644
--- a/arch/arm64/boot/dts/rockchip/rk3568.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3568.dtsi
@@ -8,6 +8,20 @@
 / {
 	compatible = "rockchip,rk3568";
 
+	clk_gmac0_xpcs_mii: clock-xpcs-gmac0 {
+		compatible = "fixed-clock";
+		clock-frequency = <125000000>;
+		clock-output-names = "clk_gmac0_xpcs_mii";
+		#clock-cells = <0>;
+	};
+
+	clk_gmac1_xpcs_mii: clock-xpcs-gmac1 {
+		compatible = "fixed-clock";
+		clock-frequency = <125000000>;
+		clock-output-names = "clk_gmac1_xpcs_mii";
+		#clock-cells = <0>;
+	};
+
 	cpu0_opp_table: opp-table-0 {
 		compatible = "operating-points-v2";
 		opp-shared;
@@ -110,6 +124,15 @@ sata0: sata@fc000000 {
 		status = "disabled";
 	};
 
+	xpcs: ethernet-pcs@fda00000 {
+		compatible = "rockchip,rk3568-xpcs";
+		reg = <0x0 0xfda00000 0x0 0x200000>;
+		clocks = <&cru PCLK_XPCS>, <&cru CLK_XPCS_EEE>;
+		clock-names = "csr", "eee";
+		power-domains = <&power RK3568_PD_PIPE>;
+		status = "disabled";
+	};
+
 	pipe_phy_grf0: syscon@fdc70000 {
 		compatible = "rockchip,rk3568-pipe-phy-grf", "syscon";
 		reg = <0x0 0xfdc70000 0x0 0x1000>;
-- 
2.47.3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
