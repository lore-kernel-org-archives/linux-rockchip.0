Return-Path: <SRS0=C1EW=MG=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT autolearn=unavailable
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB3E4C12002
	for <linux-rockchip@archiver.kernel.org>; Wed, 14 Jul 2021 21:37:20 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 8C11C6101D
	for <linux-rockchip@archiver.kernel.org>; Wed, 14 Jul 2021 21:37:20 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 8C11C6101D
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XDeAiC2BMCsk3vupS7E4UDLdltgC2N3u4NEJU6h5+SQ=; b=u2p4tCRHxQepW4
	PvIRGYfaUV6L6FR7fyQY1gG96cLnNqgDtzPNkFeczjAwvNw8I0w1iOibkR4OXZZDtu/55oO8AuXmh
	jmzZ/0UJtHwYSFnT3hHx7Y2lSrZl1oMxmvVZlHwSrg8HJAEUBZEZvR4LGX3rz+MKIn7Snksh0pq7o
	ikfUF2QBrgORGnXxRac4ZIE8svWu2GLYg7PsuWOUPUU19p5+DNV9EvDTZ+QrMM4GGOTzcSah+vJZG
	vREdZatac2UmpCMpXN3RVlkon1vrYu/xJAUc15f6evqp34mMSFXifIE/vnnlr++1ZoRqQ5oJlGRKQ
	RHnJnqdoq6v6RV18d6yg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m3mZA-00FUVk-UR; Wed, 14 Jul 2021 21:37:17 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m3kmx-00Eebh-An; Wed, 14 Jul 2021 19:43:24 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id D2DA1613ED;
 Wed, 14 Jul 2021 19:43:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1626291802;
 bh=tQ1Lc/Sy26R6S8Clu3GRpWJ0Bn7VN35iO1NW+f5QLNg=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=ZBLGatOU9fx2vcMHED9aZuDFgcCBFGt6lnR8ftbXoEDIS6YrETBkSDl2/yrxDzKWS
 DM0//qNCVJZzf+G+xuwrncyaghMCmgvwyaaeiJhX9xcmZvyYOE9n8KMw54pe9sF81J
 9pEcn65sR/Gs8JIwJrGjWgrFQoNF8UHdNfYcQY95H5mIHCYXihrPjjDj/14gisF8lp
 feB6eafwUEVO1AwnZUtJaOvlkgAaJfemdWSkADJR1XhxUtkZJYEfizfTPJh+gbe/KL
 4glvcRJIMi067tJWhMyp8OZFhUer9Ryh4duZtKgcJs3bQ+5FjXYMSvjSKo2TSNMF4x
 7MEASjWUWh+Tg==
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Elaine Zhang <zhangqing@rock-chips.com>,
 Enric Balletbo i Serra <enric.balletbo@collabora.com>,
 Johan Jonker <jbx6244@gmail.com>, Heiko Stuebner <heiko@sntech.de>,
 Sasha Levin <sashal@kernel.org>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
Subject: [PATCH AUTOSEL 5.10 11/88] arm64: dts: rockchip: Fix power-controller
 node names for px30
