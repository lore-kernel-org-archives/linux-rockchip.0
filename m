Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9444CC982D2
	for <linux-rockchip@archiver.kernel.org>; Thu, 17 Sep 2026 20:47:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rViO89wwZbXE6EbHAap4EkkEdF4kqdT7EEyT7LgB0lg=; b=Awph9ECBpFcJoU
	8FajAFXKzmL8mXVFAvhjKXy8AZq6uG5ZtbuZ3I0iv4ZYAOifBn6mmbNyAjTnAYLkxjLPo/k7QHBb5
	4cv/oA+L7VoSQlzC2UO9QCRfFDbjqg6j7/dUJIK7V15dWPSp4C/j8kgVEP8wOEvbu9Go0MHbxvaEw
	mnd6lAtYMtN3wm+sc5k7GVH79CIBhFx9EnXopNwNXsmWJVY+dtFRikptPn2uSvPBHH2NnI025isVz
	1JFdfR0RXuW1E9FbRqEaukG5eQ06OP1+C3uuTOOg1UKSs2uD0qgJ2WB8BwouXJV7GANx2GIkZUPMQ
	cbuX8NRkqbpEUIzSdFog==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x7J1P-0000000CSyJ-0sdk;
	Thu, 17 Sep 2026 20:47:55 +0000
Received: from mail-pj2-x0b.google.com ([2607:f8b0:4864:39::b])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x7J1L-0000000CSuQ-2xqh
	for linux-rockchip@lists.infradead.org;
	Thu, 17 Sep 2026 20:47:53 +0000
Received: by mail-pj2-x0b.google.com with SMTP id 98e67ed59e1d1-39569e136f9so64829a91.0
        for <linux-rockchip@lists.infradead.org>; Thu, 17 Sep 2026 13:47:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1789678071; x=1790282871; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=Mg8/YZyIZ3CihMksQCv23yBYBJSGhmM45ppIsWYSP5M=;
        b=Be1b8WTHOYzSZL5t0BVD/C3nUSG7S+7QoMoh/FkfxWhJvHnz8MjQicnRVEHMkg7lLv
         3ZOCATLc2MbwGOQFj9OWu/HXc89zDJ1ZBXSwbImKExpRNFA4m2k/4/xsZLCFepwerM44
         noNpx7y0EoooPeOLo2INY4d+4Zm8gR+QlxqWDYgopyBLZEmY655qRuqtiDQ3xVmWCWyr
         Z0hEpJWDmuekj05K83/FX66UQjhGzecPiwu44rAezBqQfFhUwXFtGSG+EOzvMVXOTtVr
         KnYBDn/mj3UUIgGsaCfon0g+C/K3s1TgiOtiAJ79lrhLdNEQv1ReKe6OsWL+y72gmnKm
         Kogg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1789678071; x=1790282871;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=Mg8/YZyIZ3CihMksQCv23yBYBJSGhmM45ppIsWYSP5M=;
        b=pET7fSzAJD7y9fMF7jbnb+4KK8O48lqkFRUcOmwiAV7SvcXeccEYlyy0YYuycAmj2t
         jqWaE6ZMjn8vbc7L0dV8R3KcbYYfTKPiVHX0qvSLfvaWnhneNKPZ/nspZw2P19k0n2xX
         9W50th0f3evqeglDLgCXgSrriHtwU8LHdL5P7iAz/QpyS55AR1AOF0KzXwnOJR7I+j9Y
         Wt55FZI6thMDH8nwokKnoL2LmJvCPEHfi6ggbQg5kDGluUprrC2ZZRZ4AlDQ1//2GvqI
         bFyLGiJDBQb9I30AJWfCRf031X/x9gZSGeSfxduRcPM3bsXz15mIxbfjE4ukj+Bb8j7w
         W6BQ==
X-Forwarded-Encrypted: i=1; AKwUvBwA0KibYl+gMcO/JYd6m718B2v9DPkivgG98q1HpXZqKXMUl2iV+szbwCgSDy0eU2hB/tMiFhuiLfKMAggMog==@lists.infradead.org
X-Gm-Message-State: AFuF++khi2hj7HRf23fWHaj++2hr59QXhjf/mPrMyqpb/LiVTMiYVgYT
	Bifi07lpVzIBkeCXjBs59B8Rj8E+wgJiGx9Sti/aEDyxxh9+OAcTp+2s
X-Gm-Gg: AYBFou2+UtJHRzL6E1Mts/zRkns80sSsJxhncbY8UKHFl8nroQjOlBDbYudmn4/Gqtp
	JByjEh0WhsIGOTRX03OaE7aCVZqWeODDrqO24KsleVl6Pst6ksotYbDtD1RHm8xhoZTIlH+i4zj
	1Ln3PxXS2dM4buMs7P9iCWjZ0LM63yGwzZEt8sShurhrZ8O5TGlVQvjvgAFGRIyzWgGozw8ENaa
	0ljarveQQyh27/EW6syR/2ku+NjSZC1/BTV9je8nPjuYe4ZhMrkFY+GulcYwzNPe6TN8ceuR1CX
	AV1+F/R/HJT4QQlVe22oJ1pkolosWIkM86CX+y+tSbl8fx0wsm1hKE03TO71icCSSFxU7t/GWjI
	77Rd9S0nAwGZRnESp1gb8H1RAWeNdHS/eAMnCWHWEPJ0ojqqy1e+b8IXVz55nqA5k4QWiqMiZma
	+HDOgHFuJbWTWGKhH0e6jyhlEJ4QM4rx7Y1uuPU0izBdjqBC6ISS4ZPSprRxlarTWgCxgGFtt50
	rpoMBT5
X-Received: by 2002:a17:90b:3b4b:b0:39e:d2a:e25a with SMTP id 98e67ed59e1d1-39e54b771c2mr760897a91.13.1789678071020;
        Thu, 17 Sep 2026 13:47:51 -0700 (PDT)
Received: from server.lan ([168.138.199.194])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-39e50a4bc22sm1232196a91.17.2026.09.17.13.47.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 17 Sep 2026 13:47:50 -0700 (PDT)
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
	linux-stm32@st-md-mailman.stormreply.com,
	linux-renesas-soc@vger.kernel.org
Subject: [PATCH net-next v7 05/11] arm64: dts: rockchip: rk3568: add XPCS and fixed-clock nodes
Date: Fri, 18 Sep 2026 04:46:16 +0800
Message-ID: <20260917204624.2427486-6-coiaprant@gmail.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260917204624.2427486-1-coiaprant@gmail.com>
References: <20260917204624.2427486-1-coiaprant@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260917_134751_775995_5CE35B6C 
X-CRM114-Status: GOOD (  12.56  )
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
