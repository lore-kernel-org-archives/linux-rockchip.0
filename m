Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 63794C7115A
	for <linux-rockchip@archiver.kernel.org>; Thu, 19 Jun 2025 22:16:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Q8s9PHJYaXnzsw/mur3HXfI/NTapWnOGUA53r2SVfJo=; b=JJUFI/DXS1pi4T
	vHMzAjJ8h0f2kg6vRnZ9TZ0MLKJdRVBV8Y0T/8142ZcOETepj+ulgR/49GbrmL5mQGayOfLef/Izo
	glojuBz4jBOaj/PI4jBFzCqV/zeQx+UIfRcm2mZNTrYEsZ0Cwi8GS4ZQ3ORGFe+2opvE7hrxVj3Y5
	rMhSW1+9m/oEI1IRedXmBMtOfpx+pICJVqg1TOj+awXWAZomP8saGENLRL/R+Q8tXeC4Fat/P6frw
	EXS49JYDgwRxOpU0N04QHDwA+njALqbS6Ppukc2iCpwSmIKJAFuWi82TqXdlF2oqig6EgcedNiIxm
	7OaSTnGpxrW2fojQfHOw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uSNYO-0000000EMSH-42W1;
	Thu, 19 Jun 2025 22:16:16 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uSNWK-0000000EMD3-1SI5;
	Thu, 19 Jun 2025 22:14:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:MIME-Version:Message-ID:Date:
	Subject:Cc:To:From:Reply-To:Content-Type:In-Reply-To:References;
	bh=qLVlWRvXdrImVfP6jrxHLSUvfQNysA6lw44F5DBCFQI=; b=BDNeFCjLPe6hrEw2N2XlEHxJO3
	pFAvMhluFn8EOtQ2o2A/xLA3nLTngc2mHzkFFfIM36ufDo9qipwVbhwr230RK82P+gAHFkJP5wcDU
	uoaE4AN9nlsXm4+q7G6FdM5eoVEYURZEzWNW1wmJnd8EsFCnTLliXbgyUhQhu8PY4wPht+GtqOO9Z
	5nK/kJVBsxX/53U6h+jc+HpwAhqy8rI5PBn46phS8+bFz6g019DSok0ZKvwqhuhHbzcnCNELCcmKB
	1+myXJ2oPQHj3m3P6xrOXYWsPOSZfAvGHcRrYzoQU+76C4/eB3AsIVo5dodtjixXjqRhSnXCYf0z8
	GjGcsGpA==;
Received: from 85-207-219-154.static.bluetone.cz ([85.207.219.154] helo=localhost.localdomain)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1uSNWF-0008P4-3p; Fri, 20 Jun 2025 00:14:03 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: heiko@sntech.de
Cc: jonas@kwiboo.se,
	ziyao@disroot.org,
	amadeus@jmu.edu.cn,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH] arm64: dts: rockchip: convert rk3528 power-domains to dt-binding constants
Date: Fri, 20 Jun 2025 00:13:24 +0200
Message-ID: <20250619221324.1530775-1-heiko@sntech.de>
X-Mailer: git-send-email 2.47.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250619_151408_392400_49420F59 
X-CRM114-Status: GOOD (  12.36  )
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

Now that the binding head has been merged, convert the power-domain ids
back to these constants for easier handling.

Signed-off-by: Heiko Stuebner <heiko@sntech.de>
---
 arch/arm64/boot/dts/rockchip/rk3528.dtsi | 21 +++++++++++----------
 1 file changed, 11 insertions(+), 10 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3528.dtsi b/arch/arm64/boot/dts/rockchip/rk3528.dtsi
index 829f980ea353..4f644701bbcf 100644
--- a/arch/arm64/boot/dts/rockchip/rk3528.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3528.dtsi
@@ -9,6 +9,7 @@
 #include <dt-bindings/interrupt-controller/irq.h>
 #include <dt-bindings/pinctrl/rockchip.h>
 #include <dt-bindings/clock/rockchip,rk3528-cru.h>
+#include <dt-bindings/power/rockchip,rk3528-power.h>
 #include <dt-bindings/reset/rockchip,rk3528-cru.h>
 
 / {
@@ -450,8 +451,8 @@ power: power-controller {
 				#size-cells = <0>;
 
 				/* These power domains are grouped by VD_GPU */
-				power-domain@4 {
-					reg = <4>;
+				power-domain@RK3528_PD_GPU {
+					reg = <RK3528_PD_GPU>;
 					clocks = <&cru ACLK_GPU_MALI>,
 						 <&cru PCLK_GPU_ROOT>;
 					pm_qos = <&qos_gpu_m0>,
@@ -460,20 +461,20 @@ power-domain@4 {
 				};
 
 				/* These power domains are grouped by VD_LOGIC */
-				power-domain@5 {
-					reg = <5>;
+				power-domain@RK3528_PD_RKVDEC {
+					reg = <RK3528_PD_RKVDEC>;
 					pm_qos = <&qos_rkvdec>;
 					#power-domain-cells = <0>;
 					status = "disabled";
 				};
-				power-domain@6 {
-					reg = <6>;
+				power-domain@RK3528_PD_RKVENC {
+					reg = <RK3528_PD_RKVENC>;
 					pm_qos = <&qos_rkvenc>;
 					#power-domain-cells = <0>;
 					status = "disabled";
 				};
-				power-domain@7 {
-					reg = <7>;
+				power-domain@RK3528_PD_VO {
+					reg = <RK3528_PD_VO>;
 					pm_qos = <&qos_gmac0>,
 						 <&qos_hdcp>,
 						 <&qos_jpegdec>,
@@ -486,8 +487,8 @@ power-domain@7 {
 					#power-domain-cells = <0>;
 					status = "disabled";
 				};
-				power-domain@8 {
-					reg = <8>;
+				power-domain@RK3528_PD_VPU {
+					reg = <RK3528_PD_VPU>;
 					pm_qos = <&qos_emmc>,
 						 <&qos_fspi>,
 						 <&qos_gmac1>,
-- 
2.47.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
