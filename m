Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1F1F6C87FCB
	for <linux-rockchip@archiver.kernel.org>; Fri,  8 Aug 2025 19:44:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QGZjeGpdqKomZdyien02hdbJYsz5N79OMFHhVBWjgEw=; b=kuF0c4j/8vUG+j
	QC5Z/y8lJmWreKhQzoQkcX71kCT9QVBe21cQ2m1D3LhBazSh0sWcW1jCqQmhREOT/w7Em9Pbo6EjU
	hSrKwsZw/YIDwSLzYr1baYr0IAO9f4zaWRGEkYZUr/eHk7JXt61IwVES/iWqLgulsWPqKGo6Ijs7M
	oXeCERrgcnuemY17dcJUH+5W66/x5K58UDWOYYFKd+ey5aTVgTt+hPXxJjNXiJZCljyHRw9vd/jqp
	rTCmZiztNhikGZY0eHDPbe0j/BwIsupVhEEhsAPU+YWIkNxAn4le6PtZPDl2taxl2fW6FDbnCwXaL
	XGRHDASrF/WIfQER9xHQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ukT0O-00000003YY6-0C23;
	Fri, 08 Aug 2025 19:43:56 +0000
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ukSsy-00000003Y1i-0lGq;
	Fri, 08 Aug 2025 19:36:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1754681774;
	bh=rl0GSEMQipGgM/tHbM+N9H22RJ3YNzoiPPjreDdRxxo=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=Nx2ejqv+Bfbt1EGrmSAFz4ZpoGJ7oheCE8D6NN9AzVTjil8qd5ClVFXIDVwezUsea
	 b63njDfAvxrrS1n37ePH0CyrmchENhAcdHMliqois2H3sbE2+1fZYXTGS8avZMFjwM
	 7tZtBnkyk3vaXgHiU8kCGE7crvoR7WRTE9ummRwRm6BbvWTS8dmB/BNk8EEHrQIZ2O
	 a8be4es7fKb+RytRn4zftG2u6eZEjzWqcNY+YTwqJ/2cp5P4qwCu0ibVcahAzPTidy
	 mv2H5DqluwwuD2RwN04d+AxrsnP1U+LFJli/ysZhiZ6nYurKE6DAx8myU8IzbN3aRu
	 SZkWGPyM3YE/A==
Received: from earth.mtl.collabora.ca (mtl.collabora.ca [66.171.169.34])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: detlev)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id CC64817E1277;
	Fri,  8 Aug 2025 21:36:11 +0200 (CEST)
From: Detlev Casanova <detlev.casanova@collabora.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v2 2/2] arm64: dts: rockchip: Add the vdpu383 Video Decoder on rk3576
Date: Fri,  8 Aug 2025 15:36:02 -0400
Message-ID: <20250808193602.142527-3-detlev.casanova@collabora.com>
X-Mailer: git-send-email 2.50.1
In-Reply-To: <20250808193602.142527-1-detlev.casanova@collabora.com>
References: <20250808193602.142527-1-detlev.casanova@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250808_123616_393342_11283C7F 
X-CRM114-Status: GOOD (  10.49  )
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
Cc: Heiko Stuebner <heiko@sntech.de>, Shawn Lin <shawn.lin@rock-chips.com>, Kever Yang <kever.yang@rock-chips.com>, Niklas Cassel <cassel@kernel.org>, Chukun Pan <amadeus@jmu.edu.cn>, kernel@collabora.com, Dragan Simic <dsimic@manjaro.org>, Rob Herring <robh@kernel.org>, Emmanuel Gil Peyrot <linkmauve@linkmauve.fr>, Sebastian Reichel <sebastian.reichel@collabora.com>, linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>, Detlev Casanova <detlev.casanova@collabora.com>, Damon Ding <damon.ding@rock-chips.com>, Chris Morgan <macromorgan@hotmail.com>, linux-arm-kernel@lists.infradead.org, Patrick Wildt <patrick@blueri.se>, Alexey Charkov <alchark@gmail.com>, Diederik de Haas <didi.debian@cknow.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Add the vdpu383 Video Decoder variant to the RK3576 device tree.

Also allow using the dedicated SRAM as a pool.

Signed-off-by: Detlev Casanova <detlev.casanova@collabora.com>
---
 arch/arm64/boot/dts/rockchip/rk3576.dtsi | 36 ++++++++++++++++++++++++
 1 file changed, 36 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3576.dtsi b/arch/arm64/boot/dts/rockchip/rk3576.dtsi
index c3cdae8a54941..d16817526b9f6 100644
--- a/arch/arm64/boot/dts/rockchip/rk3576.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3576.dtsi
@@ -1139,6 +1139,41 @@ gpu: gpu@27800000 {
 			status = "disabled";
 		};
 
+		vdec: video-codec@27b00100 {
+			compatible = "rockchip,rk3576-vdec";
+			reg = <0x0 0x27b00100 0x0 0x500>,
+			      <0x0 0x27b00000 0x0 0x100>,
+			      <0x0 0x27b00600 0x0 0x100>;
+			reg-names = "function", "link", "cache";
+			interrupts = <GIC_SPI 308 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&cru ACLK_RKVDEC_ROOT>, <&cru HCLK_RKVDEC>,
+				 <&cru ACLK_RKVDEC_ROOT_BAK>, <&cru CLK_RKVDEC_CORE>,
+				 <&cru CLK_RKVDEC_HEVC_CA>;
+			clock-names = "axi", "ahb", "cabac", "core", "hevc_cabac";
+			assigned-clocks = <&cru ACLK_RKVDEC_ROOT>, <&cru CLK_RKVDEC_CORE>,
+					  <&cru ACLK_RKVDEC_ROOT_BAK>, <&cru CLK_RKVDEC_HEVC_CA>;
+			assigned-clock-rates = <600000000>, <600000000>,
+					       <500000000>, <1000000000>;
+			iommus = <&vdec_mmu>;
+			power-domains = <&power RK3576_PD_VDEC>;
+			resets = <&cru SRST_A_RKVDEC_BIU>, <&cru SRST_H_RKVDEC_BIU>,
+				 <&cru SRST_H_RKVDEC>, <&cru SRST_RKVDEC_CORE>,
+				 <&cru SRST_RKVDEC_HEVC_CA>;
+			reset-names = "axi", "ahb", "cabac", "core", "hevc_cabac";
+			sram = <&rkvdec_sram>;
+		};
+
+		vdec_mmu: iommu@27b00800 {
+			compatible = "rockchip,rk3576-iommu", "rockchip,rk3568-iommu";
+			reg = <0x0 0x27b00800 0x0 0x40>, <0x0 0x27b00900 0x0 0x40>;
+			interrupts = <GIC_SPI 309 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&cru CLK_RKVDEC_CORE>, <&cru HCLK_RKVDEC>;
+			clock-names = "aclk", "iface";
+			power-domains = <&power RK3576_PD_VDEC>;
+			rockchip,disable-mmu-reset;
+			#iommu-cells = <0>;
+		};
+
 		vop: vop@27d00000 {
 			compatible = "rockchip,rk3576-vop";
 			reg = <0x0 0x27d00000 0x0 0x3000>, <0x0 0x27d05000 0x0 0x1000>;
@@ -2428,6 +2463,7 @@ sram: sram@3ff88000 {
 			/* start address and size should be 4k align */
 			rkvdec_sram: rkvdec-sram@0 {
 				reg = <0x0 0x78000>;
+				pool;
 			};
 		};
 
-- 
2.50.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
