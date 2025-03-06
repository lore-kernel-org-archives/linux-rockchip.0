Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 17361C282D1
	for <linux-rockchip@archiver.kernel.org>; Thu,  6 Mar 2025 22:19:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tgkiPYNTxvk0Ou6ofZEkKjlXQZwSmyRxj8eG9MFMFAA=; b=SJUK8mxpedPLwp
	j5iYeO4tUy/Pdab1x7IDpWbP7wLrl/tijMsWLZO8sdswfkl7Cn8/p/+BPz6zUF96H1wgnSIx0o4wN
	zCWvvmhH9Dl0+vbN911EAqoAvwGvk8R+rfbGpv6S4s/Xhmeupa8nz0OkcV0x2FX5YcU3J6Dvozzol
	dO2DMhHnlB6oLlTBNPAlV6iJoRKCZcA86g2gyhWLaj7xDo2QOxXb3BFhJBMsEzvFfa8eTCcEaCqDE
	6M2xQN2xIvAlDvIRDhdW42VYlX6qRYUIgHllNGkmLTq6hPHH/+9FhhWbHlRu+iQ7K1HQby3YEmfMn
	MXdyANDLUB4UAk9HHzSQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tqJYj-0000000CLrc-1gNk;
	Thu, 06 Mar 2025 22:19:17 +0000
Received: from smtp.forwardemail.net ([121.127.44.73])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tqJU2-0000000CL6u-0o3U
	for linux-rockchip@lists.infradead.org;
	Thu, 06 Mar 2025 22:14:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: MIME-Version: References: In-Reply-To:
 Message-ID: Date: Subject: Cc: To: From; q=dns/txt; s=fe-e1b5cab7be;
 t=1741299263; bh=fshpc8o5qKk/aC1XdolZ+vML6RG3s5omLxYcjsXplmM=;
 b=j96apg3rxBRbSrzBOBktlk0MNOdTYwH8DcMaFCrFNZbU/ln3HsbS8lVoWssQ2qSrHdd05TmOL
 kMBJw3YnqEqk2WdpAH4Ik6R9ueBPhsWMsJzPwr1buQjOtQMfiTQ1olFjdVj005RR5rbZWRilWKN
 GkMhcCvNGICVdNg212E8iZt+o0ki8rBCqM+Kj+WW7bHcjxRpPT98Nb91d6DguTJXMpdIBAm7V5R
 oqZbZvrOZIHPiBxLk0DJvj7DssNyXALazbrE9kVYc98meImxUU61cGQOWd/WBNF532WHsUbSlO5
 7QK11IeVCtVFfxA0kezdQU/nXuDSG2AVwwqushH3Thqg==
X-Forward-Email-ID: 67ca1e3ec1763851c065c028
X-Forward-Email-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 121.127.44.73
X-Forward-Email-Version: 0.4.40
X-Forward-Email-Website: https://forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Report-Abuse-To: abuse@forwardemail.net
From: Jonas Karlman <jonas@kwiboo.se>
To: Heiko Stuebner <heiko@sntech.de>,
	Andrew Lunn <andrew+netdev@lunn.ch>,
	"David S . Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Paolo Abeni <pabeni@redhat.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Yao Zi <ziyao@disroot.org>,
	linux-rockchip@lists.infradead.org,
	netdev@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Jonas Karlman <jonas@kwiboo.se>
Subject: [PATCH 3/4] arm64: dts: rockchip: Add GMAC nodes for RK3528
Date: Thu,  6 Mar 2025 22:13:56 +0000
Message-ID: <20250306221402.1704196-4-jonas@kwiboo.se>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250306221402.1704196-1-jonas@kwiboo.se>
References: <20250306221402.1704196-1-jonas@kwiboo.se>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250306_141426_323661_8C17C851 
X-CRM114-Status: UNSURE (   9.56  )
X-CRM114-Notice: Please train this message.
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

Rockchip RK3528 has two Ethernet controllers based on Synopsys DWC
Ethernet QoS IP.

Add device tree nodes for the two Ethernet controllers in RK3528.

Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
---
gmac0 is missing the integrated-phy and has not been tested bacause I do
not have any board that use this Ethernet controller.
---
 arch/arm64/boot/dts/rockchip/rk3528.dtsi | 92 ++++++++++++++++++++++++
 1 file changed, 92 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3528.dtsi b/arch/arm64/boot/dts/rockchip/rk3528.dtsi
