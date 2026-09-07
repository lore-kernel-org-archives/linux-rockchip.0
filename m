Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2B395C79FA3
	for <linux-rockchip@archiver.kernel.org>; Mon,  7 Sep 2026 15:39:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VwTD6T38WhGjxaeHbVC2gBhwjfl3vkFPXTvUtBIRPC0=; b=5Ae+ghiEUUdoXi
	zfiRDN8MzQJJmf4c6+p1BH/emEHPaG1aIZsLMePKsiZiH++8gcjT11Rmpu3dri2vNDhX7BkuRLmEh
	JSQervog9afbQStW5/cXMOKrw/ehZ5HhAA8lbnjg2hCvF0zZ2xozHU02UgSuAXdmpfXkCuvKkq9vE
	o/rZB11uv/lBnX1qs1nTxJCc1fUCEUzsA0BVNtPDRoNJgMsnjT0SSNmfvkyi2bX0xYKp2UaXBE0Nu
	cH9qyZfbMAJ4/tr6JuK6WTSY8gfRVdDhJ6nIjzSdpQLuL6DOalY/eDA0TMgszPJlliAzU9MUKGxGR
	jmSdlQWIDoS6HteeC2ww==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3bRH-00000007COA-3r8L;
	Mon, 07 Sep 2026 15:39:19 +0000
Received: from mail-pj2-x07.google.com ([2607:f8b0:4864:39::7])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3bRD-00000007CKL-3hs3
	for linux-rockchip@lists.infradead.org;
	Mon, 07 Sep 2026 15:39:18 +0000
Received: by mail-pj2-x07.google.com with SMTP id 98e67ed59e1d1-398e10200a6so1899647a91.1
        for <linux-rockchip@lists.infradead.org>; Mon, 07 Sep 2026 08:39:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1788795555; x=1789400355; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=7/ufsj+YTp5B4a6XdY0sQWUkJ+NQSUpM6CSLQJOVS40=;
        b=GB7SxJxpzJLBstxNf6WW/4ihVwuw73WZi90bbSzXco+WHV0r5VM1rrm4fE2MNmhB+i
         ICvZagvr7/kkoWOw2A3l1wmDwP7beFWuu/+f7nnqkD3bUs9kVA69fBcxglwmkee6CRQB
         SYYkl66WLJnDM5V2ixGbSRiJ1LDmCmxgs5ifZ9CvbNLb17hROKqVtWN0GWwCs0RKud8z
         0f7j/3tbV9C7IwToUTM4GXReQCgF3r3JkBdRDjpXb+uk1k6uAMeXtIg6QSbsjREVdGQR
         614QD6xbyy3UsnXamx9ndTZI8VWyMDK0EVFbFg8xEYVkdrCi6yeFfwX5npXCV2vn3ZpW
         /crg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788795555; x=1789400355;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=7/ufsj+YTp5B4a6XdY0sQWUkJ+NQSUpM6CSLQJOVS40=;
        b=WioMwHDBYvWwSvPHC6NYcUezAJxVnj7ZQJ4mnX/pG0SIayIgkEBkRpPnxdDudJQAc+
         Zr68rPSPpWFknt84cinRF3rvYFgg6RHQ/2gQgFatihIzQzgVO/ACSRPTwdk2dGdmPtVI
         Vv02Eueh9j+/Z4eL8VCe0fA2ocAf+Z63yL426chGvNfR7RTfGZctmxqtn4lL8fdXAycO
         70nxCCai1mXF0EHFMA8JeEEgJLPQCiKqi1CGQG9DATRynWEs8BBU2FclQ6TEAoBg965N
         Fnepfbwft1iawnLp1V4fhGjr/gquXcTjYKNK65t6u7Ij+amxhaD3H0APJLR1i9PgPYgd
         BJ0g==
X-Forwarded-Encrypted: i=1; AKwUvBy1/iEFAzXO9scPDn/cihUjrAeTJxRIawzU0lfFta1XGlLfIvQU9WICJ9sHb7QqHL7LApvtyXkMRG1cNT2UIA==@lists.infradead.org
X-Gm-Message-State: AFuF++lZKgI4stfrc2UcmlXXHcOzvghZ4CG0etm6z/L+uhcsBi6dBS0R
	fpOotMywR5GVCZfNkBx2wGmzuYNJeK5ENeO/uNzVrLeufILEz+LbGqJT
