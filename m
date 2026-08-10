Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E4884C5AD55
	for <linux-rockchip@archiver.kernel.org>; Mon, 10 Aug 2026 12:16:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=K9GpAdiL8NUKjaJbzk/4oZAzOWKW6NO4z4vHfWz1Kpc=; b=P4XvfeHcmYMIjt
	MGLnnQMYbC1yD2zbtb84jWz6pyXirBvPX6KHkzUYo2AIDNJXAfR1X0yrUsSbaQXBMJrmPQ+anxgMc
	Uploz9czGyL8MAyG/W8apiaPZDKh38IlRzd6OUWKtV3dSiStk2kv7w3gltqInuU5kHWdXbplOvubQ
	V2D7ns5ygFyElb1qy0rz659rViD6sXPcTh2DIP8dN6WRnPJPRlh7beZPFulHjxIg9WYZlDK6/Juac
	JgBEigZFskgmXUwOV7MnYlD+1Xn7HEYvW3cVmw6fIyh67mZzXBR59gSu8x4SUc8aHkD1KKpwwlSOp
	SuOO2qKIobSbJTXHM02A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wtOvJ-0000000Bimo-3uhw;
	Mon, 10 Aug 2026 12:16:09 +0000
Received: from mail.zlab.su ([109.73.193.145])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wtOv3-0000000BiUn-2sR8;
	Mon, 10 Aug 2026 12:15:57 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 0EDBDC0516;
	Mon, 10 Aug 2026 15:15:49 +0300 (MSK)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=zlab.su; s=dkim;
	t=1786364151; h=from:subject:date:message-id:to:cc:mime-version:
	 content-transfer-encoding:in-reply-to:references;
	bh=aUtZrsjC3vglTeNLq8+cauC4JI68XDzlA8yNJ7+9MYA=;
	b=GmwWXZvWIVElYjcS897Vd4n2aK5EH6DTVsk6T6F6FVblshSJnhnBZgCNCzTWB042R9hJ7c
	sJeZk6DUMxFmIK390lHlCctnYe5q1zyDKau+BFtjQnpEPtzy40qiCrFjwfbDzJ+m7ZIBXb
	wnfxLoo3Lhai4WEqi1D1T8Cm4M4iqPkHeYbx2KwSUl5u+qEh/O42V16E8qP+JY5dX1Re4/
	i9nHG+dSM4Nmqfmdy653ArubspI/FSsT7wAiU/mMNyS4TxVTitvqRlfJ78t1/RGDAH4tHo
	KSFktaA07aQVVCnMCZvDAhgxntfFobsvC6f1eLJB7EY38FXb5catkHDaeQi5tw==
From: Vladislav Leonov <vlad@zlab.su>
To: linux-rockchip@lists.infradead.org
Cc: linux-arm-kernel@lists.infradead.org,
	Simon Glass <sjg@chromium.org>,
	linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Vladislav Leonov <vlad@zlab.su>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Rob Herring <robh@kernel.org>
Subject: [PATCH 06/25] ARM: dts: rockchip: Add Ethernet GMAC node for RV1106
Date: Mon, 10 Aug 2026 15:10:57 +0300
Message-ID: <20260810121121.210040-7-vlad@zlab.su>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260810121121.210040-1-vlad@zlab.su>
References: <20260810121121.210040-1-vlad@zlab.su>
MIME-Version: 1.0
X-Last-TLS-Session-Version: TLSv1.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260810_051554_912050_965A8E9D 
X-CRM114-Status: UNSURE (   9.02  )
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

Rockchip RV1106 has GMAC 10/100 ethernet controller.

Signed-off-by: Vladislav Leonov <vlad@zlab.su>
---

 arch/arm/boot/dts/rockchip/rv1106.dtsi | 62 ++++++++++++++++++++++++++
 1 file changed, 62 insertions(+)

diff --git a/arch/arm/boot/dts/rockchip/rv1106.dtsi b/arch/arm/boot/dts/rockchip/rv1106.dtsi
index fa5d0d7f4dcb..71dd3dcc386c 100644
--- a/arch/arm/boot/dts/rockchip/rv1106.dtsi
+++ b/arch/arm/boot/dts/rockchip/rv1106.dtsi
@@ -19,6 +19,7 @@ / {
 	interrupt-parent = <&gic>;
 
 	aliases {
+		ethernet0 = &gmac;
 		gpio0 = &gpio0;
 		gpio1 = &gpio1;
 		gpio2 = &gpio2;
@@ -282,6 +283,67 @@ system_sram: sram@ff6c0000 {
 			ranges = <0 0xff6c0000 0x40000>;
 		};
 
+		gmac: ethernet@ffa80000 {
+			compatible = "rockchip,rv1106-gmac", "snps,dwmac-4.20a";
+			reg = <0xffa80000 0x10000>;
+			interrupts = <GIC_SPI 93 IRQ_TYPE_LEVEL_HIGH>,
+					<GIC_SPI 96 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-names = "macirq", "eth_wake_irq";
+			rockchip,grf = <&grf>;
+			clocks = <&cru CLK_GMAC0_TX_50M_O>, <&cru CLK_GMAC0_REF_50M>,
+				<&cru ACLK_MAC>, <&cru PCLK_MAC>;
+			clock-names = "stmmaceth", "clk_mac_ref",
+					"aclk_mac", "pclk_mac";
+			resets = <&cru SRST_A_MAC>;
+			reset-names = "stmmaceth";
+
+			snps,mixed-burst;
+			snps,tso;
+
+			snps,axi-config = <&stmmac_axi_setup>;
+			snps,mtl-rx-config = <&mtl_rx_setup>;
+			snps,mtl-tx-config = <&mtl_tx_setup>;
+
+			phy-mode = "rmii";
+			clock_in_out = "input";
+			phy-handle = <&rmii_phy>;
+
+			status = "disabled";
+
+			mdio: mdio {
+				compatible = "snps,dwmac-mdio";
+				#address-cells = <0x1>;
+				#size-cells = <0x0>;
+				rmii_phy: ethernet-phy@2 {
+					compatible = "ethernet-phy-ieee802.3-c22";
+					reg = <2>;
+					clocks = <&cru CLK_MACPHY>;
+					resets = <&cru SRST_MACPHY>;
+					phy-is-integrated;
+				};
+			};
+
+			stmmac_axi_setup: stmmac-axi-config {
+				snps,wr_osr_lmt = <4>;
+				snps,rd_osr_lmt = <8>;
+				snps,blen = <0 0 0 0 16 8 4>;
+			};
+
+			mtl_rx_setup: rx-queues-config {
+				snps,rx-queues-to-use = <1>;
+				queue0 {
+					status = "okay";
+				};
+			};
+
+			mtl_tx_setup: tx-queues-config {
+				snps,tx-queues-to-use = <1>;
+				queue0 {
+					status = "okay";
+				};
+			};
+		};
+
 		emmc: mmc@ffa90000 {
 			compatible = "rockchip,rv1106-dw-mshc", "rockchip,rk3288-dw-mshc";
 			reg = <0xffa90000 0x4000>;
-- 
2.47.3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
