Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F1219C27C53
	for <linux-rockchip@archiver.kernel.org>; Fri,  7 Jun 2024 11:15:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1SWVKJJthTcuiI0rGaniIVfh/UjCLkqZ88jJ/224GgE=; b=Lm/f1P4ZIiXYwb
	YINJssJSQEz8otZim7ZqA4quuas9PcGd9w0WTIQb10xN15aQWiqIr65nCDx5+FydnCGrH+E50g6M9
	96HGmfV0Hqn04FwLluAw4g+4lGnFY1k+xS29MsDg5xyjMDvtUddz/9wh7VoY+ZVn4bThwofTUaEDf
	hpbyPithI4W2zDFwQnlcXRp79p61w/DhInDrnKS/MXZF32ffoFOujJNRhrdlGXXZ0WmccQ4EALQVf
	YZefevhgxQ037RvKAXSNq01wJDpoVFvh5hguZWyNg/6KlzslFgLP6CsxkObJu2vIq9VUirC+TTNrs
	EhyPZe98jAUb4BKynDpg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sFXZB-0000000Dg55-13bo;
	Fri, 07 Jun 2024 11:15:29 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sFXZ6-0000000Dg1J-3Myj
	for linux-rockchip@lists.infradead.org;
	Fri, 07 Jun 2024 11:15:27 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 3077DCE1CF4;
	Fri,  7 Jun 2024 11:15:23 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 98DC6C2BBFC;
	Fri,  7 Jun 2024 11:15:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717758922;
	bh=doSN4oEHyy0FD60flsg7cFcvOvKVYbDH1myDSVHKy/Q=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=Z2S+ApsrrRlRsaUAIcIkTpZa8MtvQF0yr3MeB9LiCvDACWts4+m8J0ZG6Wi3xxnnr
	 Roz44/gvUAV35bFlNK6GSZPcoR2P8vLeHsddRaE4/gCD5GcVTIseR3wwWISCH7F146
	 JVQuB60TJ+s/CqX2xtmU6rXcYymFQ6gKryiRsHtNL6TMHJeapSXx01KPLIDmfq10lA
	 T+PmMt3BLRXKfNjQyqNbL2D26011CjL/nAxjS6Th9fDV8yVEIfynAVFbkDwJji3gCO
	 nI78H/YXr0CnDSAETKmiLdtRetCs1lW5yYjVPImC483l+k6Klu6Rm+xxZ3Hx0etY8q
	 fBb3qogJQsceQ==
From: Niklas Cassel <cassel@kernel.org>
Date: Fri, 07 Jun 2024 13:14:32 +0200
Subject: [PATCH v5 12/13] arm64: dts: rockchip: Add PCIe endpoint mode
 support
MIME-Version: 1.0
Message-Id: <20240607-rockchip-pcie-ep-v1-v5-12-0a042d6b0049@kernel.org>
References: <20240607-rockchip-pcie-ep-v1-v5-0-0a042d6b0049@kernel.org>
In-Reply-To: <20240607-rockchip-pcie-ep-v1-v5-0-0a042d6b0049@kernel.org>
To: Jingoo Han <jingoohan1@gmail.com>, 
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>, 
 Bjorn Helgaas <bhelgaas@google.com>, 
 Lorenzo Pieralisi <lpieralisi@kernel.org>, 
 =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 Niklas Cassel <cassel@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Arnd Bergmann <arnd@arndb.de>, 
 Damien Le Moal <dlemoal@kernel.org>, Jon Lin <jon.lin@rock-chips.com>, 
 Shawn Lin <shawn.lin@rock-chips.com>, Simon Xue <xxm@rock-chips.com>
Cc: linux-pci@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-rockchip@lists.infradead.org
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=2395; i=cassel@kernel.org;
 h=from:subject:message-id; bh=doSN4oEHyy0FD60flsg7cFcvOvKVYbDH1myDSVHKy/Q=;
 b=owGbwMvMwCV2MsVw8cxjvkWMp9WSGNKSXk8qt/qs2J+0oOnmNKuWjML8vzc4a//ZdTg3TpZdN
 K3k58vHHaUsDGJcDLJiiiy+P1z2F3e7TzmueMcGZg4rE8gQBi5OAZhI+2dGhh9pB88dmyDkvSW8
 64fo/iUJJ/R+debteZ8rf9rrhnum2F6G/7GM3au23v5/su3fXeW9eSoWOxflJRvHn+jh3vesVfF
 IAQMA
