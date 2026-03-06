Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 48246F01806
	for <linux-rockchip@archiver.kernel.org>; Fri,  6 Mar 2026 07:41:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8WqpA9P3SRLvrcZzRakwfj0HIgnxnPIbcDQ52D6vojQ=; b=JNgCeDO9I4UUsu
	SPWFCvid1FzGUgxX9zP/5f6KhokvSaQQ7EDn3My0GJ1akvoBa9Gp3lFibLHnmh/R5LLs3tbtx+Toe
	q3iFNeVJZYl/0NfVOAEjCFWuuGwbKNvVEzMCD3hUr2fyINX2BXpY37J2x/A+Hx8tbocWj24bTD45k
	M48rV/Y+y5KieoeN0bJW6DN2ocm9+58M7sNe8RngvkAdnrxU6tOAMn6nDbueO1Tvi+XZUFEhOhFgo
	Y0Y34dziPZjvpKJARcU5G6S1sHTXS8zL9hG9ib2gobFxUfB1amCPAGTb5x3JuYirBq5fCiqWiDE5Q
	8DeFfgPtJ6Gaf1FSS/mQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vyPo4-00000003ASn-0saF;
	Fri, 06 Mar 2026 07:41:08 +0000
Received: from mail-m155104.qiye.163.com ([101.71.155.104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vyPo0-00000003AQX-1wJs
	for linux-rockchip@lists.infradead.org;
	Fri, 06 Mar 2026 07:41:05 +0000
Received: from localhost.localdomain (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 35fcf4202;
	Fri, 6 Mar 2026 15:41:00 +0800 (GMT+08:00)
From: Shawn Lin <shawn.lin@rock-chips.com>
To: Ulf Hansson <ulf.hansson@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: linux-pm@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	Shawn Lin <shawn.lin@rock-chips.com>
Subject: [PATCH 3/3] arm64: dts: rockchip: Add shaping nodes for rk3576
Date: Fri,  6 Mar 2026 15:40:32 +0800
Message-Id: <1772782832-216867-4-git-send-email-shawn.lin@rock-chips.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1772782832-216867-1-git-send-email-shawn.lin@rock-chips.com>
References: <1772782832-216867-1-git-send-email-shawn.lin@rock-chips.com>
X-HM-Tid: 0a9cc217b78d09cckunm7894a4e01405c0d
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQhlJTFYfSx9CGksaSU9OHkhWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=iNOeAPWkxZX7N28p0FUnFBKYs40CYdDO0vu8fnTnswaoUAxwOxYGiKiruG77EKHCH/i9guJHrwmo4h6tNWIqICgTgZeD9q7DTvoxiicKnRN+2A0nzlHWlkoK7wZWwU0yUjtAE1SACtPZ0+osdQHV6Zv4w2Iax8HXMvSaD3R+N20=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=bK2vSgJMIv/+ZiGEOmk6/o8nvWh39k+i8nePQ6JW820=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260305_234104_740675_552E331E 
X-CRM114-Status: UNSURE (   9.92  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

RK3576 has shaping settings which need to be saved and restored
along with the on/off of pmdomain, so add them in the rk3576.dtsi.

Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>
---

 arch/arm64/boot/dts/rockchip/rk3576.dtsi | 139 +++++++++++++++++++++++++++++++
 1 file changed, 139 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3576.dtsi b/arch/arm64/boot/dts/rockchip/rk3576.dtsi
index 53ff6bd..9c28769 100644
--- a/arch/arm64/boot/dts/rockchip/rk3576.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3576.dtsi
@@ -1063,6 +1063,10 @@
 							 <&qos_npu_nsp1>,
 							 <&qos_npu_m0ro>,
 							 <&qos_npu_m1ro>;
+						pm_shaping = <&shaping_npu_nsp0>,
+							     <&shaping_npu_nsp1>,
+							     <&shaping_npu_m0ro>,
+							     <&shaping_npu_m1ro>;
 						#power-domain-cells = <1>;
 						#address-cells = <1>;
 						#size-cells = <0>;
@@ -1072,6 +1076,7 @@
 							clocks = <&cru HCLK_RKNN_ROOT>,
 								 <&cru ACLK_RKNN0>;
 							pm_qos = <&qos_npu_m0>;
+							pm_shaping = <&shaping_npu_m0>;
 							#power-domain-cells = <0>;
 						};
 						power-domain@RK3576_PD_NPU1 {
@@ -1079,6 +1084,7 @@
 							clocks = <&cru HCLK_RKNN_ROOT>,
 								 <&cru ACLK_RKNN1>;
 							pm_qos = <&qos_npu_m1>;
+							pm_shaping = <&shaping_npu_m1>;
 							#power-domain-cells = <0>;
 						};
 					};
@@ -1088,6 +1094,7 @@
 					reg = <RK3576_PD_GPU>;
 					clocks = <&cru CLK_GPU>, <&cru PCLK_GPU_ROOT>;
 					pm_qos = <&qos_gpu>;
+					pm_shaping = <&shaping_gpu>;
 					#power-domain-cells = <0>;
 				};
 
@@ -1129,6 +1136,9 @@
 						 <&cru ACLK_MMU1>;
 					pm_qos = <&qos_mmu0>,
 						 <&qos_mmu1>;
+					pm_shaping = <&shaping_mmu0>,
+						     <&shaping_mmu1>;
+
 					#power-domain-cells = <1>;
 					#address-cells = <1>;
 					#size-cells = <0>;
@@ -1149,6 +1159,7 @@
 					clocks = <&cru ACLK_VEPU1>,
 						 <&cru HCLK_VEPU1>;
 					pm_qos = <&qos_vepu1>;
+					pm_shaping = <&shaping_vepu1>;
 					#power-domain-cells = <0>;
 				};
 
