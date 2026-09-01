Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0B403C61DD6
	for <linux-rockchip@archiver.kernel.org>; Tue,  1 Sep 2026 15:03:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VwTD6T38WhGjxaeHbVC2gBhwjfl3vkFPXTvUtBIRPC0=; b=W2EFTxlXFYQPSm
	EnT4+Knq2oDMYXWIK3ZkuQvKcpQ2FlCoJ25MgJrYSXeLIrfqYeCZeLEzd+4+v1m6+goCo2UKS6uI4
	D2/PhMn+422O8eAZKBzvpreYb4h4fotnK4U3j2nKtpqiVB3VTecCd4xCKDz/qjCs15e57co2En4mO
	2OEWWWIN6Az1JgSAxgFhVpUHCoTyHnaSd48Hf+7JEqut5PyCcvf26f8Vw6L+YCpLxxT+694eAO2zo
	8KTlz56i0qDAcWq+8bA//XtkQgpPai1+4PKbLN18+UhjJPIOrVh/2pC4G1SDGn7orwjKtNzlSnN3Q
	m/weSGrLsefIMoxN90aw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x1Q0n-0000000CPkc-2qOI;
	Tue, 01 Sep 2026 15:02:57 +0000
Received: from mail-pz2-x04.google.com ([2607:f8b0:4864:3b::4])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x1Q0j-0000000CPgW-3oW7
	for linux-rockchip@lists.infradead.org;
	Tue, 01 Sep 2026 15:02:56 +0000
Received: by mail-pz2-x04.google.com with SMTP id 41be03b00d2f7-cc1bf4744e6so2319027a12.1
        for <linux-rockchip@lists.infradead.org>; Tue, 01 Sep 2026 08:02:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1788274973; x=1788879773; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=7/ufsj+YTp5B4a6XdY0sQWUkJ+NQSUpM6CSLQJOVS40=;
        b=TvZeRT+QMHL6HqUL2ZNFqAgnpGAvwCWvYlXVFu7Q6QhspCm8sHejbJXqu5K/Q89wdX
         xEMp8W1gjk20eAUyomBLFFxqVYX1NeKjfjPm9zmp5vUnLFVw+aPD28jSErIPKS4D0XDK
         QOG/2ZMRGnwkxqoXTaNh+88Yu/VEUp6FKrSMpg/k9czFPRPf0uL57yCmen+C/sX+VLC3
         yQFHwT6y5ReFkSR7OgPrpSpWclh70BszSI1rQ39Jso/5qVNV4zrFRv0IoBt8v1l3nkKy
         ijr7+sMSclMky/Xeb5FEgUoAfhS1k2CwyunCg5/r9XYuMWwNvJIDW6BlRUeCl2k4ICvp
         LZEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788274973; x=1788879773;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=7/ufsj+YTp5B4a6XdY0sQWUkJ+NQSUpM6CSLQJOVS40=;
        b=S6MZfLxTUfJwJTecckNGBHlDefxxxR3xcyTt9vAgtbgYdifARFP/atAPf1yd/8t+nq
         xW/P3XV4yzh/obWBZz0w0nHumBdXsIeYSk2ZxFxgJ3GY5WILk2de4y2c7iHRomTLpDLi
         BZoYRibAVWJyyJla4poJZp2UMsP0Nd5m1YIgMps2jPARni3GCxqiFAIXI1OZU7yrWdxT
         UbHWt/DeY5ThmGsP6qlMhggm+PBjiuNTCj3dJPPT+k9hbkd7LQUAiZT214SHaQyxsxYO
         VnyJQTA9VmY3qEOvn9Wt7L6YzozhY/oaH1x4OX8p+3Bp/C5dA54ZUDW8FHPDtOXk1T6r
         ihKw==
X-Forwarded-Encrypted: i=1; AHgh+RqRSQHko/YAnfIGEcB6/BrJYy+7OJUzGMKyAFpJXLmS9bRRuD/BEQ2xj6lOV6/+ZX2DrF4qE00IRvP6Cj3ucw==@lists.infradead.org
X-Gm-Message-State: AFuF++k3pZsHtXpluvMhXs5rKh8cFXvvUQfFSIX+5Vzu+wlOv4JGMvTR
	/gtRfA7BYTQMvRGzvO/ZguBT8ceQpE8xd4h5u6Dy5Lt+x5xbb5pt8aDC
X-Gm-Gg: AR+sD11/zheZPF+50Id7PqsAv5VkbSuQFRmaCM9RaDCv0QwOPpefIiT7KwF+Bnw1PCj
	kfzztOE+aPMjI4nOQdnMWDfdaTWvwRfMgJPykMj5PUhhYLhHK0BWrWgjoa9inlfKWvNzzisBO1r
	etW1tAf7cuP27ViX8yagPAMPpK47X5CwygcX1tyQrKihrgh6GPsAfOBFb8rJtTtpbMu5vbc278P
	RpeT4H0sXzD3G96uhewS+QGnXlkP5/RspDFDUOxfsuWtJU7eGuhdga5x5BNP1hm6nqyTBToNfd1
	0fazwBUK0z8W58Yn9PBAAHk+cIHAutmXFYBJrvfAFqQoqVvnhfJpQrOxK9c7qR5w2cth3tcAMRi
	Nuv33OOfggdDphKePSLcKGN2HQBONW3hi3PPRCYAKayaqSV2JBJTUNRa0EWUqJK+AoRXAEmgS16
	d2tJBhDcwFC9BKFd5RgeT/nZEfUgqXBvWGocTGGYzsdwrfto9cyfZf+ywFMfg=
X-Received: by 2002:a05:6a00:4187:b0:851:b03a:fcb with SMTP id d2e1a72fcca58-85629543442mr61618818b3a.14.1788274968953;
        Tue, 01 Sep 2026 08:02:48 -0700 (PDT)
Received: from server.lan ([150.230.217.250])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-85dc0716846sm27914b3a.45.2026.09.01.08.02.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 01 Sep 2026 08:02:47 -0700 (PDT)
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
Subject: [PATCH net-next v3 05/10] arm64: dts: rockchip: rk3568: add XPCS and fixed-clock nodes
Date: Tue,  1 Sep 2026 23:01:05 +0800
Message-ID: <20260901150111.141037-6-coiaprant@gmail.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260901150111.141037-1-coiaprant@gmail.com>
References: <20260901150111.141037-1-coiaprant@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260901_080253_945635_359DF977 
X-CRM114-Status: GOOD (  12.58  )
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
