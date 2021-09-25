Return-Path: <SRS0=a4IV=OP=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1DE4BC433F5
	for <linux-rockchip@archiver.kernel.org>; Sat, 25 Sep 2021 09:04:57 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 7178D6124B
	for <linux-rockchip@archiver.kernel.org>; Sat, 25 Sep 2021 09:04:56 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 7178D6124B
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HohqBoiA3b0/4uv3Ye4rGZPyQVE7GZ4N/76lXcYVeXE=; b=jKXUPFEFMFNMGV
	8zhwzqMn5sEkom0Ttd9FdFT3JrB6mTj4iwtXfm2gVoyQBDh5WSv0H3caatQoJe8bC7Ko9/eDSl6jY
	2FLZn5ahAAm+CK82EDeC3A990gmU3Wv6wPVFmNgHWqkvlKXK7UHcJcGGi1+bbu5JZYVknnKe9z4WZ
	Wo1B342+vb16OiacRf9/5r3BsiVW/bIqur+VN028Lq0RgeLITqfRWwQNtr7k/aJaG/QH3aZXng1JW
	l2Gp2ZU5XOlj9BtZAm9B5YOpzBKcVg3LYaLT3IkVOX6GvjMfzHLDGMZq3srSoWeiknMv/rarCNnwM
	kNr9pc1hzoOC/5sYcjwQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mU3c5-00GLC6-1R; Sat, 25 Sep 2021 09:04:53 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mU3bU-00GL5b-Mm; Sat, 25 Sep 2021 09:04:21 +0000
Received: from dynamic-109-81-211-127.ipv4.broadband.iol.cz ([109.81.211.127]
 helo=phil.sntech)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1mU3bQ-0000YK-JF; Sat, 25 Sep 2021 11:04:12 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: robh+dt@kernel.org,
	heiko@sntech.de,
	lee.jones@linaro.org
Cc: jbx6244@gmail.com, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v2 3/3] arm64: dts: rockchip: add powerdomains to rk3368
Date: Sat, 25 Sep 2021 11:04:05 +0200
Message-Id: <20210925090405.2601792-3-heiko@sntech.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210925090405.2601792-1-heiko@sntech.de>
References: <20210925090405.2601792-1-heiko@sntech.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210925_020416_795680_99B34FEB 
X-CRM114-Status: GOOD (  14.81  )
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

Add the core io-domain node for rk3368.

Signed-off-by: Heiko Stuebner <heiko@sntech.de>
---
changes in v2:
- add rk3368-qos compatible
- use power-domain@ node names
- add #power-domain-cells to individual domains

 arch/arm64/boot/dts/rockchip/rk3368.dtsi | 178 +++++++++++++++++++++++
 1 file changed, 178 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3368.dtsi b/arch/arm64/boot/dts/rockchip/rk3368.dtsi
index 4217897cd454..79ee6878b2f2 100644
--- a/arch/arm64/boot/dts/rockchip/rk3368.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3368.dtsi
@@ -8,6 +8,7 @@
 #include <dt-bindings/interrupt-controller/irq.h>
 #include <dt-bindings/interrupt-controller/arm-gic.h>
 #include <dt-bindings/pinctrl/rockchip.h>
+#include <dt-bindings/power/rk3368-power.h>
 #include <dt-bindings/soc/rockchip,boot-mode.h>
 #include <dt-bindings/thermal/thermal.h>
 
@@ -615,6 +616,115 @@ mbox: mbox@ff6b0000 {
 		status = "disabled";
 	};
 