@@ -1169,6 +1180,10 @@
 						 <&qos_rga0>,
 						 <&qos_rga1>,
 						 <&qos_vdpp>;
+					pm_shaping = <&shaping_rga0>,
+						     <&shaping_rga1>,
+						     <&shaping_jpeg>,
+						     <&shaping_vdpp>;
 					#power-domain-cells = <0>;
 				};
 
@@ -1177,6 +1192,7 @@
 					clocks = <&cru ACLK_RKVDEC_ROOT>,
 						 <&cru HCLK_RKVDEC>;
 					pm_qos = <&qos_rkvdec>;
+					pm_shaping = <&shaping_rkvdec>;
 					#power-domain-cells = <0>;
 				};
 
@@ -1199,6 +1215,11 @@
 						 <&qos_vicap_m0>,
 						 <&qos_vpss_mro>,
 						 <&qos_vpss_mwo>;
+					pm_shaping = <&shaping_isp_mro>,
+						     <&shaping_isp_mwo>,
+						     <&shaping_vicap_m0>,
+						     <&shaping_vpss_mro>,
+						     <&shaping_vpss_mwo>;
 					#power-domain-cells = <1>;
 					#address-cells = <1>;
 					#size-cells = <0>;
@@ -1208,6 +1229,7 @@
 						clocks = <&cru ACLK_VEPU0>,
 							 <&cru HCLK_VEPU0>;
 						pm_qos = <&qos_vepu0>;
+						pm_shaping = <&shaping_vepu0>;
 						#power-domain-cells = <0>;
 					};
 				};
@@ -1220,6 +1242,8 @@
 						 <&cru PCLK_VOP_ROOT>;
 					pm_qos = <&qos_vop_m0>,
 						 <&qos_vop_m1ro>;
+					pm_shaping = <&shaping_vop_m0>,
+						     <&shaping_vop_m1ro>;
 					#power-domain-cells = <1>;
 					#address-cells = <1>;
 					#size-cells = <0>;
@@ -1602,11 +1626,21 @@
 			reg = <0x0 0x27f05000 0x0 0x20>;
 		};
 
