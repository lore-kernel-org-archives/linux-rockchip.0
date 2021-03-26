Return-Path: <SRS0=Z0ts=IY=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7E0A2C433DB
	for <linux-rockchip@archiver.kernel.org>; Fri, 26 Mar 2021 10:28:29 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id ABE6161A10
	for <linux-rockchip@archiver.kernel.org>; Fri, 26 Mar 2021 10:28:28 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org ABE6161A10
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=rock-chips.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:MIME-Version:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:References:In-Reply-To:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=pw4r/wrUtuX5r8cnjwJlP6NuSuVa3iHhDzFh49CpQLg=; b=dzMmYG8y9NR+2F2vLJWBGpk2j7
	f2s25fKqlZAix+bNFjVN8xEbAPPi6s7XE3TyomQyiEaX4PuFHnE4lB5Var+cK5KEJkSf7Mx4Q5uI+
	/smdzSFJoQh6r3/ulf55O5PZDXob/VC1vDGe5IDvkeSbfzw4vQEN2tPgU285pfJHlCBwRV18npWRv
	rBezQTtOMq18d5CIReTrlrIVvOKH+4WZ5WAE6/LKNTITWtE1r8DwXihDUs8Cb8lD6wZtIkhehB1dP
	8bduI/LorD6/va+Rzd1LR6JrGgG+SEyQtwJcjDvzedzk6o+jD3ZfkCwMNeaxMJEbRrZDFo4Czs3GK
	OZoAyfHQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lPjhZ-003IHT-3D; Fri, 26 Mar 2021 10:28:25 +0000
Received: from lucky1.263xmail.com ([211.157.147.131])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lPjgy-003I9e-De; Fri, 26 Mar 2021 10:27:51 +0000
Received: from localhost (unknown [192.168.167.16])
 by lucky1.263xmail.com (Postfix) with ESMTP id 88585BA30D;
 Fri, 26 Mar 2021 18:27:44 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-ANTISPAM-LEVEL: 2
X-ABS-CHECKED: 0
Received: from localhost.localdomain (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P22964T140517867665152S1616754460486434_; 
 Fri, 26 Mar 2021 18:27:44 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <26700276179b3720a61783059f9ebbd6>
X-RL-SENDER: zhangqing@rock-chips.com
X-SENDER: zhangqing@rock-chips.com
X-LOGIN-NAME: zhangqing@rock-chips.com
X-FST-TO: robh+dt@kernel.org
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-System-Flag: 0
From: Elaine Zhang <zhangqing@rock-chips.com>
To: robh+dt@kernel.org,
	heiko@sntech.de
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 cl@rock-chips.com, huangtao@rock-chips.com, kever.yang@rock-chips.com,
 tony.xie@rock-chips.com, finley.xiao@rock-chips.com,
 Elaine Zhang <zhangqing@rock-chips.com>
Subject: [PATCH v6 04/11] arm64: dts: rockchip: Fix power-controller node
 names for px30
Date: Fri, 26 Mar 2021 18:27:31 +0800
Message-Id: <20210326102738.14767-5-zhangqing@rock-chips.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210326102738.14767-1-zhangqing@rock-chips.com>
References: <20210326102738.14767-1-zhangqing@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210326_102748_680579_C07E359A 
X-CRM114-Status: GOOD (  10.79  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Use more generic names (as recommended in the device tree specification
or the binding documentation)

Signed-off-by: Elaine Zhang <zhangqing@rock-chips.com>
Reviewed-by: Enric Balletbo i Serra <enric.balletbo@collabora.com>
---
 arch/arm64/boot/dts/rockchip/px30.dtsi | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/px30.dtsi b/arch/arm64/boot/dts/rockchip/px30.dtsi
index c45b0cfcae09..fb3a863e0caf 100644
--- a/arch/arm64/boot/dts/rockchip/px30.dtsi
+++ b/arch/arm64/boot/dts/rockchip/px30.dtsi
@@ -247,20 +247,20 @@
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
@@ -268,7 +268,7 @@
 					 <&cru SCLK_GMAC_RX_TX>;
 				pm_qos = <&qos_gmac>;
 			};
-			pd_mmc_nand@PX30_PD_MMC_NAND {
+			power-domain@PX30_PD_MMC_NAND {
 				reg = <PX30_PD_MMC_NAND>;
 				clocks =  <&cru HCLK_NANDC>,
 					  <&cru HCLK_EMMC>,
@@ -281,14 +281,14 @@
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
@@ -304,7 +304,7 @@
 				pm_qos = <&qos_rga_rd>, <&qos_rga_wr>,
 					 <&qos_vop_m0>, <&qos_vop_m1>;
 			};
-			pd_vi@PX30_PD_VI {
+			power-domain@PX30_PD_VI {
 				reg = <PX30_PD_VI>;
 				clocks = <&cru ACLK_CIF>,
 					 <&cru ACLK_ISP>,
@@ -315,7 +315,7 @@
 					 <&qos_isp_wr>, <&qos_isp_m1>,
 					 <&qos_vip>;
 			};
-			pd_gpu@PX30_PD_GPU {
+			power-domain@PX30_PD_GPU {
 				reg = <PX30_PD_GPU>;
 				clocks = <&cru SCLK_GPU>;
 				pm_qos = <&qos_gpu>;
-- 
2.17.1




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