+	pmu: power-management@ff730000 {
+		compatible = "rockchip,rk3368-pmu", "syscon", "simple-mfd";
+		reg = <0x0 0xff730000 0x0 0x1000>;
+
+		power: power-controller {
+			compatible = "rockchip,rk3368-power-controller";
+			#power-domain-cells = <1>;
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			/*
+			 * Note: Although SCLK_* are the working clocks
+			 * of device without including on the NOC, needed for
+			 * synchronous reset.
+			 *
+			 * The clocks on the which NOC:
+			 * ACLK_IEP/ACLK_VIP/ACLK_VOP0 are on ACLK_VIO0_NIU.
+			 * ACLK_ISP/ACLK_VOP1 are on ACLK_VIO1_NIU.
+			 * ACLK_RGA is on ACLK_RGA_NIU.
+			 * The others (HCLK_*,PLCK_*) are on HCLK_VIO_NIU.
+			 *
+			 * Which clock are device clocks:
+			 *	clocks		devices
+			 *	*_IEP		IEP:Image Enhancement Processor
+			 *	*_ISP		ISP:Image Signal Processing
+			 *	*_VIP		VIP:Video Input Processor
+			 *	*_VOP*		VOP:Visual Output Processor
+			 *	*_RGA		RGA
+			 *	*_EDP*		EDP
+			 *	*_DPHY*		LVDS
+			 *	*_HDMI		HDMI
+			 *	*_MIPI_*	MIPI
+			 */
+			power-domain@RK3368_PD_VIO {
+				reg = <RK3368_PD_VIO>;
+				clocks = <&cru ACLK_IEP>,
+					 <&cru ACLK_ISP>,
+					 <&cru ACLK_VIP>,
+					 <&cru ACLK_RGA>,
+					 <&cru ACLK_VOP>,
+					 <&cru ACLK_VOP_IEP>,
+					 <&cru DCLK_VOP>,
+					 <&cru HCLK_IEP>,
+					 <&cru HCLK_ISP>,
+					 <&cru HCLK_RGA>,
+					 <&cru HCLK_VIP>,
+					 <&cru HCLK_VOP>,
+					 <&cru HCLK_VIO_HDCPMMU>,
+					 <&cru PCLK_EDP_CTRL>,
+					 <&cru PCLK_HDMI_CTRL>,
+					 <&cru PCLK_HDCP>,
+					 <&cru PCLK_ISP>,
+					 <&cru PCLK_VIP>,
+					 <&cru PCLK_DPHYRX>,
+					 <&cru PCLK_DPHYTX0>,
+					 <&cru PCLK_MIPI_CSI>,
+					 <&cru PCLK_MIPI_DSI0>,
+					 <&cru SCLK_VOP0_PWM>,
+					 <&cru SCLK_EDP_24M>,
+					 <&cru SCLK_EDP>,
+					 <&cru SCLK_HDCP>,
+					 <&cru SCLK_ISP>,
+					 <&cru SCLK_RGA>,
+					 <&cru SCLK_HDMI_CEC>,
+					 <&cru SCLK_HDMI_HDCP>;
+				pm_qos = <&qos_iep>,
+					 <&qos_isp_r0>,
+					 <&qos_isp_r1>,
+					 <&qos_isp_w0>,
+					 <&qos_isp_w1>,
+					 <&qos_vip>,
+					 <&qos_vop>,
+					 <&qos_rga_r>,
+					 <&qos_rga_w>;
+				#power-domain-cells = <0>;
+			};
+
+			/*
+			 * Note: ACLK_VCODEC/HCLK_VCODEC are VCODEC
+			 * (video endecoder & decoder) clocks that on the
+			 * ACLK_VCODEC_NIU and HCLK_VCODEC_NIU (NOC).
+			 */
+			power-domain@RK3368_PD_VIDEO {
+				reg = <RK3368_PD_VIDEO>;
+				clocks = <&cru ACLK_VIDEO>,
+					 <&cru HCLK_VIDEO>,
+					 <&cru SCLK_HEVC_CABAC>,
+					 <&cru SCLK_HEVC_CORE>;
+				pm_qos = <&qos_hevc_r>,
+					 <&qos_vpu_r>,
+					 <&qos_vpu_w>;
+				#power-domain-cells = <0>;
+			};
+
+			/*
+			 * Note: ACLK_GPU is the GPU clock,
+			 * and on the ACLK_GPU_NIU (NOC).
+			 */
+			power-domain@RK3368_PD_GPU_1 {
+				reg = <RK3368_PD_GPU_1>;
+				clocks = <&cru ACLK_GPU_CFG>,
+					 <&cru ACLK_GPU_MEM>,
+					 <&cru SCLK_GPU_CORE>;
+				pm_qos = <&qos_gpu>;
+				#power-domain-cells = <0>;
+			};
+		};
+	};
+
 	pmugrf: syscon@ff738000 {
 		compatible = "rockchip,rk3368-pmugrf", "syscon", "simple-mfd";
 		reg = <0x0 0xff738000 0x0 0x1000>;
@@ -711,6 +821,7 @@ iep_mmu: iommu@ff900800 {
 		interrupts = <GIC_SPI 17 IRQ_TYPE_LEVEL_HIGH>;
 		clocks = <&cru ACLK_IEP>, <&cru HCLK_IEP>;
 		clock-names = "aclk", "iface";
+		power-domains = <&power RK3368_PD_VIO>;
 		#iommu-cells = <0>;
 		status = "disabled";
 	};
@@ -723,6 +834,7 @@ isp_mmu: iommu@ff914000 {
 		clocks = <&cru ACLK_ISP>, <&cru HCLK_ISP>;
 		clock-names = "aclk", "iface";
 		#iommu-cells = <0>;
+		power-domains = <&power RK3368_PD_VIO>;
 		rockchip,disable-mmu-reset;
 		status = "disabled";
 	};
@@ -733,6 +845,7 @@ vop_mmu: iommu@ff930300 {
 		interrupts = <GIC_SPI 15 IRQ_TYPE_LEVEL_HIGH>;
 		clocks = <&cru ACLK_VOP>, <&cru HCLK_VOP>;
 		clock-names = "aclk", "iface";
+		power-domains = <&power RK3368_PD_VIO>;
 		#iommu-cells = <0>;
 		status = "disabled";
 	};
@@ -759,6 +872,71 @@ vpu_mmu: iommu@ff9a0800 {
 		status = "disabled";
 	};
 
+	qos_iep: qos@ffad0000 {
+		compatible = "rockchip,rk3368-qos", "syscon";
+		reg = <0x0 0xffad0000 0x0 0x20>;
+	};
+
+	qos_isp_r0: qos@ffad0080 {
+		compatible = "rockchip,rk3368-qos", "syscon";
+		reg = <0x0 0xffad0080 0x0 0x20>;
+	};
+
+	qos_isp_r1: qos@ffad0100 {
+		compatible = "rockchip,rk3368-qos", "syscon";
+		reg = <0x0 0xffad0100 0x0 0x20>;
+	};
+
+	qos_isp_w0: qos@ffad0180 {
+		compatible = "rockchip,rk3368-qos", "syscon";
+		reg = <0x0 0xffad0180 0x0 0x20>;
+	};
+
+	qos_isp_w1: qos@ffad0200 {
+		compatible = "rockchip,rk3368-qos", "syscon";
+		reg = <0x0 0xffad0200 0x0 0x20>;
+	};
+
+	qos_vip: qos@ffad0280 {
+		compatible = "rockchip,rk3368-qos", "syscon";
+		reg = <0x0 0xffad0280 0x0 0x20>;
+	};
+
+	qos_vop: qos@ffad0300 {
+		compatible = "rockchip,rk3368-qos", "syscon";
+		reg = <0x0 0xffad0300 0x0 0x20>;
+	};
+
+	qos_rga_r: qos@ffad0380 {
+		compatible = "rockchip,rk3368-qos", "syscon";
+		reg = <0x0 0xffad0380 0x0 0x20>;
+	};
+
+	qos_rga_w: qos@ffad0400 {
+		compatible = "rockchip,rk3368-qos", "syscon";
+		reg = <0x0 0xffad0400 0x0 0x20>;
+	};
+
+	qos_hevc_r: qos@ffae0000 {
+		compatible = "rockchip,rk3368-qos", "syscon";
+		reg = <0x0 0xffae0000 0x0 0x20>;
+	};
+
+	qos_vpu_r: qos@ffae0100 {
+		compatible = "rockchip,rk3368-qos", "syscon";
+		reg = <0x0 0xffae0100 0x0 0x20>;
+	};
+
+	qos_vpu_w: qos@ffae0180 {
+		compatible = "rockchip,rk3368-qos", "syscon";
+		reg = <0x0 0xffae0180 0x0 0x20>;
+	};
+
+	qos_gpu: qos@ffaf0000 {
+		compatible = "rockchip,rk3368-qos", "syscon";
+		reg = <0x0 0xffaf0000 0x0 0x20>;
+	};
+
 	efuse256: efuse@ffb00000 {
 		compatible = "rockchip,rk3368-efuse";
 		reg = <0x0 0xffb00000 0x0 0x20>;
-- 
2.29.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