+		shaping_gpu: shaping@27f05088 {
+			compatible = "rockchip,rk3576-shaping", "syscon";
+			reg = <0x0 0x27f05088 0x0 0x4>;
+		};
+
 		qos_vepu1: qos@27f06000 {
 			compatible = "rockchip,rk3576-qos", "syscon";
 			reg = <0x0 0x27f06000 0x0 0x20>;
 		};
 
+		shaping_vepu1: shaping@27f06088 {
+			compatible = "rockchip,rk3576-shaping", "syscon";
+			reg = <0x0 0x27f06088 0x0 0x4>;
+		};
+
 		qos_npu_mcu: qos@27f08000 {
 			compatible = "rockchip,rk3576-qos", "syscon";
 			reg = <0x0 0x27f08000 0x0 0x20>;
@@ -1622,6 +1656,16 @@
 			reg = <0x0 0x27f08100 0x0 0x20>;
 		};
 
+		shaping_npu_nsp0: shaping@27f08188 {
+			compatible = "rockchip,rk3576-shaping", "syscon";
+			reg = <0x0 0x27f08188 0x0 0x4>;
+		};
+
+		shaping_npu_nsp1: shaping@27f08208 {
+			compatible = "rockchip,rk3576-shaping", "syscon";
+			reg = <0x0 0x27f08208 0x0 0x4>;
+		};
+
 		qos_emmc: qos@27f09000 {
 			compatible = "rockchip,rk3576-qos", "syscon";
 			reg = <0x0 0x27f09000 0x0 0x20>;
@@ -1642,11 +1686,26 @@
 			reg = <0x0 0x27f0a080 0x0 0x20>;
 		};
 
+		shaping_mmu0: shaping@27f0a108 {
+			compatible = "rockchip,rk3576-shaping", "syscon";
+			reg = <0x0 0x27f0a108 0x0 0x4>;
+		};
+
+		shaping_mmu1: shaping@27f0a188 {
+			compatible = "rockchip,rk3576-shaping", "syscon";
+			reg = <0x0 0x27f0a188 0x0 0x4>;
+		};
+
 		qos_rkvdec: qos@27f0c000 {
 			compatible = "rockchip,rk3576-qos", "syscon";
 			reg = <0x0 0x27f0c000 0x0 0x20>;
 		};
 
+		shaping_rkvdec: shaping@27f0c088 {
+			compatible = "rockchip,rk3576-shaping", "syscon";
+			reg = <0x0 0x27f0c088 0x0 0x4>;
+		};
+
 		qos_crypto: qos@27f0d000 {
 			compatible = "rockchip,rk3576-qos", "syscon";
 			reg = <0x0 0x27f0d000 0x0 0x20>;
@@ -1667,6 +1726,11 @@
 			reg = <0x0 0x27f0f000 0x0 0x20>;
 		};
 
+		shaping_vepu0: shaping@27f0f088 {
+			compatible = "rockchip,rk3576-shaping", "syscon";
+			reg = <0x0 0x27f0f088 0x0 0x4>;
+		};
+
 		qos_isp_mro: qos@27f10000 {
 			compatible = "rockchip,rk3576-qos", "syscon";
 			reg = <0x0 0x27f10000 0x0 0x20>;
@@ -1692,6 +1756,31 @@
 			reg = <0x0 0x27f10200 0x0 0x20>;
 		};
 
+		shaping_isp_mro: shaping@27f10288 {
+			compatible = "rockchip,rk3576-shaping", "syscon";
+			reg = <0x0 0x27f10288 0x0 0x4>;
+		};
+
+		shaping_isp_mwo: shaping@27f10308 {
+			compatible = "rockchip,rk3576-shaping", "syscon";
+			reg = <0x0 0x27f10308 0x0 0x4>;
+		};
+
+		shaping_vicap_m0: shaping@27f10388 {
+			compatible = "rockchip,rk3576-shaping", "syscon";
+			reg = <0x0 0x27f10388 0x0 0x4>;
+		};
+
+		shaping_vpss_mro: shaping@27f10408 {
+			compatible = "rockchip,rk3576-shaping", "syscon";
+			reg = <0x0 0x27f10408 0x0 0x4>;
+		};
+
+		shaping_vpss_mwo: shaping@27f10488 {
+			compatible = "rockchip,rk3576-shaping", "syscon";
+			reg = <0x0 0x27f10488 0x0 0x4>;
+		};
+
 		qos_hdcp0: qos@27f11000 {
 			compatible = "rockchip,rk3576-qos", "syscon";
 			reg = <0x0 0x27f11000 0x0 0x20>;
@@ -1707,6 +1796,16 @@
 			reg = <0x0 0x27f12880 0x0 0x20>;
 		};
 
