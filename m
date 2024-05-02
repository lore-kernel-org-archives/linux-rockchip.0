Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A4A9FC4345F
	for <linux-rockchip@archiver.kernel.org>; Thu,  2 May 2024 14:02:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ux3nmu+Q65zQKO+0DjjfwlfPjprqo9hfrKjQvSOokOU=; b=p1iVLrooMC+3wM
	l4f2nX6TbOgUbxKl8lLZx6CKy8iR18akePX9SEm8qaFFmcEvNXA3e39JT/HALmPVjUcAzdk3GE8Ag
	mp4SQh5+9ejPXtxWjwDgmMYYtquxQccdFUciacblOFkB2TSProlFcpHwexz1xAYVanLd5fTfXMoZU
	mJMxgbSUgJc1w5GQ2ii9CGKJAZMZuuuxvvhY4sv+etyAjusqQRsneyL15tSgOstiR0wLEzJCp+ktD
	6xSl3MlWgJzf5/pgVZX6PrHf2IbwJdaQbTZ6V3E+9EA0nwe47vt5O9VvfhsRS5S7GvIN+b+mXoS+M
	mSMUPIiE7Qh2tWId2Z1Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s2X1R-0000000CrvG-26k3;
	Thu, 02 May 2024 14:02:53 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s2X1N-0000000Crta-3qCq;
	Thu, 02 May 2024 14:02:51 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 80ABB61A25;
	Thu,  2 May 2024 14:02:45 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E6C00C113CC;
	Thu,  2 May 2024 14:02:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714658565;
	bh=+HwR5bHMntTZYTp+bozxMQeT0vh+3PiCz9q8t56GhL4=;
	h=From:To:Cc:Subject:Date:From;
	b=Q7d3AT//EiibcCizWOsAk8niX0aavjwjPDAt8Q4gRWVStGtP17/vRPJHqeEQY0DEW
	 QWIzQ/hF3PmtGNLUHHxIjKNvhx4Q8b5LCtvd5pe/6lWAbTm358l1fnyZU73yp8leJe
	 ue26ZPRk6tS5sDa+XtDwv4inN94rAUy7Nve/VhrT1L5zM6L/ltYWWRvTKziXGWU4A7
	 XUE0fKXyXpHlOKXq8nVYxFD1Tf9clFlMWjgCjm5mj8tw1eGJt/hm7bbCcW9/6zLIu4
	 2M5hPwkYO90ucDh1CIlAcRTYb8LHSuy3Ph7X1ntPvATCqJif8v9sbcPSKQaBj6Td2p
	 JA2830q9xA1hA==
From: Niklas Cassel <cassel@kernel.org>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Damien Le Moal <dlemoal@kernel.org>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	Niklas Cassel <cassel@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: [PATCH] arm64: dts: rockchip: add rk3588 IOMMUs
Date: Thu,  2 May 2024 16:02:32 +0200
Message-ID: <20240502140231.477049-2-cassel@kernel.org>
X-Mailer: git-send-email 2.44.0
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=2797; i=cassel@kernel.org; h=from:subject; bh=+HwR5bHMntTZYTp+bozxMQeT0vh+3PiCz9q8t56GhL4=; b=owGbwMvMwCV2MsVw8cxjvkWMp9WSGNKM53xvv7Oy3+Rfx5NHm9ZzbdtWHKLZd4T1uuw+YR2fu wFHXH6od5SyMIhxMciKKbL4/nDZX9ztPuW44h0bmDmsTCBDGLg4BWAiQusYfrN/ODBrFW/J7yuN DUslG+PXP7bZvf3oofoFOi7BokdXWu5g+J8ezhW+ZD+vsiN3Coftdnv1i9WxfgVxQVtstp1NFU/ awQgA
X-Developer-Key: i=cassel@kernel.org; a=openpgp; fpr=5ADE635C0E631CBBD5BE065A352FE6582ED9B5DA
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240502_070250_115638_87AD5FD2 
X-CRM114-Status: GOOD (  11.11  )
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

The mmu600_pcie is connected with the five PCIe controllers.
The mmu600_php is connected with the USB3 controller, the GMAC
controllers, and the SATA controllers.

See 8.2 Block Diagram, in rk3588 TRM (Technical Reference Manual).

The IOMMUs are disabled by default, as further patches are needed to
program the SID/SSIDs in to the IOMMUs.

iommu: Default domain type: Translated
iommu: DMA domain TLB invalidation policy: strict mode
arm-smmu-v3 fc900000.iommu: ias 48-bit, oas 48-bit (features 0x001c1eaf)
arm-smmu-v3 fc900000.iommu: allocated 65536 entries for cmdq
arm-smmu-v3 fc900000.iommu: allocated 32768 entries for evtq
arm-smmu-v3 fc900000.iommu: msi_domain absent - falling back to wired irqs

Additionally, the IOMMU correctly triggers an IOMMU fault when
a PCIe device performs a write (since the device hasn't been
assigned a SID/SSID):
arm-smmu-v3 fc900000.iommu: event 0x02 received:
arm-smmu-v3 fc900000.iommu:      0x0000010000000002
arm-smmu-v3 fc900000.iommu:      0x0000000000000000
arm-smmu-v3 fc900000.iommu:      0x0000000000000000
arm-smmu-v3 fc900000.iommu:      0x0000000000000000

While this doesn't provide much value as is, having the devices as
disabled in the device tree will allow developers to see that the rk3588
actually has IOMMUs on the SoC.

Signed-off-by: Niklas Cassel <cassel@kernel.org>
---
 arch/arm64/boot/dts/rockchip/rk3588s.dtsi | 24 +++++++++++++++++++++++
 1 file changed, 24 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s.dtsi b/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
index 87b83c87bd55..aaea48a19e26 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
@@ -501,6 +501,30 @@ usb_host2_xhci: usb@fcd00000 {
 		status = "disabled";
 	};
 
+	mmu600_pcie: iommu@fc900000 {
+		compatible = "arm,smmu-v3";
+		reg = <0x0 0xfc900000 0x0 0x200000>;
+		interrupts = <GIC_SPI 369 IRQ_TYPE_LEVEL_HIGH 0>,
+			     <GIC_SPI 371 IRQ_TYPE_LEVEL_HIGH 0>,
+			     <GIC_SPI 374 IRQ_TYPE_LEVEL_HIGH 0>,
+			     <GIC_SPI 367 IRQ_TYPE_LEVEL_HIGH 0>;
+		interrupt-names = "eventq", "gerror", "priq", "cmdq-sync";
+		#iommu-cells = <1>;
+		status = "disabled";
+	};
+
+	mmu600_php: iommu@fcb00000 {
+		compatible = "arm,smmu-v3";
+		reg = <0x0 0xfcb00000 0x0 0x200000>;
+		interrupts = <GIC_SPI 381 IRQ_TYPE_LEVEL_HIGH 0>,
+			     <GIC_SPI 383 IRQ_TYPE_LEVEL_HIGH 0>,
+			     <GIC_SPI 386 IRQ_TYPE_LEVEL_HIGH 0>,
+			     <GIC_SPI 379 IRQ_TYPE_LEVEL_HIGH 0>;
+		interrupt-names = "eventq", "gerror", "priq", "cmdq-sync";
+		#iommu-cells = <1>;
+		status = "disabled";
+	};
+
 	pmu1grf: syscon@fd58a000 {
 		compatible = "rockchip,rk3588-pmugrf", "syscon", "simple-mfd";
 		reg = <0x0 0xfd58a000 0x0 0x10000>;
-- 
2.44.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
