Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0A3DFC04FFE
	for <linux-rockchip@archiver.kernel.org>; Wed,  8 May 2024 13:14:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7GrzYuNiPHs/QTI4KLx7UVz2l/cyG+SG312DlaLVvyo=; b=jCYNUqG+ScNNAX
	DHZ54jQC4JyPuw1lQWSivuwEY2a0GmgP522UKEW48+7BFCENMOQ0Q3X+DJgTkghdhrRyFo0omlr+E
	m7XPe2H88NEo6+zRcoDOHqivi3xaWkNf4iY5nHs2CNpzpacWCSeOVzEEolcHKdP3tSADl/hxale0W
	Ax5V1SnZv8DcK53ae/7LjursOKgLrglNltikXTPPad/ccBC39JatFC+1sQAv7lBjRW2pMlwW+Gsnv
	BDiHVv85CXZJCGU+Ozl+IF53KRjUa8xk5MNeOcfq1ExzQPa1wU5eWdgwlx4JMgps2C26bOM3yd7oS
	eDwpa+wV+0mUEZ+EQiYw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s4h83-0000000Fak0-0b1F;
	Wed, 08 May 2024 13:14:39 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s4h7w-0000000FaeW-0gXj
	for linux-rockchip@lists.infradead.org;
	Wed, 08 May 2024 13:14:36 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 243CA61BA9;
	Wed,  8 May 2024 13:14:31 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 15D02C3277B;
	Wed,  8 May 2024 13:14:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715174070;
	bh=zV5QDNN0Jd7t4ZstveDXwSQbOhLYZJYhoixvLN8ii44=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=fBFG0Tl207Es9jMIQMTVUytr1QIkFHM6h5fpRHFiZLDTEwn17nn95dUGLB4FVBiJj
	 S0Cg2Fq2xVM0Brebwubo9Sfjfq+3UkWkfczO6H7tmv0mNtLazZipq6ElfjE7e6XZ56
	 KkBOyikoSRQJJhIni6czWklduns73hwoxyVAUKiysd4XOoXfs6YWLV6fZ11qbUsDrd
	 AqfyagKXuOAPMDBLW7/IVPsp+qz0t0MTDJunUoy/3oGofk5WbGhP+bxq02gXGLF4kK
	 sJtZ2zQ6FD15eWmJPG+rNLJDww+H7Rz84qtuGQSo3fkNxAHpCAlcRUvVMubt6BQ+sr
	 8IIkkjyi8FArw==
From: Niklas Cassel <cassel@kernel.org>
Date: Wed, 08 May 2024 15:13:43 +0200
Subject: [PATCH v3 12/13] arm64: dts: rockchip: Add PCIe endpoint mode
 support
MIME-Version: 1.0
Message-Id: <20240508-rockchip-pcie-ep-v1-v3-12-1748e202b084@kernel.org>
References: <20240508-rockchip-pcie-ep-v1-v3-0-1748e202b084@kernel.org>
In-Reply-To: <20240508-rockchip-pcie-ep-v1-v3-0-1748e202b084@kernel.org>
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
 h=from:subject:message-id; bh=zV5QDNN0Jd7t4ZstveDXwSQbOhLYZJYhoixvLN8ii44=;
 b=owGbwMvMwCV2MsVw8cxjvkWMp9WSGNKsq+o7xZ9f5FrNW2OrMelt6wuWiXvuOZteLcw6furgE
 X3uALEtHaUsDGJcDLJiiiy+P1z2F3e7TzmueMcGZg4rE8gQBi5OAZjIPSOG/0l38jpr+jcemX+l
 2C52Q/VcQfFfVdU9j9fbGz7bXZl6Wo/hr8RBDZ/ajdmrch6yl7KsW6F6z8zx7iK7GQbMxbfTtY6
 1cAEA
X-Developer-Key: i=cassel@kernel.org; a=openpgp;
 fpr=5ADE635C0E631CBBD5BE065A352FE6582ED9B5DA
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240508_061432_540875_36C44BC2 
X-CRM114-Status: GOOD (  10.66  )
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
index 5519c1430cb7..09a06e8c43b7 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588.dtsi
@@ -136,6 +136,41 @@ pcie3x4_intc: legacy-interrupt-controller {
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
2.44.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