+		shaping_vop_m0: shaping@27f12908 {
+			compatible = "rockchip,rk3576-shaping", "syscon";
+			reg = <0x0 0x27f12908 0x0 0x4>;
+		};
+
+		shaping_vop_m1ro: shaping@27f12988 {
+			compatible = "rockchip,rk3576-shaping", "syscon";
+			reg = <0x0 0x27f12988 0x0 0x4>;
+		};
+
 		qos_ebc: qos@27f13000 {
 			compatible = "rockchip,rk3576-qos", "syscon";
 			reg = <0x0 0x27f13000 0x0 0x20>;
@@ -1732,16 +1831,46 @@
 			reg = <0x0 0x27f13200 0x0 0x20>;
 		};
 
+		shaping_rga0: shaping@27f13288 {
+			compatible = "rockchip,rk3576-shaping", "syscon";
+			reg = <0x0 0x27f13288 0x0 0x4>;
+		};
+
+		shaping_rga1: shaping@27f13308 {
+			compatible = "rockchip,rk3576-shaping", "syscon";
+			reg = <0x0 0x27f13308 0x0 0x4>;
+		};
+
+		shaping_jpeg: shaping@27f13388 {
+			compatible = "rockchip,rk3576-shaping", "syscon";
+			reg = <0x0 0x27f13388 0x0 0x4>;
+		};
+
+		shaping_vdpp: shaping@27f13408 {
+			compatible = "rockchip,rk3576-shaping", "syscon";
+			reg = <0x0 0x27f13408 0x0 0x4>;
+		};
+
 		qos_npu_m0: qos@27f20000 {
 			compatible = "rockchip,rk3576-qos", "syscon";
 			reg = <0x0 0x27f20000 0x0 0x20>;
 		};
 
+		shaping_npu_m0: shaping@27f20088 {
+			compatible = "rockchip,rk3576-shaping", "syscon";
+			reg = <0x0 0x27f20088 0x0 0x4>;
+		};
+
 		qos_npu_m1: qos@27f21000 {
 			compatible = "rockchip,rk3576-qos", "syscon";
 			reg = <0x0 0x27f21000 0x0 0x20>;
 		};
 
+		shaping_npu_m1: shaping@27f21088 {
+			compatible = "rockchip,rk3576-shaping", "syscon";
+			reg = <0x0 0x27f21088 0x0 0x4>;
+		};
+
 		qos_npu_m0ro: qos@27f22080 {
 			compatible = "rockchip,rk3576-qos", "syscon";
 			reg = <0x0 0x27f22080 0x0 0x20>;
@@ -1752,6 +1881,16 @@
 			reg = <0x0 0x27f22100 0x0 0x20>;
 		};
 
+		shaping_npu_m0ro: shaping@27f22188 {
+			compatible = "rockchip,rk3576-shaping", "syscon";
+			reg = <0x0 0x27f22188 0x0 0x4>;
+		};
+
+		shaping_npu_m1ro: shaping@27f22208 {
+			compatible = "rockchip,rk3576-shaping", "syscon";
+			reg = <0x0 0x27f22208 0x0 0x4>;
+		};
+
 		gmac0: ethernet@2a220000 {
 			compatible = "rockchip,rk3576-gmac", "snps,dwmac-4.20a";
 			reg = <0x0 0x2a220000 0x0 0x10000>;
-- 
2.7.4


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
