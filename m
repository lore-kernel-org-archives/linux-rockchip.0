Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 84316C98302
	for <linux-rockchip@archiver.kernel.org>; Tue, 22 Sep 2026 20:04:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Kbqc2Xe2dnQIx6Qgg546z1+pYDlvcr9vKWuYtqC/UG4=; b=uEvxKdBdMtJJza
	wN76lAYJhPnMPLYgXZKVDnxjvRmd1x3n/BS8QUEE8wH5l/H7KwuKF5QQgPmoYkbCrL5Zzeh7Gqzn/
	PtZgkQIrItYA9ck10y25US2Iu+8Szfdn3qp/4esUAflvWWt445tFZmBfP2CV1MGHVxMSUbVpF8lqz
	nrOaxj0iig8Qhk9b+GE1HsQP6isxxqwC21yMhYaM3XZd7qk53/qO+tM+d6rSVZhxGigt/YywWwguu
	X7PsAeQBNZj95Q4p2e8BbnBzNgH75OhaC7jSe/knJRzVaIgYazJSf+ib6gbw9O7qH7JSvHVps31Ln
	f3QRwzk3yUtdZbqLYiPA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x96j7-00000006UAU-0TI6;
	Tue, 22 Sep 2026 20:04:29 +0000
Received: from mail-pj2-x0b.google.com ([2607:f8b0:4864:39::b])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x96j4-00000006U7N-34uK
	for linux-rockchip@lists.infradead.org;
	Tue, 22 Sep 2026 20:04:28 +0000
Received: by mail-pj2-x0b.google.com with SMTP id d9443c01a7336-2df5ab2f7b4so756225ad.1
        for <linux-rockchip@lists.infradead.org>; Tue, 22 Sep 2026 13:04:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1790107466; x=1790712266; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=pIbZ2Qb+jhg9YxUorYRFCm5h/dMc9oDQD6qvJFZg4XI=;
        b=b+jD2MPC7nre9vRLukjs6XSdDTpLwZ39MNwgIaYkTHyRONNedCJV6Bfna6b9rhSjQI
         8j9BE8G59UGc4JISoaYYQQX8lmWJYwkQO/Ya5eV9umG2corcvWM6OHNx08xcpxxITibn
         V7ks7vDZTcg4H4xLYTr9U9vIH0uX0ZFWTfuIB7R6KtmrH/dEJWdO0rWDqbQ9ybJMXYLo
         6F6qnSiHXYDwsnlDedQfELU1jpC4Hh8205VHPHCvtoYCL6uyQo+1uyOQd0sFKMB31opa
         ta0WyNUVnPRaqiJPG3GgzXyuOlgah/d6jSQIXJNHC6GWEystGUpvbVICBjDaT4A9X0kP
         sQ7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1790107466; x=1790712266;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=pIbZ2Qb+jhg9YxUorYRFCm5h/dMc9oDQD6qvJFZg4XI=;
        b=xMdy6KWWGk/7vzKgiVQF/zQNXCrds6fezOPyDgONEqs8KskG7r9CGXEg7nx3dM/R9/
         +GotoEGqRY5tROzgcqYRbEi/G9eUIxMjBnxcVt9uWt4t8MyIvZhKqOEu/x9Nis80Rw2k
         zG+vcO4qq3zlEB333U1MT0nBb1lCrO4yPC7WXN8vxiYk5nRVTw03uI9wmOzqGIJENHfY
         xnWUx5ilN8su+7UHrJkfUBERzFbNlY9mSY1KUjW+KmtmjrKGQ8wB2SLC7lUS8SvsPO2p
         rpgRgbQZQg3FFxZOfiEESLMGTdILsr5fHF0jkWqgVf9UxpCRaHhizziKgxcIz93uT6bl
         Qedw==
X-Forwarded-Encrypted: i=1; AKwUvBzrhiKCUda++ikwDOhCEjJim78TPlEEOxQINpArIWzH/A2GHZm+HHNq16GAntXF7OLHATofq+VGLiwarRz4Gw==@lists.infradead.org
X-Gm-Message-State: AFuF++kv7ELDHyNsm4/ns4MS9yWZZXiOZtpdiJ90yRtshj+E6h3svta/
	AEXu0e8EOsAqqbxDnmam24YSyseA+U4bk7qeNPxhA9h8LBCwfO4O6SCi