Date: Wed, 14 Jul 2021 15:41:46 -0400
Message-Id: <20210714194303.54028-11-sashal@kernel.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210714194303.54028-1-sashal@kernel.org>
References: <20210714194303.54028-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210714_124323_530414_4ED3EBEE 
X-CRM114-Status: GOOD (  10.01  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

From: Elaine Zhang <zhangqing@rock-chips.com>

[ Upstream commit d5de0d688ac6e0202674577b05d0726b8a6af401 ]

Use more generic names (as recommended in the device tree specification
or the binding documentation)

Signed-off-by: Elaine Zhang <zhangqing@rock-chips.com>
Reviewed-by: Enric Balletbo i Serra <enric.balletbo@collabora.com>
Signed-off-by: Johan Jonker <jbx6244@gmail.com>
Link: https://lore.kernel.org/r/20210417112952.8516-6-jbx6244@gmail.com
Signed-off-by: Heiko Stuebner <heiko@sntech.de>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 arch/arm64/boot/dts/rockchip/px30.dtsi | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/px30.dtsi b/arch/arm64/boot/dts/rockchip/px30.dtsi
index 64193292d26c..0d6761074b11 100644
--- a/arch/arm64/boot/dts/rockchip/px30.dtsi
+++ b/arch/arm64/boot/dts/rockchip/px30.dtsi
@@ -244,20 +244,20 @@ power: power-controller {
 			#size-cells = <0>;
 
 			/* These power domains are grouped by VD_LOGIC */
-			pd_usb@PX30_PD_USB {
+			power-domain@PX30_PD_USB {
 				reg = <PX30_PD_USB>;
 				clocks = <&cru HCLK_HOST>,
 					 <&cru HCLK_OTG>,
 					 <&cru SCLK_OTG_ADP>;
 				pm_qos = <&qos_usb_host>, <&qos_usb_otg>;
 			};
-			pd_sdcard@PX30_PD_SDCARD {
+			power-domain@PX30_PD_SDCARD {
 				reg = <PX30_PD_SDCARD>;
 				clocks = <&cru HCLK_SDMMC>,
 					 <&cru SCLK_SDMMC>;
 				pm_qos = <&qos_sdmmc>;
 			};
-			pd_gmac@PX30_PD_GMAC {
+			power-domain@PX30_PD_GMAC {
 				reg = <PX30_PD_GMAC>;
 				clocks = <&cru ACLK_GMAC>,
 					 <&cru PCLK_GMAC>,
@@ -265,7 +265,7 @@ pd_gmac@PX30_PD_GMAC {
 					 <&cru SCLK_GMAC_RX_TX>;
 				pm_qos = <&qos_gmac>;
 			};
-			pd_mmc_nand@PX30_PD_MMC_NAND {
+			power-domain@PX30_PD_MMC_NAND {
 				reg = <PX30_PD_MMC_NAND>;
 				clocks =  <&cru HCLK_NANDC>,
 					  <&cru HCLK_EMMC>,
@@ -278,14 +278,14 @@ pd_mmc_nand@PX30_PD_MMC_NAND {
 				pm_qos = <&qos_emmc>, <&qos_nand>,
 					 <&qos_sdio>, <&qos_sfc>;
 			};
-			pd_vpu@PX30_PD_VPU {
+			power-domain@PX30_PD_VPU {
 				reg = <PX30_PD_VPU>;
 				clocks = <&cru ACLK_VPU>,
 					 <&cru HCLK_VPU>,
 					 <&cru SCLK_CORE_VPU>;
 				pm_qos = <&qos_vpu>, <&qos_vpu_r128>;
 			};
-			pd_vo@PX30_PD_VO {
+			power-domain@PX30_PD_VO {
 				reg = <PX30_PD_VO>;
 				clocks = <&cru ACLK_RGA>,
 					 <&cru ACLK_VOPB>,
@@ -301,7 +301,7 @@ pd_vo@PX30_PD_VO {
 				pm_qos = <&qos_rga_rd>, <&qos_rga_wr>,
 					 <&qos_vop_m0>, <&qos_vop_m1>;
 			};
-			pd_vi@PX30_PD_VI {
+			power-domain@PX30_PD_VI {
 				reg = <PX30_PD_VI>;
 				clocks = <&cru ACLK_CIF>,
 					 <&cru ACLK_ISP>,
@@ -312,7 +312,7 @@ pd_vi@PX30_PD_VI {
 					 <&qos_isp_wr>, <&qos_isp_m1>,
 					 <&qos_vip>;
 			};
-			pd_gpu@PX30_PD_GPU {
+			power-domain@PX30_PD_GPU {
 				reg = <PX30_PD_GPU>;
 				clocks = <&cru SCLK_GPU>;
 				pm_qos = <&qos_gpu>;
-- 
2.30.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