X-Gm-Gg: AYBFou0YATDT5TBqQ2qfOqMBufx7mPgJkNLPZM3Zosr9zqrO6K1X45zD/npqykXl1+7
	6jIDtynBnQF2xb9CY6R7DZQ4rpP+6FPuKGH636bElIgCeO831umJVVx0oe5N0u33PqH100c+Gmh
	53g6DwXPd3pZmLFFrOpS/dVKObhJT/Ck+lqmAf9f6ehiqGsxt+tbahlCe3lcSBf72Dl3lbEzF7B
	KsBAhC4QeL9N3slK9AKWqQ2k8hWwptk1tNHyz6Ke6IQywpTMquaqWEcu+DmbiPh5zSIjdYyszWx
	OeM++PUP1BirXviokGTg+ur94hxxg1z3gAZ+0BVdgk5XP1OzWk2MLr4eg4IPBkNrdZgVRBn4r9v
	wfyS8vSQYWXAelgk5k5tz6cv3YqhnRn/P8XnA/oLi9y38purG+rUfmm7cr4A4OxrzncKmOBmR/J
	Fl1w/eSzI/PiDJFZ22KF5i6pZe7Y6dT21kBSlJYkUrsapCRxidfwjuDQlaTi0=
X-Received: by 2002:a17:90b:2681:b0:38f:5801:dc0e with SMTP id 98e67ed59e1d1-39b261d52a4mr35850991a91.15.1788795555107;
        Mon, 07 Sep 2026 08:39:15 -0700 (PDT)
Received: from server.lan ([150.230.217.250])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-39b260fdf9asm21690121a91.9.2026.09.07.08.39.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 07 Sep 2026 08:39:12 -0700 (PDT)
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
Subject: [PATCH net-next v4 05/10] arm64: dts: rockchip: rk3568: add XPCS and fixed-clock nodes
Date: Mon,  7 Sep 2026 23:37:08 +0800
Message-ID: <20260907153713.2572547-7-coiaprant@gmail.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260907153713.2572547-2-coiaprant@gmail.com>
References: <20260907153713.2572547-2-coiaprant@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260907_083916_854318_A1B501EF 
X-CRM114-Status: GOOD (  12.06  )
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

Also add two fixed-clock nodes (xpcs_gmac0_clk and xpcs_gmac1_clk)
providing the 125 MHz reference clock for the GMACs when operating
with XPCS.  These clocks are used as the assigned-clock-parents
for the respective GMAC nodes in board-level device trees.

The XPCS node and its pcs-mii sub-nodes are disabled by default and
must be enabled at the board level when 1000BASE-X/SGMII/QSGMII is
in use.  The fixed-clock nodes are always present and do not have a
status property, as they are static clock sources.

The XPCS node also requires a reference to the appropriate Naneng
Combo PHY via the phys property at the board level.

Signed-off-by: Coia Prant <coiaprant@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3568.dtsi | 45 ++++++++++++++++++++++++
 1 file changed, 45 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3568.dtsi b/arch/arm64/boot/dts/rockchip/rk3568.dtsi
index 3bc653f027f1f..989e164c0eb39 100644
--- a/arch/arm64/boot/dts/rockchip/rk3568.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3568.dtsi
@@ -110,6 +110,51 @@ sata0: sata@fc000000 {
 		status = "disabled";
 	};
 
+	xpcs: pcs@fda00000 {
+		compatible = "rockchip,rk3568-xpcs";
+		#address-cells = <1>;
+		#size-cells = <0>;
+		reg = <0x0 0xfda00000 0x0 0x200000>;
+		clocks = <&cru PCLK_XPCS>, <&cru CLK_XPCS_EEE>;
+		clock-names = "csr", "eee";
+		power-domains = <&power RK3568_PD_PIPE>;
+		status = "disabled";
+
+		xpcs_mii0: pcs-mii@0 {
+			reg = <0>;
+			status = "disabled";
+		};
+
+		xpcs_mii1: pcs-mii@1 {
+			reg = <1>;
+			status = "disabled";
+		};
+
+		xpcs_mii2: pcs-mii@2 {
+			reg = <2>;
+			status = "disabled";
+		};
+
+		xpcs_mii3: pcs-mii@3 {
+			reg = <3>;
+			status = "disabled";
+		};
+	};
+
+	xpcs_gmac0_clk: xpcs-gmac0-clock {
+		compatible = "fixed-clock";
+		clock-frequency = <125000000>;
+		clock-output-names = "clk_gmac0_xpcs_mii";
+		#clock-cells = <0>;
+	};
+
+	xpcs_gmac1_clk: xpcs-gmac1-clock {
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
