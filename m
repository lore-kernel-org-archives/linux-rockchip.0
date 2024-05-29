Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 07788C27C44
	for <linux-rockchip@archiver.kernel.org>; Wed, 29 May 2024 08:30:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=70lZLIuXrCqy5wJxtMmvAEEKVjg0oNAMJGBPBfregxY=; b=nQuHYE5fx4MOVp
	4q0/w5Lt3YUNU6gVs9X6QxtieZ2xVrLTGbshEJW3mLfIGFsUff7i7+uzE0Zp7gSbQ5sW24jt47O32
	z8g1w77IbsiiJskcHNZFpQSwAexk8cSueU1XQOcCn2iboZAHNNJthryqTllzOOM3vIANB3zz6STnA
	piH/y64wAdnUWVwOwvEljO2FfYOOASRnAJxrKSOZFSAWz5MpNNEMeQiKfdJvuq/Yc/uYmFTYyBO5P
	ybBCEszxNuTstuIyyIEcPhp2hexgBKP388o1rfwFySHlJBsVDjNh3FbhGIt5Fof5LZitTSEfn6WDY
	MTwNgvnBKSHVZIbY+ZKQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sCEhF-00000003OvI-1JrV;
	Wed, 29 May 2024 08:30:09 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sCEhC-00000003Osi-06Be
	for linux-rockchip@lists.infradead.org;
	Wed, 29 May 2024 08:30:07 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 5BE58CE1665;
	Wed, 29 May 2024 08:30:04 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EC6DDC4AF09;
	Wed, 29 May 2024 08:29:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716971403;
	bh=9PVV++LUhN+71aXrADyChLLN+FW6M4sy+ZWci6a3+vk=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=bNx+o4ngwrpQscr0j16gHsKRF0kZA+V2Z/5bGgKOn0qmxCbFgU5oQRcc7OGu7Eswt
	 pnASF1StmmsuFySSK8QeFH5EVQLHWdNM37hUb/GuaYo8AOirg98LlgN6enXn3t7QSz
	 hF6rNLKQHA8IyFcsVuB90rI5DlaXZEhkMVwk9JNQgyJqM/tM8eDe6ZTS7+Wj3fW/1e
	 jbv3vWRLJCD6j+3bp1hVEjGuZx1iHFiyCWUII8/97efsy+0HxO6J6LWAsb8VZcx6nW
	 RNSWKgOSB+rFJ8kBPgblgAFbVJHw5/+T5iOLgXIvpgE7IzC8rQO5b601DJ++9rouB5
	 cJ7hE2E4r468w==
From: Niklas Cassel <cassel@kernel.org>
Date: Wed, 29 May 2024 10:29:06 +0200
Subject: [PATCH v4 12/13] arm64: dts: rockchip: Add PCIe endpoint mode
 support
MIME-Version: 1.0
Message-Id: <20240529-rockchip-pcie-ep-v1-v4-12-3dc00fe21a78@kernel.org>
References: <20240529-rockchip-pcie-ep-v1-v4-0-3dc00fe21a78@kernel.org>
In-Reply-To: <20240529-rockchip-pcie-ep-v1-v4-0-3dc00fe21a78@kernel.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=2324; i=cassel@kernel.org;
 h=from:subject:message-id; bh=9PVV++LUhN+71aXrADyChLLN+FW6M4sy+ZWci6a3+vk=;
 b=owGbwMvMwCV2MsVw8cxjvkWMp9WSGNLCnofurVS6PnltS12B0pmfRSrTiko78nYoPArS9noi4
 2fbdftlRykLgxgXg6yYIovvD5f9xd3uU44r3rGBmcPKBDKEgYtTACZisZCRYXLE0fXaRcG38+dr
 nf/00WHXV4OUtJNvBQ2efuJv6fTbw8TwP/FL+4p4oafuJxO102PDPKpElOvl7my81Bi90nVG3Dk
 xLgA=
X-Developer-Key: i=cassel@kernel.org; a=openpgp;
 fpr=5ADE635C0E631CBBD5BE065A352FE6582ED9B5DA
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240529_013006_539375_C222A157 
X-CRM114-Status: GOOD (  10.73  )
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
---
 arch/arm64/boot/dts/rockchip/rk3588.dtsi | 35 ++++++++++++++++++++++++++++++++
 1 file changed, 35 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588.dtsi b/arch/arm64/boot/dts/rockchip/rk3588.dtsi
index 5984016b5f96..6b5bf1055143 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588.dtsi
@@ -186,6 +186,41 @@ pcie3x4_intc: legacy-interrupt-controller {
 		};
 	};
 
+	pcie3x4_ep: pcie-ep@fe150000 {
+		compatible = "rockchip,rk3588-pcie-ep";
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
+		reg = <0xa 0x40000000 0x0 0x00100000>,
+		      <0xa 0x40100000 0x0 0x00100000>,
+		      <0x0 0xfe150000 0x0 0x00010000>,
+		      <0x9 0x00000000 0x0 0x40000000>,
+		      <0xa 0x40300000 0x0 0x00100000>;
+		reg-names = "dbi", "dbi2", "apb", "addr_space", "atu";
+		resets = <&cru SRST_PCIE0_POWER_UP>, <&cru SRST_P_PCIE0>;
+		reset-names = "pwr", "pipe";
+		status = "disabled";
+	};
+
 	pcie3x2: pcie@fe160000 {
 		compatible = "rockchip,rk3588-pcie", "rockchip,rk3568-pcie";
 		#address-cells = <3>;

-- 
2.45.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
