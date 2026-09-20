Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B520DC982D8
	for <linux-rockchip@archiver.kernel.org>; Sun, 20 Sep 2026 17:02:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rViO89wwZbXE6EbHAap4EkkEdF4kqdT7EEyT7LgB0lg=; b=XekfJJtH6+eVa9
	X2CzcakrUMMoHGTMBBcc1q+0ZEiCIZ5l3/lxPw+KU7FQkyRO6dYjLYS/c/YQs7/9963L2Ztt2ICta
	xdJP1D22rajlrw6wHQxmbM5brT3LrnqKpVN9RSHqGdqf9OOBjs1vuuptZPPUfRJQf5+QnuDabSn94
	3l+FE0uLVynTEtn5LUH5DWidAjNLpNMIRAvq22VFInJRTAT9YrpK8yhjcN2pjU3Ai54tF7TMkNKZx
	cDP0yK0Vc6d1S5pJt/SCWCjqI/IxSz9BRTfWOvv6lYFtbDG9PdgESuwqZ1paNw/y4Qki4FmClh3PI
	QbYfCpSUDRa7uzqOT13g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8KwJ-0000000098E-18ks;
	Sun, 20 Sep 2026 17:02:55 +0000
Received: from mail-pz2-x09.google.com ([2607:f8b0:4864:3b::9])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8KwG-0000000094F-0UPf
	for linux-rockchip@lists.infradead.org;
	Sun, 20 Sep 2026 17:02:54 +0000
Received: by mail-pz2-x09.google.com with SMTP id 41be03b00d2f7-cc53988d9f3so1289066a12.0
        for <linux-rockchip@lists.infradead.org>; Sun, 20 Sep 2026 10:02:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1789923771; x=1790528571; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=Mg8/YZyIZ3CihMksQCv23yBYBJSGhmM45ppIsWYSP5M=;
        b=KtlgqDn+ehoX0f9gtcg9ds8R34JRZtw/ohuGtzjHptUTlQjdAP+EB4eahntJkQBgZB
         0d4Xrvf7vKZ/qu+Fvie0hsewc65zVFQYpymEYMY23HqIhyQxPWcVQOeVyXAaTW7hgkyp
         RpLwF4h5do7wVgYjzOUNe4ilCJclli2I9a7DAF2/8UbGdXCgDr58Wi24uZLTs88vdmH5
         VEJOJeT/3lZvR87Okk84JOE91aeMRr47XXUK70Vk9XihGSVxYXrH/ysNeRkWBY3VMGtz
         LXFZ09OBJE/6L7/6XDJIDN4xibeQ9JURmkke5obZH/PUNDR4T9ebr87VQ5V7dhLWDtuR
         88iA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1789923771; x=1790528571;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=Mg8/YZyIZ3CihMksQCv23yBYBJSGhmM45ppIsWYSP5M=;
        b=bt2NjQ8nyoVdtWbbqu+rvS3F3F5axkzxoapP1MYu9CanA8tGv21B91a/BemDEfQ6XZ
         peWvgX+JyHNSAse4OuzcBtAqsjJ/Gt8qRezoiwWmaNZxvOwZDULLkxNCzlhsuNaDCXzb
         3NTOWEkR1NlrsOm/uJBVsL5PbEz2H4S9AKiJwJhqPVyAVQy9pTjEe5HGKPAVv+qv6qj1
         livilYZi8dVzMEHMJwjXNuR1EVQj7ddf+6JpA0JGt5PMQXAMddTYpeHdTvqMzC3fYp1o
         OE+SbcpRRarXYHQzUepFsQqv+LigHKkajVhkIx+SGlZBxjI2AoUcUM5cIILRP15wiai0
         n8Yg==
X-Forwarded-Encrypted: i=1; AKwUvBxLBZ1W+z46IqbV8GuS/+T/QI9zYdghCpoai7ycywtVuwFZXogFrRxar2Ff5U44Mk3534kHlMmUXRKIfW5L/A==@lists.infradead.org
X-Gm-Message-State: AFuF++nsaXmA0tx8Xe/Jm3pkIQ2ttdwsChLfO8KTJr8cKrQF2sDBQY6D
	lsNzK7SjHDHluCUAMRZoLdTnEVZcRr9nB47Z+Ucz7rZj+wUo8qZbpb91
X-Gm-Gg: AYBFou3t1iRkTcy+Lgqp7YQ1g03QAuEg1sZxuO+HNalIN+zu/6K0yr0NuisI/ijNIcy
	TlusSJflg0vc4gyg4LonsjAMn5E0txTBIz1tUPoDUDotXy0YGg2FReE8KoW92kY2fZJ5x0GEKuO
	40PRtGrHulyBEqb7q+kR5+8VJCmexxjjFtYdX0rC0NrvmolyEbn5HwWU4CpL5VtYnTgZ+4F7CRm
	KhJg7znhqH/CmSR9hVQSlyap6kDbDZB1HwwwIM0lFmz91zHkPQqFKmie7D53SQoSWFxxGmcDBqA
	iaoWWkXyc5iDfNJ4h852cdNXihcP/MvkR9e8i5RAXkMY/45WLPw1V1+z8WEwhzrUoXuMuL1deBc
	POJLFHhINiQZLIl4dFQLxjROhb3XLZ+x7cEd+4mfTLAsMZo2kEUFdYT62DL95daLX9YNDj1bxHj
	BKQbPrBjrxxVTpTiUH1Y7X9VABXV8OtItlgu6mTnGGmz0Ep+lz/2Glx9ES+riGxJ67HE8vnYj3l
	qvaUwO5
X-Received: by 2002:a05:6a00:1ca2:b0:851:8baf:5b26 with SMTP id d2e1a72fcca58-874dc5eb6b5mr12081998b3a.14.1789923771468;
        Sun, 20 Sep 2026 10:02:51 -0700 (PDT)
Received: from server.lan ([168.138.199.194])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-877a9d07425sm2140646b3a.42.2026.09.20.10.02.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 20 Sep 2026 10:02:50 -0700 (PDT)
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
Subject: [PATCH net-next v9 05/11] arm64: dts: rockchip: rk3568: add XPCS and fixed-clock nodes
Date: Mon, 21 Sep 2026 01:01:09 +0800
Message-ID: <20260920170116.3624104-6-coiaprant@gmail.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260920170116.3624104-1-coiaprant@gmail.com>
References: <20260920170116.3624104-1-coiaprant@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260920_100252_166384_524012D0 
X-CRM114-Status: GOOD (  12.67  )
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
index 3bc653f027f1f..227d03e336043 100644
--- a/arch/arm64/boot/dts/rockchip/rk3568.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3568.dtsi
@@ -110,6 +110,51 @@ sata0: sata@fc000000 {
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
 	pipe_phy_grf0: syscon@fdc70000 {
 		compatible = "rockchip,rk3568-pipe-phy-grf", "syscon";
 		reg = <0x0 0xfdc70000 0x0 0x1000>;
-- 
2.47.3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
