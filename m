Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A6D39606A31A
	for <linux-rockchip@archiver.kernel.org>; Thu, 22 Oct 2026 03:30:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=1KadSvRd;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20251104 header.b=ipqEWRqS
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cek+K2fvZGJpAdh/P8XiDcczQA+mkRrnXNVTeBjDtvU=; b=1KadSvRdE0pzpT
	DN8rGFsbteB6TFIOQ81tp2NFD88DdNKClIDxtuLEi2D0n8r+rmw4bJTqaKCiFbywHVlDz8msiSzWa
	nqOpHJEugRJoupSzGZEVRlYC2IAwenFnISFcKyLTXI6UHV23PqsOzb2IPz80xdAxxM2r3l1ZbLEPB
	zIGIMFwh/cEpJkysjdzFW2/GuZuALoNHGeHFIG6dT767iO5IK0LxsK9JCg1lLh9hlYoQA0iip75bI
	TGU/wFVu4crv8+2eEi/MFa7ascOP8SYqg/ycc3Sn5sK60urDQ4Mg04/M0Iq9ahkdaB8z0mP2Y1QsO
	o0fmpJaYRmS8FVKYGh+A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xJj1D-0000000DFWy-29qX;
	Thu, 22 Oct 2026 02:59:03 +0000
Received: from mail-dy1-x1341.google.com ([2607:f8b0:4864:20::1341])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xJj1A-0000000DFTw-1UE9
	for linux-rockchip@lists.infradead.org;
	Thu, 22 Oct 2026 02:59:02 +0000
Received: by mail-dy1-x1341.google.com with SMTP id 5a478bee46e88-35943f55c06so610612eec.0
        for <linux-rockchip@lists.infradead.org>; Wed, 21 Oct 2026 19:59:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1792637939; x=1793242739; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=E+chekywn+zjR8qKfFmlr4rUPqe8P6DWzkjYSgfwJdo=;
        b=ipqEWRqS9GAXjmQyjs7hjVGxdxqo6HPjVA6nn1ZDtpObWEpWKekzEFOqvH/SqiK9gO
         L4Pi6yd/tQHSmbs+qTNLREDLtf1tkMRhtiz2r7jrNyVyfILoAY3XMEWUetxpKBJx9vN1
         eHIdgi8uwYCjb2Sx269xNMnW7RRPz0HS3qeYZ4cmSp9nOdMriblLZIjY2j8LJD4hbdba
         zmXucU0ntnjY5iCbTdAMLj2m9ckVtsFM+sFH9p7Y+wljTIZDPUwoBFb8AghdJBthvk9M
         32Prdji86nOSwLuapZk9ChlmsWg+tIaWvtW+uXULi0PTfa4/nK4CzVVv9aiOdWFqvuYX
         Tfmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792637939; x=1793242739;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=E+chekywn+zjR8qKfFmlr4rUPqe8P6DWzkjYSgfwJdo=;
        b=D2YyxdZfr21bmR4DuZFS167tiBjiMuk9L0L+VMaQ5KO0WAGa+4ASFstbFSrq7n/wiM
         uCLSe72cRzWq0lIVWhuOpUdKLkBoa6Vs9vkN5stjP3Al33FLyg+/dVsRKbPyNIfKJ0p4
         zuA5AXFIuiJgZQrKrpHeNGW1R52f2gTVOLHH3by2GJceqkRLqeROhtNKsRRQZcD9O5A9
         9NPw+Dxh3I/hGGrUKpfRa+Y/IvrE/7JFZu1lQ7jvr1vjKZiDAkXQXcei5jAYsyoefdNu
         XCwZhnvxjwsqofDmTXVA57FjRm1mXVCAtUShdLPrNwbk14oR3hMUUxrfPHTejZeR+jy2
         Nqog==
X-Forwarded-Encrypted: i=1; AKwUvBxvakEgkGh9D2xfrjbjKMZQrx+JibWJaoLlEjq+EU7cf2CVTqGU09EFeuqR9H3cynS2sdKDPAPIY12Zwbhaxg==@lists.infradead.org
X-Gm-Message-State: AFq9FYLffg2O4dFj1FudGd/8IA05jqu4pRJRPxuSd6Vf6J1J4RtdIHJ5
	edmcELbIQjPM2RMjY00/RhDjKTNJwTlnAq2S0Ysi3TX7+IjJaBDpICW/Ykr9KS7jt1PlaQ==
X-Gm-Gg: AYBFou10ukYB56JbKYyhH2UbfG6stypCyQ9g6wih9TAc6iYxqa9syYhxENPhfAuWsMe
	94B7PDxzlZ9OGbEmNhj6XMG097QhTzBoNiVYlTke9BVJSFGz305bSD0SsPmtJgrLlRAsT4w74O2
	/PGa/+Fuxn1ks4wpm4dsd1HDpzhdvi0aySNgAP887RV1WUrjIimph1cXN9n539dlOlybJlckESo
	4eR8idy6wTAayNMIHCWdO7HWRXfQMpRNdDSONUw58jv5PXqiZGuhkCOToN/AqMpd9BKfXU6N02S
	kwNk9gtpWcIy1iQZk01204W3LqhO1BN6/nGtj0S2gM0t14wQ2NODDcLuvD9qAGJAHAfLmKBCssh
	VJVplHSDhy0HcbKYPo/3OiX/DYQ5i2Pyg3AAbQubbPF+/wfbPSFTCsJB1vrzAqwpgiESD1w8MoZ
	bFb41DZX9l8EV7PsVoPMt9rJj8CGLzi4magaK4SyfzP4d/yZp+seZX26BQp9HaF9hR57Yfrr99m
	Mn/CwpIo3HVaaMXEX43gIvslKzOP8IscMrnxuxo8eHS342/xc1H2Q==
X-Received: by 2002:a05:7300:d407:b0:362:2e2f:c261 with SMTP id 5a478bee46e88-368b15180d8mr1324129eec.27.1792637938909;
        Wed, 21 Oct 2026 19:58:58 -0700 (PDT)
Received: from server.lan ([168.138.199.194])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-36740cc8c6dsm13029572eec.12.2026.10.21.19.58.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 21 Oct 2026 19:58:58 -0700 (PDT)
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
Subject: [PATCH v11 1/3] arm64: dts: rockchip: rk3568: add XPCS and fixed-clock nodes
Date: Thu, 22 Oct 2026 10:58:42 +0800
Message-ID: <20261022025844.150320-2-coiaprant@gmail.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20261022025844.150320-1-coiaprant@gmail.com>
References: <20261022025844.150320-1-coiaprant@gmail.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261021_195900_745889_500C6B91 
X-CRM114-Status: GOOD (  12.67  )
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