index c1a71ea81e03..5940719cffec 100644
--- a/arch/arm64/boot/dts/rockchip/rk3528.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3528.dtsi
@@ -286,6 +286,98 @@ saradc: adc@ffae0000 {
 			#io-channel-cells = <1>;
 		};
 
+		gmac0: ethernet@ffbd0000 {
+			compatible = "rockchip,rk3528-gmac", "snps,dwmac-4.20a";
+			reg = <0x0 0xffbd0000 0x0 0x10000>;
+			clocks = <&cru CLK_GMAC0_SRC>, <&cru CLK_GMAC0_RMII_50M>,
+				 <&cru CLK_GMAC0_RX>, <&cru CLK_GMAC0_TX>,
+				 <&cru PCLK_MAC_VO>, <&cru ACLK_MAC_VO>;
+			clock-names = "stmmaceth", "clk_mac_ref",
+				      "mac_clk_rx", "mac_clk_tx",
+				      "pclk_mac", "aclk_mac";
+			interrupts = <GIC_SPI 113 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 116 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-names = "macirq", "eth_wake_irq";
+			resets = <&cru SRST_A_MAC_VO>;
+			reset-names = "stmmaceth";
+			rockchip,grf = <&vo_grf>;
+			snps,axi-config = <&gmac0_stmmac_axi_setup>;
+			snps,mixed-burst;
+			snps,mtl-rx-config = <&gmac0_mtl_rx_setup>;
+			snps,mtl-tx-config = <&gmac0_mtl_tx_setup>;
+			snps,tso;
+			status = "disabled";
+
+			mdio0: mdio {
+				compatible = "snps,dwmac-mdio";
+				#address-cells = <0x1>;
+				#size-cells = <0x0>;
+			};
+
+			gmac0_stmmac_axi_setup: stmmac-axi-config {
+				snps,blen = <0 0 0 0 16 8 4>;
+				snps,rd_osr_lmt = <8>;
+				snps,wr_osr_lmt = <4>;
+			};
+
+			gmac0_mtl_rx_setup: rx-queues-config {
+				snps,rx-queues-to-use = <1>;
+				queue0 {};
+			};
+
+			gmac0_mtl_tx_setup: tx-queues-config {
+				snps,tx-queues-to-use = <1>;
+				queue0 {};
+			};
+		};
+
+		gmac1: ethernet@ffbe0000 {
+			compatible = "rockchip,rk3528-gmac", "snps,dwmac-4.20a";
+			reg = <0x0 0xffbe0000 0x0 0x10000>;
+			clocks = <&cru CLK_GMAC1_SRC_VPU>,
+				 <&cru CLK_GMAC1_RMII_VPU>,
+				 <&cru PCLK_MAC_VPU>,
+				 <&cru ACLK_MAC_VPU>;
+			clock-names = "stmmaceth",
+				      "clk_mac_ref",
+				      "pclk_mac",
+				      "aclk_mac";
+			interrupts = <GIC_SPI 121 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 124 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-names = "macirq", "eth_wake_irq";
+			resets = <&cru SRST_A_MAC>;
+			reset-names = "stmmaceth";
+			rockchip,grf = <&vpu_grf>;
+			snps,axi-config = <&gmac1_stmmac_axi_setup>;
+			snps,mixed-burst;
+			snps,mtl-rx-config = <&gmac1_mtl_rx_setup>;
+			snps,mtl-tx-config = <&gmac1_mtl_tx_setup>;
+			snps,tso;
+			status = "disabled";
+
+			mdio1: mdio {
+				compatible = "snps,dwmac-mdio";
+				#address-cells = <0x1>;
+				#size-cells = <0x0>;
+			};
+
+			gmac1_stmmac_axi_setup: stmmac-axi-config {
+				snps,blen = <0 0 0 0 16 8 4>;
+				snps,rd_osr_lmt = <8>;
+				snps,wr_osr_lmt = <4>;
+			};
+
+			gmac1_mtl_rx_setup: rx-queues-config {
+				snps,rx-queues-to-use = <1>;
+				queue0 {};
+			};
+
+			gmac1_mtl_tx_setup: tx-queues-config {
+				snps,tx-queues-to-use = <1>;
+				queue0 {};
+			};
+		};
+
 		sdhci: mmc@ffbf0000 {
 			compatible = "rockchip,rk3528-dwcmshc",
 				     "rockchip,rk3588-dwcmshc";
-- 
2.48.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