X-Developer-Key: i=cassel@kernel.org; a=openpgp;
 fpr=5ADE635C0E631CBBD5BE065A352FE6582ED9B5DA
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240607_041525_248243_79C3709B 
X-CRM114-Status: GOOD (  10.42  )
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

Add a device tree node representing PCIe endpoint mode.

The controller can either be configured to run in Root Complex or Endpoint
node.

If a user wants to run the controller in endpoint mode, the user has to
disable the pcie3x4 node and enable the pcie3x4_ep node.

Signed-off-by: Niklas Cassel <cassel@kernel.org>
Reviewed-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 arch/arm64/boot/dts/rockchip/rk3588.dtsi | 35 ++++++++++++++++++++++++++++++++
 1 file changed, 35 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588.dtsi b/arch/arm64/boot/dts/rockchip/rk3588.dtsi
index 5984016b5f96..a88f5a9b6d66 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588.dtsi
@@ -186,6 +186,41 @@ pcie3x4_intc: legacy-interrupt-controller {
 		};
 	};
 
+	pcie3x4_ep: pcie-ep@fe150000 {
+		compatible = "rockchip,rk3588-pcie-ep";
+		reg = <0xa 0x40000000 0x0 0x00100000>,
+		      <0xa 0x40100000 0x0 0x00100000>,
+		      <0x0 0xfe150000 0x0 0x00010000>,
+		      <0x9 0x00000000 0x0 0x40000000>,
+		      <0xa 0x40300000 0x0 0x00100000>;
+		reg-names = "dbi", "dbi2", "apb", "addr_space", "atu";
+		clocks = <&cru ACLK_PCIE_4L_MSTR>, <&cru ACLK_PCIE_4L_SLV>,
+			 <&cru ACLK_PCIE_4L_DBI>, <&cru PCLK_PCIE_4L>,
+			 <&cru CLK_PCIE_AUX0>, <&cru CLK_PCIE4L_PIPE>;
+		clock-names = "aclk_mst", "aclk_slv",
+			      "aclk_dbi", "pclk",
+			      "aux", "pipe";
+		interrupts = <GIC_SPI 263 IRQ_TYPE_LEVEL_HIGH 0>,
+			     <GIC_SPI 262 IRQ_TYPE_LEVEL_HIGH 0>,
+			     <GIC_SPI 261 IRQ_TYPE_LEVEL_HIGH 0>,
+			     <GIC_SPI 260 IRQ_TYPE_LEVEL_HIGH 0>,
+			     <GIC_SPI 259 IRQ_TYPE_LEVEL_HIGH 0>,
+			     <GIC_SPI 271 IRQ_TYPE_LEVEL_HIGH 0>,
+			     <GIC_SPI 272 IRQ_TYPE_LEVEL_HIGH 0>,
+			     <GIC_SPI 269 IRQ_TYPE_LEVEL_HIGH 0>,
+			     <GIC_SPI 270 IRQ_TYPE_LEVEL_HIGH 0>;
+		interrupt-names = "sys", "pmc", "msg", "legacy", "err",
+				  "dma0", "dma1", "dma2", "dma3";
+		max-link-speed = <3>;
+		num-lanes = <4>;
+		phys = <&pcie30phy>;
+		phy-names = "pcie-phy";
+		power-domains = <&power RK3588_PD_PCIE>;
+		resets = <&cru SRST_PCIE0_POWER_UP>, <&cru SRST_P_PCIE0>;
+		reset-names = "pwr", "pipe";
+		status = "disabled";
+	};
+
 	pcie3x2: pcie@fe160000 {
 		compatible = "rockchip,rk3588-pcie", "rockchip,rk3568-pcie";
 		#address-cells = <3>;

-- 
2.45.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