X-Gm-Gg: AYBFou3NvHQZA0BHKpp5NTcC2mIMBy0k+2xOL7yQOWLbN3bal8HQUDgnokPlBvan0L+
	kkBw/WKwlj9zWfH8terwScUMPP8GU0HIU1luPvWOVdUVZELsvMeiaMDWOTf7vq4Nhhk7uhFA0Aq
	tc84W1x7PFFYYISzzwpCbB7WBr5JodAUN68Yb32Lg3mkS4F5tF/MlVOUrJE1QhrlH18Q6qZNDXU
	zmmvhu60fUkCwJ4s04U5c5c6rEYBJZXVDKXp6/XQPpAyEhoBfI1+Ts9OgjEgwv1lefXHd8AQiJm
	JtNyp0lyXxLxLrHnR74gLCZscdHmbTvhfrv6iTyb6L+823BCm2s08ho5zP948ptaEVe+1tlT6pX
	ODdcljm3ODMx2JYCljitkENmxTssr7JcZVoeXU1L5Qzeg25TnNGjJWYw9wn2jsnK/mpRFHnmhKo
	l4CnY6VDHWnw/C0InY2xHlv8GPzX//a3DyqRdNwfvPRH1udDKmv9lk2hMiTFN3QL2Kd+Mj7izs3
	K4Hdps=
X-Received: by 2002:a17:903:3245:b0:2d9:438e:b70d with SMTP id d9443c01a7336-2df69d0cfd9mr4017475ad.1.1790107465799;
        Tue, 22 Sep 2026 13:04:25 -0700 (PDT)
Received: from server.lan ([168.138.199.194])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2df6a5eea15sm654515ad.64.2026.09.22.13.04.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 22 Sep 2026 13:04:25 -0700 (PDT)
From: Coia Prant <coiaprant@gmail.com>
To: Andrew Lunn <andrew+netdev@lunn.ch>,
	"David S . Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Paolo Abeni <pabeni@redhat.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Vinod Koul <vkoul@kernel.org>,
	Maxime Chevallier <maxime.chevallier@bootlin.com>,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>,
	Romain Gantois <romain.gantois@bootlin.com>,
	Heiner Kallweit <hkallweit1@gmail.com>,
	Coia Prant <coiaprant@gmail.com>
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
	Russell King <linux@armlinux.org.uk>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	David Heidelberg <david@ixit.cz>,
	netdev@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-renesas-soc@vger.kernel.org
Subject: [PATCH net-next v10 05/11] arm64: dts: rockchip: rk3568: add XPCS and fixed-clock nodes
Date: Wed, 23 Sep 2026 04:03:29 +0800
Message-ID: <20260922200336.2201212-6-coiaprant@gmail.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260922200336.2201212-1-coiaprant@gmail.com>
References: <20260922200336.2201212-1-coiaprant@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260922_130426_843657_B71C46D0 
X-CRM114-Status: GOOD (  13.45  )
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

The RK3568 SoC integrates a Synopsys DesignWare XPCS that provides
the Physical Coding Sublayer for 1000BASE-X, SGMII, and QSGMII
interfaces via its four MII ports.  Add the XPCS device node and
its pcs-mii sub-nodes to the SoC device tree.

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

The XPCS node and its mii sub-nodes are disabled by default and
must be enabled at the board level when 1000BASE-X/SGMII/QSGMII is
in use.  The fixed-clock nodes are always present and do not have a
status property, as they are static clock sources.

The XPCS node requires a reference to the appropriate Naneng Combo PHY
via the phys property.  dtbs_check only validates required properties
for enabled nodes, so the SoC dtsi does not provide phys/phy-names:
boards that enable the XPCS must supply them, since the SerDes link is
a board-level design choice (combphy1 on some boards, combphy2 on
others).

Signed-off-by: Coia Prant <coiaprant@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3568.dtsi | 45 ++++++++++++++++++++++++
 1 file changed, 45 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3568.dtsi b/arch/arm64/boot/dts/rockchip/rk3568.dtsi
index 3bc653f027f1f..2cea108b31a4e 100644
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
@@ -110,6 +124,37 @@ sata0: sata@fc000000 {
 		status = "disabled";
 	};
 
+	xpcs: ethernet-pcs@fda00000 {
+		compatible = "rockchip,rk3568-xpcs";
+		#address-cells = <1>;
+		#size-cells = <0>;
+		reg = <0x0 0xfda00000 0x0 0x200000>;
+		clocks = <&cru PCLK_XPCS>, <&cru CLK_XPCS_EEE>;
+		clock-names = "csr", "eee";
+		power-domains = <&power RK3568_PD_PIPE>;
+		status = "disabled";
+
+		xpcs_mii0: ethernet-pcs-mii@0 {
+			reg = <0>;
+			status = "disabled";
+		};
+
+		xpcs_mii1: ethernet-pcs-mii@1 {
+			reg = <1>;
+			status = "disabled";
+		};
+
+		xpcs_mii2: ethernet-pcs-mii@2 {
+			reg = <2>;
+			status = "disabled";
+		};
+
+		xpcs_mii3: ethernet-pcs-mii@3 {
+			reg = <3>;
+			status = "disabled";
+		};
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
